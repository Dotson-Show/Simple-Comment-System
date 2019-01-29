-- phpMyAdmin SQL Dump
-- version 3.3.9
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jan 29, 2019 at 01:59 AM
-- Server version: 5.1.53
-- PHP Version: 5.3.4

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `scs`
--
CREATE DATABASE `scs` DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
USE `scs`;

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE IF NOT EXISTS `comments` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET latin1 NOT NULL,
  `content` mediumtext CHARACTER SET latin1 NOT NULL,
  `date` varchar(255) CHARACTER SET latin1 NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=27 ;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `name`, `content`, `date`) VALUES
(3, 'Jame Horo', 'I am here to make a comment', 'Dec 4, 2018'),
(4, 'Peter Bruce', 'This is another good comment from heart', 'Dec 4, 2018'),
(5, 'James Forte', 'Am so glad my code is working fine this time. Thanks to God', 'Dec 4, 2018'),
(6, 'Elvins Kettle', 'I am so glad my comment section is working perfectly well with ajax & jquery & mysql', 'Dec 4, 2018'),
(7, 'Bruce Lee', 'I am jumping right now', 'Dec 4, 2018');