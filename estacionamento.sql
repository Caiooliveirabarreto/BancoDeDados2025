-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 10-Set-2025 às 16:28
-- Versão do servidor: 10.4.27-MariaDB
-- versão do PHP: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `estacionamento`
--
CREATE DATABASE IF NOT EXISTS `estacionamento` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `estacionamento`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `andar`
--

CREATE TABLE `andar` (
  `codLugar` int(11) NOT NULL,
  `capacidade` int(11) NOT NULL,
  `andar` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Extraindo dados da tabela `andar`
--

INSERT INTO `andar` (`codLugar`, `capacidade`, `andar`) VALUES
(1, 50, 'Térreo'),
(2, 30, '1º Andar'),
(3, 40, '2º Andar'),
(4, 25, '3º Andar'),
(5, 20, 'Subsolo 1'),
(6, 20, 'Subsolo 2'),
(7, 35, 'Mezanino'),
(8, 45, 'Cobertura'),
(9, 15, 'Andar Técnico'),
(10, 10, 'Andar VIP');

-- --------------------------------------------------------

--
-- Estrutura da tabela `cliente`
--

CREATE TABLE `cliente` (
  `cpf` varchar(20) NOT NULL,
  `dtnasc` datetime NOT NULL,
  `nome` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Extraindo dados da tabela `cliente`
--

INSERT INTO `cliente` (`cpf`, `dtnasc`, `nome`) VALUES
('15975348600', '1989-12-12 00:00:00', 'Thiago Almeida'),
('32165498700', '2000-01-30 00:00:00', 'João Pedro Silva'),
('36925814700', '1998-04-25 00:00:00', 'Fernanda Rocha'),
('45612378900', '1978-11-05 00:00:00', 'Mariana Souza'),
('74185296300', '1995-09-10 00:00:00', 'Beatriz Martins'),
('75395185200', '2002-08-09 00:00:00', 'Eduardo Ramos'),
('85236974100', '1982-06-18 00:00:00', 'Ricardo Lima'),
('95175345600', '1975-10-03 00:00:00', 'Luciana Freitas'),
('98765432100', '1990-07-22 00:00:00', 'Carlos Henrique');

-- --------------------------------------------------------

--
-- Estrutura da tabela `estaciona`
--

CREATE TABLE `estaciona` (
  `codVaga` int(11) NOT NULL,
  `horasaida` datetime NOT NULL,
  `dtsaida` datetime NOT NULL,
  `horaentrada` datetime NOT NULL,
  `dtentrada` datetime NOT NULL,
  `placa` varchar(8) DEFAULT NULL,
  `codLugar` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Extraindo dados da tabela `estaciona`
--

INSERT INTO `estaciona` (`codVaga`, `horasaida`, `dtsaida`, `horaentrada`, `dtentrada`, `placa`, `codLugar`) VALUES
(2, '2025-09-01 18:00:00', '2025-09-01 00:00:00', '2025-09-01 09:30:00', '2025-09-01 00:00:00', 'XYZ5678', 2),
(3, '2025-09-01 13:45:00', '2025-09-01 00:00:00', '2025-09-01 10:15:00', '2025-09-01 00:00:00', 'JKL9101', 3),
(4, '2025-09-01 17:20:00', '2025-09-01 00:00:00', '2025-09-01 07:50:00', '2025-09-01 00:00:00', 'QWE4321', 4),
(5, '2025-09-01 15:00:00', '2025-09-01 00:00:00', '2025-09-01 11:00:00', '2025-09-01 00:00:00', 'RTY6789', 5),
(6, '2025-09-01 19:30:00', '2025-09-01 00:00:00', '2025-09-01 13:00:00', '2025-09-01 00:00:00', 'FGH2468', 6),
(7, '2025-09-01 20:00:00', '2025-09-01 00:00:00', '2025-09-01 14:30:00', '2025-09-01 00:00:00', 'LMN1357', 7),
(8, '2025-09-01 14:10:00', '2025-09-01 00:00:00', '2025-09-01 09:00:00', '2025-09-01 00:00:00', 'POI9753', 8),
(9, '2025-09-01 16:45:00', '2025-09-01 00:00:00', '2025-09-01 12:00:00', '2025-09-01 00:00:00', 'BVC8642', 9),
(10, '2025-09-01 21:00:00', '2025-09-01 00:00:00', '2025-09-01 15:30:00', '2025-09-01 00:00:00', 'NMB3579', 10);

-- --------------------------------------------------------

--
-- Estrutura da tabela `modelo`
--

CREATE TABLE `modelo` (
  `codModelo` int(11) NOT NULL,
  `modelo` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Extraindo dados da tabela `modelo`
--

INSERT INTO `modelo` (`codModelo`, `modelo`) VALUES
(1, 'HB20'),
(2, 'Civic'),
(3, 'Onix'),
(4, 'Honda City'),
(5, 'Gol'),
(6, 'Fiesta'),
(7, 'Focus'),
(8, 'Kwid'),
(9, 'T-Cross'),
(10, 'Uno');

-- --------------------------------------------------------

--
-- Estrutura da tabela `veiculo`
--

CREATE TABLE `veiculo` (
  `placa` varchar(8) NOT NULL,
  `cor` varchar(20) NOT NULL,
  `cpf` varchar(20) DEFAULT NULL,
  `ano` int(11) NOT NULL,
  `codmodelo` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Extraindo dados da tabela `veiculo`
--

INSERT INTO `veiculo` (`placa`, `cor`, `cpf`, `ano`, `codmodelo`) VALUES
('BVC8642', 'Roxo', '95175345600', 0, 9),
('FGH2468', 'Verde', '85236974100', 0, 6),
('JKL9101', 'Vermelho', '45612378900', 0, 3),
('LMN1357', 'Cinza', '36925814700', 0, 7),
('NMB3579', 'Bege', '75395185200', 0, 10),
('POI9753', 'Amarelo', '15975348600', 0, 8),
('QWE4321', 'Prata', '32165498700', 0, 4),
('RTY6789', 'Azul', '74185296300', 0, 5),
('XYZ5678', 'Branco', '98765432100', 0, 2);

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `andar`
--
ALTER TABLE `andar`
  ADD PRIMARY KEY (`codLugar`);

--
-- Índices para tabela `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`cpf`);

--
-- Índices para tabela `estaciona`
--
ALTER TABLE `estaciona`
  ADD PRIMARY KEY (`codVaga`),
  ADD KEY `placa` (`placa`),
  ADD KEY `codLugar` (`codLugar`);

--
-- Índices para tabela `modelo`
--
ALTER TABLE `modelo`
  ADD PRIMARY KEY (`codModelo`);

--
-- Índices para tabela `veiculo`
--
ALTER TABLE `veiculo`
  ADD PRIMARY KEY (`placa`),
  ADD KEY `cpf` (`cpf`),
  ADD KEY `codmodelo` (`codmodelo`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `andar`
--
ALTER TABLE `andar`
  MODIFY `codLugar` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `estaciona`
--
ALTER TABLE `estaciona`
  MODIFY `codVaga` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `modelo`
--
ALTER TABLE `modelo`
  MODIFY `codModelo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `estaciona`
--
ALTER TABLE `estaciona`
  ADD CONSTRAINT `estaciona_ibfk_1` FOREIGN KEY (`placa`) REFERENCES `veiculo` (`placa`),
  ADD CONSTRAINT `estaciona_ibfk_2` FOREIGN KEY (`codLugar`) REFERENCES `andar` (`codLugar`);

--
-- Limitadores para a tabela `veiculo`
--
ALTER TABLE `veiculo`
  ADD CONSTRAINT `veiculo_ibfk_1` FOREIGN KEY (`cpf`) REFERENCES `cliente` (`cpf`),
  ADD CONSTRAINT `veiculo_ibfk_2` FOREIGN KEY (`codmodelo`) REFERENCES `modelo` (`codModelo`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
