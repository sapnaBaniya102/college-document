-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Oct 08, 2021 at 03:48 PM
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
-- Database: `laravelschool`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

DROP TABLE IF EXISTS `admins`;
CREATE TABLE IF NOT EXISTS `admins` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `admins_user`
--

DROP TABLE IF EXISTS `admins_user`;
CREATE TABLE IF NOT EXISTS `admins_user` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins_user`
--

INSERT INTO `admins_user` (`id`, `name`, `email`, `password`, `created_at`, `updated_at`) VALUES
(1, 'Sapna Bnaiya', 'sapna@gmail.com', '$2y$10$WIau.kbbryisyUP7re0kFurHcY/Nfv95YAQLDVgEcn8rnz67hmGza', '2021-10-07 12:48:15', '2021-10-07 12:48:15'),
(2, 'sapnabaniya', 'sapna123@gmail.com', '$2y$10$Ava9eNSPCuHLDfRB9PQSnuxMr5qefXX./Pv7qSodiH3VEDEtgHD86', '2021-10-07 14:38:32', '2021-10-07 14:38:32'),
(3, 'astha shrestha', 'astha@gmail.com', '$2y$10$IWa6312Cs4xdrceiCNeeY.82q0wf1LSuC2B/Vg7VN1KOYsrCOvmGW', '2021-10-08 06:11:41', '2021-10-08 06:11:41');

-- --------------------------------------------------------

--
-- Table structure for table `admissions`
--

DROP TABLE IF EXISTS `admissions`;
CREATE TABLE IF NOT EXISTS `admissions` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `skill` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `ward_no` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admissions`
--

INSERT INTO `admissions` (`id`, `name`, `email`, `phone`, `address`, `skill`, `gender`, `ward_no`, `message`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Sapna Bnaiya', 'sapna@gmail.com', '9827190713', 'nayabazar', 'Html/css', 'Female', '2', 'This is my application.', 'Active', '2021-10-05 01:43:25', '2021-10-05 01:43:25');

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

DROP TABLE IF EXISTS `blogs`;
CREATE TABLE IF NOT EXISTS `blogs` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `tittle` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `text` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `img_link` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `details` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `coursecats`
--

DROP TABLE IF EXISTS `coursecats`;
CREATE TABLE IF NOT EXISTS `coursecats` (
  `c_id` int(11) NOT NULL AUTO_INCREMENT,
  `c_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `c_status` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`c_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `coursecats`
--

INSERT INTO `coursecats` (`c_id`, `c_name`, `c_status`, `created_at`, `updated_at`) VALUES
(1, 'BCA', 'Active', '2021-10-04 01:08:12', '2021-10-04 01:08:12');

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

DROP TABLE IF EXISTS `courses`;
CREATE TABLE IF NOT EXISTS `courses` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `text` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `time` time NOT NULL,
  `duration` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `imglink` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `c_id` int(11) NOT NULL,
  `status` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`id`, `name`, `text`, `time`, `duration`, `imglink`, `c_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Numerical Method', 'this is NM', '07:03:00', '2', 'download11632281941.jpg', 1, 'Active', '2021-10-04 01:33:21', '2021-10-04 01:33:21');

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

DROP TABLE IF EXISTS `events`;
CREATE TABLE IF NOT EXISTS `events` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `tittle` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `time` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `img_link` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `details` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`id`, `tittle`, `date`, `time`, `address`, `img_link`, `details`, `status`, `created_at`, `updated_at`) VALUES
(1, 'college sport meet', '2021-09-30', '11:12', 'pokhara', '11632150585.jpg', 'this the 6 annual sports meet', 'Active', '2021-09-28 23:37:22', '2021-09-28 23:37:22');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uuid` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `files`
--

DROP TABLE IF EXISTS `files`;
CREATE TABLE IF NOT EXISTS `files` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_link` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `extension` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` text COLLATE utf8mb4_unicode_ci,
  `status` int(11) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `files`
--

INSERT INTO `files` (`id`, `title`, `file_link`, `extension`, `details`, `status`, `created_at`, `updated_at`) VALUES
(1, 'slider', 'slider_1633591552.jpg', 'jpg', NULL, 1, '2021-10-07 01:40:52', '2021-10-07 01:40:52');

-- --------------------------------------------------------

--
-- Table structure for table `galleries`
--

DROP TABLE IF EXISTS `galleries`;
CREATE TABLE IF NOT EXISTS `galleries` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `img_link` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `g_id` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `galleries`
--

INSERT INTO `galleries` (`id`, `name`, `img_link`, `status`, `g_id`, `created_at`, `updated_at`) VALUES
(1, 'gallery1', 'bg41632325317.jpg', 'Active', '1', '2021-09-29 09:27:54', '2021-09-29 09:27:54'),
(2, 'gallery1', 'bg41632325317.jpg', 'Active', '1', '2021-09-29 09:29:07', '2021-09-29 09:29:07'),
(3, 'gallery2', 'bg41632325317.jpg', 'Active', '1', '2021-09-29 09:30:09', '2021-09-29 09:30:09'),
(4, 'gallery2', 'bg41632325317.jpg', 'Active', '1', '2021-09-29 09:55:08', '2021-09-29 09:55:08');

-- --------------------------------------------------------

--
-- Table structure for table `gallery_categories`
--

DROP TABLE IF EXISTS `gallery_categories`;
CREATE TABLE IF NOT EXISTS `gallery_categories` (
  `g_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `g_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `g_status` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`g_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `gallery_categories`
--

INSERT INTO `gallery_categories` (`g_id`, `g_name`, `g_status`, `created_at`, `updated_at`) VALUES
(1, 'Photographic', 'Active', '2021-09-29 09:20:56', '2021-09-29 09:20:56');

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

DROP TABLE IF EXISTS `messages`;
CREATE TABLE IF NOT EXISTS `messages` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `details` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `messages_email_unique` (`email`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `name`, `email`, `subject`, `details`, `contact`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Sapna Bnaiya', 'sapna@gmail.com', 'Computer Science', 'xcbgsedgre', '9811111', NULL, '2021-10-03 10:37:49', '2021-10-03 10:37:49');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2021_09_24_143648_create_galleries_table', 2),
(5, '2021_09_24_143725_create_gallery_categories_table', 3),
(6, '2021_09_24_143804_create_messages_table', 4),
(7, '2021_09_24_143821_create_news_table', 5),
(8, '2021_09_24_143854_create_results_table', 6),
(9, '2021_09_24_143915_create_teachers_table', 7),
(10, '2021_09_28_080637_create_courses_table', 8),
(11, '2021_09_28_081128_create_coursecats_table', 9),
(12, '2021_09_28_081324_create_sliders_table', 10),
(13, '2021_09_28_081410_create_notices_table', 11),
(14, '2021_09_28_081509_create_siteconfigs_table', 12),
(15, '2021_09_28_081840_create_blogs_table', 13),
(16, '2021_09_28_081941_create_files_table', 14),
(17, '2021_09_28_082104_create_files_table', 15),
(18, '2021_09_28_082923_create_admissions_table', 16),
(19, '2021_09_28_083045_create_whychooseuses_table', 17),
(20, '2021_09_28_083543_create_events_table', 18),
(21, '2021_10_04_075626_create_files_table', 19),
(22, '2021_10_07_174337_admin_user_table', 20);

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
CREATE TABLE IF NOT EXISTS `news` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `text` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `location` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `details` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `imglink` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `title`, `text`, `date`, `time`, `location`, `details`, `status`, `created_at`, `updated_at`, `imglink`) VALUES
(1, 'Feed Hungry child', 'Feed Hungry child', '2021-09-29', '11:07:00', 'pokhara', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Illo unde, Accounting Technologies corporis dolorum blanditiis ullam officia car repairing natus minima fugiat repellat! Corrupti voluptatibus aperiam voluptatem. Exercitationem, placeat, cupiditate.', 'Active', '2021-09-28 11:38:02', '2021-10-05 02:26:43', '81632152265.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `notices`
--

DROP TABLE IF EXISTS `notices`;
CREATE TABLE IF NOT EXISTS `notices` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `heading` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` date NOT NULL,
  `detail` text COLLATE utf8mb4_unicode_ci,
  `started` date NOT NULL,
  `ended` date NOT NULL,
  `status` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notices`
--

INSERT INTO `notices` (`id`, `heading`, `date`, `detail`, `started`, `ended`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Business Conferences 2016', '2021-09-23', 'Lorem ipsum dolor sit amet elit. Cum veritatis sequi nulla nihil, dolor voluptatum nemo adipisci eligendi! Sed nisi perferendis, totam harum dicta.', '2021-09-23', '2021-10-01', 'Active', '2021-09-28 23:21:19', '2021-09-28 23:21:19'),
(2, 'Business Conferences 2016', '2021-09-23', 'Lorem ipsum dolor sit amet elit. Cum veritatis sequi nulla nihil, dolor voluptatum nemo adipisci eligendi! Sed nisi perferendis, totam harum dicta.', '2021-09-30', '2021-10-06', 'Active', '2021-09-28 23:23:38', '2021-09-28 23:23:38');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
CREATE TABLE IF NOT EXISTS `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `results`
--

DROP TABLE IF EXISTS `results`;
CREATE TABLE IF NOT EXISTS `results` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` date NOT NULL,
  `link` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `results`
--

INSERT INTO `results` (`id`, `name`, `date`, `link`, `status`, `created_at`, `updated_at`) VALUES
(4, 'Examination', '2021-09-21', 'https://groups.google.com/g/livro-laravel/c/3mvLCEsQY-U?pli=1', 'Deactive', '2021-09-26 03:54:36', '2021-09-26 03:55:16');

-- --------------------------------------------------------

--
-- Table structure for table `siteconfigs`
--

DROP TABLE IF EXISTS `siteconfigs`;
CREATE TABLE IF NOT EXISTS `siteconfigs` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `site_key` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `site_value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `site_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `imglink` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `siteconfigs`
--

INSERT INTO `siteconfigs` (`id`, `site_key`, `site_value`, `site_name`, `imglink`, `status`, `created_at`, `updated_at`) VALUES
(1, 'contact', '9828222222', 'contact', 'hello', 'Active', '2021-09-29 10:16:50', '2021-09-29 10:16:50'),
(2, 'location', '#405, Lan Streen, Los Vegas, USA', 'location', '-', 'Active', '2021-09-29 10:19:00', '2021-09-29 10:19:00'),
(3, 'email', 'supporte@yourdomin.com', 'email', '-', 'Active', '2021-09-29 10:19:27', '2021-09-29 10:19:27'),
(4, 'program', 'Painting', 'painting', 'h61632152307.jpg', 'Active', '2021-09-29 10:20:26', '2021-09-29 10:20:26'),
(5, 'program', 'Chemestry', 'Chemestry', '81632152265.jpg', 'Active', '2021-09-29 10:21:02', '2021-10-05 01:23:29'),
(25, 'planning', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Earum sunt ut dolorem laboriosam culpa excepturi sed distinctio eius! Ut magnam numquam libero quia vero blanditiis fugit corporis quisquam, debitis quidem laudantium deleniti.', 'Introduction', '11632150585.jpg', 'Active', '2021-10-05 00:56:27', '2021-10-05 00:56:27'),
(7, 'message from principal', 'Since its inception in 1997, the University has shown a commitment to innovation and to serving the needs of its community and nation with a vision “to be a leader in the promotion of education through quality higher education and community service”.', 'Message from Principal', '11632150585.jpg', 'Active', '2021-09-29 10:22:33', '2021-09-29 10:22:33'),
(8, 'visionaboutus', 'To be a leader in the promotion of education through quality higher education, health and community service', 'Vision', '81632152265.jpg', 'Active', '2021-09-29 10:23:08', '2021-09-29 10:23:08'),
(9, 'missionaboutus', 'To accelerate the national development process by producing job market-driven, responsible, productive, welfare focused and committed human resources', 'Mission', '-', 'Active', '2021-09-29 10:23:39', '2021-09-29 10:23:39'),
(10, 'aboutus', 'Produce adept human resource in science and technology, humanities and management, and law and education for nation building', 'Objectives', '-', 'Active', '2021-09-29 10:24:13', '2021-09-29 10:24:13'),
(11, 'aboutus', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Earum sunt ut dolorem laboriosam culpa excepturi sed distinctio eius! Ut magnam numquam libero quia vero blanditiis fugit corporis quisquam, debitis quidem laudantium deleniti', 'Objectives', '-', 'Active', '2021-09-29 10:24:44', '2021-09-29 10:24:44'),
(12, 'progressbar', '23', 'class-types', '-', 'Active', '2021-09-29 10:25:10', '2021-09-29 10:25:10'),
(13, 'progressbar', '500', 'classrooms', '-', 'Active', '2021-09-29 10:25:45', '2021-09-29 10:25:45'),
(14, 'progressbar', '123', 'student', '-', 'Active', '2021-09-29 10:26:10', '2021-09-29 10:26:10'),
(15, 'progressbar', '256', 'professors', '-', 'Active', '2021-09-29 10:26:38', '2021-09-29 10:26:38'),
(16, 'welcome', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Earum sunt ut dolorem laboriosam culpa excepturi sed distinctio eius! Ut magnam numquam libero quia vero blanditiis fugit corporis quisquam, debitis quidem laudantium deleniti.', 'welcome', 'https://www.youtube.com/watch?v=UOrEVQaSIgo', 'Active', '2021-09-29 10:27:09', '2021-09-29 10:27:09'),
(17, 'google', 'https://www.google.com/', 'google', '-', 'Active', '2021-09-29 10:27:45', '2021-09-29 10:27:45'),
(18, 'twitter', 'https://twitter.com/', 'twitter', '-', 'Active', '2021-09-29 10:28:07', '2021-09-29 10:28:07'),
(19, 'youtube', 'https://www.youtube.com/', 'youtube', '-', 'Active', '2021-09-29 10:28:30', '2021-09-29 10:28:30'),
(20, 'logo', 'hello this is learn press', 'logo', 'bg21632233572.jpg', 'Active', '2021-09-29 10:29:08', '2021-09-29 10:29:08'),
(21, 'learnpress', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Earum sunt ut dolorem laboriosam culpa excepturi sed distinctio eius! Ut magnam numquam libero quia vero blanditiis fugit corporis quisquam, debitis quidem laudantium deleniti.', 'WELCOME TO LEARNPRESS', '-', 'Active', '2021-09-29 10:45:00', '2021-10-05 02:36:59'),
(22, 'facebook', 'https://www.facebook.com/', 'Facebook', '11632150585.jpg', 'Active', '2021-10-03 11:30:34', '2021-10-03 11:32:39'),
(23, 'objective', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Earum sunt ut dolorem laboriosam culpa excepturi sed distinctio eius! Ut magnam numquam libero quia vero blanditiis fugit corporis quisquam, debitis quidem laudantium deleniti.', 'Objectives', '11632150585.jpg', 'Active', '2021-10-04 03:29:47', '2021-10-04 03:47:56'),
(26, 'program', 'Painting', 'Painting', 'h61632152307.jpg', 'Active', '2021-10-05 01:19:38', '2021-10-05 01:19:38'),
(27, 'program', 'Chemestry', 'Chemestry', '81632152265.jpg', 'Active', '2021-10-05 01:20:18', '2021-10-05 01:20:18');

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

DROP TABLE IF EXISTS `sliders`;
CREATE TABLE IF NOT EXISTS `sliders` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `header` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sub_heading` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `text` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `img_link` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `btn` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `btnlink` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `name`, `header`, `sub_heading`, `text`, `img_link`, `btn`, `btnlink`, `status`, `created_at`, `updated_at`) VALUES
(1, 'slider1', 'Education', 'Education for everyone', 'Lorem ipsum dolor sit amet, consectetur.', '11632150585.jpg', 'View Details', 'about-us', 'Active', '2021-09-28 21:35:31', '2021-09-28 21:35:31');

-- --------------------------------------------------------

--
-- Table structure for table `teachers`
--

DROP TABLE IF EXISTS `teachers`;
CREATE TABLE IF NOT EXISTS `teachers` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `post` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `img_link` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `details` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `experience` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `teachers`
--

INSERT INTO `teachers` (`id`, `name`, `post`, `img_link`, `details`, `experience`, `address`, `contact`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Rishi Khanal', 'Supervisor', 'bg41632325317.jpg', 'principal', 'bachelor', 'nayabazar', '9811111', 'Active', '2021-10-03 01:56:57', '2021-10-03 01:56:57');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `whychooseuses`
--

DROP TABLE IF EXISTS `whychooseuses`;
CREATE TABLE IF NOT EXISTS `whychooseuses` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `heading` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `text` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `whychooseuses`
--

INSERT INTO `whychooseuses` (`id`, `heading`, `text`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Best Teacher', 'Lorem ipsum dolor sit amet, consectetur.', 'Active', '2021-09-29 10:32:24', '2021-09-29 10:32:24');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
