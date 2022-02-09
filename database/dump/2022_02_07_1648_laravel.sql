-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 07-Fev-2022 às 21:48
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
-- Estrutura da tabela `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT 1,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `categories`
--

INSERT INTO `categories` (`id`, `parent_id`, `order`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, NULL, 1, 'Category 1', 'category-1', '2021-12-07 23:32:01', '2021-12-07 23:32:01'),
(2, NULL, 1, 'Category 2', 'category-2', '2021-12-07 23:32:01', '2021-12-07 23:32:01');

-- --------------------------------------------------------

--
-- Estrutura da tabela `data_rows`
--

CREATE TABLE `data_rows` (
  `id` int(10) UNSIGNED NOT NULL,
  `data_type_id` int(10) UNSIGNED NOT NULL,
  `field` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT 0,
  `browse` tinyint(1) NOT NULL DEFAULT 1,
  `read` tinyint(1) NOT NULL DEFAULT 1,
  `edit` tinyint(1) NOT NULL DEFAULT 1,
  `add` tinyint(1) NOT NULL DEFAULT 1,
  `delete` tinyint(1) NOT NULL DEFAULT 1,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `data_rows`
--

INSERT INTO `data_rows` (`id`, `data_type_id`, `field`, `type`, `display_name`, `required`, `browse`, `read`, `edit`, `add`, `delete`, `details`, `order`) VALUES
(1, 1, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(2, 1, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(3, 1, 'email', 'text', 'Email', 1, 1, 1, 1, 1, 1, NULL, 3),
(4, 1, 'password', 'password', 'Password', 1, 0, 0, 1, 1, 0, NULL, 4),
(5, 1, 'remember_token', 'text', 'Remember Token', 0, 0, 0, 0, 0, 0, NULL, 5),
(6, 1, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, NULL, 6),
(7, 1, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 7),
(8, 1, 'avatar', 'image', 'Avatar', 0, 1, 1, 1, 1, 1, NULL, 8),
(9, 1, 'user_belongsto_role_relationship', 'relationship', 'Role', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsTo\",\"column\":\"role_id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"roles\",\"pivot\":0}', 10),
(10, 1, 'user_belongstomany_role_relationship', 'relationship', 'Roles', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"user_roles\",\"pivot\":\"1\",\"taggable\":\"0\"}', 11),
(11, 1, 'settings', 'hidden', 'Settings', 0, 0, 0, 0, 0, 0, NULL, 12),
(12, 2, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(13, 2, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(14, 2, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(15, 2, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(16, 3, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(17, 3, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(18, 3, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(19, 3, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(20, 3, 'display_name', 'text', 'Display Name', 1, 1, 1, 1, 1, 1, NULL, 5),
(21, 1, 'role_id', 'text', 'Role', 1, 1, 1, 1, 1, 1, NULL, 9),
(22, 4, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(23, 4, 'parent_id', 'select_dropdown', 'Parent', 0, 0, 1, 1, 1, 1, '{\"default\":\"\",\"null\":\"\",\"options\":{\"\":\"-- None --\"},\"relationship\":{\"key\":\"id\",\"label\":\"name\"}}', 2),
(24, 4, 'order', 'text', 'Order', 1, 1, 1, 1, 1, 1, '{\"default\":1}', 3),
(25, 4, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 4),
(26, 4, 'slug', 'text', 'Slug', 1, 1, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"name\"}}', 5),
(27, 4, 'created_at', 'timestamp', 'Created At', 0, 0, 1, 0, 0, 0, NULL, 6),
(28, 4, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 7),
(29, 5, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(30, 5, 'author_id', 'text', 'Author', 1, 0, 1, 1, 0, 1, NULL, 2),
(31, 5, 'category_id', 'text', 'Category', 1, 0, 1, 1, 1, 0, NULL, 3),
(32, 5, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, NULL, 4),
(33, 5, 'excerpt', 'text_area', 'Excerpt', 1, 0, 1, 1, 1, 1, NULL, 5),
(34, 5, 'body', 'rich_text_box', 'Body', 1, 0, 1, 1, 1, 1, NULL, 6),
(35, 5, 'image', 'image', 'Post Image', 0, 1, 1, 1, 1, 1, '{\"resize\":{\"width\":\"1000\",\"height\":\"null\"},\"quality\":\"70%\",\"upsize\":true,\"thumbnails\":[{\"name\":\"medium\",\"scale\":\"50%\"},{\"name\":\"small\",\"scale\":\"25%\"},{\"name\":\"cropped\",\"crop\":{\"width\":\"300\",\"height\":\"250\"}}]}', 7),
(36, 5, 'slug', 'text', 'Slug', 1, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\",\"forceUpdate\":true},\"validation\":{\"rule\":\"unique:posts,slug\"}}', 8),
(37, 5, 'meta_description', 'text_area', 'Meta Description', 1, 0, 1, 1, 1, 1, NULL, 9),
(38, 5, 'meta_keywords', 'text_area', 'Meta Keywords', 1, 0, 1, 1, 1, 1, NULL, 10),
(39, 5, 'status', 'select_dropdown', 'Status', 1, 1, 1, 1, 1, 1, '{\"default\":\"DRAFT\",\"options\":{\"PUBLISHED\":\"published\",\"DRAFT\":\"draft\",\"PENDING\":\"pending\"}}', 11),
(40, 5, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, NULL, 12),
(41, 5, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 13),
(42, 5, 'seo_title', 'text', 'SEO Title', 0, 1, 1, 1, 1, 1, NULL, 14),
(43, 5, 'featured', 'checkbox', 'Featured', 1, 1, 1, 1, 1, 1, NULL, 15),
(44, 6, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(45, 6, 'author_id', 'text', 'Author', 1, 0, 0, 0, 0, 0, NULL, 2),
(46, 6, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, NULL, 3),
(47, 6, 'excerpt', 'text_area', 'Excerpt', 1, 0, 1, 1, 1, 1, NULL, 4),
(48, 6, 'body', 'rich_text_box', 'Body', 1, 0, 1, 1, 1, 1, NULL, 5),
(49, 6, 'slug', 'text', 'Slug', 1, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\"},\"validation\":{\"rule\":\"unique:pages,slug\"}}', 6),
(50, 6, 'meta_description', 'text', 'Meta Description', 1, 0, 1, 1, 1, 1, NULL, 7),
(51, 6, 'meta_keywords', 'text', 'Meta Keywords', 1, 0, 1, 1, 1, 1, NULL, 8),
(52, 6, 'status', 'select_dropdown', 'Status', 1, 1, 1, 1, 1, 1, '{\"default\":\"INACTIVE\",\"options\":{\"INACTIVE\":\"INACTIVE\",\"ACTIVE\":\"ACTIVE\"}}', 9),
(53, 6, 'created_at', 'timestamp', 'Created At', 1, 1, 1, 0, 0, 0, NULL, 10),
(54, 6, 'updated_at', 'timestamp', 'Updated At', 1, 0, 0, 0, 0, 0, NULL, 11),
(55, 6, 'image', 'image', 'Page Image', 0, 1, 1, 1, 1, 1, NULL, 12),
(56, 21, 'id', 'number', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(57, 21, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '{}', 2),
(58, 21, 'description', 'rich_text_box', 'Descrição', 1, 0, 1, 1, 1, 1, '{}', 3),
(59, 21, 'image', 'image', 'Imagem', 0, 1, 1, 1, 1, 1, '{}', 4),
(60, 21, 'serial_number', 'text', 'Patrimônio', 0, 1, 1, 1, 1, 1, '{}', 5),
(61, 21, 'status', 'select_dropdown', 'Status', 1, 1, 1, 0, 0, 0, '{\"default\":\"0\",\"options\":{\"0\":\"Dispon\\u00edvel\",\"1\":\"Solicitado\",\"2\":\"Reservado\",\"3\":\"Emprestado\",\"4\":\"Devolvido\"}}', 6),
(62, 21, 'created_at', 'timestamp', 'Created At', 0, 0, 1, 0, 0, 0, '{}', 7),
(63, 21, 'updated_at', 'timestamp', 'Updated At', 0, 0, 1, 0, 0, 0, '{}', 8),
(64, 21, 'deleted_at', 'timestamp', 'Deleted At', 0, 0, 1, 0, 0, 0, '{}', 9),
(65, 17, 'id', 'number', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(66, 17, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '{}', 2),
(67, 17, 'academic_record', 'text', 'Academic Record', 1, 1, 1, 1, 1, 1, '{}', 3),
(68, 17, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 4),
(69, 17, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 5),
(70, 17, 'deleted_at', 'timestamp', 'Deleted At', 0, 1, 1, 0, 0, 1, '{}', 6),
(71, 22, 'id', 'number', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(72, 22, 'justification', 'rich_text_box', 'Justificativa', 0, 0, 1, 0, 0, 0, '{}', 2),
(73, 22, 'reply', 'rich_text_box', 'Resposta', 0, 0, 1, 1, 1, 1, '{}', 3),
(74, 22, 'status', 'select_dropdown', 'Status', 0, 1, 1, 1, 1, 1, '{\"default\":\"1\",\"options\":{\"1\":\"Solicitado\",\"2\":\"Aprovado\",\"3\":\"Rejeitado\",\"4\":\"Empr\\u00e9stimo realizado\",\"5\":\"Devolu\\u00e7\\u00e3o realizada\"}}', 4),
(75, 22, 'material_id', 'number', 'Material Id', 1, 1, 1, 0, 0, 0, '{}', 5),
(76, 22, 'user_id', 'number', 'User Id', 1, 1, 1, 0, 0, 0, '{}', 6),
(77, 22, 'created_at', 'timestamp', 'Data da solicitação', 0, 1, 1, 0, 0, 0, '{}', 7),
(78, 22, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 8),
(79, 22, 'deleted_at', 'timestamp', 'Deleted At', 0, 0, 1, 0, 0, 0, '{}', 9),
(80, 22, 'order_belongsto_material_relationship', 'relationship', 'materials', 0, 1, 1, 0, 0, 0, '{\"model\":\"App\\\\Models\\\\Material\",\"table\":\"materials\",\"type\":\"belongsTo\",\"column\":\"material_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"categories\",\"pivot\":\"0\",\"taggable\":\"0\"}', 10),
(81, 22, 'order_belongsto_user_relationship', 'relationship', 'Usuário', 0, 1, 1, 0, 0, 0, '{\"model\":\"App\\\\Models\\\\User\",\"table\":\"users\",\"type\":\"belongsTo\",\"column\":\"user_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"categories\",\"pivot\":\"0\",\"taggable\":\"0\"}', 11),
(82, 17, 'student_belongsto_user_relationship', 'relationship', 'users', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\User\",\"table\":\"users\",\"type\":\"belongsTo\",\"column\":\"user_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"categories\",\"pivot\":\"0\",\"taggable\":\"0\"}', 7),
(83, 17, 'user_id', 'text', 'User Id', 1, 1, 1, 1, 1, 1, '{}', 7),
(89, 27, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 0),
(92, 27, 'withdrawal_at', 'date', 'Data de retirada', 0, 1, 1, 1, 1, 1, '{}', 5),
(93, 27, 'returned_at', 'date', 'Data de devolução', 0, 1, 1, 1, 1, 1, '{}', 8),
(94, 27, 'employee_loan', 'text', 'Quem emprestou', 0, 0, 0, 0, 0, 0, '{}', 6),
(95, 27, 'employee_returned', 'text', 'Quem recebeu', 0, 0, 0, 0, 0, 0, '{}', 7),
(96, 27, 'obs', 'text', 'Observações', 0, 0, 1, 1, 1, 1, '{}', 9),
(97, 27, 'created_at', 'timestamp', 'Created At', 0, 0, 1, 0, 0, 0, '{}', 10),
(98, 27, 'updated_at', 'timestamp', 'Updated At', 0, 0, 1, 0, 0, 0, '{}', 11),
(99, 27, 'deleted_at', 'timestamp', 'Deleted At', 0, 0, 1, 0, 0, 0, '{}', 12),
(101, 27, 'loan_belongsto_order_relationship', 'relationship', 'Nº da solicitação', 0, 1, 1, 0, 0, 0, '{\"model\":\"App\\\\Models\\\\Order\",\"table\":\"orders\",\"type\":\"belongsTo\",\"column\":\"order_id\",\"key\":\"id\",\"label\":\"id\",\"pivot_table\":\"categories\",\"pivot\":\"0\",\"taggable\":\"0\"}', 14),
(102, 27, 'order_id', 'text', 'Order Id', 1, 0, 0, 0, 0, 0, '{}', 13),
(103, 27, 'loan_belongsto_user_relationship', 'relationship', 'Quem emprestou', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\User\",\"table\":\"users\",\"type\":\"belongsTo\",\"column\":\"employee_loan\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"categories\",\"pivot\":\"0\",\"taggable\":\"0\"}', 4),
(104, 27, 'description', 'text', 'Descrição', 0, 1, 1, 0, 0, 0, '{}', 3),
(105, 27, 'loan_belongsto_user_relationship_1', 'relationship', 'Quem recebeu', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\User\",\"table\":\"users\",\"type\":\"belongsTo\",\"column\":\"employee_returned\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"categories\",\"pivot\":\"0\",\"taggable\":\"0\"}', 15);

-- --------------------------------------------------------

--
-- Estrutura da tabela `data_types`
--

CREATE TABLE `data_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_singular` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_plural` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `policy_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `generate_permissions` tinyint(1) NOT NULL DEFAULT 0,
  `server_side` tinyint(4) NOT NULL DEFAULT 0,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `data_types`
--

INSERT INTO `data_types` (`id`, `name`, `slug`, `display_name_singular`, `display_name_plural`, `icon`, `model_name`, `policy_name`, `controller`, `description`, `generate_permissions`, `server_side`, `details`, `created_at`, `updated_at`) VALUES
(1, 'users', 'users', 'User', 'Users', 'voyager-person', 'TCG\\Voyager\\Models\\User', 'TCG\\Voyager\\Policies\\UserPolicy', 'TCG\\Voyager\\Http\\Controllers\\VoyagerUserController', '', 1, 0, NULL, '2021-12-07 23:32:00', '2021-12-07 23:32:00'),
(2, 'menus', 'menus', 'Menu', 'Menus', 'voyager-list', 'TCG\\Voyager\\Models\\Menu', NULL, '', '', 1, 0, NULL, '2021-12-07 23:32:00', '2021-12-07 23:32:00'),
(3, 'roles', 'roles', 'Role', 'Roles', 'voyager-lock', 'TCG\\Voyager\\Models\\Role', NULL, 'TCG\\Voyager\\Http\\Controllers\\VoyagerRoleController', '', 1, 0, NULL, '2021-12-07 23:32:00', '2021-12-07 23:32:00'),
(4, 'categories', 'categories', 'Category', 'Categories', 'voyager-categories', 'TCG\\Voyager\\Models\\Category', NULL, '', '', 1, 0, NULL, '2021-12-07 23:32:01', '2021-12-07 23:32:01'),
(5, 'posts', 'posts', 'Post', 'Posts', 'voyager-news', 'TCG\\Voyager\\Models\\Post', 'TCG\\Voyager\\Policies\\PostPolicy', '', '', 1, 0, NULL, '2021-12-07 23:32:01', '2021-12-07 23:32:01'),
(6, 'pages', 'pages', 'Page', 'Pages', 'voyager-file-text', 'TCG\\Voyager\\Models\\Page', NULL, '', '', 1, 0, NULL, '2021-12-07 23:32:01', '2021-12-07 23:32:01'),
(17, 'students', 'students', 'Estudante', 'Estudantes', 'voyager-study', 'App\\Models\\Student', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2021-08-26 07:51:30', '2021-12-26 13:32:38'),
(21, 'materials', 'materials', 'Material', 'Materiais', 'voyager-laptop', 'App\\Models\\Material', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2021-09-14 06:32:56', '2022-02-08 00:29:35'),
(22, 'orders', 'orders', 'Solicitação', 'Solicitações', 'voyager-refresh', 'App\\Models\\Order', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2021-12-18 23:53:08', '2022-02-07 23:49:29'),
(27, 'loans', 'loans', 'Empréstimo', 'Empréstimos', 'voyager-book', 'App\\Models\\Loan', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2022-01-07 19:55:27', '2022-02-08 00:34:12');

-- --------------------------------------------------------

--
-- Estrutura da tabela `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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

-- --------------------------------------------------------

--
-- Estrutura da tabela `materials`
--

CREATE TABLE `materials` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `serial_number` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `materials`
--

INSERT INTO `materials` (`id`, `name`, `description`, `status`, `serial_number`, `image`, `created_at`, `updated_at`, `deleted_at`) VALUES
(4, 'Computador Dell Optiplex 5080 Sff Core I5-10500 8gb', '<p><strong style=\"margin: 0px; padding: 0px; border: 0px; font-family: \'PT Sans\', sans-serif; vertical-align: baseline; box-sizing: border-box; list-style: none; color: #333333;\">Especifica&ccedil;&otilde;es:</strong><br style=\"margin: 0px; padding: 0px; border: 0px; font-family: \'PT Sans\', sans-serif; vertical-align: baseline; box-sizing: border-box; list-style: none; color: #333333;\" /><strong style=\"margin: 0px; padding: 0px; border: 0px; font-family: \'PT Sans\', sans-serif; vertical-align: baseline; box-sizing: border-box; list-style: none; color: #333333;\">Marca:</strong><span style=\"color: #333333; font-family: \'PT Sans\', sans-serif;\">&nbsp;Dell</span><br style=\"margin: 0px; padding: 0px; border: 0px; font-family: \'PT Sans\', sans-serif; vertical-align: baseline; box-sizing: border-box; list-style: none; color: #333333;\" /><strong style=\"margin: 0px; padding: 0px; border: 0px; font-family: \'PT Sans\', sans-serif; vertical-align: baseline; box-sizing: border-box; list-style: none; color: #333333;\">Modelo:</strong><span style=\"color: #333333; font-family: \'PT Sans\', sans-serif;\">&nbsp;Optiplex 5080</span><br style=\"margin: 0px; padding: 0px; border: 0px; font-family: \'PT Sans\', sans-serif; vertical-align: baseline; box-sizing: border-box; list-style: none; color: #333333;\" /><strong style=\"margin: 0px; padding: 0px; border: 0px; font-family: \'PT Sans\', sans-serif; vertical-align: baseline; box-sizing: border-box; list-style: none; color: #333333;\">Processador:</strong><span style=\"color: #333333; font-family: \'PT Sans\', sans-serif;\">&nbsp;Intel Core i5&nbsp;10500</span><br style=\"margin: 0px; padding: 0px; border: 0px; font-family: \'PT Sans\', sans-serif; vertical-align: baseline; box-sizing: border-box; list-style: none; color: #333333;\" /><strong style=\"margin: 0px; padding: 0px; border: 0px; font-family: \'PT Sans\', sans-serif; vertical-align: baseline; box-sizing: border-box; list-style: none; color: #333333;\">Mem&oacute;ria:</strong><span style=\"color: #333333; font-family: \'PT Sans\', sans-serif;\">&nbsp;8GB (2x4GB), DDR4, 2666MHz</span><br style=\"margin: 0px; padding: 0px; border: 0px; font-family: \'PT Sans\', sans-serif; vertical-align: baseline; box-sizing: border-box; list-style: none; color: #333333;\" /><strong style=\"margin: 0px; padding: 0px; border: 0px; font-family: \'PT Sans\', sans-serif; vertical-align: baseline; box-sizing: border-box; list-style: none; color: #333333;\">Armazenamento:&nbsp;</strong><span style=\"color: #333333; font-family: \'PT Sans\', sans-serif;\">HD de 1TB (7200 RPM) SATA 2.5</span><br style=\"margin: 0px; padding: 0px; border: 0px; font-family: \'PT Sans\', sans-serif; vertical-align: baseline; box-sizing: border-box; list-style: none; color: #333333;\" /><strong style=\"margin: 0px; padding: 0px; border: 0px; font-family: \'PT Sans\', sans-serif; vertical-align: baseline; box-sizing: border-box; list-style: none; color: #333333;\">Sistema Operacional:</strong><span style=\"color: #333333; font-family: \'PT Sans\', sans-serif;\">&nbsp;Windows 10 Pro</span><br style=\"margin: 0px; padding: 0px; border: 0px; font-family: \'PT Sans\', sans-serif; vertical-align: baseline; box-sizing: border-box; list-style: none; color: #333333;\" /><strong style=\"margin: 0px; padding: 0px; border: 0px; font-family: \'PT Sans\', sans-serif; vertical-align: baseline; box-sizing: border-box; list-style: none; color: #333333;\">Placa de V&iacute;deo:</strong><span style=\"color: #333333; font-family: \'PT Sans\', sans-serif;\">&nbsp;Geforce GT730</span><br style=\"margin: 0px; padding: 0px; border: 0px; font-family: \'PT Sans\', sans-serif; vertical-align: baseline; box-sizing: border-box; list-style: none; color: #333333;\" /><strong style=\"margin: 0px; padding: 0px; border: 0px; font-family: \'PT Sans\', sans-serif; vertical-align: baseline; box-sizing: border-box; list-style: none; color: #333333;\">Portas e slots:&nbsp;Frontal:&nbsp;</strong><span style=\"color: #333333; font-family: \'PT Sans\', sans-serif;\">&nbsp;1. Bot&atilde;o liga/desliga| 2. Unidade &oacute;ptica| 3. Slot de cart&atilde;o SD 4.0| 4. Tomada de &aacute;udio universal|&nbsp;5. 2 portas USB 2.0| 6. 1 porta USB 3.2 Type-A de 1&ordf; gera&ccedil;&atilde;o| 7. 1 porta USB 3.2 de 2&ordf; gera&ccedil;&atilde;o Type-C|&nbsp;</span><strong style=\"margin: 0px; padding: 0px; border: 0px; font-family: \'PT Sans\', sans-serif; vertical-align: baseline; box-sizing: border-box; list-style: none; color: #333333;\">Traseiro:</strong><span style=\"color: #333333; font-family: \'PT Sans\', sans-serif;\">&nbsp;8. Sa&iacute;da de linha| 9. 2 portas de v&iacute;deo| 10. 4 portas USB 3.2 Type-A de 1&ordf; gera&ccedil;&atilde;o| 11. 2 portas USB 2.0 (1 com Smart Power On)| 12. 1 porta RJ-45| 13. 1 porta serial e 1 PS2 opcionais| 14. Slots knock-out para antenas sem fio| 15. Slot PCIe x16| 16. Slot PCIe x4 (aberto)| 17. Conex&atilde;o de energia| 18. Luz indicadora de energia</span><br style=\"margin: 0px; padding: 0px; border: 0px; font-family: \'PT Sans\', sans-serif; vertical-align: baseline; box-sizing: border-box; list-style: none; color: #333333;\" /><strong style=\"margin: 0px; padding: 0px; border: 0px; font-family: \'PT Sans\', sans-serif; vertical-align: baseline; box-sizing: border-box; list-style: none; color: #333333;\">Dimens&otilde;es do produto:</strong><span style=\"color: #333333; font-family: \'PT Sans\', sans-serif;\"> &nbsp;Largura: 9,3 cm | Profundidade: 29&nbsp;cm | Altura: 29,3 cm | Peso: 5,25&nbsp;kg</span></p>', 0, '11001', 'materials\\February2022\\9i7vBcLfPymdXab4Chqh.png', '2022-02-08 00:06:22', '2022-02-08 00:43:54', NULL),
(5, 'Placa Uno R3 + Cabo USB para Arduino', '<p><span style=\"color: #7d7d7d; font-family: Inter, \'Open Sans\', HelveticaNeue-Light, \'Helvetica Neue Light\', \'Helvetica Neue\', Helvetica, Arial, \'Lucida Grande\', sans-serif; letter-spacing: -0.14px;\">O Arduino Uno R3 &eacute; a placa Arduino mais vendida e usada atualmente. Costuma ser a primeira op&ccedil;&atilde;o de muitos, pois apresenta uma &oacute;tima quantidade de portas dispon&iacute;veis e grande compatibilidade com os Shields Arduino.</span></p>', 0, '1100110', 'materials\\February2022\\4mTnSfzmdfONGj5OOVQU.jpeg', '2022-02-08 00:37:22', '2022-02-08 00:45:34', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `menus`
--

CREATE TABLE `menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `menus`
--

INSERT INTO `menus` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', '2021-12-07 23:32:00', '2021-12-07 23:32:00');

-- --------------------------------------------------------

--
-- Estrutura da tabela `menu_items`
--

CREATE TABLE `menu_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `menu_id` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `icon_class` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `route` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `menu_items`
--

INSERT INTO `menu_items` (`id`, `menu_id`, `title`, `url`, `target`, `icon_class`, `color`, `parent_id`, `order`, `created_at`, `updated_at`, `route`, `parameters`) VALUES
(1, 1, 'Dashboard', '', '_self', 'voyager-boat', NULL, NULL, 1, '2021-12-07 23:32:00', '2021-12-07 23:32:00', 'voyager.dashboard', NULL),
(2, 1, 'Media', '', '_self', 'voyager-images', NULL, NULL, 4, '2021-12-07 23:32:00', '2021-12-26 12:50:34', 'voyager.media.index', NULL),
(3, 1, 'Users', '', '_self', 'voyager-person', NULL, NULL, 3, '2021-12-07 23:32:01', '2021-12-07 23:32:01', 'voyager.users.index', NULL),
(4, 1, 'Roles', '', '_self', 'voyager-lock', NULL, NULL, 2, '2021-12-07 23:32:01', '2021-12-07 23:32:01', 'voyager.roles.index', NULL),
(5, 1, 'Tools', '', '_self', 'voyager-tools', NULL, NULL, 8, '2021-12-07 23:32:01', '2021-12-26 12:50:34', NULL, NULL),
(6, 1, 'Menu Builder', '', '_self', 'voyager-list', NULL, 5, 1, '2021-12-07 23:32:01', '2021-12-26 12:50:34', 'voyager.menus.index', NULL),
(7, 1, 'Database', '', '_self', 'voyager-data', NULL, 5, 2, '2021-12-07 23:32:01', '2021-12-26 12:50:34', 'voyager.database.index', NULL),
(8, 1, 'Compass', '', '_self', 'voyager-compass', NULL, 5, 3, '2021-12-07 23:32:01', '2021-12-26 12:50:34', 'voyager.compass.index', NULL),
(9, 1, 'BREAD', '', '_self', 'voyager-bread', NULL, 5, 4, '2021-12-07 23:32:01', '2021-12-26 12:50:34', 'voyager.bread.index', NULL),
(10, 1, 'Settings', '', '_self', 'voyager-settings', NULL, NULL, 9, '2021-12-07 23:32:01', '2021-12-26 12:50:34', 'voyager.settings.index', NULL),
(11, 1, 'Categories', '', '_self', 'voyager-categories', NULL, NULL, 7, '2021-12-07 23:32:01', '2021-12-26 12:50:34', 'voyager.categories.index', NULL),
(12, 1, 'Posts', '', '_self', 'voyager-news', NULL, NULL, 5, '2021-12-07 23:32:01', '2021-12-26 12:50:34', 'voyager.posts.index', NULL),
(13, 1, 'Pages', '', '_self', 'voyager-file-text', NULL, NULL, 6, '2021-12-07 23:32:01', '2021-12-26 12:50:34', 'voyager.pages.index', NULL),
(14, 1, 'Materiais', '', '_self', 'voyager-laptop', '#000000', NULL, 10, '2021-12-07 23:32:01', '2021-12-26 13:33:35', 'voyager.materials.index', 'null'),
(15, 1, 'Estudantes', '', '_self', 'voyager-study', '#000000', NULL, 11, '2021-12-07 23:32:01', '2021-12-26 13:32:03', 'voyager.students.index', 'null'),
(17, 1, 'Solicitações', '', '_self', 'voyager-refresh', '#000000', NULL, 12, '2021-12-18 23:53:10', '2021-12-26 13:31:40', 'voyager.orders.index', 'null'),
(19, 1, 'Empréstimos', '', '_self', 'voyager-book', '#000000', NULL, 13, '2022-01-07 19:55:27', '2022-01-12 00:29:23', 'voyager.loans.index', 'null');

-- --------------------------------------------------------

--
-- Estrutura da tabela `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(4, '2016_01_01_000000_add_voyager_user_fields', 1),
(5, '2016_01_01_000000_create_data_types_table', 1),
(6, '2016_01_01_000000_create_pages_table', 1),
(7, '2016_01_01_000000_create_posts_table', 1),
(8, '2016_02_15_204651_create_categories_table', 1),
(9, '2016_05_19_173453_create_menu_table', 1),
(10, '2016_10_21_190000_create_roles_table', 1),
(11, '2016_10_21_190000_create_settings_table', 1),
(12, '2016_11_30_135954_create_permission_table', 1),
(13, '2016_11_30_141208_create_permission_role_table', 1),
(14, '2016_12_26_201236_data_types__add__server_side', 1),
(15, '2017_01_13_000000_add_route_to_menu_items_table', 1),
(16, '2017_01_14_005015_create_translations_table', 1),
(17, '2017_01_15_000000_make_table_name_nullable_in_permissions_table', 1),
(18, '2017_03_06_000000_add_controller_to_data_types_table', 1),
(19, '2017_04_11_000000_alter_post_nullable_fields_table', 1),
(20, '2017_04_21_000000_add_order_to_data_rows_table', 1),
(21, '2017_07_05_210000_add_policyname_to_data_types_table', 1),
(22, '2017_08_05_000000_add_group_to_settings_table', 1),
(23, '2017_11_26_013050_add_user_role_relationship', 1),
(24, '2017_11_26_015000_create_user_roles_table', 1),
(25, '2018_03_11_000000_add_user_settings', 1),
(26, '2018_03_14_000000_add_details_to_data_types_table', 1),
(27, '2018_03_16_000000_make_settings_value_nullable', 1),
(28, '2019_08_19_000000_create_failed_jobs_table', 1),
(29, '2021_08_26_034002_create_materials_table', 1),
(30, '2021_08_26_035254_create_students_table', 1),
(31, '2021_09_14_024621_create_orders_table', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `orders`
--

CREATE TABLE `orders` (
  `id` int(10) UNSIGNED NOT NULL,
  `justification` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reply` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) DEFAULT 0,
  `material_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `pages`
--

CREATE TABLE `pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `author_id` int(11) NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('ACTIVE','INACTIVE') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'INACTIVE',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `pages`
--

INSERT INTO `pages` (`id`, `author_id`, `title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `created_at`, `updated_at`) VALUES
(1, 0, 'Hello World', 'Hang the jib grog grog blossom grapple dance the hempen jig gangway pressgang bilge rat to go on account lugger. Nelsons folly gabion line draught scallywag fire ship gaff fluke fathom case shot. Sea Legs bilge rat sloop matey gabion long clothes run a shot across the bow Gold Road cog league.', '<p>Hello World. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\r\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>', 'pages/page1.jpg', 'hello-world', 'Yar Meta Description', 'Keyword1, Keyword2', 'ACTIVE', '2021-12-07 23:32:01', '2021-12-07 23:32:01');

-- --------------------------------------------------------

--
-- Estrutura da tabela `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `permissions`
--

INSERT INTO `permissions` (`id`, `key`, `table_name`, `created_at`, `updated_at`) VALUES
(1, 'browse_admin', NULL, '2021-12-07 23:32:01', '2021-12-07 23:32:01'),
(2, 'browse_bread', NULL, '2021-12-07 23:32:01', '2021-12-07 23:32:01'),
(3, 'browse_database', NULL, '2021-12-07 23:32:01', '2021-12-07 23:32:01'),
(4, 'browse_media', NULL, '2021-12-07 23:32:01', '2021-12-07 23:32:01'),
(5, 'browse_compass', NULL, '2021-12-07 23:32:01', '2021-12-07 23:32:01'),
(6, 'browse_menus', 'menus', '2021-12-07 23:32:01', '2021-12-07 23:32:01'),
(7, 'read_menus', 'menus', '2021-12-07 23:32:01', '2021-12-07 23:32:01'),
(8, 'edit_menus', 'menus', '2021-12-07 23:32:01', '2021-12-07 23:32:01'),
(9, 'add_menus', 'menus', '2021-12-07 23:32:01', '2021-12-07 23:32:01'),
(10, 'delete_menus', 'menus', '2021-12-07 23:32:01', '2021-12-07 23:32:01'),
(11, 'browse_roles', 'roles', '2021-12-07 23:32:01', '2021-12-07 23:32:01'),
(12, 'read_roles', 'roles', '2021-12-07 23:32:01', '2021-12-07 23:32:01'),
(13, 'edit_roles', 'roles', '2021-12-07 23:32:01', '2021-12-07 23:32:01'),
(14, 'add_roles', 'roles', '2021-12-07 23:32:01', '2021-12-07 23:32:01'),
(15, 'delete_roles', 'roles', '2021-12-07 23:32:01', '2021-12-07 23:32:01'),
(16, 'browse_users', 'users', '2021-12-07 23:32:01', '2021-12-07 23:32:01'),
(17, 'read_users', 'users', '2021-12-07 23:32:01', '2021-12-07 23:32:01'),
(18, 'edit_users', 'users', '2021-12-07 23:32:01', '2021-12-07 23:32:01'),
(19, 'add_users', 'users', '2021-12-07 23:32:01', '2021-12-07 23:32:01'),
(20, 'delete_users', 'users', '2021-12-07 23:32:01', '2021-12-07 23:32:01'),
(21, 'browse_settings', 'settings', '2021-12-07 23:32:01', '2021-12-07 23:32:01'),
(22, 'read_settings', 'settings', '2021-12-07 23:32:01', '2021-12-07 23:32:01'),
(23, 'edit_settings', 'settings', '2021-12-07 23:32:01', '2021-12-07 23:32:01'),
(24, 'add_settings', 'settings', '2021-12-07 23:32:01', '2021-12-07 23:32:01'),
(25, 'delete_settings', 'settings', '2021-12-07 23:32:01', '2021-12-07 23:32:01'),
(26, 'browse_categories', 'categories', '2021-12-07 23:32:01', '2021-12-07 23:32:01'),
(27, 'read_categories', 'categories', '2021-12-07 23:32:01', '2021-12-07 23:32:01'),
(28, 'edit_categories', 'categories', '2021-12-07 23:32:01', '2021-12-07 23:32:01'),
(29, 'add_categories', 'categories', '2021-12-07 23:32:01', '2021-12-07 23:32:01'),
(30, 'delete_categories', 'categories', '2021-12-07 23:32:01', '2021-12-07 23:32:01'),
(31, 'browse_posts', 'posts', '2021-12-07 23:32:01', '2021-12-07 23:32:01'),
(32, 'read_posts', 'posts', '2021-12-07 23:32:01', '2021-12-07 23:32:01'),
(33, 'edit_posts', 'posts', '2021-12-07 23:32:01', '2021-12-07 23:32:01'),
(34, 'add_posts', 'posts', '2021-12-07 23:32:01', '2021-12-07 23:32:01'),
(35, 'delete_posts', 'posts', '2021-12-07 23:32:01', '2021-12-07 23:32:01'),
(36, 'browse_pages', 'pages', '2021-12-07 23:32:01', '2021-12-07 23:32:01'),
(37, 'read_pages', 'pages', '2021-12-07 23:32:01', '2021-12-07 23:32:01'),
(38, 'edit_pages', 'pages', '2021-12-07 23:32:01', '2021-12-07 23:32:01'),
(39, 'add_pages', 'pages', '2021-12-07 23:32:01', '2021-12-07 23:32:01'),
(40, 'delete_pages', 'pages', '2021-12-07 23:32:01', '2021-12-07 23:32:01'),
(41, 'browse_materials', 'materials', '2021-12-07 23:32:01', '2021-12-07 23:32:01'),
(42, 'read_materials', 'materials', '2021-12-07 23:32:01', '2021-12-07 23:32:01'),
(43, 'edit_materials', 'materials', '2021-12-07 23:32:01', '2021-12-07 23:32:01'),
(44, 'add_materials', 'materials', '2021-12-07 23:32:01', '2021-12-07 23:32:01'),
(45, 'delete_materials', 'materials', '2021-12-07 23:32:01', '2021-12-07 23:32:01'),
(46, 'browse_students', 'students', '2021-12-07 23:32:01', '2021-12-07 23:32:01'),
(47, 'read_students', 'students', '2021-12-07 23:32:01', '2021-12-07 23:32:01'),
(48, 'edit_students', 'students', '2021-12-07 23:32:01', '2021-12-07 23:32:01'),
(49, 'add_students', 'students', '2021-12-07 23:32:01', '2021-12-07 23:32:01'),
(50, 'delete_students', 'students', '2021-12-07 23:32:01', '2021-12-07 23:32:01'),
(51, 'browse_orders', 'orders', '2021-12-18 23:53:08', '2021-12-18 23:53:08'),
(52, 'read_orders', 'orders', '2021-12-18 23:53:08', '2021-12-18 23:53:08'),
(53, 'edit_orders', 'orders', '2021-12-18 23:53:08', '2021-12-18 23:53:08'),
(54, 'add_orders', 'orders', '2021-12-18 23:53:08', '2021-12-18 23:53:08'),
(55, 'delete_orders', 'orders', '2021-12-18 23:53:08', '2021-12-18 23:53:08'),
(61, 'request_materials', 'materials', '2021-12-19 00:50:22', '2021-12-19 00:50:22'),
(62, 'request_orders', 'orders', '2021-12-19 00:54:07', '2021-12-19 00:54:07'),
(63, 'browse_loans', 'loans', '2022-01-07 19:55:27', '2022-01-07 19:55:27'),
(64, 'read_loans', 'loans', '2022-01-07 19:55:27', '2022-01-07 19:55:27'),
(65, 'edit_loans', 'loans', '2022-01-07 19:55:27', '2022-01-07 19:55:27'),
(66, 'add_loans', 'loans', '2022-01-07 19:55:27', '2022-01-07 19:55:27'),
(67, 'delete_loans', 'loans', '2022-01-07 19:55:27', '2022-01-07 19:55:27');

-- --------------------------------------------------------

--
-- Estrutura da tabela `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(1, 1),
(1, 2),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(27, 1),
(28, 1),
(29, 1),
(30, 1),
(31, 1),
(32, 1),
(33, 1),
(34, 1),
(35, 1),
(36, 1),
(37, 1),
(38, 1),
(39, 1),
(40, 1),
(41, 1),
(41, 2),
(42, 1),
(42, 2),
(43, 1),
(44, 1),
(45, 1),
(46, 1),
(47, 1),
(48, 1),
(49, 1),
(50, 1),
(51, 1),
(52, 1),
(53, 1),
(54, 1),
(55, 1),
(61, 2),
(62, 2),
(63, 1),
(63, 2),
(64, 1),
(64, 2),
(65, 1),
(66, 1),
(67, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `author_id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `seo_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('PUBLISHED','DRAFT','PENDING') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'DRAFT',
  `featured` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `posts`
--

INSERT INTO `posts` (`id`, `author_id`, `category_id`, `title`, `seo_title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `featured`, `created_at`, `updated_at`) VALUES
(1, 0, NULL, 'Lorem Ipsum Post', NULL, 'This is the excerpt for the Lorem Ipsum Post', '<p>This is the body of the lorem ipsum post</p>', 'posts/post1.jpg', 'lorem-ipsum-post', 'This is the meta description', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2021-12-07 23:32:01', '2021-12-07 23:32:01'),
(2, 0, NULL, 'My Sample Post', NULL, 'This is the excerpt for the sample Post', '<p>This is the body for the sample post, which includes the body.</p>\r\n                <h2>We can use all kinds of format!</h2>\r\n                <p>And include a bunch of other stuff.</p>', 'posts/post2.jpg', 'my-sample-post', 'Meta Description for sample post', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2021-12-07 23:32:01', '2021-12-07 23:32:01'),
(3, 0, NULL, 'Latest Post', NULL, 'This is the excerpt for the latest post', '<p>This is the body for the latest post</p>', 'posts/post3.jpg', 'latest-post', 'This is the meta description', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2021-12-07 23:32:01', '2021-12-07 23:32:01'),
(4, 0, NULL, 'Yarr Post', NULL, 'Reef sails nipperkin bring a spring upon her cable coffer jury mast spike marooned Pieces of Eight poop deck pillage. Clipper driver coxswain galleon hempen halter come about pressgang gangplank boatswain swing the lead. Nipperkin yard skysail swab lanyard Blimey bilge water ho quarter Buccaneer.', '<p>Swab deadlights Buccaneer fire ship square-rigged dance the hempen jig weigh anchor cackle fruit grog furl. Crack Jennys tea cup chase guns pressgang hearties spirits hogshead Gold Road six pounders fathom measured fer yer chains. Main sheet provost come about trysail barkadeer crimp scuttle mizzenmast brig plunder.</p>\r\n<p>Mizzen league keelhaul galleon tender cog chase Barbary Coast doubloon crack Jennys tea cup. Blow the man down lugsail fire ship pinnace cackle fruit line warp Admiral of the Black strike colors doubloon. Tackle Jack Ketch come about crimp rum draft scuppers run a shot across the bow haul wind maroon.</p>\r\n<p>Interloper heave down list driver pressgang holystone scuppers tackle scallywag bilged on her anchor. Jack Tar interloper draught grapple mizzenmast hulk knave cable transom hogshead. Gaff pillage to go on account grog aft chase guns piracy yardarm knave clap of thunder.</p>', 'posts/post4.jpg', 'yarr-post', 'this be a meta descript', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2021-12-07 23:32:01', '2021-12-07 23:32:01');

-- --------------------------------------------------------

--
-- Estrutura da tabela `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Administrator', '2021-12-07 23:32:01', '2021-12-07 23:32:01'),
(2, 'user', 'Estudante', '2021-12-07 23:32:01', '2022-02-07 23:47:16'),
(3, 'manager', 'Gestor', '2021-12-31 00:28:24', '2022-02-07 23:47:05');

-- --------------------------------------------------------

--
-- Estrutura da tabela `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT 1,
  `group` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `settings`
--

INSERT INTO `settings` (`id`, `key`, `display_name`, `value`, `details`, `type`, `order`, `group`) VALUES
(1, 'site.title', 'Site Title', 'Site Title', '', 'text', 1, 'Site'),
(2, 'site.description', 'Site Description', 'Site Description', '', 'text', 2, 'Site'),
(3, 'site.logo', 'Site Logo', '', '', 'image', 3, 'Site'),
(4, 'site.google_analytics_tracking_id', 'Google Analytics Tracking ID', '', '', 'text', 4, 'Site'),
(5, 'admin.bg_image', 'Admin Background Image', '', '', 'image', 5, 'Admin'),
(6, 'admin.title', 'Admin Title', 'Voyager', '', 'text', 1, 'Admin'),
(7, 'admin.description', 'Admin Description', 'Welcome to Voyager. The Missing Admin for Laravel', '', 'text', 2, 'Admin'),
(8, 'admin.loader', 'Admin Loader', '', '', 'image', 3, 'Admin'),
(9, 'admin.icon_image', 'Admin Icon Image', '', '', 'image', 4, 'Admin'),
(10, 'admin.google_analytics_client_id', 'Google Analytics Client ID (used for admin dashboard)', '', '', 'text', 1, 'Admin');

-- --------------------------------------------------------

--
-- Estrutura da tabela `students`
--

CREATE TABLE `students` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `academic_record` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `students`
--

INSERT INTO `students` (`id`, `name`, `academic_record`, `created_at`, `updated_at`, `deleted_at`, `user_id`) VALUES
(1, 'juca', '9123', '2022-01-07 19:46:50', '2022-01-07 19:46:50', NULL, 2);

-- --------------------------------------------------------

--
-- Estrutura da tabela `translations`
--

CREATE TABLE `translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `table_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `column_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foreign_key` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `translations`
--

INSERT INTO `translations` (`id`, `table_name`, `column_name`, `foreign_key`, `locale`, `value`, `created_at`, `updated_at`) VALUES
(1, 'data_types', 'display_name_singular', 5, 'pt', 'Post', '2021-12-07 23:32:01', '2021-12-07 23:32:01'),
(2, 'data_types', 'display_name_singular', 6, 'pt', 'Página', '2021-12-07 23:32:01', '2021-12-07 23:32:01'),
(3, 'data_types', 'display_name_singular', 1, 'pt', 'Utilizador', '2021-12-07 23:32:01', '2021-12-07 23:32:01'),
(4, 'data_types', 'display_name_singular', 4, 'pt', 'Categoria', '2021-12-07 23:32:01', '2021-12-07 23:32:01'),
(5, 'data_types', 'display_name_singular', 2, 'pt', 'Menu', '2021-12-07 23:32:01', '2021-12-07 23:32:01'),
(6, 'data_types', 'display_name_singular', 3, 'pt', 'Função', '2021-12-07 23:32:01', '2021-12-07 23:32:01'),
(7, 'data_types', 'display_name_plural', 5, 'pt', 'Posts', '2021-12-07 23:32:01', '2021-12-07 23:32:01'),
(8, 'data_types', 'display_name_plural', 6, 'pt', 'Páginas', '2021-12-07 23:32:01', '2021-12-07 23:32:01'),
(9, 'data_types', 'display_name_plural', 1, 'pt', 'Utilizadores', '2021-12-07 23:32:01', '2021-12-07 23:32:01'),
(10, 'data_types', 'display_name_plural', 4, 'pt', 'Categorias', '2021-12-07 23:32:01', '2021-12-07 23:32:01'),
(11, 'data_types', 'display_name_plural', 2, 'pt', 'Menus', '2021-12-07 23:32:01', '2021-12-07 23:32:01'),
(12, 'data_types', 'display_name_plural', 3, 'pt', 'Funções', '2021-12-07 23:32:01', '2021-12-07 23:32:01'),
(13, 'categories', 'slug', 1, 'pt', 'categoria-1', '2021-12-07 23:32:01', '2021-12-07 23:32:01'),
(14, 'categories', 'name', 1, 'pt', 'Categoria 1', '2021-12-07 23:32:01', '2021-12-07 23:32:01'),
(15, 'categories', 'slug', 2, 'pt', 'categoria-2', '2021-12-07 23:32:01', '2021-12-07 23:32:01'),
(16, 'categories', 'name', 2, 'pt', 'Categoria 2', '2021-12-07 23:32:01', '2021-12-07 23:32:01'),
(17, 'pages', 'title', 1, 'pt', 'Olá Mundo', '2021-12-07 23:32:01', '2021-12-07 23:32:01'),
(18, 'pages', 'slug', 1, 'pt', 'ola-mundo', '2021-12-07 23:32:01', '2021-12-07 23:32:01'),
(19, 'pages', 'body', 1, 'pt', '<p>Olá Mundo. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\r\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>', '2021-12-07 23:32:01', '2021-12-07 23:32:01'),
(20, 'menu_items', 'title', 1, 'pt', 'Painel de Controle', '2021-12-07 23:32:01', '2021-12-07 23:32:01'),
(21, 'menu_items', 'title', 2, 'pt', 'Media', '2021-12-07 23:32:01', '2021-12-07 23:32:01'),
(22, 'menu_items', 'title', 12, 'pt', 'Publicações', '2021-12-07 23:32:01', '2021-12-07 23:32:01'),
(23, 'menu_items', 'title', 3, 'pt', 'Utilizadores', '2021-12-07 23:32:01', '2021-12-07 23:32:01'),
(24, 'menu_items', 'title', 11, 'pt', 'Categorias', '2021-12-07 23:32:01', '2021-12-07 23:32:01'),
(25, 'menu_items', 'title', 13, 'pt', 'Páginas', '2021-12-07 23:32:01', '2021-12-07 23:32:01'),
(26, 'menu_items', 'title', 4, 'pt', 'Funções', '2021-12-07 23:32:01', '2021-12-07 23:32:01'),
(27, 'menu_items', 'title', 5, 'pt', 'Ferramentas', '2021-12-07 23:32:01', '2021-12-07 23:32:01'),
(28, 'menu_items', 'title', 6, 'pt', 'Menus', '2021-12-07 23:32:01', '2021-12-07 23:32:01'),
(29, 'menu_items', 'title', 7, 'pt', 'Base de dados', '2021-12-07 23:32:01', '2021-12-07 23:32:01'),
(30, 'menu_items', 'title', 10, 'pt', 'Configurações', '2021-12-07 23:32:01', '2021-12-07 23:32:01');

-- --------------------------------------------------------

--
-- Estrutura da tabela `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'users/default.png',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `settings` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `avatar`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `remember_token`, `settings`, `created_at`, `updated_at`) VALUES
(1, 1, 'Admin', 'admin@admin.com', 'users/default.png', NULL, '$2y$10$zDq4deUVaL4IhZEPM1K.T.i4f5ZSEBwG18X1ITVFzzwMVkltdxA/a', NULL, NULL, 'kACBc7j7hjUuqdpiKhNH4ighw68fR2XS6gW7qqLvxeqAMClqVEG5tu9m8tAX', '{\"locale\":\"pt\"}', '2021-12-07 23:32:01', '2021-12-07 23:32:01'),
(2, 2, 'userTest', 'user@user.com', 'users/default.png', NULL, '$2y$10$eM9maHo./vBBzihi7WdJHuvGtiPzCtFf7/2aAHBv5ik6W08OUvhaG', NULL, NULL, NULL, NULL, '2021-12-11 00:43:57', '2021-12-11 00:43:57');

-- --------------------------------------------------------

--
-- Estrutura da tabela `user_roles`
--

CREATE TABLE `user_roles` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`),
  ADD KEY `categories_parent_id_foreign` (`parent_id`);

--
-- Índices para tabela `data_rows`
--
ALTER TABLE `data_rows`
  ADD PRIMARY KEY (`id`),
  ADD KEY `data_rows_data_type_id_foreign` (`data_type_id`);

--
-- Índices para tabela `data_types`
--
ALTER TABLE `data_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `data_types_name_unique` (`name`),
  ADD UNIQUE KEY `data_types_slug_unique` (`slug`);

--
-- Índices para tabela `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Índices para tabela `loans`
--
ALTER TABLE `loans`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `materials`
--
ALTER TABLE `materials`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menus_name_unique` (`name`);

--
-- Índices para tabela `menu_items`
--
ALTER TABLE `menu_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_items_menu_id_foreign` (`menu_id`);

--
-- Índices para tabela `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pages_slug_unique` (`slug`);

--
-- Índices para tabela `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Índices para tabela `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permissions_key_index` (`key`);

--
-- Índices para tabela `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_permission_id_index` (`permission_id`),
  ADD KEY `permission_role_role_id_index` (`role_id`);

--
-- Índices para tabela `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`);

--
-- Índices para tabela `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Índices para tabela `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_key_unique` (`key`);

--
-- Índices para tabela `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `translations`
--
ALTER TABLE `translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `translations_table_name_column_name_foreign_key_locale_unique` (`table_name`,`column_name`,`foreign_key`,`locale`);

--
-- Índices para tabela `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_role_id_foreign` (`role_id`);

--
-- Índices para tabela `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `user_roles_user_id_index` (`user_id`),
  ADD KEY `user_roles_role_id_index` (`role_id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `data_rows`
--
ALTER TABLE `data_rows`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=107;

--
-- AUTO_INCREMENT de tabela `data_types`
--
ALTER TABLE `data_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT de tabela `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `loans`
--
ALTER TABLE `loans`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT de tabela `materials`
--
ALTER TABLE `materials`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `menu_items`
--
ALTER TABLE `menu_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT de tabela `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT de tabela `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT de tabela `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT de tabela `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `students`
--
ALTER TABLE `students`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `translations`
--
ALTER TABLE `translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT de tabela `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Limitadores para a tabela `data_rows`
--
ALTER TABLE `data_rows`
  ADD CONSTRAINT `data_rows_data_type_id_foreign` FOREIGN KEY (`data_type_id`) REFERENCES `data_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limitadores para a tabela `menu_items`
--
ALTER TABLE `menu_items`
  ADD CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE;

--
-- Limitadores para a tabela `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Limitadores para a tabela `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);

--
-- Limitadores para a tabela `user_roles`
--
ALTER TABLE `user_roles`
  ADD CONSTRAINT `user_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
