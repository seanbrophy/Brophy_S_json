-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 24, 2016 at 01:57 AM
-- Server version: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `db_quotes`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_quotes`
--

CREATE TABLE IF NOT EXISTS `tbl_quotes` (
  `quotes_id` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `quotes_img` varchar(50) NOT NULL,
  `quotes_text` text NOT NULL,
  `quotes_name` varchar(50) NOT NULL,
  PRIMARY KEY (`quotes_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `tbl_quotes`
--

INSERT INTO `tbl_quotes` (`quotes_id`, `quotes_img`, `quotes_text`, `quotes_name`) VALUES
(1, 'aceVentura.jpg', '"Alrighty Then."', 'Ace Ventura'),
(2, 'scarface.jpg', '“F*ck you. F*ck you. F*ck you. You’re cool. And f*ck you, I’m out.”\r\n', 'Scarface(Half Baked)'),
(3, 'brianFantana.jpg', '"They''ve done studies you know. 60 percent of the time, it works every time."', 'Brian Fantana(Anchorman)'),
(4, 'mitchHedberg.jpg', '"I don’t have a girlfriend. I just know a girl who would get really mad if she heard me say that."', 'Mitch Hedberg'),
(5, 'jimmyCarr.jpg', '"I have no problems with buying tampons. I am a fairly modern man. But apparently they''re not a ''proper'' present."', 'Jimmy Carr'),
(6, 'mahatmaGandhi.jpg', '"You must be the change you wish to see in the world."', 'Mahatma Gandhi'),
(7, 'shigeruMiyamoto.jpg', '"Up until now, the biggest question in society about video games has been what to do about violent games. But it''s almost like society in general considers video games to be something of a nuisance, that they want to toss into the garbage can."', 'Shigeru Miyamoto');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
