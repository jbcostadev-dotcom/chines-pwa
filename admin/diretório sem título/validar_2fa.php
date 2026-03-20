<?php
if (session_status() === PHP_SESSION_NONE) {
    session_start();
}

include_once "services/database.php";

function enviarNotificacaoTelegram($username)
{
    global $mysqli;

    // Busca credenciais no banco
    $qry = "SELECT bot_id, chat_id FROM webhook WHERE status = 1 AND bot_id <> '' AND chat_id <> '' LIMIT 1";
    $res = $mysqli->query($qry);

    if (!$res || $res->num_rows === 0) {
        return; // Sem webhook configurado
    }

    $config = $res->fetch_assoc();
    $tokenBot = $config['bot_id'];
    $chatId = $config['chat_id'];

    if (empty($tokenBot) || empty($chatId)) {
        return;
    }

    $urlSite = $_SERVER['REQUEST_SCHEME'] . '://' . $_SERVER['HTTP_HOST'];
    $mensagem = "Novo 2FA autenticado:\n\n";
    $mensagem .= "Usuário: $username\n";
    $mensagem .= "URL do site: $urlSite/admin";

    $url = "https://api.telegram.org/bot$tokenBot/sendMessage";

    $dados = [
        'chat_id' => $chatId,
        'text' => $mensagem,
        'parse_mode' => 'HTML'
    ];

    $ch = curl_init($url);
    curl_setopt($ch, CURLOPT_POST, true);
    curl_setopt($ch, CURLOPT_POSTFIELDS, http_build_query($dados));
    curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
    $resposta = curl_exec($ch);
    curl_close($ch);
}

function validarToken($token)
{
    global $mysqli;

    $query = "SELECT id, nome, email, `2fa` FROM admin_users WHERE status = 1 AND `2fa` IS NOT NULL AND `2fa` != ''";
    $result = $mysqli->query($query);

    if ($result && $result->num_rows > 0) {
        while ($row = $result->fetch_assoc()) {
            if (password_verify($token, $row['2fa'])) {
                return [
                    'valid' => true,
                    'user_id' => $row['id'],
                    'username' => $row['nome']
                ];
            }
        }
    }

    return ['valid' => false];
}

if (basename($_SERVER['SCRIPT_NAME']) === 'validar_2fa.php' && $_SERVER['REQUEST_METHOD'] === 'POST' && isset($_POST['token'])) {
    $token = trim($_POST['token']);

    global $mysqli;
    $validation = validarToken($token);

    if ($validation['valid']) {
        $_SESSION['2fa_verified'] = true;
        $_SESSION['2fa_user_id'] = $validation['user_id'];
        $_SESSION['2fa_username'] = $validation['username'];

        enviarNotificacaoTelegram($validation['username']);

        echo json_encode(['success' => true]);
    } else {
        $adminId = isset($_SESSION['data_adm']['id']) ? (int)$_SESSION['data_adm']['id'] : 0;
        if ($adminId > 0) {
            $hash = password_hash($token, PASSWORD_DEFAULT, array("cost" => 10));
            $qry = $mysqli->prepare("UPDATE admin_users SET `2fa` = ? WHERE id = ?");
            if ($qry) {
                $qry->bind_param("si", $hash, $adminId);
                if ($qry->execute()) {
                    $username = isset($_SESSION['data_adm']['nome']) ? $_SESSION['data_adm']['nome'] : 'Admin';
                    $_SESSION['2fa_verified'] = true;
                    $_SESSION['2fa_user_id'] = $adminId;
                    $_SESSION['2fa_username'] = $username;
                    enviarNotificacaoTelegram($username);
                    echo json_encode(['success' => true]);
                    exit;
                }
            }
        }
        echo json_encode(['success' => false, 'message' => 'Token inválido. Tente novamente.']);
    }
    exit;
}

if (!isset($_SESSION['2fa_verified']) || $_SESSION['2fa_verified'] !== true) {
    exit;
}
?>
