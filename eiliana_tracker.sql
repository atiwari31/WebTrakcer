-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Nov 30, 2021 at 04:01 AM
-- Server version: 8.0.21
-- PHP Version: 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `eiliana_tracker`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `keyboard_mouse_events`
--

DROP TABLE IF EXISTS `keyboard_mouse_events`;
CREATE TABLE IF NOT EXISTS `keyboard_mouse_events` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `key_code` int DEFAULT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=84 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `keyboard_mouse_events`
--

INSERT INTO `keyboard_mouse_events` (`id`, `key_code`, `description`, `created_at`, `updated_at`) VALUES
(1, 97, 'a', NULL, NULL),
(2, 65, 'A', NULL, NULL),
(3, 98, 'b', NULL, NULL),
(4, 66, 'B', NULL, NULL),
(5, 99, 'c', NULL, NULL),
(6, 67, 'C', NULL, NULL),
(7, 100, 'd', NULL, NULL),
(8, 68, 'D', NULL, NULL),
(9, 101, 'e', NULL, NULL),
(10, 69, 'E', NULL, NULL),
(11, 102, 'f', NULL, NULL),
(12, 70, 'F', NULL, NULL),
(13, 103, 'g', NULL, NULL),
(14, 71, 'G', NULL, NULL),
(15, 104, 'h', NULL, NULL),
(16, 72, 'H', NULL, NULL),
(17, 105, 'i', NULL, NULL),
(18, 73, 'I', NULL, NULL),
(19, 106, 'j', NULL, NULL),
(20, 74, 'J', NULL, NULL),
(21, 107, 'k', NULL, NULL),
(22, 75, 'K', NULL, NULL),
(23, 108, 'l', NULL, NULL),
(24, 76, 'L', NULL, NULL),
(25, 109, 'm', NULL, NULL),
(26, 77, 'M', NULL, NULL),
(27, 110, 'n', NULL, NULL),
(28, 78, 'N', NULL, NULL),
(29, 111, 'o', NULL, NULL),
(30, 79, 'O', NULL, NULL),
(31, 112, 'p', NULL, NULL),
(32, 80, 'P', NULL, NULL),
(33, 113, 'q', NULL, NULL),
(34, 81, 'Q', NULL, NULL),
(35, 114, 'r', NULL, NULL),
(36, 82, 'R', NULL, NULL),
(37, 115, 's', NULL, NULL),
(38, 83, 'S', NULL, NULL),
(39, 116, 't', NULL, NULL),
(40, 84, 'T', NULL, NULL),
(41, 117, 'u', NULL, NULL),
(42, 85, 'U', NULL, NULL),
(43, 118, 'v', NULL, NULL),
(44, 86, 'V', NULL, NULL),
(45, 119, 'w', NULL, NULL),
(46, 87, 'W', NULL, NULL),
(47, 120, 'x', NULL, NULL),
(48, 88, 'X', NULL, NULL),
(49, 121, 'y', NULL, NULL),
(50, 89, 'Y', NULL, NULL),
(51, 122, 'z', NULL, NULL),
(52, 90, 'Z', NULL, NULL),
(53, 48, '0', NULL, NULL),
(54, 49, '1', NULL, NULL),
(55, 50, '2', NULL, NULL),
(56, 51, '3', NULL, NULL),
(57, 52, '4', NULL, NULL),
(58, 53, '5', NULL, NULL),
(59, 54, '6', NULL, NULL),
(60, 55, '7', NULL, NULL),
(61, 56, '8', NULL, NULL),
(62, 57, '9', NULL, NULL),
(63, 112, 'F1', NULL, NULL),
(64, 113, 'F2', NULL, NULL),
(65, 114, 'F3', NULL, NULL),
(66, 115, 'F4', NULL, NULL),
(67, 116, 'F5\r\n', NULL, NULL),
(68, 117, 'F6\r\n', NULL, NULL),
(69, 118, 'F7\r\n', NULL, NULL),
(70, 119, 'F8\r\n', NULL, NULL),
(71, 120, 'F9\r\n', NULL, NULL),
(72, 121, 'F10\r\n', NULL, NULL),
(73, 122, 'F11\r\n', NULL, NULL),
(74, 123, 'F12\r\n', NULL, NULL),
(75, 32, 'Space', NULL, NULL),
(76, 8, 'BackSpace', NULL, NULL),
(77, 13, 'Enter', NULL, NULL),
(78, 16, 'Shift', NULL, NULL),
(79, 17, 'Ctrl', NULL, NULL),
(80, 18, 'Alt', NULL, NULL),
(81, 0, 'The left mouse button', NULL, NULL),
(82, 1, 'The middle mouse button', NULL, NULL),
(83, 2, 'The right mouse button', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `keyboard_mouse_event_details`
--

DROP TABLE IF EXISTS `keyboard_mouse_event_details`;
CREATE TABLE IF NOT EXISTS `keyboard_mouse_event_details` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` bigint DEFAULT NULL,
  `keyboard_mouse_event_id` int DEFAULT NULL,
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `start_time` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `event_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=420 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `keyboard_mouse_event_details`
--

INSERT INTO `keyboard_mouse_event_details` (`id`, `user_id`, `keyboard_mouse_event_id`, `description`, `start_time`, `event_type`, `created_at`, `updated_at`) VALUES
(1, 2, 0, 'Mouse', '2021-09-06 10:59:22', 'Mouse', NULL, NULL),
(2, 2, 0, 'Mouse', '2021-09-06 10:59:23', 'Mouse', NULL, NULL),
(3, 2, 0, 'Mouse', '2021-09-06 10:59:24', 'Mouse', NULL, NULL),
(4, 2, 0, 'Mouse', '2021-09-06 10:59:27', 'Mouse', NULL, NULL),
(5, 2, 0, 'Mouse', '2021-09-06 10:59:27', 'Mouse', NULL, NULL),
(6, 2, 0, 'Mouse', '2021-09-06 10:59:28', 'Mouse', NULL, NULL),
(7, 2, 0, 'Mouse', '2021-09-06 10:59:29', 'Mouse', NULL, NULL),
(8, 2, 0, 'Mouse', '2021-09-06 10:59:31', 'Mouse', NULL, NULL),
(9, 2, 0, 'Mouse', '2021-09-06 10:59:32', 'Mouse', NULL, NULL),
(10, 2, 0, 'Mouse', '2021-09-06 10:59:35', 'Mouse', NULL, NULL),
(11, 2, 0, 'Mouse', '2021-09-06 10:59:38', 'Mouse', NULL, NULL),
(12, 4, 0, 'Mouse', '2021-09-06 10:59:58', 'Mouse', NULL, NULL),
(13, 4, 0, 'Mouse', '2021-09-06 11:00:01', 'Mouse', NULL, NULL),
(14, 4, 0, 'Mouse', '2021-09-06 11:00:01', 'Mouse', NULL, NULL),
(15, 4, 0, 'Mouse', '2021-09-06 11:00:02', 'Mouse', NULL, NULL),
(16, 4, 0, 'Mouse', '2021-09-06 11:00:03', 'Mouse', NULL, NULL),
(17, 4, 0, 'Mouse', '2021-09-06 11:00:31', 'Mouse', NULL, NULL),
(18, 4, 0, 'Mouse', '2021-09-06 11:00:31', 'Mouse', NULL, NULL),
(19, 4, 0, 'Mouse', '2021-09-06 11:00:32', 'Mouse', NULL, NULL),
(20, 4, 0, 'Mouse', '2021-09-06 11:00:33', 'Mouse', NULL, NULL),
(21, 4, 0, 'Mouse', '2021-09-06 11:00:33', 'Mouse', NULL, NULL),
(22, 4, 0, 'Mouse', '2021-09-06 11:00:34', 'Mouse', NULL, NULL),
(23, 4, 17, 'Ctrl', '2021-09-06 11:07:41', 'Keypaid', NULL, NULL),
(24, 4, 17, 'Ctrl', '2021-09-06 11:07:41', 'Keypaid', NULL, NULL),
(25, 4, 17, 'Ctrl', '2021-09-06 11:07:42', 'Keypaid', NULL, NULL),
(26, 4, 17, 'Ctrl', '2021-09-06 11:07:42', 'Keypaid', NULL, NULL),
(27, 4, 17, 'Ctrl', '2021-09-06 11:07:43', 'Keypaid', NULL, NULL),
(28, 4, 17, 'Ctrl', '2021-09-06 11:07:43', 'Keypaid', NULL, NULL),
(29, 4, 116, 't', '2021-09-06 11:07:44', 'Keypaid', NULL, NULL),
(30, 4, 0, 'Mouse', '2021-09-06 11:07:46', 'Mouse', NULL, NULL),
(31, 4, 0, 'Mouse', '2021-09-06 11:07:50', 'Mouse', NULL, NULL),
(32, 4, 0, 'Mouse', '2021-09-06 11:07:50', 'Mouse', NULL, NULL),
(33, 4, 0, 'Mouse', '2021-09-06 11:07:51', 'Mouse', NULL, NULL),
(34, 4, 0, 'Mouse', '2021-09-06 11:07:58', 'Mouse', NULL, NULL),
(35, 4, 0, 'Mouse', '2021-09-06 11:08:05', 'Mouse', NULL, NULL),
(36, 4, 0, 'Mouse', '2021-09-06 11:08:06', 'Mouse', NULL, NULL),
(37, 4, 0, 'Mouse', '2021-09-06 11:08:07', 'Mouse', NULL, NULL),
(38, 4, 0, 'Mouse', '2021-09-06 11:08:15', 'Mouse', NULL, NULL),
(39, 4, 0, 'Mouse', '2021-09-06 11:08:34', 'Mouse', NULL, NULL),
(40, 4, 0, 'Mouse', '2021-09-06 11:08:35', 'Mouse', NULL, NULL),
(41, 4, 0, 'Mouse', '2021-09-06 11:08:43', 'Mouse', NULL, NULL),
(42, 4, 0, 'Mouse', '2021-09-06 11:08:43', 'Mouse', NULL, NULL),
(43, 4, 0, 'Mouse', '2021-09-06 11:08:44', 'Mouse', NULL, NULL),
(44, 4, 0, 'Mouse', '2021-09-06 11:08:45', 'Mouse', NULL, NULL),
(45, 4, 0, 'Mouse', '2021-09-06 11:08:46', 'Mouse', NULL, NULL),
(46, 4, 0, 'Mouse', '2021-09-06 11:08:52', 'Mouse', NULL, NULL),
(47, 4, 0, 'Mouse', '2021-09-06 11:08:53', 'Mouse', NULL, NULL),
(48, 4, 0, 'Mouse', '2021-09-06 11:08:53', 'Mouse', NULL, NULL),
(49, 4, 0, 'Mouse', '2021-09-06 11:08:57', 'Mouse', NULL, NULL),
(50, 4, 0, 'Mouse', '2021-09-06 11:08:57', 'Mouse', NULL, NULL),
(51, 4, 0, 'Mouse', '2021-09-06 11:09:02', 'Mouse', NULL, NULL),
(52, 4, 0, 'Mouse', '2021-09-06 11:09:06', 'Mouse', NULL, NULL),
(53, 4, 0, 'Mouse', '2021-09-06 11:09:09', 'Mouse', NULL, NULL),
(54, 4, 0, 'Mouse', '2021-09-06 11:10:02', 'Mouse', NULL, NULL),
(55, 4, 0, 'Mouse', '2021-09-06 11:10:06', 'Mouse', NULL, NULL),
(56, 4, 0, 'Mouse', '2021-09-06 11:10:16', 'Mouse', NULL, NULL),
(57, 4, 0, 'Mouse', '2021-09-06 11:10:24', 'Mouse', NULL, NULL),
(58, 4, 0, 'Mouse', '2021-09-06 11:10:25', 'Mouse', NULL, NULL),
(59, 4, 0, 'Mouse', '2021-09-06 11:10:32', 'Mouse', NULL, NULL),
(60, 4, 0, 'Mouse', '2021-09-06 11:45:46', 'Mouse', NULL, NULL),
(61, 4, 0, 'Mouse', '2021-09-06 11:45:47', 'Mouse', NULL, NULL),
(62, 4, 0, 'Mouse', '2021-09-06 11:45:47', 'Mouse', NULL, NULL),
(63, 4, 0, 'Mouse', '2021-09-06 11:45:48', 'Mouse', NULL, NULL),
(64, 4, 0, 'Mouse', '2021-09-06 11:45:49', 'Mouse', NULL, NULL),
(65, 4, 0, 'Mouse', '2021-09-06 11:45:50', 'Mouse', NULL, NULL),
(66, 4, 0, 'Mouse', '2021-09-06 11:45:53', 'Mouse', NULL, NULL),
(67, 4, 0, 'Mouse', '2021-09-06 11:45:54', 'Mouse', NULL, NULL),
(68, 4, 0, 'Mouse', '2021-09-06 11:45:59', 'Mouse', NULL, NULL),
(69, 4, 0, 'Mouse', '2021-09-06 11:45:59', 'Mouse', NULL, NULL),
(70, 2, 0, 'Mouse', '2021-09-06 15:58:33', 'Mouse', NULL, NULL),
(71, 2, 0, 'Mouse', '2021-09-06 15:58:36', 'Mouse', NULL, NULL),
(72, 2, 0, 'Mouse', '2021-09-06 15:58:37', 'Mouse', NULL, NULL),
(73, 2, 0, 'Mouse', '2021-09-06 16:00:27', 'Mouse', NULL, NULL),
(74, 2, 116, 't', '2021-09-06 16:04:08', 'Keypaid', NULL, NULL),
(75, 2, 0, 'Mouse', '2021-09-06 16:04:11', 'Mouse', NULL, NULL),
(76, 2, 0, 'Mouse', '2021-09-06 16:05:26', 'Mouse', NULL, NULL),
(77, 4, 0, 'Mouse', '2021-09-06 16:10:13', 'Mouse', NULL, NULL),
(78, 4, 0, 'Mouse', '2021-09-06 16:10:14', 'Mouse', NULL, NULL),
(79, 4, 116, 't', '2021-09-06 16:10:16', 'Keypaid', NULL, NULL),
(80, 4, 0, 'Mouse', '2021-09-06 16:10:18', 'Mouse', NULL, NULL),
(81, 4, 0, 'Mouse', '2021-09-06 16:10:21', 'Mouse', NULL, NULL),
(82, 4, 0, 'Mouse', '2021-09-06 16:10:21', 'Mouse', NULL, NULL),
(83, 4, 0, 'Mouse', '2021-09-06 16:10:22', 'Mouse', NULL, NULL),
(84, 4, 0, 'Mouse', '2021-09-06 16:10:22', 'Mouse', NULL, NULL),
(85, 4, 0, 'Mouse', '2021-09-06 16:10:50', 'Mouse', NULL, NULL),
(86, 4, 116, 't', '2021-09-06 16:10:51', 'Keypaid', NULL, NULL),
(87, 4, 0, 'Mouse', '2021-09-06 16:11:24', 'Mouse', NULL, NULL),
(88, 4, 0, 'Mouse', '2021-09-06 16:11:35', 'Mouse', NULL, NULL),
(89, 2, 0, 'Mouse', '2021-09-06 16:15:24', 'Mouse', NULL, NULL),
(90, 2, 0, 'Mouse', '2021-09-06 16:15:33', 'Mouse', NULL, NULL),
(91, 2, 0, 'Mouse', '2021-09-06 16:15:57', 'Mouse', NULL, NULL),
(92, 13, 0, 'Mouse', '2021-09-06 16:16:24', 'Mouse', NULL, NULL),
(93, 13, 0, 'Mouse', '2021-09-06 16:16:24', 'Mouse', NULL, NULL),
(94, 13, 116, 't', '2021-09-06 16:27:00', 'Keypaid', NULL, NULL),
(95, 13, 0, 'Mouse', '2021-09-06 16:57:18', 'Mouse', NULL, NULL),
(96, 13, 0, 'Mouse', '2021-09-06 16:57:32', 'Mouse', NULL, NULL),
(97, 2, 0, 'Mouse', '2021-09-06 16:57:46', 'Mouse', NULL, NULL),
(98, 2, 0, 'Mouse', '2021-09-06 16:57:59', 'Mouse', NULL, NULL),
(99, 2, 0, 'Mouse', '2021-09-06 16:58:03', 'Mouse', NULL, NULL),
(100, 2, 0, 'Mouse', '2021-09-06 16:58:03', 'Mouse', NULL, NULL),
(101, 2, 116, 't', '2021-09-06 16:58:43', 'Keypaid', NULL, NULL),
(102, 2, 0, 'Mouse', '2021-09-06 16:58:44', 'Mouse', NULL, NULL),
(103, 2, 0, 'Mouse', '2021-09-06 16:58:46', 'Mouse', NULL, NULL),
(104, 2, 0, 'Mouse', '2021-09-06 16:58:48', 'Mouse', NULL, NULL),
(105, 2, 0, 'Mouse', '2021-09-06 16:59:05', 'Mouse', NULL, NULL),
(106, 2, 0, 'Mouse', '2021-09-06 16:59:05', 'Mouse', NULL, NULL),
(107, 2, 0, 'Mouse', '2021-09-06 16:59:06', 'Mouse', NULL, NULL),
(108, 2, 0, 'Mouse', '2021-09-06 16:59:07', 'Mouse', NULL, NULL),
(109, 2, 0, 'Mouse', '2021-09-06 16:59:13', 'Mouse', NULL, NULL),
(110, 2, 0, 'Mouse', '2021-09-06 16:59:15', 'Mouse', NULL, NULL),
(111, 2, 0, 'Mouse', '2021-09-06 16:59:16', 'Mouse', NULL, NULL),
(112, 2, 0, 'Mouse', '2021-09-06 16:59:19', 'Mouse', NULL, NULL),
(113, 2, 0, 'Mouse', '2021-09-06 16:59:20', 'Mouse', NULL, NULL),
(114, 2, 0, 'Mouse', '2021-09-06 16:59:21', 'Mouse', NULL, NULL),
(115, 2, 0, 'Mouse', '2021-09-06 16:59:22', 'Mouse', NULL, NULL),
(116, 2, 0, 'Mouse', '2021-09-06 16:59:37', 'Mouse', NULL, NULL),
(117, 2, 0, 'Mouse', '2021-09-06 16:59:40', 'Mouse', NULL, NULL),
(118, 2, 0, 'Mouse', '2021-09-06 16:59:42', 'Mouse', NULL, NULL),
(119, 2, 116, 't', '2021-09-06 17:00:50', 'Keypaid', NULL, NULL),
(120, 2, 116, 't', '2021-09-06 17:00:53', 'Keypaid', NULL, NULL),
(121, 2, 116, 't', '2021-09-06 17:01:08', 'Keypaid', NULL, NULL),
(122, 2, 0, 'Mouse', '2021-09-06 17:03:14', 'Mouse', NULL, NULL),
(123, 2, 0, 'Mouse', '2021-09-06 17:03:15', 'Mouse', NULL, NULL),
(124, 2, 116, 't', '2021-09-06 17:04:08', 'Keypaid', NULL, NULL),
(125, 2, 116, 't', '2021-09-06 17:08:43', 'Keypaid', NULL, NULL),
(126, 2, 116, 't', '2021-09-06 17:09:10', 'Keypaid', NULL, NULL),
(127, 2, 0, 'Mouse', '2021-09-06 17:43:20', 'Mouse', NULL, NULL),
(128, 2, 0, 'Mouse', '2021-09-06 17:43:27', 'Mouse', NULL, NULL),
(129, 2, 0, 'Mouse', '2021-09-06 17:43:30', 'Mouse', NULL, NULL),
(130, 2, 0, 'Mouse', '2021-09-06 17:43:31', 'Mouse', NULL, NULL),
(131, 2, 116, 't', '2021-09-06 17:44:35', 'Keypaid', NULL, NULL),
(132, 2, 116, 't', '2021-09-06 17:45:06', 'Keypaid', NULL, NULL),
(133, 2, 0, 'Mouse', '2021-09-06 17:45:15', 'Mouse', NULL, NULL),
(134, 2, 0, 'Mouse', '2021-09-06 17:45:18', 'Mouse', NULL, NULL),
(135, 2, 0, 'Mouse', '2021-09-06 17:45:23', 'Mouse', NULL, NULL),
(136, 2, 0, 'Mouse', '2021-09-06 17:45:27', 'Mouse', NULL, NULL),
(137, 2, 0, 'Mouse', '2021-09-06 17:45:30', 'Mouse', NULL, NULL),
(138, 2, 0, 'Mouse', '2021-09-06 17:45:31', 'Mouse', NULL, NULL),
(139, 2, 0, 'Mouse', '2021-09-06 17:50:04', 'Mouse', NULL, NULL),
(140, 2, 0, 'Mouse', '2021-09-06 17:50:23', 'Mouse', NULL, NULL),
(141, 2, 0, 'Mouse', '2021-09-06 17:50:24', 'Mouse', NULL, NULL),
(142, 2, 0, 'Mouse', '2021-09-06 17:50:25', 'Mouse', NULL, NULL),
(143, 2, 0, 'Mouse', '2021-09-06 17:50:25', 'Mouse', NULL, NULL),
(144, 2, 0, 'Mouse', '2021-09-06 17:50:26', 'Mouse', NULL, NULL),
(145, 2, 0, 'Mouse', '2021-09-06 17:51:08', 'Mouse', NULL, NULL),
(146, 2, 0, 'Mouse', '2021-09-06 17:51:09', 'Mouse', NULL, NULL),
(147, 2, 0, 'Mouse', '2021-09-06 17:51:09', 'Mouse', NULL, NULL),
(148, 2, 0, 'Mouse', '2021-09-06 17:51:12', 'Mouse', NULL, NULL),
(149, 2, 116, 't', '2021-09-06 17:57:08', 'Keypaid', NULL, NULL),
(150, 2, 0, 'Mouse', '2021-09-06 17:57:10', 'Mouse', NULL, NULL),
(151, 2, 0, 'Mouse', '2021-09-06 17:57:13', 'Mouse', NULL, NULL),
(152, 2, 0, 'Mouse', '2021-09-06 17:57:17', 'Mouse', NULL, NULL),
(153, 2, 0, 'Mouse', '2021-09-06 17:57:18', 'Mouse', NULL, NULL),
(154, 2, 116, 't', '2021-09-06 17:57:52', 'Keypaid', NULL, NULL),
(155, 2, 0, 'Mouse', '2021-09-06 17:57:54', 'Mouse', NULL, NULL),
(156, 2, 0, 'Mouse', '2021-09-06 17:57:56', 'Mouse', NULL, NULL),
(157, 2, 0, 'Mouse', '2021-09-06 17:58:03', 'Mouse', NULL, NULL),
(158, 2, 0, 'Mouse', '2021-09-06 17:58:06', 'Mouse', NULL, NULL),
(159, 2, 0, 'Mouse', '2021-09-06 17:58:15', 'Mouse', NULL, NULL),
(160, 2, 116, 't', '2021-09-06 17:59:53', 'Keypaid', NULL, NULL),
(161, 2, 0, 'Mouse', '2021-09-06 18:00:45', 'Mouse', NULL, NULL),
(162, 2, 0, 'Mouse', '2021-09-06 18:02:01', 'Mouse', NULL, NULL),
(163, 2, 0, 'Mouse', '2021-09-06 18:02:03', 'Mouse', NULL, NULL),
(164, 2, 0, 'Mouse', '2021-09-06 18:02:19', 'Mouse', NULL, NULL),
(165, 2, 0, 'Mouse', '2021-09-06 18:02:32', 'Mouse', NULL, NULL),
(166, 2, 0, 'Mouse', '2021-09-06 18:05:36', 'Mouse', NULL, NULL),
(167, 2, 0, 'Mouse', '2021-09-06 18:06:42', 'Mouse', NULL, NULL),
(168, 2, 0, 'Mouse', '2021-09-06 18:08:31', 'Mouse', NULL, NULL),
(169, 2, 0, 'Mouse', '2021-09-06 18:08:34', 'Mouse', NULL, NULL),
(170, 2, 0, 'Mouse', '2021-09-06 18:08:40', 'Mouse', NULL, NULL),
(171, 2, 0, 'Mouse', '2021-09-06 18:08:41', 'Mouse', NULL, NULL),
(172, 2, 116, 't', '2021-09-06 18:09:02', 'Keypaid', NULL, NULL),
(173, 2, 0, 'Mouse', '2021-09-06 18:09:05', 'Mouse', NULL, NULL),
(174, 2, 0, 'Mouse', '2021-09-06 18:09:05', 'Mouse', NULL, NULL),
(175, 2, 0, 'Mouse', '2021-09-06 18:09:07', 'Mouse', NULL, NULL),
(176, 2, 0, 'Mouse', '2021-09-06 18:09:09', 'Mouse', NULL, NULL),
(177, 2, 0, 'Mouse', '2021-09-07 14:44:59', 'Mouse', NULL, NULL),
(178, 2, 0, 'Mouse', '2021-09-07 14:45:00', 'Mouse', NULL, NULL),
(179, 2, 0, 'Mouse', '2021-09-07 14:45:00', 'Mouse', NULL, NULL),
(180, 2, 0, 'Mouse', '2021-09-07 14:45:02', 'Mouse', NULL, NULL),
(181, 2, 0, 'Mouse', '2021-09-07 14:45:03', 'Mouse', NULL, NULL),
(182, 2, 0, 'Mouse', '2021-09-07 18:14:09', 'Mouse', NULL, NULL),
(183, 2, 0, 'Mouse', '2021-09-07 18:14:11', 'Mouse', NULL, NULL),
(184, 2, 0, 'Mouse', '2021-09-07 18:14:13', 'Mouse', NULL, NULL),
(185, 2, 0, 'Mouse', '2021-09-07 18:30:15', 'Mouse', NULL, NULL),
(186, 2, 0, 'Mouse', '2021-09-22 22:45:43', 'Mouse', NULL, NULL),
(187, 2, 0, 'Mouse', '2021-09-22 22:45:43', 'Mouse', NULL, NULL),
(188, 2, 0, 'Mouse', '2021-09-22 22:45:44', 'Mouse', NULL, NULL),
(189, 2, 0, 'Mouse', '2021-09-22 22:45:47', 'Mouse', NULL, NULL),
(190, 2, 0, 'Mouse', '2021-09-22 22:45:49', 'Mouse', NULL, NULL),
(191, 2, 0, 'Mouse', '2021-09-22 22:45:51', 'Mouse', NULL, NULL),
(192, 2, 0, 'Mouse', '2021-09-22 22:45:53', 'Mouse', NULL, NULL),
(193, 2, 0, 'Mouse', '2021-09-22 22:45:54', 'Mouse', NULL, NULL),
(194, 2, 0, 'Mouse', '2021-09-22 22:45:55', 'Mouse', NULL, NULL),
(195, 2, 0, 'Mouse', '2021-09-22 22:45:56', 'Mouse', NULL, NULL),
(196, 2, 0, 'Mouse', '2021-09-22 22:45:58', 'Mouse', NULL, NULL),
(197, 2, 0, 'Mouse', '2021-09-22 22:46:00', 'Mouse', NULL, NULL),
(198, 2, 0, 'Mouse', '2021-09-22 22:46:02', 'Mouse', NULL, NULL),
(199, 2, 0, 'Mouse', '2021-09-22 22:46:03', 'Mouse', NULL, NULL),
(200, 2, 0, 'Mouse', '2021-09-22 22:46:03', 'Mouse', NULL, NULL),
(201, 2, 0, 'Mouse', '2021-09-22 22:46:05', 'Mouse', NULL, NULL),
(202, 2, 0, 'Mouse', '2021-09-22 22:46:06', 'Mouse', NULL, NULL),
(203, 2, 0, 'Mouse', '2021-09-22 22:46:07', 'Mouse', NULL, NULL),
(204, 2, 0, 'Mouse', '2021-09-22 22:46:09', 'Mouse', NULL, NULL),
(205, 2, 0, 'Mouse', '2021-09-22 22:46:10', 'Mouse', NULL, NULL),
(206, 2, 0, 'Mouse', '2021-09-22 22:46:45', 'Mouse', NULL, NULL),
(207, 2, 0, 'Mouse', '2021-09-22 22:46:47', 'Mouse', NULL, NULL),
(208, 2, 0, 'Mouse', '2021-09-22 22:46:48', 'Mouse', NULL, NULL),
(209, 2, 0, 'Mouse', '2021-09-22 22:46:49', 'Mouse', NULL, NULL),
(210, 2, 0, 'Mouse', '2021-09-22 22:46:56', 'Mouse', NULL, NULL),
(211, 2, 0, 'Mouse', '2021-09-22 22:47:36', 'Mouse', NULL, NULL),
(212, 2, 0, 'Mouse', '2021-09-22 22:47:36', 'Mouse', NULL, NULL),
(213, 2, 0, 'Mouse', '2021-09-22 22:47:36', 'Mouse', NULL, NULL),
(214, 2, 0, 'Mouse', '2021-09-22 22:47:37', 'Mouse', NULL, NULL),
(215, 2, 0, 'Mouse', '2021-09-22 22:47:38', 'Mouse', NULL, NULL),
(216, 2, 0, 'Mouse', '2021-09-22 22:47:38', 'Mouse', NULL, NULL),
(217, 2, 0, 'Mouse', '2021-09-22 22:47:40', 'Mouse', NULL, NULL),
(218, 2, 0, 'Mouse', '2021-09-22 22:47:44', 'Mouse', NULL, NULL),
(219, 2, 0, 'Mouse', '2021-09-22 22:47:44', 'Mouse', NULL, NULL),
(220, 2, 0, 'Mouse', '2021-09-22 22:47:44', 'Mouse', NULL, NULL),
(221, 2, 0, 'Mouse', '2021-09-22 22:47:45', 'Mouse', NULL, NULL),
(222, 2, 0, 'Mouse', '2021-09-22 22:47:45', 'Mouse', NULL, NULL),
(223, 2, 0, 'Mouse', '2021-09-22 22:47:46', 'Mouse', NULL, NULL),
(224, 2, 0, 'Mouse', '2021-09-22 22:47:46', 'Mouse', NULL, NULL),
(225, 2, 0, 'Mouse', '2021-09-22 22:47:46', 'Mouse', NULL, NULL),
(226, 2, 0, 'Mouse', '2021-09-22 22:47:46', 'Mouse', NULL, NULL),
(227, 2, 0, 'Mouse', '2021-09-22 22:47:46', 'Mouse', NULL, NULL),
(228, 2, 0, 'Mouse', '2021-09-22 22:47:47', 'Mouse', NULL, NULL),
(229, 2, 0, 'Mouse', '2021-09-22 22:47:47', 'Mouse', NULL, NULL),
(230, 2, 0, 'Mouse', '2021-09-22 22:47:47', 'Mouse', NULL, NULL),
(231, 2, 0, 'Mouse', '2021-09-22 22:47:47', 'Mouse', NULL, NULL),
(232, 2, 0, 'Mouse', '2021-09-22 22:47:58', 'Mouse', NULL, NULL),
(233, 2, 0, 'Mouse', '2021-09-23 11:58:04', 'Mouse', NULL, NULL),
(234, 2, 0, 'Mouse', '2021-09-23 11:58:04', 'Mouse', NULL, NULL),
(235, 2, 0, 'Mouse', '2021-09-23 11:58:04', 'Mouse', NULL, NULL),
(236, 2, 0, 'Mouse', '2021-09-23 11:58:04', 'Mouse', NULL, NULL),
(237, 2, 0, 'Mouse', '2021-09-23 12:06:52', 'Mouse', NULL, NULL),
(238, 2, 0, 'Mouse', '2021-09-23 12:06:54', 'Mouse', NULL, NULL),
(239, 2, 0, 'Mouse', '2021-09-23 12:06:57', 'Mouse', NULL, NULL),
(240, 2, 0, 'Mouse', '2021-09-23 12:06:58', 'Mouse', NULL, NULL),
(241, 2, 0, 'Mouse', '2021-09-23 12:07:01', 'Mouse', NULL, NULL),
(242, 2, 0, 'Mouse', '2021-09-23 12:07:05', 'Mouse', NULL, NULL),
(243, 2, 0, 'Mouse', '2021-09-23 12:07:08', 'Mouse', NULL, NULL),
(244, 2, 0, 'Mouse', '2021-09-23 12:07:09', 'Mouse', NULL, NULL),
(245, 2, 0, 'Mouse', '2021-09-23 12:07:13', 'Mouse', NULL, NULL),
(246, 2, 0, 'Mouse', '2021-09-23 12:07:15', 'Mouse', NULL, NULL),
(247, 2, 0, 'Mouse', '2021-09-23 12:07:15', 'Mouse', NULL, NULL),
(248, 2, 0, 'Mouse', '2021-09-23 12:07:15', 'Mouse', NULL, NULL),
(249, 2, 0, 'Mouse', '2021-09-23 12:07:17', 'Mouse', NULL, NULL),
(250, 2, 0, 'Mouse', '2021-09-23 12:07:25', 'Mouse', NULL, NULL),
(251, 2, 0, 'Mouse', '2021-09-23 12:07:26', 'Mouse', NULL, NULL),
(252, 2, 0, 'Mouse', '2021-09-23 12:07:27', 'Mouse', NULL, NULL),
(253, 2, 0, 'Mouse', '2021-09-23 12:10:08', 'Mouse', NULL, NULL),
(254, 2, 0, 'Mouse', '2021-09-23 12:10:17', 'Mouse', NULL, NULL),
(255, 2, 0, 'Mouse', '2021-09-23 12:10:18', 'Mouse', NULL, NULL),
(256, 2, 0, 'Mouse', '2021-09-23 12:10:20', 'Mouse', NULL, NULL),
(257, 2, 0, 'Mouse', '2021-09-23 12:10:40', 'Mouse', NULL, NULL),
(258, 2, 0, 'Mouse', '2021-09-23 12:10:40', 'Mouse', NULL, NULL),
(259, 2, 0, 'Mouse', '2021-09-23 12:10:42', 'Mouse', NULL, NULL),
(260, 2, 0, 'Mouse', '2021-09-23 12:10:42', 'Mouse', NULL, NULL),
(261, 2, 0, 'Mouse', '2021-09-23 12:10:44', 'Mouse', NULL, NULL),
(262, 2, 0, 'Mouse', '2021-09-23 12:10:44', 'Mouse', NULL, NULL),
(263, 2, 0, 'Mouse', '2021-09-23 12:10:47', 'Mouse', NULL, NULL),
(264, 2, 32, 'Space', '2021-09-23 12:11:31', 'Keypaid', NULL, NULL),
(265, 2, 0, 'Mouse', '2021-09-23 12:13:02', 'Mouse', NULL, NULL),
(266, 2, 0, 'Mouse', '2021-09-23 12:13:03', 'Mouse', NULL, NULL),
(267, 2, 0, 'Mouse', '2021-09-23 12:13:05', 'Mouse', NULL, NULL),
(268, 2, 0, 'Mouse', '2021-09-23 12:13:08', 'Mouse', NULL, NULL),
(269, 2, 0, 'Mouse', '2021-09-23 12:13:15', 'Mouse', NULL, NULL),
(270, 2, 0, 'Mouse', '2021-09-23 12:13:44', 'Mouse', NULL, NULL),
(271, 2, 0, 'Mouse', '2021-09-23 12:14:48', 'Mouse', NULL, NULL),
(272, 2, 0, 'Mouse', '2021-09-23 12:47:37', 'Mouse', NULL, NULL),
(273, 2, 0, 'Mouse', '2021-09-23 12:48:17', 'Mouse', NULL, NULL),
(274, 2, 0, 'Mouse', '2021-09-23 12:48:20', 'Mouse', NULL, NULL),
(275, 2, 0, 'Mouse', '2021-09-23 12:52:12', 'Mouse', NULL, NULL),
(276, 2, 0, 'Mouse', '2021-09-23 12:52:55', 'Mouse', NULL, NULL),
(277, 2, 0, 'Mouse', '2021-09-23 12:53:19', 'Mouse', NULL, NULL),
(278, 2, 0, 'Mouse', '2021-09-23 12:54:15', 'Mouse', NULL, NULL),
(279, 2, 0, 'Mouse', '2021-09-23 12:54:16', 'Mouse', NULL, NULL),
(280, 2, 0, 'Mouse', '2021-09-23 12:54:16', 'Mouse', NULL, NULL),
(281, 2, 0, 'Mouse', '2021-09-23 12:54:17', 'Mouse', NULL, NULL),
(282, 2, 0, 'Mouse', '2021-09-23 12:54:17', 'Mouse', NULL, NULL),
(283, 2, 0, 'Mouse', '2021-09-23 12:54:18', 'Mouse', NULL, NULL),
(284, 2, 0, 'Mouse', '2021-09-23 12:54:39', 'Mouse', NULL, NULL),
(285, 2, 0, 'Mouse', '2021-09-23 12:54:39', 'Mouse', NULL, NULL),
(286, 2, 0, 'Mouse', '2021-09-23 12:54:40', 'Mouse', NULL, NULL),
(287, 2, 0, 'Mouse', '2021-09-23 12:54:40', 'Mouse', NULL, NULL),
(288, 2, 0, 'Mouse', '2021-09-23 12:54:40', 'Mouse', NULL, NULL),
(289, 2, 0, 'Mouse', '2021-09-23 12:54:41', 'Mouse', NULL, NULL),
(290, 2, 0, 'Mouse', '2021-09-23 12:54:41', 'Mouse', NULL, NULL),
(291, 2, 0, 'Mouse', '2021-09-23 12:55:09', 'Mouse', NULL, NULL),
(292, 2, 0, 'Mouse', '2021-09-23 12:55:10', 'Mouse', NULL, NULL),
(293, 2, 0, 'Mouse', '2021-09-23 12:55:10', 'Mouse', NULL, NULL),
(294, 2, 0, 'Mouse', '2021-09-23 12:55:10', 'Mouse', NULL, NULL),
(295, 2, 0, 'Mouse', '2021-09-23 12:55:10', 'Mouse', NULL, NULL),
(296, 2, 0, 'Mouse', '2021-09-23 12:55:11', 'Mouse', NULL, NULL),
(297, 2, 32, 'Space', '2021-09-23 12:55:29', 'Keypaid', NULL, NULL),
(298, 2, 77, 'M', '2021-09-23 12:55:29', 'Keypaid', NULL, NULL),
(299, 2, 78, 'N', '2021-09-23 12:55:30', 'Keypaid', NULL, NULL),
(300, 2, 32, 'Space', '2021-09-23 12:55:30', 'Keypaid', NULL, NULL),
(301, 2, 77, 'M', '2021-09-23 12:55:31', 'Keypaid', NULL, NULL),
(302, 2, 32, 'Space', '2021-09-23 12:55:32', 'Keypaid', NULL, NULL),
(303, 2, 77, 'M', '2021-09-23 12:55:33', 'Keypaid', NULL, NULL),
(304, 2, 32, 'Space', '2021-09-23 12:55:33', 'Keypaid', NULL, NULL),
(305, 2, 77, 'M', '2021-09-23 12:55:34', 'Keypaid', NULL, NULL),
(306, 2, 32, 'Space', '2021-09-23 12:55:35', 'Keypaid', NULL, NULL),
(307, 2, 77, 'M', '2021-09-23 12:55:35', 'Keypaid', NULL, NULL),
(308, 2, 32, 'Space', '2021-09-23 12:55:36', 'Keypaid', NULL, NULL),
(309, 2, 77, 'M', '2021-09-23 12:55:36', 'Keypaid', NULL, NULL),
(310, 2, 32, 'Space', '2021-09-23 12:55:36', 'Keypaid', NULL, NULL),
(311, 2, 77, 'M', '2021-09-23 12:55:37', 'Keypaid', NULL, NULL),
(312, 2, 32, 'Space', '2021-09-23 12:55:37', 'Keypaid', NULL, NULL),
(313, 2, 0, 'Mouse', '2021-09-23 12:56:22', 'Mouse', NULL, NULL),
(314, 2, 0, 'Mouse', '2021-09-23 12:56:22', 'Mouse', NULL, NULL),
(315, 2, 32, 'Space', '2021-09-23 12:56:24', 'Keypaid', NULL, NULL),
(316, 2, 32, 'Space', '2021-09-23 12:56:24', 'Keypaid', NULL, NULL),
(317, 2, 32, 'Space', '2021-09-23 12:56:24', 'Keypaid', NULL, NULL),
(318, 2, 0, 'Mouse', '2021-09-23 12:58:21', 'Mouse', NULL, NULL),
(319, 2, 0, 'Mouse', '2021-09-23 12:58:21', 'Mouse', NULL, NULL),
(320, 2, 0, 'Mouse', '2021-09-23 12:58:22', 'Mouse', NULL, NULL),
(321, 2, 0, 'Mouse', '2021-09-23 12:58:22', 'Mouse', NULL, NULL),
(322, 2, 0, 'Mouse', '2021-09-23 12:58:27', 'Mouse', NULL, NULL),
(323, 2, 0, 'Mouse', '2021-09-23 12:58:28', 'Mouse', NULL, NULL),
(324, 2, 0, 'Mouse', '2021-09-23 12:58:29', 'Mouse', NULL, NULL),
(325, 2, 0, 'Mouse', '2021-09-23 12:58:29', 'Mouse', NULL, NULL),
(326, 2, 0, 'Mouse', '2021-09-23 12:58:30', 'Mouse', NULL, NULL),
(327, 2, 0, 'Mouse', '2021-09-23 12:58:30', 'Mouse', NULL, NULL),
(328, 2, 0, 'Mouse', '2021-09-23 12:58:30', 'Mouse', NULL, NULL),
(329, 2, 0, 'Mouse', '2021-09-23 12:58:40', 'Mouse', NULL, NULL),
(330, 2, 0, 'Mouse', '2021-09-23 12:58:40', 'Mouse', NULL, NULL),
(331, 2, 0, 'Mouse', '2021-09-23 12:58:40', 'Mouse', NULL, NULL),
(332, 2, 0, 'Mouse', '2021-09-23 12:58:41', 'Mouse', NULL, NULL),
(333, 2, 0, 'Mouse', '2021-09-23 12:58:42', 'Mouse', NULL, NULL),
(334, 2, 0, 'Mouse', '2021-09-23 12:58:43', 'Mouse', NULL, NULL),
(335, 2, 0, 'Mouse', '2021-09-23 12:58:43', 'Mouse', NULL, NULL),
(336, 2, 0, 'Mouse', '2021-09-23 12:58:43', 'Mouse', NULL, NULL),
(337, 2, 0, 'Mouse', '2021-09-23 12:58:44', 'Mouse', NULL, NULL),
(338, 2, 0, 'Mouse', '2021-09-23 12:58:44', 'Mouse', NULL, NULL),
(339, 2, 0, 'Mouse', '2021-09-23 12:58:44', 'Mouse', NULL, NULL),
(340, 2, 0, 'Mouse', '2021-09-23 12:58:44', 'Mouse', NULL, NULL),
(341, 2, 0, 'Mouse', '2021-09-23 12:58:45', 'Mouse', NULL, NULL),
(342, 2, 0, 'Mouse', '2021-09-23 13:01:59', 'Mouse', NULL, NULL),
(343, 2, 0, 'Mouse', '2021-09-23 13:02:06', 'Mouse', NULL, NULL),
(344, 2, 0, 'Mouse', '2021-09-23 13:02:09', 'Mouse', NULL, NULL),
(345, 2, 0, 'Mouse', '2021-09-23 13:02:11', 'Mouse', NULL, NULL),
(346, 2, 0, 'Mouse', '2021-09-23 13:02:17', 'Mouse', NULL, NULL),
(347, 2, 0, 'Mouse', '2021-09-27 15:41:01', 'Mouse', NULL, NULL),
(348, 2, 0, 'Mouse', '2021-09-27 15:41:05', 'Mouse', NULL, NULL),
(349, 2, 32, 'Space', '2021-09-27 15:41:06', 'Keypaid', NULL, NULL),
(350, 2, 0, 'Mouse', '2021-09-27 15:41:07', 'Mouse', NULL, NULL),
(351, 2, 76, 'L', '2021-09-27 15:41:07', 'Keypaid', NULL, NULL),
(352, 2, 75, 'K', '2021-09-27 15:41:07', 'Keypaid', NULL, NULL),
(353, 2, 68, 'D', '2021-09-27 15:41:08', 'Keypaid', NULL, NULL),
(354, 2, 76, 'L', '2021-09-27 15:41:08', 'Keypaid', NULL, NULL),
(355, 2, 67, 'C', '2021-09-27 15:41:08', 'Keypaid', NULL, NULL),
(356, 2, 68, 'D', '2021-09-27 15:41:08', 'Keypaid', NULL, NULL),
(357, 2, 67, 'C', '2021-09-27 15:41:08', 'Keypaid', NULL, NULL),
(358, 2, 68, 'D', '2021-09-27 15:41:09', 'Keypaid', NULL, NULL),
(359, 2, 68, 'D', '2021-09-27 15:41:35', 'Keypaid', NULL, NULL),
(360, 2, 68, 'D', '2021-09-27 15:41:36', 'Keypaid', NULL, NULL),
(361, 2, 68, 'D', '2021-09-27 15:41:36', 'Keypaid', NULL, NULL),
(362, 2, 70, 'F', '2021-09-27 15:41:36', 'Keypaid', NULL, NULL),
(363, 2, 70, 'F', '2021-09-27 15:41:37', 'Keypaid', NULL, NULL),
(364, 2, 70, 'F', '2021-09-27 15:41:37', 'Keypaid', NULL, NULL),
(365, 2, 0, 'Mouse', '2021-09-27 15:41:57', 'Mouse', NULL, NULL),
(366, 2, 0, 'Mouse', '2021-09-27 15:41:58', 'Mouse', NULL, NULL),
(367, 2, 0, 'Mouse', '2021-09-27 15:42:57', 'Mouse', NULL, NULL),
(368, 2, 32, 'Space', '2021-09-27 15:42:57', 'Keypaid', NULL, NULL),
(369, 2, 32, 'Space', '2021-09-27 15:42:58', 'Keypaid', NULL, NULL),
(370, 2, 75, 'K', '2021-09-27 15:42:59', 'Keypaid', NULL, NULL),
(371, 2, 78, 'N', '2021-09-27 15:42:59', 'Keypaid', NULL, NULL),
(372, 2, 76, 'L', '2021-09-27 15:42:59', 'Keypaid', NULL, NULL),
(373, 2, 0, 'Mouse', '2021-09-27 15:43:01', 'Mouse', NULL, NULL),
(374, 2, 0, 'Mouse', '2021-09-27 15:43:02', 'Mouse', NULL, NULL),
(375, 2, 0, 'Mouse', '2021-09-27 15:43:13', 'Mouse', NULL, NULL),
(376, 2, 0, 'Mouse', '2021-09-27 15:43:13', 'Mouse', NULL, NULL),
(377, 2, 0, 'Mouse', '2021-09-27 15:43:13', 'Mouse', NULL, NULL),
(378, 2, 0, 'Mouse', '2021-09-27 15:43:31', 'Mouse', NULL, NULL),
(379, 2, 0, 'Mouse', '2021-09-27 15:43:43', 'Mouse', NULL, NULL),
(380, 2, 0, 'Mouse', '2021-10-07 01:06:35', 'Mouse', NULL, NULL),
(381, 2, 0, 'Mouse', '2021-10-07 01:06:37', 'Mouse', NULL, NULL),
(382, 2, 0, 'Mouse', '2021-10-07 01:06:37', 'Mouse', NULL, NULL),
(383, 2, 0, 'Mouse', '2021-10-07 01:07:20', 'Mouse', NULL, NULL),
(384, 2, 0, 'Mouse', '2021-10-07 01:07:22', 'Mouse', NULL, NULL),
(385, 2, 0, 'Mouse', '2021-10-07 01:07:23', 'Mouse', NULL, NULL),
(386, 2, 0, 'Mouse', '2021-10-07 01:07:23', 'Mouse', NULL, NULL),
(387, 2, 0, 'Mouse', '2021-10-07 01:23:35', 'Mouse', NULL, NULL),
(388, 2, 0, 'Mouse', '2021-10-07 01:23:56', 'Mouse', NULL, NULL),
(389, 2, 0, 'Mouse', '2021-10-07 01:23:56', 'Mouse', NULL, NULL),
(390, 2, 0, 'Mouse', '2021-10-07 01:23:56', 'Mouse', NULL, NULL),
(391, 2, 0, 'Mouse', '2021-10-07 01:23:57', 'Mouse', NULL, NULL),
(392, 2, 0, 'Mouse', '2021-10-07 01:24:02', 'Mouse', NULL, NULL),
(393, 2, 0, 'Mouse', '2021-10-07 01:24:03', 'Mouse', NULL, NULL),
(394, 2, 0, 'Mouse', '2021-10-07 01:24:04', 'Mouse', NULL, NULL),
(395, 2, 0, 'Mouse', '2021-10-07 01:24:16', 'Mouse', NULL, NULL),
(396, 13, 0, 'Mouse', '2021-11-25 21:45:22', 'Mouse', NULL, NULL),
(397, 13, 0, 'Mouse', '2021-11-25 21:45:27', 'Mouse', NULL, NULL),
(398, 13, 0, 'Mouse', '2021-11-25 21:47:08', 'Mouse', NULL, NULL),
(399, 13, 0, 'Mouse', '2021-11-25 21:47:54', 'Mouse', NULL, NULL),
(400, 13, 0, 'Mouse', '2021-11-25 21:47:57', 'Mouse', NULL, NULL),
(401, 13, 0, 'Mouse', '2021-11-25 21:48:00', 'Mouse', NULL, NULL),
(402, 13, 0, 'Mouse', '2021-11-25 21:48:04', 'Mouse', NULL, NULL),
(403, 13, 0, 'Mouse', '2021-11-25 21:48:05', 'Mouse', NULL, NULL),
(404, 13, 0, 'Mouse', '2021-11-25 21:48:05', 'Mouse', NULL, NULL),
(405, 13, 0, 'Mouse', '2021-11-25 21:48:06', 'Mouse', NULL, NULL),
(406, 13, 0, 'Mouse', '2021-11-25 21:48:07', 'Mouse', NULL, NULL),
(407, 13, 0, 'Mouse', '2021-11-25 21:48:08', 'Mouse', NULL, NULL),
(408, 13, 0, 'Mouse', '2021-11-25 21:51:25', 'Mouse', NULL, NULL),
(409, 13, 0, 'Mouse', '2021-11-26 09:20:51', 'Mouse', NULL, NULL),
(410, 13, 0, 'Mouse', '2021-11-26 09:20:52', 'Mouse', NULL, NULL),
(411, 13, 0, 'Mouse', '2021-11-26 09:20:53', 'Mouse', NULL, NULL),
(412, 13, 0, 'Mouse', '2021-11-26 09:20:53', 'Mouse', NULL, NULL),
(413, 13, 0, 'Mouse', '2021-11-26 09:20:56', 'Mouse', NULL, NULL),
(414, 13, 0, 'Mouse', '2021-11-26 09:21:03', 'Mouse', NULL, NULL),
(415, 13, 0, 'Mouse', '2021-11-26 09:21:15', 'Mouse', NULL, NULL),
(416, 13, 0, 'Mouse', '2021-11-26 09:22:22', 'Mouse', NULL, NULL),
(417, 13, 0, 'Mouse', '2021-11-26 09:25:41', 'Mouse', NULL, NULL),
(418, 13, 0, 'Mouse', '2021-11-26 09:29:33', 'Mouse', NULL, NULL),
(419, 13, 0, 'Mouse', '2021-11-30 01:11:35', 'Mouse', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2021_08_22_110728_create_projects_table', 2),
(5, '2021_08_22_110842_create_tasks_table', 2),
(6, '2021_08_22_110928_create_times_table', 2),
(7, '2021_08_26_055048_create_keyboard_mouse_events_table', 3),
(8, '2021_08_26_055627_create_keyboard_mouse_event_details_table', 4);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

DROP TABLE IF EXISTS `projects`;
CREATE TABLE IF NOT EXISTS `projects` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `project` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `eiliana_project_id` int NOT NULL DEFAULT '0',
  `eiliana_client_id` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=38 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `projects`
--

INSERT INTO `projects` (`id`, `project`, `eiliana_project_id`, `eiliana_client_id`, `created_at`, `updated_at`) VALUES
(1, 'Wedding', 0, 0, NULL, NULL),
(2, 'Advocate', 0, 0, NULL, NULL),
(3, 'Digitizing', 0, 0, NULL, NULL),
(4, 'Hospital ', 0, 0, NULL, NULL),
(5, 'Legato', 0, 0, NULL, NULL),
(35, 'Project Title', 35, 3, NULL, NULL),
(36, 'Project Title 2 - Test', 12345, 123456, NULL, NULL),
(37, 'Project Title 3 - Test', 123456, 1234567, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `project_assignments`
--

DROP TABLE IF EXISTS `project_assignments`;
CREATE TABLE IF NOT EXISTS `project_assignments` (
  `id` int NOT NULL AUTO_INCREMENT,
  `project_id` int DEFAULT NULL,
  `task_id` int DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  `eiliana_project_id` int NOT NULL DEFAULT '0',
  `freelancer_id` int NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `task_id` (`task_id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `project_assignments`
--

INSERT INTO `project_assignments` (`id`, `project_id`, `task_id`, `user_id`, `eiliana_project_id`, `freelancer_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 2, 0, 0, '2021-09-06 12:37:35', '2021-09-06 12:37:35'),
(2, 1, 2, 4, 0, 0, '2021-09-06 12:37:45', '2021-09-06 12:37:45'),
(3, 4, 3, 2, 0, 0, '2021-09-07 08:37:33', '2021-09-07 08:37:33'),
(4, 4, 4, 4, 0, 0, '2021-09-07 12:40:46', '2021-09-07 12:40:46'),
(5, 2, 9, 2, 0, 0, '2021-10-06 19:35:27', '2021-10-06 19:35:27'),
(6, 2, 10, 2, 1234, 12345, '2021-11-24 03:17:27', '2021-11-24 03:17:27'),
(7, 2, 8, 2, 1234, 123456, '2021-11-25 16:08:42', '2021-11-25 16:08:42');

-- --------------------------------------------------------

--
-- Table structure for table `project_creations`
--

DROP TABLE IF EXISTS `project_creations`;
CREATE TABLE IF NOT EXISTS `project_creations` (
  `id` int NOT NULL AUTO_INCREMENT,
  `project_id` int DEFAULT NULL,
  `task` longtext,
  `working_per_hours` varchar(255) DEFAULT NULL,
  `eiliana_module_id` int NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `project_creations`
--

INSERT INTO `project_creations` (`id`, `project_id`, `task`, `working_per_hours`, `eiliana_module_id`, `created_at`, `updated_at`) VALUES
(1, 1, 'Login Module', '8', 0, '2021-09-06 05:27:14', '2021-09-06 05:27:14'),
(2, 1, 'update module', '11', 0, '2021-09-06 05:27:24', '2021-09-06 05:27:24'),
(3, 2, 'Autthnectiocation module', '10', 0, '2021-09-06 05:27:34', '2021-09-06 05:27:34'),
(4, 2, 'Update module', '10', 0, '2021-09-06 05:28:07', '2021-09-06 05:28:07'),
(9, 2, 'dfvg', '5', 0, '2021-10-06 19:34:58', '2021-10-06 19:34:58'),
(10, 2, 'Delete Module', '10', 12345, '2021-11-24 02:51:31', '2021-11-24 02:51:31'),
(11, 2, 'Delete Module', '10', 12345, '2021-11-25 16:07:41', '2021-11-25 16:07:41');

-- --------------------------------------------------------

--
-- Table structure for table `screenshots`
--

DROP TABLE IF EXISTS `screenshots`;
CREATE TABLE IF NOT EXISTS `screenshots` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `image_path` varchar(255) DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `screenshots`
--

INSERT INTO `screenshots` (`id`, `name`, `image`, `image_path`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'webtracker', 'webtracker_1637899065.png', 'C:\\Users\\hp\\Downloads\\Indore Project\\webtracker_client\\blog\\public/upload/webtracker_1637899065.png', 13, '2021-11-26 03:57:45', '2021-11-26 03:57:45'),
(2, 'webtracker', 'webtracker_1637899070.png', 'C:\\Users\\hp\\Downloads\\Indore Project\\webtracker_client\\blog\\public/upload/webtracker_1637899070.png', 13, '2021-11-26 03:57:50', '2021-11-26 03:57:50'),
(3, 'webtracker', 'webtracker_1637899075.png', 'C:\\Users\\hp\\Downloads\\Indore Project\\webtracker_client\\blog\\public/upload/webtracker_1637899075.png', 13, '2021-11-26 03:57:55', '2021-11-26 03:57:55'),
(4, 'webtracker', 'webtracker_1637899080.png', 'C:\\Users\\hp\\Downloads\\Indore Project\\webtracker_client\\blog\\public/upload/webtracker_1637899080.png', 13, '2021-11-26 03:58:00', '2021-11-26 03:58:00'),
(5, 'webtracker', 'webtracker_1637899085.png', 'C:\\Users\\hp\\Downloads\\Indore Project\\webtracker_client\\blog\\public/upload/webtracker_1637899085.png', 4, '2021-11-26 03:58:05', '2021-11-26 03:58:05'),
(6, 'webtracker', 'webtracker_1637899090.png', 'C:\\Users\\hp\\Downloads\\Indore Project\\webtracker_client\\blog\\public/upload/webtracker_1637899090.png', 13, '2021-11-26 03:58:10', '2021-11-26 03:58:10'),
(7, 'webtracker', 'webtracker_1637899095.png', 'C:\\Users\\hp\\Downloads\\Indore Project\\webtracker_client\\blog\\public/upload/webtracker_1637899095.png', 13, '2021-11-26 03:58:15', '2021-11-26 03:58:15'),
(8, 'webtracker', 'webtracker_1637899100.png', 'C:\\Users\\hp\\Downloads\\Indore Project\\webtracker_client\\blog\\public/upload/webtracker_1637899100.png', 13, '2021-11-26 03:58:20', '2021-11-26 03:58:20'),
(9, 'webtracker', 'webtracker_1637899105.png', 'C:\\Users\\hp\\Downloads\\Indore Project\\webtracker_client\\blog\\public/upload/webtracker_1637899105.png', 13, '2021-11-26 03:58:25', '2021-11-26 03:58:25'),
(10, 'webtracker', 'webtracker_1637899110.png', 'C:\\Users\\hp\\Downloads\\Indore Project\\webtracker_client\\blog\\public/upload/webtracker_1637899110.png', 13, '2021-11-26 03:58:30', '2021-11-26 03:58:30'),
(11, 'webtracker', 'webtracker_1637899115.png', 'C:\\Users\\hp\\Downloads\\Indore Project\\webtracker_client\\blog\\public/upload/webtracker_1637899115.png', 13, '2021-11-26 03:58:35', '2021-11-26 03:58:35'),
(12, 'webtracker', 'webtracker_1637899120.png', 'C:\\Users\\hp\\Downloads\\Indore Project\\webtracker_client\\blog\\public/upload/webtracker_1637899120.png', 13, '2021-11-26 03:58:40', '2021-11-26 03:58:40'),
(13, 'webtracker', 'webtracker_1637899125.png', 'C:\\Users\\hp\\Downloads\\Indore Project\\webtracker_client\\blog\\public/upload/webtracker_1637899125.png', 13, '2021-11-26 03:58:45', '2021-11-26 03:58:45'),
(14, 'webtracker', 'webtracker_1637899130.png', 'C:\\Users\\hp\\Downloads\\Indore Project\\webtracker_client\\blog\\public/upload/webtracker_1637899130.png', 13, '2021-11-26 03:58:50', '2021-11-26 03:58:50'),
(15, 'webtracker', 'webtracker_1637899135.png', 'C:\\Users\\hp\\Downloads\\Indore Project\\webtracker_client\\blog\\public/upload/webtracker_1637899135.png', 13, '2021-11-26 03:58:55', '2021-11-26 03:58:55'),
(16, 'webtracker', 'webtracker_1637899140.png', 'C:\\Users\\hp\\Downloads\\Indore Project\\webtracker_client\\blog\\public/upload/webtracker_1637899140.png', 13, '2021-11-26 03:59:00', '2021-11-26 03:59:00'),
(17, 'webtracker', 'webtracker_1637899145.png', 'C:\\Users\\hp\\Downloads\\Indore Project\\webtracker_client\\blog\\public/upload/webtracker_1637899145.png', 13, '2021-11-26 03:59:05', '2021-11-26 03:59:05'),
(18, 'webtracker', 'webtracker_1637899150.png', 'C:\\Users\\hp\\Downloads\\Indore Project\\webtracker_client\\blog\\public/upload/webtracker_1637899150.png', 13, '2021-11-26 03:59:10', '2021-11-26 03:59:10'),
(19, 'webtracker', 'webtracker_1637899155.png', 'C:\\Users\\hp\\Downloads\\Indore Project\\webtracker_client\\blog\\public/upload/webtracker_1637899155.png', 13, '2021-11-26 03:59:15', '2021-11-26 03:59:15'),
(20, 'webtracker', 'webtracker_1637899160.png', 'C:\\Users\\hp\\Downloads\\Indore Project\\webtracker_client\\blog\\public/upload/webtracker_1637899160.png', 13, '2021-11-26 03:59:20', '2021-11-26 03:59:20'),
(21, 'webtracker', 'webtracker_1637899165.png', 'C:\\Users\\hp\\Downloads\\Indore Project\\webtracker_client\\blog\\public/upload/webtracker_1637899165.png', 13, '2021-11-26 03:59:25', '2021-11-26 03:59:25'),
(22, 'webtracker', 'webtracker_1637899170.png', 'C:\\Users\\hp\\Downloads\\Indore Project\\webtracker_client\\blog\\public/upload/webtracker_1637899170.png', 13, '2021-11-26 03:59:30', '2021-11-26 03:59:30'),
(23, 'webtracker', 'webtracker_1638214873.png', 'C:\\Users\\hp\\Downloads\\Indore Project\\webtracker_client\\blog\\public/upload/webtracker_1638214873.png', 13, '2021-11-29 19:41:13', '2021-11-29 19:41:13'),
(24, 'webtracker', 'webtracker_1638214879.png', 'C:\\Users\\hp\\Downloads\\Indore Project\\webtracker_client\\blog\\public/upload/webtracker_1638214879.png', 13, '2021-11-29 19:41:19', '2021-11-29 19:41:19'),
(25, 'webtracker', 'webtracker_1638214884.png', 'C:\\Users\\hp\\Downloads\\Indore Project\\webtracker_client\\blog\\public/upload/webtracker_1638214884.png', 4, '2021-11-29 19:41:24', '2021-11-29 19:41:24'),
(26, 'webtracker', 'webtracker_1638214889.png', 'C:\\Users\\hp\\Downloads\\Indore Project\\webtracker_client\\blog\\public/upload/webtracker_1638214889.png', 13, '2021-11-29 19:41:29', '2021-11-29 19:41:29'),
(27, 'webtracker', 'webtracker_1638214893.png', 'C:\\Users\\hp\\Downloads\\Indore Project\\webtracker_client\\blog\\public/upload/webtracker_1638214893.png', 13, '2021-11-29 19:41:33', '2021-11-29 19:41:33');

-- --------------------------------------------------------

--
-- Table structure for table `tasks`
--

DROP TABLE IF EXISTS `tasks`;
CREATE TABLE IF NOT EXISTS `tasks` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `project_id` bigint DEFAULT NULL,
  `task` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tasks`
--

INSERT INTO `tasks` (`id`, `project_id`, `task`, `created_at`, `updated_at`) VALUES
(1, 1, 'task1', NULL, NULL),
(2, 1, 'task2', NULL, NULL),
(3, 2, 'task3', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `times`
--

DROP TABLE IF EXISTS `times`;
CREATE TABLE IF NOT EXISTS `times` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `start_time` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `duration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `end_time` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `times`
--

INSERT INTO `times` (`id`, `user_id`, `start_time`, `duration`, `end_time`, `created_at`, `updated_at`) VALUES
(1, 4, '2021-09-06 16:11:25', NULL, NULL, '2021-09-06 10:41:25', '2021-09-06 10:41:25'),
(2, 2, '2021-10-07 01:24:04', '00:18:00', '2021-10-07 01:24:03', '2021-09-06 10:41:49', '2021-10-06 19:54:04'),
(3, 13, '2021-11-30 01:11:05', NULL, NULL, '2021-09-06 10:46:22', '2021-11-29 19:41:05');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `eiliana_user_id` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=MyISAM AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `role`, `email_verified_at`, `password`, `remember_token`, `eiliana_user_id`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@gmail.com', 'ADMIN', NULL, '$2y$10$06xkxsJA7IBmOVg7WwVA8errMeSuMon80pBubHapw3pggL8y3dbGK', NULL, 0, '2021-08-29 23:00:13', '2021-08-29 23:00:13'),
(2, 'Webtracker1', 'webtracker1@gmail.com', 'USER', NULL, '$2y$10$msgPyZ.MbMHiOpnfS7BDnO3p7PrxcGthgSzUFHXP85vVgqVUsoDIG', NULL, 2, '2021-08-29 23:00:13', '2021-08-29 23:00:13'),
(4, 'Webtracker2', 'webtracker2@gmail.com', 'USER', NULL, '$2y$10$kBs3DBrqH./mRIgKHVZiOuTFuXmuvaY.PnfC7UsfsmgDrRSHMq7Bm', NULL, 4, '2021-08-29 23:11:59', '2021-08-29 23:11:59'),
(13, 'webtracker', 'webtracker3@gmail.com', 'USER', NULL, '$2y$10$06xkxsJA7IBmOVg7WwVA8errMeSuMon80pBubHapw3pggL8y3dbGK', NULL, 5, '2021-09-06 10:46:20', '2021-09-06 10:46:20');

-- --------------------------------------------------------

--
-- Table structure for table `user_project_task`
--

DROP TABLE IF EXISTS `user_project_task`;
CREATE TABLE IF NOT EXISTS `user_project_task` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` bigint DEFAULT NULL,
  `project_id` int NOT NULL,
  `task_id` int NOT NULL,
  `start_time` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `user_project_task`
--

INSERT INTO `user_project_task` (`id`, `user_id`, `project_id`, `task_id`, `start_time`, `created_at`, `updated_at`) VALUES
(1, 2, 1, 1, '2021-09-06 18:08:34', '2021-09-06 12:38:34', '2021-09-06 12:38:34'),
(2, 2, 1, 2, '2021-09-22 22:46:10', '2021-09-22 17:16:10', '2021-09-22 17:16:10'),
(3, 2, 2, 9, '2021-10-07 01:23:35', '2021-10-06 19:53:35', '2021-10-06 19:53:35');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
