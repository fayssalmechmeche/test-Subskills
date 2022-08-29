-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : lun. 29 août 2022 à 16:10
-- Version du serveur : 8.0.27
-- Version de PHP : 8.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `subskills`
--

-- --------------------------------------------------------

--
-- Structure de la table `filter`
--

DROP TABLE IF EXISTS `filter`;
CREATE TABLE IF NOT EXISTS `filter` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `filter`
--

INSERT INTO `filter` (`id`, `name`) VALUES
(1, 'Lyon'),
(2, 'Paris'),
(3, 'Marseille'),
(4, 'CDD'),
(5, 'CDI'),
(6, 'ALTERNANCE');

-- --------------------------------------------------------

--
-- Structure de la table `offre`
--

DROP TABLE IF EXISTS `offre`;
CREATE TABLE IF NOT EXISTS `offre` (
  `id` int NOT NULL AUTO_INCREMENT,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `name` varchar(255) NOT NULL,
  `adress` varchar(255) NOT NULL,
  `contracts_id` int NOT NULL,
  `adress_id` int NOT NULL,
  `job` varchar(255) NOT NULL,
  `company` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `contracts` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=107 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `offre`
--

INSERT INTO `offre` (`id`, `created_at`, `updated_at`, `name`, `adress`, `contracts_id`, `adress_id`, `job`, `company`, `description`, `contracts`) VALUES
(23, '2022-08-24 12:42:39', '2022-08-24 12:42:39', 'job', 'Paris', 5, 2, 'Développeur Front-end ', 'Subskills', 'Job d\'alternance', 'CDI'),
(33, '2022-08-24 12:42:39', '2022-08-24 12:42:39', 'job', 'Marseille', 6, 3, 'Développeur Full-stack', 'Subskills', 'Job d\'alternance', 'Alternance'),
(34, '2022-08-24 12:42:39', '2022-08-24 12:42:39', 'job', 'Lyon', 4, 1, 'Développeur Back-end', 'Subskills', 'Job d\'alternance', 'CDD'),
(62, '2022-08-24 12:42:39', '2022-08-24 12:42:39', 'job', 'Paris', 5, 2, 'Développeur Front-end ', 'Subskills', 'Job d\'alternance', 'CDI'),
(63, '2022-08-24 12:42:39', '2022-08-24 12:42:39', 'job', 'Marseille', 6, 3, 'Développeur Full-stack', 'Subskills', 'Job d\'alternance', 'Alternance'),
(64, '2022-08-24 12:42:39', '2022-08-24 12:42:39', 'job', 'Lyon', 4, 1, 'Développeur Back-end', 'Subskills', 'Job d\'alternance', 'CDD'),
(65, '2022-08-24 12:42:39', '2022-08-24 12:42:39', 'job', 'Paris', 5, 2, 'Développeur Front-end ', 'Subskills', 'Job d\'alternance', 'CDI'),
(66, '2022-08-24 12:42:39', '2022-08-24 12:42:39', 'job', 'Marseille', 6, 3, 'Développeur Full-stack', 'Subskills', 'Job d\'alternance', 'Alternance'),
(67, '2022-08-24 12:42:39', '2022-08-24 12:42:39', 'job', 'Lyon', 4, 1, 'Développeur Back-end', 'Subskills', 'Job d\'alternance', 'CDD'),
(68, '2022-08-24 12:42:39', '2022-08-24 12:42:39', 'job', 'Paris', 5, 2, 'Développeur Front-end ', 'Subskills', 'Job d\'alternance', 'CDI'),
(69, '2022-08-24 12:42:39', '2022-08-24 12:42:39', 'job', 'Marseille', 6, 3, 'Développeur Full-stack', 'Subskills', 'Job d\'alternance', 'Alternance'),
(70, '2022-08-24 12:42:39', '2022-08-24 12:42:39', 'job', 'Lyon', 4, 1, 'Développeur Back-end', 'Subskills', 'Job d\'alternance', 'CDD'),
(71, '2022-08-24 12:42:39', '2022-08-24 12:42:39', 'job', 'Paris', 5, 2, 'Développeur Front-end ', 'Subskills', 'Job d\'alternance', 'CDI'),
(72, '2022-08-24 12:42:39', '2022-08-24 12:42:39', 'job', 'Marseille', 6, 3, 'Développeur Full-stack', 'Subskills', 'Job d\'alternance', 'Alternance'),
(73, '2022-08-24 12:42:39', '2022-08-24 12:42:39', 'job', 'Lyon', 4, 1, 'Développeur Back-end', 'Subskills', 'Job d\'alternance', 'CDD'),
(74, '2022-08-24 12:42:39', '2022-08-24 12:42:39', 'job', 'Paris', 5, 2, 'Développeur Front-end ', 'Subskills', 'Job d\'alternance', 'CDI'),
(75, '2022-08-24 12:42:39', '2022-08-24 12:42:39', 'job', 'Marseille', 6, 3, 'Développeur Full-stack', 'Subskills', 'Job d\'alternance', 'Alternance'),
(76, '2022-08-24 12:42:39', '2022-08-24 12:42:39', 'job', 'Lyon', 4, 1, 'Développeur Back-end', 'Subskills', 'Job d\'alternance', 'CDD'),
(77, '2022-08-24 12:42:39', '2022-08-24 12:42:39', 'job', 'Paris', 5, 2, 'Développeur Front-end ', 'Subskills', 'Job d\'alternance', 'CDI'),
(78, '2022-08-24 12:42:39', '2022-08-24 12:42:39', 'job', 'Marseille', 6, 3, 'Développeur Full-stack', 'Subskills', 'Job d\'alternance', 'Alternance'),
(79, '2022-08-24 12:42:39', '2022-08-24 12:42:39', 'job', 'Lyon', 4, 1, 'Développeur Back-end', 'Subskills', 'Job d\'alternance', 'CDD'),
(80, '2022-08-24 12:42:39', '2022-08-24 12:42:39', 'job', 'Paris', 5, 2, 'Développeur Front-end ', 'Subskills', 'Job d\'alternance', 'CDI'),
(81, '2022-08-24 12:42:39', '2022-08-24 12:42:39', 'job', 'Marseille', 6, 3, 'Développeur Full-stack', 'Subskills', 'Job d\'alternance', 'Alternance'),
(82, '2022-08-24 12:42:39', '2022-08-24 12:42:39', 'job', 'Lyon', 4, 1, 'Développeur Back-end', 'Subskills', 'Job d\'alternance', 'CDD'),
(83, '2022-08-24 12:42:39', '2022-08-24 12:42:39', 'job', 'Paris', 5, 2, 'Développeur Front-end ', 'Subskills', 'Job d\'alternance', 'CDI'),
(84, '2022-08-24 12:42:39', '2022-08-24 12:42:39', 'job', 'Marseille', 6, 3, 'Développeur Full-stack', 'Subskills', 'Job d\'alternance', 'Alternance'),
(85, '2022-08-24 12:42:39', '2022-08-24 12:42:39', 'job', 'Lyon', 4, 1, 'Développeur Back-end', 'Subskills', 'Job d\'alternance', 'CDD'),
(86, '2022-08-24 12:42:39', '2022-08-24 12:42:39', 'job', 'Paris', 5, 2, 'Développeur Front-end ', 'Subskills', 'Job d\'alternance', 'CDI'),
(87, '2022-08-24 12:42:39', '2022-08-24 12:42:39', 'job', 'Marseille', 6, 3, 'Développeur Full-stack', 'Subskills', 'Job d\'alternance', 'Alternance'),
(88, '2022-08-24 12:42:39', '2022-08-24 12:42:39', 'job', 'Lyon', 4, 1, 'Développeur Back-end', 'Subskills', 'Job d\'alternance', 'CDD'),
(89, '2022-08-24 12:42:39', '2022-08-24 12:42:39', 'job', 'Paris', 5, 2, 'Développeur Front-end ', 'Subskills', 'Job d\'alternance', 'CDI'),
(90, '2022-08-24 12:42:39', '2022-08-24 12:42:39', 'job', 'Marseille', 6, 3, 'Développeur Full-stack', 'Subskills', 'Job d\'alternance', 'Alternance'),
(91, '2022-08-24 12:42:39', '2022-08-24 12:42:39', 'job', 'Lyon', 4, 1, 'Développeur Back-end', 'Subskills', 'Job d\'alternance', 'CDD'),
(92, '2022-08-24 12:42:39', '2022-08-24 12:42:39', 'job', 'Paris', 5, 2, 'Développeur Front-end ', 'Subskills', 'Job d\'alternance', 'CDI'),
(93, '2022-08-24 12:42:39', '2022-08-24 12:42:39', 'job', 'Marseille', 6, 3, 'Développeur Full-stack', 'Subskills', 'Job d\'alternance', 'Alternance'),
(94, '2022-08-24 12:42:39', '2022-08-24 12:42:39', 'job', 'Lyon', 4, 1, 'Développeur Back-end', 'Subskills', 'Job d\'alternance', 'CDD'),
(95, '2022-08-24 12:42:39', '2022-08-24 12:42:39', 'job', 'Paris', 5, 2, 'Développeur Front-end ', 'Subskills', 'Job d\'alternance', 'CDI'),
(96, '2022-08-24 12:42:39', '2022-08-24 12:42:39', 'job', 'Marseille', 6, 3, 'Développeur Full-stack', 'Subskills', 'Job d\'alternance', 'Alternance'),
(97, '2022-08-24 12:42:39', '2022-08-24 12:42:39', 'job', 'Lyon', 4, 1, 'Développeur Back-end', 'Subskills', 'Job d\'alternance', 'CDD'),
(98, '2022-08-24 12:42:39', '2022-08-24 12:42:39', 'job', 'Paris', 5, 2, 'Développeur Front-end ', 'Subskills', 'Job d\'alternance', 'CDI'),
(99, '2022-08-24 12:42:39', '2022-08-24 12:42:39', 'job', 'Marseille', 6, 3, 'Développeur Full-stack', 'Subskills', 'Job d\'alternance', 'Alternance'),
(100, '2022-08-24 12:42:39', '2022-08-24 12:42:39', 'job', 'Lyon', 4, 1, 'Développeur Back-end', 'Subskills', 'Job d\'alternance', 'CDD'),
(101, '2022-08-24 12:42:39', '2022-08-24 12:42:39', 'job', 'Paris', 5, 2, 'Développeur Front-end ', 'Subskills', 'Job d\'alternance', 'CDI'),
(102, '2022-08-24 12:42:39', '2022-08-24 12:42:39', 'job', 'Marseille', 6, 3, 'Développeur Full-stack', 'Subskills', 'Job d\'alternance', 'Alternance'),
(103, '2022-08-24 12:42:39', '2022-08-24 12:42:39', 'job', 'Lyon', 4, 1, 'Développeur Back-end', 'Subskills', 'Job d\'alternance', 'CDD'),
(104, '2022-08-24 12:42:39', '2022-08-24 12:42:39', 'job', 'Paris', 5, 2, 'Développeur Front-end ', 'Subskills', 'Job d\'alternance', 'CDI'),
(105, '2022-08-24 12:42:39', '2022-08-24 12:42:39', 'job', 'Marseille', 6, 3, 'Développeur Full-stack', 'Subskills', 'Job d\'alternance', 'Alternance'),
(106, '2022-08-24 12:42:39', '2022-08-24 12:42:39', 'job', 'Lyon', 4, 1, 'Développeur Back-end', 'Subskills', 'Job d\'alternance', 'CDD');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
