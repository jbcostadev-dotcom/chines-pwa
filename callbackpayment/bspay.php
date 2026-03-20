<?php
session_start();
include_once "../config.php";
include_once('../'.DASH.'/services/database.php');
include_once('../'.DASH.'/services/funcao.php');
include_once('../'.DASH.'/services/crud.php');
include_once('../'.DASH.'/services/webhook.php');
global $mysqli;

$raw_input = file_get_contents("php://input");
log_ecompag("Payload RAW recebido: " . $raw_input);

$data = json_decode($raw_input, true);

if ($data === null && json_last_error() !== JSON_ERROR_NONE) {
    log_ecompag("ERRO JSON: " . json_last_error_msg());
    http_response_code(400);
    exit;
}

// Ecompag webhook payload:
// { "transactionType": "RECEIVEPIX", "transactionId": "...", "amount": 150.99, "status": "PAID", ... }
$idTransaction     = PHP_SEGURO($data['transactionId']    ?? '');
$typeTransaction   = PHP_SEGURO($data['transactionType']  ?? '');
$statusTransaction = PHP_SEGURO($data['status']           ?? '');

log_ecompag("Recebido: ID=$idTransaction, Type=$typeTransaction, Status=$statusTransaction");

function log_ecompag($msg) {
    $logfile = __DIR__ . '/ecompag.log';
    $date    = date('d-M-Y H:i:s T');
    file_put_contents($logfile, "[$date] $msg" . PHP_EOL, FILE_APPEND);
}

function verificarBonus($userId, $valorPago, $transacao_id = null) {
    global $mysqli;

    log_ecompag("verificarBonus: Iniciando verificação para User $userId, Valor $valorPago, TransID $transacao_id");

    $sqlCount = "SELECT COUNT(*) as total FROM transacoes WHERE usuario = ? AND tipo = 'deposito' AND status = 'pago'";
    $stmtCount = $mysqli->prepare($sqlCount);
    $stmtCount->bind_param("i", $userId);
    $stmtCount->execute();
    $resCount  = $stmtCount->get_result();
    $rowCount  = $resCount->fetch_assoc();
    $totalPaid = $rowCount['total'];
    $stmtCount->close();

    log_ecompag("verificarBonus: Total de depósitos pagos encontrados: $totalPaid");

    if ($totalPaid > 1) {
        log_ecompag("verificarBonus: Usuário já possui mais de 1 depósito pago. Bônus = 0");
        return 0;
    }

    $tagValue  = 0;
    $payTypeId = 0;

    if ($transacao_id) {
        $sqlTrans  = "SELECT pay_type_sub_list_id, join_bonus FROM transacoes WHERE transacao_id = ?";
        $stmtTrans = $mysqli->prepare($sqlTrans);
        $stmtTrans->bind_param("s", $transacao_id);
        $stmtTrans->execute();
        $resTrans = $stmtTrans->get_result();
        if ($rowTrans = $resTrans->fetch_assoc()) {
            $payTypeId = $rowTrans['pay_type_sub_list_id'];
            log_ecompag("verificarBonus: PayTypeID: $payTypeId. JoinBonus: " . ($rowTrans['join_bonus'] ?? 'N/A'));
            if (isset($rowTrans['join_bonus']) && $rowTrans['join_bonus'] != 1) {
                log_ecompag("verificarBonus: join_bonus != 1. Retornando 0.");
                return 0;
            }
        }
        $stmtTrans->close();
    }

    if ($payTypeId) {
        $sqlPay  = "SELECT tag_value, bonus_active FROM pay_type_sub_list WHERE id = ?";
        $stmtPay = $mysqli->prepare($sqlPay);
        $stmtPay->bind_param("i", $payTypeId);
        $stmtPay->execute();
        $resPay = $stmtPay->get_result();
        if ($rowPay = $resPay->fetch_assoc()) {
            if ($rowPay['bonus_active'] == 1) {
                $percentage = floatval($rowPay['tag_value']);
                $tagValue   = ($valorPago * $percentage) / 100;
                log_ecompag("verificarBonus: Regra por ID. Percent: $percentage%. Bônus: $tagValue");
            }
        }
        $stmtPay->close();
    } else {
        $sqlPay  = "SELECT tag_value FROM pay_type_sub_list WHERE status = 1 AND bonus_active = 1 AND ? >= min_amount AND ? <= max_amount ORDER BY id DESC LIMIT 1";
        $stmtPay = $mysqli->prepare($sqlPay);
        $stmtPay->bind_param("dd", $valorPago, $valorPago);
        $stmtPay->execute();
        $resPay = $stmtPay->get_result();
        if ($rowPay = $resPay->fetch_assoc()) {
            $percentage = floatval($rowPay['tag_value']);
            $tagValue   = ($valorPago * $percentage) / 100;
            log_ecompag("verificarBonus: Regra genérica. Percent: $percentage%. Bônus: $tagValue");
        } else {
            log_ecompag("verificarBonus: Nenhuma regra encontrada.");
        }
        $stmtPay->close();
    }

    log_ecompag("verificarBonus: Retornando $tagValue");
    return $tagValue;
}

function registrarBonusUsado($userId, $valorPago, $bonusRecebido) {
    global $mysqli;
    if ($bonusRecebido <= 0) return false;
    $sql  = "INSERT INTO cupom_usados (id_user, valor, bonus, data_registro) VALUES (?, ?, ?, NOW())";
    $stmt = $mysqli->prepare($sql);
    $stmt->bind_param("idi", $userId, $valorPago, $bonusRecebido);
    return $stmt->execute();
}

function busca_valor_ipn($transacao_id) {
    global $mysqli;

    $qry = "SELECT usuario, valor FROM transacoes WHERE transacao_id='" . $transacao_id . "'";
    $res = mysqli_query($mysqli, $qry);

    if (mysqli_num_rows($res) > 0) {
        $data       = mysqli_fetch_assoc($res);
        $userId     = $data['usuario'];
        $valorPago  = $data['valor'];

        log_ecompag("Transação encontrada. User: $userId, Valor: $valorPago. Verificando bônus...");

        $bonusRecebido = verificarBonus($userId, $valorPago, $transacao_id);
        $valorTotal    = $valorPago + $bonusRecebido;

        log_ecompag("Bônus calculado: $bonusRecebido. Total a creditar: $valorTotal");
        log_ecompag("Chamando adicionarSaldoUsuarioWebhook($userId, $valorTotal)...");

        $retorna_insert_saldo = adicionarSaldoUsuarioWebhook($userId, $valorTotal);

        if ($retorna_insert_saldo) {
            criarAuditFlowDeposito($userId, $valorPago);
            log_ecompag("AuditFlow criado para User $userId com valor $valorPago");

            if ($bonusRecebido > 0) {
                registrarBonusUsado($userId, $valorPago, $bonusRecebido);
                log_ecompag("Bônus registrado em cupom_usados");
            }

            log_ecompag("Chamando processarTodasComissoes para User $userId, Valor $valorPago");
            if (function_exists('processarTodasComissoes')) {
                try {
                    $resultado_comissao = processarTodasComissoes($userId, $valorPago);
                    log_ecompag("processarTodasComissoes: " . ($resultado_comissao ? 'TRUE' : 'FALSE'));
                } catch (Throwable $t) {
                    log_ecompag("ERRO FATAL processarTodasComissoes: " . $t->getMessage());
                } catch (Exception $e) {
                    log_ecompag("ERRO processarTodasComissoes: " . $e->getMessage());
                }
            } else {
                log_ecompag("ERRO CRÍTICO: processarTodasComissoes NÃO ENCONTRADA.");
            }

            $qry_user  = "SELECT nome FROM usuarios WHERE id = ?";
            $stmt_user = $mysqli->prepare($qry_user);
            $stmt_user->bind_param("i", $userId);
            $stmt_user->execute();
            $res_user  = $stmt_user->get_result();
            $user_data = $res_user->fetch_assoc();
            $stmt_user->close();

            WebhookPixPagos($user_data['nome'] ?? 'Usuário', $_SERVER['HTTP_HOST'], $valorPago);
            log_ecompag("WebhookPixPagos chamado com sucesso.");
        } else {
            log_ecompag("ERRO: adicionarSaldoUsuarioWebhook retornou FALSE. User: $userId, Valor: $valorTotal");
        }

        return $retorna_insert_saldo;
    }

    log_ecompag("Transação ID $transacao_id não encontrada no banco de dados.");
    return false;
}

function att_paymentpix($transacao_id) {
    global $mysqli;

    $stmt_check = $mysqli->prepare("SELECT status FROM transacoes WHERE transacao_id = ?");
    if ($stmt_check) {
        $stmt_check->bind_param("s", $transacao_id);
        $stmt_check->execute();
        $res_check = $stmt_check->get_result();
        if ($res_check && $row = $res_check->fetch_assoc()) {
            if ($row['status'] == 'pago') {
                log_ecompag("Transação já estava paga. Ignorando.");
                $stmt_check->close();
                return 2;
            }
        }
        $stmt_check->close();
    }

    $sql = $mysqli->prepare("UPDATE transacoes SET status='pago' WHERE transacao_id=?");
    $sql->bind_param("s", $transacao_id);

    if ($sql->execute()) {
        log_ecompag("Status atualizado para 'pago'. Chamando busca_valor_ipn...");
        $buscar = busca_valor_ipn($transacao_id);
        $rf     = $buscar ? 1 : 0;
        if (!$buscar) log_ecompag("busca_valor_ipn retornou false.");
    } else {
        log_ecompag("Erro ao atualizar status: " . $mysqli->error);
        $rf = 0;
    }

    return $rf;
}

// Processar: Ecompag envia transactionType=RECEIVEPIX e status=PAID
if ($idTransaction && $typeTransaction === 'RECEIVEPIX' && $statusTransaction === 'PAID') {
    $att_transacao = att_paymentpix($idTransaction);
    if ($att_transacao == 2) {
        $qry  = "SELECT t.usuario, t.valor, u.nome FROM transacoes t JOIN usuarios u ON u.id = t.usuario WHERE t.transacao_id = ? LIMIT 1";
        $stmt = $mysqli->prepare($qry);
        if ($stmt) {
            $stmt->bind_param("s", $idTransaction);
            $stmt->execute();
            $res = $stmt->get_result();
            if ($res && $row = $res->fetch_assoc()) {
                WebhookPixPagos($row['nome'] ?? 'Usuário', $_SERVER['HTTP_HOST'], $row['valor'] ?? 0);
            }
            $stmt->close();
        }
    }
}

function adicionarSaldoUsuarioWebhook($id_user, $valor) {
    global $mysqli;

    log_ecompag("adicionarSaldoUsuarioWebhook: Iniciando para User $id_user, Valor $valor");

    try {
        if (!$mysqli) {
            log_ecompag("ERRO: Conexão MySQL inválida.");
            return false;
        }

        $stmt = $mysqli->prepare("SELECT saldo FROM usuarios WHERE id = ?");
        if (!$stmt) {
            log_ecompag("ERRO Prepare Select Saldo: " . $mysqli->error);
            return false;
        }
        $stmt->bind_param("i", $id_user);
        $stmt->execute();
        $res = $stmt->get_result();
        if ($res->num_rows === 0) {
            log_ecompag("ERRO: Usuário $id_user não encontrado.");
            $stmt->close();
            return false;
        }
        $row           = $res->fetch_assoc();
        $saldo_atual   = floatval($row['saldo']);
        $novo_saldo    = $saldo_atual + floatval($valor);
        $stmt->close();

        log_ecompag("Saldo atual: $saldo_atual. Novo saldo: $novo_saldo");

        $stmt2 = $mysqli->prepare("UPDATE usuarios SET saldo = ? WHERE id = ?");
        if (!$stmt2) {
            log_ecompag("ERRO Prepare Update Saldo: " . $mysqli->error);
            return false;
        }
        $stmt2->bind_param("di", $novo_saldo, $id_user);
        if (!$stmt2->execute()) {
            log_ecompag("ERRO Execute Update Saldo: " . $stmt2->error);
            $stmt2->close();
            return false;
        }
        $stmt2->close();

        // Registrar movimentação
        $data_registro = date('Y-m-d H:i:s');
        $tipo          = 'deposito';
        $stmt3         = $mysqli->prepare("INSERT INTO adicao_saldo (id_user, valor, tipo, data_registro) VALUES (?, ?, ?, ?)");
        if ($stmt3) {
            $stmt3->bind_param("idss", $id_user, $valor, $tipo, $data_registro);
            $stmt3->execute();
            $stmt3->close();
        }

        log_ecompag("Saldo atualizado com sucesso para User $id_user. Novo saldo: $novo_saldo");
        return true;

    } catch (Exception $e) {
        log_ecompag("EXCEPTION adicionarSaldoUsuarioWebhook: " . $e->getMessage());
        return false;
    }
}

http_response_code(200);
echo json_encode(['status' => 'success']);