-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Sep 20, 2021 at 04:43 PM
-- Server version: 5.7.31
-- PHP Version: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `learnpress`
--

-- --------------------------------------------------------

--
-- Table structure for table `files`
--

DROP TABLE IF EXISTS `files`;
CREATE TABLE IF NOT EXISTS `files` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `img_name` varchar(20) NOT NULL,
  `img_link` varchar(50) NOT NULL,
  `extension` varchar(10) NOT NULL,
  `status` varchar(50) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `files`
--

INSERT INTO `files` (`id`, `img_name`, `img_link`, `extension`, `status`, `created_at`, `updated_at`) VALUES
(1, '7', '71632149426.jpg', 'jpg', 'Active', '2021-09-20 14:50:26', '2021-09-20 14:50:26'),
(2, '1', '11632150585.jpg', 'jpg', 'Active', '2021-09-20 15:09:45', '2021-09-20 15:09:45'),
(3, '2', '21632150617.jpg', 'jpg', 'Active', '2021-09-20 15:10:17', '2021-09-20 15:10:17'),
(4, 'Teacher', '31632150683.jpg', 'jpg', 'Active', '2021-09-20 15:11:23', '2021-09-20 15:11:23'),
(5, 'Gallery', '81632152265.jpg', 'jpg', 'Active', '2021-09-20 15:37:45', '2021-09-20 15:37:45'),
(6, 'Gallery', 'gallery-sm61632152290.jpg', 'jpg', 'Active', '2021-09-20 15:38:10', '2021-09-20 15:38:10'),
(7, 'Gallery', 'h61632152307.jpg', 'jpg', 'Active', '2021-09-20 15:38:27', '2021-09-20 15:38:27');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
