<?php
session_start();
include_once 'conexao.php'; // Arquivo de conexão com o banco

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $email = filter_input(INPUT_POST, 'email', FILTER_SANITIZE_EMAIL);
    $senha = filter_input(INPUT_POST, 'senha', FILTER_SANITIZE_STRING);

    if ($email && $senha) {
        $sql = "SELECT idUsuario, nome, senha FROM Usuario WHERE email = ?";
        $stmt = $conn->prepare($sql);
        $stmt->bind_param('s', $email);
        $stmt->execute();
        $result = $stmt->get_result();

        if ($result->num_rows === 1) {
            $user = $result->fetch_assoc();
            if (password_verify($senha, $user['senha'])) {
                $_SESSION['idUsuario'] = $user['idUsuario'];
                $_SESSION['nome'] = $user['nome'];
                header('Location: ../Home.php'); // Substituir por sua página inicial
                exit;
            } else {
                $_SESSION['erro_login'] = 'Senha incorreta.';
            }
        } else {
            $_SESSION['erro_login'] = 'Usuário não encontrado.';
        }
    } else {
        $_SESSION['erro_login'] = 'Preencha todos os campos.';
    }
    header('Location: ../Login.php'); // Voltar ao login em caso de erro
    exit;
}
