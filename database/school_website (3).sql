-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Sep 09, 2021 at 04:50 PM
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
-- Database: `school_website`
--

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
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
