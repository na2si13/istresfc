-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost
-- Généré le :  ven. 25 oct. 2019 à 23:17
-- Version du serveur :  5.7.24
-- Version de PHP :  7.2.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `templateadmin`
--

-- --------------------------------------------------------

--
-- Structure de la table `articles`
--

CREATE TABLE `articles` (
  `id` int(10) UNSIGNED NOT NULL,
  `titre` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `texte` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `equipe` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `articles`
--

INSERT INTO `articles` (`id`, `titre`, `texte`, `photo`, `created_at`, `updated_at`, `equipe`) VALUES
(1, 'U19', 'ON A REUSSI', 'articles\\October2019\\bJw58lmBx11LcDVNXfvJ.jpg', '2019-10-24 19:50:00', '2019-10-25 18:49:08', 'U19_N'),
(2, 'N3', 'krjevnclecn dncl nclm ,ldsc kdf mdls, c', 'articles\\October2019\\3sgXZtgyBr0haqFpNVVs.jpg', '2019-10-25 14:30:00', '2019-10-25 18:48:57', 'National_3'),
(3, 'U18', 'LDFDNCDL NDF', 'articles\\October2019\\wPZ2grEOZN7ci5xki6gv.jpg', '2019-10-25 18:48:44', '2019-10-25 18:48:44', 'U18_R2'),
(4, 'U18 R2', 'KFDBVJKDSNVJKN', 'articles\\October2019\\RcgSz0Lqaqi8GNis0C8Q.png', '2019-10-25 18:49:28', '2019-10-25 18:49:28', 'U18_R2'),
(5, 'U17 N', 'KDJNCDKSJNV VDN', 'articles\\October2019\\g75EqyuxoWZBxuSvSPN6.jpg', '2019-10-25 18:49:43', '2019-10-25 18:49:43', 'U17_N'),
(6, 'U16 R2', 'KDJBCDJSNVNKF', 'articles\\October2019\\EIDEw662UktGDuVSAXkF.png', '2019-10-25 18:49:59', '2019-10-25 18:49:59', 'U16_R2'),
(7, 'RESERVE', 'JN JKNJKKJN', 'articles\\October2019\\ARWuRc2TcrkHrFsDXCtK.png', '2019-10-25 18:50:24', '2019-10-25 18:50:24', 'Reserve_D3'),
(8, 'U16 D1', 'DF KJDSN JKFD SCLKD F', 'articles\\October2019\\Do8u9ntyEiJUTFiX72dI.jpg', '2019-10-25 18:51:04', '2019-10-25 18:51:04', 'U16_D1'),
(9, 'U15 D1', 'FLKNV FDJKVSNCLKDF', 'articles\\October2019\\Hxgnixeqx1mMprEWY5kn.png', '2019-10-25 18:51:21', '2019-10-25 18:51:21', 'U15_D1'),
(10, 'U14 D1', 'RNCLEZNCVJKCZENDJCDF', 'articles\\October2019\\X7zzsL0g1BrNtAk0wMiX.jpg', '2019-10-25 18:51:39', '2019-10-25 18:51:39', 'U14_D1');

-- --------------------------------------------------------

--
-- Structure de la table `data_rows`
--

CREATE TABLE `data_rows` (
  `id` int(10) UNSIGNED NOT NULL,
  `data_type_id` int(10) UNSIGNED NOT NULL,
  `field` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `browse` tinyint(1) NOT NULL DEFAULT '1',
  `read` tinyint(1) NOT NULL DEFAULT '1',
  `edit` tinyint(1) NOT NULL DEFAULT '1',
  `add` tinyint(1) NOT NULL DEFAULT '1',
  `delete` tinyint(1) NOT NULL DEFAULT '1',
  `details` text COLLATE utf8mb4_unicode_ci,
  `order` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `data_rows`
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
(80, 20, 'id', 'number', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(81, 20, 'nom', 'text', 'Nom', 0, 1, 1, 1, 1, 1, '{}', 2),
(82, 21, 'id', 'number', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(83, 21, 'nom', 'text', 'Nom', 0, 1, 1, 1, 1, 1, '{}', 2),
(84, 21, 'prenom', 'text', 'Prenom', 0, 1, 1, 1, 1, 1, '{}', 3),
(85, 21, 'annee', 'text', 'Annee', 0, 1, 1, 1, 1, 1, '{}', 4),
(87, 21, 'photo', 'image', 'Photo', 0, 1, 1, 1, 1, 1, '{}', 6),
(88, 22, 'id', 'number', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(89, 22, 'titre', 'text', 'Titre', 0, 1, 1, 1, 1, 1, '{}', 2),
(90, 22, 'texte', 'text', 'Texte', 0, 1, 1, 1, 1, 1, '{}', 3),
(91, 22, 'photo', 'image', 'Photo', 0, 1, 1, 1, 1, 1, '{}', 4),
(92, 22, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 5),
(93, 22, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 6),
(94, 20, 'equipe_hasone_article_relationship', 'relationship', 'articles', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Article\",\"table\":\"articles\",\"type\":\"hasMany\",\"column\":\"equipe\",\"key\":\"titre\",\"label\":\"titre\",\"pivot_table\":\"articles\",\"pivot\":\"0\",\"taggable\":\"0\"}', 3),
(95, 22, 'article_belongsto_equipe_relationship', 'relationship', 'equipes', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Equipe\",\"table\":\"equipes\",\"type\":\"belongsTo\",\"column\":\"equipe\",\"key\":\"nom\",\"label\":\"nom\",\"pivot_table\":\"articles\",\"pivot\":\"0\",\"taggable\":\"0\"}', 7),
(96, 20, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 3),
(97, 20, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 4),
(98, 23, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(99, 23, 'nom', 'text', 'Nom', 0, 1, 1, 1, 1, 1, '{}', 2),
(100, 23, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 3),
(101, 23, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 4),
(102, 21, 'joueur_hasone_equipe_relationship', 'relationship', 'equipes', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Equipe\",\"table\":\"equipes\",\"type\":\"belongsTo\",\"column\":\"equipe\",\"key\":\"nom\",\"label\":\"nom\",\"pivot_table\":\"articles\",\"pivot\":\"0\",\"taggable\":\"0\"}', 7),
(103, 20, 'equipe_belongsto_joueur_relationship', 'relationship', 'joueurs', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Joueur\",\"table\":\"joueurs\",\"type\":\"hasMany\",\"column\":\"equipe\",\"key\":\"nom\",\"label\":\"nom\",\"pivot_table\":\"articles\",\"pivot\":\"0\",\"taggable\":\"0\"}', 5),
(104, 20, 'equipe_hasone_entraineur_relationship', 'relationship', 'entraineurs', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Entraineur\",\"table\":\"entraineurs\",\"type\":\"belongsTo\",\"column\":\"entraineur\",\"key\":\"entraineur\",\"label\":\"entraineur\",\"pivot_table\":\"articles\",\"pivot\":\"0\",\"taggable\":\"0\"}', 6),
(105, 23, 'entraineur_hasone_equipe_relationship', 'relationship', 'equipes', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Equipe\",\"table\":\"equipes\",\"type\":\"belongsTo\",\"column\":\"id\",\"key\":\"nom\",\"label\":\"nom\",\"pivot_table\":\"articles\",\"pivot\":\"0\",\"taggable\":\"0\"}', 5),
(106, 24, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(108, 24, 'poste_hasmany_joueur_relationship', 'relationship', 'joueurs', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Joueur\",\"table\":\"joueurs\",\"type\":\"hasMany\",\"column\":\"poste\",\"key\":\"nom\",\"label\":\"nom\",\"pivot_table\":\"articles\",\"pivot\":\"0\",\"taggable\":\"0\"}', 3),
(109, 21, 'joueur_hasone_poste_relationship', 'relationship', 'postes', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Poste\",\"table\":\"postes\",\"type\":\"belongsTo\",\"column\":\"poste\",\"key\":\"nom\",\"label\":\"nom\",\"pivot_table\":\"articles\",\"pivot\":\"0\",\"taggable\":\"0\"}', 8),
(110, 21, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 6),
(111, 21, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 7),
(112, 24, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 3),
(113, 24, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 4),
(115, 24, 'nom', 'text', 'Nom', 0, 1, 1, 1, 1, 1, '{}', 2),
(116, 21, 'poste', 'text', 'Postes', 0, 1, 1, 1, 1, 1, '{}', 8),
(117, 20, 'joueur', 'text', 'Joueur', 0, 1, 1, 1, 1, 1, '{}', 5),
(118, 20, 'entraineur', 'text', 'Entraineur', 0, 1, 1, 1, 1, 1, '{}', 6),
(119, 21, 'equipe', 'text', 'Equipe', 0, 1, 1, 1, 1, 1, '{}', 9),
(120, 22, 'equipe', 'text', 'Equipe', 0, 1, 1, 1, 1, 1, '{}', 7);

-- --------------------------------------------------------

--
-- Structure de la table `data_types`
--

CREATE TABLE `data_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_singular` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_plural` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `policy_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `generate_permissions` tinyint(1) NOT NULL DEFAULT '0',
  `server_side` tinyint(4) NOT NULL DEFAULT '0',
  `details` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `data_types`
--

INSERT INTO `data_types` (`id`, `name`, `slug`, `display_name_singular`, `display_name_plural`, `icon`, `model_name`, `policy_name`, `controller`, `description`, `generate_permissions`, `server_side`, `details`, `created_at`, `updated_at`) VALUES
(1, 'users', 'users', 'User', 'Users', 'voyager-person', 'TCG\\Voyager\\Models\\User', 'TCG\\Voyager\\Policies\\UserPolicy', 'TCG\\Voyager\\Http\\Controllers\\VoyagerUserController', '', 1, 0, NULL, '2019-10-24 00:56:47', '2019-10-24 00:56:47'),
(2, 'menus', 'menus', 'Menu', 'Menus', 'voyager-list', 'TCG\\Voyager\\Models\\Menu', NULL, '', '', 1, 0, NULL, '2019-10-24 00:56:47', '2019-10-24 00:56:47'),
(3, 'roles', 'roles', 'Role', 'Roles', 'voyager-lock', 'TCG\\Voyager\\Models\\Role', NULL, '', '', 1, 0, NULL, '2019-10-24 00:56:47', '2019-10-24 00:56:47'),
(10, 'entraineur', 'entraineur', 'Entraineur', 'Entraineurs', 'voyager-star-two', 'App\\Entraineur', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2019-10-24 17:29:10', '2019-10-24 17:29:10'),
(20, 'equipes', 'equipes', 'Equipe', 'Equipes', 'voyager-people', 'App\\Equipe', NULL, NULL, 'Les Equipes', 1, 0, '{\"order_column\":\"nom\",\"order_display_column\":\"nom\",\"order_direction\":\"asc\",\"default_search_key\":\"nom\",\"scope\":null}', '2019-10-24 19:27:45', '2019-10-25 18:44:52'),
(21, 'joueurs', 'joueurs', 'Joueur', 'Joueurs', 'voyager-person', 'App\\Joueur', NULL, NULL, 'Les Joueurs', 1, 0, '{\"order_column\":\"nom\",\"order_display_column\":\"nom\",\"order_direction\":\"asc\",\"default_search_key\":\"nom\",\"scope\":null}', '2019-10-24 19:32:09', '2019-10-25 18:39:59'),
(22, 'articles', 'articles', 'Article', 'Articles', 'voyager-images', 'App\\Article', NULL, NULL, 'Les Articles', 1, 0, '{\"order_column\":\"titre\",\"order_display_column\":\"titre\",\"order_direction\":\"asc\",\"default_search_key\":\"titre\",\"scope\":null}', '2019-10-24 19:34:49', '2019-10-25 18:44:32'),
(23, 'entraineurs', 'entraineurs', 'Entraineur', 'Entraineurs', 'voyager-star', 'App\\Entraineur', NULL, NULL, 'Les Entraineurs', 1, 0, '{\"order_column\":\"id\",\"order_display_column\":\"nom\",\"order_direction\":\"asc\",\"default_search_key\":\"nom\",\"scope\":null}', '2019-10-24 20:33:33', '2019-10-25 13:09:00'),
(24, 'postes', 'postes', 'Poste', 'Postes', 'voyager-list', 'App\\Poste', NULL, NULL, 'Les Postes', 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":\"nom\",\"scope\":null}', '2019-10-25 12:31:00', '2019-10-25 18:38:06');

-- --------------------------------------------------------

--
-- Structure de la table `entraineurs`
--

CREATE TABLE `entraineurs` (
  `id` int(10) UNSIGNED NOT NULL,
  `entraineur` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `entraineurs`
--

INSERT INTO `entraineurs` (`id`, `entraineur`, `created_at`, `updated_at`) VALUES
(1, 'Tom Jamon', '2019-10-24 20:33:45', '2019-10-24 20:33:45');

-- --------------------------------------------------------

--
-- Structure de la table `equipes`
--

CREATE TABLE `equipes` (
  `id` int(10) UNSIGNED NOT NULL,
  `nom` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `joueur` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `entraineur` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `equipes`
--

INSERT INTO `equipes` (`id`, `nom`, `created_at`, `updated_at`, `joueur`, `entraineur`) VALUES
(1, 'National_3', '2019-10-24 19:47:00', '2019-10-25 18:42:40', NULL, 'Tom Jamon'),
(2, 'U19_N', '2019-10-24 19:52:00', '2019-10-25 12:56:48', NULL, NULL),
(3, 'U18_R2', '2019-10-24 19:52:00', '2019-10-25 12:56:23', NULL, NULL),
(4, 'U17_N', '2019-10-24 19:52:00', '2019-10-25 12:55:26', NULL, NULL),
(5, 'U16_R2', '2019-10-25 12:44:00', '2019-10-25 12:56:10', NULL, NULL),
(6, 'Reserve_D3', '2019-10-25 12:57:13', '2019-10-25 12:57:13', NULL, NULL),
(7, 'U16_D1', '2019-10-25 12:57:43', '2019-10-25 12:57:43', NULL, NULL),
(8, 'U15_D1', '2019-10-25 12:58:05', '2019-10-25 12:58:05', NULL, NULL),
(9, 'U14_D1', '2019-10-25 12:58:13', '2019-10-25 12:58:13', NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `joueurs`
--

CREATE TABLE `joueurs` (
  `id` int(10) UNSIGNED NOT NULL,
  `nom` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `prenom` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `annee` year(4) DEFAULT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `poste` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `equipe` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `joueurs`
--

INSERT INTO `joueurs` (`id`, `nom`, `prenom`, `annee`, `photo`, `created_at`, `updated_at`, `poste`, `equipe`) VALUES
(2, 'DA CRUZ', 'ANAIS', 2008, 'joueurs\\October2019\\sEKEStY4H0kl7lThRUXS.jpg', '2019-10-25 13:31:00', '2019-10-25 18:42:22', 'ATTAQUANT', 'National_3'),
(3, 'Astor', 'Joseph', 1988, 'joueurs\\October2019\\kNTQetVNiFq4yNCUkQqy.jpg', '2019-10-25 20:22:23', '2019-10-25 20:22:23', 'GARDIEN', 'U19_N'),
(4, 'KDSCBKJDSB', 'KJBVKJZEVB', 1978, 'joueurs\\October2019\\zM6o8AvdBAcpHutZ8qIa.png', '2019-10-25 20:23:12', '2019-10-25 20:23:12', 'MILIEU', 'U18_R2'),
(5, 'KZEJCBKJBDJZ', 'KDJCBDKZJBCDZJKB', 1988, 'joueurs\\October2019\\dus0efI1MB2cV1BqrvAS.png', '2019-10-25 20:23:39', '2019-10-25 20:23:39', 'ATTAQUANT', 'U17_N'),
(6, 'JHDVCDBKJZEB', 'KECBKJBZEJDCBZ', 1986, 'joueurs\\October2019\\el5wYJH13W7J6S8ChtzM.png', '2019-10-25 20:23:57', '2019-10-25 20:23:57', 'GARDIEN', 'U16_R2'),
(7, 'DJSCBLDBDJCSLJB', 'KJCBELXKCLCBE', 1989, 'joueurs\\October2019\\BduncNsEcc1oi7elARHD.png', '2019-10-25 20:24:17', '2019-10-25 20:24:17', 'MILIEU', 'Reserve_D3'),
(8, 'KCHBDJECVBFCEJZB', 'JCBDLVBFCZE', 1976, 'joueurs\\October2019\\rZgHFr1HTfm6OhIb22qc.jpg', '2019-10-25 20:24:45', '2019-10-25 20:24:45', 'GARDIEN', 'U16_D1'),
(9, 'kdfvb dcljvb fdjkclnds', 'jcbnldcekvnlfenz', 1999, 'joueurs\\October2019\\u5D1U9NaHYXocoHQrch9.jpg', '2019-10-25 20:27:52', '2019-10-25 20:27:52', 'GARDIEN', 'U15_D1'),
(10, 'DKFJDDBCLJD BJSDCB', 'JCBDDLJCBSDJE', 1990, 'joueurs\\October2019\\j5zivNPQLNcSgM0rwbNJ.png', '2019-10-25 20:28:10', '2019-10-25 20:28:10', 'DEFENSEUR', 'U14_D1');

-- --------------------------------------------------------

--
-- Structure de la table `menus`
--

CREATE TABLE `menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `menus`
--

INSERT INTO `menus` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', '2019-10-24 00:56:47', '2019-10-24 00:56:47');

-- --------------------------------------------------------

--
-- Structure de la table `menu_items`
--

CREATE TABLE `menu_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `menu_id` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `icon_class` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `route` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `menu_items`
--

INSERT INTO `menu_items` (`id`, `menu_id`, `title`, `url`, `target`, `icon_class`, `color`, `parent_id`, `order`, `created_at`, `updated_at`, `route`, `parameters`) VALUES
(1, 1, 'Dashboard', '', '_self', 'voyager-boat', NULL, NULL, 1, '2019-10-24 00:56:47', '2019-10-24 00:56:47', 'voyager.dashboard', NULL),
(2, 1, 'Media', '', '_self', 'voyager-images', NULL, NULL, 4, '2019-10-24 00:56:47', '2019-10-25 12:20:21', 'voyager.media.index', NULL),
(3, 1, 'Users', '', '_self', 'voyager-person', NULL, NULL, 3, '2019-10-24 00:56:47', '2019-10-24 00:56:47', 'voyager.users.index', NULL),
(4, 1, 'Roles', '', '_self', 'voyager-lock', NULL, NULL, 2, '2019-10-24 00:56:47', '2019-10-24 00:56:47', 'voyager.roles.index', NULL),
(5, 1, 'Tools', '', '_self', 'voyager-tools', NULL, NULL, 9, '2019-10-24 00:56:47', '2019-10-24 00:56:47', NULL, NULL),
(6, 1, 'Menu Builder', '', '_self', 'voyager-list', NULL, 5, 10, '2019-10-24 00:56:47', '2019-10-24 00:56:47', 'voyager.menus.index', NULL),
(7, 1, 'Database', '', '_self', 'voyager-data', NULL, 5, 11, '2019-10-24 00:56:47', '2019-10-24 00:56:47', 'voyager.database.index', NULL),
(8, 1, 'Compass', '', '_self', 'voyager-compass', NULL, 5, 12, '2019-10-24 00:56:47', '2019-10-24 00:56:47', 'voyager.compass.index', NULL),
(9, 1, 'BREAD', '', '_self', 'voyager-bread', NULL, 5, 13, '2019-10-24 00:56:47', '2019-10-24 00:56:47', 'voyager.bread.index', NULL),
(10, 1, 'Settings', '', '_self', 'voyager-settings', NULL, NULL, 14, '2019-10-24 00:56:47', '2019-10-24 00:56:47', 'voyager.settings.index', NULL),
(14, 1, 'Hooks', '', '_self', 'voyager-hook', NULL, 5, 13, '2019-10-24 00:56:48', '2019-10-24 00:56:48', 'voyager.hooks', NULL),
(21, 1, 'Equipes', '', '_self', NULL, NULL, NULL, 15, '2019-10-24 19:27:45', '2019-10-24 19:27:45', 'voyager.equipes.index', NULL),
(22, 1, 'Joueurs', '', '_self', 'voyager-person', NULL, NULL, 16, '2019-10-24 19:32:09', '2019-10-24 19:32:09', 'voyager.joueurs.index', NULL),
(23, 1, 'Articles', '', '_self', 'voyager-images', NULL, NULL, 17, '2019-10-24 19:34:49', '2019-10-24 19:34:49', 'voyager.articles.index', NULL),
(24, 1, 'Entraineurs', '', '_self', 'voyager-star', NULL, NULL, 18, '2019-10-24 20:33:33', '2019-10-24 20:33:33', 'voyager.entraineurs.index', NULL),
(25, 1, 'Postes', '', '_self', '}', NULL, NULL, 19, '2019-10-25 12:31:00', '2019-10-25 12:31:00', 'voyager.postes.index', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_01_01_000000_add_voyager_user_fields', 1),
(4, '2016_01_01_000000_create_data_types_table', 1),
(5, '2016_01_01_000000_create_pages_table', 1),
(6, '2016_01_01_000000_create_posts_table', 1),
(7, '2016_02_15_204651_create_categories_table', 1),
(8, '2016_05_19_173453_create_menu_table', 1),
(9, '2016_10_21_190000_create_roles_table', 1),
(10, '2016_10_21_190000_create_settings_table', 1),
(11, '2016_11_30_135954_create_permission_table', 1),
(12, '2016_11_30_141208_create_permission_role_table', 1),
(13, '2016_12_26_201236_data_types__add__server_side', 1),
(14, '2017_01_13_000000_add_route_to_menu_items_table', 1),
(15, '2017_01_14_005015_create_translations_table', 1),
(16, '2017_01_15_000000_make_table_name_nullable_in_permissions_table', 1),
(17, '2017_03_06_000000_add_controller_to_data_types_table', 1),
(18, '2017_04_11_000000_alter_post_nullable_fields_table', 1),
(19, '2017_04_21_000000_add_order_to_data_rows_table', 1),
(20, '2017_07_05_210000_add_policyname_to_data_types_table', 1),
(21, '2017_08_05_000000_add_group_to_settings_table', 1),
(22, '2017_11_26_013050_add_user_role_relationship', 1),
(23, '2017_11_26_015000_create_user_roles_table', 1),
(24, '2018_03_11_000000_add_user_settings', 1),
(25, '2018_03_14_000000_add_details_to_data_types_table', 1),
(26, '2018_03_16_000000_make_settings_value_nullable', 1),
(27, '2019_08_19_000000_create_failed_jobs_table', 1);

-- --------------------------------------------------------

--
-- Structure de la table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `permissions`
--

INSERT INTO `permissions` (`id`, `key`, `table_name`, `created_at`, `updated_at`) VALUES
(1, 'browse_admin', NULL, '2019-10-24 00:56:47', '2019-10-24 00:56:47'),
(2, 'browse_bread', NULL, '2019-10-24 00:56:47', '2019-10-24 00:56:47'),
(3, 'browse_database', NULL, '2019-10-24 00:56:47', '2019-10-24 00:56:47'),
(4, 'browse_media', NULL, '2019-10-24 00:56:47', '2019-10-24 00:56:47'),
(5, 'browse_compass', NULL, '2019-10-24 00:56:47', '2019-10-24 00:56:47'),
(6, 'browse_menus', 'menus', '2019-10-24 00:56:47', '2019-10-24 00:56:47'),
(7, 'read_menus', 'menus', '2019-10-24 00:56:47', '2019-10-24 00:56:47'),
(8, 'edit_menus', 'menus', '2019-10-24 00:56:47', '2019-10-24 00:56:47'),
(9, 'add_menus', 'menus', '2019-10-24 00:56:47', '2019-10-24 00:56:47'),
(10, 'delete_menus', 'menus', '2019-10-24 00:56:47', '2019-10-24 00:56:47'),
(11, 'browse_roles', 'roles', '2019-10-24 00:56:47', '2019-10-24 00:56:47'),
(12, 'read_roles', 'roles', '2019-10-24 00:56:47', '2019-10-24 00:56:47'),
(13, 'edit_roles', 'roles', '2019-10-24 00:56:47', '2019-10-24 00:56:47'),
(14, 'add_roles', 'roles', '2019-10-24 00:56:47', '2019-10-24 00:56:47'),
(15, 'delete_roles', 'roles', '2019-10-24 00:56:47', '2019-10-24 00:56:47'),
(16, 'browse_users', 'users', '2019-10-24 00:56:47', '2019-10-24 00:56:47'),
(17, 'read_users', 'users', '2019-10-24 00:56:47', '2019-10-24 00:56:47'),
(18, 'edit_users', 'users', '2019-10-24 00:56:47', '2019-10-24 00:56:47'),
(19, 'add_users', 'users', '2019-10-24 00:56:47', '2019-10-24 00:56:47'),
(20, 'delete_users', 'users', '2019-10-24 00:56:47', '2019-10-24 00:56:47'),
(21, 'browse_settings', 'settings', '2019-10-24 00:56:47', '2019-10-24 00:56:47'),
(22, 'read_settings', 'settings', '2019-10-24 00:56:47', '2019-10-24 00:56:47'),
(23, 'edit_settings', 'settings', '2019-10-24 00:56:47', '2019-10-24 00:56:47'),
(24, 'add_settings', 'settings', '2019-10-24 00:56:47', '2019-10-24 00:56:47'),
(25, 'delete_settings', 'settings', '2019-10-24 00:56:47', '2019-10-24 00:56:47'),
(41, 'browse_hooks', NULL, '2019-10-24 00:56:48', '2019-10-24 00:56:48'),
(52, 'browse_entraineur', 'entraineur', '2019-10-24 17:29:10', '2019-10-24 17:29:10'),
(53, 'read_entraineur', 'entraineur', '2019-10-24 17:29:10', '2019-10-24 17:29:10'),
(54, 'edit_entraineur', 'entraineur', '2019-10-24 17:29:10', '2019-10-24 17:29:10'),
(55, 'add_entraineur', 'entraineur', '2019-10-24 17:29:10', '2019-10-24 17:29:10'),
(56, 'delete_entraineur', 'entraineur', '2019-10-24 17:29:10', '2019-10-24 17:29:10'),
(72, 'browse_equipes', 'equipes', '2019-10-24 19:27:45', '2019-10-24 19:27:45'),
(73, 'read_equipes', 'equipes', '2019-10-24 19:27:45', '2019-10-24 19:27:45'),
(74, 'edit_equipes', 'equipes', '2019-10-24 19:27:45', '2019-10-24 19:27:45'),
(75, 'add_equipes', 'equipes', '2019-10-24 19:27:45', '2019-10-24 19:27:45'),
(76, 'delete_equipes', 'equipes', '2019-10-24 19:27:45', '2019-10-24 19:27:45'),
(77, 'browse_joueurs', 'joueurs', '2019-10-24 19:32:09', '2019-10-24 19:32:09'),
(78, 'read_joueurs', 'joueurs', '2019-10-24 19:32:09', '2019-10-24 19:32:09'),
(79, 'edit_joueurs', 'joueurs', '2019-10-24 19:32:09', '2019-10-24 19:32:09'),
(80, 'add_joueurs', 'joueurs', '2019-10-24 19:32:09', '2019-10-24 19:32:09'),
(81, 'delete_joueurs', 'joueurs', '2019-10-24 19:32:09', '2019-10-24 19:32:09'),
(82, 'browse_articles', 'articles', '2019-10-24 19:34:49', '2019-10-24 19:34:49'),
(83, 'read_articles', 'articles', '2019-10-24 19:34:49', '2019-10-24 19:34:49'),
(84, 'edit_articles', 'articles', '2019-10-24 19:34:49', '2019-10-24 19:34:49'),
(85, 'add_articles', 'articles', '2019-10-24 19:34:49', '2019-10-24 19:34:49'),
(86, 'delete_articles', 'articles', '2019-10-24 19:34:49', '2019-10-24 19:34:49'),
(87, 'browse_entraineurs', 'entraineurs', '2019-10-24 20:33:33', '2019-10-24 20:33:33'),
(88, 'read_entraineurs', 'entraineurs', '2019-10-24 20:33:33', '2019-10-24 20:33:33'),
(89, 'edit_entraineurs', 'entraineurs', '2019-10-24 20:33:33', '2019-10-24 20:33:33'),
(90, 'add_entraineurs', 'entraineurs', '2019-10-24 20:33:33', '2019-10-24 20:33:33'),
(91, 'delete_entraineurs', 'entraineurs', '2019-10-24 20:33:33', '2019-10-24 20:33:33'),
(92, 'browse_postes', 'postes', '2019-10-25 12:31:00', '2019-10-25 12:31:00'),
(93, 'read_postes', 'postes', '2019-10-25 12:31:00', '2019-10-25 12:31:00'),
(94, 'edit_postes', 'postes', '2019-10-25 12:31:00', '2019-10-25 12:31:00'),
(95, 'add_postes', 'postes', '2019-10-25 12:31:00', '2019-10-25 12:31:00'),
(96, 'delete_postes', 'postes', '2019-10-25 12:31:00', '2019-10-25 12:31:00');

-- --------------------------------------------------------

--
-- Structure de la table `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(1, 1),
(1, 2),
(2, 1),
(2, 2),
(3, 1),
(3, 2),
(4, 1),
(4, 2),
(5, 1),
(5, 2),
(6, 1),
(6, 2),
(7, 1),
(7, 2),
(8, 1),
(8, 2),
(9, 1),
(9, 2),
(10, 1),
(10, 2),
(11, 1),
(11, 2),
(12, 1),
(12, 2),
(13, 1),
(13, 2),
(14, 1),
(14, 2),
(15, 1),
(15, 2),
(16, 1),
(16, 2),
(17, 1),
(17, 2),
(18, 1),
(18, 2),
(19, 1),
(19, 2),
(20, 1),
(20, 2),
(21, 1),
(21, 2),
(22, 1),
(22, 2),
(23, 1),
(23, 2),
(24, 1),
(24, 2),
(25, 1),
(25, 2),
(41, 1),
(41, 2),
(52, 1),
(52, 2),
(53, 1),
(53, 2),
(54, 1),
(54, 2),
(55, 1),
(55, 2),
(56, 1),
(56, 2),
(72, 1),
(73, 1),
(74, 1),
(75, 1),
(76, 1),
(77, 1),
(78, 1),
(79, 1),
(80, 1),
(81, 1),
(82, 1),
(83, 1),
(84, 1),
(85, 1),
(86, 1),
(87, 1),
(88, 1),
(89, 1),
(90, 1),
(91, 1),
(92, 1),
(93, 1),
(94, 1),
(95, 1),
(96, 1);

-- --------------------------------------------------------

--
-- Structure de la table `postes`
--

CREATE TABLE `postes` (
  `id` int(10) UNSIGNED NOT NULL,
  `nom` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `postes`
--

INSERT INTO `postes` (`id`, `nom`, `created_at`, `updated_at`) VALUES
(2, 'DEFENSEUR', '2019-10-25 12:38:06', '2019-10-25 12:38:06'),
(3, 'ATTAQUANT', '2019-10-25 12:38:14', '2019-10-25 12:38:14'),
(4, 'GARDIEN', '2019-10-25 12:39:03', '2019-10-25 12:39:03'),
(5, 'MILIEU', '2019-10-25 12:39:45', '2019-10-25 12:39:45');

-- --------------------------------------------------------

--
-- Structure de la table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Administrator', '2019-10-24 00:56:47', '2019-10-24 00:56:47'),
(2, 'user', 'Normal User', '2019-10-24 00:56:47', '2019-10-24 00:56:47');

-- --------------------------------------------------------

--
-- Structure de la table `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `details` text COLLATE utf8mb4_unicode_ci,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT '1',
  `group` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `settings`
--

INSERT INTO `settings` (`id`, `key`, `display_name`, `value`, `details`, `type`, `order`, `group`) VALUES
(1, 'site.title', 'Site Title', 'Istres FC | Site Officiel', '', 'text', 1, 'Site'),
(2, 'site.description', 'Site Description', 'Istres FC | Site Officiel', '', 'text', 2, 'Site'),
(3, 'site.logo', 'Site Logo', 'settings\\October2019\\Qt8TgYyGU2Al1y7VLnrj.png', '', 'image', 3, 'Site'),
(4, 'site.google_analytics_tracking_id', 'Google Analytics Tracking ID', NULL, '', 'text', 4, 'Site'),
(5, 'admin.bg_image', 'Admin Background Image', 'settings\\October2019\\MS3ein4NQqg6a2wwai9H.png', '', 'image', 5, 'Admin'),
(6, 'admin.title', 'Admin Title', 'istresFC', '', 'text', 1, 'Admin'),
(7, 'admin.description', 'Admin Description', 'site Officiel IstresFC', '', 'text', 2, 'Admin'),
(8, 'admin.loader', 'Admin Loader', '', '', 'image', 3, 'Admin'),
(9, 'admin.icon_image', 'Admin Icon Image', 'settings\\October2019\\hd82bsGWQZStHaodNDVR.png', '', 'image', 4, 'Admin'),
(10, 'admin.google_analytics_client_id', 'Google Analytics Client ID (used for admin dashboard)', NULL, '', 'text', 1, 'Admin');

-- --------------------------------------------------------

--
-- Structure de la table `translations`
--

CREATE TABLE `translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `column_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foreign_key` int(10) UNSIGNED NOT NULL,
  `locale` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `translations`
--

INSERT INTO `translations` (`id`, `table_name`, `column_name`, `foreign_key`, `locale`, `value`, `created_at`, `updated_at`) VALUES
(1, 'data_types', 'display_name_singular', 5, 'pt', 'Post', '2019-10-24 00:56:47', '2019-10-24 00:56:47'),
(2, 'data_types', 'display_name_singular', 6, 'pt', 'Página', '2019-10-24 00:56:47', '2019-10-24 00:56:47'),
(3, 'data_types', 'display_name_singular', 1, 'pt', 'Utilizador', '2019-10-24 00:56:47', '2019-10-24 00:56:47'),
(4, 'data_types', 'display_name_singular', 4, 'pt', 'Categoria', '2019-10-24 00:56:47', '2019-10-24 00:56:47'),
(5, 'data_types', 'display_name_singular', 2, 'pt', 'Menu', '2019-10-24 00:56:47', '2019-10-24 00:56:47'),
(6, 'data_types', 'display_name_singular', 3, 'pt', 'Função', '2019-10-24 00:56:47', '2019-10-24 00:56:47'),
(7, 'data_types', 'display_name_plural', 5, 'pt', 'Posts', '2019-10-24 00:56:47', '2019-10-24 00:56:47'),
(8, 'data_types', 'display_name_plural', 6, 'pt', 'Páginas', '2019-10-24 00:56:47', '2019-10-24 00:56:47'),
(9, 'data_types', 'display_name_plural', 1, 'pt', 'Utilizadores', '2019-10-24 00:56:47', '2019-10-24 00:56:47'),
(10, 'data_types', 'display_name_plural', 4, 'pt', 'Categorias', '2019-10-24 00:56:47', '2019-10-24 00:56:47'),
(11, 'data_types', 'display_name_plural', 2, 'pt', 'Menus', '2019-10-24 00:56:47', '2019-10-24 00:56:47'),
(12, 'data_types', 'display_name_plural', 3, 'pt', 'Funções', '2019-10-24 00:56:47', '2019-10-24 00:56:47'),
(13, 'categories', 'slug', 1, 'pt', 'categoria-1', '2019-10-24 00:56:47', '2019-10-24 00:56:47'),
(14, 'categories', 'name', 1, 'pt', 'Categoria 1', '2019-10-24 00:56:47', '2019-10-24 00:56:47'),
(15, 'categories', 'slug', 2, 'pt', 'categoria-2', '2019-10-24 00:56:48', '2019-10-24 00:56:48'),
(16, 'categories', 'name', 2, 'pt', 'Categoria 2', '2019-10-24 00:56:48', '2019-10-24 00:56:48'),
(17, 'pages', 'title', 1, 'pt', 'Olá Mundo', '2019-10-24 00:56:48', '2019-10-24 00:56:48'),
(18, 'pages', 'slug', 1, 'pt', 'ola-mundo', '2019-10-24 00:56:48', '2019-10-24 00:56:48'),
(19, 'pages', 'body', 1, 'pt', '<p>Olá Mundo. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\r\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>', '2019-10-24 00:56:48', '2019-10-24 00:56:48'),
(20, 'menu_items', 'title', 1, 'pt', 'Painel de Controle', '2019-10-24 00:56:48', '2019-10-24 00:56:48'),
(21, 'menu_items', 'title', 2, 'pt', 'Media', '2019-10-24 00:56:48', '2019-10-24 00:56:48'),
(22, 'menu_items', 'title', 12, 'pt', 'Publicações', '2019-10-24 00:56:48', '2019-10-24 00:56:48'),
(23, 'menu_items', 'title', 3, 'pt', 'Utilizadores', '2019-10-24 00:56:48', '2019-10-24 00:56:48'),
(24, 'menu_items', 'title', 11, 'pt', 'Categorias', '2019-10-24 00:56:48', '2019-10-24 00:56:48'),
(25, 'menu_items', 'title', 13, 'pt', 'Páginas', '2019-10-24 00:56:48', '2019-10-24 00:56:48'),
(26, 'menu_items', 'title', 4, 'pt', 'Funções', '2019-10-24 00:56:48', '2019-10-24 00:56:48'),
(27, 'menu_items', 'title', 5, 'pt', 'Ferramentas', '2019-10-24 00:56:48', '2019-10-24 00:56:48'),
(28, 'menu_items', 'title', 6, 'pt', 'Menus', '2019-10-24 00:56:48', '2019-10-24 00:56:48'),
(29, 'menu_items', 'title', 7, 'pt', 'Base de dados', '2019-10-24 00:56:48', '2019-10-24 00:56:48'),
(30, 'menu_items', 'title', 10, 'pt', 'Configurações', '2019-10-24 00:56:48', '2019-10-24 00:56:48');

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'users/default.png',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `settings` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `avatar`, `email_verified_at`, `password`, `remember_token`, `settings`, `created_at`, `updated_at`) VALUES
(1, 1, 'Admin', 'admin@admin.com', 'users\\October2019\\7NXP6IFy8X1u145DHYtb.jpg', NULL, '$2y$10$O6/7hzYkJWJ0wrY3OOEq2eghlklWrd.WZbZsKb9WO.8WBqIpJewpe', '8J7joIIN7dp7dghHKAd9mTfy2LjaAk3LwG9dkEYeM1TMJVjAAyE3ATacS3JF', '{\"locale\":\"fr\"}', '2019-10-24 00:56:47', '2019-10-24 02:29:48'),
(2, 1, 'joseph', 'na2si@hotmail.fr', 'users\\October2019\\1B17lMqdyCiFuu9xq4B6.jpg', NULL, '$2y$10$L3BB/eBpMs8UB5P9ml2hxOq6VPkOW5ET8kv6TOF9jtvAKxnwE2UeG', NULL, '{\"locale\":\"fr\"}', '2019-10-24 04:18:30', '2019-10-24 04:19:10');

-- --------------------------------------------------------

--
-- Structure de la table `user_roles`
--

CREATE TABLE `user_roles` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `data_rows`
--
ALTER TABLE `data_rows`
  ADD PRIMARY KEY (`id`),
  ADD KEY `data_rows_data_type_id_foreign` (`data_type_id`);

--
-- Index pour la table `data_types`
--
ALTER TABLE `data_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `data_types_name_unique` (`name`),
  ADD UNIQUE KEY `data_types_slug_unique` (`slug`);

--
-- Index pour la table `entraineurs`
--
ALTER TABLE `entraineurs`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `equipes`
--
ALTER TABLE `equipes`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `joueurs`
--
ALTER TABLE `joueurs`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menus_name_unique` (`name`);

--
-- Index pour la table `menu_items`
--
ALTER TABLE `menu_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_items_menu_id_foreign` (`menu_id`);

--
-- Index pour la table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Index pour la table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permissions_key_index` (`key`);

--
-- Index pour la table `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_permission_id_index` (`permission_id`),
  ADD KEY `permission_role_role_id_index` (`role_id`);

--
-- Index pour la table `postes`
--
ALTER TABLE `postes`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Index pour la table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_key_unique` (`key`);

--
-- Index pour la table `translations`
--
ALTER TABLE `translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `translations_table_name_column_name_foreign_key_locale_unique` (`table_name`,`column_name`,`foreign_key`,`locale`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_role_id_foreign` (`role_id`);

--
-- Index pour la table `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `user_roles_user_id_index` (`user_id`),
  ADD KEY `user_roles_role_id_index` (`role_id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `articles`
--
ALTER TABLE `articles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT pour la table `data_rows`
--
ALTER TABLE `data_rows`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=121;

--
-- AUTO_INCREMENT pour la table `data_types`
--
ALTER TABLE `data_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT pour la table `entraineurs`
--
ALTER TABLE `entraineurs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `equipes`
--
ALTER TABLE `equipes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT pour la table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `joueurs`
--
ALTER TABLE `joueurs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT pour la table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `menu_items`
--
ALTER TABLE `menu_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT pour la table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT pour la table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=97;

--
-- AUTO_INCREMENT pour la table `postes`
--
ALTER TABLE `postes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT pour la table `translations`
--
ALTER TABLE `translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `data_rows`
--
ALTER TABLE `data_rows`
  ADD CONSTRAINT `data_rows_data_type_id_foreign` FOREIGN KEY (`data_type_id`) REFERENCES `data_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `menu_items`
--
ALTER TABLE `menu_items`
  ADD CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);

--
-- Contraintes pour la table `user_roles`
--
ALTER TABLE `user_roles`
  ADD CONSTRAINT `user_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
