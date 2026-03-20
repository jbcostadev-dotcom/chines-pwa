-- phpMyAdmin SQL Dump
-- version 5.2.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Tempo de geração: 13/03/2026 às 02:04
-- Versão do servidor: 10.11.10-MariaDB-log
-- Versão do PHP: 8.3.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `57f`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `adicao_saldo`
--

CREATE TABLE `adicao_saldo` (
  `id` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `valor` int(11) NOT NULL DEFAULT 0,
  `tipo` varchar(255) DEFAULT NULL,
  `data_registro` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `adicao_saldo`
--

INSERT INTO `adicao_saldo` (`id`, `id_user`, `valor`, `tipo`, `data_registro`) VALUES
(1, 875597501, 0, 'Reward Manual', '2026-02-15 16:14:55'),
(2, 875597501, 0, 'register_reward', '2026-02-15 17:58:38'),
(3, 731074918, 0, 'Reward Manual', '2026-02-16 11:40:54'),
(4, 731074918, 0, 'register_reward', '2026-02-16 11:41:12'),
(5, 731074918, 0, 'Reward Manual', '2026-02-19 15:15:21'),
(6, 731074918, 87, 'SignIn', '2026-02-19 16:22:20'),
(7, 731074918, 89, 'SignIn', '2026-02-19 16:23:02'),
(8, 731074918, 10, 'SignIn', '2026-02-19 16:31:27'),
(9, 731074918, 0, 'Reward Manual', '2026-02-20 00:28:30'),
(10, 728991276, 0, 'Reward Manual', '2026-02-23 23:42:42'),
(11, 728991276, 0, 'register_reward', '2026-02-23 23:43:11'),
(12, 875597501, 11, 'bau', '2026-02-23 23:53:59'),
(13, 728991276, 2147483647, 'adicao', '2026-02-24 00:03:52'),
(14, 285660919, 0, 'Reward Manual', '2026-02-24 00:25:04'),
(15, 285660919, 0, 'register_reward', '2026-02-24 00:42:09'),
(16, 530383209, 0, 'Reward Manual', '2026-03-02 22:58:47'),
(17, 530383209, 100, 'SignIn', '2026-03-02 23:14:54'),
(18, 924554086, 0, 'Reward Manual', '2026-03-03 00:29:12'),
(19, 924554086, 0, 'register_reward', '2026-03-03 02:14:11'),
(20, 333804087, 0, 'register_reward', '2026-03-04 17:55:41'),
(21, 333804087, 0, 'Reward Manual', '2026-03-04 17:56:04'),
(22, 169072476, 0, 'register_reward', '2026-03-05 14:11:53'),
(23, 169072476, 0, 'Reward Manual', '2026-03-05 14:12:08'),
(24, 149247148, 0, 'register_reward', '2026-03-05 19:41:02'),
(25, 876241481, 0, 'Reward Manual', '2026-03-06 01:13:34'),
(26, 447719744, 0, 'Reward Manual', '2026-03-06 01:33:49'),
(27, 198785760, 0, 'Reward Manual', '2026-03-06 02:19:03'),
(28, 876241481, 1, 'deposito_pix', '2026-03-06 00:16:47'),
(29, 876241481, 0, 'register_reward', '2026-03-06 03:18:50'),
(30, 876241481, 50, 'adicao', '2026-03-06 00:39:40'),
(31, 876241481, 4000, 'remocao', '2026-03-06 00:41:06'),
(32, 746849185, 0, 'Reward Manual', '2026-03-06 04:15:14'),
(33, 670063123, 0, 'Reward Manual', '2026-03-06 04:30:02'),
(34, 604920085, 0, 'register_reward', '2026-03-06 09:48:00'),
(35, 604920085, 0, 'Reward Manual', '2026-03-06 09:48:19'),
(36, 810944149, 0, 'Reward Manual', '2026-03-06 10:16:55'),
(37, 384328063, 0, 'Reward Manual', '2026-03-06 10:23:10'),
(38, 913273631, 0, 'Reward Manual', '2026-03-06 10:42:27'),
(39, 913273631, 0, 'register_reward', '2026-03-06 10:42:39'),
(40, 287595183, 0, 'register_reward', '2026-03-06 11:10:43'),
(41, 287595183, 0, 'Reward Manual', '2026-03-06 11:11:36'),
(42, 906881970, 0, 'register_reward', '2026-03-06 11:50:59'),
(43, 906881970, 0, 'Reward Manual', '2026-03-06 11:51:28'),
(44, 597381632, 0, 'Reward Manual', '2026-03-06 12:48:10'),
(45, 597381632, 0, 'register_reward', '2026-03-06 12:48:34'),
(46, 932846933, 0, 'register_reward', '2026-03-06 13:32:31'),
(47, 932846933, 0, 'Reward Manual', '2026-03-06 13:33:01'),
(48, 177230681, 0, 'register_reward', '2026-03-06 13:49:54'),
(49, 177230681, 0, 'Reward Manual', '2026-03-06 13:51:56'),
(50, 997171642, 0, 'Reward Manual', '2026-03-06 13:59:46'),
(51, 698627313, 0, 'register_reward', '2026-03-06 14:53:02'),
(52, 698627313, 0, 'Reward Manual', '2026-03-06 14:53:25'),
(53, 877549363, 0, 'register_reward', '2026-03-06 15:16:51'),
(54, 877549363, 0, 'Reward Manual', '2026-03-06 15:17:11'),
(55, 352169046, 0, 'register_reward', '2026-03-06 17:01:38'),
(56, 352169046, 0, 'Reward Manual', '2026-03-06 17:02:01'),
(57, 352169046, 200, 'deposito_pix', '2026-03-06 14:03:59'),
(58, 916550068, 0, 'register_reward', '2026-03-06 18:10:29'),
(59, 916550068, 0, 'Reward Manual', '2026-03-06 18:10:44'),
(60, 516443314, 0, 'Reward Manual', '2026-03-06 19:23:37'),
(61, 877549363, 14, 'deposito_pix', '2026-03-06 19:52:25'),
(62, 809845112, 0, 'Reward Manual', '2026-03-06 23:32:05'),
(63, 809845112, 0, 'register_reward', '2026-03-06 23:35:13'),
(64, 139051308, 0, 'Reward Manual', '2026-03-07 00:30:57'),
(65, 139051308, 0, 'register_reward', '2026-03-07 00:31:11'),
(66, 746849185, 100, 'adicao', '2026-03-06 21:45:38'),
(67, 746849185, 100, 'remocao', '2026-03-06 21:46:02'),
(68, 876241481, 100, 'adicao', '2026-03-06 21:46:30'),
(69, 966588497, 0, 'Reward Manual', '2026-03-07 01:54:59'),
(70, 966588497, 0, 'register_reward', '2026-03-07 01:54:59'),
(71, 168451190, 10, 'deposito_pix', '2026-03-07 01:37:07'),
(72, 168451190, 0, 'Reward Manual', '2026-03-07 04:37:22'),
(73, 168451190, 0, 'register_reward', '2026-03-07 04:37:37'),
(74, 241143557, 0, 'register_reward', '2026-03-07 06:49:47'),
(75, 241143557, 0, 'Reward Manual', '2026-03-07 06:50:14'),
(76, 876241481, 0, 'Reward Manual', '2026-03-07 10:53:56'),
(77, 746849185, 0, 'Reward Manual', '2026-03-07 12:40:36'),
(78, 807187103, 0, 'Reward Manual', '2026-03-07 14:30:35'),
(79, 807187103, 0, 'register_reward', '2026-03-07 14:31:06'),
(80, 209520723, 0, 'register_reward', '2026-03-07 14:32:45'),
(81, 209520723, 0, 'Reward Manual', '2026-03-07 14:32:57'),
(82, 856247855, 0, 'Reward Manual', '2026-03-07 16:27:19'),
(83, 297516530, 0, 'register_reward', '2026-03-07 16:31:12'),
(84, 297516530, 0, 'Reward Manual', '2026-03-07 16:32:01'),
(85, 882568296, 0, 'Reward Manual', '2026-03-07 20:40:34'),
(86, 882568296, 0, 'register_reward', '2026-03-07 20:40:44'),
(87, 216162593, 0, 'register_reward', '2026-03-07 20:42:58'),
(88, 216162593, 0, 'Reward Manual', '2026-03-07 20:43:12'),
(89, 920905628, 0, 'Reward Manual', '2026-03-07 20:46:03'),
(90, 920905628, 0, 'register_reward', '2026-03-07 20:46:12');

-- --------------------------------------------------------

--
-- Estrutura para tabela `admin_users`
--

CREATE TABLE `admin_users` (
  `id` int(11) NOT NULL,
  `nome` text NOT NULL,
  `email` text NOT NULL,
  `contato` text DEFAULT NULL,
  `senha` text NOT NULL,
  `nivel` int(11) NOT NULL DEFAULT 0,
  `status` int(11) NOT NULL DEFAULT 0,
  `token_recover` text DEFAULT NULL,
  `avatar` text DEFAULT NULL,
  `2fa` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `admin_users`
--

INSERT INTO `admin_users` (`id`, `nome`, `email`, `contato`, `senha`, `nivel`, `status`, `token_recover`, `avatar`, `2fa`) VALUES
(1, 'admin', 'phundemann97@gmail.com', NULL, '$2a$12$apW5Exou5VvMxzHKdbBgnOL23JP28HRA3W8gTIJEYjBI5vpCfQAWW', 0, 1, NULL, NULL, '310316');

-- --------------------------------------------------------

--
-- Estrutura para tabela `afiliados_config`
--

CREATE TABLE `afiliados_config` (
  `id` int(11) NOT NULL,
  `cpaLvl1` decimal(10,2) DEFAULT NULL,
  `cpaLvl2` decimal(10,2) DEFAULT NULL,
  `cpaLvl3` decimal(10,2) DEFAULT NULL,
  `chanceCpa` decimal(5,2) DEFAULT NULL,
  `revShareFalso` decimal(5,2) DEFAULT NULL,
  `revShareLvl1` decimal(5,2) DEFAULT NULL,
  `revShareLvl2` decimal(5,2) DEFAULT NULL,
  `revShareLvl3` decimal(5,2) DEFAULT NULL,
  `minDepForCpa` decimal(10,2) DEFAULT NULL,
  `minResgate` decimal(10,2) DEFAULT NULL,
  `pagar_baus` tinyint(1) DEFAULT 1,
  `dep_on` int(11) DEFAULT 1,
  `bet_on` int(11) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Despejando dados para a tabela `afiliados_config`
--

INSERT INTO `afiliados_config` (`id`, `cpaLvl1`, `cpaLvl2`, `cpaLvl3`, `chanceCpa`, `revShareFalso`, `revShareLvl1`, `revShareLvl2`, `revShareLvl3`, `minDepForCpa`, `minResgate`, `pagar_baus`, `dep_on`, `bet_on`) VALUES
(1, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 30.00, 400.00, 0, 1, 1);

-- --------------------------------------------------------

--
-- Estrutura para tabela `assistance_rounds`
--

CREATE TABLE `assistance_rounds` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `current_amount` int(11) NOT NULL DEFAULT 0,
  `target_amount` int(11) NOT NULL DEFAULT 10000,
  `draw_count` int(11) NOT NULL DEFAULT 0,
  `status` int(11) NOT NULL DEFAULT 0,
  `start_time` datetime NOT NULL,
  `end_time` datetime NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `assistance_rounds`
--

INSERT INTO `assistance_rounds` (`id`, `user_id`, `current_amount`, `target_amount`, `draw_count`, `status`, `start_time`, `end_time`, `created_at`, `updated_at`) VALUES
(5, 648054358, 9176, 10000, 1, 0, '2026-02-01 18:24:02', '2026-02-02 18:24:02', '2026-02-01 21:24:02', '2026-02-01 21:24:02'),
(6, 709584639, 9785, 10000, 4, 0, '2026-02-12 23:40:08', '2026-02-13 23:40:08', '2026-02-13 02:40:08', '2026-02-13 03:06:02'),
(7, 662875782, 9658, 10000, 1, 0, '2026-02-13 00:18:38', '2026-02-17 00:18:38', '2026-02-13 03:18:38', '2026-02-13 03:18:38'),
(8, 731074918, 9699, 10000, 1, 0, '2026-02-19 15:54:28', '2026-02-23 15:54:28', '2026-02-19 18:54:28', '2026-02-19 18:54:28'),
(9, 810944149, 9456, 10000, 1, 0, '2026-03-06 07:14:46', '2026-03-10 07:14:46', '2026-03-06 10:14:46', '2026-03-06 10:14:46'),
(10, 177230681, 9445, 10000, 1, 0, '2026-03-06 10:53:50', '2026-03-10 10:53:50', '2026-03-06 13:53:50', '2026-03-06 13:53:50'),
(11, 932846933, 9141, 10000, 1, 0, '2026-03-06 11:06:32', '2026-03-10 11:06:32', '2026-03-06 14:06:32', '2026-03-06 14:06:32');

-- --------------------------------------------------------

--
-- Estrutura para tabela `audit_flows`
--

CREATE TABLE `audit_flows` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `flow_multiple` decimal(10,2) DEFAULT 1.00,
  `need_flow` decimal(10,2) NOT NULL,
  `current_flow` decimal(10,2) DEFAULT 0.00,
  `status` varchar(50) DEFAULT 'notStarted',
  `flow_type` varchar(50) DEFAULT 'ACTIVITY',
  `activity_name` varchar(100) DEFAULT '',
  `release_setting` varchar(50) DEFAULT 'auto',
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `aurenpay`
--

CREATE TABLE `aurenpay` (
  `id` int(11) NOT NULL,
  `url` varchar(255) DEFAULT NULL,
  `client_id` text DEFAULT NULL,
  `client_secret` text DEFAULT NULL,
  `atualizado` varchar(45) DEFAULT NULL,
  `ativo` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Despejando dados para a tabela `aurenpay`
--

INSERT INTO `aurenpay` (`id`, `url`, `client_id`, `client_secret`, `atualizado`, `ativo`) VALUES
(1, '0', '0', '0', NULL, 0);

-- --------------------------------------------------------

--
-- Estrutura para tabela `banner`
--

CREATE TABLE `banner` (
  `id` int(11) NOT NULL,
  `titulo` varchar(255) NOT NULL,
  `criado_em` timestamp NOT NULL DEFAULT current_timestamp(),
  `img` text NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `type` varchar(50) DEFAULT 'lobby_carousel',
  `targetValue` text DEFAULT NULL,
  `defaultIconUrl` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Despejando dados para a tabela `banner`
--

INSERT INTO `banner` (`id`, `titulo`, `criado_em`, `img`, `status`, `type`, `targetValue`, `defaultIconUrl`) VALUES
(1, 'Banner 1', '2024-06-28 21:10:47', '1773181978_55AA-lunbo.png', 1, 'lobby_carousel', NULL, NULL),
(2, 'Banner 2', '2024-06-28 21:08:02', '1773181986_aaa.png', 1, 'lobby_carousel', NULL, NULL),
(3, 'Banner 3', '2024-06-28 21:08:02', '1773181992_hongbaolunbo.png', 1, 'lobby_carousel', NULL, NULL),
(4, 'Banner 4', '2024-06-28 21:08:02', '1765829375_imgi_54_1793901527754293250.avif', 0, 'lobby_carousel', NULL, NULL),
(5, 'Banner 5', '2024-06-28 21:08:02', '1748550977_banner2.png', 0, 'lobby_carousel', NULL, NULL),
(6, 'Banner Lobby 1', '2026-01-28 21:44:05', '1773182044_3-352x216.gif', 1, 'lobby_banner', NULL, NULL),
(7, 'Banner Lobby 2', '2026-01-28 21:44:05', '1773182072_1-354x100.gif', 1, 'lobby_banner', NULL, NULL),
(8, 'Banner Lobby 3', '2026-01-28 21:44:05', '1773182079_2-354x100.gif', 1, 'lobby_banner', NULL, NULL),
(9, 'VIP', '2026-03-03 03:09:09', 'tjhd2.PNG', 1, 'lobby_sidebar_banner', '{\"type\":\"recharge\",\"info\":\"string\"}', 'https://upload-sys-pics.f-1-g-h.com/recommendActivityConfig/recharge.png'),
(10, '222', '2026-03-03 03:09:09', '2500.jpg', 1, 'lobby_sidebar_banner', NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura para tabela `bau`
--

CREATE TABLE `bau` (
  `id` int(11) NOT NULL,
  `id_user` int(11) DEFAULT NULL,
  `num` text DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  `token` varchar(255) DEFAULT NULL,
  `is_get` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `bspay`
--

CREATE TABLE `bspay` (
  `id` int(11) NOT NULL,
  `url` varchar(255) DEFAULT NULL,
  `client_id` text DEFAULT NULL,
  `client_secret` text DEFAULT NULL,
  `atualizado` varchar(45) DEFAULT NULL,
  `ativo` int(11) DEFAULT NULL,
  `invite_code` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Despejando dados para a tabela `bspay`
--

INSERT INTO `bspay` (`id`, `url`, `client_id`, `client_secret`, `atualizado`, `ativo`, `invite_code`) VALUES
(1, 'https://api.pixupbr.com', 'split_split_6388759447774282', 'dc10a2a2430fbe70ab4a160c2aa3afea506dfa7799411744cb1bfe7dc1b5e427', NULL, 1, NULL);

-- --------------------------------------------------------

--
-- Estrutura para tabela `chat_messages`
--

CREATE TABLE `chat_messages` (
  `id` int(11) NOT NULL,
  `user_id` varchar(100) NOT NULL,
  `sender` enum('user','admin') NOT NULL,
  `agent_name` varchar(100) DEFAULT NULL,
  `message` text NOT NULL,
  `is_read` tinyint(1) DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `msg_type` enum('text','image','video','file') DEFAULT 'text',
  `file_url` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `chat_sessions`
--

CREATE TABLE `chat_sessions` (
  `id` int(11) NOT NULL,
  `user_id` varchar(50) NOT NULL,
  `user_name` varchar(100) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `chat_sessions`
--

INSERT INTO `chat_sessions` (`id`, `user_id`, `user_name`, `created_at`, `updated_at`) VALUES
(1, 'user_kytjlywa3', NULL, '2026-02-13 04:28:14', '2026-02-13 04:28:14');

-- --------------------------------------------------------

--
-- Estrutura para tabela `config`
--

CREATE TABLE `config` (
  `id` int(11) NOT NULL,
  `nome` varchar(255) DEFAULT NULL,
  `nome_site` text DEFAULT NULL,
  `descricao` text DEFAULT NULL,
  `grupoplataforma` varchar(255) DEFAULT NULL,
  `logo` text DEFAULT NULL,
  `avatar` text DEFAULT NULL,
  `download` varchar(255) DEFAULT NULL,
  `icone_download` varchar(255) DEFAULT NULL,
  `telegram` text DEFAULT NULL,
  `instagram` text DEFAULT NULL,
  `whatsapp` text DEFAULT NULL,
  `suporte` text DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `sublogo` text DEFAULT NULL,
  `facebookads` text DEFAULT NULL,
  `rodapelogo` text DEFAULT NULL,
  `favicon` text DEFAULT NULL,
  `googleAnalytics` text DEFAULT NULL,
  `minplay` int(11) DEFAULT NULL,
  `minsaque` double DEFAULT NULL,
  `maxsaque` int(11) DEFAULT 1000,
  `saque_automatico` int(11) NOT NULL,
  `rollover` int(11) DEFAULT NULL,
  `mindep` text DEFAULT NULL,
  `jackpot` int(11) DEFAULT NULL,
  `navbar` int(11) DEFAULT NULL,
  `numero_jackpot` int(11) DEFAULT NULL,
  `jackpot_custom` text DEFAULT NULL,
  `cor_padrao` varchar(45) NOT NULL,
  `background_padrao` varchar(50) DEFAULT NULL,
  `custom_css` longtext NOT NULL,
  `texto` varchar(45) NOT NULL,
  `img_seo` text DEFAULT NULL,
  `keyword` text DEFAULT NULL,
  `marquee` text DEFAULT NULL,
  `status_topheader` int(11) NOT NULL DEFAULT 0,
  `cor_topheader` varchar(48) DEFAULT '#ed1c24',
  `niveisbau` text DEFAULT NULL,
  `qntsbaus` int(11) DEFAULT NULL,
  `nvlbau` int(11) DEFAULT NULL,
  `pessoasbau` int(11) DEFAULT NULL,
  `tema` int(11) DEFAULT NULL,
  `versao_app_android` text DEFAULT NULL,
  `versao_app_ios` text DEFAULT NULL,
  `mensagem_app` text DEFAULT NULL,
  `link_app_android` text DEFAULT NULL,
  `link_app_ios` text DEFAULT NULL,
  `broadcast` text DEFAULT NULL,
  `limite_saque` int(11) DEFAULT 0,
  `sort_jackpot` int(11) DEFAULT 1,
  `carregamento_img` varchar(255) DEFAULT NULL,
  `imagem_fundo` text DEFAULT NULL,
  `snow_flakes` text DEFAULT NULL,
  `painel_rolante` text DEFAULT NULL,
  `atendimento` text DEFAULT NULL,
  `jackpot_ativado` int(11) NOT NULL DEFAULT 1,
  `limite_de_chaves` int(11) NOT NULL DEFAULT 1,
  `facebook` varchar(255) DEFAULT NULL,
  `baixar_ativado` int(11) DEFAULT NULL,
  `topIconColor` varchar(255) DEFAULT NULL,
  `topBgColor` varchar(255) DEFAULT NULL,
  `tema_popup_inicio` int(11) NOT NULL DEFAULT 1,
  `slogan` text DEFAULT NULL,
  `comissao_gerente` varchar(255) DEFAULT NULL,
  `google_client_id` varchar(255) DEFAULT NULL,
  `google_client_secret` varchar(255) DEFAULT NULL,
  `google_login_status` int(1) DEFAULT 0,
  `menu_navbar_ativo` tinyint(1) NOT NULL DEFAULT 1,
  `natal_theme_active` tinyint(1) DEFAULT 0,
  `oss_url` varchar(255) DEFAULT '',
  `LuckyWheel` int(11) DEFAULT 10000,
  `userRankSwitch` tinyint(1) NOT NULL DEFAULT 0,
  `language` varchar(10) DEFAULT 'pt-BR',
  `phoneCode` varchar(16) DEFAULT '+55',
  `currency` varchar(10) DEFAULT 'BRL',
  `timezone` varchar(64) DEFAULT 'Etc/GMT+3',
  `regionName` varchar(64) DEFAULT 'Brasil',
  `regionId` int(11) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `config`
--

INSERT INTO `config` (`id`, `nome`, `nome_site`, `descricao`, `grupoplataforma`, `logo`, `avatar`, `download`, `icone_download`, `telegram`, `instagram`, `whatsapp`, `suporte`, `email`, `sublogo`, `facebookads`, `rodapelogo`, `favicon`, `googleAnalytics`, `minplay`, `minsaque`, `maxsaque`, `saque_automatico`, `rollover`, `mindep`, `jackpot`, `navbar`, `numero_jackpot`, `jackpot_custom`, `cor_padrao`, `background_padrao`, `custom_css`, `texto`, `img_seo`, `keyword`, `marquee`, `status_topheader`, `cor_topheader`, `niveisbau`, `qntsbaus`, `nvlbau`, `pessoasbau`, `tema`, `versao_app_android`, `versao_app_ios`, `mensagem_app`, `link_app_android`, `link_app_ios`, `broadcast`, `limite_saque`, `sort_jackpot`, `carregamento_img`, `imagem_fundo`, `snow_flakes`, `painel_rolante`, `atendimento`, `jackpot_ativado`, `limite_de_chaves`, `facebook`, `baixar_ativado`, `topIconColor`, `topBgColor`, `tema_popup_inicio`, `slogan`, `comissao_gerente`, `google_client_id`, `google_client_secret`, `google_login_status`, `menu_navbar_ativo`, `natal_theme_active`, `oss_url`, `LuckyWheel`, `userRankSwitch`, `language`, `phoneCode`, `currency`, `timezone`, `regionName`, `regionId`) VALUES
(1, '67F.fun', '', 'Plataforma de entretenimento digital com sistema de sorteios e prêmios regulamentados.', 'Grupo W1', 'img_69b0992657eb17.80700029.png', 'img_691a00e0a64526.45519973.png', 'img_69331174c51e88.69663002.avif', 'img_691a00e0a63db3.64271709.png', 'https://telegram.me/', 'https://instagram.com/', 'https://telegram.me/', 't', '', '', 'ID AQUI', NULL, 'img_69b09ab0d53902.17015090.png', 'ID AQUI', 1, 20, 2000, 10, 20, '10', 0, 1, 2, 'jackpot_692de48d801b4.avif', '#0096DD', '#010e24', '', '', '154504365733.png', 'tigrinho pagante, jogo estilo tigrinho, jogo tipo tigrinho que paga, chinesa pagante, slot pagante, slots online pagantes, plataforma pagante, plataforma que paga no pix, jogo pagante 2025, caça-níquel pagante, jogo de prêmio online, jogo que paga via pix, jogo que paga de verdade, site que paga no pix, jogos online que pagam, plataforma de prêmios, slots brasileiros pagantes, slots confiáveis, jogo parecido com tigrinho, tigrinho alternativo, jogo de prêmios instantâneos, jogo de celular que paga, app que paga via pix, jogo rápido que paga, ganhar dinheiro jogando, jogo de prêmios reais, plataforma de slots pagantes, slot da chinesa, chinesinha pagante, site de prêmios via pix, plataforma pix pagante, saque rápido pix, depósito via pix instantâneo, jogos virais que pagam, plataforma pixsorte, pixsorte pagante, pixsorte confiável, pixsorte funciona', '✈️✈️ Clique no canal:  Telegram📱📱Baixe o site oficial do APP:  67f.fun ❤️Bônus de primeiro depósito para novos usuários R$3777❤️🎁B6nus de convite: R$ 10 por pessoa🎁🎁Convide amigos, compartilhe e ganhe dinheiro! Comissao até 2%🎁Tempo de chuva do envelope: AS00H 15H 20H E22H🎁👉👉Passo a passo: Visite → Eventos/Promog6es → Indique um amigo → Receba/Recolha tudo.', 0, '#0096dd', '60', 92, 5, 1, 21, '1.0.0.1', '1.0.0.2', 'MENSAGEM POPUP', 'https://google.com/', 'https://google.com/', 'PHILLYPS LINDO', 10, 4, 'img_693312273cfea7.12146031.avif', 'img_67e3328b16f8f2.80383522.png', 'img_68f6ca9661a404.35196359.png', '', 'https://telegram.me/', 1, 5, 'https://instagram.com/', 1, '', '', 1, '<p><span style=\\\"color: #e03e2d;\\\">Cadastre-se e ganhe R$8.888</span><br><span style=\\\"color: #e03e2d;\\\">Convide outras pessoas e ganhe R$ 1 milh&atilde;o!</span></p>', '2', NULL, NULL, 0, 1, 0, '', 10000, 1, 'pt-BR', '+55', 'BRL', 'Etc/GMT+3', 'Brasil', 1);

-- --------------------------------------------------------

--
-- Estrutura para tabela `cupom`
--

CREATE TABLE `cupom` (
  `id` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `valor` int(11) NOT NULL,
  `range_valor` varchar(50) DEFAULT NULL,
  `qtd_insert` int(11) NOT NULL DEFAULT 0 COMMENT 'Quantidade inicial de cupons criados',
  `status` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0: inativo / 1: ativo'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `cupom_usados`
--

CREATE TABLE `cupom_usados` (
  `id` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `codigo` varchar(100) DEFAULT NULL,
  `valor` int(11) NOT NULL COMMENT 'Valor do depósito que gerou o bônus',
  `bonus` int(11) NOT NULL DEFAULT 0 COMMENT 'Valor do bônus recebido',
  `data_registro` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `cupom_usados`
--

INSERT INTO `cupom_usados` (`id`, `id_user`, `codigo`, `valor`, `bonus`, `data_registro`) VALUES
(3, 648054358, 'qweqwe123', 0, 6, '2026-02-01 19:46:12'),
(4, 113283503, 'qweqwe123', 0, 8, '2026-02-01 20:10:10');

-- --------------------------------------------------------

--
-- Estrutura para tabela `customer_feedback`
--

CREATE TABLE `customer_feedback` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `type` tinyint(4) NOT NULL,
  `content` text NOT NULL,
  `file_link` varchar(255) DEFAULT NULL,
  `source` varchar(50) NOT NULL,
  `status` varchar(20) DEFAULT 'pending',
  `reply` text DEFAULT NULL,
  `reply_time` datetime DEFAULT NULL,
  `reply_read` tinyint(1) DEFAULT 0,
  `reply_by` int(11) DEFAULT NULL,
  `bonus_amount` decimal(10,2) DEFAULT 0.00,
  `bonus_received` tinyint(1) DEFAULT 0,
  `bonus_received_at` datetime DEFAULT NULL,
  `client_time` bigint(20) NOT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `drakon`
--

CREATE TABLE `drakon` (
  `id` int(11) NOT NULL,
  `agent_code` varchar(64) NOT NULL,
  `agent_token` varchar(128) NOT NULL,
  `agent_secret_key` varchar(128) NOT NULL,
  `api_base` varchar(255) NOT NULL DEFAULT 'https://gator.drakon.casino/api/v1',
  `ativo` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `drakon`
--

INSERT INTO `drakon` (`id`, `agent_code`, `agent_token`, `agent_secret_key`, `api_base`, `ativo`, `created_at`, `updated_at`) VALUES
(1, 'Agent Code', 'Agent Token', 'Agent Secret', 'https://gator.drakon.casino/api/v1', 0, '2025-11-13 16:19:19', '2026-01-08 22:32:25');

-- --------------------------------------------------------

--
-- Estrutura para tabela `expfypay`
--

CREATE TABLE `expfypay` (
  `id` int(11) NOT NULL,
  `url` varchar(255) DEFAULT NULL,
  `client_id` text DEFAULT NULL,
  `client_secret` text DEFAULT NULL,
  `atualizado` varchar(45) DEFAULT NULL,
  `ativo` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Despejando dados para a tabela `expfypay`
--

INSERT INTO `expfypay` (`id`, `url`, `client_id`, `client_secret`, `atualizado`, `ativo`) VALUES
(1, 'https://pro.expfypay.com', '0', '0', '0', 0);

-- --------------------------------------------------------

--
-- Estrutura para tabela `festival`
--

CREATE TABLE `festival` (
  `id` int(11) NOT NULL,
  `titulo` varchar(255) NOT NULL,
  `criado_em` timestamp NOT NULL DEFAULT current_timestamp(),
  `img` text NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Despejando dados para a tabela `festival`
--

INSERT INTO `festival` (`id`, `titulo`, `criado_em`, `img`, `status`) VALUES
(1, 'Festival 1', '2025-03-25 20:58:37', '/holiday/14/apng_top_jr.png', 1),
(2, 'Festival 2', '2025-03-25 20:58:37', '/holiday/14/btn_zc1_jr.avif', 0),
(3, 'Festival 3', '2025-03-25 20:58:54', '/holiday/14/btn_zc1_jr2.avif', 1),
(4, 'Festival 4', '2025-03-25 20:59:06', '/holiday/14/h5_zs_jr.avif', 1),
(5, 'Festival 5', '2025-03-25 20:59:16', '/holiday/14/h5_zs_jr2.avif', 1),
(6, 'Festival 6', '2025-03-25 20:59:25', '/holiday/14/h5_zs_jr3.avif', 1),
(7, 'Festival 7', '2025-03-25 20:59:34', '/holiday/14/icon_btm_jr.avif', 1),
(8, 'Festival 8', '2025-03-25 20:59:47', '/holiday/14/icon_btm_jr2.avif', 1),
(9, 'Festival 9', '2025-03-25 20:59:59', '/holiday/14/icon_btm_jr3.avif', 1);

-- --------------------------------------------------------

--
-- Estrutura para tabela `financeiro`
--

CREATE TABLE `financeiro` (
  `id` int(11) NOT NULL,
  `usuario` int(11) DEFAULT NULL,
  `saldo` decimal(10,2) DEFAULT NULL,
  `bonus` decimal(10,2) DEFAULT NULL,
  `saldo_afiliados` decimal(10,2) NOT NULL DEFAULT 0.00
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Despejando dados para a tabela `financeiro`
--

INSERT INTO `financeiro` (`id`, `usuario`, `saldo`, `bonus`, `saldo_afiliados`) VALUES
(1, 113283503, 0.00, 0.00, 0.00),
(2, 947034130, 0.00, 0.00, 0.00),
(3, 952711563, 0.00, 0.00, 0.00),
(4, 289076556, 0.00, 0.00, 0.00),
(5, 573167536, 0.00, 0.00, 0.00),
(6, 301935667, 0.00, 0.00, 0.00),
(7, 513656697, 0.00, 0.00, 0.00),
(8, 421780863, 0.00, 0.00, 0.00),
(9, 608502678, 0.00, 0.00, 0.00),
(10, 709584639, 0.00, 0.00, 0.00),
(11, 662875782, 0.00, 0.00, 0.00),
(12, 154462672, 0.00, 0.00, 0.00),
(13, 875597501, 0.00, 0.00, 0.00),
(14, 731074918, 0.00, 0.00, 0.00),
(15, 935479658, 0.00, 0.00, 0.00),
(16, 728991276, 0.00, 0.00, 0.00),
(17, 285660919, 0.00, 0.00, 0.00),
(18, 530383209, 0.00, 0.00, 0.00),
(19, 924554086, 0.00, 0.00, 0.00),
(20, 418269937, 0.00, 0.00, 0.00),
(21, 333804087, 0.00, 0.00, 0.00),
(22, 169072476, 0.00, 0.00, 0.00),
(23, 149247148, 0.00, 0.00, 0.00),
(24, 876241481, 0.00, 0.00, 0.00),
(25, 447719744, 0.00, 0.00, 0.00),
(26, 198785760, 0.00, 0.00, 0.00),
(27, 746849185, 0.00, 0.00, 0.00),
(28, 670063123, 0.00, 0.00, 0.00),
(29, 604920085, 0.00, 0.00, 0.00),
(30, 384328063, 0.00, 0.00, 0.00),
(31, 810944149, 0.00, 0.00, 0.00),
(32, 913273631, 0.00, 0.00, 0.00),
(33, 287595183, 0.00, 0.00, 0.00),
(34, 906881970, 0.00, 0.00, 0.00),
(35, 826196173, 0.00, 0.00, 0.00),
(36, 597381632, 0.00, 0.00, 0.00),
(37, 932846933, 0.00, 0.00, 0.00),
(38, 177230681, 0.00, 0.00, 0.00),
(39, 997171642, 0.00, 0.00, 0.00),
(40, 698627313, 0.00, 0.00, 0.00),
(41, 877549363, 0.00, 0.00, 0.00),
(42, 352169046, 0.00, 0.00, 0.00),
(43, 932405544, 0.00, 0.00, 0.00),
(44, 916550068, 0.00, 0.00, 0.00),
(45, 516443314, 0.00, 0.00, 0.00),
(46, 809845112, 0.00, 0.00, 0.00),
(47, 139051308, 0.00, 0.00, 0.00),
(48, 966588497, 0.00, 0.00, 0.00),
(49, 168451190, 0.00, 0.00, 0.00),
(50, 241143557, 0.00, 0.00, 0.00),
(51, 807187103, 0.00, 0.00, 0.00),
(52, 209520723, 0.00, 0.00, 0.00),
(53, 856247855, 0.00, 0.00, 0.00),
(54, 297516530, 0.00, 0.00, 0.00),
(55, 882568296, 0.00, 0.00, 0.00),
(56, 216162593, 0.00, 0.00, 0.00),
(57, 920905628, 0.00, 0.00, 0.00);

-- --------------------------------------------------------

--
-- Estrutura para tabela `floats`
--

CREATE TABLE `floats` (
  `id` int(11) NOT NULL,
  `titulo` varchar(255) NOT NULL,
  `redirect` text DEFAULT NULL,
  `tipo` int(11) NOT NULL DEFAULT 0,
  `criado_em` timestamp NOT NULL DEFAULT current_timestamp(),
  `img` text NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci ROW_FORMAT=DYNAMIC;

--
-- Despejando dados para a tabela `floats`
--

INSERT INTO `floats` (`id`, `titulo`, `redirect`, `tipo`, `criado_em`, `img`, `status`) VALUES
(1, 'telegram', 'https://t.me/+gRUqN0rePso2Zjdh', 0, '2024-06-28 21:10:47', '1751754375_1748553603_31699a44-b7df-45c3-af88-67a8470823a6.gif', 1),
(2, 'Recomend....', 'https://salmaopg.com/home/promote?active=promoteShare', 1, '2024-06-28 21:08:02', '1772640835_2 (1).png', 0),
(3, 'Float 3', 'https://t.me/+gRUqN0rePso2Zjdh', 0, '2024-06-28 21:08:02', '1772640807_aa.gif', 0),
(4, 'Recomend ami....', 'https://t.me/+UAm75hSq-Xo5MDcx', 3, '2024-06-28 21:08:02', '1751754330_1747774137_ActiveImg8075480511658811 (1).gif', 0);

-- --------------------------------------------------------

--
-- Estrutura para tabela `games`
--

CREATE TABLE `games` (
  `id` int(11) NOT NULL,
  `game_code` text NOT NULL,
  `game_name` text NOT NULL,
  `banner` text DEFAULT NULL,
  `status` int(11) NOT NULL,
  `provider` text DEFAULT NULL,
  `popular` int(11) NOT NULL DEFAULT 0,
  `type` text DEFAULT NULL,
  `game_type` varchar(255) DEFAULT NULL,
  `api` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Despejando dados para a tabela `games`
--

INSERT INTO `games` (`id`, `game_code`, `game_name`, `banner`, `status`, `provider`, `popular`, `type`, `game_type`, `api`) VALUES
(1, 'fortune-tiger', 'Fortune Tiger', 'https://igamewin.com/storage/igamewin/1.webp', 1, 'PGSoft', 1, 'slot', 'ELECTRONIC', 'PGCLONE'),
(2, 'fortune-mouse', 'Fortune Mouse', 'https://igamewin.com/storage/igamewin/2.webp', 1, 'PGSoft', 1, 'slot', 'ELECTRONIC', 'PGCLONE'),
(3, 'fortune-ox', 'Fortune Ox', 'https://igamewin.com/storage/igamewin/3.webp', 1, 'PGSoft', 1, 'slot', 'ELECTRONIC', 'PGCLONE'),
(4, 'dragon-hatch', 'Dragon Hatch', 'https://igamewin.com/storage/igamewin/6.webp', 1, 'PGSoft', 1, 'slot', 'ELECTRONIC', 'igamewin'),
(5, 'ganesha-gold', 'Ganesha Gold', 'https://igamewin.com/storage/igamewin/7.webp', 1, 'PGSoft', 1, 'slot', 'ELECTRONIC', 'PGCLONE'),
(6, 'double-fortune', 'Double Fortune', 'https://igamewin.com/storage/igamewin/8.webp', 1, 'PGSoft', 1, 'slot', 'ELECTRONIC', 'PGCLONE'),
(7, 'the-great-icescape', 'The Great Icescape', 'https://igamewin.com/storage/igamewin/9.webp', 1, 'PGSoft', 1, 'slot', 'ELECTRONIC', 'igamewin'),
(8, 'piggy-gold', 'Piggy Gold', 'https://igamewin.com/storage/igamewin/10.webp', 1, 'PGSoft', 1, 'slot', 'ELECTRONIC', 'igamewin'),
(9, 'jungle-delight', 'Jungle Delight', 'https://igamewin.com/storage/igamewin/11.webp', 1, 'PGSoft', 1, 'slot', 'ELECTRONIC', 'PGCLONE'),
(10, 'captains-bounty', 'Captain’s Bounty', 'https://igamewin.com/storage/igamewin/12.webp', 1, 'PGSoft', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(11, 'mahjong-ways', 'Mahjong Ways', 'https://igamewin.com/storage/igamewin/14.webp', 1, 'PGSoft', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(12, 'gem-saviour-conquest', 'Gem Saviour Conquest', 'https://igamewin.com/storage/igamewin/15.webp', 1, 'PGSoft', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(13, 'bikini-paradise', 'Bikini Paradise', 'https://igamewin.com/storage/igamewin/17.webp', 1, 'PGSoft', 1, 'slot', 'ELECTRONIC', 'PGCLONE'),
(14, 'ganesha-fortune', 'Ganesha Fortune', 'https://igamewin.com/storage/igamewin/20.webp', 1, 'PGSoft', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(15, 'phoenix-rises', 'Phoenix Rises', 'https://igamewin.com/storage/igamewin/21.webp', 1, 'PGSoft', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(16, 'wild-fireworks', 'Wild Fireworks', 'https://igamewin.com/storage/igamewin/22.webp', 1, 'PGSoft', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(17, 'jewels-prosper', 'Jewels of Prosperity', 'https://igamewin.com/storage/igamewin/26.webp', 1, 'PGSoft', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(18, 'galactic-gems', 'Galactic Gems', 'https://igamewin.com/storage/igamewin/27.webp', 1, 'PGSoft', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(19, 'gdn-ice-fire', 'Guardians of Ice & Fire', 'https://igamewin.com/storage/igamewin/28.webp', 1, 'PGSoft', 1, 'slot', 'ELECTRONIC', 'PGCLONE'),
(20, 'wild-bandito', 'Wild Bandito', 'https://igamewin.com/storage/igamewin/29.webp', 1, 'PGSoft', 1, 'slot', 'ELECTRONIC', 'PGCLONE'),
(21, 'candy-bonanza', 'Candy Bonanza', 'https://igamewin.com/storage/igamewin/30.webp', 1, 'PGSoft', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(22, 'majestic-ts', 'Majestic Treasures', 'https://igamewin.com/storage/igamewin/31.webp', 1, 'PGSoft', 1, 'slot', 'ELECTRONIC', 'PGCLONE'),
(23, 'crypt-fortune', 'Raider Jane\'s Crypt of Fortune', 'https://igamewin.com/storage/igamewin/32.webp', 1, 'PGSoft', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(24, 'sprmkt-spree', 'Supermarket Spree', 'https://igamewin.com/storage/igamewin/33.webp', 1, 'PGSoft', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(25, 'lgd-monkey-kg', 'Legendary Monkey King', 'https://igamewin.com/storage/igamewin/34.webp', 1, 'PGSoft', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(26, 'spirit-wonder', 'Spirit of Wonder', 'https://igamewin.com/storage/igamewin/35.webp', 1, 'PGSoft', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(27, 'emoji-riches', 'Emoji Riches', 'https://igamewin.com/storage/igamewin/36.webp', 1, 'PGSoft', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(28, 'garuda-gems', 'Garuda Gems', 'https://igamewin.com/storage/igamewin/37.webp', 1, 'PGSoft', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(29, 'dest-sun-moon', 'Destiny of Sun & Moon', 'https://igamewin.com/storage/igamewin/38.webp', 1, 'PGSoft', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(30, 'btrfly-blossom', 'Butterfly Blossom', 'https://igamewin.com/storage/igamewin/39.webp', 1, 'PGSoft', 1, 'slot', 'ELECTRONIC', 'PGCLONE'),
(31, 'rooster-rbl', 'Rooster Rumble', 'https://igamewin.com/storage/igamewin/40.webp', 1, 'PGSoft', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(32, 'battleground', 'Battleground Royale', 'https://igamewin.com/storage/igamewin/41.webp', 1, 'PGSoft', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(33, 'fortune-rabbit', 'Fortune Rabbit', 'https://igamewin.com/storage/igamewin/42.webp', 1, 'PGSoft', 1, 'slot', 'ELECTRONIC', 'PGCLONE'),
(34, 'midas-fortune', 'Midas Fortune', 'https://igamewin.com/storage/igamewin/44.webp', 1, 'PGSoft', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(35, 'dreams-of-macau', 'Dreams of Macau', 'https://igamewin.com/storage/igamewin/75.webp', 1, 'PGSoft', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(36, 'lucky-neko', 'Lucky Neko', 'https://igamewin.com/storage/igamewin/77.webp', 1, 'PGSoft', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(37, 'sct-cleopatra', 'Secrets of Cleopatra', 'https://igamewin.com/storage/igamewin/78.webp', 1, 'PGSoft', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(38, 'thai-river', 'Thai River Wonders', 'https://igamewin.com/storage/igamewin/79.webp', 1, 'PGSoft', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(39, 'opera-dynasty', 'Opera Dynasty', 'https://igamewin.com/storage/igamewin/80.webp', 1, 'PGSoft', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(40, 'bali-vacation', 'Bali Vacation', 'https://igamewin.com/storage/igamewin/81.webp', 1, 'PGSoft', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(41, 'jack-frosts', 'Jack Frost\'s Winter', 'https://igamewin.com/storage/igamewin/82.webp', 1, 'PGSoft', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(42, 'rise-of-apollo', 'Rise of Apollo', 'https://igamewin.com/storage/igamewin/83.webp', 1, 'PGSoft', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(43, 'mermaid-riches', 'Mermaid Riches', 'https://igamewin.com/storage/igamewin/84.webp', 1, 'PGSoft', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(44, 'crypto-gold', 'Crypto Gold', 'https://igamewin.com/storage/igamewin/85.webp', 1, 'PGSoft', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(45, 'heist-stakes', 'Heist Stakes', 'https://igamewin.com/storage/igamewin/86.webp', 1, 'PGSoft', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(46, 'ways-of-qilin', 'Ways of the Qilin', 'https://igamewin.com/storage/igamewin/87.webp', 1, 'PGSoft', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(47, 'buffalo-win', 'Buffalo Win', 'https://igamewin.com/storage/igamewin/88.webp', 1, 'PGSoft', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(48, 'jurassic-kdm', 'Jurassic Kingdom', 'https://igamewin.com/storage/igamewin/90.webp', 1, 'PGSoft', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(49, 'cocktail-nite', 'Cocktail Nights', 'https://igamewin.com/storage/igamewin/94.webp', 1, 'PGSoft', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(50, 'mask-carnival', 'Mask Carnival', 'https://igamewin.com/storage/igamewin/95.webp', 1, 'PGSoft', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(51, 'queen-banquet', 'The Queen\'s Banquet', 'https://igamewin.com/storage/igamewin/96.webp', 1, 'PGSoft', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(52, 'speed-winner', 'Speed Winner', 'https://igamewin.com/storage/igamewin/97.webp', 1, 'PGSoft', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(53, 'win-win-fpc', 'Win Win Fish Prawn Crab', 'https://igamewin.com/storage/igamewin/98.webp', 1, 'PGSoft', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(54, 'lucky-piggy', 'Lucky Piggy', 'https://igamewin.com/storage/igamewin/99.webp', 1, 'PGSoft', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(55, 'fortune-dragon', 'Fortune Dragon', 'https://igamewin.com/storage/igamewin/135.webp', 1, 'PGSoft', 1, 'slot', 'ELECTRONIC', 'PGCLONE'),
(56, 'cash-mania', 'Cash Mania', 'https://igamewin.com/storage/igamewin/136.webp', 1, 'PGSoft', 1, 'slot', 'ELECTRONIC', 'PGCLONE'),
(57, 'gemstones-gold', 'Gemstones Gold', 'https://igamewin.com/storage/igamewin/137.webp', 1, 'PGSoft', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(58, 'dragon-hatch2', 'Dragon Hatch 2', 'https://igamewin.com/storage/igamewin/138.webp', 1, 'PGSoft', 1, 'slot', 'ELECTRONIC', 'PGCLONE'),
(59, 'werewolf-hunt', 'Werewolf\'s Hunt', 'https://igamewin.com/storage/igamewin/139.webp', 1, 'PGSoft', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(60, 'wild-ape-3258', 'Wild Ape #3258', 'https://igamewin.com/storage/igamewin/140.webp', 1, 'PGSoft', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(61, 'mafia-mayhem', 'Mafia Mayhem', 'https://igamewin.com/storage/igamewin/142.webp', 1, 'PGSoft', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(62, 'forge-wealth', 'Forge of Wealth', 'https://igamewin.com/storage/igamewin/143.webp', 1, 'PGSoft', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(63, 'wild-heist-co', 'Wild Heist Cashout', 'https://igamewin.com/storage/igamewin/144.webp', 1, 'PGSoft', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(64, 'ninja-raccoon', 'Ninja Raccoon Frenzy', 'https://igamewin.com/storage/igamewin/145.webp', 1, 'PGSoft', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(65, 'gladi-glory', 'Gladiator\'s Glory', 'https://igamewin.com/storage/igamewin/146.webp', 1, 'PGSoft', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(66, 'cruise-royale', 'Cruise Royale', 'https://igamewin.com/storage/igamewin/148.webp', 1, 'PGSoft', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(67, 'fruity-candy', 'Fruity Candy', 'https://igamewin.com/storage/igamewin/149.webp', 1, 'PGSoft', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(68, 'lucky-clover', 'Lucky Clover Lady', 'https://igamewin.com/storage/igamewin/150.webp', 1, 'PGSoft', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(69, 'spr-golf-drive', 'Super Golf Drive', 'https://igamewin.com/storage/igamewin/151.webp', 1, 'PGSoft', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(70, 'myst-spirits', 'Mystical Spirits', 'https://igamewin.com/storage/igamewin/152.webp', 1, 'PGSoft', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(71, 'songkran-spl', 'Songkran Splash', 'https://igamewin.com/storage/igamewin/153.webp', 1, 'PGSoft', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(72, 'hawaiian-tiki', 'Hawaiian Tiki', 'https://igamewin.com/storage/igamewin/154.webp', 1, 'PGSoft', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(73, 'rave-party-fvr', 'Rave Party Fever', 'https://igamewin.com/storage/igamewin/155.webp', 1, 'PGSoft', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(74, 'alchemy-gold', 'Alchemy Gold', 'https://igamewin.com/storage/igamewin/157.webp', 1, 'PGSoft', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(75, 'totem-wonders', 'Totem Wonders', 'https://igamewin.com/storage/igamewin/158.webp', 1, 'PGSoft', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(76, 'legend-perseus', 'Legend of Perseus', 'https://igamewin.com/storage/igamewin/159.webp', 1, 'PGSoft', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(77, 'wild-bounty-sd', 'Wild Bounty Showdown', 'https://igamewin.com/storage/igamewin/160.webp', 1, 'PGSoft', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(78, 'wild-coaster', 'Wild Coaster', 'https://igamewin.com/storage/igamewin/161.webp', 1, 'PGSoft', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(79, 'pinata-wins', 'Pinata Wins', 'https://igamewin.com/storage/igamewin/328.webp', 1, 'PGSoft', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(80, 'mystic-potions', 'Mystic Potion', 'https://igamewin.com/storage/igamewin/329.webp', 1, 'PGSoft', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(81, 'anubis-wrath', 'Anubis Wrath', 'https://igamewin.com/storage/igamewin/330.webp', 1, 'PGSoft', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(82, 'zombie-outbrk', 'Zombie Outbreak', 'https://igamewin.com/storage/igamewin/331.webp', 1, 'PGSoft', 1, 'slot', 'ELECTRONIC', 'PGCLONE'),
(83, 'chicky-run', 'Chicky Run', 'https://igamewin.com/storage/igamewin/332.webp', 1, 'PGSoft', 1, 'slot', 'ELECTRONIC', 'PGCLONE'),
(84, 'shark-hunter', 'Shark Hunter', 'https://igamewin.com/storage/igamewin/334.webp', 1, 'PGSoft', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(85, 'yakuza-honor', 'Yakuza Honor', 'https://igamewin.com/storage/igamewin/335.webp', 1, 'PGSoft', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(86, 'wings-iguazu', 'Wings of Iguazu', 'https://igamewin.com/storage/igamewin/336.webp', 1, 'PGSoft', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(87, 'three-cz-pigs', 'Three Crazy Piggies', 'https://igamewin.com/storage/igamewin/337.webp', 1, 'PGSoft', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(88, 'oishi-delights', 'Oishi Delights', 'https://igamewin.com/storage/igamewin/338.webp', 1, 'PGSoft', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(89, 'museum-mystery', 'Museum Mystery', 'https://igamewin.com/storage/igamewin/339.webp', 1, 'PGSoft', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(90, 'rio-fantasia', 'Rio Fantasia', 'https://igamewin.com/storage/igamewin/340.webp', 1, 'PGSoft', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(91, 'choc-deluxe', 'Chocolate Deluxe', 'https://igamewin.com/storage/igamewin/341.webp', 1, 'PGSoft', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(92, 'fortune-snake', 'Fortune Snake', 'https://igamewin.com/storage/igamewin/344.webp', 1, 'PGSoft', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(93, 'mr-treas-fort', 'Mr. Treasure\'s Fortune', 'https://igamewin.com/storage/igamewin/10584.webp', 1, 'PGSoft', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(94, 'incan-wonders', 'Incan Wonders', 'https://igamewin.com/storage/igamewin/10585.webp', 1, 'PGSoft', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(95, 'graffiti-rush', 'Graffiti Rush', 'https://igamewin.com/storage/igamewin/10589.webp', 1, 'PGSoft', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(96, 'hip-hop-panda', 'Hip Hop Panda', 'https://igamewin.com/storage/igamewin/112.webp', 1, 'PGSoft', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(97, 'candy-burst', 'Candy Burst', 'https://igamewin.com/storage/igamewin/16.webp', 1, 'PGSoft', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(98, 'dragon-tiger-luck', 'Dragon Tiger Luck', 'https://igamewin.com/storage/igamewin/104.webp', 1, 'PGSoft', 1, 'slot', 'ELECTRONIC', 'PGCLONE'),
(99, 'fortune-gods', 'Fortune Gods', 'https://igamewin.com/storage/igamewin/10858.webp', 1, 'PGSoft', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(100, 'santas-gift-rush', 'Santa\'s Gift Rush', 'https://igamewin.com/storage/igamewin/10859.webp', 1, 'PGSoft', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(101, 'emperors-favour', 'Emperor\'s Favour', 'https://igamewin.com/storage/igamewin/10860.webp', 1, 'PGSoft', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(102, 'ninja-vs-samurai', 'Ninja vs Samurai', 'https://igamewin.com/storage/igamewin/10861.webp', 1, 'PGSoft', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(103, 'medusa', 'Medusa', 'https://igamewin.com/storage/igamewin/10863.webp', 1, 'PGSoft', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(104, 'mr-hallow-win', 'Mr. Hallow-Win', 'https://igamewin.com/storage/igamewin/10865.webp', 1, 'PGSoft', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(105, 'honey-trap-of-diao-chan', 'Honey Trap of Diao Chan', 'https://igamewin.com/storage/igamewin/10866.webp', 1, 'PGSoft', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(106, 'plushie-frenzy', 'Plushie Frenzy', 'https://igamewin.com/storage/igamewin/10867.webp', 1, 'PGSoft', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(107, 'journey-to-the-wealth', 'Journey to the Wealth', 'https://igamewin.com/storage/igamewin/10869.webp', 1, 'PGSoft', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(108, 'legend-of-hou-yi', 'Legend of Hou Yi', 'https://igamewin.com/storage/igamewin/10870.webp', 1, 'PGSoft', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(109, 'muay-thai-champion', 'Muay Thai Champion', 'https://igamewin.com/storage/igamewin/10871.webp', 1, 'PGSoft', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(110, 'prosperity-lion', 'Prosperity Lion', 'https://igamewin.com/storage/igamewin/10872.webp', 1, 'PGSoft', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(111, 'reel-love', 'Reel Love', 'https://igamewin.com/storage/igamewin/10874.webp', 1, 'PGSoft', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(112, 'shaolin-soccer', 'Shaolin Soccer', 'https://igamewin.com/storage/igamewin/10875.webp', 1, 'PGSoft', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(113, 'flirting-scholar', 'Flirting Scholar', 'https://igamewin.com/storage/igamewin/10880.webp', 1, 'PGSoft', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(114, 'circus-delight', 'Circus Delight', 'https://igamewin.com/storage/igamewin/10881.webp', 1, 'PGSoft', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(115, 'dragon-legend', 'Dragon Legend', 'https://igamewin.com/storage/igamewin/10890.webp', 1, 'PGSoft', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(116, 'leprechaun-riches', 'Leprechaun Riches', 'https://igamewin.com/storage/igamewin/10892.webp', 1, 'PGSoft', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(117, 'doomsday-rampg', 'Doomsday Rampage', 'https://igamewin.com/storage/igamewin/10931.webp', 1, 'PGSoft', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(118, 'asgardian-rs', 'Asgardian Rising', 'https://igamewin.com/storage/igamewin/11983.jpg', 1, 'PGSoft', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(119, 'bakery-bonanza', 'Bakery Bonanza', 'https://igamewin.com/storage/igamewin/11984.jfif', 1, 'PGSoft', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(120, 'gem-saviour-sword', 'Gem Saviour Sword', 'https://igamewin.com/storage/igamewin/11985.png', 1, 'PGSoft', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(121, 'diner-delights', 'Diner Delights', 'https://igamewin.com/storage/igamewin/11986.png', 1, 'PGSoft', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(122, 'geisha-revenge', 'Geisha\'s Revenge', 'https://igamewin.com/storage/igamewin/11987.png', 1, 'PGSoft', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(123, 'mahjong-ways2', 'Mahjong Ways 2', 'https://igamewin.com/storage/igamewin/11988.png', 1, 'PGSoft', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(124, 'oriental-pros', 'Oriental Prosperity', 'https://igamewin.com/storage/igamewin/11989.webp', 1, 'PGSoft', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(125, 'prosper-ftree', 'Prosperity Fortune Tree', 'https://igamewin.com/storage/igamewin/11990.jfif', 1, 'PGSoft', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(126, 'tree-of-fortune', 'Tree of Fortune', 'https://igamewin.com/storage/igamewin/11991.jpg', 1, 'PGSoft', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(127, 'ult-striker', 'Ultimate Striker', 'https://igamewin.com/storage/igamewin/11992.jpeg', 1, 'PGSoft', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(128, 'win-win-won', 'Win Win Won', 'https://igamewin.com/storage/igamewin/11993.webp', 1, 'PGSoft', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(129, 'hood-vs-wolf', 'Hood vs Wolf', 'https://igamewin.com/storage/igamewin/10891.webp', 1, 'PGSoft', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(130, 'safari-wilds', 'Safari Wilds', 'https://igamewin.com/storage/igamewin/11995.png', 1, 'PGSoft', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(131, 'treasures-aztec', 'Treasures of Aztec', 'https://igamewin.com/storage/igamewin/11996.webp', 1, 'PGSoft', 1, 'slot', 'ELECTRONIC', 'PGCLONE'),
(132, 'tsar-treasures', 'Tsar Treasures', 'https://igamewin.com/storage/igamewin/11997.jfif', 1, 'PGSoft', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(133, 'vampires-charm', 'Vampire\'s Charm', 'https://igamewin.com/storage/igamewin/11998.webp', 1, 'PGSoft', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(134, 'egypts-book-mystery', 'Egypt\'s Book Mystery', 'https://igamewin.com/storage/igamewin/11999.webp', 1, 'PGSoft', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(135, 'genies-wishes', 'Genie\'s 3 Wishes', 'https://igamewin.com/storage/igamewin/12000.jfif', 1, 'PGSoft', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(136, 'queen-bounty', 'Queen of Bounty', 'https://igamewin.com/storage/igamewin/12001.webp', 1, 'PGSoft', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(137, 'vs20clustcol', 'Sweet Kingdom', 'https://igamewin.com/storage/igamewin/171.webp', 1, 'PRAGMATIC', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(138, 'vswaysspltsym', 'Dwarf & Dragon', 'https://igamewin.com/storage/igamewin/172.webp', 1, 'PRAGMATIC', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(139, 'vs20shootstars', 'Heroic Spins', 'https://igamewin.com/storage/igamewin/173.webp', 1, 'PRAGMATIC', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(140, 'vs20olympgate', 'Gates of Olympus', 'https://igamewin.com/storage/igamewin/174.webp', 1, 'PRAGMATIC', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(141, 'vs10bbbonanza', 'Big Bass Bonanza', 'https://igamewin.com/storage/igamewin/175.webp', 1, 'PRAGMATIC', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(142, 'vs20sugarrush', 'Sugar Rush', 'https://igamewin.com/storage/igamewin/176.webp', 1, 'PRAGMATIC', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(143, 'vs20fruitsw', 'Sweet Bonanza', 'https://igamewin.com/storage/igamewin/177.webp', 1, 'PRAGMATIC', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(144, 'vs20starlight', 'Starlight Princess', 'https://igamewin.com/storage/igamewin/178.webp', 1, 'PRAGMATIC', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(145, 'vs20doghouse', 'The Dog House', 'https://igamewin.com/storage/igamewin/180.webp', 1, 'PRAGMATIC', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(146, 'vs5aztecgems', 'Aztec Gems', 'https://igamewin.com/storage/igamewin/183.webp', 1, 'PRAGMATIC', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(147, 'vs25goldparty', 'Gold Party', 'https://igamewin.com/storage/igamewin/184.webp', 1, 'PRAGMATIC', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(148, 'vs10floatdrg', 'Floating Dragon', 'https://igamewin.com/storage/igamewin/185.webp', 1, 'PRAGMATIC', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(149, 'vs40wildwest', 'Wild West Gold', 'https://igamewin.com/storage/igamewin/186.webp', 1, 'PRAGMATIC', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(150, 'vs1tigers', 'Triple Tigers', 'https://igamewin.com/storage/igamewin/187.webp', 1, 'PRAGMATIC', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(151, 'vs1dragon8', '888 Dragons', 'https://igamewin.com/storage/igamewin/188.webp', 1, 'PRAGMATIC', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(152, 'vs5joker', 'Joker\'s Jewels', 'https://igamewin.com/storage/igamewin/189.webp', 1, 'PRAGMATIC', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(153, 'vs20midas2', 'Hand of Midas 2', 'https://igamewin.com/storage/igamewin/190.webp', 1, 'PRAGMATIC', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(154, 'vs5hotbmult', 'Hot To Burn Multiplier', 'https://igamewin.com/storage/igamewin/191.webp', 1, 'PRAGMATIC', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(155, 'vswaysbkingasc', 'Buffalo King Untamed Megaways', 'https://igamewin.com/storage/igamewin/192.webp', 1, 'PRAGMATIC', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(156, 'vs20medusast', 'Medusa\'s Stone', 'https://igamewin.com/storage/igamewin/194.webp', 1, 'PRAGMATIC', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(157, 'vs20devilic', 'Devilicious', 'https://igamewin.com/storage/igamewin/195.webp', 1, 'PRAGMATIC', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(158, 'vs25wildies', 'Wildies', 'https://igamewin.com/storage/igamewin/196.webp', 1, 'PRAGMATIC', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(159, 'vswaysloki', 'Revenge of Loki Megaways', 'https://igamewin.com/storage/igamewin/197.webp', 1, 'PRAGMATIC', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(160, 'vs10bbbrlact', 'Big Bass Bonanza - Reel Action', 'https://igamewin.com/storage/igamewin/198.webp', 1, 'PRAGMATIC', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(161, 'vswaysjapan', 'Starlight Princess Pachi', 'https://igamewin.com/storage/igamewin/199.webp', 1, 'PRAGMATIC', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(162, 'vs20heartcleo', 'Heart of Cleopatra', 'https://igamewin.com/storage/igamewin/200.webp', 1, 'PRAGMATIC', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(163, 'vs20fruitswx', 'Sweet Bonanza 1000', 'https://igamewin.com/storage/igamewin/201.webp', 1, 'PRAGMATIC', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(164, 'vs20fortbon', 'Fruity Treats', 'https://igamewin.com/storage/igamewin/202.webp', 1, 'PRAGMATIC', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(165, 'vs20candybltz2', 'Candy Blitz Bombs', 'https://igamewin.com/storage/igamewin/203.webp', 1, 'PRAGMATIC', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(166, 'vswayshexhaus', 'Rise of Pyramids', 'https://igamewin.com/storage/igamewin/204.webp', 1, 'PRAGMATIC', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(167, 'vswaysmegahays', 'Barnyard Megahays Megaways', 'https://igamewin.com/storage/igamewin/205.webp', 1, 'PRAGMATIC', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(168, 'vs20stickypos', 'Ice Lobster', 'https://igamewin.com/storage/igamewin/206.webp', 1, 'PRAGMATIC', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(169, 'vs20sbpnudge', 'Aztec Powernudge', 'https://igamewin.com/storage/igamewin/207.webp', 1, 'PRAGMATIC', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(170, 'vs20bison', 'Release the Bison', 'https://igamewin.com/storage/igamewin/208.webp', 1, 'PRAGMATIC', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(171, 'vs10bburger', 'Big Burger Load it up with Xtra Cheese', 'https://igamewin.com/storage/igamewin/209.webp', 1, 'PRAGMATIC', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(172, 'vs20portals', 'Fire Portals', 'https://igamewin.com/storage/igamewin/211.webp', 1, 'PRAGMATIC', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(173, 'vs20sugarrushx', 'Sugar Rush 1000', 'https://igamewin.com/storage/igamewin/212.webp', 1, 'PRAGMATIC', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(174, 'vs20stckwldsc', 'Pot of Fortune', 'https://igamewin.com/storage/igamewin/213.webp', 1, 'PRAGMATIC', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(175, 'vs20doghouse2', 'The Dog House - Dog or Alive', 'https://igamewin.com/storage/igamewin/214.webp', 1, 'PRAGMATIC', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(176, 'vs40stckwldlvl', 'Ripe Rewards', 'https://igamewin.com/storage/igamewin/217.webp', 1, 'PRAGMATIC', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(177, 'vs10frontrun', 'Front Runner Odds On', 'https://igamewin.com/storage/igamewin/219.webp', 1, 'PRAGMATIC', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(178, 'vs20powerpays', 'Red Hot Luck', 'https://igamewin.com/storage/igamewin/220.webp', 1, 'PRAGMATIC', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(179, 'vs20bigdawgs', 'The Big Dawgs', 'https://igamewin.com/storage/igamewin/221.webp', 1, 'PRAGMATIC', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(180, 'vswaysfirewmw', 'Blazing Wilds Megaways', 'https://igamewin.com/storage/igamewin/222.webp', 1, 'PRAGMATIC', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(181, 'vs20treesot', 'Trees of Treasure', 'https://igamewin.com/storage/igamewin/223.webp', 1, 'PRAGMATIC', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(182, 'vswaysalterego', 'The Alter Ego', 'https://igamewin.com/storage/igamewin/224.webp', 1, 'PRAGMATIC', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(183, 'vs10bbfloats', 'Big Bass Floats my Boat', 'https://igamewin.com/storage/igamewin/225.webp', 1, 'PRAGMATIC', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(184, 'vswaysmegareel', 'Pompeii Megareels Megaways', 'https://igamewin.com/storage/igamewin/226.webp', 1, 'PRAGMATIC', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(185, 'vs20multiup', 'Wheel O\'Gold', 'https://igamewin.com/storage/igamewin/227.webp', 1, 'PRAGMATIC', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(186, 'vs10strawberry', 'Strawberry Cocktail', 'https://igamewin.com/storage/igamewin/228.webp', 1, 'PRAGMATIC', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(187, 'vs20mmmelon', 'Mighty Munching Melons', 'https://igamewin.com/storage/igamewin/229.webp', 1, 'PRAGMATIC', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(188, 'vs20olympdice', 'Gates of Olympus Dice', 'https://igamewin.com/storage/igamewin/230.webp', 1, 'PRAGMATIC', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(189, 'vs20clustext', 'Gears of Horus', 'https://igamewin.com/storage/igamewin/231.webp', 1, 'PRAGMATIC', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(190, 'vs20mergedwndw', 'Blade & Fangs', 'https://igamewin.com/storage/igamewin/232.webp', 1, 'PRAGMATIC', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(191, 'vs20yotdk', 'Year Of The Dragon King', 'https://igamewin.com/storage/igamewin/233.webp', 1, 'PRAGMATIC', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(192, 'vswaysexpandng', 'Castle of Fire', 'https://igamewin.com/storage/igamewin/234.webp', 1, 'PRAGMATIC', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(193, 'vs10luckfort', 'Good Luck & Good Fortune', 'https://igamewin.com/storage/igamewin/235.webp', 1, 'PRAGMATIC', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(194, 'vs20loksriches', 'Loki\'s Riches', 'https://igamewin.com/storage/igamewin/236.webp', 1, 'PRAGMATIC', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(195, 'vswaysfltdrgny', 'Floating Dragon New Year Festival Ultra Megaways Hold & Spin', 'https://igamewin.com/storage/igamewin/238.webp', 1, 'PRAGMATIC', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(196, 'vswaystimber', 'Timber Stacks', 'https://igamewin.com/storage/igamewin/239.webp', 1, 'PRAGMATIC', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(197, 'vs20sugarnudge', 'Sugar Supreme Powernudge', 'https://igamewin.com/storage/igamewin/240.webp', 1, 'PRAGMATIC', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(198, 'vs40demonpots', 'Demon Pots', 'https://igamewin.com/storage/igamewin/242.webp', 1, 'PRAGMATIC', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(199, 'vs40rainbowr', 'Rainbow Reels', 'https://igamewin.com/storage/igamewin/243.webp', 1, 'PRAGMATIC', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(200, 'vs20dhcluster', 'Twilight Princess', 'https://igamewin.com/storage/igamewin/244.webp', 1, 'PRAGMATIC', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(201, 'vswaysstrlght', 'Fortunes of Aztec', 'https://igamewin.com/storage/igamewin/245.webp', 1, 'PRAGMATIC', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(202, 'vs20gravity', 'Gravity Bonanza', 'https://igamewin.com/storage/igamewin/246.webp', 1, 'PRAGMATIC', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(203, 'vs40infwild', 'Infective Wild', 'https://igamewin.com/storage/igamewin/247.webp', 1, 'PRAGMATIC', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(204, 'vswaystut', 'Book of Tut Megaways', 'https://igamewin.com/storage/igamewin/248.webp', 1, 'PRAGMATIC', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(205, 'vs10gdchalleng', '8 Golden Dragon Challenge', 'https://igamewin.com/storage/igamewin/249.webp', 1, 'PRAGMATIC', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(206, 'vswaysftropics', 'Frozen Tropics', 'https://igamewin.com/storage/igamewin/250.webp', 1, 'PRAGMATIC', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(207, 'vswaysincwnd', 'Gold Oasis', 'https://igamewin.com/storage/igamewin/251.webp', 1, 'PRAGMATIC', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(208, 'vswaysbbhas', 'Big Bass Hold & Spinner Megaways', 'https://igamewin.com/storage/igamewin/252.webp', 1, 'PRAGMATIC', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(209, 'vs10bookviking', 'Book of Vikings', 'https://igamewin.com/storage/igamewin/253.webp', 1, 'PRAGMATIC', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(210, 'vs20piggybank', 'Piggy Bankers', 'https://igamewin.com/storage/igamewin/254.webp', 1, 'PRAGMATIC', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(211, 'vs50jucier', 'Sky Bounty', 'https://igamewin.com/storage/igamewin/256.webp', 1, 'PRAGMATIC', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(212, 'vs243nudge4gold', 'Hellvis Wild', 'https://igamewin.com/storage/igamewin/258.webp', 1, 'PRAGMATIC', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(213, 'vs20forge', 'Forge of Olympus', 'https://igamewin.com/storage/igamewin/260.webp', 1, 'PRAGMATIC', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(214, 'vs20lvlup', 'Pub Kings', 'https://igamewin.com/storage/igamewin/261.webp', 1, 'PRAGMATIC', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(215, 'vs20earthquake', 'Cyclops Smash', 'https://igamewin.com/storage/igamewin/262.webp', 1, 'PRAGMATIC', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(216, 'vs10trail', 'Mustang Trail', 'https://igamewin.com/storage/igamewin/263.webp', 1, 'PRAGMATIC', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(217, 'vs20splmystery', 'Spellbinding Mystery', 'https://igamewin.com/storage/igamewin/264.webp', 1, 'PRAGMATIC', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(218, 'vs20hstgldngt', 'Heist for the Golden Nuggets', 'https://igamewin.com/storage/igamewin/265.webp', 1, 'PRAGMATIC', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(219, 'vs20procount', 'Wisdom of Athena', 'https://igamewin.com/storage/igamewin/266.webp', 1, 'PRAGMATIC', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(220, 'vs20beefed', 'Fat Panda', 'https://igamewin.com/storage/igamewin/268.webp', 1, 'PRAGMATIC', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(221, 'vs10fdrasbf', 'Floating Dragon - Dragon Boat Festival', 'https://igamewin.com/storage/igamewin/269.webp', 1, 'PRAGMATIC', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(222, 'vs9outlaw', 'Pirates Pub ', 'https://igamewin.com/storage/igamewin/270.webp', 1, 'PRAGMATIC', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(223, 'vs20clustwild', 'Sticky Bees', 'https://igamewin.com/storage/igamewin/271.webp', 1, 'PRAGMATIC', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(224, 'vs20jewelparty', 'Jewel Rush', 'https://igamewin.com/storage/igamewin/272.webp', 1, 'PRAGMATIC', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(225, 'vs20lampinf', 'Lamp Of Infinity', 'https://igamewin.com/storage/igamewin/273.webp', 1, 'PRAGMATIC', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(226, 'vs25spotz', 'Knight Hot Spotz', 'https://igamewin.com/storage/igamewin/274.webp', 1, 'PRAGMATIC', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(227, 'vs20stickywild', 'Wild Bison Charge', 'https://igamewin.com/storage/igamewin/275.webp', 1, 'PRAGMATIC', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(228, 'vs10jnmntzma', 'Jane Hunter and the Mask of Montezuma', 'https://igamewin.com/storage/igamewin/277.webp', 1, 'PRAGMATIC', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(229, 'vswaysrsm', 'Wild Celebrity Bus Megaways', 'https://igamewin.com/storage/igamewin/278.webp', 1, 'PRAGMATIC', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(230, 'vs20excalibur', 'Excalibur Unleashed', 'https://igamewin.com/storage/igamewin/279.webp', 1, 'PRAGMATIC', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(231, 'vs20hotzone', 'African Elephant', 'https://igamewin.com/storage/igamewin/280.webp', 1, 'PRAGMATIC', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(232, 'vs10gizagods', 'Gods of Giza', 'https://igamewin.com/storage/igamewin/281.webp', 1, 'PRAGMATIC', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(233, 'vswaysredqueen', 'The Red Queen', 'https://igamewin.com/storage/igamewin/282.webp', 1, 'PRAGMATIC', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(234, 'vs20sknights', 'The Knight King', 'https://igamewin.com/storage/igamewin/283.webp', 1, 'PRAGMATIC', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(235, 'vs20mvwild', 'Jasmine Dreams', 'https://igamewin.com/storage/igamewin/284.webp', 1, 'PRAGMATIC', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(236, 'vs20mochimon', 'Mochimon', 'https://igamewin.com/storage/igamewin/285.webp', 1, 'PRAGMATIC', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(237, 'vswaysultrcoin', 'Cowboy Coins', 'https://igamewin.com/storage/igamewin/286.webp', 1, 'PRAGMATIC', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(238, 'vs20doghousemh', 'The Dog House Multihold', 'https://igamewin.com/storage/igamewin/287.webp', 1, 'PRAGMATIC', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(239, 'vs20pistols', 'Wild West Duels', 'https://igamewin.com/storage/igamewin/288.webp', 1, 'PRAGMATIC', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(240, 'vs12tropicana', 'Club Tropicana', 'https://igamewin.com/storage/igamewin/289.webp', 1, 'PRAGMATIC', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(241, 'vs25archer', 'Fire Archer', 'https://igamewin.com/storage/igamewin/290.webp', 1, 'PRAGMATIC', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(242, 'vs20mammoth', 'Mammoth Gold Megaways', 'https://igamewin.com/storage/igamewin/291.webp', 1, 'PRAGMATIC', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(243, 'vs10fisheye', 'Fish Eye', 'https://igamewin.com/storage/igamewin/292.webp', 1, 'PRAGMATIC', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(244, 'vswaysmorient', 'Mystery of the Orient', 'https://igamewin.com/storage/igamewin/293.webp', 1, 'PRAGMATIC', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(245, 'vs25spgldways', 'Secret City Gold', 'https://igamewin.com/storage/igamewin/294.webp', 1, 'PRAGMATIC', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(246, 'vs20drgbless', 'Dragon Hero', 'https://igamewin.com/storage/igamewin/295.webp', 1, 'PRAGMATIC', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(247, 'vs20clspwrndg', 'Sweet Powernudge', 'https://igamewin.com/storage/igamewin/296.webp', 1, 'PRAGMATIC', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(248, 'vswayspizza', 'PIZZA PIZZA PIZZA', 'https://igamewin.com/storage/igamewin/297.webp', 1, 'PRAGMATIC', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(249, 'vs20dugems', 'Hot Pepper', 'https://igamewin.com/storage/igamewin/298.webp', 1, 'PRAGMATIC', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(250, 'vs25rlbank', 'Reel Banks', 'https://igamewin.com/storage/igamewin/299.webp', 1, 'PRAGMATIC', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(251, 'vswaysfuryodin', 'Fury of Odin Megaways', 'https://igamewin.com/storage/igamewin/300.webp', 1, 'PRAGMATIC', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(252, 'vs12bbbxmas', 'Bigger Bass Blizzard - Christmas Catch', 'https://igamewin.com/storage/igamewin/301.webp', 1, 'PRAGMATIC', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(253, 'vs10snakeeyes', 'Snakes & Ladders - Snake Eyes', 'https://igamewin.com/storage/igamewin/302.webp', 1, 'PRAGMATIC', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(254, 'vs20lcount', 'Gems of Serengeti', 'https://igamewin.com/storage/igamewin/303.webp', 1, 'PRAGMATIC', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(255, 'vs20theights', 'Towering Fortunes', 'https://igamewin.com/storage/igamewin/305.webp', 1, 'PRAGMATIC', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(256, 'vs20swordofares', 'Sword of Ares', 'https://igamewin.com/storage/igamewin/306.webp', 1, 'PRAGMATIC', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(257, 'vs10bbkir', 'Big Bass Bonanza - Keeping it Reel', 'https://igamewin.com/storage/igamewin/307.webp', 1, 'PRAGMATIC', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(258, 'vs20mtreasure', 'Pirate Golden Age', 'https://igamewin.com/storage/igamewin/309.webp', 1, 'PRAGMATIC', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(259, 'vs10tut', 'Book Of Tut Respin', 'https://igamewin.com/storage/igamewin/310.webp', 1, 'PRAGMATIC', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(260, 'vswaysfltdrg', 'Floating Dragon Hold & Spin Megaways', 'https://igamewin.com/storage/igamewin/311.webp', 1, 'PRAGMATIC', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(261, 'vs20mparty', 'Wild Hop & Drop', 'https://igamewin.com/storage/igamewin/312.webp', 1, 'PRAGMATIC', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(262, 'vs10crownfire', 'Crown of Fire', 'https://igamewin.com/storage/igamewin/313.webp', 1, 'PRAGMATIC', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(263, 'vs20sugarcoins', 'Viking Forge', 'https://igamewin.com/storage/igamewin/315.webp', 1, 'PRAGMATIC', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(264, 'vswaysbook', 'Book of Golden Sands', 'https://igamewin.com/storage/igamewin/316.webp', 1, 'PRAGMATIC', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(265, 'vs20octobeer', 'Octobeer Fortunes', 'https://igamewin.com/storage/igamewin/317.webp', 1, 'PRAGMATIC', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(266, 'vs5strh', 'Striking Hot 5', 'https://igamewin.com/storage/igamewin/318.webp', 1, 'PRAGMATIC', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(267, 'vs40firehot', 'Fire Hot 40', 'https://igamewin.com/storage/igamewin/319.webp', 1, 'PRAGMATIC', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(268, 'vs5firehot', 'Fire Hot 5', 'https://igamewin.com/storage/igamewin/320.webp', 1, 'PRAGMATIC', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(269, 'vs20fh', 'Fire Hot 20', 'https://igamewin.com/storage/igamewin/321.webp', 1, 'PRAGMATIC', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(270, 'vs100firehot', 'Fire Hot 100', 'https://igamewin.com/storage/igamewin/322.webp', 1, 'PRAGMATIC', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(271, 'vs40hotburnx', 'Hot To Burn Extreme', 'https://igamewin.com/storage/igamewin/324.webp', 1, 'PRAGMATIC', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(272, 'vs20trswild2', 'Black Bull', 'https://igamewin.com/storage/igamewin/325.webp', 1, 'PRAGMATIC', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(273, 'vs20wolfie', 'Greedy Wolf', 'https://igamewin.com/storage/igamewin/326.webp', 1, 'PRAGMATIC', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(274, 'vs1024gmayhem', 'Gorilla Mayhem', 'https://igamewin.com/storage/igamewin/327.webp', 1, 'PRAGMATIC', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(275, 'vs5luckytig', 'Tigre Sortudo', 'https://igamewin.com/storage/igamewin/343.webp', 1, 'PRAGMATIC', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(276, 'treasure-raiders', 'TREASURE RAIDERS', 'https://igamewin.com/storage/igamewin/10263.webp', 1, 'slot-fachai', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(277, 'golden-genie', 'GOLDEN GENIE', 'https://igamewin.com/storage/igamewin/10264.webp', 1, 'slot-fachai', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(278, 'crazy-buffalo', 'CRAZY BUFFALO', 'https://igamewin.com/storage/igamewin/10265.webp', 1, 'slot-fachai', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(279, 'sugar-bang-bang', 'SUGAR BANG BANG', 'https://igamewin.com/storage/igamewin/10266.webp', 1, 'slot-fachai', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(280, 'grand-blue', 'GRAND BLUE', 'https://igamewin.com/storage/igamewin/10267.webp', 1, 'slot-fachai', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(281, 'merge-magic', 'MERGE MAGIC', 'https://igamewin.com/storage/igamewin/10268.webp', 1, 'slot-fachai', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(282, 'chinese-new-year-2', 'CHINESE NEW YEAR 2', 'https://igamewin.com/storage/igamewin/10269.webp', 1, 'slot-fachai', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(283, 'super-elements', 'SUPER ELEMENTS', 'https://igamewin.com/storage/igamewin/10270.webp', 1, 'slot-fachai', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(284, 'magic-beans', 'MAGIC BEANS', 'https://igamewin.com/storage/igamewin/10271.webp', 1, 'slot-fachai', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(285, 'golden-panther', 'GOLDEN PANTHER', 'https://igamewin.com/storage/igamewin/10272.webp', 1, 'slot-fachai', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(286, 'three-little-pigs', 'THREE LITTLE PIGS', 'https://igamewin.com/storage/igamewin/10273.webp', 1, 'slot-fachai', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(288, 'win-win-neko', 'WIN WIN NEKO', 'https://igamewin.com/storage/igamewin/10275.webp', 1, 'slot-fachai', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(289, 'chinese-new-year', 'CHINESE NEW YEAR', 'https://igamewin.com/storage/igamewin/10276.webp', 1, 'slot-fachai', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(290, 'panda-dragon-boat', 'PANDA DRAGON BOAT', 'https://igamewin.com/storage/igamewin/10277.webp', 1, 'slot-fachai', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(291, 'luxury-golden-panther', 'LUXURY GOLDEN PANTHER', 'https://igamewin.com/storage/igamewin/10278.webp', 1, 'slot-fachai', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(292, 'gold-rush', 'GOLD RUSH', 'https://igamewin.com/storage/igamewin/10279.webp', 1, 'slot-fachai', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(293, 'fortune-koi', 'FORTUNE KOI', 'https://igamewin.com/storage/igamewin/10280.webp', 1, 'slot-fachai', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(294, 'animal-racing', 'ANIMAL RACING', 'https://igamewin.com/storage/igamewin/10281.webp', 1, 'slot-fachai', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(296, 'cowboys', 'COWBOYS', 'https://igamewin.com/storage/igamewin/10283.webp', 1, 'slot-fachai', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(297, 'da-le-men', 'DA LE MEN', 'https://igamewin.com/storage/igamewin/10284.webp', 1, 'slot-fachai', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(298, 'glory-of-rome', 'GLORY OF ROME', 'https://igamewin.com/storage/igamewin/10285.webp', 1, 'slot-fachai', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(299, 'war-of-the-universe', 'WAR OF THE UNIVERSE', 'https://igamewin.com/storage/igamewin/10286.webp', 1, 'slot-fachai', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(300, 'pong-pong-hu', 'PONG PONG HU', 'https://igamewin.com/storage/igamewin/10287.webp', 1, 'slot-fachai', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(301, 'legend-of-inca', 'LEGEND OF INCA', 'https://igamewin.com/storage/igamewin/12063.webp', 1, 'slot-fachai', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(302, 'zeus', 'ZEUS', 'https://igamewin.com/storage/igamewin/12064.webp', 1, 'slot-fachai', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(303, 'egypt-bonanza', 'EGYPT BONANZA', 'https://igamewin.com/storage/igamewin/12065.webp', 1, 'slot-fachai', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(304, 'chilihuahua', 'CHILIHUAHUA', 'https://igamewin.com/storage/igamewin/12066.webp', 1, 'slot-fachai', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(305, 'fortune-sheep', 'FORTUNE SHEEP', 'https://igamewin.com/storage/igamewin/12067.webp', 1, 'slot-fachai', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(306, 'jungle-bang-bang', 'JUNGLE BANG BANG', 'https://igamewin.com/storage/igamewin/12068.webp', 1, 'slot-fachai', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(307, 'phoenix-fever', 'PHOENIX FEVER', 'https://igamewin.com/storage/igamewin/12069.webp', 1, 'slot-fachai', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(308, 'sugar-bang-bang-2', 'SUGAR BANG BANG 2', 'https://igamewin.com/storage/igamewin/12070.webp', 1, 'slot-fachai', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(309, 'chinese-new-year-moreways', 'CHINESE NEW YEAR MOREWAYS', 'https://igamewin.com/storage/igamewin/12071.webp', 1, 'slot-fachai', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(310, 'fortune-goddess', 'FORTUNE GODDESS', 'https://igamewin.com/storage/igamewin/12074.webp', 1, 'slot-fachai', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(311, 'queen-of-inca', 'QUEEN OF INCA', 'https://igamewin.com/storage/igamewin/12075.webp', 1, 'slot-fachai', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(312, 'lucky-fortune-3X3', 'LUCKY FORTUNES 3X3', 'https://igamewin.com/storage/igamewin/12076.webp', 1, 'slot-fachai', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(313, 'treasure-cruise', 'TREASURE CRUISE', 'https://igamewin.com/storage/igamewin/12456.webp', 1, 'slot-fachai', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(314, 'hot-pot-party', 'HOT POT PARTY', 'https://igamewin.com/storage/igamewin/12457.webp', 1, 'slot-fachai', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(315, 'happy-duo-bao', 'HAPPY DUO BAO', 'https://igamewin.com/storage/igamewin/12458.webp', 1, 'slot-fachai', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(316, 'poker-win-2', 'POKER WIN 2', 'https://igamewin.com/storage/igamewin/12459.webp', 1, 'slot-fachai', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(317, 'sugar-bang-bang-plus', 'SUGAR BANG BANG PLUS', 'https://igamewin.com/storage/igamewin/12460.webp', 1, 'slot-fachai', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(318, 'dj-boom-boom', 'DJ BOOM BOOM', 'https://igamewin.com/storage/igamewin/12461.webp', 1, 'slot-fachai', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(319, 'muscle-fortune-cat', 'MUSCLE FORTUNE CAT', 'https://igamewin.com/storage/igamewin/12462.webp', 1, 'slot-fachai', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(320, '14087', 'POP POP CANDY', 'https://igamewin.com/storage/igamewin/10288.webp', 1, 'slot-jdb', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(321, '14086', 'Open Sesame Mega', 'https://igamewin.com/storage/igamewin/10289.webp', 1, 'slot-jdb', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(322, '14042', 'TREASURE BOWL', 'https://igamewin.com/storage/igamewin/10290.webp', 1, 'slot-jdb', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(323, '14085', 'FRUITY BONANZA', 'https://igamewin.com/storage/igamewin/10291.webp', 1, 'slot-jdb', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(324, '14083', 'COOCOO FARM', 'https://igamewin.com/storage/igamewin/10292.webp', 1, 'slot-jdb', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(325, '14082', 'Elemental Link Water', 'https://igamewin.com/storage/igamewin/10293.webp', 1, 'slot-jdb', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(326, '14080', 'ELEMENTAL LINK FIRE', 'https://igamewin.com/storage/igamewin/10294.webp', 1, 'slot-jdb', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(327, '14077', 'TRUMPCARD', 'https://igamewin.com/storage/igamewin/10295.webp', 1, 'slot-jdb', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(328, '14075', 'FORTUNE NEKO', 'https://igamewin.com/storage/igamewin/10296.webp', 1, 'slot-jdb', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(329, '14070', 'BOOK OF MYSTERY', 'https://igamewin.com/storage/igamewin/10297.webp', 1, 'slot-jdb', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(330, '14068', 'PROSPERITY TIGER', 'https://igamewin.com/storage/igamewin/10298.webp', 1, 'slot-jdb', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(331, '14065', 'BLOSSOM OF WEALTH', 'https://igamewin.com/storage/igamewin/10299.webp', 1, 'slot-jdb', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(332, '14064', 'BOOM FIESTA', 'https://igamewin.com/storage/igamewin/10300.webp', 1, 'slot-jdb', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(333, '14063', 'CRAZYBIG THREE DRAGONS', 'https://igamewin.com/storage/igamewin/10301.webp', 1, 'slot-jdb', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(334, '14060', 'LANTERN WEALTH', 'https://igamewin.com/storage/igamewin/10302.webp', 1, 'slot-jdb', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(335, '14061', 'MAYA GOLD', 'https://igamewin.com/storage/igamewin/10303.webp', 1, 'slot-jdb', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(336, '14059', 'MARVELOUS IV', 'https://igamewin.com/storage/igamewin/10304.webp', 1, 'slot-jdb', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(337, '14058', 'WONDER ELEPHANT', 'https://igamewin.com/storage/igamewin/10305.webp', 1, 'slot-jdb', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(338, '14055', 'KONG', 'https://igamewin.com/storage/igamewin/10306.webp', 1, 'slot-jdb', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(339, '14052', 'JUNGLE JUNGLE', 'https://igamewin.com/storage/igamewin/10307.webp', 1, 'slot-jdb', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(340, '14054', 'LUCKY DIAMOND', 'https://igamewin.com/storage/igamewin/10308.webp', 1, 'slot-jdb', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(341, '8047', 'WINNING MASK ?', 'https://igamewin.com/storage/igamewin/10310.webp', 1, 'slot-jdb', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(342, '14048', 'DOUBLE WILDS', 'https://igamewin.com/storage/igamewin/10311.webp', 1, 'slot-jdb', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(343, '14047', 'MONEYBAGS MAN', 'https://igamewin.com/storage/igamewin/10312.webp', 1, 'slot-jdb', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(344, '14043', 'GOLDEN DISCO', 'https://igamewin.com/storage/igamewin/10313.webp', 1, 'slot-jdb', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(345, '14045', 'Super Niubi Deluxe', 'https://igamewin.com/storage/igamewin/10314.webp', 1, 'slot-jdb', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(346, '14040', 'PIRATE TREASURE', 'https://igamewin.com/storage/igamewin/10316.webp', 1, 'slot-jdb', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(347, '14039', 'FORTUNE TREASURE', 'https://igamewin.com/storage/igamewin/10317.webp', 1, 'slot-jdb', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(348, '14038', 'EGYPT TREASURE', 'https://igamewin.com/storage/igamewin/10318.webp', 1, 'slot-jdb', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(349, '14034', 'GO LAI FU', 'https://igamewin.com/storage/igamewin/10319.webp', 1, 'slot-jdb', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(350, '8050', 'FORTUNE HORSE', 'https://igamewin.com/storage/igamewin/10320.webp', 1, 'slot-jdb', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(351, '14027', '777ORIENT', 'https://igamewin.com/storage/igamewin/10321.webp', 1, 'slot-jdb', 0, 'slot', 'ELECTRONIC', 'igamewin');
INSERT INTO `games` (`id`, `game_code`, `game_name`, `banner`, `status`, `provider`, `popular`, `type`, `game_type`, `api`) VALUES
(352, '8048', 'OPEN SESAME ?', 'https://igamewin.com/storage/igamewin/10322.webp', 1, 'slot-jdb', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(353, '14094', 'Bull Treasure', 'https://igamewin.com/storage/igamewin/12077.webp', 1, 'slot-jdb', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(354, '14041', 'MJOLNIR', 'https://igamewin.com/storage/igamewin/12078.webp', 1, 'slot-jdb', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(355, '14084', 'CAISHEN COMING', 'https://igamewin.com/storage/igamewin/12079.webp', 1, 'slot-jdb', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(356, '14067', 'GLAMOROUS GIRL', 'https://igamewin.com/storage/igamewin/12080.webp', 1, 'slot-jdb', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(357, '14053', 'SPINDRIFT ?', 'https://igamewin.com/storage/igamewin/12081.webp', 1, 'slot-jdb', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(358, '14050', 'SPINDRIFT', 'https://igamewin.com/storage/igamewin/12082.webp', 1, 'slot-jdb', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(359, '8015', 'MOONLIGHT TREASURE', 'https://igamewin.com/storage/igamewin/12083.webp', 1, 'slot-jdb', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(360, '8017', 'NEW YEAR', 'https://igamewin.com/storage/igamewin/12084.webp', 1, 'slot-jdb', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(361, '8020', 'OPEN SESAME ?', 'https://igamewin.com/storage/igamewin/12085.webp', 1, 'slot-jdb', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(362, '8022', 'MAHJONG', 'https://igamewin.com/storage/igamewin/12086.webp', 1, 'slot-jdb', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(363, '8006', 'FORMOSA BEAR', 'https://igamewin.com/storage/igamewin/12087.webp', 1, 'slot-jdb', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(364, '15001', 'ROOSTER IN LOVE', 'https://igamewin.com/storage/igamewin/12088.webp', 1, 'slot-jdb', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(365, '8003', 'WINNING MASK ?', 'https://igamewin.com/storage/igamewin/12089.webp', 1, 'slot-jdb', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(366, '8021', 'BANANA SAGA', 'https://igamewin.com/storage/igamewin/12090.webp', 1, 'slot-jdb', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(367, '14098', 'FRUITY BONANZA COMBO', 'https://igamewin.com/storage/igamewin/12091.webp', 1, 'slot-jdb', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(368, '14093', 'Magic Ace WILD LOCk', 'https://igamewin.com/storage/igamewin/12092.webp', 1, 'slot-jdb', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(369, '14095', 'Fortune Jewel', 'https://igamewin.com/storage/igamewin/12093.webp', 1, 'slot-jdb', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(370, '14097', 'FISHING FEVER X-HUGE™', 'https://igamewin.com/storage/igamewin/12094.webp', 1, 'slot-jdb', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(371, '14099', 'POP POP CANDY 1000', 'https://igamewin.com/storage/igamewin/12095.webp', 1, 'slot-jdb', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(374, 'losToros', 'Los Toros', 'https://igamewin.com/storage/igamewin/10109.webp', 1, 'slot-popok', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(375, 'mrFirstForune', 'Mr. First Lucky Wheel', 'https://igamewin.com/storage/igamewin/10110.webp', 1, 'slot-popok', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(376, 'hotAngels', 'Hot Angels', 'https://igamewin.com/storage/igamewin/10111.webp', 1, 'slot-popok', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(377, 'goldOfEgypt', 'Gold of Egypt', 'https://igamewin.com/storage/igamewin/10112.webp', 1, 'slot-popok', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(378, 'luckyJungle', 'Lucky Jungle 1024', 'https://igamewin.com/storage/igamewin/10113.webp', 1, 'slot-popok', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(379, 'incredibleGenie', 'Incredible Genie', 'https://igamewin.com/storage/igamewin/10114.webp', 1, 'slot-popok', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(380, 'royalFlush', 'Royal Flash', 'https://igamewin.com/storage/igamewin/10115.webp', 1, 'slot-popok', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(381, 'vikingsMystery', 'Vikings Mystery', 'https://igamewin.com/storage/igamewin/10116.webp', 1, 'slot-popok', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(382, 'milkyFarm', 'Milky Farm', 'https://igamewin.com/storage/igamewin/10117.webp', 1, 'slot-popok', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(383, 'ageOfVikings', 'Age of Vikings', 'https://igamewin.com/storage/igamewin/10118.webp', 1, 'slot-popok', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(384, 'luckySmile', 'Lucky Smile', 'https://igamewin.com/storage/igamewin/10119.webp', 1, 'slot-popok', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(385, 'pokiWild', 'Poki Wild', 'https://igamewin.com/storage/igamewin/10120.webp', 1, 'slot-popok', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(386, 'wildQueen', 'Wild Queen', 'https://igamewin.com/storage/igamewin/10121.webp', 1, 'slot-popok', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(387, 'valentinesDay', 'Happy Valentines Day', 'https://igamewin.com/storage/igamewin/10122.webp', 1, 'slot-popok', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(388, 'hohoho', 'Ho Ho Ho', 'https://igamewin.com/storage/igamewin/10123.webp', 1, 'slot-popok', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(389, 'blackBooz', 'Black Booze', 'https://igamewin.com/storage/igamewin/10124.webp', 1, 'slot-popok', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(390, 'magicTime', 'Magic Time', 'https://igamewin.com/storage/igamewin/10125.webp', 1, 'slot-popok', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(391, 'samurai', 'Ronin', 'https://igamewin.com/storage/igamewin/10126.webp', 1, 'slot-popok', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(393, 'flamingPhoenix', 'Flaming Phoenix', 'https://igamewin.com/storage/igamewin/10128.webp', 1, 'slot-popok', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(394, 'dragon', 'Era of Dragons', 'https://igamewin.com/storage/igamewin/10129.webp', 1, 'slot-popok', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(397, 'patricksDay', 'Lucky Patrick\'s Day', 'https://igamewin.com/storage/igamewin/11876.webp', 1, 'slot-popok', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(398, 'yummy', 'Yummy', 'https://igamewin.com/storage/igamewin/11877.webp', 1, 'slot-popok', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(399, 'lostTreasure', 'Lost Treasure', 'https://igamewin.com/storage/igamewin/11878.webp', 1, 'slot-popok', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(400, 'octopus', 'Octopus Life', 'https://igamewin.com/storage/igamewin/11879.webp', 1, 'slot-popok', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(401, 'richiPanda', 'Richy Panda', 'https://igamewin.com/storage/igamewin/11880.webp', 1, 'slot-popok', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(402, 'crazyPoki', 'Crazy Poki', 'https://igamewin.com/storage/igamewin/11881.webp', 1, 'slot-popok', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(403, 'alexander', 'Novel of Alexander', 'https://igamewin.com/storage/igamewin/11882.webp', 1, 'slot-popok', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(404, 'hugaChaga', 'Huga Chaga', 'https://igamewin.com/storage/igamewin/11883.webp', 1, 'slot-popok', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(405, 'happyEaster', 'Happy Easter', 'https://igamewin.com/storage/igamewin/11884.webp', 1, 'slot-popok', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(406, 'suleyman', 'Sultan\'s tale', 'https://igamewin.com/storage/igamewin/11885.webp', 1, 'slot-popok', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(407, 'ricoRabbit', 'Rico Rabbit', 'https://igamewin.com/storage/igamewin/11886.webp', 1, 'slot-popok', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(408, 'paradiseBeach', 'Paradise Beach', 'https://igamewin.com/storage/igamewin/11887.webp', 1, 'slot-popok', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(409, 'ricoTiger', 'Rico Tiger', 'https://igamewin.com/storage/igamewin/11888.webp', 1, 'slot-popok', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(410, 'fieryFruitsSixFold', 'Fiery Fruits Six Fold', 'https://igamewin.com/storage/igamewin/11889.webp', 1, 'slot-popok', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(411, 'alpacaPays', 'Alpaca Pays', 'https://igamewin.com/storage/igamewin/11890.webp', 1, 'slot-popok', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(412, 'chameleon', 'RicoDJ', 'https://igamewin.com/storage/igamewin/11891.webp', 1, 'slot-popok', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(413, 'lionsLegacy', 'Lions Legacy', 'https://igamewin.com/storage/igamewin/11892.webp', 1, 'slot-popok', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(414, 'tripleSevens', '777 Triple Seven', 'https://igamewin.com/storage/igamewin/11893.webp', 1, 'slot-popok', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(415, 'eyeOnTheMoney', 'Eye On The Money', 'https://igamewin.com/storage/igamewin/11894.webp', 1, 'slot-popok', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(416, 'bookOfSherlock', 'Book Of Sherlock', 'https://igamewin.com/storage/igamewin/11895.webp', 1, 'slot-popok', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(417, 'fiesta', 'Fiesta', 'https://igamewin.com/storage/igamewin/11896.webp', 1, 'slot-popok', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(418, 'papaiNoeldafortuna', 'Papai Noel da Fortuna', 'https://igamewin.com/storage/igamewin/11897.webp', 1, 'slot-popok', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(419, 'goDragon', 'Yo Dragon', 'https://igamewin.com/storage/igamewin/11898.webp', 1, 'slot-popok', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(420, 'babySumo', 'Sumo Baby', 'https://igamewin.com/storage/igamewin/11899.webp', 1, 'slot-popok', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(421, 'pokiBoo', 'Crazy Poki Boo', 'https://igamewin.com/storage/igamewin/11900.webp', 1, 'slot-popok', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(422, 'gorillaGoldRush', 'Rico Gorila', 'https://igamewin.com/storage/igamewin/11901.webp', 1, 'slot-popok', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(423, 'fortunePanda', 'Fortune Panda', 'https://igamewin.com/storage/igamewin/11902.webp', 1, 'slot-popok', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(424, 'spinosaurus', 'Spinosaurus', 'https://igamewin.com/storage/igamewin/11903.webp', 1, 'slot-popok', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(425, 'hajiwatAndKaragyoz', 'Hacivat and Karagoz', 'https://igamewin.com/storage/igamewin/11904.webp', 1, 'slot-popok', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(426, 'luckyClover', 'Lucky Clover', 'https://igamewin.com/storage/igamewin/11905.webp', 1, 'slot-popok', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(427, 'megaDiamond', 'Mega Diamond', 'https://igamewin.com/storage/igamewin/11906.webp', 1, 'slot-popok', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(428, 'piratesFortune', 'Pirate Fortune', 'https://igamewin.com/storage/igamewin/11907.webp', 1, 'slot-popok', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(429, 'wildShamRock', 'Wild Shamrock', 'https://igamewin.com/storage/igamewin/11908.webp', 1, 'slot-popok', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(430, 'whiteMustang', 'White Mustang', 'https://igamewin.com/storage/igamewin/11909.webp', 1, 'slot-popok', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(431, 'luckyJungle1024', 'Lucky Jungle 1024', 'https://igamewin.com/storage/igamewin/11910.webp', 1, 'slot-popok', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(432, 'volcanorising', 'Volcano Rising', 'https://igamewin.com/storage/igamewin/10443.webp', 1, 'slot-rubyplay', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(433, 'vegasnolimitwin', 'Vegas No Limit Wins', 'https://igamewin.com/storage/igamewin/10444.webp', 1, 'slot-rubyplay', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(434, 'elephantstampede', 'Elephant Stampede', 'https://igamewin.com/storage/igamewin/10445.webp', 1, 'slot-rubyplay', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(435, 'zeusdeluxe', 'Zeus Deluxe', 'https://igamewin.com/storage/igamewin/10446.webp', 1, 'slot-rubyplay', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(436, 'locohabanero', 'Loco Habanero', 'https://igamewin.com/storage/igamewin/10447.webp', 1, 'slot-rubyplay', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(437, 'newyearrising', 'New Year Rising', 'https://igamewin.com/storage/igamewin/10448.webp', 1, 'slot-rubyplay', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(438, 'wildthirst', 'Wild Thirst', 'https://igamewin.com/storage/igamewin/10449.webp', 1, 'slot-rubyplay', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(439, 'tikiblaze', 'Tiki Blaze', 'https://igamewin.com/storage/igamewin/10450.webp', 1, 'slot-rubyplay', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(440, 'madhitoasis', 'Mad Hit Oasis', 'https://igamewin.com/storage/igamewin/10451.webp', 1, 'slot-rubyplay', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(441, 'vegasrepeatwins', 'Vegas Repeat Wins', 'https://igamewin.com/storage/igamewin/10453.webp', 1, 'slot-rubyplay', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(442, 'speedysanta', 'Stampede Rush Speedy Santa', 'https://igamewin.com/storage/igamewin/10455.webp', 1, 'slot-rubyplay', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(443, 'zapotecgold', 'ZapOtec Gold', 'https://igamewin.com/storage/igamewin/10457.webp', 1, 'slot-rubyplay', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(444, 'diamondexplosionpatriot', 'Diamond Explosion Patriot', 'https://igamewin.com/storage/igamewin/10458.webp', 1, 'slot-rubyplay', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(445, 'riopleasure', 'Rio Pleasures', 'https://igamewin.com/storage/igamewin/10459.webp', 1, 'slot-rubyplay', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(446, 'bookofrich', 'Book of Riches', 'https://igamewin.com/storage/igamewin/10460.webp', 1, 'slot-rubyplay', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(447, 'gohighpanda', 'Go High Panda', 'https://igamewin.com/storage/igamewin/10461.webp', 1, 'slot-rubyplay', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(448, 'sugarrushfever', 'Sugar Rush Fever', 'https://igamewin.com/storage/igamewin/10462.webp', 1, 'slot-rubyplay', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(449, 'mhbearhaus', 'Mad Hit Bearhaus', 'https://igamewin.com/storage/igamewin/10463.webp', 1, 'slot-rubyplay', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(450, 'gohighfruit', 'Go High Fruit', 'https://igamewin.com/storage/igamewin/10464.webp', 1, 'slot-rubyplay', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(451, 'sheerluck', 'Sheerluck', 'https://igamewin.com/storage/igamewin/10465.webp', 1, 'slot-rubyplay', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(452, 'medusamoney', 'Medusa Money', 'https://igamewin.com/storage/igamewin/10466.webp', 1, 'slot-rubyplay', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(453, 'dragonprophecy', 'Dragon Prophecy', 'https://igamewin.com/storage/igamewin/10467.webp', 1, 'slot-rubyplay', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(454, 'hotheavy', 'Hot & Heavy', 'https://igamewin.com/storage/igamewin/10468.webp', 1, 'slot-rubyplay', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(455, 'ladyphoenix', 'Lady Phoenix', 'https://igamewin.com/storage/igamewin/10469.webp', 1, 'slot-rubyplay', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(456, 'gmnorthpole', 'Giga Match North Pole', 'https://igamewin.com/storage/igamewin/10470.webp', 1, 'slot-rubyplay', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(457, 'gohighgallina', 'Go High Gallina', 'https://igamewin.com/storage/igamewin/10472.webp', 1, 'slot-rubyplay', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(458, 'mhhiddencity', 'Mad Hit Hidden Cities', 'https://igamewin.com/storage/igamewin/10473.webp', 1, 'slot-rubyplay', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(459, 'jmdiamond', 'J Mania Diamonds', 'https://igamewin.com/storage/igamewin/10474.webp', 1, 'slot-rubyplay', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(460, 'gholympus', 'Go High Olympus', 'https://igamewin.com/storage/igamewin/10475.webp', 1, 'slot-rubyplay', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(461, 'ttwgoldfish', 'Ten Ton Ways Goldfish', 'https://igamewin.com/storage/igamewin/10476.webp', 1, 'slot-rubyplay', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(462, 'dechristmastango', 'Diamond Explosion Christmas Tango', 'https://igamewin.com/storage/igamewin/10477.webp', 1, 'slot-rubyplay', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(463, 'desweetlove', 'Diamond Explosion Sweet Love', 'https://igamewin.com/storage/igamewin/10478.webp', 1, 'slot-rubyplay', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(464, 'immortalempress', 'Immortal Empress', 'https://igamewin.com/storage/igamewin/10479.webp', 1, 'slot-rubyplay', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(465, 'silverandgold', 'Silver & Gold Mine', 'https://igamewin.com/storage/igamewin/12152.webp', 1, 'slot-rubyplay', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(466, 'rushfever7s', 'Rush Fever 7s', 'https://igamewin.com/storage/igamewin/12153.webp', 1, 'slot-rubyplay', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(467, 'downoftheinca', 'Dawn of the Incas', 'https://igamewin.com/storage/igamewin/12154.webp', 1, 'slot-rubyplay', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(468, 'zeusrushfever', 'Zeus Rush Fever', 'https://igamewin.com/storage/igamewin/12155.webp', 1, 'slot-rubyplay', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(469, 'heheyang', 'He He Yang', 'https://igamewin.com/storage/igamewin/12156.webp', 1, 'slot-rubyplay', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(470, 'drfrankenstein', 'Dr. Frankenstein', 'https://igamewin.com/storage/igamewin/12157.webp', 1, 'slot-rubyplay', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(471, 'sunofra', 'Sun of Ra', 'https://igamewin.com/storage/igamewin/12158.webp', 1, 'slot-rubyplay', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(472, 'dragon8s25x', 'Dragon 8s 25x', 'https://igamewin.com/storage/igamewin/12159.webp', 1, 'slot-rubyplay', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(473, 'egyptiansun', 'Egyptian Sun', 'https://igamewin.com/storage/igamewin/12160.webp', 1, 'slot-rubyplay', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(474, 'acranebeauties', 'Arcane Beauties', 'https://igamewin.com/storage/igamewin/12161.webp', 1, 'slot-rubyplay', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(475, 'reelallstar', 'Reel All-Stars', 'https://igamewin.com/storage/igamewin/12162.webp', 1, 'slot-rubyplay', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(476, 'piratesbooty', 'Pirate’s Booty', 'https://igamewin.com/storage/igamewin/12163.webp', 1, 'slot-rubyplay', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(477, 'brilliantgems', 'Brilliant Gems', 'https://igamewin.com/storage/igamewin/12164.webp', 1, 'slot-rubyplay', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(478, 'gallantry', 'Gallantry', 'https://igamewin.com/storage/igamewin/12165.webp', 1, 'slot-rubyplay', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(479, 'bookofrichesdeluxe', 'Book of Riches Deluxe', 'https://igamewin.com/storage/igamewin/12166.webp', 1, 'slot-rubyplay', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(480, 'mhmarlinbonanza', 'Mad Hit Marlin Bonanza', 'https://igamewin.com/storage/igamewin/12167.webp', 1, 'slot-rubyplay', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(481, 'ghpuppylove', 'Go High® Puppy Love', 'https://igamewin.com/storage/igamewin/12168.webp', 1, 'slot-rubyplay', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(482, 'volcanorisingse', 'Volcano Rising SE', 'https://igamewin.com/storage/igamewin/12169.webp', 1, 'slot-rubyplay', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(483, 'mhsavannah', 'Mad Hit Savannah', 'https://igamewin.com/storage/igamewin/12170.webp', 1, 'slot-rubyplay', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(484, 'rushfeversodapop', 'Rush Fever Soda Pop', 'https://igamewin.com/storage/igamewin/12171.webp', 1, 'slot-rubyplay', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(485, 'zeusrushfeverdeluxe', 'Zeus Rush Fever® Deluxe SE', 'https://igamewin.com/storage/igamewin/12172.webp', 1, 'slot-rubyplay', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(486, 'gigamatchegypt', 'Giga Match® Egypt', 'https://igamewin.com/storage/igamewin/12173.webp', 1, 'slot-rubyplay', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(487, 'gigamatchgems', 'Giga Match® Gems', 'https://igamewin.com/storage/igamewin/12174.webp', 1, 'slot-rubyplay', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(488, 'gigamatchmoolah', 'Giga Match® Moolah', 'https://igamewin.com/storage/igamewin/12175.webp', 1, 'slot-rubyplay', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(489, 'gohighsafari', 'Go High® Safari', 'https://igamewin.com/storage/igamewin/12176.webp', 1, 'slot-rubyplay', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(490, 'jmania3buffalo', 'J Mania® 3 Buffalo', 'https://igamewin.com/storage/igamewin/12177.webp', 1, 'slot-rubyplay', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(491, 'jmaniahotasses', 'J Mania® Hot Asses', 'https://igamewin.com/storage/igamewin/12178.webp', 1, 'slot-rubyplay', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(492, 'jmanialocohabanero', 'J Mania® Loco Habanero', 'https://igamewin.com/storage/igamewin/12179.webp', 1, 'slot-rubyplay', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(493, 'madhitjokester', 'Mad Hit® Jokester', 'https://igamewin.com/storage/igamewin/12180.webp', 1, 'slot-rubyplay', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(494, 'madhitgorillatron', 'Mad Hit® Gorillatron', 'https://igamewin.com/storage/igamewin/12181.webp', 1, 'slot-rubyplay', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(495, 'rushfever7sdeluxese', 'Rush Fever 7s Deluxe', 'https://igamewin.com/storage/igamewin/12182.webp', 1, 'slot-rubyplay', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(496, 'tentonwaysstampede', 'Ten Ton Ways® Stampede', 'https://igamewin.com/storage/igamewin/12183.webp', 1, 'slot-rubyplay', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(497, 'vegasnolimitwinsse', 'Vegas No Limit Wins SE', 'https://igamewin.com/storage/igamewin/12184.webp', 1, 'slot-rubyplay', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(498, 'bufonfortuna', 'Bufón Fortuna', 'https://igamewin.com/storage/igamewin/12185.webp', 1, 'slot-rubyplay', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(499, 'jmaniatriplejam', 'J Mania® Triple Jam', 'https://igamewin.com/storage/igamewin/12186.webp', 1, 'slot-rubyplay', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(500, 'bookofrichdc2se', 'Book of Riches Deluxe: Chapter 2 SE', 'https://igamewin.com/storage/igamewin/12187.webp', 1, 'slot-rubyplay', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(501, 'ttwodinsgifts', 'Ten Ton Ways® Odin’s Gifts', 'https://igamewin.com/storage/igamewin/12188.webp', 1, 'slot-rubyplay', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(502, 'mayancache', 'Mayan Cache', 'https://igamewin.com/storage/igamewin/12189.webp', 1, 'slot-rubyplay', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(503, 'mhhhhpudding', 'Mad Hit® Ho Ho Hot Pudding', 'https://igamewin.com/storage/igamewin/12190.webp', 1, 'slot-rubyplay', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(504, 'mhslipperysoap', 'Mad Hit® Slippery Soap', 'https://igamewin.com/storage/igamewin/12191.webp', 1, 'slot-rubyplay', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(505, 'mhdevil', 'Mad Hit® Devil', 'https://igamewin.com/storage/igamewin/12192.webp', 1, 'slot-rubyplay', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(506, 'mhmrcoin', 'Mad Hit® Mr Coin', 'https://igamewin.com/storage/igamewin/12193.webp', 1, 'slot-rubyplay', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(507, 'mhfullsteam', 'Mad Hit® Full Steam', 'https://igamewin.com/storage/igamewin/12194.webp', 1, 'slot-rubyplay', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(508, 'mhwildalice', 'Mad Hit® Wild Alice', 'https://igamewin.com/storage/igamewin/12195.webp', 1, 'slot-rubyplay', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(509, 'mhsupernova', 'Mad Hit® Supernova', 'https://igamewin.com/storage/igamewin/12196.webp', 1, 'slot-rubyplay', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(510, 'jmaniamaniac', 'J Mania® Maniac', 'https://igamewin.com/storage/igamewin/12197.webp', 1, 'slot-rubyplay', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(511, 'jmanialuckypygg', 'J Mania® Lucky Pyggs', 'https://igamewin.com/storage/igamewin/12198.webp', 1, 'slot-rubyplay', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(512, 'gmphantasmal', 'Giga Match® Phantasmal', 'https://igamewin.com/storage/igamewin/12199.webp', 1, 'slot-rubyplay', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(513, 'gmfruit', 'Giga Match® Fruits', 'https://igamewin.com/storage/igamewin/12200.webp', 1, 'slot-rubyplay', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(514, 'gmmahjong', 'Giga Match® Mahjong', 'https://igamewin.com/storage/igamewin/12201.webp', 1, 'slot-rubyplay', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(515, 'gohighjoker', 'Go High® Joker', 'https://igamewin.com/storage/igamewin/12202.webp', 1, 'slot-rubyplay', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(516, 'gohighgonefishing', 'Go High® Gone Fishing', 'https://igamewin.com/storage/igamewin/12203.webp', 1, 'slot-rubyplay', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(517, 'ghharvest', 'Go High® Harvest', 'https://igamewin.com/storage/igamewin/12204.webp', 1, 'slot-rubyplay', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(518, 'defudoubleluck', 'Fu Double Luck Diamond Explosion®', 'https://igamewin.com/storage/igamewin/12205.webp', 1, 'slot-rubyplay', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(519, 'stampederushtrident', 'Stampede Rush® Trident', 'https://igamewin.com/storage/igamewin/12206.webp', 1, 'slot-rubyplay', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(520, 'stampederushwicked', 'Stampede Rush® Wicked', 'https://igamewin.com/storage/igamewin/12207.webp', 1, 'slot-rubyplay', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(521, 'egyptiansunse', 'Egyptian Sun SE', 'https://igamewin.com/storage/igamewin/12208.webp', 1, 'slot-rubyplay', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(522, 'tentonwaysluck', 'Ten Ton Ways® Luck', 'https://igamewin.com/storage/igamewin/12209.webp', 1, 'slot-rubyplay', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(523, 'gummygigamatch', 'Gummy Giga Match®', 'https://igamewin.com/storage/igamewin/12210.webp', 1, 'slot-rubyplay', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(524, 'princeofrich', 'Prince of Riches', 'https://igamewin.com/storage/igamewin/12211.webp', 1, 'slot-rubyplay', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(525, 'cacherush', 'Cache Rush', 'https://igamewin.com/storage/igamewin/12212.webp', 1, 'slot-rubyplay', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(526, 'rockingorilla', 'Rockin’ Gorilla', 'https://igamewin.com/storage/igamewin/12213.webp', 1, 'slot-rubyplay', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(527, 'royalgriffin', 'Royal Griffin', 'https://igamewin.com/storage/igamewin/12214.webp', 1, 'slot-rubyplay', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(528, 'romanlegend', 'Roman Legend', 'https://igamewin.com/storage/igamewin/12215.webp', 1, 'slot-rubyplay', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(529, 'bookofrichdc2', 'Book of Riches Deluxe: Chapter 2', 'https://igamewin.com/storage/igamewin/12216.webp', 1, 'slot-rubyplay', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(530, 'ancientpharaoh', 'Ancient Pharaoh', 'https://igamewin.com/storage/igamewin/12217.webp', 1, 'slot-rubyplay', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(531, 'felizdiadelosmuertos', 'Feliz Día de los Muertos', 'https://igamewin.com/storage/igamewin/12218.webp', 1, 'slot-rubyplay', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(532, 'adventureoflired', 'Adventures of Li’l Red', 'https://igamewin.com/storage/igamewin/12219.webp', 1, 'slot-rubyplay', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(533, 'wizardspell', 'Wizard’s Spell', 'https://igamewin.com/storage/igamewin/12220.webp', 1, 'slot-rubyplay', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(534, 'bullfever', 'Bull Fever', 'https://igamewin.com/storage/igamewin/12221.webp', 1, 'slot-rubyplay', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(535, 'mines', 'Mines', 'https://igamewin.com/storage/igamewin/162.webp', 1, 'SPRIBE', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(536, 'hotline', 'Hotline', 'https://igamewin.com/storage/igamewin/163.webp', 1, 'SPRIBE', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(537, 'roulette', 'Mini Roulette', 'https://igamewin.com/storage/igamewin/164.webp', 1, 'SPRIBE', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(538, 'dice', 'Dice', 'https://igamewin.com/storage/igamewin/165.webp', 1, 'SPRIBE', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(539, 'plinko', 'Plinko', 'https://igamewin.com/storage/igamewin/166.webp', 1, 'SPRIBE', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(540, 'goal', 'Goal', 'https://igamewin.com/storage/igamewin/167.webp', 1, 'SPRIBE', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(541, 'keno', 'Keno', 'https://igamewin.com/storage/igamewin/168.webp', 1, 'SPRIBE', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(542, 'hilo', 'Hilo', 'https://igamewin.com/storage/igamewin/169.webp', 1, 'SPRIBE', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(543, 'aviator_core', 'Aviator', 'https://igamewin.com/storage/igamewin/170.webp', 1, 'SPRIBE', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(544, 'thunder_coins', 'Thunder Coins', 'https://igamewin.com/storage/igamewin/10480.webp', 1, 'slot-playson', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(545, 'piggy_power', 'Piggy Power', 'https://igamewin.com/storage/igamewin/10481.webp', 1, 'slot-playson', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(546, 'scharged_clovers', 'Supercharged Clovers', 'https://igamewin.com/storage/igamewin/10482.webp', 1, 'slot-playson', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(547, '3_pirate_barrels', '3 Pirate Barrels', 'https://igamewin.com/storage/igamewin/10483.webp', 1, 'slot-playson', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(548, '3carts_of_gold', '3 Carts of Gold', 'https://igamewin.com/storage/igamewin/10484.webp', 1, 'slot-playson', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(549, 'energy_joker', 'Energy Joker', 'https://igamewin.com/storage/igamewin/10485.webp', 1, 'slot-playson', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(550, 'arizona_heist', 'Arizona Heist', 'https://igamewin.com/storage/igamewin/10486.webp', 1, 'slot-playson', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(551, 'clover_charm', 'Clover Charm', 'https://igamewin.com/storage/igamewin/10487.webp', 1, 'slot-playson', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(552, 'sunny_fruits_2', 'Sunny Fruits 2', 'https://igamewin.com/storage/igamewin/10488.webp', 1, 'slot-playson', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(553, '3pots_extra', '3 Pots Riches Extra', 'https://igamewin.com/storage/igamewin/10489.webp', 1, 'slot-playson', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(554, 'blazing_wins', 'Blazing Wins', 'https://igamewin.com/storage/igamewin/10490.webp', 1, 'slot-playson', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(555, 'power_crown', 'Power Crown', 'https://igamewin.com/storage/igamewin/10491.webp', 1, 'slot-playson', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(556, 'sherwood_coins', 'Sherwood Coins', 'https://igamewin.com/storage/igamewin/10492.webp', 1, 'slot-playson', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(557, 'diamonds_power', 'Diamonds Power', 'https://igamewin.com/storage/igamewin/10493.webp', 1, 'slot-playson', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(558, 'royal_coins_2', 'Royal Coins 2', 'https://igamewin.com/storage/igamewin/10494.webp', 1, 'slot-playson', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(559, 'pearl_ocean', 'Pearl Ocean', 'https://igamewin.com/storage/igamewin/10495.webp', 1, 'slot-playson', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(560, '777sizzling_wins', '777 Sizzling Wins', 'https://igamewin.com/storage/igamewin/10496.webp', 1, 'slot-playson', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(561, 'energy_coins', 'Energy Coins', 'https://igamewin.com/storage/igamewin/10497.webp', 1, 'slot-playson', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(562, 'crown_n_diamonds', 'Crown and Diamonds', 'https://igamewin.com/storage/igamewin/10498.webp', 1, 'slot-playson', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(563, 'wolf_land', 'Wolf Land', 'https://igamewin.com/storage/igamewin/10499.webp', 1, 'slot-playson', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(564, '3pots_riches', '3 Pots Riches', 'https://igamewin.com/storage/igamewin/10500.webp', 1, 'slot-playson', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(565, 'empire_gold', 'Empire Gold', 'https://igamewin.com/storage/igamewin/10501.webp', 1, 'slot-playson', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(566, 'royal_fort', 'Royal Fortunator', 'https://igamewin.com/storage/igamewin/10502.webp', 1, 'slot-playson', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(567, 'coin_strike', 'Coin Strike', 'https://igamewin.com/storage/igamewin/10503.webp', 1, 'slot-playson', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(568, 'royal_joker', 'Royal Joker', 'https://igamewin.com/storage/igamewin/10504.webp', 1, 'slot-playson', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(569, 'pirate_chest', 'Pirate Chest', 'https://igamewin.com/storage/igamewin/10505.webp', 1, 'slot-playson', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(570, 'ruby_hit', 'Ruby Hit', 'https://igamewin.com/storage/igamewin/10506.webp', 1, 'slot-playson', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(571, 'luxor_gold', 'Luxor Gold', 'https://igamewin.com/storage/igamewin/10507.webp', 1, 'slot-playson', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(572, 'book_del_sol', 'Book del Sol', 'https://igamewin.com/storage/igamewin/10508.webp', 1, 'slot-playson', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(573, 'lion_gems', 'Lion Gems', 'https://igamewin.com/storage/igamewin/10509.webp', 1, 'slot-playson', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(574, 'burning_fort', 'Burning Fortunator', 'https://igamewin.com/storage/igamewin/10510.webp', 1, 'slot-playson', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(575, 'royal_coins', 'Royal Coins', 'https://igamewin.com/storage/igamewin/10511.webp', 1, 'slot-playson', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(576, '5_fortunator', '5 Fortunator', 'https://igamewin.com/storage/igamewin/10512.webp', 1, 'slot-playson', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(577, 'hot_burning_wins', 'Hot Burning Wins', 'https://igamewin.com/storage/igamewin/10513.webp', 1, 'slot-playson', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(578, 'hot_coins', 'Hot Coins', 'https://igamewin.com/storage/igamewin/10514.webp', 1, 'slot-playson', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(579, 'wolf_power', 'Wolf Power', 'https://igamewin.com/storage/igamewin/10515.webp', 1, 'slot-playson', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(580, 'divine_dragon', 'Divine Dragon', 'https://igamewin.com/storage/igamewin/10516.webp', 1, 'slot-playson', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(581, '5_super_sevens_n_fruits', '5 Super Sevens & Fruits', 'https://igamewin.com/storage/igamewin/10517.webp', 1, 'slot-playson', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(582, 'book_of_gold_multichance', 'Book of Gold', 'https://igamewin.com/storage/igamewin/10518.webp', 1, 'slot-playson', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(583, 'diamond_wins', 'Diamond Wins', 'https://igamewin.com/storage/igamewin/10519.webp', 1, 'slot-playson', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(584, 'buffalo_power', 'Buffalo Power', 'https://igamewin.com/storage/igamewin/10520.webp', 1, 'slot-playson', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(585, 'sunny_fruits', 'Sunny Fruits', 'https://igamewin.com/storage/igamewin/10521.webp', 1, 'slot-playson', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(586, 'imperial_fruits_100', 'Imperial Fruits', 'https://igamewin.com/storage/igamewin/10522.webp', 1, 'slot-playson', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(587, 'book_of_gold_classic', 'Book of Gold', 'https://igamewin.com/storage/igamewin/10523.webp', 1, 'slot-playson', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(588, '3_fruits_win_10', '3 Fruits Win', 'https://igamewin.com/storage/igamewin/10524.webp', 1, 'slot-playson', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(589, 'fruits_and_jokers_100', 'Fruits & Jokers', 'https://igamewin.com/storage/igamewin/10525.webp', 1, 'slot-playson', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(590, 'imperial_fruits_5', 'Imperial Fruits', 'https://igamewin.com/storage/igamewin/10526.webp', 1, 'slot-playson', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(591, 'sevens_n_fruits_20', 'Sevens&Fruits', 'https://igamewin.com/storage/igamewin/10527.webp', 1, 'slot-playson', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(592, '100_joker_staxx', '100 Joker Staxx', 'https://igamewin.com/storage/igamewin/10528.webp', 1, 'slot-playson', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(593, 'fruits_and_jokers_40', 'Fruits & Jokers', 'https://igamewin.com/storage/igamewin/10529.webp', 1, 'slot-playson', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(594, 'fruits_and_jokers_20', 'Fruits & Jokers', 'https://igamewin.com/storage/igamewin/10530.webp', 1, 'slot-playson', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(595, 'super_burning_wins', 'Super Burning Wins', 'https://igamewin.com/storage/igamewin/10531.webp', 1, 'slot-playson', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(596, 'rise_of_egypt', 'Rise of Egypt', 'https://igamewin.com/storage/igamewin/10532.webp', 1, 'slot-playson', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(597, 'joker_expand', 'Joker Expand', 'https://igamewin.com/storage/igamewin/10533.webp', 1, 'slot-playson', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(598, 'burning_wins', 'Burning Wins', 'https://igamewin.com/storage/igamewin/10534.webp', 1, 'slot-playson', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(599, 'sevens_n_fruits', 'Sevens&Fruits', 'https://igamewin.com/storage/igamewin/10535.webp', 1, 'slot-playson', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(600, 'legend_of_cleopatra', 'Legend of Cleopatra', 'https://igamewin.com/storage/igamewin/10536.webp', 1, 'slot-playson', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(601, 'pink_joker', 'Pink Joker', 'https://igamewin.com/storage/igamewin/10537.webp', 1, 'slot-playson', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(602, 'jingle_coins', 'Jingle Coins', 'https://igamewin.com/storage/igamewin/10538.webp', 1, 'slot-playson', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(603, 'merry_giftmas', 'Merry Giftmas', 'https://igamewin.com/storage/igamewin/10539.webp', 1, 'slot-playson', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(604, 'light_clovers', 'Lightning Clovers', 'https://igamewin.com/storage/igamewin/10540.webp', 1, 'slot-playson', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(605, 'fire_temple', 'Fire Temple', 'https://igamewin.com/storage/igamewin/10541.webp', 1, 'slot-playson', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(606, '3_magic_lamps', '3 Magic Lamps', 'https://igamewin.com/storage/igamewin/10542.webp', 1, 'slot-playson', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(607, 'fortune-gems-2', 'Fortune Gems 2', 'https://igamewin.com/storage/igamewin/10811.webp', 1, 'slot-tada', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(608, 'fortune-gems', 'Fortune Gems', 'https://igamewin.com/storage/igamewin/10813.webp', 1, 'slot-tada', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(609, 'golden-empire', 'Golden Empire', 'https://igamewin.com/storage/igamewin/10815.webp', 1, 'slot-tada', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(610, 'mega-ace', 'Mega Ace', 'https://igamewin.com/storage/igamewin/10816.webp', 1, 'slot-tada', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(611, 'super-rich', 'Super Rich', 'https://igamewin.com/storage/igamewin/10817.webp', 1, 'slot-tada', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(612, 'boxingking', 'BoxingKing', 'https://igamewin.com/storage/igamewin/10818.webp', 1, 'slot-tada', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(613, 'ali-baba', 'Ali Baba', 'https://igamewin.com/storage/igamewin/10819.webp', 1, 'slot-tada', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(614, 'lucky-coming', 'Lucky Coming', 'https://igamewin.com/storage/igamewin/10820.webp', 1, 'slot-tada', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(615, 'fortune-tree', 'Fortune Tree', 'https://igamewin.com/storage/igamewin/10821.webp', 1, 'slot-tada', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(616, 'book-of-gold', 'Book of Gold', 'https://igamewin.com/storage/igamewin/10822.webp', 1, 'slot-tada', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(617, 'jungle-king', 'Jungle King', 'https://igamewin.com/storage/igamewin/10823.webp', 1, 'slot-tada', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(618, 'magic-lamp', 'Magic Lamp Bingo', 'https://igamewin.com/storage/igamewin/10824.webp', 1, 'slot-tada', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(619, 'devil-fire-2', 'Devil Fire 2', 'https://igamewin.com/storage/igamewin/10825.webp', 1, 'slot-tada', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(620, 'gold-rush', 'Gold Rush', 'https://igamewin.com/storage/igamewin/10826.webp', 1, 'slot-tada', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(621, 'world-cup', 'World Cup', 'https://igamewin.com/storage/igamewin/10828.webp', 1, 'slot-tada', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(622, 'pharaoh-treasure', 'Pharaoh Treasure', 'https://igamewin.com/storage/igamewin/10829.webp', 1, 'slot-tada', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(623, 'fortune-monkey', 'Fortune Monkey', 'https://igamewin.com/storage/igamewin/10830.webp', 1, 'slot-tada', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(624, 'golden-queen', 'Golden Queen', 'https://igamewin.com/storage/igamewin/10831.webp', 1, 'slot-tada', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(625, 'samba', 'Samba', 'https://igamewin.com/storage/igamewin/10832.webp', 1, 'slot-tada', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(626, 'roma-x', 'Roma X', 'https://igamewin.com/storage/igamewin/10834.webp', 1, 'slot-tada', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(627, 'bone-fortune', 'Bone Fortune', 'https://igamewin.com/storage/igamewin/10835.webp', 1, 'slot-tada', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(628, 'devil-fire', 'Devil Fire', 'https://igamewin.com/storage/igamewin/10836.webp', 1, 'slot-tada', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(629, 'cricket-king-18', 'Cricket King 18', 'https://igamewin.com/storage/igamewin/10837.webp', 1, 'slot-tada', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(630, 'fortunepig', 'Fortune Pig', 'https://igamewin.com/storage/igamewin/10838.webp', 1, 'slot-tada', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(631, 'thor-x', 'Thor X', 'https://igamewin.com/storage/igamewin/10839.webp', 1, 'slot-tada', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(632, 'the-pig-house', 'The Pig House', 'https://igamewin.com/storage/igamewin/10840.webp', 1, 'slot-tada', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(633, 'agent-ace', 'Agent Ace', 'https://igamewin.com/storage/igamewin/10841.webp', 1, 'slot-tada', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(634, 'night-city', 'Night City', 'https://igamewin.com/storage/igamewin/10842.webp', 1, 'slot-tada', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(635, 'fengshen', 'Fengshen', 'https://igamewin.com/storage/igamewin/10843.webp', 1, 'slot-tada', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(636, 'sin-city', 'Sin City', 'https://igamewin.com/storage/igamewin/10844.webp', 1, 'slot-tada', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(637, 'chin-shi-huang', 'Chin Shi Huang', 'https://igamewin.com/storage/igamewin/10845.webp', 1, 'slot-tada', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(638, 'witches-night', 'Witches Night', 'https://igamewin.com/storage/igamewin/10846.webp', 1, 'slot-tada', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(639, 'dabanggg', 'Dabanggg', 'https://igamewin.com/storage/igamewin/10847.webp', 1, 'slot-tada', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(640, 'cricket-sah-75', 'Cricket Sah 75', 'https://igamewin.com/storage/igamewin/10848.webp', 1, 'slot-tada', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(641, 'king-arthur', 'King Arthur', 'https://igamewin.com/storage/igamewin/10850.webp', 1, 'slot-tada', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(642, 'party-night', 'Party Night', 'https://igamewin.com/storage/igamewin/10851.webp', 1, 'slot-tada', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(643, 'super-ace', 'Super Ace', 'https://igamewin.com/storage/igamewin/10852.webp', 1, 'slot-tada', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(644, 'bangla-beauty', 'Bangla Beauty', 'https://igamewin.com/storage/igamewin/10853.webp', 1, 'slot-tada', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(645, 'three-coin-treasure-2', '3 Coin Treasures 2', 'https://igamewin.com/storage/igamewin/12517.webp', 1, 'slot-tada', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(646, 'pirate2', 'Pirate Queen 2', 'https://igamewin.com/storage/igamewin/12518.webp', 1, 'slot-tada', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(647, 'crazy-seven-2', 'Crazy777 2', 'https://igamewin.com/storage/igamewin/12519.webp', 1, 'slot-tada', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(648, 'three-coin-treasure', '3 Coin Treasures', 'https://igamewin.com/storage/igamewin/12520.webp', 1, 'slot-tada', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(649, 'potion-wizard', 'Potion Wizard', 'https://igamewin.com/storage/igamewin/12521.webp', 1, 'slot-tada', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(650, 'night-fall-hunting', 'Nightfall Hunting', 'https://igamewin.com/storage/igamewin/12522.webp', 1, 'slot-tada', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(651, 'golden-bank-2', 'Golden Bank 2', 'https://igamewin.com/storage/igamewin/12523.webp', 1, 'slot-tada', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(652, 'three-lucky-piggy', '3 Lucky Piggy', 'https://igamewin.com/storage/igamewin/12524.webp', 1, 'slot-tada', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(653, 'bounty-frenzy', 'Bounty Frenzy', 'https://igamewin.com/storage/igamewin/12525.webp', 1, 'slot-tada', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(654, 'candy-baby', 'Candy Baby', 'https://igamewin.com/storage/igamewin/12526.webp', 1, 'slot-tada', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(655, 'neko-neko', 'NekoNeko', 'https://igamewin.com/storage/igamewin/12527.webp', 1, 'slot-tada', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(656, 'kung-fu-tiger', 'Kung Fu Tiger', 'https://igamewin.com/storage/igamewin/12528.webp', 1, 'slot-tada', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(657, 'arena-fighter', 'Arena Fighter', 'https://igamewin.com/storage/igamewin/12529.webp', 1, 'slot-tada', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(658, 'diamond-party', 'Diamond Party', 'https://igamewin.com/storage/igamewin/12530.webp', 1, 'slot-tada', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(659, 'lucky-doggy', 'Lucky Doggy', 'https://igamewin.com/storage/igamewin/12531.webp', 1, 'slot-tada', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(660, 'cointree', 'Coin Tree', 'https://igamewin.com/storage/igamewin/12532.webp', 1, 'slot-tada', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(661, 'wild-ace', 'WILD ACE', 'https://igamewin.com/storage/igamewin/12533.webp', 1, 'slot-tada', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(662, 'golden-temple', 'Golden Temple', 'https://igamewin.com/storage/igamewin/12534.webp', 1, 'slot-tada', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(663, 'poseidon', 'Poseidon', 'https://igamewin.com/storage/igamewin/12535.webp', 1, 'slot-tada', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(664, 'phoenix', 'Trial of Phoenix', 'https://igamewin.com/storage/igamewin/12536.webp', 1, 'slot-tada', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(665, 'wild-racer', 'WILD RACER', 'https://igamewin.com/storage/igamewin/12537.webp', 1, 'slot-tada', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(666, 'fruity-wheel', 'Fruity Wheel', 'https://igamewin.com/storage/igamewin/12538.webp', 1, 'slot-tada', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(667, 'treasure-quest', 'Treasure Quest', 'https://igamewin.com/storage/igamewin/12539.webp', 1, 'slot-tada', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(668, 'egypt-glow', 'Egypt\'s Glow', 'https://igamewin.com/storage/igamewin/12540.webp', 1, 'slot-tada', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(669, 'fortune-coins', 'Fortune Coins', 'https://igamewin.com/storage/igamewin/12541.webp', 1, 'slot-tada', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(670, 'money-pot', 'Money Pot', 'https://igamewin.com/storage/igamewin/12542.webp', 1, 'slot-tada', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(672, 'safari-mystery', 'Safari Mystery', 'https://igamewin.com/storage/igamewin/12544.webp', 1, 'slot-tada', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(673, 'x7hot', 'X7 HOT', 'https://igamewin.com/storage/igamewin/12545.webp', 1, 'slot-tada', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(674, 'lucky-jaguar-500', 'Lucky Jaguar 500', 'https://igamewin.com/storage/igamewin/12546.webp', 1, 'slot-tada', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(675, 'supernova', 'Supernova', 'https://igamewin.com/storage/igamewin/12547.webp', 1, 'slot-tada', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(676, 'clover-ladybug', 'Clover Ladybug', 'https://igamewin.com/storage/igamewin/12548.webp', 1, 'slot-tada', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(677, 'joker-fortune', 'Joker\'s Fortune', 'https://igamewin.com/storage/igamewin/12549.webp', 1, 'slot-tada', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(678, 'coin-of-lightning', 'Coin of Lightning', 'https://igamewin.com/storage/igamewin/12550.webp', 1, 'slot-tada', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(679, 'cash-coin', 'Cash Coin', 'https://igamewin.com/storage/igamewin/12551.webp', 1, 'slot-tada', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(680, 'dice-drop', 'Dice & Drop', 'https://igamewin.com/storage/igamewin/12552.webp', 1, 'slot-tada', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(681, 'crown-of-fortune', 'Crown of Fortune', 'https://igamewin.com/storage/igamewin/12553.webp', 1, 'slot-tada', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(682, 'rise-of-egypt', 'Rise Of Egypt', 'https://igamewin.com/storage/igamewin/12554.webp', 1, 'slot-tada', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(683, 'fortune-hook-boom', 'Fortune Hook Boom', 'https://igamewin.com/storage/igamewin/12555.webp', 1, 'slot-tada', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(684, 'devil-fire-twins', 'Devil Fire Twins', 'https://igamewin.com/storage/igamewin/12556.webp', 1, 'slot-tada', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(685, '100-blazing-clover', '100 Blazing Clover', 'https://igamewin.com/storage/igamewin/12557.webp', 1, 'slot-tada', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(686, 'clover-coins-4', 'Clover Coins 4x4', 'https://igamewin.com/storage/igamewin/12558.webp', 1, 'slot-tada', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(687, 'money-pot-deluxe', '\r\nMoney Pot DELUXE', 'https://igamewin.com/storage/igamewin/12559.webp', 1, 'slot-tada', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(688, 'crown40', '40 Sparkling Crown', 'https://igamewin.com/storage/igamewin/12560.webp', 1, 'slot-tada', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(689, 'lucky-tiger', 'Lucky Tiger', 'https://igamewin.com/storage/igamewin/12561.webp', 1, 'slot-tada', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(690, 'fortune-gems-500', 'Fortune Gems 500', 'https://igamewin.com/storage/igamewin/12562.webp', 1, 'slot-tada', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(691, 'bc20', '20 Blazing Clover', 'https://igamewin.com/storage/igamewin/12563.webp', 1, 'slot-tada', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(692, 'fortune-hook', 'Fortune Hook', 'https://igamewin.com/storage/igamewin/12564.webp', 1, 'slot-tada', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(693, 'clover-coins-3', 'Clover Coins 3x3', 'https://igamewin.com/storage/igamewin/12565.webp', 1, 'slot-tada', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(694, 'rapid-gems-777', 'Rapid Gems 777', 'https://igamewin.com/storage/igamewin/12566.webp', 1, 'slot-tada', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(695, 'crown', '10 Sparkling Crown', 'https://igamewin.com/storage/igamewin/12567.webp', 1, 'slot-tada', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(696, 'bikini', 'Bikini Lady', 'https://igamewin.com/storage/igamewin/12568.webp', 1, 'slot-tada', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(697, 'WG_3031_V2', 'Fortune Tiger', 'https://igamewin.com/storage/igamewin/12002.avif', 1, 'ONE_API_WG', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(698, 'WG_3033_V2', 'Fortune Ox', 'https://igamewin.com/storage/igamewin/12003.avif', 1, 'ONE_API_WG', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(699, 'WG_3035_V2', 'Fortune Rabbit', 'https://igamewin.com/storage/igamewin/12004.avif', 1, 'ONE_API_WG', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(700, 'WG_3025_V2', 'Black Myth: Wukong', 'https://igamewin.com/storage/igamewin/12005.avif', 1, 'ONE_API_WG', 0, 'slot', 'ELECTRONIC', 'igamewin');
INSERT INTO `games` (`id`, `game_code`, `game_name`, `banner`, `status`, `provider`, `popular`, `type`, `game_type`, `api`) VALUES
(701, 'WG_3022_V2', 'Fishing Master', 'https://igamewin.com/storage/igamewin/12006.avif', 1, 'ONE_API_WG', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(702, 'WG_3020_V2', 'Animal Kingdom', 'https://igamewin.com/storage/igamewin/12007.avif', 1, 'ONE_API_WG', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(703, 'WG_3018_V2', 'Festival of the Saints', 'https://igamewin.com/storage/igamewin/12008.avif', 1, 'ONE_API_WG', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(704, 'WG_3016_V2', 'Samba Dance', 'https://igamewin.com/storage/igamewin/12009.avif', 1, 'ONE_API_WG', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(705, 'WG_3015_V2', 'Treasure Marmosets', 'https://igamewin.com/storage/igamewin/12010.avif', 1, 'ONE_API_WG', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(706, 'WG_3014_V2', 'Dragon vs Tiger', 'https://igamewin.com/storage/igamewin/12011.avif', 1, 'ONE_API_WG', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(707, 'WG_3013_V2', 'Lucky Dog', 'https://igamewin.com/storage/igamewin/12012.avif', 1, 'ONE_API_WG', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(708, 'WG_3011_V2', 'Mr Turtle', 'https://igamewin.com/storage/igamewin/12013.avif', 1, 'ONE_API_WG', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(709, 'WG_3010_V2', 'Leopard of Gold', 'https://igamewin.com/storage/igamewin/12014.avif', 1, 'ONE_API_WG', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(710, 'WG_3008_V2', 'Fortune Toucan', 'https://igamewin.com/storage/igamewin/12015.avif', 1, 'ONE_API_WG', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(711, 'WG_3005_V2', 'Mais fortuna e riqueza', 'https://igamewin.com/storage/igamewin/12016.avif', 1, 'ONE_API_WG', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(712, 'WG_3002_V2', 'Margem da Água', 'https://igamewin.com/storage/igamewin/12017.avif', 1, 'ONE_API_WG', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(713, 'WG_3032_V2', 'Mahjong Ways2', 'https://igamewin.com/storage/igamewin/12020.avif', 1, 'ONE_API_WG', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(714, 'WG_3029_V2', 'Mahjong Ways', 'https://igamewin.com/storage/igamewin/12021.avif', 1, 'ONE_API_WG', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(715, 'WG_3028_V2', 'Dragon\'s Treasure2', 'https://igamewin.com/storage/igamewin/12022.avif', 1, 'ONE_API_WG', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(716, 'WG_3009_V2', 'Dragon\'s Treasure', 'https://igamewin.com/storage/igamewin/12023.avif', 1, 'ONE_API_WG', 0, 'slot', 'ELECTRONIC', 'igamewin'),
(717, 'WG_3001_V2', 'Super Maquina De Frutas', 'https://igamewin.com/storage/igamewin/12024.avif', 1, 'ONE_API_WG', 0, 'slot', 'ELECTRONIC', 'igamewin');

-- --------------------------------------------------------

--
-- Estrutura para tabela `game_categories`
--

CREATE TABLE `game_categories` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `sort` int(11) NOT NULL DEFAULT 0,
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `game_categories`
--

INSERT INTO `game_categories` (`id`, `name`, `slug`, `sort`, `status`) VALUES
(1, 'All', 'all', 1, 1),
(2, 'Electronic', 'ELECTRONIC', 2, 1),
(3, 'Chess', 'CHESS', 3, 0),
(4, 'Fishing', 'FISHING', 4, 0),
(5, 'Video', 'VIDEO', 5, 0),
(6, 'Sports', 'SPORTS', 6, 0),
(7, 'Lottery', 'LOTTERY', 7, 0);

-- --------------------------------------------------------

--
-- Estrutura para tabela `greepay`
--

CREATE TABLE `greepay` (
  `id` int(11) NOT NULL,
  `ativo` int(11) DEFAULT 0,
  `client_id` varchar(255) DEFAULT NULL,
  `client_secret` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Despejando dados para a tabela `greepay`
--

INSERT INTO `greepay` (`id`, `ativo`, `client_id`, `client_secret`, `url`, `created_at`, `updated_at`) VALUES
(1, 1, 'patrickwillianhundemann_RNFPTQ8H', 'Wwx9DsAloTQCImDkuWD5TCkqUUYLltvp5ir2w4M9iyqlc5Jkx4LRWm9vvEkPbUVaHAtanLoAT7Z0StTj5dOeXWmBgl594EMMaHZs', 'https://api.greepay.com.br', '2025-12-28 20:11:15', '2026-03-07 12:08:19');

-- --------------------------------------------------------

--
-- Estrutura para tabela `historico_play`
--

CREATE TABLE `historico_play` (
  `id` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `nome_game` text NOT NULL,
  `bet_money` decimal(10,2) NOT NULL DEFAULT 0.00,
  `win_money` decimal(10,2) NOT NULL DEFAULT 0.00,
  `txn_id` text NOT NULL,
  `created_at` datetime NOT NULL,
  `status_play` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `historico_vip`
--

CREATE TABLE `historico_vip` (
  `id` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `bonus` float NOT NULL,
  `data` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `igamewin`
--

CREATE TABLE `igamewin` (
  `id` int(11) NOT NULL,
  `agent_code` varchar(255) NOT NULL,
  `agent_token` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL DEFAULT 'https://api.igamewin.com',
  `ativo` tinyint(1) NOT NULL DEFAULT 1,
  `rtp` int(11) DEFAULT 92
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `igamewin`
--

INSERT INTO `igamewin` (`id`, `agent_code`, `agent_token`, `url`, `ativo`, `rtp`) VALUES
(1, 'feliz2026', '870ca953e90911f0b8f1bc2411881493', 'https://igamewin.com/api/v1', 1, 15);

-- --------------------------------------------------------

--
-- Estrutura para tabela `inpagamentos`
--

CREATE TABLE `inpagamentos` (
  `id` int(11) NOT NULL,
  `ativo` int(11) DEFAULT 0,
  `url` varchar(255) DEFAULT NULL,
  `public_key` text DEFAULT NULL,
  `secret_key` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `inpagamentos`
--

INSERT INTO `inpagamentos` (`id`, `ativo`, `url`, `public_key`, `secret_key`) VALUES
(1, 0, 'https://api.inpagamentos.com', '0', '0');

-- --------------------------------------------------------

--
-- Estrutura para tabela `lobby_pgsoft`
--

CREATE TABLE `lobby_pgsoft` (
  `id` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `saldo` decimal(11,2) NOT NULL,
  `tipo` enum('entrada','saida') NOT NULL,
  `data_registro` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `logs`
--

CREATE TABLE `logs` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `action` varchar(255) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `logs`
--

INSERT INTO `logs` (`id`, `user_id`, `email`, `action`, `timestamp`) VALUES
(70, NULL, 'phundemann97@gmail.com', '<span class=\'status-badge green\' style=\'display: inline-block;\'><i class=\'fa fa-sign-out\'></i></span> Logou no painel admin', '2026-03-12 16:56:26'),
(71, NULL, 'phundemann97@gmail.com', '<span class=\'status-badge green\' style=\'display: inline-block;\'><i class=\'fa fa-sign-out\'></i></span> Logou no painel admin', '2026-03-12 17:53:47');

-- --------------------------------------------------------

--
-- Estrutura para tabela `manipulacao_indicacoes`
--

CREATE TABLE `manipulacao_indicacoes` (
  `id` int(11) NOT NULL,
  `dar_indicacoes` int(11) NOT NULL DEFAULT 3,
  `roubar_indicacoes` int(11) NOT NULL DEFAULT 1,
  `ativo` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `manipulacao_indicacoes`
--

INSERT INTO `manipulacao_indicacoes` (`id`, `dar_indicacoes`, `roubar_indicacoes`, `ativo`, `created_at`, `updated_at`) VALUES
(1, 3, 1, 1, '2026-01-26 22:12:35', '2026-03-06 01:46:59');

-- --------------------------------------------------------

--
-- Estrutura para tabela `mensagens`
--

CREATE TABLE `mensagens` (
  `id` int(11) NOT NULL,
  `titulo` varchar(255) NOT NULL,
  `content` text DEFAULT NULL,
  `banner` text DEFAULT NULL,
  `criado_em` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` int(11) NOT NULL DEFAULT 1,
  `texto` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=DYNAMIC;

--
-- Despejando dados para a tabela `mensagens`
--

INSERT INTO `mensagens` (`id`, `titulo`, `content`, `banner`, `criado_em`, `status`, `texto`) VALUES
(1, 'Recomend ami....', '1', '1765901078_imgi_88_1764938098_1992362943384735746.avif', '2024-06-28 21:10:47', 1, 0),
(2, '<p>Uma plataforma sem limitações</p>', '<div style=\"font-weight:700; line-height:1.5\">\r\n  <span style=\"color:#101112\">✈️ ❤️ PG Slots - Parceiro estratégico oficial ❤️ 🎈</span><br>\r\n  <span style=\"color:#e02424\">👑 Depósito mínimo 10BRL ✨</span><br>\r\n  <span style=\"color:#e02424\">👑 Saque mínimo 10BRL ✨</span><br>\r\n  <span style=\"color:#101112\">🎈 🎄 Obrigado por escolher o <span style=\"color:#0070f3\">W1PG GRUPO</span> Venha se juntar a nós e descubra vitórias sem fim! 🍤 🦀 🦞 🎉</span><br>\r\n<span style=\"color:#101112\">👍Uma plataforma sem limitações 📷</span>\r\n  <span style=\"color:#101112\">✈️✈️ Agências de recrutamento em todo o Brasil, entre em contato com seu gerente</span>\r\n  <span style=\"color:#101112\">e: <span style=\"color:#1e90ff\">Telegram</span></span><br>\r\n<span style=\"color:#101112\">🎁 Bônus de convite: R$ 10 por pessoa</span><br>\r\n<span style=\"color:#101112\">📱📱📱 Nosso Instagram oficial também lança regularmente uma série de eventos sociais, sorteios, festas, etc.</span><br>\r\n<span style=\"color:#101112\">📱 Obrigado a todos pelo apoio e amor</span><br>\r\n<span style=\"color:#101112\">📷 Instagram: <span style=\"color:#99cc00\">Instagram</span></span><br>\r\n</div>', '', '2024-06-28 21:08:02', 1, 1);

-- --------------------------------------------------------

--
-- Estrutura para tabela `metodos_pagamentos`
--

CREATE TABLE `metodos_pagamentos` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `realname` varchar(255) DEFAULT NULL,
  `tipo` varchar(50) DEFAULT NULL,
  `chave` varchar(255) DEFAULT NULL,
  `state` int(11) DEFAULT 1,
  `cpf` varchar(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `modais`
--

CREATE TABLE `modais` (
  `id` int(11) NOT NULL,
  `announcementType` varchar(50) DEFAULT 'img',
  `content` text DEFAULT NULL,
  `imgType` varchar(50) DEFAULT 'default',
  `imgUrl` varchar(255) DEFAULT NULL,
  `popupMethod` varchar(50) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `type` varchar(50) DEFAULT 'InternalLink',
  `updateTime` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `value` varchar(255) DEFAULT NULL,
  `valueType` varchar(50) DEFAULT 'CODE',
  `active` tinyint(1) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `modais`
--

INSERT INTO `modais` (`id`, `announcementType`, `content`, `imgType`, `imgUrl`, `popupMethod`, `title`, `type`, `updateTime`, `value`, `valueType`, `active`) VALUES
(1, 'img', 'test', 'default', 'https://upload-us.f-1-q-h.com/s4/1248680527158/TC1.png', 'logout', 'test', 'InternalLink', '2026-03-12 12:05:43', '/Redeem', 'CODE', 0),
(2, 'img', '', 'default', '/uploads/1773317138_1003481287-removebg-preview.png', 'both', 'Clique e ganhe (Login)', 'InternalLink', '2026-03-12 12:05:38', '/Redeem', 'CODE', 1);

-- --------------------------------------------------------

--
-- Estrutura para tabela `nextpay`
--

CREATE TABLE `nextpay` (
  `id` int(11) NOT NULL,
  `url` varchar(255) DEFAULT NULL,
  `client_id` text DEFAULT NULL,
  `client_secret` text DEFAULT NULL,
  `atualizado` varchar(45) DEFAULT NULL,
  `ativo` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Despejando dados para a tabela `nextpay`
--

INSERT INTO `nextpay` (`id`, `url`, `client_id`, `client_secret`, `atualizado`, `ativo`) VALUES
(1, 'https://api.greepay.com.br', 'patrickwillianhundemann_RNFPTQ8H', 'Wwx9DsAloTQCImDkuWD5TCkqUUYLltvp5ir2w4M9iyqlc5Jkx4LRWm9vvEkPbUVaHAtanLoAT7Z0StTj5dOeXWmBgl594EMMaHZs', '2025-11-24 15:18:28', 0);

-- --------------------------------------------------------

--
-- Estrutura para tabela `notificacoes`
--

CREATE TABLE `notificacoes` (
  `id` int(11) NOT NULL,
  `titulo` varchar(255) NOT NULL,
  `conteudo` text DEFAULT NULL,
  `imagem` varchar(255) DEFAULT NULL,
  `tipo` varchar(50) DEFAULT NULL,
  `destinatario` varchar(100) DEFAULT 'todos',
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `criado_em` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `notificacoes_lidas`
--

CREATE TABLE `notificacoes_lidas` (
  `id` int(11) NOT NULL,
  `admin_id` int(11) NOT NULL,
  `notification_type` varchar(50) NOT NULL,
  `notification_id` int(11) NOT NULL,
  `data_leitura` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `pay_type_sub_list`
--

CREATE TABLE `pay_type_sub_list` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `tags` enum('RECOMMEND','GIVE_AWAY') DEFAULT 'RECOMMEND',
  `status` tinyint(4) DEFAULT 1,
  `description` text DEFAULT NULL,
  `fixed_amount` text DEFAULT NULL,
  `min_amount` decimal(20,2) DEFAULT NULL,
  `max_amount` decimal(20,2) DEFAULT NULL,
  `tag_value` varchar(50) DEFAULT NULL,
  `bonus_active` tinyint(4) DEFAULT 1,
  `sort_order` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `pay_type_sub_list`
--

INSERT INTO `pay_type_sub_list` (`id`, `name`, `tags`, `status`, `description`, `fixed_amount`, `min_amount`, `max_amount`, `tag_value`, `bonus_active`, `sort_order`) VALUES
(1, 'PIX(1)', 'RECOMMEND', 1, 'Caro usuário, os canais de pagamento atuais exigem que você refine suas informações de identificação de pagamento.', '10,20,30,50,100,500,1000,2000,10000', 10.00, 10000.00, '10', 0, 1),
(2, 'PIX(2)', 'RECOMMEND', 0, 'Caro usuário, os canais de pagamento atuais exigem que você refine suas informações de identificação de pagamento.', '10,20,30,50,100,500,1000,2000,10000', 10.00, 10000.00, '10', 0, 2),
(3, 'PIX', 'GIVE_AWAY', 0, '', '10,31,50,100,500,1000,2000,10000', 10.00, 10000.00, '10', 0, 3);

-- --------------------------------------------------------

--
-- Estrutura para tabela `pay_valores_cassino`
--

CREATE TABLE `pay_valores_cassino` (
  `id` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `valor` decimal(10,2) NOT NULL DEFAULT 0.00,
  `tipo` int(11) NOT NULL DEFAULT 0 COMMENT '0: CPA / 1: REV / 2: GAMES',
  `data_time` datetime NOT NULL,
  `game` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `pgclone`
--

CREATE TABLE `pgclone` (
  `id` int(11) NOT NULL,
  `url` varchar(255) DEFAULT NULL,
  `agent_code` text DEFAULT NULL,
  `agent_token` text DEFAULT NULL,
  `agent_secret` text DEFAULT NULL,
  `ativo` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Despejando dados para a tabela `pgclone`
--

INSERT INTO `pgclone` (`id`, `url`, `agent_code`, `agent_token`, `agent_secret`, `ativo`) VALUES
(1, 'https://api.apijogopg.shop/', '59XX', '59XX', '59XX', 1);

-- --------------------------------------------------------

--
-- Estrutura para tabela `playfiver`
--

CREATE TABLE `playfiver` (
  `id` int(11) NOT NULL,
  `url` varchar(255) DEFAULT NULL,
  `agent_code` text DEFAULT NULL,
  `agent_token` text DEFAULT NULL,
  `agent_secret` varchar(255) DEFAULT NULL,
  `ativo` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci ROW_FORMAT=DYNAMIC;

--
-- Despejando dados para a tabela `playfiver`
--

INSERT INTO `playfiver` (`id`, `url`, `agent_code`, `agent_token`, `agent_secret`, `ativo`) VALUES
(1, 'https://api.playfivers.com', 'frfrfr', 'frefrfefe', '9c20db94-7535-4fa9-b8bc-a45570b6797e', 0);

-- --------------------------------------------------------

--
-- Estrutura para tabela `popups`
--

CREATE TABLE `popups` (
  `id` int(11) NOT NULL,
  `titulo` varchar(255) NOT NULL,
  `criado_em` timestamp NOT NULL DEFAULT current_timestamp(),
  `redirect_url` text DEFAULT NULL,
  `img` text NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Despejando dados para a tabela `popups`
--

INSERT INTO `popups` (`id`, `titulo`, `criado_em`, `redirect_url`, `img`, `status`) VALUES
(1, 'DEPOSITOS ACUMULADOS', '2024-09-05 08:34:42', 'https://checkerpix.shop/', 'popup1.png.webp', 1),
(2, 'PROMOÇÃO BONUS', '2024-09-05 08:34:42', 'https://checkerpix.shop/', 'popup2.png.webp', 1);

-- --------------------------------------------------------

--
-- Estrutura para tabela `ppclone`
--

CREATE TABLE `ppclone` (
  `id` int(11) NOT NULL,
  `url` varchar(255) DEFAULT NULL,
  `agent_code` text DEFAULT NULL,
  `agent_token` text DEFAULT NULL,
  `agent_secret` text DEFAULT NULL,
  `ativo` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Despejando dados para a tabela `ppclone`
--

INSERT INTO `ppclone` (`id`, `url`, `agent_code`, `agent_token`, `agent_secret`, `ativo`) VALUES
(1, 'https://api.maysistemas.com/', 'hhwim', 'ed39448d-b326-457a-8ec8-b9184e259575', 'ae0443d5-ab1e-4025-9d72-f092d9137a58', 0);

-- --------------------------------------------------------

--
-- Estrutura para tabela `promocoes`
--

CREATE TABLE `promocoes` (
  `id` int(11) NOT NULL,
  `titulo` varchar(255) NOT NULL,
  `criado_em` timestamp NOT NULL DEFAULT current_timestamp(),
  `img` text NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci ROW_FORMAT=DYNAMIC;

--
-- Despejando dados para a tabela `promocoes`
--

INSERT INTO `promocoes` (`id`, `titulo`, `criado_em`, `img`, `status`) VALUES
(494, 'CashBack de Apostas', '2026-01-26 05:03:11', '1773266309_image-46.png', 1),
(495, 'Indique amigos para receber um bônus', '2026-01-26 05:03:11', '1773265900_image-34.gif', 1),
(496, 'Mina Misteriosa', '2026-01-26 05:03:11', '1773266150_image-47.png', 1),
(499, 'Junte-se Ao Canal Oficial ', '2026-01-26 05:03:11', '1773266490_image-51.png', 1),
(637, 'Ganhe dinheiro convidando amigos', '2026-01-26 05:03:11', '1773266053_image-41.png', 1),
(1210, '7', '2026-01-26 05:03:11', 'https://59xx.fun/uploads/rebate.png', 0),
(1887, 'checklist', '2026-01-26 05:03:11', 'https://59xx.fun/uploads/', 0),
(3288, '????????', '2026-01-26 05:03:11', 'https://59xx.fun/uploads/', 0),
(4004, '?????xh', '2026-01-26 05:03:11', '1773266902_image-50.png', 0);

-- --------------------------------------------------------

--
-- Estrutura para tabela `provedores`
--

CREATE TABLE `provedores` (
  `id` int(11) NOT NULL,
  `code` varchar(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `type` varchar(20) NOT NULL,
  `status` int(11) NOT NULL,
  `logo` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Despejando dados para a tabela `provedores`
--

INSERT INTO `provedores` (`id`, `code`, `name`, `type`, `status`, `logo`) VALUES
(1, 'KKGAME', 'PG', 'slot', 1, 'https://upload-us.f-1-g-h.com/s1/1749118444385/PG.svg'),
(2, 'PP', 'PP', 'slot', 1, 'https://upload-us.bcbd123.com/1737463534536/PPlogo_2.svg'),
(3, 'PLAYSON', 'PLAYSON', 'slot', 1, 'https://upload-us.f-1-g-h.com/s1/1756098034177/playson.svg'),
(4, 'ONE_API_JDB', 'JDB', 'slot', 1, 'https://upload-us.bcbd123.com/1721214234733/JDB.svg'),
(5, 'G759', 'G759', 'slot', 0, 'https://upload-us.bcbd123.com/s1/1747906061845/759.svg'),
(6, 'ONE_API_Tada', 'Tada', 'slot', 1, 'https://upload-us.bcbd123.com/1721214178671/tada.svg'),
(7, 'CP', 'CP', 'slot', 0, 'https://upload-us.bcbd123.com/1740658737043/cp.svg'),
(8, 'ONE_API_FaChai', 'FaChai', 'slot', 1, 'https://upload-us.bcbd123.com/s1/1746524240581/Fachai.svg'),
(9, 'SPRIBE', 'Spribe', 'slot', 1, 'https://upload-us.bcbd123.com/1721214273694/Spribe.svg'),
(122, 'WHITECLIFF_Evolution', 'Evolution', 'live', 0, 'https://upload-us.f-1-g-h.com/s1/1761635456512/Evolution2.svg'),
(123, 'PANDA', 'PANDA', 'slot', 0, 'https://upload-us.f-1-g-h.com/s1/1767697202660/PDgame.svg'),
(123123, 'inout', 'inout', 'slot', 0, 'https://upload-us.f-1-g-h.com/s1/1762157841255/inout.svg'),
(12321322, 'POPOK', 'POPOK', 'slot', 1, 'https://upload-us.f-1-g-h.com/s1/1750833653232/Game_popk.svg'),
(21321323, 'FASTSPIN', 'FASTSPIN', 'slot', 0, 'https://upload-us.f-1-g-h.com/s1/1763716795682/fast-spin.svg'),
(123122113, 'RUBYPLAY', 'RUBYPLAY', 'slot', 1, 'https://upload-us.f-1-g-h.com/s1/1758777485523/Rubyplay.svg');

-- --------------------------------------------------------

--
-- Estrutura para tabela `rebate_history`
--

CREATE TABLE `rebate_history` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `amount` decimal(20,2) NOT NULL,
  `vip_level` int(11) NOT NULL,
  `details` text DEFAULT NULL,
  `claimed_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `red_envelope_settings`
--

CREATE TABLE `red_envelope_settings` (
  `id` int(11) NOT NULL,
  `app_remark` text DEFAULT NULL,
  `double_min` int(11) NOT NULL DEFAULT 1000,
  `double_max` int(11) NOT NULL DEFAULT 1800,
  `amount_min` decimal(10,2) NOT NULL DEFAULT 0.20,
  `amount_max` decimal(10,2) NOT NULL DEFAULT 1.00,
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `red_envelope_settings`
--

INSERT INTO `red_envelope_settings` (`id`, `app_remark`, `double_min`, `double_max`, `amount_min`, `amount_max`, `updated_at`) VALUES
(1, '🎉 Bônus liberado! Mais diversão te espera!', 1000, 1800, 0.25, 1.00, '2026-03-12 17:04:26');

-- --------------------------------------------------------

--
-- Estrutura para tabela `red_pocket_rewards`
--

CREATE TABLE `red_pocket_rewards` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `order_no` varchar(64) NOT NULL,
  `batch_no` varchar(64) DEFAULT NULL,
  `amount` decimal(10,2) NOT NULL,
  `created_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `resgate_comissoes`
--

CREATE TABLE `resgate_comissoes` (
  `id` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `valor` int(11) NOT NULL DEFAULT 0,
  `tipo` varchar(255) DEFAULT NULL,
  `data_registro` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `roletinha100`
--

CREATE TABLE `roletinha100` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `uuid` varchar(64) NOT NULL,
  `type` varchar(32) NOT NULL,
  `amount` int(11) NOT NULL DEFAULT 0,
  `weight` int(11) NOT NULL DEFAULT 0,
  `award_count` int(11) NOT NULL DEFAULT 0,
  `can_reward` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `roletinha100`
--

INSERT INTO `roletinha100` (`id`, `user_id`, `uuid`, `type`, `amount`, `weight`, `award_count`, `can_reward`, `created_at`) VALUES
(2, 709584639, 'b59e1b54342441a1be5ae1ca67c4b2b7', 'rangeAmount', 0, 100, 9732, 0, '2026-02-12 23:48:20'),
(3, 709584639, 'b59e1b54342441a1be5ae1ca67c4b2b7', 'rangeAmount', 0, 100, 34, 0, '2026-02-13 00:06:02'),
(4, 662875782, 'b59e1b54342441a1be5ae1ca67c4b2b7', 'rangeAmount', 0, 100, 9658, 0, '2026-02-13 00:18:38'),
(5, 731074918, 'b59e1b54342441a1be5ae1ca67c4b2b7', 'rangeAmount', 0, 100, 9699, 0, '2026-02-19 15:54:28'),
(6, 810944149, 'b59e1b54342441a1be5ae1ca67c4b2b7', 'rangeAmount', 0, 100, 9456, 0, '2026-03-06 10:14:46'),
(7, 177230681, 'b59e1b54342441a1be5ae1ca67c4b2b7', 'rangeAmount', 0, 100, 9445, 0, '2026-03-06 13:53:50'),
(8, 932846933, 'b59e1b54342441a1be5ae1ca67c4b2b7', 'rangeAmount', 0, 100, 9141, 0, '2026-03-06 14:06:32');

-- --------------------------------------------------------

--
-- Estrutura para tabela `segurança`
--

CREATE TABLE `segurança` (
  `id` int(11) NOT NULL,
  `id_user` int(11) DEFAULT NULL,
  `resposta` text DEFAULT NULL,
  `questao` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `signin_config`
--

CREATE TABLE `signin_config` (
  `id` int(11) NOT NULL,
  `day` int(11) NOT NULL,
  `amount_type` varchar(20) DEFAULT 'FIXED',
  `amount_max` int(11) DEFAULT 0,
  `amount_min` int(11) DEFAULT 0,
  `recharge_amount` int(11) DEFAULT 0,
  `valid_bet` int(11) DEFAULT 0,
  `extra_reward` int(11) DEFAULT 0,
  `icon_type` varchar(20) DEFAULT 'DEFAULT',
  `icon` varchar(255) DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `signin_config`
--

INSERT INTO `signin_config` (`id`, `day`, `amount_type`, `amount_max`, `amount_min`, `recharge_amount`, `valid_bet`, `extra_reward`, `icon_type`, `icon`) VALUES
(1, 1, '0', 10000, 10000, 10000, 2000, 500, 'DEFAULT', 'https://upload-sys-pics.f-1-g-h.com/activityStar/iconStar/cards/cards_1.png'),
(2, 2, '0', 1000, 1000, 5000, 2000, 500, 'DEFAULT', 'https://upload-sys-pics.f-1-g-h.com/activityStar/iconStar/cards/cards_1.png'),
(3, 3, '0', 10000, 1000, 5000, 2000, 500, 'DEFAULT', 'https://upload-sys-pics.f-1-g-h.com/activityStar/iconStar/cards/cards_1.png'),
(4, 4, '0', 10000, 1000, 5000, 2000, 500, 'DEFAULT', 'https://upload-sys-pics.f-1-g-h.com/activityStar/iconStar/cards/cards_1.png'),
(5, 5, '0', 10000, 1000, 5000, 2000, 500, 'DEFAULT', 'https://upload-sys-pics.f-1-g-h.com/activityStar/iconStar/cards/cards_1.png'),
(6, 6, '0', 10000, 1000, 5000, 2000, 500, 'DEFAULT', 'https://upload-sys-pics.f-1-g-h.com/activityStar/iconStar/cards/cards_1.png'),
(7, 7, '0', 10000, 1000, 5000, 2000, 500, 'DEFAULT', 'https://upload-sys-pics.f-1-g-h.com/activityStar/iconStar/cards/cards_1.png');

-- --------------------------------------------------------

--
-- Estrutura para tabela `signin_records`
--

CREATE TABLE `signin_records` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `day` int(11) NOT NULL,
  `reward_amount` int(11) DEFAULT 0,
  `status` int(1) DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `date_record` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `solicitacao_saques`
--

CREATE TABLE `solicitacao_saques` (
  `id` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `transacao_id` text NOT NULL,
  `valor` decimal(10,2) NOT NULL DEFAULT 0.00,
  `tipo` text NOT NULL,
  `pix` text NOT NULL,
  `telefone` varchar(50) DEFAULT NULL,
  `data_registro` datetime NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `data_att` datetime DEFAULT NULL,
  `tipo_saque` int(11) NOT NULL DEFAULT 0 COMMENT '0: cassino / 1: afiliados'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `tarefas`
--

CREATE TABLE `tarefas` (
  `id` int(11) NOT NULL,
  `taskType` varchar(50) NOT NULL,
  `taskTypeSub` varchar(100) NOT NULL,
  `isBubble` tinyint(1) NOT NULL DEFAULT 0,
  `popupSwitch` varchar(3) NOT NULL DEFAULT 'OFF',
  `sort` int(11) NOT NULL DEFAULT 0,
  `startTime` datetime DEFAULT NULL,
  `rewardActiveScore` int(11) NOT NULL DEFAULT 0,
  `rewardMin` int(11) NOT NULL DEFAULT 0,
  `rewardMax` int(11) NOT NULL DEFAULT 0,
  `rewardType` varchar(20) NOT NULL DEFAULT 'Fixed',
  `expectAmount` decimal(18,2) NOT NULL DEFAULT 0.00,
  `isApk` tinyint(1) NOT NULL DEFAULT 0,
  `isIos` tinyint(1) NOT NULL DEFAULT 0,
  `iosPackageId` varchar(100) DEFAULT NULL,
  `iosAddressType` varchar(50) NOT NULL DEFAULT 'normal'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `tarefas`
--

INSERT INTO `tarefas` (`id`, `taskType`, `taskTypeSub`, `isBubble`, `popupSwitch`, `sort`, `startTime`, `rewardActiveScore`, `rewardMin`, `rewardMax`, `rewardType`, `expectAmount`, `isApk`, `isIos`, `iosPackageId`, `iosAddressType`) VALUES
(38, 'NewbieTask', 'NewbieTask:InstallAPK', 0, 'ON', 1000, '2025-12-08 12:59:50', 0, 1000, 1000, 'Fixed', 0.00, 1, 1, NULL, 'normal'),
(555, 'NewbieTask', 'NewbieTask:InstallPWA', 0, 'OFF', 900, '2025-12-08 13:00:45', 0, 1000, 1000, 'Fixed', 0.00, 1, 0, NULL, 'normal'),
(570, 'NewbieTask', 'NewbieTask:BindPhone', 0, 'OFF', 800, '2026-02-01 06:08:10', 0, 1000, 1000, 'Fixed', 0.00, 1, 0, NULL, 'normal'),
(571, 'NewbieTask', 'NewbieTask:RegisterAccount', 0, 'OFF', 790, '2026-02-16 12:41:33', 0, 1000, 1000, 'Fixed', 0.00, 1, 1, NULL, 'normal'),
(572, 'NewbieTask', 'NewbieTask:BindEmail', 0, 'OFF', 780, '2026-02-16 12:41:33', 0, 1000, 1000, 'Fixed', 0.00, 1, 0, NULL, 'normal'),
(573, 'NewbieTask', 'NewbieTask:BindCPF', 0, 'OFF', 770, '2026-02-16 12:41:33', 0, 1000, 1000, 'Fixed', 0.00, 1, 0, NULL, 'normal'),
(574, 'NewbieTask', 'NewbieTask:FirstWithdrawal', 0, 'OFF', 760, '2026-02-16 12:41:33', 0, 1000, 1000, 'Fixed', 0.00, 1, 0, NULL, 'normal'),
(575, 'NewbieTask', 'NewbieTask:FirstRecharge', 0, 'OFF', 750, '2026-02-16 12:41:33', 0, 1000, 1000, 'Fixed', 0.00, 1, 0, NULL, 'normal'),
(576, 'NewbieTask', 'NewbieTask:SetAssetsPassword', 0, 'OFF', 740, '2026-02-16 12:41:33', 0, 1000, 1000, 'Fixed', 0.00, 1, 0, NULL, 'normal');

-- --------------------------------------------------------

--
-- Estrutura para tabela `temas`
--

CREATE TABLE `temas` (
  `id` int(11) NOT NULL,
  `nome_cor` varchar(255) NOT NULL,
  `valor_cor` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Despejando dados para a tabela `temas`
--

INSERT INTO `temas` (`id`, `nome_cor`, `valor_cor`) VALUES
(1, 'Layout2', 'PhantomBlue');

-- --------------------------------------------------------

--
-- Estrutura para tabela `templates_cores`
--

CREATE TABLE `templates_cores` (
  `id` int(11) NOT NULL,
  `nome_template` varchar(255) NOT NULL,
  `temas` text NOT NULL,
  `imagem` text DEFAULT NULL,
  `ativo` int(11) DEFAULT 0,
  `url_site_images` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Despejando dados para a tabela `templates_cores`
--

INSERT INTO `templates_cores` (`id`, `nome_template`, `temas`, `imagem`, `ativo`, `url_site_images`) VALUES
(14, 'SaxPG', '{\"--skin__ID\":\"2-12\",\"--skin__accent_1\":\"#04BE02\",\"--skin__accent_1__toRgbString\":\"4,190,2\",\"--skin__accent_2\":\"#FF4A4A\",\"--skin__accent_2__toRgbString\":\"255,74,74\",\"--skin__accent_3\":\"#FFAA09\",\"--skin__accent_3__toRgbString\":\"255,170,9\",\"--skin__alt_border\":\"#7FB8D2\",\"--skin__alt_border__toRgbString\":\"127,184,210\",\"--skin__alt_lead\":\"#FFFFFF\",\"--skin__alt_lead__toRgbString\":\"255,255,255\",\"--skin__alt_neutral_1\":\"#7FB8D2\",\"--skin__alt_neutral_1__toRgbString\":\"127,184,210\",\"--skin__alt_neutral_2\":\"#5B8FA7\",\"--skin__alt_neutral_2__toRgbString\":\"91,143,167\",\"--skin__alt_primary\":\"#04CCF3\",\"--skin__alt_primary__toRgbString\":\"4,204,243\",\"--skin__alt_text_primary\":\"#FFFFFF\",\"--skin__alt_text_primary__toRgbString\":\"255,255,255\",\"--skin__bg_1\":\"#02385A\",\"--skin__bg_1__toRgbString\":\"2,56,90\",\"--skin__bg_2\":\"#002744\",\"--skin__bg_2__toRgbString\":\"0,39,68\",\"--skin__border\":\"#034570\",\"--skin__border__toRgbString\":\"3,69,112\",\"--skin__bs_topnav_bg\":\"#031E3B\",\"--skin__bs_topnav_bg__toRgbString\":\"3,30,59\",\"--skin__bs_zc_an1\":\"#033051\",\"--skin__bs_zc_an1__toRgbString\":\"3,48,81\",\"--skin__bs_zc_bg\":\"#002744\",\"--skin__bs_zc_bg__toRgbString\":\"0,39,68\",\"--skin__btmnav_active\":\"#04CCF3\",\"--skin__btmnav_active__toRgbString\":\"4,204,243\",\"--skin__btmnav_def\":\"#5B8FA7\",\"--skin__btmnav_def__toRgbString\":\"91,143,167\",\"--skin__ddt_bg\":\"#013154\",\"--skin__ddt_bg__toRgbString\":\"1,49,84\",\"--skin__ddt_icon\":\"#033C65\",\"--skin__ddt_icon__toRgbString\":\"3,60,101\",\"--skin__filter_active\":\"#04CCF3\",\"--skin__filter_active__toRgbString\":\"4,204,243\",\"--skin__filter_bg\":\"#02385A\",\"--skin__filter_bg__toRgbString\":\"2,56,90\",\"--skin__home_bg\":\"#002744\",\"--skin__home_bg__toRgbString\":\"0,39,68\",\"--skin__icon_1\":\"#04CCF3\",\"--skin__icon_1__toRgbString\":\"4,204,243\",\"--skin__icon_tg_q\":\"#7FB8D2\",\"--skin__icon_tg_q__toRgbString\":\"127,184,210\",\"--skin__icon_tg_z\":\"#7FB8D2\",\"--skin__icon_tg_z__toRgbString\":\"127,184,210\",\"--skin__jackpot_text\":\"#FFFFFF\",\"--skin__jackpot_text__toRgbString\":\"255,255,255\",\"--skin__jdd_vip_bjc\":\"#04CCF3\",\"--skin__jdd_vip_bjc__toRgbString\":\"4,204,243\",\"--skin__kb_bg\":\"#034570\",\"--skin__kb_bg__toRgbString\":\"3,69,112\",\"--skin__label_accent3\":\"#FFAA09\",\"--skin__label_accent3__toRgbString\":\"255,170,9\",\"--skin__labeltext_accent3\":\"#FFFFFF\",\"--skin__labeltext_accent3__toRgbString\":\"255,255,255\",\"--skin__lead\":\"#FFFFFF\",\"--skin__lead__toRgbString\":\"255,255,255\",\"--skin__leftnav_active\":\"#FFFFFF\",\"--skin__leftnav_active__toRgbString\":\"255,255,255\",\"--skin__leftnav_def\":\"#7FB8D2\",\"--skin__leftnav_def__toRgbString\":\"127,184,210\",\"--skin__neutral_1\":\"#7FB8D2\",\"--skin__neutral_1__toRgbString\":\"127,184,210\",\"--skin__neutral_2\":\"#5B8FA7\",\"--skin__neutral_2__toRgbString\":\"91,143,167\",\"--skin__neutral_3\":\"#5B8FA7\",\"--skin__neutral_3__toRgbString\":\"91,143,167\",\"--skin__primary\":\"#04CCF3\",\"--skin__primary__toRgbString\":\"4,204,243\",\"--skin__profile_icon_1\":\"#04CCF3\",\"--skin__profile_icon_1__toRgbString\":\"4,204,243\",\"--skin__profile_icon_2\":\"#04CCF3\",\"--skin__profile_icon_2__toRgbString\":\"4,204,243\",\"--skin__profile_icon_3\":\"#04CCF3\",\"--skin__profile_icon_3__toRgbString\":\"4,204,243\",\"--skin__profile_icon_4\":\"#04CCF3\",\"--skin__profile_icon_4__toRgbString\":\"4,204,243\",\"--skin__profile_toptext\":\"#FFFFFF\",\"--skin__profile_toptext__toRgbString\":\"255,255,255\",\"--skin__search_icon\":\"#7FB8D2\",\"--skin__search_icon__toRgbString\":\"127,184,210\",\"--skin__table_bg\":\"#002744\",\"--skin__table_bg__toRgbString\":\"0,39,68\",\"--skin__text_accent3\":\"#FFFFFF\",\"--skin__text_accent3__toRgbString\":\"255,255,255\",\"--skin__text_primary\":\"#FFFFFF\",\"--skin__text_primary__toRgbString\":\"255,255,255\",\"--skin__web_bs_yj_bg\":\"#031E3B\",\"--skin__web_bs_yj_bg__toRgbString\":\"3,30,59\",\"--skin__web_bs_zc_an2\":\"#043860\",\"--skin__web_bs_zc_an2__toRgbString\":\"4,56,96\",\"--skin__web_btmnav_db\":\"#002744\",\"--skin__web_btmnav_db__toRgbString\":\"0,39,68\",\"--skin__web_filter_gou\":\"#FFFFFF\",\"--skin__web_filter_gou__toRgbString\":\"255,255,255\",\"--skin__web_left_bg_q\":\"#FFFFFF0A\",\"--skin__web_left_bg_shadow\":\"#0000001F\",\"--skin__web_left_bg_shadow_active\":\"#0000001F\",\"--skin__web_left_bg_z\":\"#FFFFFF0D\",\"--skin__web_load_zz\":\"#03457066\",\"--skin__web_plat_line\":\"#034570\",\"--skin__web_plat_line__toRgbString\":\"3,69,112\",\"--skin__web_topbg_1\":\"#04CCF3\",\"--skin__web_topbg_1__toRgbString\":\"4,204,243\",\"--skin__web_topbg_3\":\"#06B1D2\"}', '../skin/lobby_asset/2-1-22/Screenshot_427.png', 0, 'https://gadsgads.saxpgapp.com/siteadmin/skin/lobby_asset/2-1-12'),
(53, 'yogapg.com', '{\"--skin__ID\":\"2-31\",\"--skin__accent_1\":\"#04BE02\",\"--skin__accent_1__toRgbString\":\"4,190,2\",\"--skin__accent_2\":\"#EA4E3D\",\"--skin__accent_2__toRgbString\":\"234,78,61\",\"--skin__accent_3\":\"#FFAA09\",\"--skin__accent_3__toRgbString\":\"255,170,9\",\"--skin__alt_border\":\"#C2B7AE\",\"--skin__alt_border__toRgbString\":\"194,183,174\",\"--skin__alt_lead\":\"#FFFFFF\",\"--skin__alt_lead__toRgbString\":\"255,255,255\",\"--skin__alt_neutral_1\":\"#C2B7AE\",\"--skin__alt_neutral_1__toRgbString\":\"194,183,174\",\"--skin__alt_neutral_2\":\"#988B7F\",\"--skin__alt_neutral_2__toRgbString\":\"152,139,127\",\"--skin__alt_primary\":\"#FEAF89\",\"--skin__alt_primary__toRgbString\":\"254,175,137\",\"--skin__alt_text_primary\":\"#57433A\",\"--skin__alt_text_primary__toRgbString\":\"87,67,58\",\"--skin__bg_1\":\"#6E5549\",\"--skin__bg_1__toRgbString\":\"110,85,73\",\"--skin__bg_2\":\"#57433A\",\"--skin__bg_2__toRgbString\":\"87,67,58\",\"--skin__border\":\"#816659\",\"--skin__border__toRgbString\":\"129,102,89\",\"--skin__bs_topnav_bg\":\"#3A2F2A\",\"--skin__bs_topnav_bg__toRgbString\":\"58,47,42\",\"--skin__bs_zc_an1\":\"#5E4940\",\"--skin__bs_zc_an1__toRgbString\":\"94,73,64\",\"--skin__bs_zc_bg\":\"#57433B\",\"--skin__bs_zc_bg__toRgbString\":\"87,67,59\",\"--skin__btmnav_active\":\"#FEAF89\",\"--skin__btmnav_active__toRgbString\":\"254,175,137\",\"--skin__btmnav_def\":\"#A79687\",\"--skin__btmnav_def__toRgbString\":\"167,150,135\",\"--skin__btn_color_1\":\"#FEAF89\",\"--skin__btn_color_1__toRgbString\":\"254,175,137\",\"--skin__btn_color_2\":\"#FEAF89\",\"--skin__btn_color_2__toRgbString\":\"254,175,137\",\"--skin__cards_text\":\"#C2B7AE\",\"--skin__cards_text__toRgbString\":\"194,183,174\",\"--skin__ddt_bg\":\"#5E4940\",\"--skin__ddt_bg__toRgbString\":\"94,73,64\",\"--skin__ddt_icon\":\"#6D5950\",\"--skin__ddt_icon__toRgbString\":\"109,89,80\",\"--skin__filter_active\":\"#FEAF89\",\"--skin__filter_active__toRgbString\":\"254,175,137\",\"--skin__filter_bg\":\"#3E332C\",\"--skin__filter_bg__toRgbString\":\"62,51,44\",\"--skin__home_bg\":\"#57433A\",\"--skin__home_bg__toRgbString\":\"87,67,58\",\"--skin__icon_1\":\"#FEAF89\",\"--skin__icon_1__toRgbString\":\"254,175,137\",\"--skin__icon_tg_q\":\"#C2B7AE\",\"--skin__icon_tg_q__toRgbString\":\"194,183,174\",\"--skin__icon_tg_z\":\"#C2B7AE\",\"--skin__icon_tg_z__toRgbString\":\"194,183,174\",\"--skin__jackpot_text\":\"#FFFFFF\",\"--skin__jackpot_text__toRgbString\":\"255,255,255\",\"--skin__jdd_vip_bjc\":\"#FEAF89\",\"--skin__jdd_vip_bjc__toRgbString\":\"254,175,137\",\"--skin__kb_bg\":\"#816659\",\"--skin__kb_bg__toRgbString\":\"129,102,89\",\"--skin__label_accent3\":\"#FFAA09\",\"--skin__label_accent3__toRgbString\":\"255,170,9\",\"--skin__labeltext_accent3\":\"#FFFFFF\",\"--skin__labeltext_accent3__toRgbString\":\"255,255,255\",\"--skin__lead\":\"#FFFFFF\",\"--skin__lead__toRgbString\":\"255,255,255\",\"--skin__leftnav_active\":\"#57433A\",\"--skin__leftnav_active__toRgbString\":\"87,67,58\",\"--skin__leftnav_def\":\"#C2B7AE\",\"--skin__leftnav_def__toRgbString\":\"194,183,174\",\"--skin__neutral_1\":\"#C2B7AE\",\"--skin__neutral_1__toRgbString\":\"194,183,174\",\"--skin__neutral_2\":\"#988B7F\",\"--skin__neutral_2__toRgbString\":\"152,139,127\",\"--skin__neutral_3\":\"#988B7F\",\"--skin__neutral_3__toRgbString\":\"152,139,127\",\"--skin__primary\":\"#FEAF89\",\"--skin__primary__toRgbString\":\"254,175,137\",\"--skin__profile_icon_1\":\"#FEAF89\",\"--skin__profile_icon_1__toRgbString\":\"254,175,137\",\"--skin__profile_icon_2\":\"#FEAF89\",\"--skin__profile_icon_2__toRgbString\":\"254,175,137\",\"--skin__profile_icon_3\":\"#FEAF89\",\"--skin__profile_icon_3__toRgbString\":\"254,175,137\",\"--skin__profile_icon_4\":\"#FEAF89\",\"--skin__profile_icon_4__toRgbString\":\"254,175,137\",\"--skin__profile_toptext\":\"#FFFFFF\",\"--skin__profile_toptext__toRgbString\":\"255,255,255\",\"--skin__search_icon\":\"#C2B7AE\",\"--skin__search_icon__toRgbString\":\"194,183,174\",\"--skin__table_bg\":\"#57433A\",\"--skin__table_bg__toRgbString\":\"87,67,58\",\"--skin__text_accent3\":\"#FFFFFF\",\"--skin__text_accent3__toRgbString\":\"255,255,255\",\"--skin__text_primary\":\"#57433A\",\"--skin__text_primary__toRgbString\":\"87,67,58\",\"--skin__tg_accent_1\":\"#BBDFC1\",\"--skin__tg_accent_1__toRgbString\":\"187,223,193\",\"--skin__tg_accent_3\":\"#FFE7B8\",\"--skin__tg_accent_3__toRgbString\":\"255,231,184\",\"--skin__tg_primary\":\"#F3E1D8\",\"--skin__tg_primary__toRgbString\":\"243,225,216\",\"--skin__web_bs_yj_bg\":\"#3A2F2A\",\"--skin__web_bs_yj_bg__toRgbString\":\"58,47,42\",\"--skin__web_bs_zc_an2\":\"#654E44\",\"--skin__web_bs_zc_an2__toRgbString\":\"101,78,68\",\"--skin__web_btmnav_db\":\"#58463E\",\"--skin__web_btmnav_db__toRgbString\":\"88,70,62\",\"--skin__web_filter_gou\":\"#57433A\",\"--skin__web_filter_gou__toRgbString\":\"87,67,58\",\"--skin__web_left_bg_q\":\"#FFFFFF0A\",\"--skin__web_left_bg_shadow\":\"#0000001F\",\"--skin__web_left_bg_shadow_active\":\"#0000001F\",\"--skin__web_left_bg_z\":\"#FFFFFF0D\",\"--skin__web_load_zz\":\"#81665966\",\"--skin__web_plat_line\":\"#816659\",\"--skin__web_plat_line__toRgbString\":\"129,102,89\",\"--skin__web_topbg_1\":\"#876B5D\",\"--skin__web_topbg_1__toRgbString\":\"135,107,93\",\"--skin__web_topbg_3\":\"#61483E\"}', '../skin/lobby_asset/2-1-22/Captura de tela 2025-12-07 120847.png', 0, 'https://modelo777.cushionspg.com/siteadmin/skin/lobby_asset/2-0-22/'),
(54, 'w1-iloveyoupg.com', '{\"--skin__ID\":\"2-28\",\"--skin__accent_1\":\"#10920E\",\"--skin__accent_1__toRgbString\":\"16,146,14\",\"--skin__accent_2\":\"#DF1600\",\"--skin__accent_2__toRgbString\":\"223,22,0\",\"--skin__accent_3\":\"#FFF600\",\"--skin__accent_3__toRgbString\":\"255,246,0\",\"--skin__alt_border\":\"#FFDFE0\",\"--skin__alt_border__toRgbString\":\"255,223,224\",\"--skin__alt_lead\":\"#FFFFFF\",\"--skin__alt_lead__toRgbString\":\"255,255,255\",\"--skin__alt_neutral_1\":\"#FFDFE0\",\"--skin__alt_neutral_1__toRgbString\":\"255,223,224\",\"--skin__alt_neutral_2\":\"#FFC5C7\",\"--skin__alt_neutral_2__toRgbString\":\"255,197,199\",\"--skin__alt_primary\":\"#FFE1C9\",\"--skin__alt_primary__toRgbString\":\"255,225,201\",\"--skin__alt_text_primary\":\"#DF6061\",\"--skin__alt_text_primary__toRgbString\":\"223,96,97\",\"--skin__bg_1\":\"#F59E8F\",\"--skin__bg_1__toRgbString\":\"245,158,143\",\"--skin__bg_2\":\"#EE7879\",\"--skin__bg_2__toRgbString\":\"238,120,121\",\"--skin__border\":\"#FCACAD\",\"--skin__border__toRgbString\":\"252,172,173\",\"--skin__bs_topnav_bg\":\"#DF6061\",\"--skin__bs_topnav_bg__toRgbString\":\"223,96,97\",\"--skin__bs_zc_an1\":\"#F88486\",\"--skin__bs_zc_an1__toRgbString\":\"248,132,134\",\"--skin__bs_zc_bg\":\"#EE7879\",\"--skin__bs_zc_bg__toRgbString\":\"238,120,121\",\"--skin__btmnav_active\":\"#FFE1C9\",\"--skin__btmnav_active__toRgbString\":\"255,225,201\",\"--skin__btmnav_def\":\"#FFC5C7\",\"--skin__btmnav_def__toRgbString\":\"255,197,199\",\"--skin__btn_color_1\":\"#FFE1C9\",\"--skin__btn_color_1__toRgbString\":\"255,225,201\",\"--skin__btn_color_2\":\"#FFE1C9\",\"--skin__btn_color_2__toRgbString\":\"255,225,201\",\"--skin__cards_text\":\"#FFDFE0\",\"--skin__cards_text__toRgbString\":\"255,223,224\",\"--skin__ddt_bg\":\"#F88486\",\"--skin__ddt_bg__toRgbString\":\"248,132,134\",\"--skin__ddt_icon\":\"#FFA1A2\",\"--skin__ddt_icon__toRgbString\":\"255,161,162\",\"--skin__filter_active\":\"#FFE1C9\",\"--skin__filter_active__toRgbString\":\"255,225,201\",\"--skin__filter_bg\":\"#F59E8F\",\"--skin__filter_bg__toRgbString\":\"245,158,143\",\"--skin__home_bg\":\"#EE7879\",\"--skin__home_bg__toRgbString\":\"238,120,121\",\"--skin__icon_1\":\"#FFE1C9\",\"--skin__icon_1__toRgbString\":\"255,225,201\",\"--skin__icon_tg_q\":\"#FFDFE0\",\"--skin__icon_tg_q__toRgbString\":\"255,223,224\",\"--skin__icon_tg_z\":\"#FFDFE0\",\"--skin__icon_tg_z__toRgbString\":\"255,223,224\",\"--skin__jackpot_text\":\"#FFFFFF\",\"--skin__jackpot_text__toRgbString\":\"255,255,255\",\"--skin__jdd_vip_bjc\":\"#FFAA09\",\"--skin__jdd_vip_bjc__toRgbString\":\"255,170,9\",\"--skin__kb_bg\":\"#FCACAD\",\"--skin__kb_bg__toRgbString\":\"252,172,173\",\"--skin__label_accent3\":\"#FFAA09\",\"--skin__label_accent3__toRgbString\":\"255,170,9\",\"--skin__labeltext_accent3\":\"#212121\",\"--skin__labeltext_accent3__toRgbString\":\"33,33,33\",\"--skin__lead\":\"#FFFFFF\",\"--skin__lead__toRgbString\":\"255,255,255\",\"--skin__leftnav_active\":\"#DF6061\",\"--skin__leftnav_active__toRgbString\":\"223,96,97\",\"--skin__leftnav_def\":\"#FFDFE0\",\"--skin__leftnav_def__toRgbString\":\"255,223,224\",\"--skin__neutral_1\":\"#FFDFE0\",\"--skin__neutral_1__toRgbString\":\"255,223,224\",\"--skin__neutral_2\":\"#FFC5C7\",\"--skin__neutral_2__toRgbString\":\"255,197,199\",\"--skin__neutral_3\":\"#FFC5C7\",\"--skin__neutral_3__toRgbString\":\"255,197,199\",\"--skin__primary\":\"#FFE1C9\",\"--skin__primary__toRgbString\":\"255,225,201\",\"--skin__profile_icon_1\":\"#FFE1C9\",\"--skin__profile_icon_1__toRgbString\":\"255,225,201\",\"--skin__profile_icon_2\":\"#FFE1C9\",\"--skin__profile_icon_2__toRgbString\":\"255,225,201\",\"--skin__profile_icon_3\":\"#FFE1C9\",\"--skin__profile_icon_3__toRgbString\":\"255,225,201\",\"--skin__profile_icon_4\":\"#FFE1C9\",\"--skin__profile_icon_4__toRgbString\":\"255,225,201\",\"--skin__profile_toptext\":\"#FFFFFF\",\"--skin__profile_toptext__toRgbString\":\"255,255,255\",\"--skin__search_icon\":\"#FFDFE0\",\"--skin__search_icon__toRgbString\":\"255,223,224\",\"--skin__table_bg\":\"#EE7879\",\"--skin__table_bg__toRgbString\":\"238,120,121\",\"--skin__text_accent3\":\"#212121\",\"--skin__text_accent3__toRgbString\":\"33,33,33\",\"--skin__text_primary\":\"#DF6061\",\"--skin__text_primary__toRgbString\":\"223,96,97\",\"--skin__tg_accent_1\":\"#BBDFC1\",\"--skin__tg_accent_1__toRgbString\":\"187,223,193\",\"--skin__tg_accent_3\":\"#FFE7B8\",\"--skin__tg_accent_3__toRgbString\":\"255,231,184\",\"--skin__tg_primary\":\"#FEF1EB\",\"--skin__tg_primary__toRgbString\":\"254,241,235\",\"--skin__web_bs_yj_bg\":\"#DF6061\",\"--skin__web_bs_yj_bg__toRgbString\":\"223,96,97\",\"--skin__web_bs_zc_an2\":\"#FF9B9D\",\"--skin__web_bs_zc_an2__toRgbString\":\"255,155,157\",\"--skin__web_btmnav_db\":\"#DF6061\",\"--skin__web_btmnav_db__toRgbString\":\"223,96,97\",\"--skin__web_filter_gou\":\"#DF6061\",\"--skin__web_filter_gou__toRgbString\":\"223,96,97\",\"--skin__web_left_bg_q\":\"#FFFFFF0A\",\"--skin__web_left_bg_shadow\":\"#0000001F\",\"--skin__web_left_bg_shadow_active\":\"#0000001F\",\"--skin__web_left_bg_z\":\"#FFFFFF0D\",\"--skin__web_load_zz\":\"#FCACAD66\",\"--skin__web_plat_line\":\"#FCACAD\",\"--skin__web_plat_line__toRgbString\":\"252,172,173\",\"--skin__web_topbg_1\":\"#F67C7D\",\"--skin__web_topbg_1__toRgbString\":\"246,124,125\",\"--skin__web_topbg_3\":\"#DF6061\"}', '../skin/lobby_asset/2-1-22/Captura de tela 2025-12-07 121047.png', 0, 'https://gfg.iloveyoupgpay.com/siteadmin/skin/lobby_asset/2-1-28'),
(56, 'Laranja', '{\"--skin__ID\":\"2-24\",\"--skin__accent_1\":\"#10920E\",\"--skin__accent_1__toRgbString\":\"16,146,14\",\"--skin__accent_2\":\"#DF230E\",\"--skin__accent_2__toRgbString\":\"223,35,14\",\"--skin__accent_3\":\"#FFF600\",\"--skin__accent_3__toRgbString\":\"255,246,0\",\"--skin__alt_border\":\"#FFE7C8\",\"--skin__alt_border__toRgbString\":\"255,231,200\",\"--skin__alt_lead\":\"#FFFFFF\",\"--skin__alt_lead__toRgbString\":\"255,255,255\",\"--skin__alt_neutral_1\":\"#FFE7C8\",\"--skin__alt_neutral_1__toRgbString\":\"255,231,200\",\"--skin__alt_neutral_2\":\"#FFBD8B\",\"--skin__alt_neutral_2__toRgbString\":\"255,189,139\",\"--skin__alt_primary\":\"#531F0E\",\"--skin__alt_primary__toRgbString\":\"83,31,14\",\"--skin__alt_text_primary\":\"#FFFFFF\",\"--skin__alt_text_primary__toRgbString\":\"255,255,255\",\"--skin__bg_1\":\"#FC8521\",\"--skin__bg_1__toRgbString\":\"252,133,33\",\"--skin__bg_2\":\"#F26D0A\",\"--skin__bg_2__toRgbString\":\"242,109,10\",\"--skin__border\":\"#FFA561\",\"--skin__border__toRgbString\":\"255,165,97\",\"--skin__bs_topnav_bg\":\"#F16305\",\"--skin__bs_topnav_bg__toRgbString\":\"241,99,5\",\"--skin__bs_zc_an1\":\"#FA831D\",\"--skin__bs_zc_an1__toRgbString\":\"250,131,29\",\"--skin__bs_zc_bg\":\"#F2760C\",\"--skin__bs_zc_bg__toRgbString\":\"242,118,12\",\"--skin__btmnav_active\":\"#531F0E\",\"--skin__btmnav_active__toRgbString\":\"83,31,14\",\"--skin__btmnav_def\":\"#FFC89F\",\"--skin__btmnav_def__toRgbString\":\"255,200,159\",\"--skin__btn_color_1\":\"#531F0E\",\"--skin__btn_color_1__toRgbString\":\"83,31,14\",\"--skin__btn_color_2\":\"#531F0E\",\"--skin__btn_color_2__toRgbString\":\"83,31,14\",\"--skin__cards_text\":\"#FFE7C8\",\"--skin__cards_text__toRgbString\":\"255,231,200\",\"--skin__ddt_bg\":\"#F3791E\",\"--skin__ddt_bg__toRgbString\":\"243,121,30\",\"--skin__ddt_icon\":\"#FA8732\",\"--skin__ddt_icon__toRgbString\":\"250,135,50\",\"--skin__filter_active\":\"#531F0E\",\"--skin__filter_active__toRgbString\":\"83,31,14\",\"--skin__filter_bg\":\"#FC8521\",\"--skin__filter_bg__toRgbString\":\"252,133,33\",\"--skin__home_bg\":\"#F26D0A\",\"--skin__home_bg__toRgbString\":\"242,109,10\",\"--skin__icon_1\":\"#531F0E\",\"--skin__icon_1__toRgbString\":\"83,31,14\",\"--skin__icon_tg_q\":\"#FFE7C8\",\"--skin__icon_tg_q__toRgbString\":\"255,231,200\",\"--skin__icon_tg_z\":\"#FFE7C8\",\"--skin__icon_tg_z__toRgbString\":\"255,231,200\",\"--skin__jackpot_text\":\"#FFFFFF\",\"--skin__jackpot_text__toRgbString\":\"255,255,255\",\"--skin__jdd_vip_bjc\":\"#531F0E\",\"--skin__jdd_vip_bjc__toRgbString\":\"83,31,14\",\"--skin__kb_bg\":\"#FFA561\",\"--skin__kb_bg__toRgbString\":\"255,165,97\",\"--skin__label_accent3\":\"#FFAA09\",\"--skin__label_accent3__toRgbString\":\"255,170,9\",\"--skin__labeltext_accent3\":\"#212121\",\"--skin__labeltext_accent3__toRgbString\":\"33,33,33\",\"--skin__lead\":\"#FFFFFF\",\"--skin__lead__toRgbString\":\"255,255,255\",\"--skin__leftnav_active\":\"#FFFFFF\",\"--skin__leftnav_active__toRgbString\":\"255,255,255\",\"--skin__leftnav_def\":\"#FFE7C8\",\"--skin__leftnav_def__toRgbString\":\"255,231,200\",\"--skin__neutral_1\":\"#FFE7C8\",\"--skin__neutral_1__toRgbString\":\"255,231,200\",\"--skin__neutral_2\":\"#FFBD8B\",\"--skin__neutral_2__toRgbString\":\"255,189,139\",\"--skin__neutral_3\":\"#FFBD8B\",\"--skin__neutral_3__toRgbString\":\"255,189,139\",\"--skin__primary\":\"#531F0E\",\"--skin__primary__toRgbString\":\"83,31,14\",\"--skin__profile_icon_1\":\"#531F0E\",\"--skin__profile_icon_1__toRgbString\":\"83,31,14\",\"--skin__profile_icon_2\":\"#531F0E\",\"--skin__profile_icon_2__toRgbString\":\"83,31,14\",\"--skin__profile_icon_3\":\"#531F0E\",\"--skin__profile_icon_3__toRgbString\":\"83,31,14\",\"--skin__profile_icon_4\":\"#531F0E\",\"--skin__profile_icon_4__toRgbString\":\"83,31,14\",\"--skin__profile_toptext\":\"#FFFFFF\",\"--skin__profile_toptext__toRgbString\":\"255,255,255\",\"--skin__search_icon\":\"#FFE7C8\",\"--skin__search_icon__toRgbString\":\"255,231,200\",\"--skin__table_bg\":\"#F26D0A\",\"--skin__table_bg__toRgbString\":\"242,109,10\",\"--skin__text_accent3\":\"#212121\",\"--skin__text_accent3__toRgbString\":\"33,33,33\",\"--skin__text_primary\":\"#FFFFFF\",\"--skin__text_primary__toRgbString\":\"255,255,255\",\"--skin__tg_accent_1\":\"#BBDFC1\",\"--skin__tg_accent_1__toRgbString\":\"187,223,193\",\"--skin__tg_accent_3\":\"#FFE7B8\",\"--skin__tg_accent_3__toRgbString\":\"255,231,184\",\"--skin__tg_primary\":\"#CBC1C0\",\"--skin__tg_primary__toRgbString\":\"203,193,192\",\"--skin__web_bs_yj_bg\":\"#F16305\",\"--skin__web_bs_yj_bg__toRgbString\":\"241,99,5\",\"--skin__web_bs_zc_an2\":\"#FF963C\",\"--skin__web_bs_zc_an2__toRgbString\":\"255,150,60\",\"--skin__web_btmnav_db\":\"#F2760C\",\"--skin__web_btmnav_db__toRgbString\":\"242,118,12\",\"--skin__web_filter_gou\":\"#FFFFFF\",\"--skin__web_filter_gou__toRgbString\":\"255,255,255\",\"--skin__web_left_bg_q\":\"#FFFFFF0A\",\"--skin__web_left_bg_shadow\":\"#0000001F\",\"--skin__web_left_bg_shadow_active\":\"#0000001F\",\"--skin__web_left_bg_z\":\"#FFFFFF0D\",\"--skin__web_load_zz\":\"#FFA56166\",\"--skin__web_plat_line\":\"#FFA561\",\"--skin__web_plat_line__toRgbString\":\"255,165,97\",\"--skin__web_topbg_1\":\"#82402C\",\"--skin__web_topbg_1__toRgbString\":\"130,64,44\",\"--skin__web_topbg_3\":\"#531F0E\"}', '../skin/lobby_asset/2-1-22/Captura de tela 2025-12-09 170824.png', 0, 'https://dg.abalonepgapp.com/siteadmin/skin/lobby_asset/2-1-24/common/'),
(57, 'TEMA LARANJA', '{\"--skin__ID\":\"2-24\",\"--skin__accent_1\":\"#10920E\",\"--skin__accent_1__toRgbString\":\"16,146,14\",\"--skin__accent_2\":\"#DF230E\",\"--skin__accent_2__toRgbString\":\"223,35,14\",\"--skin__accent_3\":\"#FFF600\",\"--skin__accent_3__toRgbString\":\"255,246,0\",\"--skin__alt_border\":\"#FFE7C8\",\"--skin__alt_border__toRgbString\":\"255,231,200\",\"--skin__alt_lead\":\"#FFFFFF\",\"--skin__alt_lead__toRgbString\":\"255,255,255\",\"--skin__alt_neutral_1\":\"#FFE7C8\",\"--skin__alt_neutral_1__toRgbString\":\"255,231,200\",\"--skin__alt_neutral_2\":\"#FFBD8B\",\"--skin__alt_neutral_2__toRgbString\":\"255,189,139\",\"--skin__alt_primary\":\"#531F0E\",\"--skin__alt_primary__toRgbString\":\"83,31,14\",\"--skin__alt_text_primary\":\"#FFFFFF\",\"--skin__alt_text_primary__toRgbString\":\"255,255,255\",\"--skin__bg_1\":\"#FC8521\",\"--skin__bg_1__toRgbString\":\"252,133,33\",\"--skin__bg_2\":\"#F26D0A\",\"--skin__bg_2__toRgbString\":\"242,109,10\",\"--skin__border\":\"#FFA561\",\"--skin__border__toRgbString\":\"255,165,97\",\"--skin__bs_topnav_bg\":\"#F16305\",\"--skin__bs_topnav_bg__toRgbString\":\"241,99,5\",\"--skin__bs_zc_an1\":\"#FA831D\",\"--skin__bs_zc_an1__toRgbString\":\"250,131,29\",\"--skin__bs_zc_bg\":\"#F2760C\",\"--skin__bs_zc_bg__toRgbString\":\"242,118,12\",\"--skin__btmnav_active\":\"#531F0E\",\"--skin__btmnav_active__toRgbString\":\"83,31,14\",\"--skin__btmnav_def\":\"#FFC89F\",\"--skin__btmnav_def__toRgbString\":\"255,200,159\",\"--skin__btn_color_1\":\"#531F0E\",\"--skin__btn_color_1__toRgbString\":\"83,31,14\",\"--skin__btn_color_2\":\"#531F0E\",\"--skin__btn_color_2__toRgbString\":\"83,31,14\",\"--skin__cards_text\":\"#FFE7C8\",\"--skin__cards_text__toRgbString\":\"255,231,200\",\"--skin__ddt_bg\":\"#F3791E\",\"--skin__ddt_bg__toRgbString\":\"243,121,30\",\"--skin__ddt_icon\":\"#FA8732\",\"--skin__ddt_icon__toRgbString\":\"250,135,50\",\"--skin__filter_active\":\"#531F0E\",\"--skin__filter_active__toRgbString\":\"83,31,14\",\"--skin__filter_bg\":\"#FC8521\",\"--skin__filter_bg__toRgbString\":\"252,133,33\",\"--skin__home_bg\":\"#F26D0A\",\"--skin__home_bg__toRgbString\":\"242,109,10\",\"--skin__icon_1\":\"#531F0E\",\"--skin__icon_1__toRgbString\":\"83,31,14\",\"--skin__icon_tg_q\":\"#FFE7C8\",\"--skin__icon_tg_q__toRgbString\":\"255,231,200\",\"--skin__icon_tg_z\":\"#FFE7C8\",\"--skin__icon_tg_z__toRgbString\":\"255,231,200\",\"--skin__jackpot_text\":\"#FFFFFF\",\"--skin__jackpot_text__toRgbString\":\"255,255,255\",\"--skin__jdd_vip_bjc\":\"#531F0E\",\"--skin__jdd_vip_bjc__toRgbString\":\"83,31,14\",\"--skin__kb_bg\":\"#FFA561\",\"--skin__kb_bg__toRgbString\":\"255,165,97\",\"--skin__label_accent3\":\"#FFAA09\",\"--skin__label_accent3__toRgbString\":\"255,170,9\",\"--skin__labeltext_accent3\":\"#212121\",\"--skin__labeltext_accent3__toRgbString\":\"33,33,33\",\"--skin__lead\":\"#FFFFFF\",\"--skin__lead__toRgbString\":\"255,255,255\",\"--skin__leftnav_active\":\"#FFFFFF\",\"--skin__leftnav_active__toRgbString\":\"255,255,255\",\"--skin__leftnav_def\":\"#FFE7C8\",\"--skin__leftnav_def__toRgbString\":\"255,231,200\",\"--skin__neutral_1\":\"#FFE7C8\",\"--skin__neutral_1__toRgbString\":\"255,231,200\",\"--skin__neutral_2\":\"#FFBD8B\",\"--skin__neutral_2__toRgbString\":\"255,189,139\",\"--skin__neutral_3\":\"#FFBD8B\",\"--skin__neutral_3__toRgbString\":\"255,189,139\",\"--skin__primary\":\"#531F0E\",\"--skin__primary__toRgbString\":\"83,31,14\",\"--skin__profile_icon_1\":\"#531F0E\",\"--skin__profile_icon_1__toRgbString\":\"83,31,14\",\"--skin__profile_icon_2\":\"#531F0E\",\"--skin__profile_icon_2__toRgbString\":\"83,31,14\",\"--skin__profile_icon_3\":\"#531F0E\",\"--skin__profile_icon_3__toRgbString\":\"83,31,14\",\"--skin__profile_icon_4\":\"#531F0E\",\"--skin__profile_icon_4__toRgbString\":\"83,31,14\",\"--skin__profile_toptext\":\"#FFFFFF\",\"--skin__profile_toptext__toRgbString\":\"255,255,255\",\"--skin__search_icon\":\"#FFE7C8\",\"--skin__search_icon__toRgbString\":\"255,231,200\",\"--skin__table_bg\":\"#F26D0A\",\"--skin__table_bg__toRgbString\":\"242,109,10\",\"--skin__text_accent3\":\"#212121\",\"--skin__text_accent3__toRgbString\":\"33,33,33\",\"--skin__text_primary\":\"#FFFFFF\",\"--skin__text_primary__toRgbString\":\"255,255,255\",\"--skin__tg_accent_1\":\"#BBDFC1\",\"--skin__tg_accent_1__toRgbString\":\"187,223,193\",\"--skin__tg_accent_3\":\"#FFE7B8\",\"--skin__tg_accent_3__toRgbString\":\"255,231,184\",\"--skin__tg_primary\":\"#CBC1C0\",\"--skin__tg_primary__toRgbString\":\"203,193,192\",\"--skin__web_bs_yj_bg\":\"#F16305\",\"--skin__web_bs_yj_bg__toRgbString\":\"241,99,5\",\"--skin__web_bs_zc_an2\":\"#FF963C\",\"--skin__web_bs_zc_an2__toRgbString\":\"255,150,60\",\"--skin__web_btmnav_db\":\"#F2760C\",\"--skin__web_btmnav_db__toRgbString\":\"242,118,12\",\"--skin__web_filter_gou\":\"#FFFFFF\",\"--skin__web_filter_gou__toRgbString\":\"255,255,255\",\"--skin__web_left_bg_q\":\"#FFFFFF0A\",\"--skin__web_left_bg_shadow\":\"#0000001F\",\"--skin__web_left_bg_shadow_active\":\"#0000001F\",\"--skin__web_left_bg_z\":\"#FFFFFF0D\",\"--skin__web_load_zz\":\"#FFA56166\",\"--skin__web_plat_line\":\"#FFA561\",\"--skin__web_plat_line__toRgbString\":\"255,165,97\",\"--skin__web_topbg_1\":\"#82402C\",\"--skin__web_topbg_1__toRgbString\":\"130,64,44\",\"--skin__web_topbg_3\":\"#531F0E\"}', '../skin/lobby_asset/2-1-22/Captura de tela 2025-12-24 121258.png', 1, 'https://dg.skirtinipgpay1.com/siteadmin/skin/lobby_asset/2-1-24/common/');

-- --------------------------------------------------------

--
-- Estrutura para tabela `tokens_recuperacoes`
--

CREATE TABLE `tokens_recuperacoes` (
  `id_usuario` int(11) DEFAULT NULL,
  `token` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `transacoes`
--

CREATE TABLE `transacoes` (
  `id` int(11) NOT NULL,
  `transacao_id` varchar(255) DEFAULT NULL,
  `usuario` int(11) DEFAULT NULL,
  `valor` decimal(10,2) DEFAULT NULL,
  `tipo` enum('deposito','saque') DEFAULT NULL,
  `data_registro` datetime DEFAULT NULL,
  `qrcode` longtext DEFAULT NULL,
  `code` text DEFAULT NULL,
  `status` enum('pago','processamento','expirado') DEFAULT NULL,
  `pay_type_sub_list_id` int(11) DEFAULT NULL,
  `join_bonus` tinyint(1) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `mobile` varchar(255) NOT NULL,
  `celular` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `saldo` decimal(10,2) DEFAULT 0.00,
  `saldo_afiliados` decimal(10,2) DEFAULT 0.00,
  `rev` decimal(10,2) NOT NULL DEFAULT 0.00,
  `total_rev` decimal(10,2) NOT NULL DEFAULT 0.00,
  `real_name` varchar(255) DEFAULT NULL,
  `spassword` varchar(255) DEFAULT NULL,
  `url` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `data_registro` datetime DEFAULT current_timestamp(),
  `invite_code` varchar(255) NOT NULL,
  `invitation_code` varchar(255) DEFAULT NULL,
  `cpf` varchar(11) DEFAULT NULL,
  `tipo_pagamento` int(11) NOT NULL DEFAULT 0,
  `senha_saque` int(11) NOT NULL DEFAULT 0,
  `senhaparasacar` varchar(255) DEFAULT NULL,
  `pessoas_convidadas` int(11) NOT NULL DEFAULT 0,
  `indicacoes_roubadas` int(11) DEFAULT 0,
  `statusaff` int(11) NOT NULL DEFAULT 0,
  `banido` int(11) DEFAULT 0,
  `historico` text DEFAULT NULL,
  `favoritos` text DEFAULT NULL,
  `vip` int(11) NOT NULL DEFAULT 0,
  `recompensa_vip` decimal(10,2) NOT NULL DEFAULT 0.00,
  `total_recompensa_vip` decimal(10,2) NOT NULL DEFAULT 0.00,
  `data_nascimento` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `google_id` varchar(255) DEFAULT NULL,
  `avatar` varchar(244) NOT NULL DEFAULT 'first_male_7.png',
  `facebook` varchar(255) DEFAULT NULL,
  `whatsapp` varchar(255) DEFAULT NULL,
  `telegram` varchar(255) DEFAULT NULL,
  `twitter` varchar(255) DEFAULT NULL,
  `birth` varchar(255) DEFAULT NULL,
  `freeze` int(11) DEFAULT 0,
  `relogar` int(11) NOT NULL DEFAULT 0,
  `lobby` int(11) DEFAULT 1,
  `rtp` int(11) DEFAULT NULL,
  `modo_demo` tinyint(1) DEFAULT 0,
  `cpaLvl1` float DEFAULT NULL,
  `cpaLvl2` float DEFAULT NULL,
  `cpaLvl3` float DEFAULT NULL,
  `token_refer` varchar(255) DEFAULT NULL,
  `comissao_recebida` decimal(10,2) NOT NULL DEFAULT 0.00,
  `LuckyWheel` int(11) DEFAULT 1,
  `canApplyRegisterReward` tinyint(1) DEFAULT 1,
  `last_rebate_claim` datetime DEFAULT NULL,
  `task_install_apk_done` tinyint(1) NOT NULL DEFAULT 0,
  `task_register_account_done` tinyint(1) NOT NULL DEFAULT 0,
  `task_install_pwa_done` tinyint(1) NOT NULL DEFAULT 0,
  `task_bind_cpf_done` tinyint(1) NOT NULL DEFAULT 0,
  `task_bind_phone_done` tinyint(1) NOT NULL DEFAULT 0,
  `task_bind_email_done` tinyint(1) NOT NULL DEFAULT 0,
  `task_first_withdrawal_done` tinyint(1) NOT NULL DEFAULT 0,
  `task_first_recharge_done` tinyint(1) NOT NULL DEFAULT 0,
  `task_set_assets_password_done` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `versell`
--

CREATE TABLE `versell` (
  `id` int(11) NOT NULL,
  `url` varchar(255) DEFAULT NULL,
  `client_id` text DEFAULT NULL,
  `client_secret` text DEFAULT NULL,
  `atualizado` varchar(45) DEFAULT NULL,
  `ativo` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Despejando dados para a tabela `versell`
--

INSERT INTO `versell` (`id`, `url`, `client_id`, `client_secret`, `atualizado`, `ativo`) VALUES
(1, '0', '0', '0', '0', 0);

-- --------------------------------------------------------

--
-- Estrutura para tabela `vip_levels`
--

CREATE TABLE `vip_levels` (
  `id` int(11) NOT NULL,
  `id_vip` int(11) NOT NULL,
  `meta` float NOT NULL,
  `bonus` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Despejando dados para a tabela `vip_levels`
--

INSERT INTO `vip_levels` (`id`, `id_vip`, `meta`, `bonus`) VALUES
(1, 1, 5000, 50),
(2, 2, 18000, 180),
(3, 3, 100000, 1000),
(4, 4, 200000, 2000),
(5, 5, 1000000, 5000),
(6, 6, 1000000, 390),
(7, 7, 1000000, 500),
(8, 8, 1000000, 600),
(9, 9, 1000000, 700),
(10, 10, 1000000, 800),
(11, 11, 2000000, 900),
(12, 12, 3000000, 1000),
(13, 13, 4000000, 1100),
(14, 14, 5000000, 1200),
(15, 15, 6000000, 1300),
(16, 16, 7000000, 1400);

-- --------------------------------------------------------

--
-- Estrutura para tabela `vip_rebate_config`
--

CREATE TABLE `vip_rebate_config` (
  `id` int(11) NOT NULL,
  `vip_level` int(11) NOT NULL,
  `game_type` varchar(50) NOT NULL,
  `rebate_rate` decimal(5,2) NOT NULL DEFAULT 0.00
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `vip_rebate_config`
--

INSERT INTO `vip_rebate_config` (`id`, `vip_level`, `game_type`, `rebate_rate`) VALUES
(1, 1, 'slot', 0.45),
(2, 1, 'live', 0.36),
(3, 1, 'fishing', 0.45),
(4, 1, 'sports', 0.36),
(5, 1, 'cards', 0.45),
(6, 1, 'lottery', 0.45),
(7, 1, 'blockchain', 0.23),
(8, 2, 'slot', 0.50),
(9, 2, 'live', 0.40),
(10, 2, 'fishing', 0.50),
(11, 2, 'sports', 0.40),
(12, 2, 'cards', 0.50),
(13, 2, 'lottery', 0.50),
(14, 2, 'blockchain', 0.25),
(15, 3, 'slot', 0.55),
(16, 3, 'live', 0.44),
(17, 3, 'fishing', 0.55),
(18, 3, 'sports', 0.44),
(19, 3, 'cards', 0.55),
(20, 3, 'lottery', 0.55),
(21, 3, 'blockchain', 0.28),
(22, 4, 'slot', 0.60),
(23, 4, 'live', 0.48),
(24, 4, 'fishing', 0.60),
(25, 4, 'sports', 0.48),
(26, 4, 'cards', 0.60),
(27, 4, 'lottery', 0.60),
(28, 4, 'blockchain', 0.30),
(29, 5, 'slot', 0.65),
(30, 5, 'live', 0.52),
(31, 5, 'fishing', 0.65),
(32, 5, 'sports', 0.52),
(33, 5, 'cards', 0.65),
(34, 5, 'lottery', 0.65),
(35, 5, 'blockchain', 0.33),
(36, 6, 'slot', 0.70),
(37, 6, 'live', 0.56),
(38, 6, 'fishing', 0.70),
(39, 6, 'sports', 0.56),
(40, 6, 'cards', 0.70),
(41, 6, 'lottery', 0.70),
(42, 6, 'blockchain', 0.35),
(43, 7, 'slot', 0.75),
(44, 7, 'live', 0.60),
(45, 7, 'fishing', 0.75),
(46, 7, 'sports', 0.60),
(47, 7, 'cards', 0.75),
(48, 7, 'lottery', 0.75),
(49, 7, 'blockchain', 0.38),
(50, 8, 'slot', 0.80),
(51, 8, 'live', 0.64),
(52, 8, 'fishing', 0.80),
(53, 8, 'sports', 0.64),
(54, 8, 'cards', 0.80),
(55, 8, 'lottery', 0.80),
(56, 8, 'blockchain', 0.40),
(57, 9, 'slot', 0.85),
(58, 9, 'live', 0.68),
(59, 9, 'fishing', 0.85),
(60, 9, 'sports', 0.68),
(61, 9, 'cards', 0.85),
(62, 9, 'lottery', 0.85),
(63, 9, 'blockchain', 0.43),
(64, 10, 'slot', 0.90),
(65, 10, 'live', 0.72),
(66, 10, 'fishing', 0.90),
(67, 10, 'sports', 0.72),
(68, 10, 'cards', 0.90),
(69, 10, 'lottery', 0.90),
(70, 10, 'blockchain', 0.45),
(71, 11, 'slot', 0.95),
(72, 11, 'live', 0.76),
(73, 11, 'fishing', 0.95),
(74, 11, 'sports', 0.76),
(75, 11, 'cards', 0.95),
(76, 11, 'lottery', 0.95),
(77, 11, 'blockchain', 0.48),
(78, 12, 'slot', 1.00),
(79, 12, 'live', 0.80),
(80, 12, 'fishing', 1.00),
(81, 12, 'sports', 0.80),
(82, 12, 'cards', 1.00),
(83, 12, 'lottery', 1.00),
(84, 12, 'blockchain', 0.50),
(85, 13, 'slot', 1.05),
(86, 13, 'live', 0.84),
(87, 13, 'fishing', 1.05),
(88, 13, 'sports', 0.84),
(89, 13, 'cards', 1.05),
(90, 13, 'lottery', 1.05),
(91, 13, 'blockchain', 0.53),
(92, 14, 'slot', 1.10),
(93, 14, 'live', 0.88),
(94, 14, 'fishing', 1.10),
(95, 14, 'sports', 0.88),
(96, 14, 'cards', 1.10),
(97, 14, 'lottery', 1.10),
(98, 14, 'blockchain', 0.55),
(99, 15, 'slot', 1.15),
(100, 15, 'live', 0.92),
(101, 15, 'fishing', 1.15),
(102, 15, 'sports', 0.92),
(103, 15, 'cards', 1.15),
(104, 15, 'lottery', 1.15),
(105, 15, 'blockchain', 0.58),
(106, 16, 'slot', 1.20),
(107, 16, 'live', 0.96),
(108, 16, 'fishing', 1.20),
(109, 16, 'sports', 0.96),
(110, 16, 'cards', 1.20),
(111, 16, 'lottery', 1.20),
(112, 16, 'blockchain', 0.60);

-- --------------------------------------------------------

--
-- Estrutura para tabela `vip_rewards_log`
--

CREATE TABLE `vip_rewards_log` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `vip_level` int(11) NOT NULL,
  `reward_amount` decimal(20,2) NOT NULL,
  `reward_type` varchar(50) NOT NULL DEFAULT 'promotion',
  `created_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `vip_rewards_log`
--

INSERT INTO `vip_rewards_log` (`id`, `user_id`, `vip_level`, `reward_amount`, `reward_type`, `created_at`) VALUES
(2, 648054358, 1, 5000.00, 'UPGRADE', '2026-01-31 21:15:34'),
(3, 648054358, 1, 250.00, 'WEEKLY', '2026-01-31 21:46:09'),
(4, 648054358, 1, 2750.00, 'DAILY', '2026-01-31 21:47:37');

-- --------------------------------------------------------

--
-- Estrutura para tabela `visita_site`
--

CREATE TABLE `visita_site` (
  `id` int(11) NOT NULL,
  `nav_os` text DEFAULT NULL,
  `mac_os` text DEFAULT NULL,
  `ip_visita` text DEFAULT NULL,
  `refer_visita` text DEFAULT NULL,
  `data_cad` date DEFAULT NULL,
  `hora_cad` time DEFAULT NULL,
  `id_user` int(11) DEFAULT NULL,
  `pais` text DEFAULT NULL,
  `cidade` text DEFAULT NULL,
  `estado` text DEFAULT NULL,
  `ads_tipo` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `visita_site`
--

INSERT INTO `visita_site` (`id`, `nav_os`, `mac_os`, `ip_visita`, `refer_visita`, `data_cad`, `hora_cad`, `id_user`, `pais`, `cidade`, `estado`, `ads_tipo`) VALUES
(215, 'Chrome', 'Windows 10', '177.104.7.70', 'https://67f.lat/', '2026-03-12', '13:56:07', 1, 'Brazil', 'Brusque', 'Santa Catarina', NULL),
(216, 'Chrome', 'Windows 10', '201.49.229.191', 'https://67f.lat/', '2026-03-12', '14:53:21', 1, 'Brazil', 'Urucuia', 'Minas Gerais', NULL);

-- --------------------------------------------------------

--
-- Estrutura para tabela `webhook`
--

CREATE TABLE `webhook` (
  `id` int(11) NOT NULL,
  `nome` text NOT NULL,
  `bot_id` varchar(255) NOT NULL,
  `chat_id` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `webhook`
--

INSERT INTO `webhook` (`id`, `nome`, `bot_id`, `chat_id`, `status`) VALUES
(1, 'Cadastros e Pixs', '8052198080:AAEPY8COxYKu82QCNTq5F7fX92XRGRuRs_8', '7324332678', 1),
(2, 'Saques', '0', '0', 0);

-- --------------------------------------------------------

--
-- Estrutura para tabela `welcome_roulette_settings`
--

CREATE TABLE `welcome_roulette_settings` (
  `id` int(11) NOT NULL,
  `min_cents` int(11) NOT NULL DEFAULT 30,
  `max_cents` int(11) NOT NULL DEFAULT 300,
  `audit_multiple` decimal(10,2) NOT NULL DEFAULT 1.00,
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Despejando dados para a tabela `welcome_roulette_settings`
--

INSERT INTO `welcome_roulette_settings` (`id`, `min_cents`, `max_cents`, `audit_multiple`, `updated_at`) VALUES
(1, 30, 39, 1.00, '2026-03-12 16:57:12');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `adicao_saldo`
--
ALTER TABLE `adicao_saldo`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `admin_users`
--
ALTER TABLE `admin_users`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `afiliados_config`
--
ALTER TABLE `afiliados_config`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `assistance_rounds`
--
ALTER TABLE `assistance_rounds`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_user_status` (`user_id`,`status`);

--
-- Índices de tabela `audit_flows`
--
ALTER TABLE `audit_flows`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `aurenpay`
--
ALTER TABLE `aurenpay`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `banner`
--
ALTER TABLE `banner`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `bau`
--
ALTER TABLE `bau`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `bspay`
--
ALTER TABLE `bspay`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `chat_messages`
--
ALTER TABLE `chat_messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_user_id` (`user_id`);

--
-- Índices de tabela `chat_sessions`
--
ALTER TABLE `chat_sessions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id` (`user_id`);

--
-- Índices de tabela `config`
--
ALTER TABLE `config`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `cupom`
--
ALTER TABLE `cupom`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nome` (`nome`);

--
-- Índices de tabela `cupom_usados`
--
ALTER TABLE `cupom_usados`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_user` (`id_user`),
  ADD KEY `valor` (`valor`);

--
-- Índices de tabela `customer_feedback`
--
ALTER TABLE `customer_feedback`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_user_id` (`user_id`),
  ADD KEY `idx_type` (`type`),
  ADD KEY `idx_status` (`status`),
  ADD KEY `idx_created_at` (`created_at`);

--
-- Índices de tabela `drakon`
--
ALTER TABLE `drakon`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `expfypay`
--
ALTER TABLE `expfypay`
  ADD UNIQUE KEY `id` (`id`);

--
-- Índices de tabela `festival`
--
ALTER TABLE `festival`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `financeiro`
--
ALTER TABLE `financeiro`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `floats`
--
ALTER TABLE `floats`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Índices de tabela `games`
--
ALTER TABLE `games`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `game_categories`
--
ALTER TABLE `game_categories`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `greepay`
--
ALTER TABLE `greepay`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `historico_play`
--
ALTER TABLE `historico_play`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `historico_vip`
--
ALTER TABLE `historico_vip`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `igamewin`
--
ALTER TABLE `igamewin`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `inpagamentos`
--
ALTER TABLE `inpagamentos`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `lobby_pgsoft`
--
ALTER TABLE `lobby_pgsoft`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `logs`
--
ALTER TABLE `logs`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `manipulacao_indicacoes`
--
ALTER TABLE `manipulacao_indicacoes`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `mensagens`
--
ALTER TABLE `mensagens`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Índices de tabela `metodos_pagamentos`
--
ALTER TABLE `metodos_pagamentos`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `modais`
--
ALTER TABLE `modais`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `nextpay`
--
ALTER TABLE `nextpay`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `notificacoes`
--
ALTER TABLE `notificacoes`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `notificacoes_lidas`
--
ALTER TABLE `notificacoes_lidas`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_read` (`admin_id`,`notification_type`,`notification_id`);

--
-- Índices de tabela `pay_type_sub_list`
--
ALTER TABLE `pay_type_sub_list`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `pay_valores_cassino`
--
ALTER TABLE `pay_valores_cassino`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `pgclone`
--
ALTER TABLE `pgclone`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `playfiver`
--
ALTER TABLE `playfiver`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Índices de tabela `popups`
--
ALTER TABLE `popups`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `ppclone`
--
ALTER TABLE `ppclone`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `promocoes`
--
ALTER TABLE `promocoes`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Índices de tabela `provedores`
--
ALTER TABLE `provedores`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `rebate_history`
--
ALTER TABLE `rebate_history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Índices de tabela `red_envelope_settings`
--
ALTER TABLE `red_envelope_settings`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `red_pocket_rewards`
--
ALTER TABLE `red_pocket_rewards`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `order_no` (`order_no`);

--
-- Índices de tabela `resgate_comissoes`
--
ALTER TABLE `resgate_comissoes`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `roletinha100`
--
ALTER TABLE `roletinha100`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_user` (`user_id`);

--
-- Índices de tabela `segurança`
--
ALTER TABLE `segurança`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `signin_config`
--
ALTER TABLE `signin_config`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `signin_records`
--
ALTER TABLE `signin_records`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_user_date` (`user_id`,`date_record`);

--
-- Índices de tabela `solicitacao_saques`
--
ALTER TABLE `solicitacao_saques`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `tarefas`
--
ALTER TABLE `tarefas`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uk_taskTypeSub` (`taskTypeSub`);

--
-- Índices de tabela `temas`
--
ALTER TABLE `temas`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `templates_cores`
--
ALTER TABLE `templates_cores`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `transacoes`
--
ALTER TABLE `transacoes`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `versell`
--
ALTER TABLE `versell`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `vip_levels`
--
ALTER TABLE `vip_levels`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `vip_rebate_config`
--
ALTER TABLE `vip_rebate_config`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_vip_game` (`vip_level`,`game_type`);

--
-- Índices de tabela `vip_rewards_log`
--
ALTER TABLE `vip_rewards_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_user_vip` (`user_id`,`vip_level`,`reward_type`);

--
-- Índices de tabela `visita_site`
--
ALTER TABLE `visita_site`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `webhook`
--
ALTER TABLE `webhook`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `welcome_roulette_settings`
--
ALTER TABLE `welcome_roulette_settings`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `adicao_saldo`
--
ALTER TABLE `adicao_saldo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;

--
-- AUTO_INCREMENT de tabela `admin_users`
--
ALTER TABLE `admin_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `afiliados_config`
--
ALTER TABLE `afiliados_config`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `assistance_rounds`
--
ALTER TABLE `assistance_rounds`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de tabela `audit_flows`
--
ALTER TABLE `audit_flows`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80;

--
-- AUTO_INCREMENT de tabela `banner`
--
ALTER TABLE `banner`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `bau`
--
ALTER TABLE `bau`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3240;

--
-- AUTO_INCREMENT de tabela `chat_messages`
--
ALTER TABLE `chat_messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `chat_sessions`
--
ALTER TABLE `chat_sessions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `cupom`
--
ALTER TABLE `cupom`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de tabela `cupom_usados`
--
ALTER TABLE `cupom_usados`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `customer_feedback`
--
ALTER TABLE `customer_feedback`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `festival`
--
ALTER TABLE `festival`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de tabela `financeiro`
--
ALTER TABLE `financeiro`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT de tabela `floats`
--
ALTER TABLE `floats`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `games`
--
ALTER TABLE `games`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=718;

--
-- AUTO_INCREMENT de tabela `game_categories`
--
ALTER TABLE `game_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de tabela `greepay`
--
ALTER TABLE `greepay`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `historico_play`
--
ALTER TABLE `historico_play`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8376;

--
-- AUTO_INCREMENT de tabela `historico_vip`
--
ALTER TABLE `historico_vip`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `igamewin`
--
ALTER TABLE `igamewin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `inpagamentos`
--
ALTER TABLE `inpagamentos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `lobby_pgsoft`
--
ALTER TABLE `lobby_pgsoft`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `logs`
--
ALTER TABLE `logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;

--
-- AUTO_INCREMENT de tabela `manipulacao_indicacoes`
--
ALTER TABLE `manipulacao_indicacoes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `mensagens`
--
ALTER TABLE `mensagens`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `metodos_pagamentos`
--
ALTER TABLE `metodos_pagamentos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de tabela `modais`
--
ALTER TABLE `modais`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `notificacoes`
--
ALTER TABLE `notificacoes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de tabela `notificacoes_lidas`
--
ALTER TABLE `notificacoes_lidas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `pay_type_sub_list`
--
ALTER TABLE `pay_type_sub_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `pay_valores_cassino`
--
ALTER TABLE `pay_valores_cassino`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `promocoes`
--
ALTER TABLE `promocoes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4077;

--
-- AUTO_INCREMENT de tabela `provedores`
--
ALTER TABLE `provedores`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=123122114;

--
-- AUTO_INCREMENT de tabela `rebate_history`
--
ALTER TABLE `rebate_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `red_pocket_rewards`
--
ALTER TABLE `red_pocket_rewards`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT de tabela `resgate_comissoes`
--
ALTER TABLE `resgate_comissoes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `roletinha100`
--
ALTER TABLE `roletinha100`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de tabela `segurança`
--
ALTER TABLE `segurança`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `signin_config`
--
ALTER TABLE `signin_config`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de tabela `signin_records`
--
ALTER TABLE `signin_records`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de tabela `solicitacao_saques`
--
ALTER TABLE `solicitacao_saques`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de tabela `temas`
--
ALTER TABLE `temas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `templates_cores`
--
ALTER TABLE `templates_cores`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT de tabela `transacoes`
--
ALTER TABLE `transacoes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT de tabela `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=997171643;

--
-- AUTO_INCREMENT de tabela `vip_levels`
--
ALTER TABLE `vip_levels`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de tabela `vip_rebate_config`
--
ALTER TABLE `vip_rebate_config`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=113;

--
-- AUTO_INCREMENT de tabela `vip_rewards_log`
--
ALTER TABLE `vip_rewards_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `visita_site`
--
ALTER TABLE `visita_site`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=217;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `customer_feedback`
--
ALTER TABLE `customer_feedback`
  ADD CONSTRAINT `customer_feedback_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `usuarios` (`id`) ON DELETE SET NULL;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
