-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Sep 09, 2021 at 04:49 PM
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
-- Database: `myresume`
--

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
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
