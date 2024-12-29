<?php
$host = 'localhost';
$db = 'usuario'; // Substitua pelo nome do banco
$user = 'root'; // Substitua pelo usuário do banco
$password = ''; // Substitua pela senha do banco

$conn = new mysqli($host, $user, $password, $db);

if ($conn->connect_error) {
    die("Erro na conexão: " . $conn->connect_error);
}
?>
