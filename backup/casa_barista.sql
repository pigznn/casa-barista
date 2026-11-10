-- phpMyAdmin SQL Dump
-- version 5.2.3
-- https://www.phpmyadmin.net/
--
-- Host: mysql:3306
-- Tempo de geração: 10/09/2026 às 18:55
-- Versão do servidor: 8.4.10
-- Versão do PHP: 8.3.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `casa_barista`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` bigint NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` bigint NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` smallint UNSIGNED NOT NULL,
  `reserved_at` int UNSIGNED DEFAULT NULL,
  `available_at` int UNSIGNED NOT NULL,
  `created_at` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_jobs` int NOT NULL,
  `pending_jobs` int NOT NULL,
  `failed_jobs` int NOT NULL,
  `failed_job_ids` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` mediumtext COLLATE utf8mb4_unicode_ci,
  `cancelled_at` int DEFAULT NULL,
  `created_at` int NOT NULL,
  `finished_at` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1);

-- --------------------------------------------------------

--
-- Estrutura para tabela `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('rvd9jzOHvTfXSPN5j3Mo4AX2LhgX9RcjOFJzFU0w', NULL, '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', 'eyJfdG9rZW4iOiJpUGVrQ093OUN5M0M0T0pVakcwRjc4Zkg5ZlRLcmlvRW1UZ0pPbTJoIiwiX3ByZXZpb3VzIjp7InVybCI6Imh0dHA6XC9cL2xvY2FsaG9zdDo4MDAwXC9kYXNoYm9hcmQiLCJyb3V0ZSI6ImRhc2hib2FyZCJ9LCJfZmxhc2giOnsib2xkIjpbXSwibmV3IjpbXX19', 1787171323),
('sP3VDatrcsIH8c2TPIWWZGZUQlrktmoWRtFwdVRT', NULL, '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', 'eyJfdG9rZW4iOiI3YlVoMmt4OFlYa2Z3VzJIeWx0Vjl3ZjNhTUhKRnZ6clpJQWFlbTlLIiwiX3ByZXZpb3VzIjp7InVybCI6Imh0dHA6XC9cL2xvY2FsaG9zdDo4MDAwXC9kYXNoYm9hcmQiLCJyb3V0ZSI6ImRhc2hib2FyZCJ9LCJfZmxhc2giOnsib2xkIjpbXSwibmV3IjpbXX19', 1787341118),
('vpAlKxdv87Q5fKH9Js4SAyahRcDtudWVC5t1xgx2', NULL, '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/152.0.0.0 Safari/537.36', 'eyJfdG9rZW4iOiI2S1k4RWdndHFRUFNLenlPMW5odE1vU2N2Mk9hZXlTN0tJeHQwekdjIiwiX3ByZXZpb3VzIjp7InVybCI6Imh0dHA6XC9cL2xvY2FsaG9zdDo4MDAwXC9hZG1pblwvYmFubmVycyIsInJvdXRlIjoiYWRtaW4uYmFubmVyLmluZGV4In0sIl9mbGFzaCI6eyJvbGQiOltdLCJuZXciOltdfX0=', 1788207637),
('zEQF4TP22RXLQZjovXWSE0akV3rlYQKUrTuuJ9Hb', NULL, '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', 'eyJfdG9rZW4iOiJmazdIc2JqZFM2M3VJTnlib2VwbXQ4NU1zV2lTUEF6WXprMkRQSW5EIiwiX3ByZXZpb3VzIjp7InVybCI6Imh0dHA6XC9cL2xvY2FsaG9zdDo4MDAwXC9kYXNoYm9hcmQiLCJyb3V0ZSI6ImRhc2hib2FyZCJ9LCJfZmxhc2giOnsib2xkIjpbXSwibmV3IjpbXX19', 1787255155);

-- --------------------------------------------------------

--
-- Estrutura para tabela `tbl_banner`
--

CREATE TABLE `tbl_banner` (
  `id_banner` int NOT NULL,
  `titulo_banner` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `imagem_banner` varchar(60) COLLATE utf8mb4_general_ci NOT NULL,
  `status_banner` varchar(10) COLLATE utf8mb4_general_ci NOT NULL,
  `data_criacao_banner` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `data_atualizacao_banner` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `tbl_banner`
--

INSERT INTO `tbl_banner` (`id_banner`, `titulo_banner`, `imagem_banner`, `status_banner`, `data_criacao_banner`, `data_atualizacao_banner`) VALUES
(1, 'Promoção especial de inverno', 'banner/promocao_especial_de_inverno.png', 'ATIVO', '2026-05-13 14:15:38', '2026-07-27 19:33:17'),
(2, 'Cappuccino Especial', 'banner/cappuccino_especial.png', 'ATIVO', '2026-05-15 14:57:42', '2026-05-20 15:29:39'),
(3, 'Festival do Café', 'banner/festival_cafe.png', 'INATIVO', '2026-05-15 14:57:42', '2026-07-29 20:04:58'),
(4, 'O melhor café da cidade em um ambiente aconchegant', 'banner/banner_melhor_cafe.png', 'ATIVO', '2026-05-15 14:57:42', '2026-07-27 19:33:27'),
(5, 'Café Gelado Especial', 'banner/cafe_gelado.png', 'ATIVO', '2026-05-15 14:57:42', '2026-05-15 14:57:42'),
(6, 'Combo da Semana', 'banner/combo_semana.png', 'ATIVO', '2026-05-15 14:57:42', '2026-05-15 14:57:42');

-- --------------------------------------------------------

--
-- Estrutura para tabela `tbl_categoria`
--

CREATE TABLE `tbl_categoria` (
  `id_categoria` int NOT NULL,
  `nome_categoria` varchar(30) COLLATE utf8mb4_general_ci NOT NULL,
  `status_categoria` varchar(10) COLLATE utf8mb4_general_ci NOT NULL,
  `data_criacao_categoria` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `data_atualizacao_categoria` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `tbl_categoria`
--

INSERT INTO `tbl_categoria` (`id_categoria`, `nome_categoria`, `status_categoria`, `data_criacao_categoria`, `data_atualizacao_categoria`) VALUES
(1, 'CAFÉ', 'INATIVO', '2026-05-15 17:03:49', '2026-05-20 16:18:41'),
(2, 'BEBIDAS QUENTES', 'ATIVO', '2026-05-15 17:04:06', '2026-05-15 17:04:06'),
(3, 'BEBIDAS GELADAS', 'ATIVO', '2026-05-15 17:04:06', '2026-05-15 17:04:06'),
(4, 'DOCES', 'ATIVO', '2026-05-15 17:04:06', '2026-05-15 17:04:06'),
(5, 'SALGADOS', 'ATIVO', '2026-05-15 17:04:06', '2026-05-15 17:04:06'),
(6, 'COMBOS', 'INATIVO', '2026-05-15 17:04:06', '2026-05-29 15:24:51');

-- --------------------------------------------------------

--
-- Estrutura para tabela `tbl_cliente`
--

CREATE TABLE `tbl_cliente` (
  `id_cliente` int NOT NULL,
  `nome_cliente` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `email_cliente` varchar(80) COLLATE utf8mb4_general_ci NOT NULL,
  `senha_cliente` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `foto_cliente` varchar(65) COLLATE utf8mb4_general_ci NOT NULL,
  `status_cliente` varchar(10) COLLATE utf8mb4_general_ci NOT NULL,
  `data_criacao_cliente` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `data_atualizacao_cliente` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `tbl_cliente`
--

INSERT INTO `tbl_cliente` (`id_cliente`, `nome_cliente`, `email_cliente`, `senha_cliente`, `foto_cliente`, `status_cliente`, `data_criacao_cliente`, `data_atualizacao_cliente`) VALUES
(1, 'Lucas Martins', 'lucas@gmail.com', 'senha123', 'cliente/lucas_martins.png', 'ATIVO', '2026-05-13 15:11:48', '2026-05-13 15:11:48'),
(2, 'Ana Clara', 'anaclara@gmail.com', 'senha123', 'cliente/ana_clara.png', 'ATIVO', '2026-05-15 17:09:20', '2026-05-20 16:33:25'),
(3, 'Bruno Henrique', 'bruno@gmail.com', 'senha123', 'cliente/bruno_henrique.png', 'ATIVO', '2026-05-15 17:09:20', '2026-05-29 16:08:48'),
(4, 'Carla Dias', 'carla@gmail.com', 'senha123', 'cliente/carla_dias.png', 'ATIVO', '2026-05-15 17:09:20', '2026-05-20 16:34:25'),
(5, 'Daniel Martins', 'daniel@gmail.com', 'senha123', 'cliente/daniel_martins.png', 'ATIVO', '2026-05-15 17:09:20', '2026-05-20 16:34:42'),
(6, 'Eduarda Lima', 'eduarda@gmail.com', 'senha123', 'cliente/eduarda_lima.png', 'ATIVO', '2026-05-15 17:09:20', '2026-05-20 16:34:54');

-- --------------------------------------------------------

--
-- Estrutura para tabela `tbl_contato`
--

CREATE TABLE `tbl_contato` (
  `id_contato` int NOT NULL,
  `nome_contato` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `email_contato` varchar(80) COLLATE utf8mb4_general_ci NOT NULL,
  `telefone_contato` varchar(14) COLLATE utf8mb4_general_ci NOT NULL,
  `assunto_contato` varchar(7) COLLATE utf8mb4_general_ci NOT NULL,
  `mensagem_contato` text COLLATE utf8mb4_general_ci NOT NULL,
  `status_contato` varchar(10) COLLATE utf8mb4_general_ci NOT NULL,
  `data_criacao_contato` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `data_atualizacao_contato` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `tbl_contato`
--

INSERT INTO `tbl_contato` (`id_contato`, `nome_contato`, `email_contato`, `telefone_contato`, `assunto_contato`, `mensagem_contato`, `status_contato`, `data_criacao_contato`, `data_atualizacao_contato`) VALUES
(1, 'Mariana Souza', 'mariana@gmail.com', '(11)98888-7777', 'DÚVIDA', 'Gostaria de saber se vocês aceitam reserva para grupos.', 'PENDENTE', '2026-05-15 16:58:31', '2026-06-02 16:02:07'),
(2, 'Carlos Silva', 'carlos@gmail.com', '(11)99999-1111', 'DÚVIDA', 'Gostaria de saber os horários de funcionamento.', 'LIDO', '2026-05-15 16:58:38', '2026-05-29 15:33:11'),
(3, 'Amanda Souza', 'amanda@gmail.com', '(11)98888-2123', 'EVENTOS', 'Vocês realizam reservas para aniversários?', 'LIDO', '2026-05-15 16:58:38', '2026-05-20 16:31:14'),
(4, 'João Pedro', 'joao@gmail.com', '(11)97777-3232', 'DÚVIDA', 'Gostaria de receber o cardápio atualizado.', 'LIDO', '2026-05-15 16:58:38', '2026-05-29 15:31:39'),
(5, 'Fernanda Lima', 'fernanda@gmail.com', '(11)96666-4444', 'EVENTOS', 'Gostaria de fazer um evento especial.', 'PENDENTE', '2026-05-15 16:58:38', '2026-06-02 16:02:21'),
(6, 'Ricardo Alves', 'ricardo@gmail.com', '(11)95555-5555', 'SUPORTE', 'O site apresentou erro ao finalizar pedido.', 'PENDENTE', '2026-05-15 16:58:38', '2026-06-02 16:02:23');

-- --------------------------------------------------------

--
-- Estrutura para tabela `tbl_depoimento`
--

CREATE TABLE `tbl_depoimento` (
  `id_depoimento` int NOT NULL,
  `id_cliente` int NOT NULL,
  `titulo_depoimento` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `descricao_depoimento` text COLLATE utf8mb4_general_ci NOT NULL,
  `nota_depoimento` double(4,2) NOT NULL,
  `status_depoimento` varchar(10) COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'PENDENTE',
  `data_criacao_depoimento` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `data_atualizacao_depoimento` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `tbl_depoimento`
--

INSERT INTO `tbl_depoimento` (`id_depoimento`, `id_cliente`, `titulo_depoimento`, `descricao_depoimento`, `nota_depoimento`, `status_depoimento`, `data_criacao_depoimento`, `data_atualizacao_depoimento`) VALUES
(1, 1, 'Excelente café', 'O café estava perfeito e o atendimento foi muito acolhedor.', 3.00, 'APROVADO', '2026-05-13 15:24:11', '2026-07-28 19:58:51'),
(2, 2, 'Café incrível', 'Atendimento excelente e café delicioso.', 2.00, 'APROVADO', '2026-05-15 17:11:44', '2026-07-28 19:58:58'),
(3, 3, 'Ambiente agradável', 'Lugar muito confortável para estudar.', 5.00, 'ATIVO', '2026-05-15 17:11:44', '2026-05-29 16:16:43'),
(4, 4, 'Doces maravilhosos', 'Os doces são muito saborosos.', 4.00, 'ATIVO', '2026-05-15 17:11:44', '2026-07-28 19:59:02'),
(5, 5, 'Ótimo atendimento', 'Equipe muito educada e rápida.', 5.00, 'ATIVO', '2026-05-15 17:11:44', '2026-05-15 17:11:44'),
(6, 6, 'Melhor cafeteria', 'Experiência perfeita do início ao fim.', 1.00, 'ATIVO', '2026-05-15 17:11:44', '2026-07-28 19:59:07');

-- --------------------------------------------------------

--
-- Estrutura para tabela `tbl_galeria`
--

CREATE TABLE `tbl_galeria` (
  `id_galeria` int NOT NULL,
  `nome_galeria` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `imagem_galeria` varchar(65) COLLATE utf8mb4_general_ci NOT NULL,
  `status_galeria` varchar(10) COLLATE utf8mb4_general_ci NOT NULL,
  `data_criacao_galeria` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `data_atualizacao_galeria` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `tbl_galeria`
--

INSERT INTO `tbl_galeria` (`id_galeria`, `nome_galeria`, `imagem_galeria`, `status_galeria`, `data_criacao_galeria`, `data_atualizacao_galeria`) VALUES
(1, 'Ambiente Interno', 'galeria/ambiente_interno.png', 'ATIVO', '2026-05-13 14:25:43', '2026-05-13 14:25:43'),
(2, 'Área Externa', 'galeria/externa.png', 'ATIVO', '2026-05-15 15:03:08', '2026-05-15 15:03:08'),
(3, 'Cafés Especiais', 'galeria/cafes.png', 'ATIVO', '2026-05-15 15:03:08', '2026-05-15 15:03:08'),
(4, 'Equipe Barista', 'galeria/equipe.png', 'ATIVO', '2026-05-15 15:03:08', '2026-07-29 20:05:13'),
(5, 'Espaço Gourmet', 'galeria/gourmet.png', 'ATIVO', '2026-05-15 15:03:08', '2026-05-15 15:03:08'),
(6, 'Bolos', 'galeria/bolos.png', 'INATIVO', '2026-05-15 15:03:08', '2026-05-20 15:32:58');

-- --------------------------------------------------------

--
-- Estrutura para tabela `tbl_horarios`
--

CREATE TABLE `tbl_horarios` (
  `id_horarios` int NOT NULL,
  `dia_semana_horarios` varchar(15) COLLATE utf8mb4_general_ci NOT NULL,
  `hora_abertura_horarios` time NOT NULL,
  `hora_fechamento_horarios` time NOT NULL,
  `observacao_horarios` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `status_horarios` varchar(10) COLLATE utf8mb4_general_ci NOT NULL,
  `data_criacao_horarios` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `data_atualizacao_horarios` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `tbl_horarios`
--

INSERT INTO `tbl_horarios` (`id_horarios`, `dia_semana_horarios`, `hora_abertura_horarios`, `hora_fechamento_horarios`, `observacao_horarios`, `status_horarios`, `data_criacao_horarios`, `data_atualizacao_horarios`) VALUES
(1, 'SEGUNDA-FEIRA', '08:00:00', '20:30:00', 'Atendimento normal', 'ATIVO', '2026-05-15 16:52:01', '2026-05-20 16:24:47'),
(2, 'TERÇA-FEIRA', '08:00:00', '20:00:00', 'Atendimento normal', 'ATIVO', '2026-05-15 16:52:52', '2026-05-15 16:52:52'),
(3, 'QUARTA-FEIRA', '08:00:00', '20:00:00', 'Atendimento normal', 'ATIVO', '2026-05-15 16:52:52', '2026-05-15 16:52:52'),
(4, 'QUINTA-FEIRA', '08:00:00', '22:00:00', 'Happy Hour Café', 'ATIVO', '2026-05-15 16:52:52', '2026-05-15 16:52:52'),
(5, 'SEXTA-FEIRA', '08:00:00', '22:00:00', 'Música ao vivo', 'ATIVO', '2026-05-15 16:52:52', '2026-05-15 16:52:52'),
(6, 'SÁBADO', '08:00:00', '19:30:00', 'Funcionamento de fim de semana', 'ATIVO', '2026-05-15 16:52:52', '2026-05-29 15:29:03');

-- --------------------------------------------------------

--
-- Estrutura para tabela `tbl_itens_venda`
--

CREATE TABLE `tbl_itens_venda` (
  `id_itens_venda` int NOT NULL,
  `id_venda` int NOT NULL,
  `id_produto` int NOT NULL,
  `qtde_itens_venda` double(6,2) NOT NULL,
  `valor_unit_itens_venda` double(6,2) NOT NULL,
  `subtotal_itens_venda` double(6,2) NOT NULL,
  `status_itens_venda` varchar(10) COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'CONFIRMADO',
  `data_criacao_itens_venda` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `data_atualizacao_itens_venda` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `tbl_itens_venda`
--

INSERT INTO `tbl_itens_venda` (`id_itens_venda`, `id_venda`, `id_produto`, `qtde_itens_venda`, `valor_unit_itens_venda`, `subtotal_itens_venda`, `status_itens_venda`, `data_criacao_itens_venda`, `data_atualizacao_itens_venda`) VALUES
(1, 1, 1, 2.00, 1.00, 2.00, 'CONFIRMADO', '2026-05-13 17:04:40', '2026-05-13 17:04:40'),
(2, 2, 3, 1.00, 16.90, 16.90, 'CONFIRMADO', '2026-05-15 17:30:39', '2026-05-15 17:30:39'),
(3, 2, 4, 1.00, 14.00, 14.00, 'CONFIRMADO', '2026-05-15 17:30:39', '2026-05-15 17:30:39'),
(4, 3, 5, 2.00, 12.50, 25.00, 'CONFIRMADO', '2026-05-15 17:30:39', '2026-05-15 17:30:39'),
(5, 3, 1, 1.00, 13.90, 13.90, 'CONFIRMADO', '2026-05-15 17:30:39', '2026-05-15 17:30:39'),
(6, 4, 2, 1.00, 8.50, 8.50, 'CONFIRMADO', '2026-05-15 17:30:39', '2026-05-15 17:30:39'),
(7, 4, 3, 2.00, 16.90, 33.80, 'CONFIRMADO', '2026-05-15 17:30:39', '2026-05-15 17:30:39'),
(8, 5, 4, 3.00, 14.00, 42.00, 'CONFIRMADO', '2026-05-15 17:30:39', '2026-05-20 14:39:01'),
(9, 5, 5, 1.00, 12.50, 12.50, 'CONFIRMADO', '2026-05-15 17:30:39', '2026-05-15 17:30:39');

-- --------------------------------------------------------

--
-- Estrutura para tabela `tbl_linha_tempo`
--

CREATE TABLE `tbl_linha_tempo` (
  `id_linha_tempo` int NOT NULL,
  `titulo_linha_tempo` varchar(30) COLLATE utf8mb4_general_ci NOT NULL,
  `ano_linha_tempo` date NOT NULL,
  `descricao_linha_tempo` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `status_linha_tempo` varchar(10) COLLATE utf8mb4_general_ci NOT NULL,
  `data_criacao_linha_tempo` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `data_atualizacao_linha_tempo` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `tbl_linha_tempo`
--

INSERT INTO `tbl_linha_tempo` (`id_linha_tempo`, `titulo_linha_tempo`, `ano_linha_tempo`, `descricao_linha_tempo`, `status_linha_tempo`, `data_criacao_linha_tempo`, `data_atualizacao_linha_tempo`) VALUES
(1, 'Fundação', '2001-01-01', 'A Casa do Barista iniciou suas atividades\noferecendo cafés especiais e atendimento acolhedor.', 'ATIVO', '2026-05-13 14:53:17', '2026-05-13 14:53:17'),
(2, 'Clientes', '2001-01-01', 'A Casa do Barista recebeu seu primeiro cliente e registrou seu primeiro pedido.', 'ATIVO', '2026-05-15 15:07:50', '2026-05-15 16:41:21'),
(3, 'Primeira Reforma', '2005-03-07', 'O espaço foi ampliado para receber mais clientes.', 'ATIVO', '2026-05-15 15:07:50', '2026-05-15 16:41:23'),
(4, 'Novo Cardápio', '2010-08-01', 'Foram adicionadas bebidas geladas e doces especiais.', 'ATIVO', '2026-05-15 15:07:50', '2026-05-15 16:41:25'),
(5, 'Prêmio Regional', '2018-12-02', 'A Casa do Barista recebeu prêmio de melhor cafeteria.', 'ATIVO', '2026-05-15 15:07:50', '2026-05-15 16:41:27'),
(6, 'Loja Online', '2023-01-01', 'O sistema web de pedidos foi lançado oficialmente.', 'ATIVO', '2026-05-15 15:07:50', '2026-05-15 15:07:50');

-- --------------------------------------------------------

--
-- Estrutura para tabela `tbl_news`
--

CREATE TABLE `tbl_news` (
  `id_news` int NOT NULL,
  `email_news` varchar(80) COLLATE utf8mb4_general_ci NOT NULL,
  `aceite_news` int NOT NULL DEFAULT '1',
  `data_criacao_news` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `data_atualizacao_news` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `tbl_news`
--

INSERT INTO `tbl_news` (`id_news`, `email_news`, `aceite_news`, `data_criacao_news`, `data_atualizacao_news`) VALUES
(1, 'pedro@gmail.com', 1, '2026-05-13 14:21:22', '2026-05-13 14:21:22'),
(2, 'ana@gmail.com', 1, '2026-05-15 15:00:03', '2026-05-15 15:00:03'),
(3, 'bruno@gmail.com', 1, '2026-05-15 15:00:03', '2026-05-15 15:00:03'),
(4, 'carla@gmail.com', 1, '2026-05-15 15:00:03', '2026-05-15 15:00:03'),
(5, 'diego@gmail.com', 1, '2026-05-15 15:00:03', '2026-05-15 15:00:03'),
(6, 'fernanda@gmail.com', 1, '2026-05-15 15:00:03', '2026-05-15 15:00:03');

-- --------------------------------------------------------

--
-- Estrutura para tabela `tbl_produto`
--

CREATE TABLE `tbl_produto` (
  `id_produto` int NOT NULL,
  `nome_produto` varchar(30) COLLATE utf8mb4_general_ci NOT NULL,
  `id_categoria` int NOT NULL,
  `descricao_curta_produto` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `descricao_longa_produto` text COLLATE utf8mb4_general_ci,
  `valor_produto` double(6,2) NOT NULL,
  `imagem_produto` varchar(45) COLLATE utf8mb4_general_ci NOT NULL,
  `destaque_produto` int NOT NULL DEFAULT '0',
  `status_produto` varchar(10) COLLATE utf8mb4_general_ci NOT NULL,
  `data_criacao_produto` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `data_atualizacao_produto` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `tbl_produto`
--

INSERT INTO `tbl_produto` (`id_produto`, `nome_produto`, `id_categoria`, `descricao_curta_produto`, `descricao_longa_produto`, `valor_produto`, `imagem_produto`, `destaque_produto`, `status_produto`, `data_criacao_produto`, `data_atualizacao_produto`) VALUES
(1, 'Café Longo', 2, 'Café Longo feito no coador.', 'Café Gourmet das montanhas \nfrias do monte Centro Oeste.', 13.90, 'produto/cafe_longo.png', 1, 'ATIVO', '2026-05-15 17:05:54', '2026-07-30 19:26:51'),
(2, 'Espresso Tradicional', 1, 'Café espresso com aroma intenso', 'Café espresso produzido com grãos especiais.', 8.50, 'produto/espresso.png', 1, 'INATIVO', '2026-05-15 17:06:59', '2026-07-30 19:27:58'),
(3, 'Frappuccino', 2, 'Bebida gelada de café.', 'Frappuccino cremoso com chantilly.', 16.90, 'produto/frappuccino.png', 1, 'ATIVO', '2026-05-15 17:06:59', '2026-07-30 19:27:55'),
(4, 'Cheesecake', 4, 'Cheesecake de frutas vermelhas.', 'Sobremesa artesanal feita diariamente.', 18.90, 'produto/cheesecake.png', 0, 'ATIVO', '2026-05-15 17:06:59', '2026-05-29 15:21:39'),
(5, 'Croissant', 5, 'Croissant recheado.', 'Croissant amanteigado com queijo e presunto.', 11.90, 'produto/croissant.png', 0, 'ATIVO', '2026-05-15 17:06:59', '2026-05-20 16:10:54'),
(6, 'Combo Café da Manhã', 6, 'Um Pão de Queijo e uma bebida de sua escolha', 'Café, pão de queijo e sobremesa.', 25.90, 'produto/combo.png', 1, 'ATIVO', '2026-05-15 17:06:59', '2026-05-20 16:16:30');

-- --------------------------------------------------------

--
-- Estrutura para tabela `tbl_usuarios`
--

CREATE TABLE `tbl_usuarios` (
  `id_usuarios` int NOT NULL,
  `nome_usuarios` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `email_usuarios` varchar(80) COLLATE utf8mb4_general_ci NOT NULL,
  `senha_usuarios` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `foto_usuarios` varchar(65) COLLATE utf8mb4_general_ci NOT NULL,
  `nivel_usuarios` varchar(15) COLLATE utf8mb4_general_ci NOT NULL,
  `status_usuarios` varchar(10) COLLATE utf8mb4_general_ci NOT NULL,
  `data_criacao_usuarios` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `data_atualizacao_usuarios` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `tbl_usuarios`
--

INSERT INTO `tbl_usuarios` (`id_usuarios`, `nome_usuarios`, `email_usuarios`, `senha_usuarios`, `foto_usuarios`, `nivel_usuarios`, `status_usuarios`, `data_criacao_usuarios`, `data_atualizacao_usuarios`) VALUES
(1, 'Pedro da Silva', 'pedro@casadobarista.com.br', 'senha123', 'usuario/pedro_da_silva.jpg', 'ADMINISTRADOR', 'ATIVO', '2026-05-13 15:06:11', '2026-05-13 15:06:11'),
(2, 'Guilherme Cruz', 'guilherme@casadobarista.com', 'senha123', 'usuarios/guilherme_cruz.png', 'ADMINISTRADOR', 'ATIVO', '2026-05-15 15:32:20', '2026-05-15 16:18:10'),
(3, 'Marina Costa', 'marina@casadobarista.com', 'senha123', 'usuarios/marina_costa.png', 'GERENTE', 'ATIVO', '2026-05-15 15:32:20', '2026-05-15 16:18:11'),
(4, 'Lucas Mendes', 'lucas@casadobarista.com', 'senha123', 'usuarios/lucas_mendes.png', 'ADMINISTRADOR', 'ATIVO', '2026-05-15 15:32:20', '2026-05-15 16:19:22'),
(5, 'Fernanda Rocha', 'fernanda@casadobarista.com', 'senha123', 'usuarios/fernanda_rocha.png', 'ATIVO', 'ATIVO', '2026-05-15 15:32:20', '2026-05-15 16:18:13'),
(6, 'Ricardo Alves', 'ricardo@casadobarista.com', 'senha123', 'usuarios/ricardo_alves.png', 'GERENTE', 'ATIVO', '2026-05-15 15:32:20', '2026-05-15 16:18:18');

-- --------------------------------------------------------

--
-- Estrutura para tabela `tbl_usuarios_venda`
--

CREATE TABLE `tbl_usuarios_venda` (
  `id_usuarios_venda` int NOT NULL,
  `id_usuario` int NOT NULL,
  `id_venda` int NOT NULL,
  `data_criacao_usuarios_venda` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `data_atualizacao_usuarios_venda` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `tbl_usuarios_venda`
--

INSERT INTO `tbl_usuarios_venda` (`id_usuarios_venda`, `id_usuario`, `id_venda`, `data_criacao_usuarios_venda`, `data_atualizacao_usuarios_venda`) VALUES
(1, 1, 1, '2026-05-13 16:38:23', '2026-05-13 16:38:23'),
(2, 2, 2, '2026-05-15 17:16:21', '2026-05-15 17:16:21'),
(3, 3, 3, '2026-05-15 17:16:21', '2026-05-15 17:16:21'),
(4, 4, 4, '2026-05-15 17:16:21', '2026-05-15 17:16:21'),
(5, 5, 5, '2026-05-15 17:16:21', '2026-05-15 17:16:21'),
(6, 6, 6, '2026-05-15 17:16:21', '2026-05-15 17:16:21');

-- --------------------------------------------------------

--
-- Estrutura para tabela `tbl_venda`
--

CREATE TABLE `tbl_venda` (
  `id_venda` int NOT NULL,
  `data_hora_venda` datetime NOT NULL,
  `valor_total_venda` double(10,2) NOT NULL,
  `forma_pagamento_venda` varchar(10) COLLATE utf8mb4_general_ci NOT NULL,
  `id_cliente` int NOT NULL,
  `status_venda` varchar(12) COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'EM ANDAMENTO',
  `observacao_venda` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `data_criacao_venda` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `data_atualizacao_venda` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `tbl_venda`
--

INSERT INTO `tbl_venda` (`id_venda`, `data_hora_venda`, `valor_total_venda`, `forma_pagamento_venda`, `id_cliente`, `status_venda`, `observacao_venda`, `data_criacao_venda`, `data_atualizacao_venda`) VALUES
(1, '2026-05-13 16:34:51', 2.00, 'DÉBITO', 1, 'FINALIZADA', 'Está na mesa 27.', '2026-05-13 16:34:51', '2026-05-13 17:29:31'),
(2, '2026-05-15 17:14:57', 25.40, 'PIX', 2, 'FINALIZADA', 'Mesa 01', '2026-05-15 17:14:57', '2026-05-29 16:19:40'),
(3, '2026-05-15 17:14:57', 40.00, 'CRÉDITO', 3, 'FINALIZADA', 'Mesa 02', '2026-05-15 17:14:57', '2026-05-20 14:25:52'),
(4, '2026-05-15 17:14:57', 42.30, 'DÉBITO', 4, 'FINALIZADA', 'Mesa 03', '2026-05-15 17:14:57', '2026-05-20 16:55:37'),
(5, '2026-05-15 17:14:57', 35.50, 'PIX', 5, 'FINALIZADA', 'Mesa 04', '2026-05-15 17:14:57', '2026-05-15 17:14:57'),
(6, '2026-05-15 17:14:57', 29.90, 'DÉBITO', 6, 'FINALIZADA', 'Mesa 05', '2026-05-15 17:14:57', '2026-05-20 16:43:09');

-- --------------------------------------------------------

--
-- Estrutura para tabela `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`),
  ADD KEY `cache_expiration_index` (`expiration`);

--
-- Índices de tabela `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`),
  ADD KEY `cache_locks_expiration_index` (`expiration`);

--
-- Índices de tabela `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`),
  ADD KEY `failed_jobs_connection_queue_failed_at_index` (`connection`,`queue`,`failed_at`);

--
-- Índices de tabela `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Índices de tabela `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Índices de tabela `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Índices de tabela `tbl_banner`
--
ALTER TABLE `tbl_banner`
  ADD PRIMARY KEY (`id_banner`);

--
-- Índices de tabela `tbl_categoria`
--
ALTER TABLE `tbl_categoria`
  ADD PRIMARY KEY (`id_categoria`);

--
-- Índices de tabela `tbl_cliente`
--
ALTER TABLE `tbl_cliente`
  ADD PRIMARY KEY (`id_cliente`),
  ADD UNIQUE KEY `email_cliente` (`email_cliente`);

--
-- Índices de tabela `tbl_contato`
--
ALTER TABLE `tbl_contato`
  ADD PRIMARY KEY (`id_contato`);

--
-- Índices de tabela `tbl_depoimento`
--
ALTER TABLE `tbl_depoimento`
  ADD PRIMARY KEY (`id_depoimento`),
  ADD KEY `fk_depoimento_cliente` (`id_cliente`);

--
-- Índices de tabela `tbl_galeria`
--
ALTER TABLE `tbl_galeria`
  ADD PRIMARY KEY (`id_galeria`);

--
-- Índices de tabela `tbl_horarios`
--
ALTER TABLE `tbl_horarios`
  ADD PRIMARY KEY (`id_horarios`);

--
-- Índices de tabela `tbl_itens_venda`
--
ALTER TABLE `tbl_itens_venda`
  ADD PRIMARY KEY (`id_itens_venda`),
  ADD KEY `fk_itens_venda_venda` (`id_venda`),
  ADD KEY `fk_itens_venda_produto` (`id_produto`);

--
-- Índices de tabela `tbl_linha_tempo`
--
ALTER TABLE `tbl_linha_tempo`
  ADD PRIMARY KEY (`id_linha_tempo`);

--
-- Índices de tabela `tbl_news`
--
ALTER TABLE `tbl_news`
  ADD PRIMARY KEY (`id_news`),
  ADD UNIQUE KEY `email_news` (`email_news`);

--
-- Índices de tabela `tbl_produto`
--
ALTER TABLE `tbl_produto`
  ADD PRIMARY KEY (`id_produto`),
  ADD KEY `fk_produto_categoria` (`id_categoria`);

--
-- Índices de tabela `tbl_usuarios`
--
ALTER TABLE `tbl_usuarios`
  ADD PRIMARY KEY (`id_usuarios`),
  ADD UNIQUE KEY `email_usuarios` (`email_usuarios`);

--
-- Índices de tabela `tbl_usuarios_venda`
--
ALTER TABLE `tbl_usuarios_venda`
  ADD PRIMARY KEY (`id_usuarios_venda`),
  ADD KEY `fk_usuarios_venda_usuario` (`id_usuario`),
  ADD KEY `fk_usuarios_venda_venda` (`id_venda`);

--
-- Índices de tabela `tbl_venda`
--
ALTER TABLE `tbl_venda`
  ADD PRIMARY KEY (`id_venda`),
  ADD KEY `fk_venda_cliente` (`id_cliente`);

--
-- Índices de tabela `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `tbl_banner`
--
ALTER TABLE `tbl_banner`
  MODIFY `id_banner` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de tabela `tbl_categoria`
--
ALTER TABLE `tbl_categoria`
  MODIFY `id_categoria` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de tabela `tbl_cliente`
--
ALTER TABLE `tbl_cliente`
  MODIFY `id_cliente` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de tabela `tbl_contato`
--
ALTER TABLE `tbl_contato`
  MODIFY `id_contato` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de tabela `tbl_depoimento`
--
ALTER TABLE `tbl_depoimento`
  MODIFY `id_depoimento` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de tabela `tbl_galeria`
--
ALTER TABLE `tbl_galeria`
  MODIFY `id_galeria` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de tabela `tbl_horarios`
--
ALTER TABLE `tbl_horarios`
  MODIFY `id_horarios` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de tabela `tbl_itens_venda`
--
ALTER TABLE `tbl_itens_venda`
  MODIFY `id_itens_venda` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de tabela `tbl_linha_tempo`
--
ALTER TABLE `tbl_linha_tempo`
  MODIFY `id_linha_tempo` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de tabela `tbl_news`
--
ALTER TABLE `tbl_news`
  MODIFY `id_news` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de tabela `tbl_produto`
--
ALTER TABLE `tbl_produto`
  MODIFY `id_produto` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de tabela `tbl_usuarios`
--
ALTER TABLE `tbl_usuarios`
  MODIFY `id_usuarios` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de tabela `tbl_usuarios_venda`
--
ALTER TABLE `tbl_usuarios_venda`
  MODIFY `id_usuarios_venda` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de tabela `tbl_venda`
--
ALTER TABLE `tbl_venda`
  MODIFY `id_venda` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de tabela `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `tbl_depoimento`
--
ALTER TABLE `tbl_depoimento`
  ADD CONSTRAINT `fk_depoimento_cliente` FOREIGN KEY (`id_cliente`) REFERENCES `tbl_cliente` (`id_cliente`);

--
-- Restrições para tabelas `tbl_itens_venda`
--
ALTER TABLE `tbl_itens_venda`
  ADD CONSTRAINT `fk_itens_venda_produto` FOREIGN KEY (`id_produto`) REFERENCES `tbl_produto` (`id_produto`),
  ADD CONSTRAINT `fk_itens_venda_venda` FOREIGN KEY (`id_venda`) REFERENCES `tbl_venda` (`id_venda`);

--
-- Restrições para tabelas `tbl_produto`
--
ALTER TABLE `tbl_produto`
  ADD CONSTRAINT `fk_produto_categoria` FOREIGN KEY (`id_categoria`) REFERENCES `tbl_categoria` (`id_categoria`);

--
-- Restrições para tabelas `tbl_usuarios_venda`
--
ALTER TABLE `tbl_usuarios_venda`
  ADD CONSTRAINT `fk_usuarios_venda_usuario` FOREIGN KEY (`id_usuario`) REFERENCES `tbl_usuarios` (`id_usuarios`),
  ADD CONSTRAINT `fk_usuarios_venda_venda` FOREIGN KEY (`id_venda`) REFERENCES `tbl_venda` (`id_venda`);

--
-- Restrições para tabelas `tbl_venda`
--
ALTER TABLE `tbl_venda`
  ADD CONSTRAINT `fk_venda_cliente` FOREIGN KEY (`id_cliente`) REFERENCES `tbl_cliente` (`id_cliente`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
