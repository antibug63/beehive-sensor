-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost
-- Généré le :  Dim 06 fév. 2022 à 18:41
-- Version du serveur :  10.3.31-MariaDB-0+deb10u1
-- Version de PHP :  7.3.31-1~deb10u1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `helium`
--

-- --------------------------------------------------------

--
-- Structure de la table `helium`
--

CREATE TABLE `helium` (
  `recep_id` int(11) NOT NULL,
  `date` datetime NOT NULL,
  `app_eui` text NOT NULL,
  `dev_eui` text NOT NULL,
  `devaddr` text NOT NULL,
  `name` text NOT NULL,
  `bat` decimal(10,2) NOT NULL,
  `poid` decimal(10,2) NOT NULL,
  `hext` decimal(10,2) NOT NULL,
  `text` decimal(10,2) NOT NULL,
  `tint1` decimal(10,2) NOT NULL,
  `tint2` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `helium`
--

INSERT INTO `helium` (`recep_id`, `date`, `app_eui`, `dev_eui`, `devaddr`, `name`, `bat`, `poid`, `hext`, `text`, `tint1`, `tint2`) VALUES
(11, '2022-01-26 06:54:08', 'AK4CsCEcDBAJ0Ai9CACAAIAAgA==', '6081F9CCB85E3823', '17000048', 'cubecell', '6.86', '86.24', '31.00', '23.20', '22.56', '22.37'),
(12, '2022-01-26 06:57:16', 'AJwCmCUcDBAJ0Ai9CACAAIAAgA==', '6081F9CCB85E3823', '21000048', 'cubecell', '6.68', '96.24', '31.00', '23.20', '22.56', '22.37');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `helium`
--
ALTER TABLE `helium`
  ADD PRIMARY KEY (`recep_id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `helium`
--
ALTER TABLE `helium`
  MODIFY `recep_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=451;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
