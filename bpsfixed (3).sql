-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Sep 28, 2016 at 09:57 AM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 5.6.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bpsfixed`
--

-- --------------------------------------------------------

--
-- Table structure for table `loguser`
--

CREATE TABLE `loguser` (
  `id_log` int(11) NOT NULL,
  `id_users` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `waktu_login` datetime NOT NULL,
  `waktu_logout` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `loguser`
--

INSERT INTO `loguser` (`id_log`, `id_users`, `status`, `waktu_login`, `waktu_logout`) VALUES
(32, 2, 0, '2016-09-28 03:33:35', '2016-09-28 04:14:55'),
(33, 3, 0, '2016-09-28 04:14:59', '2016-09-28 04:19:17'),
(35, 4, 0, '2016-09-28 05:44:08', '2016-09-28 05:45:22'),
(37, 2, 1, '2016-09-28 05:53:01', '0000-00-00 00:00:00'),
(38, 1, 1, '2016-09-28 05:56:25', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2014_10_12_000000_create_users_table', 1),
('2014_10_12_100000_create_password_resets_table', 1),
('2016_07_29_013929_create_table_survey', 1),
('2016_07_29_014710_create_table_tahapanSurvey', 1),
('2016_08_02_034021_create_table_wilayah', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sk-hakakses`
--

CREATE TABLE `sk-hakakses` (
  `id_users` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `hakakses` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tgl_create` datetime NOT NULL,
  `tgl_update` datetime NOT NULL,
  `user_create` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `user_update` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sk-hakakses`
--

INSERT INTO `sk-hakakses` (`id_users`, `hakakses`, `tgl_create`, `tgl_update`, `user_create`, `user_update`) VALUES
('hengky', 'Operator', '2016-08-29 19:01:50', '2016-09-27 19:17:23', 'alvian', 'aneksa');

-- --------------------------------------------------------

--
-- Table structure for table `sk-hakakses-wilayah`
--

CREATE TABLE `sk-hakakses-wilayah` (
  `id_provinsi` varchar(2) COLLATE utf8_unicode_ci NOT NULL,
  `id_users` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tgl_create` datetime NOT NULL,
  `tgl_update` datetime NOT NULL,
  `user_create` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `user_update` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sk-hakakses-wilayah`
--

INSERT INTO `sk-hakakses-wilayah` (`id_provinsi`, `id_users`, `tgl_create`, `tgl_update`, `user_create`, `user_update`) VALUES
('11', 'hengky', '2016-09-27 19:17:23', '2016-09-27 19:17:23', 'aneksa', 'aneksa'),
('12', 'hengky', '2016-09-27 19:17:23', '2016-09-27 19:17:23', 'aneksa', 'aneksa'),
('13', 'hengky', '2016-09-27 19:17:23', '2016-09-27 19:17:23', 'aneksa', 'aneksa'),
('14', 'hengky', '2016-09-27 19:17:23', '2016-09-27 19:17:23', 'aneksa', 'aneksa'),
('15', 'hengky', '2016-09-27 19:17:23', '2016-09-27 19:17:23', 'aneksa', 'aneksa'),
('16', 'hengky', '2016-09-27 19:17:23', '2016-09-27 19:17:23', 'aneksa', 'aneksa'),
('17', 'hengky', '2016-09-27 19:17:23', '2016-09-27 19:17:23', 'aneksa', 'aneksa'),
('18', 'hengky', '2016-09-27 19:17:23', '2016-09-27 19:17:23', 'aneksa', 'aneksa');

-- --------------------------------------------------------

--
-- Table structure for table `sk-pemutakhiran`
--

CREATE TABLE `sk-pemutakhiran` (
  `id_provinsi` varchar(2) COLLATE utf8_unicode_ci NOT NULL,
  `jumlah` int(255) NOT NULL,
  `target` int(11) NOT NULL,
  `tgl_create` datetime NOT NULL,
  `tgl_update` datetime NOT NULL,
  `user_create` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `user_update` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sk-pemutakhiran`
--

INSERT INTO `sk-pemutakhiran` (`id_provinsi`, `jumlah`, `target`, `tgl_create`, `tgl_update`, `user_create`, `user_update`) VALUES
('11', 30, 882, '2016-08-29 19:01:15', '2016-09-27 18:34:38', 'alvian', 'aneksa'),
('12', 120, 696, '2016-08-29 19:01:15', '2016-09-24 12:54:03', 'alvian', 'alvian'),
('13', 1393, 1393, '2016-08-29 19:01:15', '2016-09-26 13:52:05', 'alvian', 'alvian'),
('14', 1998, 1998, '2016-08-29 19:01:15', '2016-09-26 13:52:24', 'alvian', 'alvian'),
('15', 1945, 1945, '2016-08-29 19:01:15', '2016-09-26 13:52:52', 'alvian', 'alvian'),
('16', 1414, 1414, '2016-08-29 19:01:15', '2016-09-26 13:53:11', 'alvian', 'alvian'),
('17', 1300, 1132, '2016-08-29 19:01:15', '2016-09-26 13:53:46', 'alvian', 'alvian'),
('18', 0, 769, '2016-08-29 19:01:15', '2016-08-29 19:01:15', 'alvian', 'alvian'),
('19', 0, 405, '2016-08-29 19:01:15', '2016-08-29 19:01:15', 'alvian', 'alvian'),
('21', 500, 332, '2016-08-29 19:01:15', '2016-09-26 14:04:12', 'alvian', 'alvian'),
('31', 0, 467, '2016-08-29 19:01:15', '2016-08-29 19:01:15', 'alvian', 'alvian'),
('32', 0, 802, '2016-08-29 19:01:15', '2016-08-29 19:01:15', 'alvian', 'alvian'),
('33', 0, 1112, '2016-08-29 19:01:15', '2016-08-29 19:01:15', 'alvian', 'alvian'),
('34', 500, 1082, '2016-08-29 19:01:15', '2016-09-26 14:04:29', 'alvian', 'alvian'),
('35', 0, 665, '2016-08-29 19:01:15', '2016-08-29 19:01:15', 'alvian', 'alvian'),
('36', 0, 753, '2016-08-29 19:01:15', '2016-08-29 19:01:15', 'alvian', 'alvian'),
('51', 0, 1593, '2016-08-29 19:01:15', '2016-08-29 19:01:15', 'alvian', 'alvian'),
('52', 0, 1665, '2016-08-29 19:01:15', '2016-08-29 19:01:15', 'alvian', 'alvian'),
('53', 0, 1718, '2016-08-29 19:01:15', '2016-08-29 19:01:15', 'alvian', 'alvian'),
('61', 0, 1408, '2016-08-29 19:01:15', '2016-08-29 19:01:15', 'alvian', 'alvian'),
('62', 0, 484, '2016-08-29 19:01:15', '2016-08-29 19:01:15', 'alvian', 'alvian'),
('63', 0, 1996, '2016-08-29 19:01:15', '2016-08-29 19:01:15', 'alvian', 'alvian'),
('64', 0, 1481, '2016-08-29 19:01:15', '2016-08-29 19:01:15', 'alvian', 'alvian'),
('65', 0, 1608, '2016-08-29 19:01:15', '2016-08-29 19:01:15', 'alvian', 'alvian'),
('71', 0, 1417, '2016-08-29 19:01:15', '2016-08-29 19:01:15', 'alvian', 'alvian'),
('72', 0, 1647, '2016-08-29 19:01:15', '2016-08-29 19:01:15', 'alvian', 'alvian'),
('73', 0, 1785, '2016-08-29 19:01:15', '2016-08-29 19:01:15', 'alvian', 'alvian'),
('74', 0, 1402, '2016-08-29 19:01:15', '2016-08-29 19:01:15', 'alvian', 'alvian'),
('75', 0, 632, '2016-08-29 19:01:15', '2016-08-29 19:01:15', 'alvian', 'alvian'),
('76', 0, 1409, '2016-08-29 19:01:15', '2016-08-29 19:01:15', 'alvian', 'alvian'),
('81', 0, 1085, '2016-08-29 19:01:15', '2016-08-29 19:01:15', 'alvian', 'alvian'),
('82', 0, 1234, '2016-08-29 19:01:15', '2016-08-29 19:01:15', 'alvian', 'alvian'),
('91', 0, 306, '2016-08-29 19:01:15', '2016-08-29 19:01:15', 'alvian', 'alvian'),
('94', 0, 698, '2016-08-29 19:01:15', '2016-08-29 19:01:15', 'alvian', 'alvian');

-- --------------------------------------------------------

--
-- Table structure for table `sk-pemutakhiran-hist`
--

CREATE TABLE `sk-pemutakhiran-hist` (
  `id_provinsi` varchar(2) COLLATE utf8_unicode_ci NOT NULL,
  `jumlah` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `target` int(11) NOT NULL,
  `tgl_create` datetime NOT NULL,
  `tgl_update` datetime NOT NULL,
  `user_create` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `user_update` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sk-pemutakhiran-hist`
--

INSERT INTO `sk-pemutakhiran-hist` (`id_provinsi`, `jumlah`, `target`, `tgl_create`, `tgl_update`, `user_create`, `user_update`) VALUES
('11', '0', 882, '2016-08-29 19:01:15', '2016-08-29 19:01:15', 'alvian', 'alvian'),
('11', '120', 882, '2016-09-17 08:32:13', '2016-09-17 08:32:13', 'alvian', 'alvian'),
('11', '300', 882, '2016-09-17 10:18:23', '2016-09-17 10:18:23', 'alvian', 'alvian'),
('11', '12', 882, '2016-09-27 17:55:19', '2016-09-27 17:55:19', 'aneksa', 'aneksa'),
('11', '800', 882, '2016-09-27 17:55:39', '2016-09-27 17:55:39', 'aneksa', 'aneksa'),
('11', '30', 882, '2016-09-27 18:34:38', '2016-09-27 18:34:38', 'aneksa', 'aneksa'),
('12', '0', 696, '2016-08-29 19:01:15', '2016-08-29 19:01:15', 'alvian', 'alvian'),
('12', '120', 696, '2016-09-24 12:54:03', '2016-09-24 12:54:03', 'alvian', 'alvian'),
('13', '0', 1393, '2016-08-29 19:01:15', '2016-08-29 19:01:15', 'alvian', 'alvian'),
('13', '1393', 1393, '2016-09-26 13:52:05', '2016-09-26 13:52:05', 'alvian', 'alvian'),
('14', '0', 1998, '2016-08-29 19:01:15', '2016-08-29 19:01:15', 'alvian', 'alvian'),
('14', '1998', 1998, '2016-09-26 13:52:24', '2016-09-26 13:52:24', 'alvian', 'alvian'),
('15', '0', 1945, '2016-08-29 19:01:15', '2016-08-29 19:01:15', 'alvian', 'alvian'),
('15', '1945', 1945, '2016-09-26 13:52:52', '2016-09-26 13:52:52', 'alvian', 'alvian'),
('16', '0', 1414, '2016-08-29 19:01:15', '2016-08-29 19:01:15', 'alvian', 'alvian'),
('16', '1414', 1414, '2016-09-26 13:53:11', '2016-09-26 13:53:11', 'alvian', 'alvian'),
('17', '0', 1132, '2016-08-29 19:01:15', '2016-08-29 19:01:15', 'alvian', 'alvian'),
('17', '1300', 1132, '2016-09-26 13:53:46', '2016-09-26 13:53:46', 'alvian', 'alvian'),
('18', '0', 769, '2016-08-29 19:01:15', '2016-08-29 19:01:15', 'alvian', 'alvian'),
('19', '0', 405, '2016-08-29 19:01:15', '2016-08-29 19:01:15', 'alvian', 'alvian'),
('21', '0', 332, '2016-08-29 19:01:15', '2016-08-29 19:01:15', 'alvian', 'alvian'),
('21', '500', 332, '2016-09-26 14:04:12', '2016-09-26 14:04:12', 'alvian', 'alvian'),
('31', '0', 467, '2016-08-29 19:01:15', '2016-08-29 19:01:15', 'alvian', 'alvian'),
('32', '0', 802, '2016-08-29 19:01:15', '2016-08-29 19:01:15', 'alvian', 'alvian'),
('33', '0', 1112, '2016-08-29 19:01:15', '2016-08-29 19:01:15', 'alvian', 'alvian'),
('34', '0', 1082, '2016-08-29 19:01:15', '2016-08-29 19:01:15', 'alvian', 'alvian'),
('34', '500', 1082, '2016-09-26 14:04:29', '2016-09-26 14:04:29', 'alvian', 'alvian'),
('35', '0', 665, '2016-08-29 19:01:15', '2016-08-29 19:01:15', 'alvian', 'alvian'),
('36', '0', 753, '2016-08-29 19:01:15', '2016-08-29 19:01:15', 'alvian', 'alvian'),
('51', '0', 1593, '2016-08-29 19:01:15', '2016-08-29 19:01:15', 'alvian', 'alvian'),
('52', '0', 1665, '2016-08-29 19:01:15', '2016-08-29 19:01:15', 'alvian', 'alvian'),
('53', '0', 1718, '2016-08-29 19:01:15', '2016-08-29 19:01:15', 'alvian', 'alvian'),
('61', '0', 1408, '2016-08-29 19:01:15', '2016-08-29 19:01:15', 'alvian', 'alvian'),
('62', '0', 484, '2016-08-29 19:01:15', '2016-08-29 19:01:15', 'alvian', 'alvian'),
('63', '0', 1996, '2016-08-29 19:01:15', '2016-08-29 19:01:15', 'alvian', 'alvian'),
('64', '0', 1481, '2016-08-29 19:01:15', '2016-08-29 19:01:15', 'alvian', 'alvian'),
('65', '0', 1608, '2016-08-29 19:01:15', '2016-08-29 19:01:15', 'alvian', 'alvian'),
('71', '0', 1417, '2016-08-29 19:01:15', '2016-08-29 19:01:15', 'alvian', 'alvian'),
('72', '0', 1647, '2016-08-29 19:01:15', '2016-08-29 19:01:15', 'alvian', 'alvian'),
('73', '0', 1785, '2016-08-29 19:01:15', '2016-08-29 19:01:15', 'alvian', 'alvian'),
('74', '0', 1402, '2016-08-29 19:01:15', '2016-08-29 19:01:15', 'alvian', 'alvian'),
('75', '0', 632, '2016-08-29 19:01:15', '2016-08-29 19:01:15', 'alvian', 'alvian'),
('76', '0', 1409, '2016-08-29 19:01:15', '2016-08-29 19:01:15', 'alvian', 'alvian'),
('81', '0', 1085, '2016-08-29 19:01:15', '2016-08-29 19:01:15', 'alvian', 'alvian'),
('82', '0', 1234, '2016-08-29 19:01:15', '2016-08-29 19:01:15', 'alvian', 'alvian'),
('91', '0', 306, '2016-08-29 19:01:15', '2016-08-29 19:01:15', 'alvian', 'alvian'),
('94', '0', 698, '2016-08-29 19:01:15', '2016-08-29 19:01:15', 'alvian', 'alvian');

-- --------------------------------------------------------

--
-- Table structure for table `sk-pemutakhiran-histgl`
--

CREATE TABLE `sk-pemutakhiran-histgl` (
  `id_provinsi` varchar(2) COLLATE utf8_unicode_ci NOT NULL,
  `jumlah` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `target` int(11) NOT NULL,
  `tgl_create` date NOT NULL,
  `tgl_update` datetime NOT NULL,
  `user_create` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `user_update` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sk-pemutakhiran-histgl`
--

INSERT INTO `sk-pemutakhiran-histgl` (`id_provinsi`, `jumlah`, `target`, `tgl_create`, `tgl_update`, `user_create`, `user_update`) VALUES
('11', '30', 882, '2016-08-29', '2016-09-27 18:34:38', 'alvian', 'aneksa'),
('11', '30', 882, '2016-09-17', '2016-09-27 18:34:38', 'alvian', 'aneksa'),
('11', '30', 882, '2016-09-27', '2016-09-27 18:34:38', 'aneksa', 'aneksa'),
('12', '0', 696, '2016-08-29', '2016-08-29 19:01:15', 'alvian', 'alvian'),
('12', '120', 696, '2016-09-24', '2016-09-24 12:54:03', 'alvian', 'alvian'),
('13', '0', 1393, '2016-08-29', '2016-08-29 19:01:15', 'alvian', 'alvian'),
('13', '1393', 1393, '2016-09-26', '2016-09-26 13:52:05', 'alvian', 'alvian'),
('14', '0', 1998, '2016-08-29', '2016-08-29 19:01:15', 'alvian', 'alvian'),
('14', '1998', 1998, '2016-09-26', '2016-09-26 13:52:24', 'alvian', 'alvian'),
('15', '0', 1945, '2016-08-29', '2016-08-29 19:01:15', 'alvian', 'alvian'),
('15', '1945', 1945, '2016-09-26', '2016-09-26 13:52:52', 'alvian', 'alvian'),
('16', '0', 1414, '2016-08-29', '2016-08-29 19:01:15', 'alvian', 'alvian'),
('16', '1414', 1414, '2016-09-26', '2016-09-26 13:53:11', 'alvian', 'alvian'),
('17', '0', 1132, '2016-08-29', '2016-08-29 19:01:15', 'alvian', 'alvian'),
('17', '1300', 1132, '2016-09-26', '2016-09-26 13:53:46', 'alvian', 'alvian'),
('18', '0', 769, '2016-08-29', '2016-08-29 19:01:15', 'alvian', 'alvian'),
('19', '0', 405, '2016-08-29', '2016-08-29 19:01:15', 'alvian', 'alvian'),
('21', '0', 332, '2016-08-29', '2016-08-29 19:01:15', 'alvian', 'alvian'),
('21', '500', 332, '2016-09-26', '2016-09-26 14:04:12', 'alvian', 'alvian'),
('31', '0', 467, '2016-08-29', '2016-08-29 19:01:15', 'alvian', 'alvian'),
('32', '0', 802, '2016-08-29', '2016-08-29 19:01:15', 'alvian', 'alvian'),
('33', '0', 1112, '2016-08-29', '2016-08-29 19:01:15', 'alvian', 'alvian'),
('34', '0', 1082, '2016-08-29', '2016-08-29 19:01:15', 'alvian', 'alvian'),
('34', '500', 1082, '2016-09-26', '2016-09-26 14:04:29', 'alvian', 'alvian'),
('35', '0', 665, '2016-08-29', '2016-08-29 19:01:15', 'alvian', 'alvian'),
('36', '0', 753, '2016-08-29', '2016-08-29 19:01:15', 'alvian', 'alvian'),
('51', '0', 1593, '2016-08-29', '2016-08-29 19:01:15', 'alvian', 'alvian'),
('52', '0', 1665, '2016-08-29', '2016-08-29 19:01:15', 'alvian', 'alvian'),
('53', '0', 1718, '2016-08-29', '2016-08-29 19:01:15', 'alvian', 'alvian'),
('61', '0', 1408, '2016-08-29', '2016-08-29 19:01:15', 'alvian', 'alvian'),
('62', '0', 484, '2016-08-29', '2016-08-29 19:01:15', 'alvian', 'alvian'),
('63', '0', 1996, '2016-08-29', '2016-08-29 19:01:15', 'alvian', 'alvian'),
('64', '0', 1481, '2016-08-29', '2016-08-29 19:01:15', 'alvian', 'alvian'),
('65', '0', 1608, '2016-08-29', '2016-08-29 19:01:15', 'alvian', 'alvian'),
('71', '0', 1417, '2016-08-29', '2016-08-29 19:01:15', 'alvian', 'alvian'),
('72', '0', 1647, '2016-08-29', '2016-08-29 19:01:15', 'alvian', 'alvian'),
('73', '0', 1785, '2016-08-29', '2016-08-29 19:01:15', 'alvian', 'alvian'),
('74', '0', 1402, '2016-08-29', '2016-08-29 19:01:15', 'alvian', 'alvian'),
('75', '0', 632, '2016-08-29', '2016-08-29 19:01:15', 'alvian', 'alvian'),
('76', '0', 1409, '2016-08-29', '2016-08-29 19:01:15', 'alvian', 'alvian'),
('81', '0', 1085, '2016-08-29', '2016-08-29 19:01:15', 'alvian', 'alvian'),
('82', '0', 1234, '2016-08-29', '2016-08-29 19:01:15', 'alvian', 'alvian'),
('91', '0', 306, '2016-08-29', '2016-08-29 19:01:15', 'alvian', 'alvian'),
('94', '0', 698, '2016-08-29', '2016-08-29 19:01:15', 'alvian', 'alvian');

-- --------------------------------------------------------

--
-- Table structure for table `sk-provinsi`
--

CREATE TABLE `sk-provinsi` (
  `id_provinsi` varchar(2) COLLATE utf8_unicode_ci NOT NULL,
  `nama_provinsi` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sk-provinsi`
--

INSERT INTO `sk-provinsi` (`id_provinsi`, `nama_provinsi`) VALUES
('11', 'ACEH'),
('12', 'SUMATERA UTARA'),
('13', 'SUMATERA BARAT'),
('14', 'RIAU'),
('15', 'JAMBI'),
('16', 'SUMATERA SELATAN'),
('17', 'BENGKULU'),
('18', 'LAMPUNG'),
('19', 'KEPULAUAN BANGKA BELITUNG'),
('21', 'KEPULAUAN RIAU'),
('31', 'DKI JAKARTA'),
('32', 'JAWA BARAT'),
('33', 'JAWA TENGAH'),
('34', 'DI YOGYAKARTA'),
('35', 'JAWA TIMUR'),
('36', 'BANTEN'),
('51', 'BALI'),
('52', 'NUSA TENGGARA BARAT'),
('53', 'NUSA TENGGARA TIMUR'),
('61', 'KALIMANTAN BARAT'),
('62', 'KALIMANTAN TENGAH'),
('63', 'KALIMANTAN SELATAN'),
('64', 'KALIMANTAN TIMUR'),
('65', 'KALIMANTAN UTARA'),
('71', 'SULAWESI UTARA'),
('72', 'SULAWESI TENGAH'),
('73', 'SULAWESI SELATAN'),
('74', 'SULAWESI TENGGARA'),
('75', 'GORONTALO'),
('76', 'SULAWESI BARAT'),
('81', 'MALUKU'),
('82', 'MALUKU UTARA'),
('91', 'PAPUA BARAT'),
('94', 'PAPUA');

-- --------------------------------------------------------

--
-- Table structure for table `spn-hakakses`
--

CREATE TABLE `spn-hakakses` (
  `id_users` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `hakakses` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tgl_create` datetime NOT NULL,
  `tgl_update` datetime NOT NULL,
  `user_create` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `user_update` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `spn-hakakses`
--

INSERT INTO `spn-hakakses` (`id_users`, `hakakses`, `tgl_create`, `tgl_update`, `user_create`, `user_update`) VALUES
('devira', 'Operator', '2016-09-28 11:32:57', '2016-09-28 11:32:57', 'alvian', 'alvian'),
('kamal', 'Operator', '2016-09-28 11:33:49', '2016-09-28 11:33:49', 'alvian', 'alvian');

-- --------------------------------------------------------

--
-- Table structure for table `spn-hakakses-wilayah`
--

CREATE TABLE `spn-hakakses-wilayah` (
  `id_provinsi` varchar(2) COLLATE utf8_unicode_ci NOT NULL,
  `id_kabkot` varchar(4) COLLATE utf8_unicode_ci NOT NULL,
  `id_users` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tgl_create` datetime NOT NULL,
  `tgl_update` datetime NOT NULL,
  `user_create` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `user_update` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `spn-hakakses-wilayah`
--

INSERT INTO `spn-hakakses-wilayah` (`id_provinsi`, `id_kabkot`, `id_users`, `tgl_create`, `tgl_update`, `user_create`, `user_update`) VALUES
('11', '1101', 'devira', '2016-09-28 11:32:57', '2016-09-28 11:32:57', 'alvian', 'alvian'),
('11', '1101', 'kamal', '2016-09-28 11:33:49', '2016-09-28 11:33:49', 'alvian', 'alvian'),
('11', '1102', 'devira', '2016-09-28 11:32:57', '2016-09-28 11:32:57', 'alvian', 'alvian'),
('11', '1102', 'kamal', '2016-09-28 11:33:49', '2016-09-28 11:33:49', 'alvian', 'alvian'),
('11', '1103', 'devira', '2016-09-28 11:32:57', '2016-09-28 11:32:57', 'alvian', 'alvian'),
('11', '1103', 'kamal', '2016-09-28 11:33:49', '2016-09-28 11:33:49', 'alvian', 'alvian'),
('11', '1104', 'devira', '2016-09-28 11:32:57', '2016-09-28 11:32:57', 'alvian', 'alvian'),
('11', '1104', 'kamal', '2016-09-28 11:33:49', '2016-09-28 11:33:49', 'alvian', 'alvian'),
('11', '1105', 'devira', '2016-09-28 11:32:57', '2016-09-28 11:32:57', 'alvian', 'alvian'),
('11', '1105', 'kamal', '2016-09-28 11:33:49', '2016-09-28 11:33:49', 'alvian', 'alvian'),
('11', '1106', 'devira', '2016-09-28 11:32:57', '2016-09-28 11:32:57', 'alvian', 'alvian'),
('11', '1106', 'kamal', '2016-09-28 11:33:49', '2016-09-28 11:33:49', 'alvian', 'alvian'),
('11', '1107', 'devira', '2016-09-28 11:32:57', '2016-09-28 11:32:57', 'alvian', 'alvian'),
('11', '1107', 'kamal', '2016-09-28 11:33:49', '2016-09-28 11:33:49', 'alvian', 'alvian'),
('11', '1108', 'devira', '2016-09-28 11:32:57', '2016-09-28 11:32:57', 'alvian', 'alvian'),
('11', '1108', 'kamal', '2016-09-28 11:33:49', '2016-09-28 11:33:49', 'alvian', 'alvian'),
('11', '1109', 'devira', '2016-09-28 11:32:57', '2016-09-28 11:32:57', 'alvian', 'alvian'),
('11', '1110', 'kamal', '2016-09-28 11:33:49', '2016-09-28 11:33:49', 'alvian', 'alvian'),
('11', '1111', 'kamal', '2016-09-28 11:33:49', '2016-09-28 11:33:49', 'alvian', 'alvian'),
('11', '1112', 'kamal', '2016-09-28 11:33:49', '2016-09-28 11:33:49', 'alvian', 'alvian'),
('11', '1113', 'kamal', '2016-09-28 11:33:49', '2016-09-28 11:33:49', 'alvian', 'alvian');

-- --------------------------------------------------------

--
-- Table structure for table `spn-kabkot`
--

CREATE TABLE `spn-kabkot` (
  `id_kabkot` varchar(4) COLLATE utf8_unicode_ci NOT NULL,
  `id_provinsi` varchar(2) COLLATE utf8_unicode_ci NOT NULL,
  `nama_kabkot` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `spn-kabkot`
--

INSERT INTO `spn-kabkot` (`id_kabkot`, `id_provinsi`, `nama_kabkot`) VALUES
('1101', '11', 'KABUPATEN SIMEULUE'),
('1102', '11', 'KABUPATEN ACEH SINGKIL'),
('1103', '11', 'KABUPATEN ACEH SELATAN'),
('1104', '11', 'KABUPATEN ACEH TENGGARA'),
('1105', '11', 'KABUPATEN ACEH TIMUR'),
('1106', '11', 'KABUPATEN ACEH TENGAH'),
('1107', '11', 'KABUPATEN ACEH BARAT'),
('1108', '11', 'KABUPATEN ACEH BESAR'),
('1109', '11', 'KABUPATEN PIDIE'),
('1110', '11', 'KABUPATEN BIREUEN'),
('1111', '11', 'KABUPATEN ACEH UTARA'),
('1112', '11', 'KABUPATEN ACEH BARAT DAYA'),
('1113', '11', 'KABUPATEN GAYO LUES'),
('1114', '11', 'KABUPATEN ACEH TAMIANG'),
('1115', '11', 'KABUPATEN NAGAN RAYA'),
('1116', '11', 'KABUPATEN ACEH JAYA'),
('1117', '11', 'KABUPATEN BENER MERIAH'),
('1118', '11', 'KABUPATEN PIDIE JAYA'),
('1171', '11', 'KOTA BANDA ACEH'),
('1172', '11', 'KOTA SABANG'),
('1173', '11', 'KOTA LANGSA'),
('1174', '11', 'KOTA LHOKSEUMAWE'),
('1175', '11', 'KOTA SUBULUSSALAM'),
('1201', '12', 'KABUPATEN NIAS'),
('1202', '12', 'KABUPATEN MANDAILING NATAL'),
('1203', '12', 'KABUPATEN TAPANULI SELATAN'),
('1204', '12', 'KABUPATEN TAPANULI TENGAH'),
('1205', '12', 'KABUPATEN TAPANULI UTARA'),
('1206', '12', 'KABUPATEN TOBA SAMOSIR'),
('1207', '12', 'KABUPATEN LABUHAN BATU'),
('1208', '12', 'KABUPATEN ASAHAN'),
('1209', '12', 'KABUPATEN SIMALUNGUN'),
('1210', '12', 'KABUPATEN DAIRI'),
('1211', '12', 'KABUPATEN KARO'),
('1212', '12', 'KABUPATEN DELI SERDANG'),
('1213', '12', 'KABUPATEN LANGKAT'),
('1214', '12', 'KABUPATEN NIAS SELATAN'),
('1215', '12', 'KABUPATEN HUMBANG HASUNDUTAN'),
('1216', '12', 'KABUPATEN PAKPAK BHARAT'),
('1217', '12', 'KABUPATEN SAMOSIR'),
('1218', '12', 'KABUPATEN SERDANG BEDAGAI'),
('1219', '12', 'KABUPATEN BATU BARA'),
('1220', '12', 'KABUPATEN PADANG LAWAS UTARA'),
('1221', '12', 'KABUPATEN PADANG LAWAS'),
('1222', '12', 'KABUPATEN LABUHAN BATU SELATAN'),
('1223', '12', 'KABUPATEN LABUHAN BATU UTARA'),
('1224', '12', 'KABUPATEN NIAS UTARA'),
('1225', '12', 'KABUPATEN NIAS BARAT'),
('1271', '12', 'KOTA SIBOLGA'),
('1272', '12', 'KOTA TANJUNG BALAI'),
('1273', '12', 'KOTA PEMATANG SIANTAR'),
('1274', '12', 'KOTA TEBING TINGGI'),
('1275', '12', 'KOTA MEDAN'),
('1276', '12', 'KOTA BINJAI'),
('1277', '12', 'KOTA PADANGSIDIMPUAN'),
('1278', '12', 'KOTA GUNUNGSITOLI'),
('1301', '13', 'KABUPATEN KEPULAUAN MENTAWAI'),
('1302', '13', 'KABUPATEN PESISIR SELATAN'),
('1303', '13', 'KABUPATEN SOLOK'),
('1304', '13', 'KABUPATEN SIJUNJUNG'),
('1305', '13', 'KABUPATEN TANAH DATAR'),
('1306', '13', 'KABUPATEN PADANG PARIAMAN'),
('1307', '13', 'KABUPATEN AGAM'),
('1308', '13', 'KABUPATEN LIMA PULUH KOTA'),
('1309', '13', 'KABUPATEN PASAMAN'),
('1310', '13', 'KABUPATEN SOLOK SELATAN'),
('1311', '13', 'KABUPATEN DHARMASRAYA'),
('1312', '13', 'KABUPATEN PASAMAN BARAT'),
('1371', '13', 'KOTA PADANG'),
('1372', '13', 'KOTA SOLOK'),
('1373', '13', 'KOTA SAWAH LUNTO'),
('1374', '13', 'KOTA PADANG PANJANG'),
('1375', '13', 'KOTA BUKITTINGGI'),
('1376', '13', 'KOTA PAYAKUMBUH'),
('1377', '13', 'KOTA PARIAMAN'),
('1401', '14', 'KABUPATEN KUANTAN SINGINGI'),
('1402', '14', 'KABUPATEN INDRAGIRI HULU'),
('1403', '14', 'KABUPATEN INDRAGIRI HILIR'),
('1404', '14', 'KABUPATEN PELALAWAN'),
('1405', '14', 'KABUPATEN S I A K'),
('1406', '14', 'KABUPATEN KAMPAR'),
('1407', '14', 'KABUPATEN ROKAN HULU'),
('1408', '14', 'KABUPATEN BENGKALIS'),
('1409', '14', 'KABUPATEN ROKAN HILIR'),
('1410', '14', 'KABUPATEN KEPULAUAN MERANTI'),
('1471', '14', 'KOTA PEKANBARU'),
('1473', '14', 'KOTA D U M A I'),
('1501', '15', 'KABUPATEN KERINCI'),
('1502', '15', 'KABUPATEN MERANGIN'),
('1503', '15', 'KABUPATEN SAROLANGUN'),
('1504', '15', 'KABUPATEN BATANG HARI'),
('1505', '15', 'KABUPATEN MUARO JAMBI'),
('1506', '15', 'KABUPATEN TANJUNG JABUNG TIMUR'),
('1507', '15', 'KABUPATEN TANJUNG JABUNG BARAT'),
('1508', '15', 'KABUPATEN TEBO'),
('1509', '15', 'KABUPATEN BUNGO'),
('1571', '15', 'KOTA JAMBI'),
('1572', '15', 'KOTA SUNGAI PENUH'),
('1601', '16', 'KABUPATEN OGAN KOMERING ULU'),
('1602', '16', 'KABUPATEN OGAN KOMERING ILIR'),
('1603', '16', 'KABUPATEN MUARA ENIM'),
('1604', '16', 'KABUPATEN LAHAT'),
('1605', '16', 'KABUPATEN MUSI RAWAS'),
('1606', '16', 'KABUPATEN MUSI BANYUASIN'),
('1607', '16', 'KABUPATEN BANYU ASIN'),
('1608', '16', 'KABUPATEN OGAN KOMERING ULU SELATAN'),
('1609', '16', 'KABUPATEN OGAN KOMERING ULU TIMUR'),
('1610', '16', 'KABUPATEN OGAN ILIR'),
('1611', '16', 'KABUPATEN EMPAT LAWANG'),
('1612', '16', 'KABUPATEN PENUKAL ABAB LEMATANG ILIR'),
('1613', '16', 'KABUPATEN MUSI RAWAS UTARA'),
('1671', '16', 'KOTA PALEMBANG'),
('1672', '16', 'KOTA PRABUMULIH'),
('1673', '16', 'KOTA PAGAR ALAM'),
('1674', '16', 'KOTA LUBUKLINGGAU'),
('1701', '17', 'KABUPATEN BENGKULU SELATAN'),
('1702', '17', 'KABUPATEN REJANG LEBONG'),
('1703', '17', 'KABUPATEN BENGKULU UTARA'),
('1704', '17', 'KABUPATEN KAUR'),
('1705', '17', 'KABUPATEN SELUMA'),
('1706', '17', 'KABUPATEN MUKOMUKO'),
('1707', '17', 'KABUPATEN LEBONG'),
('1708', '17', 'KABUPATEN KEPAHIANG'),
('1709', '17', 'KABUPATEN BENGKULU TENGAH'),
('1771', '17', 'KOTA BENGKULU'),
('1801', '18', 'KABUPATEN LAMPUNG BARAT'),
('1802', '18', 'KABUPATEN TANGGAMUS'),
('1803', '18', 'KABUPATEN LAMPUNG SELATAN'),
('1804', '18', 'KABUPATEN LAMPUNG TIMUR'),
('1805', '18', 'KABUPATEN LAMPUNG TENGAH'),
('1806', '18', 'KABUPATEN LAMPUNG UTARA'),
('1807', '18', 'KABUPATEN WAY KANAN'),
('1808', '18', 'KABUPATEN TULANGBAWANG'),
('1809', '18', 'KABUPATEN PESAWARAN'),
('1810', '18', 'KABUPATEN PRINGSEWU'),
('1811', '18', 'KABUPATEN MESUJI'),
('1812', '18', 'KABUPATEN TULANG BAWANG BARAT'),
('1813', '18', 'KABUPATEN PESISIR BARAT'),
('1871', '18', 'KOTA BANDAR LAMPUNG'),
('1872', '18', 'KOTA METRO'),
('1901', '19', 'KABUPATEN BANGKA'),
('1902', '19', 'KABUPATEN BELITUNG'),
('1903', '19', 'KABUPATEN BANGKA BARAT'),
('1904', '19', 'KABUPATEN BANGKA TENGAH'),
('1905', '19', 'KABUPATEN BANGKA SELATAN'),
('1906', '19', 'KABUPATEN BELITUNG TIMUR'),
('1971', '19', 'KOTA PANGKAL PINANG'),
('2101', '21', 'KABUPATEN KARIMUN'),
('2102', '21', 'KABUPATEN BINTAN'),
('2103', '21', 'KABUPATEN NATUNA'),
('2104', '21', 'KABUPATEN LINGGA'),
('2105', '21', 'KABUPATEN KEPULAUAN ANAMBAS'),
('2171', '21', 'KOTA B A T A M'),
('2172', '21', 'KOTA TANJUNG PINANG'),
('3101', '31', 'KABUPATEN KEPULAUAN SERIBU'),
('3171', '31', 'KOTA JAKARTA SELATAN'),
('3172', '31', 'KOTA JAKARTA TIMUR'),
('3173', '31', 'KOTA JAKARTA PUSAT'),
('3174', '31', 'KOTA JAKARTA BARAT'),
('3175', '31', 'KOTA JAKARTA UTARA'),
('3201', '32', 'KABUPATEN BOGOR'),
('3202', '32', 'KABUPATEN SUKABUMI'),
('3203', '32', 'KABUPATEN CIANJUR'),
('3204', '32', 'KABUPATEN BANDUNG'),
('3205', '32', 'KABUPATEN GARUT'),
('3206', '32', 'KABUPATEN TASIKMALAYA'),
('3207', '32', 'KABUPATEN CIAMIS'),
('3208', '32', 'KABUPATEN KUNINGAN'),
('3209', '32', 'KABUPATEN CIREBON'),
('3210', '32', 'KABUPATEN MAJALENGKA'),
('3211', '32', 'KABUPATEN SUMEDANG'),
('3212', '32', 'KABUPATEN INDRAMAYU'),
('3213', '32', 'KABUPATEN SUBANG'),
('3214', '32', 'KABUPATEN PURWAKARTA'),
('3215', '32', 'KABUPATEN KARAWANG'),
('3216', '32', 'KABUPATEN BEKASI'),
('3217', '32', 'KABUPATEN BANDUNG BARAT'),
('3218', '32', 'KABUPATEN PANGANDARAN'),
('3271', '32', 'KOTA BOGOR'),
('3272', '32', 'KOTA SUKABUMI'),
('3273', '32', 'KOTA BANDUNG'),
('3274', '32', 'KOTA CIREBON'),
('3275', '32', 'KOTA BEKASI'),
('3276', '32', 'KOTA DEPOK'),
('3277', '32', 'KOTA CIMAHI'),
('3278', '32', 'KOTA TASIKMALAYA'),
('3279', '32', 'KOTA BANJAR'),
('3301', '33', 'KABUPATEN CILACAP'),
('3302', '33', 'KABUPATEN BANYUMAS'),
('3303', '33', 'KABUPATEN PURBALINGGA'),
('3304', '33', 'KABUPATEN BANJARNEGARA'),
('3305', '33', 'KABUPATEN KEBUMEN'),
('3306', '33', 'KABUPATEN PURWOREJO'),
('3307', '33', 'KABUPATEN WONOSOBO'),
('3308', '33', 'KABUPATEN MAGELANG'),
('3309', '33', 'KABUPATEN BOYOLALI'),
('3310', '33', 'KABUPATEN KLATEN'),
('3311', '33', 'KABUPATEN SUKOHARJO'),
('3312', '33', 'KABUPATEN WONOGIRI'),
('3313', '33', 'KABUPATEN KARANGANYAR'),
('3314', '33', 'KABUPATEN SRAGEN'),
('3315', '33', 'KABUPATEN GROBOGAN'),
('3316', '33', 'KABUPATEN BLORA'),
('3317', '33', 'KABUPATEN REMBANG'),
('3318', '33', 'KABUPATEN PATI'),
('3319', '33', 'KABUPATEN KUDUS'),
('3320', '33', 'KABUPATEN JEPARA'),
('3321', '33', 'KABUPATEN DEMAK'),
('3322', '33', 'KABUPATEN SEMARANG'),
('3323', '33', 'KABUPATEN TEMANGGUNG'),
('3324', '33', 'KABUPATEN KENDAL'),
('3325', '33', 'KABUPATEN BATANG'),
('3326', '33', 'KABUPATEN PEKALONGAN'),
('3327', '33', 'KABUPATEN PEMALANG'),
('3328', '33', 'KABUPATEN TEGAL'),
('3329', '33', 'KABUPATEN BREBES'),
('3371', '33', 'KOTA MAGELANG'),
('3372', '33', 'KOTA SURAKARTA'),
('3373', '33', 'KOTA SALATIGA'),
('3374', '33', 'KOTA SEMARANG'),
('3375', '33', 'KOTA PEKALONGAN'),
('3376', '33', 'KOTA TEGAL'),
('3401', '34', 'KABUPATEN KULON PROGO'),
('3402', '34', 'KABUPATEN BANTUL'),
('3403', '34', 'KABUPATEN GUNUNG KIDUL'),
('3404', '34', 'KABUPATEN SLEMAN'),
('3471', '34', 'KOTA YOGYAKARTA'),
('3501', '35', 'KABUPATEN PACITAN'),
('3502', '35', 'KABUPATEN PONOROGO'),
('3503', '35', 'KABUPATEN TRENGGALEK'),
('3504', '35', 'KABUPATEN TULUNGAGUNG'),
('3505', '35', 'KABUPATEN BLITAR'),
('3506', '35', 'KABUPATEN KEDIRI'),
('3507', '35', 'KABUPATEN MALANG'),
('3508', '35', 'KABUPATEN LUMAJANG'),
('3509', '35', 'KABUPATEN JEMBER'),
('3510', '35', 'KABUPATEN BANYUWANGI'),
('3511', '35', 'KABUPATEN BONDOWOSO'),
('3512', '35', 'KABUPATEN SITUBONDO'),
('3513', '35', 'KABUPATEN PROBOLINGGO'),
('3514', '35', 'KABUPATEN PASURUAN'),
('3515', '35', 'KABUPATEN SIDOARJO'),
('3516', '35', 'KABUPATEN MOJOKERTO'),
('3517', '35', 'KABUPATEN JOMBANG'),
('3518', '35', 'KABUPATEN NGANJUK'),
('3519', '35', 'KABUPATEN MADIUN'),
('3520', '35', 'KABUPATEN MAGETAN'),
('3521', '35', 'KABUPATEN NGAWI'),
('3522', '35', 'KABUPATEN BOJONEGORO'),
('3523', '35', 'KABUPATEN TUBAN'),
('3524', '35', 'KABUPATEN LAMONGAN'),
('3525', '35', 'KABUPATEN GRESIK'),
('3526', '35', 'KABUPATEN BANGKALAN'),
('3527', '35', 'KABUPATEN SAMPANG'),
('3528', '35', 'KABUPATEN PAMEKASAN'),
('3529', '35', 'KABUPATEN SUMENEP'),
('3571', '35', 'KOTA KEDIRI'),
('3572', '35', 'KOTA BLITAR'),
('3573', '35', 'KOTA MALANG'),
('3574', '35', 'KOTA PROBOLINGGO'),
('3575', '35', 'KOTA PASURUAN'),
('3576', '35', 'KOTA MOJOKERTO'),
('3577', '35', 'KOTA MADIUN'),
('3578', '35', 'KOTA SURABAYA'),
('3579', '35', 'KOTA BATU'),
('3601', '36', 'KABUPATEN PANDEGLANG'),
('3602', '36', 'KABUPATEN LEBAK'),
('3603', '36', 'KABUPATEN TANGERANG'),
('3604', '36', 'KABUPATEN SERANG'),
('3671', '36', 'KOTA TANGERANG'),
('3672', '36', 'KOTA CILEGON'),
('3673', '36', 'KOTA SERANG'),
('3674', '36', 'KOTA TANGERANG SELATAN'),
('5101', '51', 'KABUPATEN JEMBRANA'),
('5102', '51', 'KABUPATEN TABANAN'),
('5103', '51', 'KABUPATEN BADUNG'),
('5104', '51', 'KABUPATEN GIANYAR'),
('5105', '51', 'KABUPATEN KLUNGKUNG'),
('5106', '51', 'KABUPATEN BANGLI'),
('5107', '51', 'KABUPATEN KARANG ASEM'),
('5108', '51', 'KABUPATEN BULELENG'),
('5171', '51', 'KOTA DENPASAR'),
('5201', '52', 'KABUPATEN LOMBOK BARAT'),
('5202', '52', 'KABUPATEN LOMBOK TENGAH'),
('5203', '52', 'KABUPATEN LOMBOK TIMUR'),
('5204', '52', 'KABUPATEN SUMBAWA'),
('5205', '52', 'KABUPATEN DOMPU'),
('5206', '52', 'KABUPATEN BIMA'),
('5207', '52', 'KABUPATEN SUMBAWA BARAT'),
('5208', '52', 'KABUPATEN LOMBOK UTARA'),
('5271', '52', 'KOTA MATARAM'),
('5272', '52', 'KOTA BIMA'),
('5301', '53', 'KABUPATEN SUMBA BARAT'),
('5302', '53', 'KABUPATEN SUMBA TIMUR'),
('5303', '53', 'KABUPATEN KUPANG'),
('5304', '53', 'KABUPATEN TIMOR TENGAH SELATAN'),
('5305', '53', 'KABUPATEN TIMOR TENGAH UTARA'),
('5306', '53', 'KABUPATEN BELU'),
('5307', '53', 'KABUPATEN ALOR'),
('5308', '53', 'KABUPATEN LEMBATA'),
('5309', '53', 'KABUPATEN FLORES TIMUR'),
('5310', '53', 'KABUPATEN SIKKA'),
('5311', '53', 'KABUPATEN ENDE'),
('5312', '53', 'KABUPATEN NGADA'),
('5313', '53', 'KABUPATEN MANGGARAI'),
('5314', '53', 'KABUPATEN ROTE NDAO'),
('5315', '53', 'KABUPATEN MANGGARAI BARAT'),
('5316', '53', 'KABUPATEN SUMBA TENGAH'),
('5317', '53', 'KABUPATEN SUMBA BARAT DAYA'),
('5318', '53', 'KABUPATEN NAGEKEO'),
('5319', '53', 'KABUPATEN MANGGARAI TIMUR'),
('5320', '53', 'KABUPATEN SABU RAIJUA'),
('5321', '53', 'KABUPATEN MALAKA'),
('5371', '53', 'KOTA KUPANG'),
('6101', '61', 'KABUPATEN SAMBAS'),
('6102', '61', 'KABUPATEN BENGKAYANG'),
('6103', '61', 'KABUPATEN LANDAK'),
('6104', '61', 'KABUPATEN MEMPAWAH'),
('6105', '61', 'KABUPATEN SANGGAU'),
('6106', '61', 'KABUPATEN KETAPANG'),
('6107', '61', 'KABUPATEN SINTANG'),
('6108', '61', 'KABUPATEN KAPUAS HULU'),
('6109', '61', 'KABUPATEN SEKADAU'),
('6110', '61', 'KABUPATEN MELAWI'),
('6111', '61', 'KABUPATEN KAYONG UTARA'),
('6112', '61', 'KABUPATEN KUBU RAYA'),
('6171', '61', 'KOTA PONTIANAK'),
('6172', '61', 'KOTA SINGKAWANG'),
('6201', '62', 'KABUPATEN KOTAWARINGIN BARAT'),
('6202', '62', 'KABUPATEN KOTAWARINGIN TIMUR'),
('6203', '62', 'KABUPATEN KAPUAS'),
('6204', '62', 'KABUPATEN BARITO SELATAN'),
('6205', '62', 'KABUPATEN BARITO UTARA'),
('6206', '62', 'KABUPATEN SUKAMARA'),
('6207', '62', 'KABUPATEN LAMANDAU'),
('6208', '62', 'KABUPATEN SERUYAN'),
('6209', '62', 'KABUPATEN KATINGAN'),
('6210', '62', 'KABUPATEN PULANG PISAU'),
('6211', '62', 'KABUPATEN GUNUNG MAS'),
('6212', '62', 'KABUPATEN BARITO TIMUR'),
('6213', '62', 'KABUPATEN MURUNG RAYA'),
('6271', '62', 'KOTA PALANGKA RAYA'),
('6301', '63', 'KABUPATEN TANAH LAUT'),
('6302', '63', 'KABUPATEN KOTA BARU'),
('6303', '63', 'KABUPATEN BANJAR'),
('6304', '63', 'KABUPATEN BARITO KUALA'),
('6305', '63', 'KABUPATEN TAPIN'),
('6306', '63', 'KABUPATEN HULU SUNGAI SELATAN'),
('6307', '63', 'KABUPATEN HULU SUNGAI TENGAH'),
('6308', '63', 'KABUPATEN HULU SUNGAI UTARA'),
('6309', '63', 'KABUPATEN TABALONG'),
('6310', '63', 'KABUPATEN TANAH BUMBU'),
('6311', '63', 'KABUPATEN BALANGAN'),
('6371', '63', 'KOTA BANJARMASIN'),
('6372', '63', 'KOTA BANJAR BARU'),
('6401', '64', 'KABUPATEN PASER'),
('6402', '64', 'KABUPATEN KUTAI BARAT'),
('6403', '64', 'KABUPATEN KUTAI KARTANEGARA'),
('6404', '64', 'KABUPATEN KUTAI TIMUR'),
('6405', '64', 'KABUPATEN BERAU'),
('6409', '64', 'KABUPATEN PENAJAM PASER UTARA'),
('6411', '64', 'KABUPATEN MAHAKAM HULU'),
('6471', '64', 'KOTA BALIKPAPAN'),
('6472', '64', 'KOTA SAMARINDA'),
('6474', '64', 'KOTA BONTANG'),
('6501', '65', 'KABUPATEN MALINAU'),
('6502', '65', 'KABUPATEN BULUNGAN'),
('6503', '65', 'KABUPATEN TANA TIDUNG'),
('6504', '65', 'KABUPATEN NUNUKAN'),
('6571', '65', 'KOTA TARAKAN'),
('7101', '71', 'KABUPATEN BOLAANG MONGONDOW'),
('7102', '71', 'KABUPATEN MINAHASA'),
('7103', '71', 'KABUPATEN KEPULAUAN SANGIHE'),
('7104', '71', 'KABUPATEN KEPULAUAN TALAUD'),
('7105', '71', 'KABUPATEN MINAHASA SELATAN'),
('7106', '71', 'KABUPATEN MINAHASA UTARA'),
('7107', '71', 'KABUPATEN BOLAANG MONGONDOW UTARA'),
('7108', '71', 'KABUPATEN SIAU TAGULANDANG BIARO'),
('7109', '71', 'KABUPATEN MINAHASA TENGGARA'),
('7110', '71', 'KABUPATEN BOLAANG MONGONDOW SELATAN'),
('7111', '71', 'KABUPATEN BOLAANG MONGONDOW TIMUR'),
('7171', '71', 'KOTA MANADO'),
('7172', '71', 'KOTA BITUNG'),
('7173', '71', 'KOTA TOMOHON'),
('7174', '71', 'KOTA KOTAMOBAGU'),
('7201', '72', 'KABUPATEN BANGGAI KEPULAUAN'),
('7202', '72', 'KABUPATEN BANGGAI'),
('7203', '72', 'KABUPATEN MOROWALI'),
('7204', '72', 'KABUPATEN POSO'),
('7205', '72', 'KABUPATEN DONGGALA'),
('7206', '72', 'KABUPATEN TOLI-TOLI'),
('7207', '72', 'KABUPATEN BUOL'),
('7208', '72', 'KABUPATEN PARIGI MOUTONG'),
('7209', '72', 'KABUPATEN TOJO UNA-UNA'),
('7210', '72', 'KABUPATEN SIGI'),
('7211', '72', 'KABUPATEN BANGGAI LAUT'),
('7212', '72', 'KABUPATEN MOROWALI UTARA'),
('7271', '72', 'KOTA PALU'),
('7301', '73', 'KABUPATEN KEPULAUAN SELAYAR'),
('7302', '73', 'KABUPATEN BULUKUMBA'),
('7303', '73', 'KABUPATEN BANTAENG'),
('7304', '73', 'KABUPATEN JENEPONTO'),
('7305', '73', 'KABUPATEN TAKALAR'),
('7306', '73', 'KABUPATEN GOWA'),
('7307', '73', 'KABUPATEN SINJAI'),
('7308', '73', 'KABUPATEN MAROS'),
('7309', '73', 'KABUPATEN PANGKAJENE DAN KEPULAUAN'),
('7310', '73', 'KABUPATEN BARRU'),
('7311', '73', 'KABUPATEN BONE'),
('7312', '73', 'KABUPATEN SOPPENG'),
('7313', '73', 'KABUPATEN WAJO'),
('7314', '73', 'KABUPATEN SIDENRENG RAPPANG'),
('7315', '73', 'KABUPATEN PINRANG'),
('7316', '73', 'KABUPATEN ENREKANG'),
('7317', '73', 'KABUPATEN LUWU'),
('7318', '73', 'KABUPATEN TANA TORAJA'),
('7322', '73', 'KABUPATEN LUWU UTARA'),
('7325', '73', 'KABUPATEN LUWU TIMUR'),
('7326', '73', 'KABUPATEN TORAJA UTARA'),
('7371', '73', 'KOTA MAKASSAR'),
('7372', '73', 'KOTA PAREPARE'),
('7373', '73', 'KOTA PALOPO'),
('7401', '74', 'KABUPATEN BUTON'),
('7402', '74', 'KABUPATEN MUNA'),
('7403', '74', 'KABUPATEN KONAWE'),
('7404', '74', 'KABUPATEN KOLAKA'),
('7405', '74', 'KABUPATEN KONAWE SELATAN'),
('7406', '74', 'KABUPATEN BOMBANA'),
('7407', '74', 'KABUPATEN WAKATOBI'),
('7408', '74', 'KABUPATEN KOLAKA UTARA'),
('7409', '74', 'KABUPATEN BUTON UTARA'),
('7410', '74', 'KABUPATEN KONAWE UTARA'),
('7411', '74', 'KABUPATEN KOLAKA TIMUR'),
('7412', '74', 'KABUPATEN KONAWE KEPULAUAN'),
('7413', '74', 'KABUPATEN MUNA BARAT'),
('7414', '74', 'KABUPATEN BUTON TENGAH'),
('7415', '74', 'KABUPATEN BUTON SELATAN'),
('7471', '74', 'KOTA KENDARI'),
('7472', '74', 'KOTA BAUBAU'),
('7501', '75', 'KABUPATEN BOALEMO'),
('7502', '75', 'KABUPATEN GORONTALO'),
('7503', '75', 'KABUPATEN POHUWATO'),
('7504', '75', 'KABUPATEN BONE BOLANGO'),
('7505', '75', 'KABUPATEN GORONTALO UTARA'),
('7571', '75', 'KOTA GORONTALO'),
('7601', '76', 'KABUPATEN MAJENE'),
('7602', '76', 'KABUPATEN POLEWALI MANDAR'),
('7603', '76', 'KABUPATEN MAMASA'),
('7604', '76', 'KABUPATEN MAMUJU'),
('7605', '76', 'KABUPATEN MAMUJU UTARA'),
('7606', '76', 'KABUPATEN MAMUJU TENGAH'),
('8101', '81', 'KABUPATEN MALUKU TENGGARA BARAT'),
('8102', '81', 'KABUPATEN MALUKU TENGGARA'),
('8103', '81', 'KABUPATEN MALUKU TENGAH'),
('8104', '81', 'KABUPATEN BURU'),
('8105', '81', 'KABUPATEN KEPULAUAN ARU'),
('8106', '81', 'KABUPATEN SERAM BAGIAN BARAT'),
('8107', '81', 'KABUPATEN SERAM BAGIAN TIMUR'),
('8108', '81', 'KABUPATEN MALUKU BARAT DAYA'),
('8109', '81', 'KABUPATEN BURU SELATAN'),
('8171', '81', 'KOTA AMBON'),
('8172', '81', 'KOTA TUAL'),
('8201', '82', 'KABUPATEN HALMAHERA BARAT'),
('8202', '82', 'KABUPATEN HALMAHERA TENGAH'),
('8203', '82', 'KABUPATEN KEPULAUAN SULA'),
('8204', '82', 'KABUPATEN HALMAHERA SELATAN'),
('8205', '82', 'KABUPATEN HALMAHERA UTARA'),
('8206', '82', 'KABUPATEN HALMAHERA TIMUR'),
('8207', '82', 'KABUPATEN PULAU MOROTAI'),
('8208', '82', 'KABUPATEN PULAU TALIABU'),
('8271', '82', 'KOTA TERNATE'),
('8272', '82', 'KOTA TIDORE KEPULAUAN'),
('9101', '91', 'KABUPATEN FAKFAK'),
('9102', '91', 'KABUPATEN KAIMANA'),
('9103', '91', 'KABUPATEN TELUK WONDAMA'),
('9104', '91', 'KABUPATEN TELUK BINTUNI'),
('9105', '91', 'KABUPATEN MANOKWARI'),
('9106', '91', 'KABUPATEN SORONG SELATAN'),
('9107', '91', 'KABUPATEN SORONG'),
('9108', '91', 'KABUPATEN RAJA AMPAT'),
('9109', '91', 'KABUPATEN TAMBRAUW'),
('9110', '91', 'KABUPATEN MAYBRAT'),
('9111', '91', 'KABUPATEN MANOKWARI SELATAN'),
('9112', '91', 'KABUPATEN PEGUNUNGAN ARFAK'),
('9171', '91', 'KOTA SORONG'),
('9401', '94', 'KABUPATEN MERAUKE'),
('9402', '94', 'KABUPATEN JAYAWIJAYA'),
('9403', '94', 'KABUPATEN JAYAPURA'),
('9404', '94', 'KABUPATEN NABIRE'),
('9408', '94', 'KABUPATEN KEPULAUAN YAPEN'),
('9409', '94', 'KABUPATEN BIAK NUMFOR'),
('9410', '94', 'KABUPATEN PANIAI'),
('9411', '94', 'KABUPATEN PUNCAK JAYA'),
('9412', '94', 'KABUPATEN MIMIKA'),
('9413', '94', 'KABUPATEN BOVEN DIGOEL'),
('9414', '94', 'KABUPATEN MAPPI'),
('9415', '94', 'KABUPATEN ASMAT'),
('9416', '94', 'KABUPATEN YAHUKIMO'),
('9417', '94', 'KABUPATEN PEGUNUNGAN BINTANG'),
('9418', '94', 'KABUPATEN TOLIKARA'),
('9419', '94', 'KABUPATEN SARMI'),
('9420', '94', 'KABUPATEN KEEROM'),
('9426', '94', 'KABUPATEN WAROPEN'),
('9427', '94', 'KABUPATEN SUPIORI'),
('9428', '94', 'KABUPATEN MAMBERAMO RAYA'),
('9429', '94', 'KABUPATEN NDUGA'),
('9430', '94', 'KABUPATEN LANNY JAYA'),
('9431', '94', 'KABUPATEN MAMBERAMO TENGAH'),
('9432', '94', 'KABUPATEN YALIMO'),
('9433', '94', 'KABUPATEN PUNCAK'),
('9434', '94', 'KABUPATEN DOGIYAI'),
('9435', '94', 'KABUPATEN INTAN JAYA'),
('9436', '94', 'KABUPATEN DEIYAI'),
('9471', '94', 'KOTA JAYAPURA');

-- --------------------------------------------------------

--
-- Table structure for table `spn-pencacahan`
--

CREATE TABLE `spn-pencacahan` (
  `id_provinsi` varchar(2) COLLATE utf8_unicode_ci NOT NULL,
  `id_kabkot` varchar(4) COLLATE utf8_unicode_ci NOT NULL,
  `jumlah` int(11) NOT NULL,
  `target` int(11) NOT NULL,
  `tgl_create` datetime NOT NULL,
  `tgl_update` datetime NOT NULL,
  `user_create` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `user_update` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `spn-pencacahan`
--

INSERT INTO `spn-pencacahan` (`id_provinsi`, `id_kabkot`, `jumlah`, `target`, `tgl_create`, `tgl_update`, `user_create`, `user_update`) VALUES
('11', '1101', 1098, 1405, '2016-09-24 14:43:31', '2016-09-25 12:13:36', 'alvian', 'alvian'),
('11', '1102', 1117, 1117, '2016-09-24 14:43:31', '2016-09-25 12:13:47', 'alvian', 'alvian'),
('11', '1103', 0, 1086, '2016-09-24 14:43:31', '2016-09-24 14:43:31', 'alvian', 'alvian'),
('11', '1104', 0, 1312, '2016-09-24 14:43:31', '2016-09-24 14:43:31', 'alvian', 'alvian'),
('11', '1105', 0, 1297, '2016-09-24 14:43:31', '2016-09-24 14:43:31', 'alvian', 'alvian'),
('11', '1106', 0, 1445, '2016-09-24 14:43:31', '2016-09-24 14:43:31', 'alvian', 'alvian'),
('11', '1107', 0, 1809, '2016-09-24 14:43:31', '2016-09-24 14:43:31', 'alvian', 'alvian'),
('11', '1108', 0, 1176, '2016-09-24 14:43:31', '2016-09-24 14:43:31', 'alvian', 'alvian'),
('11', '1109', 0, 1868, '2016-09-24 14:43:31', '2016-09-24 14:43:31', 'alvian', 'alvian'),
('11', '1110', 0, 1289, '2016-09-24 14:43:31', '2016-09-24 14:43:31', 'alvian', 'alvian'),
('11', '1111', 0, 1872, '2016-09-24 14:43:31', '2016-09-24 14:43:31', 'alvian', 'alvian'),
('11', '1112', 0, 1731, '2016-09-24 14:43:31', '2016-09-24 14:43:31', 'alvian', 'alvian'),
('11', '1113', 0, 1039, '2016-09-24 14:43:31', '2016-09-24 14:43:31', 'alvian', 'alvian'),
('11', '1114', 0, 1052, '2016-09-24 14:43:31', '2016-09-24 14:43:31', 'alvian', 'alvian'),
('11', '1115', 0, 1701, '2016-09-24 14:43:31', '2016-09-24 14:43:31', 'alvian', 'alvian'),
('11', '1116', 0, 1576, '2016-09-24 14:43:31', '2016-09-24 14:43:31', 'alvian', 'alvian'),
('11', '1117', 0, 1300, '2016-09-24 14:43:31', '2016-09-24 14:43:31', 'alvian', 'alvian'),
('11', '1118', 0, 1873, '2016-09-24 14:43:31', '2016-09-24 14:43:31', 'alvian', 'alvian'),
('11', '1171', 0, 1064, '2016-09-24 14:43:31', '2016-09-24 14:43:31', 'alvian', 'alvian'),
('11', '1172', 0, 1320, '2016-09-24 14:43:31', '2016-09-24 14:43:31', 'alvian', 'alvian'),
('11', '1173', 0, 1545, '2016-09-24 14:43:31', '2016-09-24 14:43:31', 'alvian', 'alvian'),
('11', '1174', 0, 1762, '2016-09-24 14:43:31', '2016-09-24 14:43:31', 'alvian', 'alvian'),
('11', '1175', 0, 1628, '2016-09-24 14:43:31', '2016-09-24 14:43:31', 'alvian', 'alvian'),
('12', '1201', 0, 1139, '2016-09-24 14:43:31', '2016-09-24 14:43:31', 'alvian', 'alvian'),
('12', '1202', 0, 1054, '2016-09-24 14:43:31', '2016-09-24 14:43:31', 'alvian', 'alvian'),
('12', '1203', 0, 1947, '2016-09-24 14:43:31', '2016-09-24 14:43:31', 'alvian', 'alvian'),
('12', '1204', 0, 1758, '2016-09-24 14:43:31', '2016-09-24 14:43:31', 'alvian', 'alvian'),
('12', '1205', 0, 1244, '2016-09-24 14:43:31', '2016-09-24 14:43:31', 'alvian', 'alvian'),
('12', '1206', 0, 1793, '2016-09-24 14:43:31', '2016-09-24 14:43:31', 'alvian', 'alvian'),
('12', '1207', 0, 1258, '2016-09-24 14:43:31', '2016-09-24 14:43:31', 'alvian', 'alvian'),
('12', '1208', 0, 1757, '2016-09-24 14:43:31', '2016-09-24 14:43:31', 'alvian', 'alvian'),
('12', '1209', 0, 1575, '2016-09-24 14:43:31', '2016-09-24 14:43:31', 'alvian', 'alvian'),
('12', '1210', 0, 1746, '2016-09-24 14:43:31', '2016-09-24 14:43:31', 'alvian', 'alvian'),
('12', '1211', 0, 1572, '2016-09-24 14:43:31', '2016-09-24 14:43:31', 'alvian', 'alvian'),
('12', '1212', 0, 1421, '2016-09-24 14:43:31', '2016-09-24 14:43:31', 'alvian', 'alvian'),
('12', '1213', 0, 1728, '2016-09-24 14:43:31', '2016-09-24 14:43:31', 'alvian', 'alvian'),
('12', '1214', 0, 1639, '2016-09-24 14:43:31', '2016-09-24 14:43:31', 'alvian', 'alvian'),
('12', '1215', 0, 1087, '2016-09-24 14:43:31', '2016-09-24 14:43:31', 'alvian', 'alvian'),
('12', '1216', 0, 1447, '2016-09-24 14:43:31', '2016-09-24 14:43:31', 'alvian', 'alvian'),
('12', '1217', 0, 1840, '2016-09-24 14:43:31', '2016-09-24 14:43:31', 'alvian', 'alvian'),
('12', '1218', 0, 1699, '2016-09-24 14:43:31', '2016-09-24 14:43:31', 'alvian', 'alvian'),
('12', '1219', 0, 1340, '2016-09-24 14:43:31', '2016-09-24 14:43:31', 'alvian', 'alvian'),
('12', '1220', 0, 1866, '2016-09-24 14:43:31', '2016-09-24 14:43:31', 'alvian', 'alvian'),
('12', '1221', 0, 1425, '2016-09-24 14:43:31', '2016-09-24 14:43:31', 'alvian', 'alvian'),
('12', '1222', 0, 1081, '2016-09-24 14:43:31', '2016-09-24 14:43:31', 'alvian', 'alvian'),
('12', '1223', 0, 1290, '2016-09-24 14:43:31', '2016-09-24 14:43:31', 'alvian', 'alvian'),
('12', '1224', 0, 1467, '2016-09-24 14:43:31', '2016-09-24 14:43:31', 'alvian', 'alvian'),
('12', '1225', 0, 1584, '2016-09-24 14:43:31', '2016-09-24 14:43:31', 'alvian', 'alvian'),
('12', '1271', 0, 1907, '2016-09-24 14:43:31', '2016-09-24 14:43:31', 'alvian', 'alvian'),
('12', '1272', 0, 1430, '2016-09-24 14:43:31', '2016-09-24 14:43:31', 'alvian', 'alvian'),
('12', '1273', 0, 1128, '2016-09-24 14:43:31', '2016-09-24 14:43:31', 'alvian', 'alvian'),
('12', '1274', 0, 1310, '2016-09-24 14:43:31', '2016-09-24 14:43:31', 'alvian', 'alvian'),
('12', '1275', 0, 1269, '2016-09-24 14:43:31', '2016-09-24 14:43:31', 'alvian', 'alvian'),
('12', '1276', 0, 1047, '2016-09-24 14:43:31', '2016-09-24 14:43:31', 'alvian', 'alvian'),
('12', '1277', 0, 1746, '2016-09-24 14:43:31', '2016-09-24 14:43:31', 'alvian', 'alvian'),
('12', '1278', 0, 1523, '2016-09-24 14:43:31', '2016-09-24 14:43:31', 'alvian', 'alvian'),
('13', '1301', 0, 1673, '2016-09-24 14:43:31', '2016-09-24 14:43:31', 'alvian', 'alvian'),
('13', '1302', 0, 1421, '2016-09-24 14:43:31', '2016-09-24 14:43:31', 'alvian', 'alvian'),
('13', '1303', 0, 1197, '2016-09-24 14:43:31', '2016-09-24 14:43:31', 'alvian', 'alvian'),
('13', '1304', 0, 1920, '2016-09-24 14:43:31', '2016-09-24 14:43:31', 'alvian', 'alvian'),
('13', '1305', 0, 1795, '2016-09-24 14:43:31', '2016-09-24 14:43:31', 'alvian', 'alvian'),
('13', '1306', 0, 1006, '2016-09-24 14:43:31', '2016-09-24 14:43:31', 'alvian', 'alvian'),
('13', '1307', 0, 1810, '2016-09-24 14:43:31', '2016-09-24 14:43:31', 'alvian', 'alvian'),
('13', '1308', 0, 1408, '2016-09-24 14:43:31', '2016-09-24 14:43:31', 'alvian', 'alvian'),
('13', '1309', 0, 1576, '2016-09-24 14:43:31', '2016-09-24 14:43:31', 'alvian', 'alvian'),
('13', '1310', 0, 1752, '2016-09-24 14:43:31', '2016-09-24 14:43:31', 'alvian', 'alvian'),
('13', '1311', 0, 1760, '2016-09-24 14:43:31', '2016-09-24 14:43:31', 'alvian', 'alvian'),
('13', '1312', 0, 1989, '2016-09-24 14:43:31', '2016-09-24 14:43:31', 'alvian', 'alvian'),
('13', '1371', 0, 1379, '2016-09-24 14:43:31', '2016-09-24 14:43:31', 'alvian', 'alvian'),
('13', '1372', 0, 1030, '2016-09-24 14:43:31', '2016-09-24 14:43:31', 'alvian', 'alvian'),
('13', '1373', 0, 1338, '2016-09-24 14:43:31', '2016-09-24 14:43:31', 'alvian', 'alvian'),
('13', '1374', 0, 1526, '2016-09-24 14:43:31', '2016-09-24 14:43:31', 'alvian', 'alvian'),
('13', '1375', 0, 1585, '2016-09-24 14:43:31', '2016-09-24 14:43:31', 'alvian', 'alvian'),
('13', '1376', 0, 1737, '2016-09-24 14:43:31', '2016-09-24 14:43:31', 'alvian', 'alvian'),
('13', '1377', 0, 1935, '2016-09-24 14:43:31', '2016-09-24 14:43:31', 'alvian', 'alvian'),
('14', '1401', 0, 1925, '2016-09-24 14:43:31', '2016-09-24 14:43:31', 'alvian', 'alvian'),
('14', '1402', 0, 1209, '2016-09-24 14:43:31', '2016-09-24 14:43:31', 'alvian', 'alvian'),
('14', '1403', 0, 1749, '2016-09-24 14:43:31', '2016-09-24 14:43:31', 'alvian', 'alvian'),
('14', '1404', 0, 1211, '2016-09-24 14:43:31', '2016-09-24 14:43:31', 'alvian', 'alvian'),
('14', '1405', 0, 1538, '2016-09-24 14:43:31', '2016-09-24 14:43:31', 'alvian', 'alvian'),
('14', '1406', 0, 1984, '2016-09-24 14:43:31', '2016-09-24 14:43:31', 'alvian', 'alvian'),
('14', '1407', 0, 1362, '2016-09-24 14:43:31', '2016-09-24 14:43:31', 'alvian', 'alvian'),
('14', '1408', 0, 1340, '2016-09-24 14:43:31', '2016-09-24 14:43:31', 'alvian', 'alvian'),
('14', '1409', 0, 1186, '2016-09-24 14:43:31', '2016-09-24 14:43:31', 'alvian', 'alvian'),
('14', '1410', 0, 1856, '2016-09-24 14:43:31', '2016-09-24 14:43:31', 'alvian', 'alvian'),
('14', '1471', 0, 1638, '2016-09-24 14:43:31', '2016-09-24 14:43:31', 'alvian', 'alvian'),
('14', '1473', 0, 1280, '2016-09-24 14:43:31', '2016-09-24 14:43:31', 'alvian', 'alvian'),
('15', '1501', 0, 1429, '2016-09-24 14:43:31', '2016-09-24 14:43:31', 'alvian', 'alvian'),
('15', '1502', 0, 1523, '2016-09-24 14:43:31', '2016-09-24 14:43:31', 'alvian', 'alvian'),
('15', '1503', 1553, 1553, '2016-09-24 14:43:31', '2016-09-25 12:19:50', 'alvian', 'alvian'),
('15', '1504', 0, 1962, '2016-09-24 14:43:31', '2016-09-24 14:43:31', 'alvian', 'alvian'),
('15', '1505', 0, 1595, '2016-09-24 14:43:31', '2016-09-24 14:43:31', 'alvian', 'alvian'),
('15', '1506', 0, 1949, '2016-09-24 14:43:31', '2016-09-24 14:43:31', 'alvian', 'alvian'),
('15', '1507', 0, 1911, '2016-09-24 14:43:31', '2016-09-24 14:43:31', 'alvian', 'alvian'),
('15', '1508', 0, 1457, '2016-09-24 14:43:31', '2016-09-24 14:43:31', 'alvian', 'alvian'),
('15', '1509', 0, 1905, '2016-09-24 14:43:31', '2016-09-24 14:43:31', 'alvian', 'alvian'),
('15', '1571', 0, 1271, '2016-09-24 14:43:31', '2016-09-24 14:43:31', 'alvian', 'alvian'),
('15', '1572', 0, 1724, '2016-09-24 14:43:31', '2016-09-24 14:43:31', 'alvian', 'alvian'),
('16', '1601', 0, 1246, '2016-09-24 14:43:31', '2016-09-24 14:43:31', 'alvian', 'alvian'),
('16', '1602', 0, 1265, '2016-09-24 14:43:31', '2016-09-24 14:43:31', 'alvian', 'alvian'),
('16', '1603', 0, 1820, '2016-09-24 14:43:31', '2016-09-24 14:43:31', 'alvian', 'alvian'),
('16', '1604', 0, 1382, '2016-09-24 14:43:31', '2016-09-24 14:43:31', 'alvian', 'alvian'),
('16', '1605', 0, 1995, '2016-09-24 14:43:31', '2016-09-24 14:43:31', 'alvian', 'alvian'),
('16', '1606', 0, 1059, '2016-09-24 14:43:31', '2016-09-24 14:43:31', 'alvian', 'alvian'),
('16', '1607', 0, 1057, '2016-09-24 14:43:31', '2016-09-24 14:43:31', 'alvian', 'alvian'),
('16', '1608', 0, 1703, '2016-09-24 14:43:31', '2016-09-24 14:43:31', 'alvian', 'alvian'),
('16', '1609', 0, 1136, '2016-09-24 14:43:31', '2016-09-24 14:43:31', 'alvian', 'alvian'),
('16', '1610', 0, 1542, '2016-09-24 14:43:31', '2016-09-24 14:43:31', 'alvian', 'alvian'),
('16', '1611', 0, 1704, '2016-09-24 14:43:31', '2016-09-24 14:43:31', 'alvian', 'alvian'),
('16', '1612', 0, 1523, '2016-09-24 14:43:31', '2016-09-24 14:43:31', 'alvian', 'alvian'),
('16', '1613', 0, 1518, '2016-09-24 14:43:31', '2016-09-24 14:43:31', 'alvian', 'alvian'),
('16', '1671', 0, 1401, '2016-09-24 14:43:31', '2016-09-24 14:43:31', 'alvian', 'alvian'),
('16', '1672', 0, 1980, '2016-09-24 14:43:31', '2016-09-24 14:43:31', 'alvian', 'alvian'),
('16', '1673', 0, 1307, '2016-09-24 14:43:31', '2016-09-24 14:43:31', 'alvian', 'alvian'),
('16', '1674', 0, 1946, '2016-09-24 14:43:31', '2016-09-24 14:43:31', 'alvian', 'alvian'),
('17', '1701', 0, 1202, '2016-09-24 14:43:31', '2016-09-24 14:43:31', 'alvian', 'alvian'),
('17', '1702', 0, 1823, '2016-09-24 14:43:31', '2016-09-24 14:43:31', 'alvian', 'alvian');

-- --------------------------------------------------------

--
-- Table structure for table `spn-pencacahan-hist`
--

CREATE TABLE `spn-pencacahan-hist` (
  `id_provinsi` varchar(2) COLLATE utf8_unicode_ci NOT NULL,
  `id_kabkot` varchar(4) COLLATE utf8_unicode_ci NOT NULL,
  `jumlah` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `target` int(11) NOT NULL,
  `tgl_create` datetime NOT NULL,
  `tgl_update` datetime NOT NULL,
  `user_create` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `user_update` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `spn-pencacahan-hist`
--

INSERT INTO `spn-pencacahan-hist` (`id_provinsi`, `id_kabkot`, `jumlah`, `target`, `tgl_create`, `tgl_update`, `user_create`, `user_update`) VALUES
('11', '1101', '0', 1405, '2016-09-24 14:43:31', '2016-09-24 14:43:31', 'alvian', 'alvian'),
('11', '1101', '1200', 1405, '2016-09-24 15:10:59', '2016-09-24 15:10:59', 'alvian', 'alvian'),
('11', '1101', '1117', 1405, '2016-09-25 12:12:26', '2016-09-25 12:12:26', 'alvian', 'alvian'),
('11', '1101', '1098', 1405, '2016-09-25 12:13:07', '2016-09-25 12:13:07', 'alvian', 'alvian'),
('11', '1101', '1117', 1405, '2016-09-25 12:13:19', '2016-09-25 12:13:19', 'alvian', 'alvian'),
('11', '1101', '1098', 1405, '2016-09-25 12:13:36', '2016-09-25 12:13:36', 'alvian', 'alvian'),
('11', '1102', '0', 1117, '2016-09-24 14:43:31', '2016-09-24 14:43:31', 'alvian', 'alvian'),
('11', '1102', '1117', 1117, '2016-09-25 12:13:47', '2016-09-25 12:13:47', 'alvian', 'alvian'),
('11', '1103', '0', 1086, '2016-09-24 14:43:31', '2016-09-24 14:43:31', 'alvian', 'alvian'),
('11', '1104', '0', 1312, '2016-09-24 14:43:31', '2016-09-24 14:43:31', 'alvian', 'alvian'),
('11', '1105', '0', 1297, '2016-09-24 14:43:31', '2016-09-24 14:43:31', 'alvian', 'alvian'),
('11', '1106', '0', 1445, '2016-09-24 14:43:31', '2016-09-24 14:43:31', 'alvian', 'alvian'),
('11', '1107', '0', 1809, '2016-09-24 14:43:31', '2016-09-24 14:43:31', 'alvian', 'alvian'),
('11', '1108', '0', 1176, '2016-09-24 14:43:31', '2016-09-24 14:43:31', 'alvian', 'alvian'),
('11', '1109', '0', 1868, '2016-09-24 14:43:31', '2016-09-24 14:43:31', 'alvian', 'alvian'),
('11', '1110', '0', 1289, '2016-09-24 14:43:31', '2016-09-24 14:43:31', 'alvian', 'alvian'),
('11', '1111', '0', 1872, '2016-09-24 14:43:31', '2016-09-24 14:43:31', 'alvian', 'alvian'),
('11', '1112', '0', 1731, '2016-09-24 14:43:31', '2016-09-24 14:43:31', 'alvian', 'alvian'),
('11', '1113', '0', 1039, '2016-09-24 14:43:31', '2016-09-24 14:43:31', 'alvian', 'alvian'),
('11', '1114', '0', 1052, '2016-09-24 14:43:31', '2016-09-24 14:43:31', 'alvian', 'alvian'),
('11', '1115', '0', 1701, '2016-09-24 14:43:31', '2016-09-24 14:43:31', 'alvian', 'alvian'),
('11', '1116', '0', 1576, '2016-09-24 14:43:31', '2016-09-24 14:43:31', 'alvian', 'alvian'),
('11', '1117', '0', 1300, '2016-09-24 14:43:31', '2016-09-24 14:43:31', 'alvian', 'alvian'),
('11', '1118', '0', 1873, '2016-09-24 14:43:31', '2016-09-24 14:43:31', 'alvian', 'alvian'),
('11', '1171', '0', 1064, '2016-09-24 14:43:31', '2016-09-24 14:43:31', 'alvian', 'alvian'),
('11', '1172', '0', 1320, '2016-09-24 14:43:31', '2016-09-24 14:43:31', 'alvian', 'alvian'),
('11', '1173', '0', 1545, '2016-09-24 14:43:31', '2016-09-24 14:43:31', 'alvian', 'alvian'),
('11', '1174', '0', 1762, '2016-09-24 14:43:31', '2016-09-24 14:43:31', 'alvian', 'alvian'),
('11', '1175', '0', 1628, '2016-09-24 14:43:31', '2016-09-24 14:43:31', 'alvian', 'alvian'),
('12', '1201', '0', 1139, '2016-09-24 14:43:31', '2016-09-24 14:43:31', 'alvian', 'alvian'),
('12', '1202', '0', 1054, '2016-09-24 14:43:31', '2016-09-24 14:43:31', 'alvian', 'alvian'),
('12', '1203', '0', 1947, '2016-09-24 14:43:31', '2016-09-24 14:43:31', 'alvian', 'alvian'),
('12', '1204', '0', 1758, '2016-09-24 14:43:31', '2016-09-24 14:43:31', 'alvian', 'alvian'),
('12', '1205', '0', 1244, '2016-09-24 14:43:31', '2016-09-24 14:43:31', 'alvian', 'alvian'),
('12', '1206', '0', 1793, '2016-09-24 14:43:31', '2016-09-24 14:43:31', 'alvian', 'alvian'),
('12', '1207', '0', 1258, '2016-09-24 14:43:31', '2016-09-24 14:43:31', 'alvian', 'alvian'),
('12', '1208', '0', 1757, '2016-09-24 14:43:31', '2016-09-24 14:43:31', 'alvian', 'alvian'),
('12', '1209', '0', 1575, '2016-09-24 14:43:31', '2016-09-24 14:43:31', 'alvian', 'alvian'),
('12', '1210', '0', 1746, '2016-09-24 14:43:31', '2016-09-24 14:43:31', 'alvian', 'alvian'),
('12', '1211', '0', 1572, '2016-09-24 14:43:31', '2016-09-24 14:43:31', 'alvian', 'alvian'),
('12', '1212', '0', 1421, '2016-09-24 14:43:31', '2016-09-24 14:43:31', 'alvian', 'alvian'),
('12', '1213', '0', 1728, '2016-09-24 14:43:31', '2016-09-24 14:43:31', 'alvian', 'alvian'),
('12', '1214', '0', 1639, '2016-09-24 14:43:31', '2016-09-24 14:43:31', 'alvian', 'alvian'),
('12', '1215', '0', 1087, '2016-09-24 14:43:31', '2016-09-24 14:43:31', 'alvian', 'alvian'),
('12', '1216', '0', 1447, '2016-09-24 14:43:31', '2016-09-24 14:43:31', 'alvian', 'alvian'),
('12', '1217', '0', 1840, '2016-09-24 14:43:31', '2016-09-24 14:43:31', 'alvian', 'alvian'),
('12', '1218', '0', 1699, '2016-09-24 14:43:31', '2016-09-24 14:43:31', 'alvian', 'alvian'),
('12', '1219', '0', 1340, '2016-09-24 14:43:31', '2016-09-24 14:43:31', 'alvian', 'alvian'),
('12', '1220', '0', 1866, '2016-09-24 14:43:31', '2016-09-24 14:43:31', 'alvian', 'alvian'),
('12', '1221', '0', 1425, '2016-09-24 14:43:31', '2016-09-24 14:43:31', 'alvian', 'alvian'),
('12', '1222', '0', 1081, '2016-09-24 14:43:31', '2016-09-24 14:43:31', 'alvian', 'alvian'),
('12', '1223', '0', 1290, '2016-09-24 14:43:31', '2016-09-24 14:43:31', 'alvian', 'alvian'),
('12', '1224', '0', 1467, '2016-09-24 14:43:31', '2016-09-24 14:43:31', 'alvian', 'alvian'),
('12', '1225', '0', 1584, '2016-09-24 14:43:31', '2016-09-24 14:43:31', 'alvian', 'alvian'),
('12', '1271', '0', 1907, '2016-09-24 14:43:31', '2016-09-24 14:43:31', 'alvian', 'alvian'),
('12', '1272', '0', 1430, '2016-09-24 14:43:31', '2016-09-24 14:43:31', 'alvian', 'alvian'),
('12', '1273', '0', 1128, '2016-09-24 14:43:31', '2016-09-24 14:43:31', 'alvian', 'alvian'),
('12', '1274', '0', 1310, '2016-09-24 14:43:31', '2016-09-24 14:43:31', 'alvian', 'alvian'),
('12', '1275', '0', 1269, '2016-09-24 14:43:31', '2016-09-24 14:43:31', 'alvian', 'alvian'),
('12', '1276', '0', 1047, '2016-09-24 14:43:31', '2016-09-24 14:43:31', 'alvian', 'alvian'),
('12', '1277', '0', 1746, '2016-09-24 14:43:31', '2016-09-24 14:43:31', 'alvian', 'alvian'),
('12', '1278', '0', 1523, '2016-09-24 14:43:31', '2016-09-24 14:43:31', 'alvian', 'alvian'),
('13', '1301', '0', 1673, '2016-09-24 14:43:31', '2016-09-24 14:43:31', 'alvian', 'alvian'),
('13', '1302', '0', 1421, '2016-09-24 14:43:31', '2016-09-24 14:43:31', 'alvian', 'alvian'),
('13', '1303', '0', 1197, '2016-09-24 14:43:31', '2016-09-24 14:43:31', 'alvian', 'alvian'),
('13', '1304', '0', 1920, '2016-09-24 14:43:31', '2016-09-24 14:43:31', 'alvian', 'alvian'),
('13', '1305', '0', 1795, '2016-09-24 14:43:31', '2016-09-24 14:43:31', 'alvian', 'alvian'),
('13', '1306', '0', 1006, '2016-09-24 14:43:31', '2016-09-24 14:43:31', 'alvian', 'alvian'),
('13', '1307', '0', 1810, '2016-09-24 14:43:31', '2016-09-24 14:43:31', 'alvian', 'alvian'),
('13', '1308', '0', 1408, '2016-09-24 14:43:31', '2016-09-24 14:43:31', 'alvian', 'alvian'),
('13', '1309', '0', 1576, '2016-09-24 14:43:31', '2016-09-24 14:43:31', 'alvian', 'alvian'),
('13', '1310', '0', 1752, '2016-09-24 14:43:31', '2016-09-24 14:43:31', 'alvian', 'alvian'),
('13', '1311', '0', 1760, '2016-09-24 14:43:31', '2016-09-24 14:43:31', 'alvian', 'alvian'),
('13', '1312', '0', 1989, '2016-09-24 14:43:31', '2016-09-24 14:43:31', 'alvian', 'alvian'),
('13', '1371', '0', 1379, '2016-09-24 14:43:31', '2016-09-24 14:43:31', 'alvian', 'alvian'),
('13', '1372', '0', 1030, '2016-09-24 14:43:31', '2016-09-24 14:43:31', 'alvian', 'alvian'),
('13', '1373', '0', 1338, '2016-09-24 14:43:31', '2016-09-24 14:43:31', 'alvian', 'alvian'),
('13', '1374', '0', 1526, '2016-09-24 14:43:31', '2016-09-24 14:43:31', 'alvian', 'alvian'),
('13', '1375', '0', 1585, '2016-09-24 14:43:31', '2016-09-24 14:43:31', 'alvian', 'alvian'),
('13', '1376', '0', 1737, '2016-09-24 14:43:31', '2016-09-24 14:43:31', 'alvian', 'alvian'),
('13', '1377', '0', 1935, '2016-09-24 14:43:31', '2016-09-24 14:43:31', 'alvian', 'alvian'),
('14', '1401', '0', 1925, '2016-09-24 14:43:31', '2016-09-24 14:43:31', 'alvian', 'alvian'),
('14', '1402', '0', 1209, '2016-09-24 14:43:31', '2016-09-24 14:43:31', 'alvian', 'alvian'),
('14', '1403', '0', 1749, '2016-09-24 14:43:31', '2016-09-24 14:43:31', 'alvian', 'alvian'),
('14', '1404', '0', 1211, '2016-09-24 14:43:31', '2016-09-24 14:43:31', 'alvian', 'alvian'),
('14', '1405', '0', 1538, '2016-09-24 14:43:31', '2016-09-24 14:43:31', 'alvian', 'alvian'),
('14', '1406', '0', 1984, '2016-09-24 14:43:31', '2016-09-24 14:43:31', 'alvian', 'alvian'),
('14', '1407', '0', 1362, '2016-09-24 14:43:31', '2016-09-24 14:43:31', 'alvian', 'alvian'),
('14', '1408', '0', 1340, '2016-09-24 14:43:31', '2016-09-24 14:43:31', 'alvian', 'alvian'),
('14', '1409', '0', 1186, '2016-09-24 14:43:31', '2016-09-24 14:43:31', 'alvian', 'alvian'),
('14', '1410', '0', 1856, '2016-09-24 14:43:31', '2016-09-24 14:43:31', 'alvian', 'alvian'),
('14', '1471', '0', 1638, '2016-09-24 14:43:31', '2016-09-24 14:43:31', 'alvian', 'alvian'),
('14', '1473', '0', 1280, '2016-09-24 14:43:31', '2016-09-24 14:43:31', 'alvian', 'alvian'),
('15', '1501', '0', 1429, '2016-09-24 14:43:31', '2016-09-24 14:43:31', 'alvian', 'alvian'),
('15', '1502', '0', 1523, '2016-09-24 14:43:31', '2016-09-24 14:43:31', 'alvian', 'alvian'),
('15', '1503', '0', 1553, '2016-09-24 14:43:31', '2016-09-24 14:43:31', 'alvian', 'alvian'),
('15', '1503', '1595', 1553, '2016-09-25 12:18:36', '2016-09-25 12:18:36', 'alvian', 'alvian'),
('15', '1503', '1553', 1553, '2016-09-25 12:19:50', '2016-09-25 12:19:50', 'alvian', 'alvian'),
('15', '1504', '0', 1962, '2016-09-24 14:43:31', '2016-09-24 14:43:31', 'alvian', 'alvian'),
('15', '1505', '0', 1595, '2016-09-24 14:43:31', '2016-09-24 14:43:31', 'alvian', 'alvian'),
('15', '1506', '0', 1949, '2016-09-24 14:43:31', '2016-09-24 14:43:31', 'alvian', 'alvian'),
('15', '1507', '0', 1911, '2016-09-24 14:43:31', '2016-09-24 14:43:31', 'alvian', 'alvian'),
('15', '1508', '0', 1457, '2016-09-24 14:43:31', '2016-09-24 14:43:31', 'alvian', 'alvian'),
('15', '1509', '0', 1905, '2016-09-24 14:43:31', '2016-09-24 14:43:31', 'alvian', 'alvian'),
('15', '1571', '0', 1271, '2016-09-24 14:43:31', '2016-09-24 14:43:31', 'alvian', 'alvian'),
('15', '1572', '0', 1724, '2016-09-24 14:43:31', '2016-09-24 14:43:31', 'alvian', 'alvian'),
('16', '1601', '0', 1246, '2016-09-24 14:43:31', '2016-09-24 14:43:31', 'alvian', 'alvian'),
('16', '1602', '0', 1265, '2016-09-24 14:43:31', '2016-09-24 14:43:31', 'alvian', 'alvian'),
('16', '1603', '0', 1820, '2016-09-24 14:43:31', '2016-09-24 14:43:31', 'alvian', 'alvian'),
('16', '1604', '0', 1382, '2016-09-24 14:43:31', '2016-09-24 14:43:31', 'alvian', 'alvian'),
('16', '1605', '0', 1995, '2016-09-24 14:43:31', '2016-09-24 14:43:31', 'alvian', 'alvian'),
('16', '1606', '0', 1059, '2016-09-24 14:43:31', '2016-09-24 14:43:31', 'alvian', 'alvian'),
('16', '1607', '0', 1057, '2016-09-24 14:43:31', '2016-09-24 14:43:31', 'alvian', 'alvian'),
('16', '1608', '0', 1703, '2016-09-24 14:43:31', '2016-09-24 14:43:31', 'alvian', 'alvian'),
('16', '1609', '0', 1136, '2016-09-24 14:43:31', '2016-09-24 14:43:31', 'alvian', 'alvian'),
('16', '1610', '0', 1542, '2016-09-24 14:43:31', '2016-09-24 14:43:31', 'alvian', 'alvian'),
('16', '1611', '0', 1704, '2016-09-24 14:43:31', '2016-09-24 14:43:31', 'alvian', 'alvian'),
('16', '1612', '0', 1523, '2016-09-24 14:43:31', '2016-09-24 14:43:31', 'alvian', 'alvian'),
('16', '1613', '0', 1518, '2016-09-24 14:43:31', '2016-09-24 14:43:31', 'alvian', 'alvian'),
('16', '1671', '0', 1401, '2016-09-24 14:43:31', '2016-09-24 14:43:31', 'alvian', 'alvian'),
('16', '1672', '0', 1980, '2016-09-24 14:43:31', '2016-09-24 14:43:31', 'alvian', 'alvian'),
('16', '1673', '0', 1307, '2016-09-24 14:43:31', '2016-09-24 14:43:31', 'alvian', 'alvian'),
('16', '1674', '0', 1946, '2016-09-24 14:43:31', '2016-09-24 14:43:31', 'alvian', 'alvian'),
('17', '1701', '0', 1202, '2016-09-24 14:43:31', '2016-09-24 14:43:31', 'alvian', 'alvian');

-- --------------------------------------------------------

--
-- Table structure for table `spn-pencacahan-histgl`
--

CREATE TABLE `spn-pencacahan-histgl` (
  `id_provinsi` varchar(2) COLLATE utf8_unicode_ci NOT NULL,
  `id_kabkot` varchar(4) COLLATE utf8_unicode_ci NOT NULL,
  `jumlah` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `target` int(11) NOT NULL,
  `tgl_create` date NOT NULL,
  `tgl_update` datetime NOT NULL,
  `user_create` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `user_update` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `spn-pencacahan-histgl`
--

INSERT INTO `spn-pencacahan-histgl` (`id_provinsi`, `id_kabkot`, `jumlah`, `target`, `tgl_create`, `tgl_update`, `user_create`, `user_update`) VALUES
('11', '1101', '1098', 1405, '2016-09-24', '2016-09-25 12:13:36', 'alvian', 'alvian'),
('11', '1101', '1098', 1405, '2016-09-25', '2016-09-25 12:13:36', 'alvian', 'alvian'),
('11', '1102', '0', 1117, '2016-09-24', '2016-09-24 14:43:31', 'alvian', 'alvian'),
('11', '1102', '1117', 1117, '2016-09-25', '2016-09-25 12:13:47', 'alvian', 'alvian'),
('11', '1103', '0', 1086, '2016-09-24', '2016-09-24 14:43:31', 'alvian', 'alvian'),
('11', '1104', '0', 1312, '2016-09-24', '2016-09-24 14:43:31', 'alvian', 'alvian'),
('11', '1105', '0', 1297, '2016-09-24', '2016-09-24 14:43:31', 'alvian', 'alvian'),
('11', '1106', '0', 1445, '2016-09-24', '2016-09-24 14:43:31', 'alvian', 'alvian'),
('11', '1107', '0', 1809, '2016-09-24', '2016-09-24 14:43:31', 'alvian', 'alvian'),
('11', '1108', '0', 1176, '2016-09-24', '2016-09-24 14:43:31', 'alvian', 'alvian'),
('11', '1109', '0', 1868, '2016-09-24', '2016-09-24 14:43:31', 'alvian', 'alvian'),
('11', '1110', '0', 1289, '2016-09-24', '2016-09-24 14:43:31', 'alvian', 'alvian'),
('11', '1111', '0', 1872, '2016-09-24', '2016-09-24 14:43:31', 'alvian', 'alvian'),
('11', '1112', '0', 1731, '2016-09-24', '2016-09-24 14:43:31', 'alvian', 'alvian'),
('11', '1113', '0', 1039, '2016-09-24', '2016-09-24 14:43:31', 'alvian', 'alvian'),
('11', '1114', '0', 1052, '2016-09-24', '2016-09-24 14:43:31', 'alvian', 'alvian'),
('11', '1115', '0', 1701, '2016-09-24', '2016-09-24 14:43:31', 'alvian', 'alvian'),
('11', '1116', '0', 1576, '2016-09-24', '2016-09-24 14:43:31', 'alvian', 'alvian'),
('11', '1117', '0', 1300, '2016-09-24', '2016-09-24 14:43:31', 'alvian', 'alvian'),
('11', '1118', '0', 1873, '2016-09-24', '2016-09-24 14:43:31', 'alvian', 'alvian'),
('11', '1171', '0', 1064, '2016-09-24', '2016-09-24 14:43:31', 'alvian', 'alvian'),
('11', '1172', '0', 1320, '2016-09-24', '2016-09-24 14:43:31', 'alvian', 'alvian'),
('11', '1173', '0', 1545, '2016-09-24', '2016-09-24 14:43:31', 'alvian', 'alvian'),
('11', '1174', '0', 1762, '2016-09-24', '2016-09-24 14:43:31', 'alvian', 'alvian'),
('11', '1175', '0', 1628, '2016-09-24', '2016-09-24 14:43:31', 'alvian', 'alvian'),
('12', '1201', '0', 1139, '2016-09-24', '2016-09-24 14:43:31', 'alvian', 'alvian'),
('12', '1202', '0', 1054, '2016-09-24', '2016-09-24 14:43:31', 'alvian', 'alvian'),
('12', '1203', '0', 1947, '2016-09-24', '2016-09-24 14:43:31', 'alvian', 'alvian'),
('12', '1204', '0', 1758, '2016-09-24', '2016-09-24 14:43:31', 'alvian', 'alvian'),
('12', '1205', '0', 1244, '2016-09-24', '2016-09-24 14:43:31', 'alvian', 'alvian'),
('12', '1206', '0', 1793, '2016-09-24', '2016-09-24 14:43:31', 'alvian', 'alvian'),
('12', '1207', '0', 1258, '2016-09-24', '2016-09-24 14:43:31', 'alvian', 'alvian'),
('12', '1208', '0', 1757, '2016-09-24', '2016-09-24 14:43:31', 'alvian', 'alvian'),
('12', '1209', '0', 1575, '2016-09-24', '2016-09-24 14:43:31', 'alvian', 'alvian'),
('12', '1210', '0', 1746, '2016-09-24', '2016-09-24 14:43:31', 'alvian', 'alvian'),
('12', '1211', '0', 1572, '2016-09-24', '2016-09-24 14:43:31', 'alvian', 'alvian'),
('12', '1212', '0', 1421, '2016-09-24', '2016-09-24 14:43:31', 'alvian', 'alvian'),
('12', '1213', '0', 1728, '2016-09-24', '2016-09-24 14:43:31', 'alvian', 'alvian'),
('12', '1214', '0', 1639, '2016-09-24', '2016-09-24 14:43:31', 'alvian', 'alvian'),
('12', '1215', '0', 1087, '2016-09-24', '2016-09-24 14:43:31', 'alvian', 'alvian'),
('12', '1216', '0', 1447, '2016-09-24', '2016-09-24 14:43:31', 'alvian', 'alvian'),
('12', '1217', '0', 1840, '2016-09-24', '2016-09-24 14:43:31', 'alvian', 'alvian'),
('12', '1218', '0', 1699, '2016-09-24', '2016-09-24 14:43:31', 'alvian', 'alvian'),
('12', '1219', '0', 1340, '2016-09-24', '2016-09-24 14:43:31', 'alvian', 'alvian'),
('12', '1220', '0', 1866, '2016-09-24', '2016-09-24 14:43:31', 'alvian', 'alvian'),
('12', '1221', '0', 1425, '2016-09-24', '2016-09-24 14:43:31', 'alvian', 'alvian'),
('12', '1222', '0', 1081, '2016-09-24', '2016-09-24 14:43:31', 'alvian', 'alvian'),
('12', '1223', '0', 1290, '2016-09-24', '2016-09-24 14:43:31', 'alvian', 'alvian'),
('12', '1224', '0', 1467, '2016-09-24', '2016-09-24 14:43:31', 'alvian', 'alvian'),
('12', '1225', '0', 1584, '2016-09-24', '2016-09-24 14:43:31', 'alvian', 'alvian'),
('12', '1271', '0', 1907, '2016-09-24', '2016-09-24 14:43:31', 'alvian', 'alvian'),
('12', '1272', '0', 1430, '2016-09-24', '2016-09-24 14:43:31', 'alvian', 'alvian'),
('12', '1273', '0', 1128, '2016-09-24', '2016-09-24 14:43:31', 'alvian', 'alvian'),
('12', '1274', '0', 1310, '2016-09-24', '2016-09-24 14:43:31', 'alvian', 'alvian'),
('12', '1275', '0', 1269, '2016-09-24', '2016-09-24 14:43:31', 'alvian', 'alvian'),
('12', '1276', '0', 1047, '2016-09-24', '2016-09-24 14:43:31', 'alvian', 'alvian'),
('12', '1277', '0', 1746, '2016-09-24', '2016-09-24 14:43:31', 'alvian', 'alvian'),
('12', '1278', '0', 1523, '2016-09-24', '2016-09-24 14:43:31', 'alvian', 'alvian'),
('13', '1301', '0', 1673, '2016-09-24', '2016-09-24 14:43:31', 'alvian', 'alvian'),
('13', '1302', '0', 1421, '2016-09-24', '2016-09-24 14:43:31', 'alvian', 'alvian'),
('13', '1303', '0', 1197, '2016-09-24', '2016-09-24 14:43:31', 'alvian', 'alvian'),
('13', '1304', '0', 1920, '2016-09-24', '2016-09-24 14:43:31', 'alvian', 'alvian'),
('13', '1305', '0', 1795, '2016-09-24', '2016-09-24 14:43:31', 'alvian', 'alvian'),
('13', '1306', '0', 1006, '2016-09-24', '2016-09-24 14:43:31', 'alvian', 'alvian'),
('13', '1307', '0', 1810, '2016-09-24', '2016-09-24 14:43:31', 'alvian', 'alvian'),
('13', '1308', '0', 1408, '2016-09-24', '2016-09-24 14:43:31', 'alvian', 'alvian'),
('13', '1309', '0', 1576, '2016-09-24', '2016-09-24 14:43:31', 'alvian', 'alvian'),
('13', '1310', '0', 1752, '2016-09-24', '2016-09-24 14:43:31', 'alvian', 'alvian'),
('13', '1311', '0', 1760, '2016-09-24', '2016-09-24 14:43:31', 'alvian', 'alvian'),
('13', '1312', '0', 1989, '2016-09-24', '2016-09-24 14:43:31', 'alvian', 'alvian'),
('13', '1371', '0', 1379, '2016-09-24', '2016-09-24 14:43:31', 'alvian', 'alvian'),
('13', '1372', '0', 1030, '2016-09-24', '2016-09-24 14:43:31', 'alvian', 'alvian'),
('13', '1373', '0', 1338, '2016-09-24', '2016-09-24 14:43:31', 'alvian', 'alvian'),
('13', '1374', '0', 1526, '2016-09-24', '2016-09-24 14:43:31', 'alvian', 'alvian'),
('13', '1375', '0', 1585, '2016-09-24', '2016-09-24 14:43:31', 'alvian', 'alvian'),
('13', '1376', '0', 1737, '2016-09-24', '2016-09-24 14:43:31', 'alvian', 'alvian'),
('13', '1377', '0', 1935, '2016-09-24', '2016-09-24 14:43:31', 'alvian', 'alvian'),
('14', '1401', '0', 1925, '2016-09-24', '2016-09-24 14:43:31', 'alvian', 'alvian'),
('14', '1402', '0', 1209, '2016-09-24', '2016-09-24 14:43:31', 'alvian', 'alvian'),
('14', '1403', '0', 1749, '2016-09-24', '2016-09-24 14:43:31', 'alvian', 'alvian'),
('14', '1404', '0', 1211, '2016-09-24', '2016-09-24 14:43:31', 'alvian', 'alvian'),
('14', '1405', '0', 1538, '2016-09-24', '2016-09-24 14:43:31', 'alvian', 'alvian'),
('14', '1406', '0', 1984, '2016-09-24', '2016-09-24 14:43:31', 'alvian', 'alvian'),
('14', '1407', '0', 1362, '2016-09-24', '2016-09-24 14:43:31', 'alvian', 'alvian'),
('14', '1408', '0', 1340, '2016-09-24', '2016-09-24 14:43:31', 'alvian', 'alvian'),
('14', '1409', '0', 1186, '2016-09-24', '2016-09-24 14:43:31', 'alvian', 'alvian'),
('14', '1410', '0', 1856, '2016-09-24', '2016-09-24 14:43:31', 'alvian', 'alvian'),
('14', '1471', '0', 1638, '2016-09-24', '2016-09-24 14:43:31', 'alvian', 'alvian'),
('14', '1473', '0', 1280, '2016-09-24', '2016-09-24 14:43:31', 'alvian', 'alvian'),
('15', '1501', '0', 1429, '2016-09-24', '2016-09-24 14:43:31', 'alvian', 'alvian'),
('15', '1502', '0', 1523, '2016-09-24', '2016-09-24 14:43:31', 'alvian', 'alvian'),
('15', '1503', '1553', 1553, '2016-09-24', '2016-09-25 12:19:50', 'alvian', 'alvian'),
('15', '1503', '1553', 1553, '2016-09-25', '2016-09-25 12:19:50', 'alvian', 'alvian'),
('15', '1504', '0', 1962, '2016-09-24', '2016-09-24 14:43:31', 'alvian', 'alvian'),
('15', '1505', '0', 1595, '2016-09-24', '2016-09-24 14:43:31', 'alvian', 'alvian'),
('15', '1506', '0', 1949, '2016-09-24', '2016-09-24 14:43:31', 'alvian', 'alvian'),
('15', '1507', '0', 1911, '2016-09-24', '2016-09-24 14:43:31', 'alvian', 'alvian'),
('15', '1508', '0', 1457, '2016-09-24', '2016-09-24 14:43:31', 'alvian', 'alvian'),
('15', '1509', '0', 1905, '2016-09-24', '2016-09-24 14:43:31', 'alvian', 'alvian'),
('15', '1571', '0', 1271, '2016-09-24', '2016-09-24 14:43:31', 'alvian', 'alvian'),
('15', '1572', '0', 1724, '2016-09-24', '2016-09-24 14:43:31', 'alvian', 'alvian'),
('16', '1601', '0', 1246, '2016-09-24', '2016-09-24 14:43:31', 'alvian', 'alvian'),
('16', '1602', '0', 1265, '2016-09-24', '2016-09-24 14:43:31', 'alvian', 'alvian'),
('16', '1603', '0', 1820, '2016-09-24', '2016-09-24 14:43:31', 'alvian', 'alvian'),
('16', '1604', '0', 1382, '2016-09-24', '2016-09-24 14:43:31', 'alvian', 'alvian'),
('16', '1605', '0', 1995, '2016-09-24', '2016-09-24 14:43:31', 'alvian', 'alvian'),
('16', '1606', '0', 1059, '2016-09-24', '2016-09-24 14:43:31', 'alvian', 'alvian'),
('16', '1607', '0', 1057, '2016-09-24', '2016-09-24 14:43:31', 'alvian', 'alvian'),
('16', '1608', '0', 1703, '2016-09-24', '2016-09-24 14:43:31', 'alvian', 'alvian'),
('16', '1609', '0', 1136, '2016-09-24', '2016-09-24 14:43:31', 'alvian', 'alvian'),
('16', '1610', '0', 1542, '2016-09-24', '2016-09-24 14:43:31', 'alvian', 'alvian'),
('16', '1611', '0', 1704, '2016-09-24', '2016-09-24 14:43:31', 'alvian', 'alvian'),
('16', '1612', '0', 1523, '2016-09-24', '2016-09-24 14:43:31', 'alvian', 'alvian'),
('16', '1613', '0', 1518, '2016-09-24', '2016-09-24 14:43:31', 'alvian', 'alvian'),
('16', '1671', '0', 1401, '2016-09-24', '2016-09-24 14:43:31', 'alvian', 'alvian'),
('16', '1672', '0', 1980, '2016-09-24', '2016-09-24 14:43:31', 'alvian', 'alvian'),
('16', '1673', '0', 1307, '2016-09-24', '2016-09-24 14:43:31', 'alvian', 'alvian'),
('16', '1674', '0', 1946, '2016-09-24', '2016-09-24 14:43:31', 'alvian', 'alvian'),
('17', '1701', '0', 1202, '2016-09-24', '2016-09-24 14:43:31', 'alvian', 'alvian');

-- --------------------------------------------------------

--
-- Table structure for table `spn-provinsi`
--

CREATE TABLE `spn-provinsi` (
  `id_provinsi` varchar(2) COLLATE utf8_unicode_ci NOT NULL,
  `nama_provinsi` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `spn-provinsi`
--

INSERT INTO `spn-provinsi` (`id_provinsi`, `nama_provinsi`) VALUES
('11', 'ACEH'),
('12', 'SUMATERA UTARA'),
('13', 'SUMATERA BARAT'),
('14', 'RIAU'),
('15', 'JAMBI'),
('16', 'SUMATERA SELATAN'),
('17', 'BENGKULU'),
('18', 'LAMPUNG'),
('19', 'KEPULAUAN BANGKA BELITUNG'),
('21', 'KEPULAUAN RIAU'),
('31', 'DKI JAKARTA'),
('32', 'JAWA BARAT'),
('33', 'JAWA TENGAH'),
('34', 'DI YOGYAKARTA'),
('35', 'JAWA TIMUR'),
('36', 'BANTEN'),
('51', 'BALI'),
('52', 'NUSA TENGGARA BARAT'),
('53', 'NUSA TENGGARA TIMUR'),
('61', 'KALIMANTAN BARAT'),
('62', 'KALIMANTAN TENGAH'),
('63', 'KALIMANTAN SELATAN'),
('64', 'KALIMANTAN TIMUR'),
('65', 'KALIMANTAN UTARA'),
('71', 'SULAWESI UTARA'),
('72', 'SULAWESI TENGAH'),
('73', 'SULAWESI SELATAN'),
('74', 'SULAWESI TENGGARA'),
('75', 'GORONTALO'),
('76', 'SULAWESI BARAT'),
('81', 'MALUKU'),
('82', 'MALUKU UTARA'),
('91', 'PAPUA BARAT'),
('94', 'PAPUA');

-- --------------------------------------------------------

--
-- Table structure for table `sth-hakakses`
--

CREATE TABLE `sth-hakakses` (
  `id_users` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `hakakses` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tgl_create` datetime NOT NULL,
  `tgl_update` datetime NOT NULL,
  `user_create` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `user_update` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sth-hakakses-wilayah`
--

CREATE TABLE `sth-hakakses-wilayah` (
  `id_provinsi` varchar(2) COLLATE utf8_unicode_ci NOT NULL,
  `id_kabkot` varchar(4) COLLATE utf8_unicode_ci NOT NULL,
  `id_users` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tgl_create` datetime NOT NULL,
  `tgl_update` datetime NOT NULL,
  `user_create` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `user_update` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sth-kabkot`
--

CREATE TABLE `sth-kabkot` (
  `id_kabkot` varchar(4) COLLATE utf8_unicode_ci NOT NULL,
  `id_provinsi` varchar(2) COLLATE utf8_unicode_ci NOT NULL,
  `nama_kabkot` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sth-kabkot`
--

INSERT INTO `sth-kabkot` (`id_kabkot`, `id_provinsi`, `nama_kabkot`) VALUES
('1101', '11', 'KABUPATEN SIMEULUE'),
('1102', '11', 'KABUPATEN ACEH SINGKIL'),
('1103', '11', 'KABUPATEN ACEH SELATAN'),
('1104', '11', 'KABUPATEN ACEH TENGGARA'),
('1105', '11', 'KABUPATEN ACEH TIMUR'),
('1106', '11', 'KABUPATEN ACEH TENGAH'),
('1107', '11', 'KABUPATEN ACEH BARAT'),
('1108', '11', 'KABUPATEN ACEH BESAR'),
('1109', '11', 'KABUPATEN PIDIE'),
('1110', '11', 'KABUPATEN BIREUEN'),
('1111', '11', 'KABUPATEN ACEH UTARA'),
('1112', '11', 'KABUPATEN ACEH BARAT DAYA'),
('1113', '11', 'KABUPATEN GAYO LUES'),
('1114', '11', 'KABUPATEN ACEH TAMIANG'),
('1115', '11', 'KABUPATEN NAGAN RAYA'),
('1116', '11', 'KABUPATEN ACEH JAYA'),
('1117', '11', 'KABUPATEN BENER MERIAH'),
('1118', '11', 'KABUPATEN PIDIE JAYA'),
('1171', '11', 'KOTA BANDA ACEH'),
('1172', '11', 'KOTA SABANG'),
('1173', '11', 'KOTA LANGSA'),
('1174', '11', 'KOTA LHOKSEUMAWE'),
('1175', '11', 'KOTA SUBULUSSALAM'),
('1201', '12', 'KABUPATEN NIAS'),
('1202', '12', 'KABUPATEN MANDAILING NATAL'),
('1203', '12', 'KABUPATEN TAPANULI SELATAN'),
('1204', '12', 'KABUPATEN TAPANULI TENGAH'),
('1205', '12', 'KABUPATEN TAPANULI UTARA'),
('1206', '12', 'KABUPATEN TOBA SAMOSIR'),
('1207', '12', 'KABUPATEN LABUHAN BATU'),
('1208', '12', 'KABUPATEN ASAHAN'),
('1209', '12', 'KABUPATEN SIMALUNGUN'),
('1210', '12', 'KABUPATEN DAIRI'),
('1211', '12', 'KABUPATEN KARO'),
('1212', '12', 'KABUPATEN DELI SERDANG'),
('1213', '12', 'KABUPATEN LANGKAT'),
('1214', '12', 'KABUPATEN NIAS SELATAN'),
('1215', '12', 'KABUPATEN HUMBANG HASUNDUTAN'),
('1216', '12', 'KABUPATEN PAKPAK BHARAT'),
('1217', '12', 'KABUPATEN SAMOSIR'),
('1218', '12', 'KABUPATEN SERDANG BEDAGAI'),
('1219', '12', 'KABUPATEN BATU BARA'),
('1220', '12', 'KABUPATEN PADANG LAWAS UTARA'),
('1221', '12', 'KABUPATEN PADANG LAWAS'),
('1222', '12', 'KABUPATEN LABUHAN BATU SELATAN'),
('1223', '12', 'KABUPATEN LABUHAN BATU UTARA'),
('1224', '12', 'KABUPATEN NIAS UTARA'),
('1225', '12', 'KABUPATEN NIAS BARAT'),
('1271', '12', 'KOTA SIBOLGA'),
('1272', '12', 'KOTA TANJUNG BALAI'),
('1273', '12', 'KOTA PEMATANG SIANTAR'),
('1274', '12', 'KOTA TEBING TINGGI'),
('1275', '12', 'KOTA MEDAN'),
('1276', '12', 'KOTA BINJAI'),
('1277', '12', 'KOTA PADANGSIDIMPUAN'),
('1278', '12', 'KOTA GUNUNGSITOLI'),
('1301', '13', 'KABUPATEN KEPULAUAN MENTAWAI'),
('1302', '13', 'KABUPATEN PESISIR SELATAN'),
('1303', '13', 'KABUPATEN SOLOK'),
('1304', '13', 'KABUPATEN SIJUNJUNG'),
('1305', '13', 'KABUPATEN TANAH DATAR'),
('1306', '13', 'KABUPATEN PADANG PARIAMAN'),
('1307', '13', 'KABUPATEN AGAM'),
('1308', '13', 'KABUPATEN LIMA PULUH KOTA'),
('1309', '13', 'KABUPATEN PASAMAN'),
('1310', '13', 'KABUPATEN SOLOK SELATAN'),
('1311', '13', 'KABUPATEN DHARMASRAYA'),
('1312', '13', 'KABUPATEN PASAMAN BARAT'),
('1371', '13', 'KOTA PADANG'),
('1372', '13', 'KOTA SOLOK'),
('1373', '13', 'KOTA SAWAH LUNTO'),
('1374', '13', 'KOTA PADANG PANJANG'),
('1375', '13', 'KOTA BUKITTINGGI'),
('1376', '13', 'KOTA PAYAKUMBUH'),
('1377', '13', 'KOTA PARIAMAN'),
('1401', '14', 'KABUPATEN KUANTAN SINGINGI'),
('1402', '14', 'KABUPATEN INDRAGIRI HULU'),
('1403', '14', 'KABUPATEN INDRAGIRI HILIR'),
('1404', '14', 'KABUPATEN PELALAWAN'),
('1405', '14', 'KABUPATEN S I A K'),
('1406', '14', 'KABUPATEN KAMPAR'),
('1407', '14', 'KABUPATEN ROKAN HULU'),
('1408', '14', 'KABUPATEN BENGKALIS'),
('1409', '14', 'KABUPATEN ROKAN HILIR'),
('1410', '14', 'KABUPATEN KEPULAUAN MERANTI'),
('1471', '14', 'KOTA PEKANBARU'),
('1473', '14', 'KOTA D U M A I'),
('1501', '15', 'KABUPATEN KERINCI'),
('1502', '15', 'KABUPATEN MERANGIN'),
('1503', '15', 'KABUPATEN SAROLANGUN'),
('1504', '15', 'KABUPATEN BATANG HARI'),
('1505', '15', 'KABUPATEN MUARO JAMBI'),
('1506', '15', 'KABUPATEN TANJUNG JABUNG TIMUR'),
('1507', '15', 'KABUPATEN TANJUNG JABUNG BARAT'),
('1508', '15', 'KABUPATEN TEBO'),
('1509', '15', 'KABUPATEN BUNGO'),
('1571', '15', 'KOTA JAMBI'),
('1572', '15', 'KOTA SUNGAI PENUH'),
('1601', '16', 'KABUPATEN OGAN KOMERING ULU'),
('1602', '16', 'KABUPATEN OGAN KOMERING ILIR'),
('1603', '16', 'KABUPATEN MUARA ENIM'),
('1604', '16', 'KABUPATEN LAHAT'),
('1605', '16', 'KABUPATEN MUSI RAWAS'),
('1606', '16', 'KABUPATEN MUSI BANYUASIN'),
('1607', '16', 'KABUPATEN BANYU ASIN'),
('1608', '16', 'KABUPATEN OGAN KOMERING ULU SELATAN'),
('1609', '16', 'KABUPATEN OGAN KOMERING ULU TIMUR'),
('1610', '16', 'KABUPATEN OGAN ILIR'),
('1611', '16', 'KABUPATEN EMPAT LAWANG'),
('1612', '16', 'KABUPATEN PENUKAL ABAB LEMATANG ILIR'),
('1613', '16', 'KABUPATEN MUSI RAWAS UTARA'),
('1671', '16', 'KOTA PALEMBANG'),
('1672', '16', 'KOTA PRABUMULIH'),
('1673', '16', 'KOTA PAGAR ALAM'),
('1674', '16', 'KOTA LUBUKLINGGAU'),
('1701', '17', 'KABUPATEN BENGKULU SELATAN'),
('1702', '17', 'KABUPATEN REJANG LEBONG'),
('1703', '17', 'KABUPATEN BENGKULU UTARA'),
('1704', '17', 'KABUPATEN KAUR'),
('1705', '17', 'KABUPATEN SELUMA'),
('1706', '17', 'KABUPATEN MUKOMUKO'),
('1707', '17', 'KABUPATEN LEBONG'),
('1708', '17', 'KABUPATEN KEPAHIANG'),
('1709', '17', 'KABUPATEN BENGKULU TENGAH'),
('1771', '17', 'KOTA BENGKULU'),
('1801', '18', 'KABUPATEN LAMPUNG BARAT'),
('1802', '18', 'KABUPATEN TANGGAMUS'),
('1803', '18', 'KABUPATEN LAMPUNG SELATAN'),
('1804', '18', 'KABUPATEN LAMPUNG TIMUR'),
('1805', '18', 'KABUPATEN LAMPUNG TENGAH'),
('1806', '18', 'KABUPATEN LAMPUNG UTARA'),
('1807', '18', 'KABUPATEN WAY KANAN'),
('1808', '18', 'KABUPATEN TULANGBAWANG'),
('1809', '18', 'KABUPATEN PESAWARAN'),
('1810', '18', 'KABUPATEN PRINGSEWU'),
('1811', '18', 'KABUPATEN MESUJI'),
('1812', '18', 'KABUPATEN TULANG BAWANG BARAT'),
('1813', '18', 'KABUPATEN PESISIR BARAT'),
('1871', '18', 'KOTA BANDAR LAMPUNG'),
('1872', '18', 'KOTA METRO'),
('1901', '19', 'KABUPATEN BANGKA'),
('1902', '19', 'KABUPATEN BELITUNG'),
('1903', '19', 'KABUPATEN BANGKA BARAT'),
('1904', '19', 'KABUPATEN BANGKA TENGAH'),
('1905', '19', 'KABUPATEN BANGKA SELATAN'),
('1906', '19', 'KABUPATEN BELITUNG TIMUR'),
('1971', '19', 'KOTA PANGKAL PINANG'),
('2101', '21', 'KABUPATEN KARIMUN'),
('2102', '21', 'KABUPATEN BINTAN'),
('2103', '21', 'KABUPATEN NATUNA'),
('2104', '21', 'KABUPATEN LINGGA'),
('2105', '21', 'KABUPATEN KEPULAUAN ANAMBAS'),
('2171', '21', 'KOTA B A T A M'),
('2172', '21', 'KOTA TANJUNG PINANG'),
('3101', '31', 'KABUPATEN KEPULAUAN SERIBU'),
('3171', '31', 'KOTA JAKARTA SELATAN'),
('3172', '31', 'KOTA JAKARTA TIMUR'),
('3173', '31', 'KOTA JAKARTA PUSAT'),
('3174', '31', 'KOTA JAKARTA BARAT'),
('3175', '31', 'KOTA JAKARTA UTARA'),
('3201', '32', 'KABUPATEN BOGOR'),
('3202', '32', 'KABUPATEN SUKABUMI'),
('3203', '32', 'KABUPATEN CIANJUR'),
('3204', '32', 'KABUPATEN BANDUNG'),
('3205', '32', 'KABUPATEN GARUT'),
('3206', '32', 'KABUPATEN TASIKMALAYA'),
('3207', '32', 'KABUPATEN CIAMIS'),
('3208', '32', 'KABUPATEN KUNINGAN'),
('3209', '32', 'KABUPATEN CIREBON'),
('3210', '32', 'KABUPATEN MAJALENGKA'),
('3211', '32', 'KABUPATEN SUMEDANG'),
('3212', '32', 'KABUPATEN INDRAMAYU'),
('3213', '32', 'KABUPATEN SUBANG'),
('3214', '32', 'KABUPATEN PURWAKARTA'),
('3215', '32', 'KABUPATEN KARAWANG'),
('3216', '32', 'KABUPATEN BEKASI'),
('3217', '32', 'KABUPATEN BANDUNG BARAT'),
('3218', '32', 'KABUPATEN PANGANDARAN'),
('3271', '32', 'KOTA BOGOR'),
('3272', '32', 'KOTA SUKABUMI'),
('3273', '32', 'KOTA BANDUNG'),
('3274', '32', 'KOTA CIREBON'),
('3275', '32', 'KOTA BEKASI'),
('3276', '32', 'KOTA DEPOK'),
('3277', '32', 'KOTA CIMAHI'),
('3278', '32', 'KOTA TASIKMALAYA'),
('3279', '32', 'KOTA BANJAR'),
('3301', '33', 'KABUPATEN CILACAP'),
('3302', '33', 'KABUPATEN BANYUMAS'),
('3303', '33', 'KABUPATEN PURBALINGGA'),
('3304', '33', 'KABUPATEN BANJARNEGARA'),
('3305', '33', 'KABUPATEN KEBUMEN'),
('3306', '33', 'KABUPATEN PURWOREJO'),
('3307', '33', 'KABUPATEN WONOSOBO'),
('3308', '33', 'KABUPATEN MAGELANG'),
('3309', '33', 'KABUPATEN BOYOLALI'),
('3310', '33', 'KABUPATEN KLATEN'),
('3311', '33', 'KABUPATEN SUKOHARJO'),
('3312', '33', 'KABUPATEN WONOGIRI'),
('3313', '33', 'KABUPATEN KARANGANYAR'),
('3314', '33', 'KABUPATEN SRAGEN'),
('3315', '33', 'KABUPATEN GROBOGAN'),
('3316', '33', 'KABUPATEN BLORA'),
('3317', '33', 'KABUPATEN REMBANG'),
('3318', '33', 'KABUPATEN PATI'),
('3319', '33', 'KABUPATEN KUDUS'),
('3320', '33', 'KABUPATEN JEPARA'),
('3321', '33', 'KABUPATEN DEMAK'),
('3322', '33', 'KABUPATEN SEMARANG'),
('3323', '33', 'KABUPATEN TEMANGGUNG'),
('3324', '33', 'KABUPATEN KENDAL'),
('3325', '33', 'KABUPATEN BATANG'),
('3326', '33', 'KABUPATEN PEKALONGAN'),
('3327', '33', 'KABUPATEN PEMALANG'),
('3328', '33', 'KABUPATEN TEGAL'),
('3329', '33', 'KABUPATEN BREBES'),
('3371', '33', 'KOTA MAGELANG'),
('3372', '33', 'KOTA SURAKARTA'),
('3373', '33', 'KOTA SALATIGA'),
('3374', '33', 'KOTA SEMARANG'),
('3375', '33', 'KOTA PEKALONGAN'),
('3376', '33', 'KOTA TEGAL'),
('3401', '34', 'KABUPATEN KULON PROGO'),
('3402', '34', 'KABUPATEN BANTUL'),
('3403', '34', 'KABUPATEN GUNUNG KIDUL'),
('3404', '34', 'KABUPATEN SLEMAN'),
('3471', '34', 'KOTA YOGYAKARTA'),
('3501', '35', 'KABUPATEN PACITAN'),
('3502', '35', 'KABUPATEN PONOROGO'),
('3503', '35', 'KABUPATEN TRENGGALEK'),
('3504', '35', 'KABUPATEN TULUNGAGUNG'),
('3505', '35', 'KABUPATEN BLITAR'),
('3506', '35', 'KABUPATEN KEDIRI'),
('3507', '35', 'KABUPATEN MALANG'),
('3508', '35', 'KABUPATEN LUMAJANG'),
('3509', '35', 'KABUPATEN JEMBER'),
('3510', '35', 'KABUPATEN BANYUWANGI'),
('3511', '35', 'KABUPATEN BONDOWOSO'),
('3512', '35', 'KABUPATEN SITUBONDO'),
('3513', '35', 'KABUPATEN PROBOLINGGO'),
('3514', '35', 'KABUPATEN PASURUAN'),
('3515', '35', 'KABUPATEN SIDOARJO'),
('3516', '35', 'KABUPATEN MOJOKERTO'),
('3517', '35', 'KABUPATEN JOMBANG'),
('3518', '35', 'KABUPATEN NGANJUK'),
('3519', '35', 'KABUPATEN MADIUN'),
('3520', '35', 'KABUPATEN MAGETAN'),
('3521', '35', 'KABUPATEN NGAWI'),
('3522', '35', 'KABUPATEN BOJONEGORO'),
('3523', '35', 'KABUPATEN TUBAN'),
('3524', '35', 'KABUPATEN LAMONGAN'),
('3525', '35', 'KABUPATEN GRESIK'),
('3526', '35', 'KABUPATEN BANGKALAN'),
('3527', '35', 'KABUPATEN SAMPANG'),
('3528', '35', 'KABUPATEN PAMEKASAN'),
('3529', '35', 'KABUPATEN SUMENEP'),
('3571', '35', 'KOTA KEDIRI'),
('3572', '35', 'KOTA BLITAR'),
('3573', '35', 'KOTA MALANG'),
('3574', '35', 'KOTA PROBOLINGGO'),
('3575', '35', 'KOTA PASURUAN'),
('3576', '35', 'KOTA MOJOKERTO'),
('3577', '35', 'KOTA MADIUN'),
('3578', '35', 'KOTA SURABAYA'),
('3579', '35', 'KOTA BATU'),
('3601', '36', 'KABUPATEN PANDEGLANG'),
('3602', '36', 'KABUPATEN LEBAK'),
('3603', '36', 'KABUPATEN TANGERANG'),
('3604', '36', 'KABUPATEN SERANG'),
('3671', '36', 'KOTA TANGERANG'),
('3672', '36', 'KOTA CILEGON'),
('3673', '36', 'KOTA SERANG'),
('3674', '36', 'KOTA TANGERANG SELATAN'),
('5101', '51', 'KABUPATEN JEMBRANA'),
('5102', '51', 'KABUPATEN TABANAN'),
('5103', '51', 'KABUPATEN BADUNG'),
('5104', '51', 'KABUPATEN GIANYAR'),
('5105', '51', 'KABUPATEN KLUNGKUNG'),
('5106', '51', 'KABUPATEN BANGLI'),
('5107', '51', 'KABUPATEN KARANG ASEM'),
('5108', '51', 'KABUPATEN BULELENG'),
('5171', '51', 'KOTA DENPASAR'),
('5201', '52', 'KABUPATEN LOMBOK BARAT'),
('5202', '52', 'KABUPATEN LOMBOK TENGAH'),
('5203', '52', 'KABUPATEN LOMBOK TIMUR'),
('5204', '52', 'KABUPATEN SUMBAWA'),
('5205', '52', 'KABUPATEN DOMPU'),
('5206', '52', 'KABUPATEN BIMA'),
('5207', '52', 'KABUPATEN SUMBAWA BARAT'),
('5208', '52', 'KABUPATEN LOMBOK UTARA'),
('5271', '52', 'KOTA MATARAM'),
('5272', '52', 'KOTA BIMA'),
('5301', '53', 'KABUPATEN SUMBA BARAT'),
('5302', '53', 'KABUPATEN SUMBA TIMUR'),
('5303', '53', 'KABUPATEN KUPANG'),
('5304', '53', 'KABUPATEN TIMOR TENGAH SELATAN'),
('5305', '53', 'KABUPATEN TIMOR TENGAH UTARA'),
('5306', '53', 'KABUPATEN BELU'),
('5307', '53', 'KABUPATEN ALOR'),
('5308', '53', 'KABUPATEN LEMBATA'),
('5309', '53', 'KABUPATEN FLORES TIMUR'),
('5310', '53', 'KABUPATEN SIKKA'),
('5311', '53', 'KABUPATEN ENDE'),
('5312', '53', 'KABUPATEN NGADA'),
('5313', '53', 'KABUPATEN MANGGARAI'),
('5314', '53', 'KABUPATEN ROTE NDAO'),
('5315', '53', 'KABUPATEN MANGGARAI BARAT'),
('5316', '53', 'KABUPATEN SUMBA TENGAH'),
('5317', '53', 'KABUPATEN SUMBA BARAT DAYA'),
('5318', '53', 'KABUPATEN NAGEKEO'),
('5319', '53', 'KABUPATEN MANGGARAI TIMUR'),
('5320', '53', 'KABUPATEN SABU RAIJUA'),
('5321', '53', 'KABUPATEN MALAKA'),
('5371', '53', 'KOTA KUPANG'),
('6101', '61', 'KABUPATEN SAMBAS'),
('6102', '61', 'KABUPATEN BENGKAYANG'),
('6103', '61', 'KABUPATEN LANDAK'),
('6104', '61', 'KABUPATEN MEMPAWAH'),
('6105', '61', 'KABUPATEN SANGGAU'),
('6106', '61', 'KABUPATEN KETAPANG'),
('6107', '61', 'KABUPATEN SINTANG'),
('6108', '61', 'KABUPATEN KAPUAS HULU'),
('6109', '61', 'KABUPATEN SEKADAU'),
('6110', '61', 'KABUPATEN MELAWI'),
('6111', '61', 'KABUPATEN KAYONG UTARA'),
('6112', '61', 'KABUPATEN KUBU RAYA'),
('6171', '61', 'KOTA PONTIANAK'),
('6172', '61', 'KOTA SINGKAWANG'),
('6201', '62', 'KABUPATEN KOTAWARINGIN BARAT'),
('6202', '62', 'KABUPATEN KOTAWARINGIN TIMUR'),
('6203', '62', 'KABUPATEN KAPUAS'),
('6204', '62', 'KABUPATEN BARITO SELATAN'),
('6205', '62', 'KABUPATEN BARITO UTARA'),
('6206', '62', 'KABUPATEN SUKAMARA'),
('6207', '62', 'KABUPATEN LAMANDAU'),
('6208', '62', 'KABUPATEN SERUYAN'),
('6209', '62', 'KABUPATEN KATINGAN'),
('6210', '62', 'KABUPATEN PULANG PISAU'),
('6211', '62', 'KABUPATEN GUNUNG MAS'),
('6212', '62', 'KABUPATEN BARITO TIMUR'),
('6213', '62', 'KABUPATEN MURUNG RAYA'),
('6271', '62', 'KOTA PALANGKA RAYA'),
('6301', '63', 'KABUPATEN TANAH LAUT'),
('6302', '63', 'KABUPATEN KOTA BARU'),
('6303', '63', 'KABUPATEN BANJAR'),
('6304', '63', 'KABUPATEN BARITO KUALA'),
('6305', '63', 'KABUPATEN TAPIN'),
('6306', '63', 'KABUPATEN HULU SUNGAI SELATAN'),
('6307', '63', 'KABUPATEN HULU SUNGAI TENGAH'),
('6308', '63', 'KABUPATEN HULU SUNGAI UTARA'),
('6309', '63', 'KABUPATEN TABALONG'),
('6310', '63', 'KABUPATEN TANAH BUMBU'),
('6311', '63', 'KABUPATEN BALANGAN'),
('6371', '63', 'KOTA BANJARMASIN'),
('6372', '63', 'KOTA BANJAR BARU'),
('6401', '64', 'KABUPATEN PASER'),
('6402', '64', 'KABUPATEN KUTAI BARAT'),
('6403', '64', 'KABUPATEN KUTAI KARTANEGARA'),
('6404', '64', 'KABUPATEN KUTAI TIMUR'),
('6405', '64', 'KABUPATEN BERAU'),
('6409', '64', 'KABUPATEN PENAJAM PASER UTARA'),
('6411', '64', 'KABUPATEN MAHAKAM HULU'),
('6471', '64', 'KOTA BALIKPAPAN'),
('6472', '64', 'KOTA SAMARINDA'),
('6474', '64', 'KOTA BONTANG'),
('6501', '65', 'KABUPATEN MALINAU'),
('6502', '65', 'KABUPATEN BULUNGAN'),
('6503', '65', 'KABUPATEN TANA TIDUNG'),
('6504', '65', 'KABUPATEN NUNUKAN'),
('6571', '65', 'KOTA TARAKAN'),
('7101', '71', 'KABUPATEN BOLAANG MONGONDOW'),
('7102', '71', 'KABUPATEN MINAHASA'),
('7103', '71', 'KABUPATEN KEPULAUAN SANGIHE'),
('7104', '71', 'KABUPATEN KEPULAUAN TALAUD'),
('7105', '71', 'KABUPATEN MINAHASA SELATAN'),
('7106', '71', 'KABUPATEN MINAHASA UTARA'),
('7107', '71', 'KABUPATEN BOLAANG MONGONDOW UTARA'),
('7108', '71', 'KABUPATEN SIAU TAGULANDANG BIARO'),
('7109', '71', 'KABUPATEN MINAHASA TENGGARA'),
('7110', '71', 'KABUPATEN BOLAANG MONGONDOW SELATAN'),
('7111', '71', 'KABUPATEN BOLAANG MONGONDOW TIMUR'),
('7171', '71', 'KOTA MANADO'),
('7172', '71', 'KOTA BITUNG'),
('7173', '71', 'KOTA TOMOHON'),
('7174', '71', 'KOTA KOTAMOBAGU'),
('7201', '72', 'KABUPATEN BANGGAI KEPULAUAN'),
('7202', '72', 'KABUPATEN BANGGAI'),
('7203', '72', 'KABUPATEN MOROWALI'),
('7204', '72', 'KABUPATEN POSO'),
('7205', '72', 'KABUPATEN DONGGALA'),
('7206', '72', 'KABUPATEN TOLI-TOLI'),
('7207', '72', 'KABUPATEN BUOL'),
('7208', '72', 'KABUPATEN PARIGI MOUTONG'),
('7209', '72', 'KABUPATEN TOJO UNA-UNA'),
('7210', '72', 'KABUPATEN SIGI'),
('7211', '72', 'KABUPATEN BANGGAI LAUT'),
('7212', '72', 'KABUPATEN MOROWALI UTARA'),
('7271', '72', 'KOTA PALU'),
('7301', '73', 'KABUPATEN KEPULAUAN SELAYAR'),
('7302', '73', 'KABUPATEN BULUKUMBA'),
('7303', '73', 'KABUPATEN BANTAENG'),
('7304', '73', 'KABUPATEN JENEPONTO'),
('7305', '73', 'KABUPATEN TAKALAR'),
('7306', '73', 'KABUPATEN GOWA'),
('7307', '73', 'KABUPATEN SINJAI'),
('7308', '73', 'KABUPATEN MAROS'),
('7309', '73', 'KABUPATEN PANGKAJENE DAN KEPULAUAN'),
('7310', '73', 'KABUPATEN BARRU'),
('7311', '73', 'KABUPATEN BONE'),
('7312', '73', 'KABUPATEN SOPPENG'),
('7313', '73', 'KABUPATEN WAJO'),
('7314', '73', 'KABUPATEN SIDENRENG RAPPANG'),
('7315', '73', 'KABUPATEN PINRANG'),
('7316', '73', 'KABUPATEN ENREKANG'),
('7317', '73', 'KABUPATEN LUWU'),
('7318', '73', 'KABUPATEN TANA TORAJA'),
('7322', '73', 'KABUPATEN LUWU UTARA'),
('7325', '73', 'KABUPATEN LUWU TIMUR'),
('7326', '73', 'KABUPATEN TORAJA UTARA'),
('7371', '73', 'KOTA MAKASSAR'),
('7372', '73', 'KOTA PAREPARE'),
('7373', '73', 'KOTA PALOPO'),
('7401', '74', 'KABUPATEN BUTON'),
('7402', '74', 'KABUPATEN MUNA'),
('7403', '74', 'KABUPATEN KONAWE'),
('7404', '74', 'KABUPATEN KOLAKA'),
('7405', '74', 'KABUPATEN KONAWE SELATAN'),
('7406', '74', 'KABUPATEN BOMBANA'),
('7407', '74', 'KABUPATEN WAKATOBI'),
('7408', '74', 'KABUPATEN KOLAKA UTARA'),
('7409', '74', 'KABUPATEN BUTON UTARA'),
('7410', '74', 'KABUPATEN KONAWE UTARA'),
('7411', '74', 'KABUPATEN KOLAKA TIMUR'),
('7412', '74', 'KABUPATEN KONAWE KEPULAUAN'),
('7413', '74', 'KABUPATEN MUNA BARAT'),
('7414', '74', 'KABUPATEN BUTON TENGAH'),
('7415', '74', 'KABUPATEN BUTON SELATAN'),
('7471', '74', 'KOTA KENDARI'),
('7472', '74', 'KOTA BAUBAU'),
('7501', '75', 'KABUPATEN BOALEMO'),
('7502', '75', 'KABUPATEN GORONTALO'),
('7503', '75', 'KABUPATEN POHUWATO'),
('7504', '75', 'KABUPATEN BONE BOLANGO'),
('7505', '75', 'KABUPATEN GORONTALO UTARA'),
('7571', '75', 'KOTA GORONTALO'),
('7601', '76', 'KABUPATEN MAJENE'),
('7602', '76', 'KABUPATEN POLEWALI MANDAR'),
('7603', '76', 'KABUPATEN MAMASA'),
('7604', '76', 'KABUPATEN MAMUJU'),
('7605', '76', 'KABUPATEN MAMUJU UTARA'),
('7606', '76', 'KABUPATEN MAMUJU TENGAH'),
('8101', '81', 'KABUPATEN MALUKU TENGGARA BARAT'),
('8102', '81', 'KABUPATEN MALUKU TENGGARA'),
('8103', '81', 'KABUPATEN MALUKU TENGAH'),
('8104', '81', 'KABUPATEN BURU'),
('8105', '81', 'KABUPATEN KEPULAUAN ARU'),
('8106', '81', 'KABUPATEN SERAM BAGIAN BARAT'),
('8107', '81', 'KABUPATEN SERAM BAGIAN TIMUR'),
('8108', '81', 'KABUPATEN MALUKU BARAT DAYA'),
('8109', '81', 'KABUPATEN BURU SELATAN'),
('8171', '81', 'KOTA AMBON'),
('8172', '81', 'KOTA TUAL'),
('8201', '82', 'KABUPATEN HALMAHERA BARAT'),
('8202', '82', 'KABUPATEN HALMAHERA TENGAH'),
('8203', '82', 'KABUPATEN KEPULAUAN SULA'),
('8204', '82', 'KABUPATEN HALMAHERA SELATAN'),
('8205', '82', 'KABUPATEN HALMAHERA UTARA'),
('8206', '82', 'KABUPATEN HALMAHERA TIMUR'),
('8207', '82', 'KABUPATEN PULAU MOROTAI'),
('8208', '82', 'KABUPATEN PULAU TALIABU'),
('8271', '82', 'KOTA TERNATE'),
('8272', '82', 'KOTA TIDORE KEPULAUAN'),
('9101', '91', 'KABUPATEN FAKFAK'),
('9102', '91', 'KABUPATEN KAIMANA'),
('9103', '91', 'KABUPATEN TELUK WONDAMA'),
('9104', '91', 'KABUPATEN TELUK BINTUNI'),
('9105', '91', 'KABUPATEN MANOKWARI'),
('9106', '91', 'KABUPATEN SORONG SELATAN'),
('9107', '91', 'KABUPATEN SORONG'),
('9108', '91', 'KABUPATEN RAJA AMPAT'),
('9109', '91', 'KABUPATEN TAMBRAUW'),
('9110', '91', 'KABUPATEN MAYBRAT'),
('9111', '91', 'KABUPATEN MANOKWARI SELATAN'),
('9112', '91', 'KABUPATEN PEGUNUNGAN ARFAK'),
('9171', '91', 'KOTA SORONG'),
('9401', '94', 'KABUPATEN MERAUKE'),
('9402', '94', 'KABUPATEN JAYAWIJAYA'),
('9403', '94', 'KABUPATEN JAYAPURA'),
('9404', '94', 'KABUPATEN NABIRE'),
('9408', '94', 'KABUPATEN KEPULAUAN YAPEN'),
('9409', '94', 'KABUPATEN BIAK NUMFOR'),
('9410', '94', 'KABUPATEN PANIAI'),
('9411', '94', 'KABUPATEN PUNCAK JAYA'),
('9412', '94', 'KABUPATEN MIMIKA'),
('9413', '94', 'KABUPATEN BOVEN DIGOEL'),
('9414', '94', 'KABUPATEN MAPPI'),
('9415', '94', 'KABUPATEN ASMAT'),
('9416', '94', 'KABUPATEN YAHUKIMO'),
('9417', '94', 'KABUPATEN PEGUNUNGAN BINTANG'),
('9418', '94', 'KABUPATEN TOLIKARA'),
('9419', '94', 'KABUPATEN SARMI'),
('9420', '94', 'KABUPATEN KEEROM'),
('9426', '94', 'KABUPATEN WAROPEN'),
('9427', '94', 'KABUPATEN SUPIORI'),
('9428', '94', 'KABUPATEN MAMBERAMO RAYA'),
('9429', '94', 'KABUPATEN NDUGA'),
('9430', '94', 'KABUPATEN LANNY JAYA'),
('9431', '94', 'KABUPATEN MAMBERAMO TENGAH'),
('9432', '94', 'KABUPATEN YALIMO'),
('9433', '94', 'KABUPATEN PUNCAK'),
('9434', '94', 'KABUPATEN DOGIYAI'),
('9435', '94', 'KABUPATEN INTAN JAYA'),
('9436', '94', 'KABUPATEN DEIYAI'),
('9471', '94', 'KOTA JAYAPURA');

-- --------------------------------------------------------

--
-- Table structure for table `sth-pencacahan`
--

CREATE TABLE `sth-pencacahan` (
  `id_provinsi` varchar(2) COLLATE utf8_unicode_ci NOT NULL,
  `id_kabkot` varchar(4) COLLATE utf8_unicode_ci NOT NULL,
  `jumlah` int(11) NOT NULL,
  `target` int(11) NOT NULL,
  `tgl_create` datetime NOT NULL,
  `tgl_update` datetime NOT NULL,
  `user_create` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `user_update` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sth-pencacahan`
--

INSERT INTO `sth-pencacahan` (`id_provinsi`, `id_kabkot`, `jumlah`, `target`, `tgl_create`, `tgl_update`, `user_create`, `user_update`) VALUES
('11', '1101', 1776, 1776, '2016-09-24 14:57:58', '2016-09-27 18:56:59', 'alvian', 'aneksa'),
('11', '1102', 1523, 1523, '2016-09-24 14:57:58', '2016-09-28 11:14:22', 'alvian', 'alvian'),
('11', '1103', 0, 1353, '2016-09-24 14:57:58', '2016-09-24 14:57:58', 'alvian', 'alvian'),
('11', '1104', 0, 1470, '2016-09-24 14:57:58', '2016-09-24 14:57:58', 'alvian', 'alvian'),
('11', '1105', 0, 1677, '2016-09-24 14:57:58', '2016-09-24 14:57:58', 'alvian', 'alvian'),
('11', '1106', 0, 1211, '2016-09-24 14:57:58', '2016-09-24 14:57:58', 'alvian', 'alvian'),
('11', '1107', 0, 1175, '2016-09-24 14:57:58', '2016-09-24 14:57:58', 'alvian', 'alvian'),
('11', '1108', 0, 1378, '2016-09-24 14:57:58', '2016-09-24 14:57:58', 'alvian', 'alvian'),
('11', '1109', 0, 1805, '2016-09-24 14:57:58', '2016-09-24 14:57:58', 'alvian', 'alvian'),
('11', '1110', 0, 1351, '2016-09-24 14:57:58', '2016-09-24 14:57:58', 'alvian', 'alvian'),
('11', '1111', 0, 1011, '2016-09-24 14:57:58', '2016-09-24 14:57:58', 'alvian', 'alvian'),
('11', '1112', 0, 1518, '2016-09-24 14:57:58', '2016-09-24 14:57:58', 'alvian', 'alvian'),
('11', '1113', 0, 1237, '2016-09-24 14:57:58', '2016-09-24 14:57:58', 'alvian', 'alvian'),
('11', '1114', 0, 1305, '2016-09-24 14:57:58', '2016-09-24 14:57:58', 'alvian', 'alvian'),
('11', '1115', 0, 1449, '2016-09-24 14:57:58', '2016-09-24 14:57:58', 'alvian', 'alvian'),
('11', '1116', 0, 1627, '2016-09-24 14:57:58', '2016-09-24 14:57:58', 'alvian', 'alvian'),
('11', '1117', 0, 1716, '2016-09-24 14:57:58', '2016-09-24 14:57:58', 'alvian', 'alvian'),
('11', '1118', 0, 1290, '2016-09-24 14:57:58', '2016-09-24 14:57:58', 'alvian', 'alvian'),
('11', '1171', 0, 1499, '2016-09-24 14:57:58', '2016-09-24 14:57:58', 'alvian', 'alvian'),
('11', '1172', 0, 1317, '2016-09-24 14:57:58', '2016-09-24 14:57:58', 'alvian', 'alvian'),
('11', '1173', 0, 1297, '2016-09-24 14:57:58', '2016-09-24 14:57:58', 'alvian', 'alvian'),
('11', '1174', 0, 1832, '2016-09-24 14:57:58', '2016-09-24 14:57:58', 'alvian', 'alvian'),
('11', '1175', 0, 1500, '2016-09-24 14:57:58', '2016-09-24 14:57:58', 'alvian', 'alvian'),
('12', '1201', 0, 1422, '2016-09-24 14:57:58', '2016-09-24 14:57:58', 'alvian', 'alvian'),
('12', '1202', 0, 1017, '2016-09-24 14:57:58', '2016-09-24 14:57:58', 'alvian', 'alvian'),
('12', '1203', 0, 1605, '2016-09-24 14:57:58', '2016-09-24 14:57:58', 'alvian', 'alvian'),
('12', '1204', 0, 1518, '2016-09-24 14:57:58', '2016-09-24 14:57:58', 'alvian', 'alvian'),
('12', '1205', 0, 1696, '2016-09-24 14:57:58', '2016-09-24 14:57:58', 'alvian', 'alvian'),
('12', '1206', 0, 1594, '2016-09-24 14:57:58', '2016-09-24 14:57:58', 'alvian', 'alvian'),
('12', '1207', 0, 1671, '2016-09-24 14:57:58', '2016-09-24 14:57:58', 'alvian', 'alvian'),
('12', '1208', 0, 1756, '2016-09-24 14:57:58', '2016-09-24 14:57:58', 'alvian', 'alvian'),
('12', '1209', 0, 1762, '2016-09-24 14:57:58', '2016-09-24 14:57:58', 'alvian', 'alvian'),
('12', '1210', 0, 1973, '2016-09-24 14:57:58', '2016-09-24 14:57:58', 'alvian', 'alvian'),
('12', '1211', 0, 1077, '2016-09-24 14:57:58', '2016-09-24 14:57:58', 'alvian', 'alvian'),
('12', '1212', 0, 1012, '2016-09-24 14:57:58', '2016-09-24 14:57:58', 'alvian', 'alvian'),
('12', '1213', 0, 1117, '2016-09-24 14:57:58', '2016-09-24 14:57:58', 'alvian', 'alvian'),
('12', '1214', 0, 1779, '2016-09-24 14:57:58', '2016-09-24 14:57:58', 'alvian', 'alvian'),
('12', '1215', 0, 1870, '2016-09-24 14:57:58', '2016-09-24 14:57:58', 'alvian', 'alvian'),
('12', '1216', 0, 1665, '2016-09-24 14:57:58', '2016-09-24 14:57:58', 'alvian', 'alvian'),
('12', '1217', 0, 1851, '2016-09-24 14:57:58', '2016-09-24 14:57:58', 'alvian', 'alvian'),
('12', '1218', 0, 1954, '2016-09-24 14:57:58', '2016-09-24 14:57:58', 'alvian', 'alvian'),
('12', '1219', 0, 1526, '2016-09-24 14:57:58', '2016-09-24 14:57:58', 'alvian', 'alvian'),
('12', '1220', 0, 1825, '2016-09-24 14:57:58', '2016-09-24 14:57:58', 'alvian', 'alvian'),
('12', '1221', 0, 1095, '2016-09-24 14:57:58', '2016-09-24 14:57:58', 'alvian', 'alvian'),
('12', '1222', 0, 1097, '2016-09-24 14:57:58', '2016-09-24 14:57:58', 'alvian', 'alvian'),
('12', '1223', 0, 1347, '2016-09-24 14:57:58', '2016-09-24 14:57:58', 'alvian', 'alvian'),
('12', '1224', 0, 1753, '2016-09-24 14:57:58', '2016-09-24 14:57:58', 'alvian', 'alvian'),
('12', '1225', 0, 1508, '2016-09-24 14:57:58', '2016-09-24 14:57:58', 'alvian', 'alvian'),
('12', '1271', 0, 1240, '2016-09-24 14:57:58', '2016-09-24 14:57:58', 'alvian', 'alvian'),
('12', '1272', 0, 1778, '2016-09-24 14:57:58', '2016-09-24 14:57:58', 'alvian', 'alvian'),
('12', '1273', 0, 1328, '2016-09-24 14:57:58', '2016-09-24 14:57:58', 'alvian', 'alvian'),
('12', '1274', 0, 1072, '2016-09-24 14:57:58', '2016-09-24 14:57:58', 'alvian', 'alvian'),
('12', '1275', 0, 1312, '2016-09-24 14:57:58', '2016-09-24 14:57:58', 'alvian', 'alvian'),
('12', '1276', 0, 1248, '2016-09-24 14:57:58', '2016-09-24 14:57:58', 'alvian', 'alvian'),
('12', '1277', 0, 1521, '2016-09-24 14:57:58', '2016-09-24 14:57:58', 'alvian', 'alvian'),
('12', '1278', 0, 1178, '2016-09-24 14:57:58', '2016-09-24 14:57:58', 'alvian', 'alvian'),
('13', '1301', 0, 1571, '2016-09-24 14:57:58', '2016-09-24 14:57:58', 'alvian', 'alvian'),
('13', '1302', 0, 1041, '2016-09-24 14:57:58', '2016-09-24 14:57:58', 'alvian', 'alvian'),
('13', '1303', 0, 1879, '2016-09-24 14:57:58', '2016-09-24 14:57:58', 'alvian', 'alvian'),
('13', '1304', 0, 1739, '2016-09-24 14:57:58', '2016-09-24 14:57:58', 'alvian', 'alvian'),
('13', '1305', 0, 1638, '2016-09-24 14:57:58', '2016-09-24 14:57:58', 'alvian', 'alvian'),
('13', '1306', 0, 1169, '2016-09-24 14:57:58', '2016-09-24 14:57:58', 'alvian', 'alvian'),
('13', '1307', 0, 1564, '2016-09-24 14:57:58', '2016-09-24 14:57:58', 'alvian', 'alvian'),
('13', '1308', 0, 1367, '2016-09-24 14:57:58', '2016-09-24 14:57:58', 'alvian', 'alvian'),
('13', '1309', 0, 1827, '2016-09-24 14:57:58', '2016-09-24 14:57:58', 'alvian', 'alvian'),
('13', '1310', 0, 1931, '2016-09-24 14:57:58', '2016-09-24 14:57:58', 'alvian', 'alvian'),
('13', '1311', 0, 1261, '2016-09-24 14:57:58', '2016-09-24 14:57:58', 'alvian', 'alvian'),
('13', '1312', 0, 1965, '2016-09-24 14:57:58', '2016-09-24 14:57:58', 'alvian', 'alvian'),
('13', '1371', 0, 1679, '2016-09-24 14:57:58', '2016-09-24 14:57:58', 'alvian', 'alvian'),
('13', '1372', 0, 1200, '2016-09-24 14:57:58', '2016-09-24 14:57:58', 'alvian', 'alvian'),
('13', '1373', 0, 1692, '2016-09-24 14:57:58', '2016-09-24 14:57:58', 'alvian', 'alvian'),
('13', '1374', 0, 1612, '2016-09-24 14:57:58', '2016-09-24 14:57:58', 'alvian', 'alvian'),
('13', '1375', 0, 1430, '2016-09-24 14:57:58', '2016-09-24 14:57:58', 'alvian', 'alvian'),
('13', '1376', 0, 1277, '2016-09-24 14:57:58', '2016-09-24 14:57:58', 'alvian', 'alvian'),
('13', '1377', 0, 1267, '2016-09-24 14:57:58', '2016-09-24 14:57:58', 'alvian', 'alvian'),
('14', '1401', 0, 1736, '2016-09-24 14:57:58', '2016-09-24 14:57:58', 'alvian', 'alvian');

-- --------------------------------------------------------

--
-- Table structure for table `sth-pencacahan-hist`
--

CREATE TABLE `sth-pencacahan-hist` (
  `id_provinsi` varchar(2) COLLATE utf8_unicode_ci NOT NULL,
  `id_kabkot` varchar(4) COLLATE utf8_unicode_ci NOT NULL,
  `jumlah` int(11) NOT NULL,
  `target` int(11) NOT NULL,
  `tgl_create` datetime NOT NULL,
  `tgl_update` datetime NOT NULL,
  `user_create` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `user_update` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sth-pencacahan-hist`
--

INSERT INTO `sth-pencacahan-hist` (`id_provinsi`, `id_kabkot`, `jumlah`, `target`, `tgl_create`, `tgl_update`, `user_create`, `user_update`) VALUES
('11', '1101', 0, 1776, '2016-09-24 14:57:58', '2016-09-24 14:57:58', 'alvian', 'alvian'),
('11', '1101', 1776, 1776, '2016-09-27 18:56:59', '2016-09-27 18:56:59', 'aneksa', 'aneksa'),
('11', '1102', 0, 1523, '2016-09-24 14:57:58', '2016-09-24 14:57:58', 'alvian', 'alvian'),
('11', '1102', 1523, 1523, '2016-09-28 11:14:22', '2016-09-28 11:14:22', 'alvian', 'alvian'),
('11', '1103', 0, 1353, '2016-09-24 14:57:58', '2016-09-24 14:57:58', 'alvian', 'alvian'),
('11', '1104', 0, 1470, '2016-09-24 14:57:58', '2016-09-24 14:57:58', 'alvian', 'alvian'),
('11', '1105', 0, 1677, '2016-09-24 14:57:58', '2016-09-24 14:57:58', 'alvian', 'alvian'),
('11', '1106', 0, 1211, '2016-09-24 14:57:58', '2016-09-24 14:57:58', 'alvian', 'alvian'),
('11', '1107', 0, 1175, '2016-09-24 14:57:58', '2016-09-24 14:57:58', 'alvian', 'alvian'),
('11', '1108', 0, 1378, '2016-09-24 14:57:58', '2016-09-24 14:57:58', 'alvian', 'alvian'),
('11', '1109', 0, 1805, '2016-09-24 14:57:58', '2016-09-24 14:57:58', 'alvian', 'alvian'),
('11', '1110', 0, 1351, '2016-09-24 14:57:58', '2016-09-24 14:57:58', 'alvian', 'alvian'),
('11', '1111', 0, 1011, '2016-09-24 14:57:58', '2016-09-24 14:57:58', 'alvian', 'alvian'),
('11', '1112', 0, 1518, '2016-09-24 14:57:58', '2016-09-24 14:57:58', 'alvian', 'alvian'),
('11', '1113', 0, 1237, '2016-09-24 14:57:58', '2016-09-24 14:57:58', 'alvian', 'alvian'),
('11', '1114', 0, 1305, '2016-09-24 14:57:58', '2016-09-24 14:57:58', 'alvian', 'alvian'),
('11', '1115', 0, 1449, '2016-09-24 14:57:58', '2016-09-24 14:57:58', 'alvian', 'alvian'),
('11', '1116', 0, 1627, '2016-09-24 14:57:58', '2016-09-24 14:57:58', 'alvian', 'alvian'),
('11', '1117', 0, 1716, '2016-09-24 14:57:58', '2016-09-24 14:57:58', 'alvian', 'alvian'),
('11', '1118', 0, 1290, '2016-09-24 14:57:58', '2016-09-24 14:57:58', 'alvian', 'alvian'),
('11', '1171', 0, 1499, '2016-09-24 14:57:58', '2016-09-24 14:57:58', 'alvian', 'alvian'),
('11', '1172', 0, 1317, '2016-09-24 14:57:58', '2016-09-24 14:57:58', 'alvian', 'alvian'),
('11', '1173', 0, 1297, '2016-09-24 14:57:58', '2016-09-24 14:57:58', 'alvian', 'alvian'),
('11', '1174', 0, 1832, '2016-09-24 14:57:58', '2016-09-24 14:57:58', 'alvian', 'alvian'),
('11', '1175', 0, 1500, '2016-09-24 14:57:58', '2016-09-24 14:57:58', 'alvian', 'alvian'),
('12', '1201', 0, 1422, '2016-09-24 14:57:58', '2016-09-24 14:57:58', 'alvian', 'alvian'),
('12', '1202', 0, 1017, '2016-09-24 14:57:58', '2016-09-24 14:57:58', 'alvian', 'alvian'),
('12', '1203', 0, 1605, '2016-09-24 14:57:58', '2016-09-24 14:57:58', 'alvian', 'alvian'),
('12', '1204', 0, 1518, '2016-09-24 14:57:58', '2016-09-24 14:57:58', 'alvian', 'alvian'),
('12', '1205', 0, 1696, '2016-09-24 14:57:58', '2016-09-24 14:57:58', 'alvian', 'alvian'),
('12', '1206', 0, 1594, '2016-09-24 14:57:58', '2016-09-24 14:57:58', 'alvian', 'alvian'),
('12', '1207', 0, 1671, '2016-09-24 14:57:58', '2016-09-24 14:57:58', 'alvian', 'alvian'),
('12', '1208', 0, 1756, '2016-09-24 14:57:58', '2016-09-24 14:57:58', 'alvian', 'alvian'),
('12', '1209', 0, 1762, '2016-09-24 14:57:58', '2016-09-24 14:57:58', 'alvian', 'alvian'),
('12', '1210', 0, 1973, '2016-09-24 14:57:58', '2016-09-24 14:57:58', 'alvian', 'alvian'),
('12', '1211', 0, 1077, '2016-09-24 14:57:58', '2016-09-24 14:57:58', 'alvian', 'alvian'),
('12', '1212', 0, 1012, '2016-09-24 14:57:58', '2016-09-24 14:57:58', 'alvian', 'alvian'),
('12', '1213', 0, 1117, '2016-09-24 14:57:58', '2016-09-24 14:57:58', 'alvian', 'alvian'),
('12', '1214', 0, 1779, '2016-09-24 14:57:58', '2016-09-24 14:57:58', 'alvian', 'alvian'),
('12', '1215', 0, 1870, '2016-09-24 14:57:58', '2016-09-24 14:57:58', 'alvian', 'alvian'),
('12', '1216', 0, 1665, '2016-09-24 14:57:58', '2016-09-24 14:57:58', 'alvian', 'alvian'),
('12', '1217', 0, 1851, '2016-09-24 14:57:58', '2016-09-24 14:57:58', 'alvian', 'alvian'),
('12', '1218', 0, 1954, '2016-09-24 14:57:58', '2016-09-24 14:57:58', 'alvian', 'alvian'),
('12', '1219', 0, 1526, '2016-09-24 14:57:58', '2016-09-24 14:57:58', 'alvian', 'alvian'),
('12', '1220', 0, 1825, '2016-09-24 14:57:58', '2016-09-24 14:57:58', 'alvian', 'alvian'),
('12', '1221', 0, 1095, '2016-09-24 14:57:58', '2016-09-24 14:57:58', 'alvian', 'alvian'),
('12', '1222', 0, 1097, '2016-09-24 14:57:58', '2016-09-24 14:57:58', 'alvian', 'alvian'),
('12', '1223', 0, 1347, '2016-09-24 14:57:58', '2016-09-24 14:57:58', 'alvian', 'alvian'),
('12', '1224', 0, 1753, '2016-09-24 14:57:58', '2016-09-24 14:57:58', 'alvian', 'alvian'),
('12', '1225', 0, 1508, '2016-09-24 14:57:58', '2016-09-24 14:57:58', 'alvian', 'alvian'),
('12', '1271', 0, 1240, '2016-09-24 14:57:58', '2016-09-24 14:57:58', 'alvian', 'alvian'),
('12', '1272', 0, 1778, '2016-09-24 14:57:58', '2016-09-24 14:57:58', 'alvian', 'alvian'),
('12', '1273', 0, 1328, '2016-09-24 14:57:58', '2016-09-24 14:57:58', 'alvian', 'alvian'),
('12', '1274', 0, 1072, '2016-09-24 14:57:58', '2016-09-24 14:57:58', 'alvian', 'alvian'),
('12', '1275', 0, 1312, '2016-09-24 14:57:58', '2016-09-24 14:57:58', 'alvian', 'alvian'),
('12', '1276', 0, 1248, '2016-09-24 14:57:58', '2016-09-24 14:57:58', 'alvian', 'alvian'),
('12', '1277', 0, 1521, '2016-09-24 14:57:58', '2016-09-24 14:57:58', 'alvian', 'alvian'),
('12', '1278', 0, 1178, '2016-09-24 14:57:58', '2016-09-24 14:57:58', 'alvian', 'alvian'),
('13', '1301', 0, 1571, '2016-09-24 14:57:58', '2016-09-24 14:57:58', 'alvian', 'alvian'),
('13', '1302', 0, 1041, '2016-09-24 14:57:58', '2016-09-24 14:57:58', 'alvian', 'alvian'),
('13', '1303', 0, 1879, '2016-09-24 14:57:58', '2016-09-24 14:57:58', 'alvian', 'alvian'),
('13', '1304', 0, 1739, '2016-09-24 14:57:58', '2016-09-24 14:57:58', 'alvian', 'alvian'),
('13', '1305', 0, 1638, '2016-09-24 14:57:58', '2016-09-24 14:57:58', 'alvian', 'alvian'),
('13', '1306', 0, 1169, '2016-09-24 14:57:58', '2016-09-24 14:57:58', 'alvian', 'alvian'),
('13', '1307', 0, 1564, '2016-09-24 14:57:58', '2016-09-24 14:57:58', 'alvian', 'alvian'),
('13', '1308', 0, 1367, '2016-09-24 14:57:58', '2016-09-24 14:57:58', 'alvian', 'alvian'),
('13', '1309', 0, 1827, '2016-09-24 14:57:58', '2016-09-24 14:57:58', 'alvian', 'alvian'),
('13', '1310', 0, 1931, '2016-09-24 14:57:58', '2016-09-24 14:57:58', 'alvian', 'alvian'),
('13', '1311', 0, 1261, '2016-09-24 14:57:58', '2016-09-24 14:57:58', 'alvian', 'alvian'),
('13', '1312', 0, 1965, '2016-09-24 14:57:58', '2016-09-24 14:57:58', 'alvian', 'alvian'),
('13', '1371', 0, 1679, '2016-09-24 14:57:58', '2016-09-24 14:57:58', 'alvian', 'alvian'),
('13', '1372', 0, 1200, '2016-09-24 14:57:58', '2016-09-24 14:57:58', 'alvian', 'alvian'),
('13', '1373', 0, 1692, '2016-09-24 14:57:58', '2016-09-24 14:57:58', 'alvian', 'alvian'),
('13', '1374', 0, 1612, '2016-09-24 14:57:58', '2016-09-24 14:57:58', 'alvian', 'alvian'),
('13', '1375', 0, 1430, '2016-09-24 14:57:58', '2016-09-24 14:57:58', 'alvian', 'alvian'),
('13', '1376', 0, 1277, '2016-09-24 14:57:58', '2016-09-24 14:57:58', 'alvian', 'alvian'),
('13', '1377', 0, 1267, '2016-09-24 14:57:58', '2016-09-24 14:57:58', 'alvian', 'alvian'),
('14', '1401', 0, 1736, '2016-09-24 14:57:58', '2016-09-24 14:57:58', 'alvian', 'alvian');

-- --------------------------------------------------------

--
-- Table structure for table `sth-pencacahan-histgl`
--

CREATE TABLE `sth-pencacahan-histgl` (
  `id_provinsi` varchar(2) COLLATE utf8_unicode_ci NOT NULL,
  `id_kabkot` varchar(4) COLLATE utf8_unicode_ci NOT NULL,
  `jumlah` int(11) NOT NULL,
  `target` int(11) NOT NULL,
  `tgl_create` date NOT NULL,
  `tgl_update` datetime NOT NULL,
  `user_create` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `user_update` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sth-pencacahan-histgl`
--

INSERT INTO `sth-pencacahan-histgl` (`id_provinsi`, `id_kabkot`, `jumlah`, `target`, `tgl_create`, `tgl_update`, `user_create`, `user_update`) VALUES
('11', '1101', 0, 1776, '2016-09-24', '2016-09-24 14:57:58', 'alvian', 'alvian'),
('11', '1101', 1776, 1776, '2016-09-27', '2016-09-27 18:56:59', 'aneksa', 'aneksa'),
('11', '1102', 0, 1523, '2016-09-24', '2016-09-24 14:57:58', 'alvian', 'alvian'),
('11', '1102', 1523, 1523, '2016-09-28', '2016-09-28 11:14:22', 'alvian', 'alvian'),
('11', '1103', 0, 1353, '2016-09-24', '2016-09-24 14:57:58', 'alvian', 'alvian'),
('11', '1104', 0, 1470, '2016-09-24', '2016-09-24 14:57:58', 'alvian', 'alvian'),
('11', '1105', 0, 1677, '2016-09-24', '2016-09-24 14:57:58', 'alvian', 'alvian'),
('11', '1106', 0, 1211, '2016-09-24', '2016-09-24 14:57:58', 'alvian', 'alvian'),
('11', '1107', 0, 1175, '2016-09-24', '2016-09-24 14:57:58', 'alvian', 'alvian'),
('11', '1108', 0, 1378, '2016-09-24', '2016-09-24 14:57:58', 'alvian', 'alvian'),
('11', '1109', 0, 1805, '2016-09-24', '2016-09-24 14:57:58', 'alvian', 'alvian'),
('11', '1110', 0, 1351, '2016-09-24', '2016-09-24 14:57:58', 'alvian', 'alvian'),
('11', '1111', 0, 1011, '2016-09-24', '2016-09-24 14:57:58', 'alvian', 'alvian'),
('11', '1112', 0, 1518, '2016-09-24', '2016-09-24 14:57:58', 'alvian', 'alvian'),
('11', '1113', 0, 1237, '2016-09-24', '2016-09-24 14:57:58', 'alvian', 'alvian'),
('11', '1114', 0, 1305, '2016-09-24', '2016-09-24 14:57:58', 'alvian', 'alvian'),
('11', '1115', 0, 1449, '2016-09-24', '2016-09-24 14:57:58', 'alvian', 'alvian'),
('11', '1116', 0, 1627, '2016-09-24', '2016-09-24 14:57:58', 'alvian', 'alvian'),
('11', '1117', 0, 1716, '2016-09-24', '2016-09-24 14:57:58', 'alvian', 'alvian'),
('11', '1118', 0, 1290, '2016-09-24', '2016-09-24 14:57:58', 'alvian', 'alvian'),
('11', '1171', 0, 1499, '2016-09-24', '2016-09-24 14:57:58', 'alvian', 'alvian'),
('11', '1172', 0, 1317, '2016-09-24', '2016-09-24 14:57:58', 'alvian', 'alvian'),
('11', '1173', 0, 1297, '2016-09-24', '2016-09-24 14:57:58', 'alvian', 'alvian'),
('11', '1174', 0, 1832, '2016-09-24', '2016-09-24 14:57:58', 'alvian', 'alvian'),
('11', '1175', 0, 1500, '2016-09-24', '2016-09-24 14:57:58', 'alvian', 'alvian'),
('12', '1201', 0, 1422, '2016-09-24', '2016-09-24 14:57:58', 'alvian', 'alvian'),
('12', '1202', 0, 1017, '2016-09-24', '2016-09-24 14:57:58', 'alvian', 'alvian'),
('12', '1203', 0, 1605, '2016-09-24', '2016-09-24 14:57:58', 'alvian', 'alvian'),
('12', '1204', 0, 1518, '2016-09-24', '2016-09-24 14:57:58', 'alvian', 'alvian'),
('12', '1205', 0, 1696, '2016-09-24', '2016-09-24 14:57:58', 'alvian', 'alvian'),
('12', '1206', 0, 1594, '2016-09-24', '2016-09-24 14:57:58', 'alvian', 'alvian'),
('12', '1207', 0, 1671, '2016-09-24', '2016-09-24 14:57:58', 'alvian', 'alvian'),
('12', '1208', 0, 1756, '2016-09-24', '2016-09-24 14:57:58', 'alvian', 'alvian'),
('12', '1209', 0, 1762, '2016-09-24', '2016-09-24 14:57:58', 'alvian', 'alvian'),
('12', '1210', 0, 1973, '2016-09-24', '2016-09-24 14:57:58', 'alvian', 'alvian'),
('12', '1211', 0, 1077, '2016-09-24', '2016-09-24 14:57:58', 'alvian', 'alvian'),
('12', '1212', 0, 1012, '2016-09-24', '2016-09-24 14:57:58', 'alvian', 'alvian'),
('12', '1213', 0, 1117, '2016-09-24', '2016-09-24 14:57:58', 'alvian', 'alvian'),
('12', '1214', 0, 1779, '2016-09-24', '2016-09-24 14:57:58', 'alvian', 'alvian'),
('12', '1215', 0, 1870, '2016-09-24', '2016-09-24 14:57:58', 'alvian', 'alvian'),
('12', '1216', 0, 1665, '2016-09-24', '2016-09-24 14:57:58', 'alvian', 'alvian'),
('12', '1217', 0, 1851, '2016-09-24', '2016-09-24 14:57:58', 'alvian', 'alvian'),
('12', '1218', 0, 1954, '2016-09-24', '2016-09-24 14:57:58', 'alvian', 'alvian'),
('12', '1219', 0, 1526, '2016-09-24', '2016-09-24 14:57:58', 'alvian', 'alvian'),
('12', '1220', 0, 1825, '2016-09-24', '2016-09-24 14:57:58', 'alvian', 'alvian'),
('12', '1221', 0, 1095, '2016-09-24', '2016-09-24 14:57:58', 'alvian', 'alvian'),
('12', '1222', 0, 1097, '2016-09-24', '2016-09-24 14:57:58', 'alvian', 'alvian'),
('12', '1223', 0, 1347, '2016-09-24', '2016-09-24 14:57:58', 'alvian', 'alvian'),
('12', '1224', 0, 1753, '2016-09-24', '2016-09-24 14:57:58', 'alvian', 'alvian'),
('12', '1225', 0, 1508, '2016-09-24', '2016-09-24 14:57:58', 'alvian', 'alvian'),
('12', '1271', 0, 1240, '2016-09-24', '2016-09-24 14:57:58', 'alvian', 'alvian'),
('12', '1272', 0, 1778, '2016-09-24', '2016-09-24 14:57:58', 'alvian', 'alvian'),
('12', '1273', 0, 1328, '2016-09-24', '2016-09-24 14:57:58', 'alvian', 'alvian'),
('12', '1274', 0, 1072, '2016-09-24', '2016-09-24 14:57:58', 'alvian', 'alvian'),
('12', '1275', 0, 1312, '2016-09-24', '2016-09-24 14:57:58', 'alvian', 'alvian'),
('12', '1276', 0, 1248, '2016-09-24', '2016-09-24 14:57:58', 'alvian', 'alvian'),
('12', '1277', 0, 1521, '2016-09-24', '2016-09-24 14:57:58', 'alvian', 'alvian'),
('12', '1278', 0, 1178, '2016-09-24', '2016-09-24 14:57:58', 'alvian', 'alvian'),
('13', '1301', 0, 1571, '2016-09-24', '2016-09-24 14:57:58', 'alvian', 'alvian'),
('13', '1302', 0, 1041, '2016-09-24', '2016-09-24 14:57:58', 'alvian', 'alvian'),
('13', '1303', 0, 1879, '2016-09-24', '2016-09-24 14:57:58', 'alvian', 'alvian'),
('13', '1304', 0, 1739, '2016-09-24', '2016-09-24 14:57:58', 'alvian', 'alvian'),
('13', '1305', 0, 1638, '2016-09-24', '2016-09-24 14:57:58', 'alvian', 'alvian'),
('13', '1306', 0, 1169, '2016-09-24', '2016-09-24 14:57:58', 'alvian', 'alvian'),
('13', '1307', 0, 1564, '2016-09-24', '2016-09-24 14:57:58', 'alvian', 'alvian'),
('13', '1308', 0, 1367, '2016-09-24', '2016-09-24 14:57:58', 'alvian', 'alvian'),
('13', '1309', 0, 1827, '2016-09-24', '2016-09-24 14:57:58', 'alvian', 'alvian'),
('13', '1310', 0, 1931, '2016-09-24', '2016-09-24 14:57:58', 'alvian', 'alvian'),
('13', '1311', 0, 1261, '2016-09-24', '2016-09-24 14:57:58', 'alvian', 'alvian'),
('13', '1312', 0, 1965, '2016-09-24', '2016-09-24 14:57:58', 'alvian', 'alvian'),
('13', '1371', 0, 1679, '2016-09-24', '2016-09-24 14:57:58', 'alvian', 'alvian'),
('13', '1372', 0, 1200, '2016-09-24', '2016-09-24 14:57:58', 'alvian', 'alvian'),
('13', '1373', 0, 1692, '2016-09-24', '2016-09-24 14:57:58', 'alvian', 'alvian'),
('13', '1374', 0, 1612, '2016-09-24', '2016-09-24 14:57:58', 'alvian', 'alvian'),
('13', '1375', 0, 1430, '2016-09-24', '2016-09-24 14:57:58', 'alvian', 'alvian'),
('13', '1376', 0, 1277, '2016-09-24', '2016-09-24 14:57:58', 'alvian', 'alvian'),
('13', '1377', 0, 1267, '2016-09-24', '2016-09-24 14:57:58', 'alvian', 'alvian'),
('14', '1401', 0, 1736, '2016-09-24', '2016-09-24 14:57:58', 'alvian', 'alvian');

-- --------------------------------------------------------

--
-- Table structure for table `sth-provinsi`
--

CREATE TABLE `sth-provinsi` (
  `id_provinsi` varchar(2) COLLATE utf8_unicode_ci NOT NULL,
  `nama_provinsi` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sth-provinsi`
--

INSERT INTO `sth-provinsi` (`id_provinsi`, `nama_provinsi`) VALUES
('11', 'ACEH'),
('12', 'SUMATERA UTARA'),
('13', 'SUMATERA BARAT'),
('14', 'RIAU'),
('15', 'JAMBI'),
('16', 'SUMATERA SELATAN'),
('17', 'BENGKULU'),
('18', 'LAMPUNG'),
('19', 'KEPULAUAN BANGKA BELITUNG'),
('21', 'KEPULAUAN RIAU'),
('31', 'DKI JAKARTA'),
('32', 'JAWA BARAT'),
('33', 'JAWA TENGAH'),
('34', 'DI YOGYAKARTA'),
('35', 'JAWA TIMUR'),
('36', 'BANTEN'),
('51', 'BALI'),
('52', 'NUSA TENGGARA BARAT'),
('53', 'NUSA TENGGARA TIMUR'),
('61', 'KALIMANTAN BARAT'),
('62', 'KALIMANTAN TENGAH'),
('63', 'KALIMANTAN SELATAN'),
('64', 'KALIMANTAN TIMUR'),
('65', 'KALIMANTAN UTARA'),
('71', 'SULAWESI UTARA'),
('72', 'SULAWESI TENGAH'),
('73', 'SULAWESI SELATAN'),
('74', 'SULAWESI TENGGARA'),
('75', 'GORONTALO'),
('76', 'SULAWESI BARAT'),
('81', 'MALUKU'),
('82', 'MALUKU UTARA'),
('91', 'PAPUA BARAT'),
('94', 'PAPUA');

-- --------------------------------------------------------

--
-- Table structure for table `survey`
--

CREATE TABLE `survey` (
  `id_survey` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `nama_survey` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tgl_mulai` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tgl_selesai` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `tahun` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tgl_create` datetime NOT NULL,
  `tgl_update` datetime NOT NULL,
  `user_create` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `user_update` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `survey`
--

INSERT INTO `survey` (`id_survey`, `nama_survey`, `tgl_mulai`, `tgl_selesai`, `status`, `tahun`, `tgl_create`, `tgl_update`, `user_create`, `user_update`) VALUES
('SK', 'Survey Kesejahteraan', '2016-08-29', '2016-09-26', 0, '2016', '2016-08-29 12:01:02', '2016-08-29 12:01:02', 'alvian', 'alvian'),
('SPN', 'Survey Penggunaan Narkotika', '2016-09-25', '2016-10-31', 0, '2016', '2016-09-24 07:42:50', '2016-09-24 07:42:50', 'alvian', 'alvian'),
('STH', 'Survey Tunjangan Hidup', '2016-09-25', '2016-10-31', 0, '2016', '2016-09-24 07:57:14', '2016-09-24 07:57:14', 'alvian', 'alvian');

-- --------------------------------------------------------

--
-- Table structure for table `tahapansurvey`
--

CREATE TABLE `tahapansurvey` (
  `id_tahapan` int(11) NOT NULL,
  `id_survey` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `nama_tahapan` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tgl_mulai` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tgl_selesai` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tgl_create` datetime NOT NULL,
  `tgl_update` datetime NOT NULL,
  `user_create` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `user_update` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tahapansurvey`
--

INSERT INTO `tahapansurvey` (`id_tahapan`, `id_survey`, `nama_tahapan`, `tgl_mulai`, `tgl_selesai`, `tgl_create`, `tgl_update`, `user_create`, `user_update`) VALUES
(1, 'SK', 'pemutakhiran', '2016-08-30', '2016-09-04', '2016-08-29 12:01:02', '2016-08-29 12:01:02', 'alvian', 'alvian'),
(1, 'SPN', 'pencacahan', '2016-09-25', '2016-09-25', '2016-09-24 07:42:50', '2016-09-24 07:42:50', 'alvian', 'alvian'),
(1, 'STH', 'pencacahan', '2016-09-25', '2016-09-30', '2016-09-24 07:57:14', '2016-09-24 07:57:14', 'alvian', 'alvian');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id_user` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `nip_user` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `level_user` int(11) NOT NULL,
  `avatar` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id_user`, `name`, `username`, `nip_user`, `level_user`, `avatar`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Andy Eka', 'aneksa', '123123', 1, '', NULL, '2016-08-28 13:22:44', '2016-09-17 06:07:45'),
(2, 'Alvian Supriadi', 'alvian', '111111', 1, '', NULL, '2016-08-28 13:22:44', '2016-09-07 20:57:28'),
(3, 'Hengky', 'hengky', '222222', 2, '', NULL, '2016-08-28 13:22:44', '2016-08-28 13:22:44'),
(4, 'Kamal', 'kamal', '333333', 2, '', NULL, '2016-08-28 13:22:44', '2016-08-28 13:22:44'),
(9, 'Devira', 'devira', '121212', 2, '', NULL, '2016-08-29 21:47:34', '2016-08-29 21:47:34'),
(46, 'Luthfi', 'okOG7f', '191919', 2, '', NULL, '2016-09-07 21:20:43', '2016-09-07 21:20:43'),
(47, 'Prasta', 'daVANm', '198198', 2, '', NULL, '2016-09-07 21:21:21', '2016-09-07 21:21:21'),
(48, 'Febri', 'kYABNj', '197197', 2, '', NULL, '2016-09-07 21:21:31', '2016-09-07 21:21:31'),
(49, 'Putra', '0GAOjR', '676578', 2, '', NULL, '2016-09-07 21:44:12', '2016-09-07 21:44:12'),
(50, 'Supriadi', 'lwWE8W', '979686', 2, '', NULL, '2016-09-07 21:44:50', '2016-09-17 05:59:29'),
(51, 'Ajeng', 'SGVbhw', '356786', 2, '', NULL, '2016-09-07 21:46:46', '2016-09-07 21:46:46'),
(52, 'Iqbal', 'KKjDyt', '657486', 2, '', NULL, '2016-09-07 21:47:13', '2016-09-07 21:47:13'),
(53, 'Mamam', 'iqik92', '878565', 2, '', NULL, '2016-09-07 22:15:07', '2016-09-07 22:15:07'),
(58, 'Reza Samsu', 'SNRc80', '0867526', 2, '', NULL, '2016-09-16 10:28:19', '2016-09-16 10:28:31'),
(59, 'Salim', 'RkpDJc', '6756752', 2, '', NULL, '2016-09-17 05:37:57', '2016-09-17 05:38:28'),
(60, 'Saryam Suhedi', 'X5D3HA', '6757278', 2, '', NULL, '2016-09-17 05:41:22', '2016-09-17 05:41:22'),
(61, 'Hana', 'StLXYg', '767578', 2, '', NULL, '2016-09-17 05:44:07', '2016-09-17 06:34:04'),
(62, 'Sumanto', 'M3tT9l', '7867547', 2, '', NULL, '2016-09-17 06:34:20', '2016-09-17 10:48:21'),
(63, 'Ryan Baskara', '4fax31', '97757578', 2, '', NULL, '2016-09-17 06:44:37', '2016-09-17 07:25:09'),
(64, 'Wawan Setiadi', '8CgQ7e', '909090', 2, '', NULL, '2016-09-19 21:08:11', '2016-09-28 13:20:22');

-- --------------------------------------------------------

--
-- Table structure for table `wilayah`
--

CREATE TABLE `wilayah` (
  `id_wilayah` int(11) NOT NULL,
  `id_survey` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `nama_wilayah` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `data_wilayah` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tgl_create` datetime NOT NULL,
  `tgl_update` datetime NOT NULL,
  `user_create` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `user_update` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `wilayah`
--

INSERT INTO `wilayah` (`id_wilayah`, `id_survey`, `nama_wilayah`, `data_wilayah`, `tgl_create`, `tgl_update`, `user_create`, `user_update`) VALUES
(1, 'SK', 'provinsi', 'SK-provinsi', '2016-08-29 12:01:02', '2016-08-29 12:01:02', 'alvian', 'alvian'),
(1, 'SPN', 'provinsi', 'SPN-provinsi', '2016-09-24 07:42:50', '2016-09-24 07:42:50', 'alvian', 'alvian'),
(1, 'STH', 'provinsi', 'STH-provinsi', '2016-09-24 07:57:14', '2016-09-24 07:57:14', 'alvian', 'alvian'),
(2, 'SPN', 'kabkot', 'SPN-kabkot', '2016-09-24 07:42:50', '2016-09-24 07:42:50', 'alvian', 'alvian'),
(2, 'STH', 'kabkot', 'STH-kabkot', '2016-09-24 07:57:14', '2016-09-24 07:57:14', 'alvian', 'alvian');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `loguser`
--
ALTER TABLE `loguser`
  ADD PRIMARY KEY (`id_log`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

--
-- Indexes for table `sk-hakakses`
--
ALTER TABLE `sk-hakakses`
  ADD PRIMARY KEY (`id_users`,`hakakses`);

--
-- Indexes for table `sk-hakakses-wilayah`
--
ALTER TABLE `sk-hakakses-wilayah`
  ADD PRIMARY KEY (`id_provinsi`,`id_users`);

--
-- Indexes for table `sk-pemutakhiran`
--
ALTER TABLE `sk-pemutakhiran`
  ADD PRIMARY KEY (`id_provinsi`);

--
-- Indexes for table `sk-pemutakhiran-hist`
--
ALTER TABLE `sk-pemutakhiran-hist`
  ADD PRIMARY KEY (`id_provinsi`,`tgl_create`);

--
-- Indexes for table `sk-pemutakhiran-histgl`
--
ALTER TABLE `sk-pemutakhiran-histgl`
  ADD PRIMARY KEY (`id_provinsi`,`tgl_create`);

--
-- Indexes for table `sk-provinsi`
--
ALTER TABLE `sk-provinsi`
  ADD PRIMARY KEY (`id_provinsi`);

--
-- Indexes for table `spn-hakakses`
--
ALTER TABLE `spn-hakakses`
  ADD PRIMARY KEY (`id_users`,`hakakses`);

--
-- Indexes for table `spn-hakakses-wilayah`
--
ALTER TABLE `spn-hakakses-wilayah`
  ADD PRIMARY KEY (`id_provinsi`,`id_kabkot`,`id_users`);

--
-- Indexes for table `spn-kabkot`
--
ALTER TABLE `spn-kabkot`
  ADD PRIMARY KEY (`id_kabkot`);

--
-- Indexes for table `spn-pencacahan`
--
ALTER TABLE `spn-pencacahan`
  ADD PRIMARY KEY (`id_provinsi`,`id_kabkot`);

--
-- Indexes for table `spn-pencacahan-hist`
--
ALTER TABLE `spn-pencacahan-hist`
  ADD PRIMARY KEY (`id_provinsi`,`id_kabkot`,`tgl_create`);

--
-- Indexes for table `spn-pencacahan-histgl`
--
ALTER TABLE `spn-pencacahan-histgl`
  ADD PRIMARY KEY (`id_provinsi`,`id_kabkot`,`tgl_create`);

--
-- Indexes for table `spn-provinsi`
--
ALTER TABLE `spn-provinsi`
  ADD PRIMARY KEY (`id_provinsi`);

--
-- Indexes for table `sth-hakakses`
--
ALTER TABLE `sth-hakakses`
  ADD PRIMARY KEY (`id_users`,`hakakses`);

--
-- Indexes for table `sth-hakakses-wilayah`
--
ALTER TABLE `sth-hakakses-wilayah`
  ADD PRIMARY KEY (`id_provinsi`,`id_kabkot`,`id_users`);

--
-- Indexes for table `sth-kabkot`
--
ALTER TABLE `sth-kabkot`
  ADD PRIMARY KEY (`id_kabkot`);

--
-- Indexes for table `sth-pencacahan`
--
ALTER TABLE `sth-pencacahan`
  ADD PRIMARY KEY (`id_provinsi`,`id_kabkot`);

--
-- Indexes for table `sth-pencacahan-hist`
--
ALTER TABLE `sth-pencacahan-hist`
  ADD PRIMARY KEY (`id_provinsi`,`id_kabkot`,`tgl_create`);

--
-- Indexes for table `sth-pencacahan-histgl`
--
ALTER TABLE `sth-pencacahan-histgl`
  ADD PRIMARY KEY (`id_provinsi`,`id_kabkot`,`tgl_create`);

--
-- Indexes for table `sth-provinsi`
--
ALTER TABLE `sth-provinsi`
  ADD PRIMARY KEY (`id_provinsi`);

--
-- Indexes for table `survey`
--
ALTER TABLE `survey`
  ADD PRIMARY KEY (`id_survey`);

--
-- Indexes for table `tahapansurvey`
--
ALTER TABLE `tahapansurvey`
  ADD PRIMARY KEY (`id_tahapan`,`id_survey`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id_user`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD UNIQUE KEY `users_nip_user_unique` (`nip_user`);

--
-- Indexes for table `wilayah`
--
ALTER TABLE `wilayah`
  ADD PRIMARY KEY (`id_wilayah`,`id_survey`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `loguser`
--
ALTER TABLE `loguser`
  MODIFY `id_log` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id_user` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
