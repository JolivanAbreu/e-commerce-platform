-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 29/12/2024 às 17:06
-- Versão do servidor: 10.4.32-MariaDB
-- Versão do PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `lojavendas`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `cadastra`
--

CREATE TABLE `cadastra` (
  `fk_Usuario_Produto` int(11) DEFAULT NULL,
  `fk_Produto_Usuario` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `carrinho_compras`
--

CREATE TABLE `carrinho_compras` (
  `idCarrinho` int(11) NOT NULL,
  `quantidade` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `comentario`
--

CREATE TABLE `comentario` (
  `idComentario` int(11) NOT NULL,
  `comentario` varchar(500) DEFAULT NULL,
  `dataComentario` date DEFAULT NULL,
  `avaliacao` varchar(5) DEFAULT NULL,
  `fk_Comentario_Usuario` int(11) DEFAULT NULL,
  `fk_Comentario_Produto` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `contato`
--

CREATE TABLE `contato` (
  `idContato` int(11) NOT NULL,
  `telefone` char(14) DEFAULT NULL,
  `fk_Contato_Usuario` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `endereco`
--

CREATE TABLE `endereco` (
  `idEndereco` int(11) NOT NULL,
  `cep` varchar(9) DEFAULT NULL,
  `cidade` varchar(50) DEFAULT NULL,
  `rua` varchar(50) DEFAULT NULL,
  `numero` varchar(50) DEFAULT NULL,
  `fk_Endereco_Usuario` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `pagamento`
--

CREATE TABLE `pagamento` (
  `codPagamento` int(11) NOT NULL,
  `metodoPagamento` varchar(50) DEFAULT NULL,
  `informacaoCartao` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `pedido`
--

CREATE TABLE `pedido` (
  `numeroPedido` int(11) NOT NULL,
  `dataPedido` date DEFAULT NULL,
  `status_pagamento` varchar(50) DEFAULT NULL,
  `codEntrega` varchar(50) DEFAULT NULL,
  `valorTotal` double DEFAULT NULL,
  `fk_Usuario_Pedido` int(11) DEFAULT NULL,
  `fk_Pagamento_Pedido` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `pertence`
--

CREATE TABLE `pertence` (
  `fk_Usuario_Carrinho` int(11) DEFAULT NULL,
  `fk_Carrinho_Usuario` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `produto`
--

CREATE TABLE `produto` (
  `idProduto` int(11) NOT NULL,
  `nome` varchar(50) DEFAULT NULL,
  `categoria` varchar(50) DEFAULT NULL,
  `descricao` varchar(255) DEFAULT NULL,
  `estoque` int(11) DEFAULT NULL,
  `precoUnitario` double DEFAULT NULL,
  `fk_Pedido` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `usuario`
--

CREATE TABLE `usuario` (
  `idUsuario` int(11) NOT NULL,
  `nome` varchar(50) DEFAULT NULL,
  `cpf` char(15) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `senha` varchar(255) NOT NULL,
  `telefone` char(14) DEFAULT NULL,
  `endereco` varchar(255) DEFAULT NULL,
  `cidade` varchar(20) DEFAULT NULL,
  `uf` char(5) DEFAULT NULL,
  `cep` char(9) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `usuario`
--

INSERT INTO `usuario` (`idUsuario`, `nome`, `cpf`, `email`, `senha`, `telefone`, `endereco`, `cidade`, `uf`, `cep`) VALUES
(1, 'Jolivan A.Teixeira', '000.000.000-00', 'jolivan.Teixeira@gmail.com', 'root', '90000-0000', 'Rua Marcilio Dias', 'Fortaleza', 'CE', '60310-750');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `cadastra`
--
ALTER TABLE `cadastra`
  ADD KEY `fk_Usuario_Produto` (`fk_Usuario_Produto`),
  ADD KEY `fk_Produto_Usuario` (`fk_Produto_Usuario`);

--
-- Índices de tabela `carrinho_compras`
--
ALTER TABLE `carrinho_compras`
  ADD PRIMARY KEY (`idCarrinho`);

--
-- Índices de tabela `comentario`
--
ALTER TABLE `comentario`
  ADD PRIMARY KEY (`idComentario`),
  ADD KEY `fk_Comentario_Usuario` (`fk_Comentario_Usuario`),
  ADD KEY `fk_Comentario_Produto` (`fk_Comentario_Produto`);

--
-- Índices de tabela `contato`
--
ALTER TABLE `contato`
  ADD PRIMARY KEY (`idContato`),
  ADD KEY `fk_Contato_Usuario` (`fk_Contato_Usuario`);

--
-- Índices de tabela `endereco`
--
ALTER TABLE `endereco`
  ADD PRIMARY KEY (`idEndereco`),
  ADD KEY `fk_Endereco_Usuario` (`fk_Endereco_Usuario`);

--
-- Índices de tabela `pagamento`
--
ALTER TABLE `pagamento`
  ADD PRIMARY KEY (`codPagamento`);

--
-- Índices de tabela `pedido`
--
ALTER TABLE `pedido`
  ADD PRIMARY KEY (`numeroPedido`),
  ADD UNIQUE KEY `codEntrega` (`codEntrega`),
  ADD KEY `fk_Usuario_Pedido` (`fk_Usuario_Pedido`),
  ADD KEY `fk_Pagamento_Pedido` (`fk_Pagamento_Pedido`);

--
-- Índices de tabela `pertence`
--
ALTER TABLE `pertence`
  ADD KEY `fk_Usuario_Carrinho` (`fk_Usuario_Carrinho`),
  ADD KEY `fk_Carrinho_Usuario` (`fk_Carrinho_Usuario`);

--
-- Índices de tabela `produto`
--
ALTER TABLE `produto`
  ADD PRIMARY KEY (`idProduto`);

--
-- Índices de tabela `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`idUsuario`),
  ADD UNIQUE KEY `cpf` (`cpf`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `carrinho_compras`
--
ALTER TABLE `carrinho_compras`
  MODIFY `idCarrinho` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `comentario`
--
ALTER TABLE `comentario`
  MODIFY `idComentario` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `contato`
--
ALTER TABLE `contato`
  MODIFY `idContato` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `endereco`
--
ALTER TABLE `endereco`
  MODIFY `idEndereco` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `pagamento`
--
ALTER TABLE `pagamento`
  MODIFY `codPagamento` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `pedido`
--
ALTER TABLE `pedido`
  MODIFY `numeroPedido` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `produto`
--
ALTER TABLE `produto`
  MODIFY `idProduto` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `usuario`
--
ALTER TABLE `usuario`
  MODIFY `idUsuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `cadastra`
--
ALTER TABLE `cadastra`
  ADD CONSTRAINT `cadastra_ibfk_1` FOREIGN KEY (`fk_Usuario_Produto`) REFERENCES `usuario` (`idUsuario`),
  ADD CONSTRAINT `cadastra_ibfk_2` FOREIGN KEY (`fk_Produto_Usuario`) REFERENCES `produto` (`idProduto`);

--
-- Restrições para tabelas `comentario`
--
ALTER TABLE `comentario`
  ADD CONSTRAINT `comentario_ibfk_1` FOREIGN KEY (`fk_Comentario_Usuario`) REFERENCES `usuario` (`idUsuario`),
  ADD CONSTRAINT `comentario_ibfk_2` FOREIGN KEY (`fk_Comentario_Produto`) REFERENCES `produto` (`idProduto`);

--
-- Restrições para tabelas `contato`
--
ALTER TABLE `contato`
  ADD CONSTRAINT `contato_ibfk_1` FOREIGN KEY (`fk_Contato_Usuario`) REFERENCES `usuario` (`idUsuario`);

--
-- Restrições para tabelas `endereco`
--
ALTER TABLE `endereco`
  ADD CONSTRAINT `endereco_ibfk_1` FOREIGN KEY (`fk_Endereco_Usuario`) REFERENCES `usuario` (`idUsuario`),
  ADD CONSTRAINT `endereco_ibfk_2` FOREIGN KEY (`fk_Endereco_Usuario`) REFERENCES `usuario` (`idUsuario`);

--
-- Restrições para tabelas `pedido`
--
ALTER TABLE `pedido`
  ADD CONSTRAINT `pedido_ibfk_1` FOREIGN KEY (`fk_Usuario_Pedido`) REFERENCES `usuario` (`idUsuario`),
  ADD CONSTRAINT `pedido_ibfk_2` FOREIGN KEY (`fk_Pagamento_Pedido`) REFERENCES `pagamento` (`codPagamento`),
  ADD CONSTRAINT `pedido_ibfk_3` FOREIGN KEY (`fk_Usuario_Pedido`) REFERENCES `usuario` (`idUsuario`),
  ADD CONSTRAINT `pedido_ibfk_4` FOREIGN KEY (`fk_Pagamento_Pedido`) REFERENCES `pagamento` (`codPagamento`);

--
-- Restrições para tabelas `pertence`
--
ALTER TABLE `pertence`
  ADD CONSTRAINT `pertence_ibfk_1` FOREIGN KEY (`fk_Usuario_Carrinho`) REFERENCES `usuario` (`idUsuario`),
  ADD CONSTRAINT `pertence_ibfk_2` FOREIGN KEY (`fk_Carrinho_Usuario`) REFERENCES `carrinho_compras` (`idCarrinho`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
