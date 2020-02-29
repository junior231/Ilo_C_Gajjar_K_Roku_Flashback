-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Feb 29, 2020 at 09:34 PM
-- Server version: 5.7.26
-- PHP Version: 7.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_roku`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_adults`
--

DROP TABLE IF EXISTS `tbl_adults`;
CREATE TABLE IF NOT EXISTS `tbl_adults` (
  `ID` int(20) NOT NULL AUTO_INCREMENT,
  `Year` int(20) NOT NULL,
  `Movie` varchar(200) NOT NULL,
  `TV` varchar(200) NOT NULL,
  `Music` varchar(200) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_adults`
--

INSERT INTO `tbl_adults` (`ID`, `Year`, `Movie`, `TV`, `Music`) VALUES
(1, 1950, 'Singin in the rain', 'I Love Lucy', 'Round around the clock'),
(2, 1960, '2001: A Space Odyssey', 'The Andy Griffith Show', 'I Want to Hold your Hand'),
(3, 1970, 'The Godfather', 'M*A*S*H', 'Don\'t Go Breaking My Heart'),
(4, 1980, 'Back to the Future', 'The A-team', 'Sweet Child O\'mine'),
(5, 1990, 'Pulp Fiction', 'Friends', 'I will always love you');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_kids`
--

DROP TABLE IF EXISTS `tbl_kids`;
CREATE TABLE IF NOT EXISTS `tbl_kids` (
  `ID` int(20) NOT NULL AUTO_INCREMENT,
  `Movie` varchar(200) NOT NULL,
  `TV` varchar(200) NOT NULL,
  `Music` varchar(200) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `fname` varchar(50) NOT NULL,
  `lname` varchar(50) NOT NULL,
  `uname` varchar(50) NOT NULL,
  `avatar` varchar(50) NOT NULL,
  `Isadmin` int(1) NOT NULL,
  `permissions` int(4) NOT NULL,
  `password` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `fname`, `lname`, `uname`, `avatar`, `Isadmin`, `permissions`, `password`) VALUES
(1, 'Collins', 'Ilo', 'junior', '', 1, 1, '1234'),
(2, 'Kahani', 'Gajjar', 'Kahani22', '', 0, 2, '');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
