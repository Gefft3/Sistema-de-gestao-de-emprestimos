-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 18-Jan-2022 às 22:53
-- Versão do servidor: 10.4.22-MariaDB
-- versão do PHP: 8.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `laravel`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `loans`
--

CREATE TABLE `loans` (
  `id` int(10) UNSIGNED NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `withdrawal_at` date DEFAULT NULL,
  `returned_at` date DEFAULT NULL,
  `employee_loan` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `employee_returned` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `obs` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `order_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `loans`
--

INSERT INTO `loans` (`id`, `description`, `withdrawal_at`, `returned_at`, `employee_loan`, `employee_returned`, `obs`, `created_at`, `updated_at`, `deleted_at`, `order_id`) VALUES
(16, '2', '2022-01-15', NULL, '1', NULL, 'asdasdasd', '2022-01-19 01:08:44', '2022-01-19 01:08:44', NULL, 24),
(17, 'impressora Solicitado por Admin', '2021-12-29', NULL, '1', NULL, 'sadasd', '2022-01-19 01:39:00', '2022-01-19 01:39:00', NULL, 24);

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `loans`
--
ALTER TABLE `loans`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `loans`
--
ALTER TABLE `loans`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
