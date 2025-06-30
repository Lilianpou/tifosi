-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : lun. 30 juin 2025 à 09:48
-- Version du serveur : 9.1.0
-- Version de PHP : 8.3.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `tifosi`
--

-- --------------------------------------------------------

--
-- Structure de la table `achat`
--

DROP TABLE IF EXISTS `achat`;
CREATE TABLE IF NOT EXISTS `achat` (
  `id_achat` int NOT NULL AUTO_INCREMENT,
  `id_client` int NOT NULL,
  `id_menu` int NOT NULL,
  `date_achat` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_achat`),
  KEY `id_client` (`id_client`) USING BTREE,
  KEY `id_menu` (`id_menu`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Structure de la table `boisson`
--

DROP TABLE IF EXISTS `boisson`;
CREATE TABLE IF NOT EXISTS `boisson` (
  `id_boisson` int NOT NULL AUTO_INCREMENT,
  `nom` varchar(50) NOT NULL,
  `id_marque` int NOT NULL,
  PRIMARY KEY (`id_boisson`),
  KEY `id_marque` (`id_marque`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `boisson`
--

INSERT INTO `boisson` (`id_boisson`, `nom`, `id_marque`) VALUES
(13, 'Coca-cola zéro', 1),
(14, 'Coca-cola original', 1),
(15, 'Fanta citron', 1),
(16, 'Fanta orange', 1),
(17, 'Capri-sun', 1),
(18, 'Pepsi', 4),
(19, 'Pepsi Max Zéro', 4),
(20, 'Lipton zéro citron', 4),
(21, 'Lipton Peach', 4),
(22, 'Monster energy ultra gold', 3),
(23, 'Monster energy ultra blue', 3),
(24, 'Eau de source ', 2);

-- --------------------------------------------------------

--
-- Structure de la table `client`
--

DROP TABLE IF EXISTS `client`;
CREATE TABLE IF NOT EXISTS `client` (
  `id_client` int NOT NULL AUTO_INCREMENT,
  `nom` varchar(50) NOT NULL,
  `email` varchar(150) NOT NULL,
  PRIMARY KEY (`id_client`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Structure de la table `comprend`
--

DROP TABLE IF EXISTS `comprend`;
CREATE TABLE IF NOT EXISTS `comprend` (
  `id_comprend` int NOT NULL AUTO_INCREMENT,
  `id_ingredient` int NOT NULL,
  `quantite` int NOT NULL,
  `id_foccacia` int NOT NULL,
  PRIMARY KEY (`id_comprend`),
  KEY `id_foccacia` (`id_foccacia`),
  KEY `id_ingredient` (`id_ingredient`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `comprend`
--

INSERT INTO `comprend` (`id_comprend`, `id_ingredient`, `quantite`, `id_foccacia`) VALUES
(1, 5, 200, 1),
(2, 25, 50, 1),
(3, 9, 20, 1),
(4, 13, 80, 1),
(5, 1, 2, 1),
(6, 3, 20, 1),
(7, 7, 40, 1),
(8, 18, 50, 1),
(9, 20, 1, 1),
(10, 16, 20, 1),
(11, 5, 200, 2),
(12, 11, 50, 2),
(13, 9, 20, 2),
(14, 1, 2, 2),
(15, 7, 40, 2),
(16, 18, 50, 2),
(17, 20, 1, 2),
(18, 16, 20, 2),
(19, 5, 200, 3),
(20, 22, 50, 3),
(21, 9, 20, 3),
(22, 1, 2, 3),
(23, 7, 40, 3),
(24, 18, 50, 3),
(25, 20, 1, 3),
(33, 6, 200, 4),
(34, 10, 50, 4),
(35, 9, 20, 4),
(36, 7, 40, 4),
(37, 18, 50, 4),
(38, 20, 1, 4),
(39, 15, 20, 4),
(40, 5, 200, 5),
(41, 25, 50, 5),
(42, 9, 20, 5),
(43, 12, 80, 5),
(44, 7, 80, 5),
(45, 18, 50, 5),
(46, 20, 1, 5),
(47, 16, 10, 5),
(48, 17, 10, 5),
(58, 5, 200, 6),
(59, 25, 50, 6),
(60, 9, 20, 6),
(61, 4, 80, 6),
(62, 2, 40, 6),
(63, 19, 2, 6),
(64, 18, 50, 6),
(65, 20, 1, 6),
(66, 16, 20, 6),
(67, 5, 200, 7),
(68, 25, 50, 7),
(69, 9, 20, 7),
(70, 4, 80, 7),
(71, 21, 40, 7),
(72, 18, 50, 7),
(73, 20, 1, 7),
(74, 16, 20, 7),
(75, 6, 200, 8),
(76, 8, 50, 8),
(77, 9, 20, 8),
(78, 21, 80, 8),
(79, 13, 80, 8),
(80, 1, 2, 8),
(81, 3, 20, 8),
(82, 7, 40, 8),
(83, 18, 50, 8),
(84, 20, 1, 8),
(85, 16, 20, 8),
(86, 14, 50, 8);

-- --------------------------------------------------------

--
-- Structure de la table `foccacia`
--

DROP TABLE IF EXISTS `foccacia`;
CREATE TABLE IF NOT EXISTS `foccacia` (
  `id_foccacia` int NOT NULL AUTO_INCREMENT,
  `nom` varchar(50) NOT NULL,
  `prix` decimal(5,2) NOT NULL,
  PRIMARY KEY (`id_foccacia`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `foccacia`
--

INSERT INTO `foccacia` (`id_foccacia`, `nom`, `prix`) VALUES
(1, 'Mozaccia', 9.80),
(2, 'Gorgonzollaccia', 10.80),
(3, 'Raclaccia', 8.90),
(4, 'Emmentalaccia', 9.80),
(5, 'Tradizione', 8.90),
(6, 'Hawaienne', 11.20),
(7, 'Américaine', 10.80),
(8, 'Paysanne', 12.80);

-- --------------------------------------------------------

--
-- Structure de la table `ingredient`
--

DROP TABLE IF EXISTS `ingredient`;
CREATE TABLE IF NOT EXISTS `ingredient` (
  `id_ingredient` int NOT NULL AUTO_INCREMENT,
  `nom` varchar(50) NOT NULL,
  PRIMARY KEY (`id_ingredient`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `ingredient`
--

INSERT INTO `ingredient` (`id_ingredient`, `nom`) VALUES
(1, 'Ail'),
(2, 'Ananas'),
(3, 'Artichaut'),
(4, 'Bacon'),
(5, 'Base Tomate'),
(6, 'Base crème'),
(7, 'Champignon'),
(8, 'Chevre'),
(9, 'Cresson'),
(10, 'Emmental'),
(11, 'Gorgonzola'),
(12, 'Jambon cuit'),
(13, 'Jambon fumé'),
(14, 'Oeuf'),
(15, 'Oignon'),
(16, 'Olive noire'),
(17, 'Olive verte'),
(18, 'Parmesan'),
(19, 'Piment'),
(20, 'Poivre'),
(21, 'Pomme de terre'),
(22, 'Raclette'),
(23, 'Salami'),
(24, 'Tomate cerise'),
(25, 'Mozarella');

-- --------------------------------------------------------

--
-- Structure de la table `marque`
--

DROP TABLE IF EXISTS `marque`;
CREATE TABLE IF NOT EXISTS `marque` (
  `id_marque` int NOT NULL AUTO_INCREMENT,
  `nom` varchar(50) NOT NULL,
  PRIMARY KEY (`id_marque`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `marque`
--

INSERT INTO `marque` (`id_marque`, `nom`) VALUES
(1, 'Coca-cola'),
(2, 'Cristalline'),
(3, 'Monster'),
(4, 'Pepsico');

-- --------------------------------------------------------

--
-- Structure de la table `menu`
--

DROP TABLE IF EXISTS `menu`;
CREATE TABLE IF NOT EXISTS `menu` (
  `id_menu` int NOT NULL AUTO_INCREMENT,
  `nom` varchar(50) NOT NULL,
  `prix` decimal(5,2) NOT NULL,
  `id_boisson` int NOT NULL,
  `id_foccacia` int NOT NULL,
  PRIMARY KEY (`id_menu`),
  KEY `id_boisson` (`id_boisson`) USING BTREE,
  KEY `id_foccacia` (`id_foccacia`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `achat`
--
ALTER TABLE `achat`
  ADD CONSTRAINT `client_achat` FOREIGN KEY (`id_client`) REFERENCES `client` (`id_client`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `menu_achat` FOREIGN KEY (`id_menu`) REFERENCES `menu` (`id_menu`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Contraintes pour la table `boisson`
--
ALTER TABLE `boisson`
  ADD CONSTRAINT `appartient` FOREIGN KEY (`id_marque`) REFERENCES `marque` (`id_marque`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Contraintes pour la table `comprend`
--
ALTER TABLE `comprend`
  ADD CONSTRAINT `foccacia` FOREIGN KEY (`id_foccacia`) REFERENCES `foccacia` (`id_foccacia`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `ingédient` FOREIGN KEY (`id_ingredient`) REFERENCES `ingredient` (`id_ingredient`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Contraintes pour la table `menu`
--
ALTER TABLE `menu`
  ADD CONSTRAINT `menu_boisson` FOREIGN KEY (`id_boisson`) REFERENCES `boisson` (`id_boisson`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `menu_foccacia` FOREIGN KEY (`id_foccacia`) REFERENCES `foccacia` (`id_foccacia`) ON DELETE RESTRICT ON UPDATE RESTRICT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
