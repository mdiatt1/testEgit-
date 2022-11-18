-- Adminer 4.8.1 MySQL 5.5.5-10.5.15-MariaDB-0+deb11u1 dump

SET NAMES utf8;
SET time_zone = '+00:00';
SET foreign_key_checks = 0;
SET sql_mode = 'NO_AUTO_VALUE_ON_ZERO';

SET NAMES utf8mb4;

DROP TABLE IF EXISTS `Etape`;
CREATE TABLE `Etape` (
  `EtapeID` int(11) NOT NULL,
  `descriptif` varchar(255) DEFAULT NULL,
  `numero` int(11) DEFAULT NULL,
  PRIMARY KEY (`EtapeID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


DROP TABLE IF EXISTS `Ingredient`;
CREATE TABLE `Ingredient` (
  `IngredientID` int(11) NOT NULL,
  `nom` varchar(50) DEFAULT NULL,
  `QteStock` int(11) DEFAULT NULL,
  PRIMARY KEY (`IngredientID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


DROP TABLE IF EXISTS `Origine`;
CREATE TABLE `Origine` (
  `OrigineID` int(11) NOT NULL,
  `localisation` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`OrigineID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


DROP TABLE IF EXISTS `Recettes`;
CREATE TABLE `Recettes` (
  `RecetteID` int(11) NOT NULL,
  `nom` varchar(50) DEFAULT NULL,
  `duree` time DEFAULT NULL,
  `niveauDiff` varchar(50) DEFAULT NULL,
  `estimPrix` varchar(5) DEFAULT NULL,
  PRIMARY KEY (`RecetteID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


DROP TABLE IF EXISTS `User`;
CREATE TABLE `User` (
  `ID` int(11) NOT NULL,
  `login` char(25) DEFAULT NULL,
  `mdp` char(8) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `User` (`ID`, `login`, `mdp`) VALUES
(1,	'mmm',	'kkk'),
(2,	'heddi',	'term'),
(3,	'malang',	'diatt');

DROP TABLE IF EXISTS `Ustensile`;
CREATE TABLE `Ustensile` (
  `UstensileID` int(11) NOT NULL,
  `nom` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`UstensileID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


-- 2022-11-18 09:05:23
