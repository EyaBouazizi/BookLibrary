-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jul 05, 2024 at 01:12 PM
-- Server version: 5.7.36
-- PHP Version: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `book_library`
--

-- --------------------------------------------------------

--
-- Table structure for table `book`
--

DROP TABLE IF EXISTS `book`;
CREATE TABLE IF NOT EXISTS `book` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `author` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `published_date` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `book`
--

INSERT INTO `book` (`id`, `title`, `author`, `published_date`) VALUES
(1, 'The Prometheus', 'Buckley Theodore Alois', '1899-07-16'),
(2, 'Parmenides', 'Maguire Thomas', '1882-07-11'),
(3, 'Enneads', 'Mackenna Stephen', '1921-06-08'),
(4, 'The Tempest', 'Shakespeare William', '1896-01-28'),
(5, 'Hamlet', 'Shakespeare William', '1878-04-10'),
(6, 'Meditations', 'Descartes René', '1901-10-18'),
(7, 'Paradise Lost', 'Milton John', '1818-01-01'),
(8, 'Discourses', 'Rousseau Jean-Jacques', '1761-09-21'),
(9, 'Pride and Prejudice', 'Austen Jane', '1906-01-01'),
(10, 'Adventures of Huckleberry Finn', 'Twain Mark', '1896-01-01'),
(11, 'Faust', 'Goethe Johann Wolfgang von', '1890-10-16'),
(12, 'Origin of Species', 'Darwin Charles Hegel', '1902-12-01'),
(13, 'The New Atlantis', 'Bacon Francis', '1905-08-01'),
(14, 'On Liberty', 'Mill John Stuart', '1912-09-30'),
(15, 'Emma', 'Austen Jane', '1896-01-01'),
(16, 'The beast in the jungle', 'James Henry', '1915-02-02'),
(17, 'Life is a Dream', 'Calderón de la Barca Pedro', '1856-01-01'),
(18, 'Utopia', 'Robinson Ralph', '1922-01-01'),
(19, 'The Legend of Sleepy Hollow', 'Irving Washington', '1915-01-01'),
(20, 'Notre Dame de Paris', 'Hugo Victor', '1902-01-01');

-- --------------------------------------------------------

--
-- Table structure for table `doctrine_migration_versions`
--

DROP TABLE IF EXISTS `doctrine_migration_versions`;
CREATE TABLE IF NOT EXISTS `doctrine_migration_versions` (
  `version` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `doctrine_migration_versions`
--

INSERT INTO `doctrine_migration_versions` (`version`, `executed_at`, `execution_time`) VALUES
('DoctrineMigrations\\Version20240702170812', '2024-07-02 17:08:32', 101);

-- --------------------------------------------------------

--
-- Table structure for table `messenger_messages`
--

DROP TABLE IF EXISTS `messenger_messages`;
CREATE TABLE IF NOT EXISTS `messenger_messages` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `body` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `headers` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue_name` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `available_at` datetime NOT NULL,
  `delivered_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_75EA56E0FB7336F0` (`queue_name`),
  KEY `IDX_75EA56E0E3BD61CE` (`available_at`),
  KEY `IDX_75EA56E016BA31DB` (`delivered_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
