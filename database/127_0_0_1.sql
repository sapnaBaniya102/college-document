-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Sep 09, 2021 at 04:47 PM
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
-- Database: `laravel`
--
CREATE DATABASE IF NOT EXISTS `laravel` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `laravel`;

-- --------------------------------------------------------

--
-- Table structure for table `firsts`
--

DROP TABLE IF EXISTS `firsts`;
CREATE TABLE IF NOT EXISTS `firsts` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `firsts`
--

INSERT INTO `firsts` (`id`, `created_at`, `updated_at`, `name`) VALUES
(1, NULL, NULL, 'contact'),
(2, NULL, NULL, 'about');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(3, '2014_10_12_100000_create_password_resets_table', 1),
(4, '2021_06_24_164237_create_firsts_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
--
-- Database: `myresume`
--
CREATE DATABASE IF NOT EXISTS `myresume` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `myresume`;

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

DROP TABLE IF EXISTS `contact`;
CREATE TABLE IF NOT EXISTS `contact` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `email` varchar(150) NOT NULL,
  `message` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `subject` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `name`, `email`, `message`, `created_at`, `updated_at`, `subject`) VALUES
(1, 'sapna baniya', 'sapna@gmail.com', 'This is my resume', '2021-06-14 13:58:28', '2021-06-14 13:58:28', 'Resume');

-- --------------------------------------------------------

--
-- Table structure for table `image`
--

DROP TABLE IF EXISTS `image`;
CREATE TABLE IF NOT EXISTS `image` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `imglink` varchar(250) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `name` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `image`
--

INSERT INTO `image` (`id`, `imglink`, `created_at`, `updated_at`, `name`) VALUES
(1, 'photo-1547425260-76bcadfb4f2c1623676451.jpg', '2021-06-14 13:14:11', '2021-06-14 13:14:11', 'Mahesh Sharma'),
(2, 'man-388104_12801623676646.jpg', '2021-06-14 13:17:26', '2021-06-14 13:17:26', 'Jordon Wilson'),
(3, 'images(1)1623728533.jpg', '2021-06-15 03:42:13', '2021-06-15 03:42:13', 'Lila Sharma'),
(4, 'photo-1438761681033-6461ffad8d801623732698.jpg', '2021-06-15 04:51:38', '2021-06-15 04:51:38', 'personal Image');

-- --------------------------------------------------------

--
-- Table structure for table `resume`
--

DROP TABLE IF EXISTS `resume`;
CREATE TABLE IF NOT EXISTS `resume` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(250) NOT NULL,
  `content` text NOT NULL,
  `order_id` int(11) NOT NULL,
  `status` varchar(30) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `resume`
--

INSERT INTO `resume` (`id`, `title`, `content`, `order_id`, `status`, `updated_at`, `created_at`, `name`) VALUES
(1, 'Bachelor in Computer Application', ' I have achieved my bachelor Degree in Computer Application from lA Grandee International College.', 1, 'active', '2021-06-14 12:31:52', '2021-06-14 12:31:52', 'Education'),
(2, 'Professional Experience', 'Upto now i dont have any professional Experience. Recently I am taking training in XDezo Technology of Full Stack Development Course. ', 2, 'active', '2021-06-14 12:34:42', '2021-06-14 12:34:42', 'Professional Experience');

-- --------------------------------------------------------

--
-- Table structure for table `site-config`
--

DROP TABLE IF EXISTS `site-config`;
CREATE TABLE IF NOT EXISTS `site-config` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `site_key` varchar(150) NOT NULL,
  `site_value` varchar(250) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `site-config`
--

INSERT INTO `site-config` (`id`, `name`, `site_key`, `site_value`, `created_at`, `updated_at`, `status`) VALUES
(1, 'address', 'address', 'pokhara, nepal', '2021-06-14 13:41:34', '2021-06-14 13:41:34', 'active'),
(2, 'Email', 'email', 'sapna@gmail.com', '2021-06-14 13:42:05', '2021-06-14 13:42:05', 'active'),
(3, 'phone number', 'phone', '9812345678', '2021-06-14 13:42:20', '2021-06-14 13:42:20', 'active'),
(4, 'hello', 'hello', 'hello', '2021-06-14 14:06:11', '2021-06-14 14:06:11', 'active'),
(5, 'About', 'about', 'I am  a energetic, self driven and enthugiastic person.', '2021-06-15 03:53:21', '2021-06-15 03:53:21', 'active'),
(6, 'address', 'address', 'dskvfdsw', '2021-06-15 03:54:11', '2021-06-15 03:54:11', 'active'),
(7, 'djckfj', 'shadcsa', 'sabcfs', '2021-06-15 04:02:54', '2021-06-15 04:02:54', 'active');

-- --------------------------------------------------------

--
-- Table structure for table `skills`
--

DROP TABLE IF EXISTS `skills`;
CREATE TABLE IF NOT EXISTS `skills` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(250) NOT NULL,
  `percent` int(11) NOT NULL,
  `status` varchar(30) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `skills`
--

INSERT INTO `skills` (`id`, `title`, `percent`, `status`, `created_at`, `updated_at`) VALUES
(1, 'HTML', 100, 'active', '2021-06-14 12:39:41', '2021-06-14 12:39:41'),
(2, 'CSS', 100, 'active', '2021-06-14 12:39:50', '2021-06-14 12:39:50'),
(3, 'PHP', 70, 'active', '2021-06-14 12:39:59', '2021-06-14 12:39:59'),
(4, 'Javascript', 70, 'active', '2021-06-14 12:40:13', '2021-06-14 12:40:13');

-- --------------------------------------------------------

--
-- Table structure for table `testimonials`
--

DROP TABLE IF EXISTS `testimonials`;
CREATE TABLE IF NOT EXISTS `testimonials` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `post` varchar(150) NOT NULL,
  `content` text NOT NULL,
  `status` varchar(30) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `img` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `testimonials`
--

INSERT INTO `testimonials` (`id`, `name`, `post`, `content`, `status`, `updated_at`, `created_at`, `img`) VALUES
(1, 'Mahesh Sharma', 'Senior Lecturer', 'Sapna Baniya has been a intelligent school of our college. She has great talent in terms of coding and designing. ', 'active', '2021-06-14 12:36:44', '2021-06-14 12:36:44', 'man-388104_12801623676646.jpg'),
(2, 'Jordon  Wilson', 'Programmer', 'From our whole team sapna has a greater potential for software development. So I recommend to consider Sapna for your company.', 'active', '2021-06-14 12:39:22', '2021-06-14 12:39:22', 'photo-1547425260-76bcadfb4f2c1623676451.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `email` varchar(40) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `birth_date` date NOT NULL,
  `address` varchar(100) NOT NULL,
  `education` varchar(60) NOT NULL,
  `freelancer` varchar(10) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `username` varchar(50) NOT NULL,
  `password` varchar(250) NOT NULL,
  `img` varchar(250) NOT NULL,
  `otp` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `email`, `phone`, `birth_date`, `address`, `education`, `freelancer`, `created_at`, `updated_at`, `username`, `password`, `img`, `otp`) VALUES
(1, 'Sapna Baniya', 'sapnabaniya.xdezo@gmail.com', '9827190713', '2000-09-16', 'Ganestole,Pokhara', 'Bachelor Degree', 'no', '2021-06-14 06:50:54', '2021-06-14 06:50:54', 'sapnabaniya', '907175e69298b3b6ce23e929159a7728', 'photo-1438761681033-6461ffad8d801623732698.jpg', 748566);
--
-- Database: `online_shopping`
--
CREATE DATABASE IF NOT EXISTS `online_shopping` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `online_shopping`;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(40) NOT NULL,
  `email` varchar(40) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
--
-- Database: `postbook`
--
CREATE DATABASE IF NOT EXISTS `postbook` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `postbook`;

-- --------------------------------------------------------

--
-- Table structure for table `post`
--

DROP TABLE IF EXISTS `post`;
CREATE TABLE IF NOT EXISTS `post` (
  `post_id` int(11) NOT NULL AUTO_INCREMENT,
  `postup` varchar(100) NOT NULL,
  `user_id` int(11) NOT NULL,
  `posted_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`post_id`),
  KEY `test` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `post`
--

INSERT INTO `post` (`post_id`, `postup`, `user_id`, `posted_at`) VALUES
(1, 'this is me , simran', 1, '2021-05-20 11:34:45'),
(3, 'todys my day was very nice. I enjoyed my day.', 1, '2021-05-20 15:47:18'),
(4, 'This is my first posting sytem', 1, '2021-05-21 06:35:29'),
(5, 'hello', 2, '2021-05-22 09:25:41'),
(6, 'This is lock down time', 2, '2021-05-23 07:26:21');

-- --------------------------------------------------------

--
-- Table structure for table `signup`
--

DROP TABLE IF EXISTS `signup`;
CREATE TABLE IF NOT EXISTS `signup` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `email` varchar(30) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `date_of_birth` date NOT NULL,
  `password` varchar(50) NOT NULL,
  `register_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `image` varchar(225) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `signup`
--

INSERT INTO `signup` (`user_id`, `name`, `email`, `phone`, `date_of_birth`, `password`, `register_date`, `image`) VALUES
(1, 'sita baniya', 'sapnabaniya.xdezo@gmail.com', '9827190713', '2021-05-05', '907175e69298b3b6ce23e929159a7728', '2021-05-20 05:58:26', ''),
(2, 'sapna baniya', 'skyrootmam123@gmail.com', '9816174317', '2000-09-16', 'af4e5834b08749e4351722895ad14f5a', '2021-05-22 03:52:51', 'image/download1.jpg');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `post`
--
ALTER TABLE `post`
  ADD CONSTRAINT `test` FOREIGN KEY (`user_id`) REFERENCES `signup` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE;
--
-- Database: `school_website`
--
CREATE DATABASE IF NOT EXISTS `school_website` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `school_website`;

-- --------------------------------------------------------

--
-- Table structure for table `about`
--

DROP TABLE IF EXISTS `about`;
CREATE TABLE IF NOT EXISTS `about` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` text NOT NULL,
  `img` varchar(255) NOT NULL,
  `status` varchar(30) NOT NULL,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `announcement`
--

DROP TABLE IF EXISTS `announcement`;
CREATE TABLE IF NOT EXISTS `announcement` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `details` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `announcement`
--

INSERT INTO `announcement` (`id`, `details`, `created_at`, `updated_at`, `status`) VALUES
(1, 'New registration for students is open now.', '2021-06-13 12:49:27', '2021-06-13 12:49:27', 'active'),
(2, 'We are providing a huge discount on the registration fee now.', '2021-06-13 12:50:12', '2021-06-13 12:50:12', 'deactive');

-- --------------------------------------------------------

--
-- Table structure for table `awards`
--

DROP TABLE IF EXISTS `awards`;
CREATE TABLE IF NOT EXISTS `awards` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` varchar(300) NOT NULL,
  `title` varchar(255) NOT NULL,
  `img` varchar(255) NOT NULL,
  `status` varchar(30) NOT NULL,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `awards`
--

INSERT INTO `awards` (`id`, `content`, `title`, `img`, `status`, `updated_at`, `created_at`) VALUES
(1, 'We had completed our badminton tournament and today we are going to announce the winner of the tournament.', 'Badminton Champion', 'slider11623384032.jpg', 'active', '2021-06-13 17:15:31', '2021-06-13 17:15:31'),
(2, 'We had completed our badminton tournament and today we are going to announce the winner of the tournament.', 'College Topper', 'slider31623384056.jpg', 'active', '2021-06-13 17:53:53', '2021-06-13 17:53:53');

-- --------------------------------------------------------

--
-- Table structure for table `choose_us_blog`
--

DROP TABLE IF EXISTS `choose_us_blog`;
CREATE TABLE IF NOT EXISTS `choose_us_blog` (
  `c_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(30) NOT NULL,
  `details` varchar(200) NOT NULL,
  `name` varchar(100) NOT NULL,
  `status` varchar(30) NOT NULL,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`c_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `choose_us_blog`
--

INSERT INTO `choose_us_blog` (`c_id`, `title`, `details`, `name`, `status`, `updated_at`, `created_at`) VALUES
(2, 'Good Facility', 'Our school provides proper facility of all goods.', 'Good Facilty', 'active', '2021-06-04 12:18:41', '2021-06-04 12:18:41');

-- --------------------------------------------------------

--
-- Table structure for table `event`
--

DROP TABLE IF EXISTS `event`;
CREATE TABLE IF NOT EXISTS `event` (
  `e_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) NOT NULL,
  `details` text NOT NULL,
  `status` varchar(20) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `e_date` date NOT NULL,
  PRIMARY KEY (`e_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `event`
--

INSERT INTO `event` (`e_id`, `title`, `details`, `status`, `created_at`, `updated_at`, `e_date`) VALUES
(1, 'corona Donation', 'jsancknsancf', 'active', '2021-06-03 13:00:05', '2021-06-03 13:00:05', '2021-06-11'),
(2, 'Board Exam Notice', 'We will conduct our board exam from 5 june,2021.', 'active', '2021-06-03 13:02:05', '2021-06-03 13:02:05', '2021-06-05'),
(3, 'Parents Day', 'This is to noticy every student that we will hold our parents day on 10th of june.', 'active', '2021-06-08 14:51:20', '2021-06-08 14:51:20', '2021-06-10');

-- --------------------------------------------------------

--
-- Table structure for table `filemanager`
--

DROP TABLE IF EXISTS `filemanager`;
CREATE TABLE IF NOT EXISTS `filemanager` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `file_link` varchar(255) NOT NULL,
  `status` varchar(30) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `files`
--

DROP TABLE IF EXISTS `files`;
CREATE TABLE IF NOT EXISTS `files` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(250) NOT NULL,
  `filelink` varchar(250) NOT NULL,
  `status` varchar(10) NOT NULL DEFAULT 'active',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `files`
--

INSERT INTO `files` (`id`, `name`, `filelink`, `status`) VALUES
(1, 'image', 'download1622969101.jpg', 'active'),
(2, 'slider1', 'slider11623384032.jpg', 'active'),
(3, 'slider3', 'slider31623384056.jpg', 'active');

-- --------------------------------------------------------

--
-- Table structure for table `gallery`
--

DROP TABLE IF EXISTS `gallery`;
CREATE TABLE IF NOT EXISTS `gallery` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `g_id` int(11) NOT NULL,
  `img` varchar(255) NOT NULL,
  `status` varchar(30) NOT NULL,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gallery`
--

INSERT INTO `gallery` (`id`, `name`, `g_id`, `img`, `status`, `updated_at`, `created_at`) VALUES
(3, 'download', 1, 'download1623249099.jpg', 'active', '2021-06-09 20:16:39', '2021-06-09 20:16:39');

-- --------------------------------------------------------

--
-- Table structure for table `gallery_category`
--

DROP TABLE IF EXISTS `gallery_category`;
CREATE TABLE IF NOT EXISTS `gallery_category` (
  `g_id` int(11) NOT NULL AUTO_INCREMENT,
  `g_name` varchar(200) NOT NULL,
  `status` varchar(30) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`g_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gallery_category`
--

INSERT INTO `gallery_category` (`g_id`, `g_name`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Event', 'active', '2021-06-04 12:54:44', '2021-06-04 12:54:44'),
(2, 'Award', 'active', '2021-06-04 12:56:01', '2021-06-04 12:56:01'),
(3, 'Sports', 'active', '2021-06-11 14:11:54', '2021-06-11 14:11:54'),
(4, 'classroom', 'active', '2021-06-11 14:12:07', '2021-06-11 14:12:07');

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

DROP TABLE IF EXISTS `message`;
CREATE TABLE IF NOT EXISTS `message` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(40) NOT NULL,
  `email` varchar(40) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `message` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `message`
--

INSERT INTO `message` (`id`, `name`, `email`, `phone`, `message`) VALUES
(1, 'sapna baniya', 'sapna@gmail.com', '9827190713', 'I want to get admit in this school.');

-- --------------------------------------------------------

--
-- Table structure for table `site`
--

DROP TABLE IF EXISTS `site`;
CREATE TABLE IF NOT EXISTS `site` (
  `s_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `site_key` varchar(200) NOT NULL,
  `site_value` text NOT NULL,
  `status` varchar(30) NOT NULL,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`s_id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `site`
--

INSERT INTO `site` (`s_id`, `name`, `site_key`, `site_value`, `status`, `updated_at`, `created_at`) VALUES
(2, 'phone number', 'phone_number', '9812345678', 'active', '2021-06-13 18:43:07', '2021-06-13 18:43:07'),
(3, 'Email', 'email', 'sapna@gmail.com', 'active', '2021-06-13 18:43:37', '2021-06-13 18:43:37'),
(4, 'address', 'address', 'pokhara, nepal', 'active', '2021-06-13 18:44:10', '2021-06-13 18:44:10'),
(5, 'about', 'about', 'Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC.', 'active', '2021-06-13 18:45:05', '2021-06-13 18:45:05');

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

DROP TABLE IF EXISTS `sliders`;
CREATE TABLE IF NOT EXISTS `sliders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `title` varchar(255) NOT NULL,
  `details` text NOT NULL,
  `btn_text` varchar(50) NOT NULL,
  `btn_link` varchar(255) NOT NULL,
  `status` varchar(30) NOT NULL,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `image` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `name`, `title`, `details`, `btn_text`, `btn_link`, `status`, `updated_at`, `created_at`, `image`) VALUES
(3, 'slider1', 'Macchapuchhre  Higher Secondary School', 'Education is what remains after one has forgotten what one has learned in school.', 'Apply Now', 'apply.php', 'active', '2021-06-11 10:39:20', '2021-06-11 10:39:20', 'slider11623384032.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `phone` varchar(30) NOT NULL,
  `password` varchar(255) NOT NULL,
  `status` varchar(20) NOT NULL DEFAULT 'active',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `username` varchar(30) NOT NULL,
  `login` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `email`, `phone`, `password`, `status`, `created_at`, `updated_at`, `username`, `login`) VALUES
(2, 'Astha Shrestha', 'astha@gmail.com', '9821240924', '91bbc32e8590ecc8765d88330bea92b6', 'active', '2021-06-04 11:58:27', '2021-06-04 11:58:27', 'astha123', 1);
--
-- Database: `tms`
--
CREATE DATABASE IF NOT EXISTS `tms` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `tms`;

-- --------------------------------------------------------

--
-- Table structure for table `task`
--

DROP TABLE IF EXISTS `task`;
CREATE TABLE IF NOT EXISTS `task` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Title` varchar(60) NOT NULL,
  `Priority` varchar(30) NOT NULL,
  `Details` varchar(50) NOT NULL,
  `Deadline` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `task`
--

INSERT INTO `task` (`id`, `Title`, `Priority`, `Details`, `Deadline`) VALUES
(4, 'homework', 'high', 'notes on vb.net', '2021-05-14');
--
-- Database: `webclass`
--
CREATE DATABASE IF NOT EXISTS `webclass` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `webclass`;

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

DROP TABLE IF EXISTS `student`;
CREATE TABLE IF NOT EXISTS `student` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(40) NOT NULL,
  `address` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`id`, `name`, `address`, `email`) VALUES
(1, 'sapna', 'ganestole', 'sapnabaniya.xdezo@gmail.com'),
(2, 'sapna', 'ganestole', 'sapnabaniya.xdezo@gmail.com'),
(3, 'sapna', 'ganestole', 'sapnabaniya.xdezo@gmail.com'),
(4, 'lucky shrivastav', 'palikachowk', 'skjdejwwe'),
(5, 'lucky shrivastav', 'palikachowk', 'gfdeh@.com'),
(6, '', '', ''),
(7, 'sahil', 'ganestole', 'sahil@gmail.com'),
(8, '', '', ''),
(9, 'mansy', 'palikachowk', 'mansy@gmail.com'),
(10, '', '', '');
--
-- Database: `xd-social`
--
CREATE DATABASE IF NOT EXISTS `xd-social` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `xd-social`;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
CREATE TABLE IF NOT EXISTS `posts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `details` varchar(250) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(100) NOT NULL,
  `created-at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated-at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `name`, `email`, `username`, `password`, `created-at`, `updated-at`) VALUES
(1, 'sapna baniya', 'skyrootmam123@gmail.com', 'sapnabaniya', '81dc9bdb52d04dc20036dbd8313ed055', '2021-05-27 06:40:23', '2021-05-27 06:40:23');
--
-- Database: `xd_tms`
--
CREATE DATABASE IF NOT EXISTS `xd_tms` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `xd_tms`;

-- --------------------------------------------------------

--
-- Table structure for table `tasks`
--

DROP TABLE IF EXISTS `tasks`;
CREATE TABLE IF NOT EXISTS `tasks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `priority` varchar(15) NOT NULL,
  `details` text NOT NULL,
  `deadline` date NOT NULL,
  `status` varchar(10) NOT NULL DEFAULT 'New',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tasks`
--

INSERT INTO `tasks` (`id`, `title`, `priority`, `details`, `deadline`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Autem nostrum labore', 'High', 'Sint dolor inventore', '1972-02-21', 'New', '2021-05-14 02:41:10', '2021-05-14 02:41:10'),
(22, 'Eum est nihil omnis', 'Low', 'Anim architecto nihi', '2015-10-28', 'New', '2021-05-14 03:28:12', '2021-05-14 03:28:12'),
(23, 'Culpa tenetur eu ma', 'High', 'Voluptatem Earum es', '2007-05-09', 'New', '2021-05-14 03:29:08', '2021-05-14 03:29:08'),
(24, 'Culpa tenetur eu ma', 'High', 'Voluptatem Earum es', '2007-05-09', 'New', '2021-05-14 03:29:19', '2021-05-14 03:29:19'),
(25, 'Culpa tenetur eu ma', 'High', 'Voluptatem Earum es', '2007-05-09', 'New', '2021-05-14 03:29:43', '2021-05-14 03:29:43'),
(26, 'Culpa tenetur eu ma', 'High', 'Voluptatem Earum es', '2007-05-09', 'New', '2021-05-14 03:30:04', '2021-05-14 03:30:04'),
(27, 'Sed anim ea obcaecat', 'Low', 'Ipsa distinctio Al', '1995-12-01', 'New', '2021-05-14 03:30:09', '2021-05-14 03:30:09'),
(28, 'Sed anim ea obcaecat', 'Low', 'Ipsa distinctio Al', '1995-12-01', 'New', '2021-05-14 03:31:21', '2021-05-14 03:31:21'),
(29, 'Molestiae cupidatat ', 'Low', 'Nostrum voluptatum a', '2013-07-24', 'New', '2021-05-14 03:31:29', '2021-05-14 03:31:29'),
(30, 'reading time.', 'Progress', 'I have to play video game.', '2021-05-14', 'Done', '2021-05-14 03:32:53', '2021-05-14 03:32:53');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(60) NOT NULL,
  `status` varchar(10) NOT NULL DEFAULT 'Active',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `status`, `created_at`, `updated_at`) VALUES
(4, 'sapna', 'sapnabaniya.xdezo@gmail.com', 'sapna', 'Active', '2021-05-16 06:41:59', '2021-05-16 06:41:59'),
(5, 'sapna', 'gfdeh@gmail.com', '1234', 'Active', '2021-05-17 07:39:34', '2021-05-17 07:39:34'),
(6, 'sapna', 'sahil@gmail.com', '907175e69298b3b6ce23e929159a7728', 'Active', '2021-05-17 07:42:41', '2021-05-17 07:42:41');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
