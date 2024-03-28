-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Sep 23, 2021 at 08:08 AM
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
-- Table structure for table `admission`
--

DROP TABLE IF EXISTS `admission`;
CREATE TABLE IF NOT EXISTS `admission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `email` varchar(40) NOT NULL,
  `phone` varchar(10) NOT NULL,
  `address` varchar(20) NOT NULL,
  `skill` varchar(50) NOT NULL,
  `gender` varchar(50) NOT NULL,
  `ward_no` varchar(10) NOT NULL,
  `message` varchar(50) NOT NULL,
  `status` varchar(50) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admission`
--

INSERT INTO `admission` (`id`, `name`, `email`, `phone`, `address`, `skill`, `gender`, `ward_no`, `message`, `status`, `created_at`, `updated_at`) VALUES
(1, 'simran', 'sara@gmail.com', '9866011435', 'Nepal', 'checkedValue', 'checkedValue', '2', 'hello', '', '2021-09-21 00:54:39', '2021-09-21 00:54:39'),
(2, 'samm', 'sam@gmail.com', '9846025896', 'India', 'Python', 'Male', '2', 'nice', '', '2021-09-21 08:49:07', '2021-09-21 08:49:07');

-- --------------------------------------------------------

--
-- Table structure for table `blog`
--

DROP TABLE IF EXISTS `blog`;
CREATE TABLE IF NOT EXISTS `blog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tittle` varchar(20) NOT NULL,
  `text` text NOT NULL,
  `img_link` varchar(50) NOT NULL,
  `details` varchar(500) NOT NULL,
  `status` varchar(50) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `blog`
--

INSERT INTO `blog` (`id`, `tittle`, `text`, `img_link`, `details`, `status`, `created_at`, `updated_at`) VALUES
(3, 'sports', 'sports make you fit.', 'banner_41632153501.jpeg', 'sports makes you fit and you should be interested in it.', 'Active', '2021-09-21 02:08:26', '2021-09-21 02:08:26'),
(2, 'seminars', 'Seminars so you can learn more.', 'banner_41632153501.jpeg', 'wecewfweff', 'Active', '2021-09-20 07:32:27', '2021-09-20 07:32:27'),
(4, 'convocation day', 'Congratulations.', 'bg21632233572.jpg', 'The day you waited for every single day.The day you worked hard for till now.', 'Active', '2021-09-21 08:24:10', '2021-09-21 08:24:10');

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

DROP TABLE IF EXISTS `course`;
CREATE TABLE IF NOT EXISTS `course` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `text` text NOT NULL,
  `time` time NOT NULL,
  `duration` varchar(100) NOT NULL,
  `imglink` varchar(250) NOT NULL,
  `status` varchar(50) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `c_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`id`, `name`, `text`, `time`, `duration`, `imglink`, `status`, `created_at`, `updated_at`, `c_id`) VALUES
(1, 'Numerical Method', 'this is NM', '02:22:00', '2', 'download11632281941.jpg', 'Active', '2021-09-22 05:37:51', '2021-09-22 05:37:51', 1);

-- --------------------------------------------------------

--
-- Table structure for table `course_category`
--

DROP TABLE IF EXISTS `course_category`;
CREATE TABLE IF NOT EXISTS `course_category` (
  `c_id` int(11) NOT NULL AUTO_INCREMENT,
  `c_name` varchar(150) NOT NULL,
  `c_status` varchar(50) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`c_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `course_category`
--

INSERT INTO `course_category` (`c_id`, `c_name`, `c_status`, `created_at`, `updated_at`) VALUES
(1, 'BCA', 'Active', '2021-09-22 03:58:12', '2021-09-22 03:58:12');

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

DROP TABLE IF EXISTS `events`;
CREATE TABLE IF NOT EXISTS `events` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tittle` varchar(200) NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `address` varchar(250) NOT NULL,
  `img_link` text NOT NULL,
  `details` text NOT NULL,
  `status` varchar(50) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`id`, `tittle`, `date`, `time`, `address`, `img_link`, `details`, `status`, `created_at`, `updated_at`) VALUES
(3, 'college sport meet', '2021-09-23', '11:05:00', 'pokhara', '81632152265.jpg', 'this the 6 annual sports meet', 'Active', '2021-09-22 16:20:45', '2021-09-22 16:20:45');

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
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

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
(7, 'Gallery', 'h61632152307.jpg', 'jpg', 'Active', '2021-09-20 15:38:27', '2021-09-20 15:38:27'),
(8, 'hello', 'download11632281941.jpg', 'jpg', 'Active', '2021-09-22 03:39:01', '2021-09-22 03:39:01'),
(9, 'slider1', 'bg51632325296.jpg', 'jpg', 'Active', '2021-09-22 15:41:36', '2021-09-22 15:41:36'),
(10, 'slider2', 'bg41632325317.jpg', 'jpg', 'Active', '2021-09-22 15:41:57', '2021-09-22 15:41:57');

-- --------------------------------------------------------

--
-- Table structure for table `gallery`
--

DROP TABLE IF EXISTS `gallery`;
CREATE TABLE IF NOT EXISTS `gallery` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `img_link` varchar(100) NOT NULL,
  `status` varchar(50) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `g_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `gallery`
--

INSERT INTO `gallery` (`id`, `name`, `img_link`, `status`, `created_at`, `updated_at`, `g_id`) VALUES
(1, 'painting', 'h61632152307.jpg', 'Active', '2021-09-20 15:44:15', '2021-09-20 15:44:15', 2),
(4, 'classroom1', '81632152265.jpg', 'Active', '2021-09-21 06:52:33', '2021-09-21 06:52:33', 3),
(3, 'classroom', '71632149426.jpg', 'Active', '2021-09-20 15:45:31', '2021-09-20 15:45:31', 2);

-- --------------------------------------------------------

--
-- Table structure for table `gallery_category`
--

DROP TABLE IF EXISTS `gallery_category`;
CREATE TABLE IF NOT EXISTS `gallery_category` (
  `g_id` int(11) NOT NULL AUTO_INCREMENT,
  `g_name` varchar(100) NOT NULL,
  `g_status` varchar(50) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`g_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `gallery_category`
--

INSERT INTO `gallery_category` (`g_id`, `g_name`, `g_status`, `created_at`, `updated_at`) VALUES
(1, 'branding', 'Deactive', '2021-09-20 06:43:49', '2021-09-20 06:43:49'),
(2, 'photography', 'Active', '2021-09-20 06:44:12', '2021-09-20 06:44:12'),
(3, 'college', 'Active', '2021-09-21 06:50:28', '2021-09-21 06:50:28');

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

DROP TABLE IF EXISTS `message`;
CREATE TABLE IF NOT EXISTS `message` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(60) NOT NULL,
  `email` varchar(40) NOT NULL,
  `subject` varchar(50) NOT NULL,
  `details` varchar(100) NOT NULL,
  `phone` varchar(10) NOT NULL,
  `status` varchar(50) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `message`
--

INSERT INTO `message` (`id`, `name`, `email`, `subject`, `details`, `phone`, `status`, `created_at`, `updated_at`) VALUES
(1, 'sapna baniya', 'sapna123@gmail.com', 'admission', 'hello this is simran', '9811111111', '', '2021-09-20 08:47:44', '2021-09-20 08:47:44'),
(2, 'sapna', 'sapnabaniya.xdezo@gmail.com', 'admission', 'fsjhsejdgofi', '9811111', '', '2021-09-20 08:48:32', '2021-09-20 08:48:32'),
(3, 'sapna', 'sapnabaniya.xdezo@gmail.com', 'admission', 'hello', '9811111', '', '2021-09-20 08:57:58', '2021-09-20 08:57:58'),
(4, 'sapna', 'sapnabaniya.xdezo@gmail.com', 'admission', 'hello', '9811111', '', '2021-09-20 08:58:27', '2021-09-20 08:58:27');

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
CREATE TABLE IF NOT EXISTS `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tittle` varchar(250) NOT NULL,
  `text` text NOT NULL,
  `date` date NOT NULL,
  `time` varchar(20) NOT NULL,
  `location` varchar(250) NOT NULL,
  `details` text NOT NULL,
  `status` varchar(50) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `tittle`, `text`, `date`, `time`, `location`, `details`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Feed Hungry child', 'news about hungry child', '2021-09-21', '16:11', 'pokhara', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Illo unde, Accounting Technologies corporis dolorum blanditiis ullam officia car repairing natus minima fugiat repellat! Corrupti voluptatibus aperiam voluptatem. Exercitationem, placeat, cupiditate.', 'Active', '2021-09-20 07:27:07', '2021-09-20 07:27:07');

-- --------------------------------------------------------

--
-- Table structure for table `notice`
--

DROP TABLE IF EXISTS `notice`;
CREATE TABLE IF NOT EXISTS `notice` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `heading` varchar(100) NOT NULL,
  `date` datetime NOT NULL,
  `detail` text NOT NULL,
  `started` datetime NOT NULL,
  `ended` datetime NOT NULL,
  `status` varchar(50) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `notice`
--

INSERT INTO `notice` (`id`, `heading`, `date`, `detail`, `started`, `ended`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Business Conferences 2016', '2021-09-09 00:00:00', 'Lorem ipsum dolor sit amet elit. Cum veritatis sequi nulla nihil, dolor voluptatum nemo adipisci eligendi! Sed nisi perferendis, totam harum dicta.', '2021-09-23 00:00:00', '2021-09-25 00:00:00', 'Active', '2021-09-22 17:05:35', '2021-09-22 17:05:35');

-- --------------------------------------------------------

--
-- Table structure for table `result`
--

DROP TABLE IF EXISTS `result`;
CREATE TABLE IF NOT EXISTS `result` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(250) NOT NULL,
  `r_date` date NOT NULL,
  `link` varchar(250) NOT NULL,
  `status` varchar(50) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `result`
--

INSERT INTO `result` (`id`, `name`, `r_date`, `link`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Examination', '2021-09-22', 'examination link', 'Active', '2021-09-19 17:40:35', '2021-09-19 17:40:35');

-- --------------------------------------------------------

--
-- Table structure for table `siteconfig`
--

DROP TABLE IF EXISTS `siteconfig`;
CREATE TABLE IF NOT EXISTS `siteconfig` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `site_key` varchar(250) NOT NULL,
  `site_value` text NOT NULL,
  `site_name` varchar(250) NOT NULL,
  `status` varchar(50) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `img_link` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `siteconfig`
--

INSERT INTO `siteconfig` (`id`, `site_key`, `site_value`, `site_name`, `status`, `created_at`, `updated_at`, `img_link`) VALUES
(1, 'WELCOME TO LEARNPRESS', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Earum sunt ut dolorem laboriosam culpa excepturi sed distinctio eius! Ut magnam numquam libero quia vero blanditiis fugit corporis quisquam, debitis quidem laudantium deleniti.', 'about us', 'Active', '2021-09-21 18:39:55', '2021-09-21 18:39:55', ''),
(2, 'WELCOME TO LEARNPRESS', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Earum sunt ut dolorem laboriosam culpa excepturi sed distinctio eius! Ut magnam numquam libero quia vero blanditiis fugit corporis quisquam, debitis quidem laudantium deleniti.', 'about us', 'Active', '2021-09-21 18:40:54', '2021-09-21 18:40:54', ''),
(3, 'OBJECTIVES', 'Produce adept human resource in science and technology, humanities and management, and law and education for nation building', 'about us', 'Active', '2021-09-21 18:41:23', '2021-09-21 18:41:23', ''),
(4, 'OBJECTIVES', 'Produce adept human resource in science and technology, humanities and management, and law and education for nation building', 'about us', 'Active', '2021-09-21 18:41:34', '2021-09-21 18:41:34', ''),
(5, 'MISSION', 'Develop the institution into a Center of Excellence for Higher Education by enhancing teaching, learning and research activities', 'about us', 'Active', '2021-09-21 18:41:59', '2021-09-21 18:41:59', ''),
(6, 'MISSION', 'To accelerate the national development process by producing job market-driven, responsible, productive, welfare focused and committed human resources', 'about us', 'Active', '2021-09-21 18:42:16', '2021-09-21 18:42:16', ''),
(7, 'VISION', 'To be a leader in the promotion of education through quality higher education, health and community service', 'about us', 'Active', '2021-09-21 18:42:48', '2021-09-21 18:42:48', ''),
(8, 'MISSION', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Earum sunt ut dolorem laboriosam culpa excepturi sed distinctio eius! Ut magnam numquam libero quia vero blanditiis fugit corporis quisquam, debitis quidem laudantium deleniti.', 'about us', 'Active', '2021-09-21 22:08:40', '2021-09-21 22:08:40', 'bg21632233572.jpg'),
(9, 'logo', 'hello this is learn press', 'logo', 'Active', '2021-09-22 05:19:38', '2021-09-22 05:19:38', 'bg21632233572.jpg'),
(10, 'youtube', 'https://www.youtube.com/', 'youtube', 'Active', '2021-09-22 05:21:19', '2021-09-22 05:21:19', ''),
(11, 'twitter', 'https://twitter.com/', 'twitter', 'Active', '2021-09-22 05:22:16', '2021-09-22 05:22:16', ''),
(12, 'google', 'https://www.google.com/', 'google', 'Active', '2021-09-22 05:22:54', '2021-09-22 05:22:54', ''),
(13, 'welcome', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Earum sunt ut dolorem laboriosam culpa excepturi sed distinctio eius! Ut magnam numquam libero quia vero blanditiis fugit corporis quisquam, debitis quidem laudantium deleniti.', 'welcome', 'Active', '2021-09-22 15:57:09', '2021-09-22 15:57:09', 'https://www.youtube.com/watch?v=UOrEVQaSIgo'),
(14, 'progressbar', '50', 'professors', 'Active', '2021-09-22 16:06:14', '2021-09-22 16:06:14', ''),
(15, 'progressbar', '500', 'student', 'Active', '2021-09-22 16:06:35', '2021-09-22 16:06:35', ''),
(16, 'progressbar', '40', 'classrooms', 'Active', '2021-09-22 16:06:57', '2021-09-22 16:06:57', ''),
(17, 'progressbar', '5', 'class-types', 'Active', '2021-09-22 16:07:19', '2021-09-22 16:07:19', ''),
(18, 'school tour', 'Lorem ipsum dolor sit amet, volupt consectetur adipisicing elit. Rem autem voluptatem obcaecat ipsum dolor sit tetur adipisicing elit amet, consec autem atem obcaecati!', 'school tour', 'Active', '2021-09-22 16:14:07', '2021-09-22 16:14:07', 'https://www.youtube.com/watch?v=UOrEVQaSIgo'),
(19, 'aboutus', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Earum sunt ut dolorem laboriosam culpa excepturi sed distinctio eius! Ut magnam numquam libero quia vero blanditiis fugit corporis quisquam, debitis quidem laudantium deleniti.', 'Objectives', 'Active', '2021-09-22 16:23:32', '2021-09-22 16:23:32', ''),
(20, 'aboutus', 'Produce adept human resource in science and technology, humanities and management, and law and education for nation building', 'Objectives', 'Active', '2021-09-22 16:24:05', '2021-09-22 16:24:05', ''),
(21, 'missionaboutus', 'To accelerate the national development process by producing job market-driven, responsible, productive, welfare focused and committed human resources', 'Mission', 'Active', '2021-09-22 16:26:33', '2021-09-22 16:26:33', ''),
(22, 'visionaboutus', 'To be a leader in the promotion of education through quality higher education, health and community service', 'Vision', 'Active', '2021-09-22 16:35:05', '2021-09-22 16:35:05', '81632152265.jpg'),
(23, 'message from principal', 'Since its inception in 1997, the University has shown a commitment to innovation and to serving the needs of its community and nation with a vision â€œto be a leader in the promotion of education through quality higher education and community serviceâ€.', 'Message from Principal', 'Active', '2021-09-22 16:39:43', '2021-09-22 16:39:43', '11632150585.jpg'),
(24, 'message from principal', 'Within the short span of its existence, the University has achieved remarkable success and continues to forge its future with new program initiatives: a modern curriculum, research endeavors, student engagement, professional training, faculty development, international collaborations and much more.', 'Message from Principal', 'Active', '2021-09-22 16:40:12', '2021-09-22 16:40:12', ''),
(25, 'planning', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Earum sunt ut dolorem laboriosam culpa excepturi sed distinctio eius! Ut magnam numquam libero quia vero blanditiis fugit corporis quisquam, debitis quidem laudantium deleniti.', 'Introduction', 'Active', '2021-09-22 16:47:58', '2021-09-22 16:47:58', 'https://www.youtube.com/watch?v=UOrEVQaSIgo'),
(26, 'program', 'Chemestry', 'Chemestry', 'Active', '2021-09-22 16:53:04', '2021-09-22 16:53:04', '81632152265.jpg'),
(27, 'program', 'Painting', 'Painting', 'Active', '2021-09-22 16:53:41', '2021-09-22 16:53:41', 'h61632152307.jpg'),
(28, 'number', 'supporte@yourdomin.com', 'number', 'Active', '2021-09-22 17:10:13', '2021-09-22 17:10:13', ''),
(29, 'email', 'supporte@yourdomin.com', 'email', 'Active', '2021-09-22 17:10:47', '2021-09-22 17:10:47', ''),
(30, 'location', '#405, Lan Streen, Los Vegas, USA', 'location', 'Active', '2021-09-22 17:11:40', '2021-09-22 17:11:40', '');

-- --------------------------------------------------------

--
-- Table structure for table `slider`
--

DROP TABLE IF EXISTS `slider`;
CREATE TABLE IF NOT EXISTS `slider` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `header` varchar(100) NOT NULL,
  `sub_heading` varchar(250) NOT NULL,
  `text` text NOT NULL,
  `img_link` varchar(250) NOT NULL,
  `btn` varchar(20) NOT NULL,
  `btnlink` varchar(250) NOT NULL,
  `status` varchar(50) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `slider`
--

INSERT INTO `slider` (`id`, `name`, `header`, `sub_heading`, `text`, `img_link`, `btn`, `btnlink`, `status`, `created_at`, `updated_at`) VALUES
(1, 'slider1', 'Education', 'Education for everyone', 'Lorem ipsum dolor sit amet, consectetur.', '11632150585.jpg', 'View Details', 'about-aboutus.php', 'Active', '2021-09-22 17:22:36', '2021-09-22 17:22:36');

-- --------------------------------------------------------

--
-- Table structure for table `teacher`
--

DROP TABLE IF EXISTS `teacher`;
CREATE TABLE IF NOT EXISTS `teacher` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `post` varchar(100) NOT NULL,
  `imglink` varchar(250) NOT NULL,
  `details` text NOT NULL,
  `experience` text NOT NULL,
  `address` varchar(250) NOT NULL,
  `contact` varchar(10) NOT NULL,
  `status` varchar(50) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `teacher`
--

INSERT INTO `teacher` (`id`, `name`, `post`, `imglink`, `details`, `experience`, `address`, `contact`, `status`, `created_at`, `updated_at`) VALUES
(2, 'Raghav Misra', 'Principal', '21632150617.jpg', 'principal', 'bachelor', 'nayabazar', '9811111', 'Active', '2021-09-21 08:02:57', '2021-09-21 08:02:57');

-- --------------------------------------------------------

--
-- Table structure for table `testimonials`
--

DROP TABLE IF EXISTS `testimonials`;
CREATE TABLE IF NOT EXISTS `testimonials` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `heading` varchar(100) NOT NULL,
  `position` varchar(250) NOT NULL,
  `text` text NOT NULL,
  `rate` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `email` varchar(40) NOT NULL,
  `phone` varchar(10) NOT NULL,
  `password` varchar(100) NOT NULL,
  `status` varchar(50) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `phone`, `password`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Sapna baniya', 'sapna@gmail.com', '981111', '8632a3ef0e07e2a6d9e9b8e232238232', 'Active', '2021-09-21 08:25:33', '2021-09-21 08:25:33'),
(2, 'sapna', 'sapna123@gmail.com', '981111', '81dc9bdb52d04dc20036dbd8313ed055', 'Active', '2021-09-21 16:10:13', '2021-09-21 16:10:13'),
(3, 'reva', 'reva@gmail.com', '658932145', 'b9821d24f1e10bc63b2a9d0d0ef44888', 'Active', '2021-09-21 09:19:55', '2021-09-21 09:19:55'),
(4, 'reva', 'reva@gmail.com', '658932145', 'b9821d24f1e10bc63b2a9d0d0ef44888', 'Active', '2021-09-21 09:19:55', '2021-09-21 09:19:55'),
(5, 'sara', 'sara@gmail.com', '9846023835', '5bd537fc3789b5482e4936968f0fde95', 'Active', '2021-09-21 05:05:23', '2021-09-21 05:05:23');

-- --------------------------------------------------------

--
-- Table structure for table `why_choose_us`
--

DROP TABLE IF EXISTS `why_choose_us`;
CREATE TABLE IF NOT EXISTS `why_choose_us` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `heading` varchar(250) NOT NULL,
  `text` text NOT NULL,
  `status` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `why_choose_us`
--

INSERT INTO `why_choose_us` (`id`, `heading`, `text`, `status`) VALUES
(1, 'Best Teacher', 'Lorem ipsum dolor sit amet, consectetur.', 'Active'),
(2, 'Best Campus', 'Lorem ipsum dolor sit amet, consectetur.', 'Active'),
(3, 'Best Library', 'Lorem ipsum dolor sit amet, consectetur.', 'Active');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
