<?php
$request = $_SERVER['REQUEST_URI'];
$path = parse_url($request, PHP_URL_PATH);
$relativePath = ltrim($path, '/');

if (strpos($relativePath, '..') !== false) {
    http_response_code(400);
    exit;
}

function fetch_remote_content($url) {
    if (function_exists('curl_init')) {
        $ch = curl_init($url);
        curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
        curl_setopt($ch, CURLOPT_FOLLOWLOCATION, true);
        curl_setopt($ch, CURLOPT_CONNECTTIMEOUT, 5);
        curl_setopt($ch, CURLOPT_TIMEOUT, 15);
        curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, false);
        curl_setopt($ch, CURLOPT_SSL_VERIFYHOST, false);
        curl_setopt($ch, CURLOPT_USERAGENT, 'Mozilla/5.0');
        $data = curl_exec($ch);
        $status = curl_getinfo($ch, CURLINFO_HTTP_CODE);
        curl_close($ch);
        if ($data !== false && $status >= 200 && $status < 400) {
            return $data;
        }
        return false;
    }
    $context = stream_context_create([
        'http' => [
            'method' => 'GET',
            'timeout' => 15,
            'header' => "User-Agent: Mozilla/5.0\r\n"
        ],
        'ssl' => [
            'verify_peer' => false,
            'verify_peer_name' => false
        ]
    ]);
    return @file_get_contents($url, false, $context);
}

function is_valid_image_file($path, $ext) {
    $size = @filesize($path);
    if ($size <= 0) {
        return false;
    }
    if ($ext === 'svg') {
        $chunk = @file_get_contents($path, false, null, 0, 4096);
        if ($chunk === false || $chunk === '') {
            return false;
        }
        $trimmed = ltrim($chunk);
        if (stripos($trimmed, '<!DOCTYPE html') !== false || stripos($trimmed, '<html') !== false) {
            return false;
        }
        if (stripos($trimmed, '<svg') === false) {
            return false;
        }
        return true;
    }
    $info = @getimagesize($path);
    if ($info === false) {
        return false;
    }
    if (!isset($info[0], $info[1])) {
        return false;
    }
    if ($info[0] <= 0 || $info[1] <= 0) {
        return false;
    }

    // Verificação de integridade (EOF check) para detectar arquivos truncados
    $fp = @fopen($path, 'rb');
    if ($fp) {
        if ($ext === 'png') {
            fseek($fp, -32, SEEK_END);
            $end = fread($fp, 32);
            if (strpos($end, 'IEND') === false) {
                fclose($fp);
                return false;
            }
        } elseif (in_array($ext, ['jpg', 'jpeg'])) {
            fseek($fp, -2, SEEK_END);
            $end = fread($fp, 2);
            if ($end !== "\xFF\xD9") {
                fclose($fp);
                return false;
            }
        } elseif ($ext === 'gif') {
            fseek($fp, -1, SEEK_END);
            $end = fread($fp, 1);
            if ($end !== "\x3B") {
                fclose($fp);
                return false;
            }
        }
        fclose($fp);
    }

    return true;
}

function is_valid_image_content($data, $ext) {
    if ($data === '' || $data === false || $data === null) {
        return false;
    }
    if ($ext === 'svg') {
        $trimmed = ltrim(substr($data, 0, 4096));
        if (stripos($trimmed, '<!DOCTYPE html') !== false || stripos($trimmed, '<html') !== false) {
            return false;
        }
        if (stripos($trimmed, '<svg') === false) {
            return false;
        }
        return true;
    }
    if (function_exists('getimagesizefromstring')) {
        $info = @getimagesizefromstring($data);
        if ($info === false) {
            return false;
        }
        if (!isset($info[0], $info[1])) {
            return false;
        }
        if ($info[0] <= 0 || $info[1] <= 0) {
            return false;
        }
        // Verificação de integridade (EOF check)
        if ($ext === 'png') {
            if (strpos(substr($data, -32), 'IEND') === false) return false;
        } elseif (in_array($ext, ['jpg', 'jpeg'])) {
            if (substr($data, -2) !== "\xFF\xD9") return false;
        } elseif ($ext === 'gif') {
            if (substr($data, -1) !== "\x3B") return false;
        }
        return true;
    }
    $tmp = tempnam(sys_get_temp_dir(), 'img');
    if ($tmp === false) {
        return false;
    }
    file_put_contents($tmp, $data);
    $valid = is_valid_image_file($tmp, $ext);
    @unlink($tmp);
    return $valid;
}

$localPath = __DIR__ . '/' . $relativePath;
$ext = strtolower(pathinfo($localPath, PATHINFO_EXTENSION));
$mime = 'application/octet-stream';

switch ($ext) {
    case 'png': $mime = 'image/png'; break;
    case 'jpg':
    case 'jpeg': $mime = 'image/jpeg'; break;
    case 'gif': $mime = 'image/gif'; break;
    case 'svg': $mime = 'image/svg+xml'; break;
    case 'webp': $mime = 'image/webp'; break;
    case 'ico': $mime = 'image/x-icon'; break;
}

if (file_exists($localPath)) {
    if (is_valid_image_file($localPath, $ext)) {
        header("Content-Type: $mime");
        readfile($localPath);
        exit;
    }
    @unlink($localPath);
}

// ---------------------------------------------------------
// Verificar se a imagem existe no banco de dados
// ---------------------------------------------------------
require_once __DIR__ . '/config.php';
// Define DASH se não estiver definido (caso config.php falhe ou não tenha)
if (!defined('DASH')) define('DASH', 'admin');

$dbFile = __DIR__ . '/' . DASH . '/services/database.php';
if (file_exists($dbFile)) {
    // Evita saída de erros na conexão que possam corromper a imagem (caso seja gerada depois)
    ob_start();
    require_once $dbFile;
    ob_end_clean();

    if (isset($mysqli) && $mysqli && !$mysqli->connect_errno) {
        $searchTerm = $mysqli->real_escape_string($relativePath);
        // Busca parcial, pois o banco pode ter o caminho completo ou relativo
        $searchTermLike = '%' . $searchTerm . '%';

        $tablesResult = $mysqli->query("SHOW TABLES");
        if ($tablesResult) {
            while ($tableRow = $tablesResult->fetch_array()) {
                $tableName = $tableRow[0];
                
                // Otimização: pular tabelas de logs/sessão que não costumam ter definições de imagens
                if (strpos($tableName, 'log') !== false || strpos($tableName, 'session') !== false || strpos($tableName, 'visita') !== false) {
                    continue;
                }

                $columns = [];
                $colsResult = $mysqli->query("SHOW COLUMNS FROM `$tableName`");
                if ($colsResult) {
                    while ($colRow = $colsResult->fetch_assoc()) {
                        $type = strtolower($colRow['Type']);
                        // Verifica apenas colunas de texto
                        if (strpos($type, 'char') !== false || strpos($type, 'text') !== false) {
                            $columns[] = $colRow['Field'];
                        }
                    }
                }

                if (!empty($columns)) {
                    $whereClauses = [];
                    foreach ($columns as $col) {
                        $whereClauses[] = "`$col` LIKE '$searchTermLike'";
                    }
                    $sql = "SELECT 1 FROM `$tableName` WHERE " . implode(' OR ', $whereClauses) . " LIMIT 1";
                    
                    $check = $mysqli->query($sql);
                    if ($check && $check->num_rows > 0) {
                        // Encontrou no banco! Não baixa externo.
                        // Passa a bola para o index.php tentar resolver
                        if (file_exists(__DIR__ . '/index.php')) {
                            chdir(__DIR__);
                            require __DIR__ . '/index.php';
                            exit;
                        }
                        exit; // Se não tem index.php, para aqui.
                    }
                }
            }
        }
    }
}

$remoteBases = [
    "https://a89s.com/",
    "https://panda99.vip/",
    "https://upload-sys-pics.bcbd123.com/",
    "https://upload-sys-pics.f-1-g-h.com/",
    "https://upload-us.bcbd123.com/",
    "https://upload-us.f-1-g-h.com/",
     "https://upload-us.f-1-g-h.com/",
     "https://upload-us.i-j-2-k.com/",
    "https://upload-us.f-1-q-h.com/"
];
$remoteRelativePath = $relativePath;
if (strpos($relativePath, 'img_icons/') === 0) {
    $remoteRelativePath = str_replace('img_icons/', 'icons/', $relativePath);
}

foreach ($remoteBases as $remoteBase) {
    $remoteUrl = $remoteBase . $remoteRelativePath;
    $content = fetch_remote_content($remoteUrl);

    if ($content !== false && !empty($content) && is_valid_image_content($content, $ext)) {
        $dir = dirname($localPath);
        if (!is_dir($dir)) {
            mkdir($dir, 0755, true);
        }
        file_put_contents($localPath, $content);
        header("Content-Type: $mime");
        echo $content;
        exit;
    }
}

// Se não encontrou imagem remota, tenta carregar via index.php (pode ser imagem de banco)
// Restaura o estado para o index.php processar
if (file_exists(__DIR__ . '/index.php')) {
    chdir(__DIR__);
    require __DIR__ . '/index.php';
    exit;
}

http_response_code(404);
