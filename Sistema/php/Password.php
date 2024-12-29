<?php
include_once 'conexao.php'; // Arquivo de conexão com o banco

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $email = filter_input(INPUT_POST, 'email', FILTER_SANITIZE_EMAIL);
    $nova_senha = filter_input(INPUT_POST, 'nova_senha', FILTER_SANITIZE_STRING);
    $confirmar_senha = filter_input(INPUT_POST, 'confirmar_senha', FILTER_SANITIZE_STRING);

    if ($nova_senha === $confirmar_senha) {
        if ($email && $nova_senha) {
            $nova_senha_hashed = password_hash($nova_senha, PASSWORD_BCRYPT);

            $sql = "UPDATE Usuario SET senha = ? WHERE email = ?";
            $stmt = $conn->prepare($sql);
            $stmt->bind_param('ss', $nova_senha_hashed, $email);

            if ($stmt->execute()) {
                echo "Senha alterada com sucesso!";
                header('Location: ../Login.php'); // Redirecionar para login
            } else {
                echo "Erro ao alterar a senha. Tente novamente.";
            }
        } else {
            echo "Preencha todos os campos.";
        }
    } else {
        echo "As senhas não coincidem.";
    }
}
?>
