-- phpMyAdmin SQL Dump
-- version 3.4.11.1deb2+deb7u1
-- http://www.phpmyadmin.net
--
-- Client: localhost
-- Généré le: Lun 13 Octobre 2014 à 15:56
-- Version du serveur: 5.5.38
-- Version de PHP: 5.4.4-14+deb7u14

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Base de données: `math`
--

-- --------------------------------------------------------

--
-- Structure de la table `messages`
--

CREATE TABLE IF NOT EXISTS `messages` (
  `idE` int(11) NOT NULL,
  `idR` int(11) NOT NULL,
  `message` longtext COLLATE utf8_bin NOT NULL,
  `date` varchar(25) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`idE`,`idR`,`date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Contenu de la table `messages`
--

INSERT INTO `messages` (`idE`, `idR`, `message`, `date`) VALUES
(1, 2, 'YOLO !', '1413207117'),
(1, 2, ' sdfsfgdghdfg', '1413207589'),
(1, 2, ' wxcwdvdfbdgbv', '1413207721'),
(2, 1, 'sdgsdgsdgerfgs', '1413207117'),
(2, 1, ' lol\n', '1413207709');

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(25) NOT NULL,
  `firstname` varchar(30) NOT NULL,
  `lastname` varchar(30) NOT NULL,
  `password` varchar(40) NOT NULL,
  `public_key` text NOT NULL,
  `private_key` text NOT NULL,
  `modulus` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Contenu de la table `users`
--

INSERT INTO `users` (`id`, `username`, `firstname`, `lastname`, `password`, `public_key`, `private_key`, `modulus`) VALUES
(1, 'loick111', 'Loïck', 'MAHIEUX', '081fb5021cecc3e6c69b16be51d0d21d78fcd5fe', '48929', '54497', '111281'),
(2, 'loic', 'loic', 'loic', 'b6eae37fc74638590e3f9030895d42446505d41b', '97403', '63667', '110767'),
(3, 'anthony', 'loroscio', 'anthony', 'a03ebc5271a22085145111c50eac32d3f3456f6e', '52447', '15955', '54953');
