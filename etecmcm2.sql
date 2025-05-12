-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 12/05/2025 às 14:06
-- Versão do servidor: 10.4.28-MariaDB
-- Versão do PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `etecmcm2`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `categorias`
--

CREATE TABLE `categorias` (
  `id_categoria` int(11) NOT NULL,
  `nome_cat` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `categorias`
--

INSERT INTO `categorias` (`id_categoria`, `nome_cat`) VALUES
(1, 'Limpeza'),
(3, 'Latícinios'),
(4, 'Carnes'),
(5, 'Enlatados'),
(6, 'Hortifruti'),
(7, 'Bebidas'),
(8, 'Perfumaria'),
(9, 'Eletroeletrônicos'),
(10, 'Limpeza'),
(11, 'Frios'),
(12, 'Embalagens');

-- --------------------------------------------------------

--
-- Estrutura para tabela `produtos`
--

CREATE TABLE `produtos` (
  `id_produto` int(11) NOT NULL,
  `nome` varchar(255) DEFAULT NULL,
  `preco` decimal(10,2) DEFAULT NULL,
  `quant` int(11) DEFAULT NULL,
  `marca` varchar(255) DEFAULT NULL,
  `id_categoria` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `produtos`
--

INSERT INTO `produtos` (`id_produto`, `nome`, `preco`, `quant`, `marca`, `id_categoria`) VALUES
(1, 'Sabão em pó', 25.49, 4, 'OMO', 10),
(3, 'Mussarela', 55.40, 100, 'President', 11),
(4, 'Presunto', 60.35, 50, 'President', 11),
(5, 'Iogurte Natural', 3.40, 60, 'Itambé', 3),
(6, 'Leite', 6.49, 12, 'Paulista', 3),
(7, 'Milho', 5.25, 6, 'Fugini', 5),
(8, 'Ervilhas', 4.29, 4, 'Fugini', 5),
(9, 'Acém', 42.75, 30, 'Perdigão', 4),
(10, 'Picanha', 126.22, 20, 'Perdigão', 4),
(11, 'Microondas', 450.99, 4, 'Samsung', 9),
(12, 'Geladeira', 850.39, 2, 'Samsung', 9),
(13, 'Coca-Cola', 3.49, 20, 'Coca-Cola', 7),
(14, 'Detergente', 6.39, 10, 'Ypê', 10),
(15, 'Cerveja', 5.50, 15, 'Skol', 7),
(16, 'Papel Filme', 15.29, 5, 'Wyda', 12),
(17, 'Papel Toalha', 12.99, 5, 'Snob', 12),
(18, 'Alface', 6.99, 15, 'Frutelo', 6),
(19, 'Maçã', 8.99, 12, 'Hortifruti', 6),
(20, 'Perfume Masculino', 50.99, 4, 'Oboticário', 8),
(21, 'Perfume Feminino', 90.99, 3, 'Jequiti', 8);

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id_categoria`);

--
-- Índices de tabela `produtos`
--
ALTER TABLE `produtos`
  ADD PRIMARY KEY (`id_produto`),
  ADD KEY `id_categoria` (`id_categoria`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id_categoria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de tabela `produtos`
--
ALTER TABLE `produtos`
  MODIFY `id_produto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `produtos`
--
ALTER TABLE `produtos`
  ADD CONSTRAINT `produtos_ibfk_1` FOREIGN KEY (`id_categoria`) REFERENCES `categorias` (`id_categoria`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
