-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Oct 13, 2021 at 04:28 PM
-- Server version: 5.7.31
-- PHP Version: 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `learnplus`
--

-- --------------------------------------------------------

--
-- Table structure for table `files`
--

DROP TABLE IF EXISTS `files`;
CREATE TABLE IF NOT EXISTS `files` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `extension` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` text COLLATE utf8mb4_unicode_ci,
  `status` int(11) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `files`
--

INSERT INTO `files` (`id`, `title`, `file_link`, `extension`, `details`, `status`, `created_at`, `updated_at`) VALUES
(1, 'welcome', 'welcome_1633858574.jpg', 'jpg', NULL, 1, '2021-10-10 03:51:14', '2021-10-10 03:51:14'),
(2, 'slider', 'slider_1633859257.jpg', 'jpg', NULL, 1, '2021-10-10 04:02:37', '2021-10-10 04:02:37'),
(3, 'teacher', 'teacher_1633867556.png', 'png', NULL, 1, '2021-10-10 06:20:56', '2021-10-10 06:20:56'),
(4, 'teacher', 'teacher_1633867961.png', 'png', NULL, 1, '2021-10-10 06:27:41', '2021-10-10 06:27:41'),
(5, 'gallery', 'gallery_1633869216.jpg', 'jpg', NULL, 1, '2021-10-10 06:48:37', '2021-10-10 06:48:37'),
(6, 'gallery', 'gallery_1633869243.jpg', 'jpg', NULL, 1, '2021-10-10 06:49:03', '2021-10-10 06:49:03'),
(7, 'gallery', 'gallery_1633869267.jpg', 'jpg', NULL, 1, '2021-10-10 06:49:27', '2021-10-10 06:49:27'),
(8, 'event', 'event_1633880142.png', 'png', NULL, 1, '2021-10-10 09:50:42', '2021-10-10 09:50:42'),
(9, 'event', 'event_1633880164.png', 'png', NULL, 1, '2021-10-10 09:51:04', '2021-10-10 09:51:04'),
(10, 'test', 'test_1634141352.jpg', 'jpg', NULL, 1, '2021-10-13 10:24:12', '2021-10-13 10:24:12'),
(11, 'test', 'test_1634142318.jpg', 'jpg', NULL, 1, '2021-10-13 10:40:18', '2021-10-13 10:40:18');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
