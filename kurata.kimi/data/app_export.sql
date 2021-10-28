-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Oct 27, 2021 at 09:13 PM
-- Server version: 5.6.51-cll-lve
-- PHP Version: 7.3.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kimikurata_wnm608`
--

-- --------------------------------------------------------

--
-- Table structure for table `track_flowers`
--

CREATE TABLE `track_flowers` (
  `id` int(13) NOT NULL,
  `user_id` int(13) NOT NULL,
  `name` varchar(64) NOT NULL,
  `type` varchar(64) NOT NULL,
  `size` varchar(64) NOT NULL,
  `img` varchar(256) NOT NULL,
  `date_create` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `track_flowers`
--

INSERT INTO `track_flowers` (`id`, `user_id`, `name`, `type`, `size`, `img`, `date_create`) VALUES
(1, 4, 'Fanfare', 'Tulip', 'large', 'https://via.placeholder.com/400/902/fff/?text=Fanfare', '2021-02-28 10:30:56'),
(2, 6, 'Inventure', 'Rose', 'small', 'https://via.placeholder.com/400/736/fff/?text=Inventure', '2020-12-10 12:41:38'),
(3, 9, 'Earthpure', 'Tulip', 'small', 'https://via.placeholder.com/400/824/fff/?text=Earthpure', '2021-05-28 07:01:26'),
(4, 2, 'Enormo', 'Rose', 'large', 'https://via.placeholder.com/400/815/fff/?text=Enormo', '2020-03-15 07:28:10'),
(5, 10, 'Portica', 'Rose', 'small', 'https://via.placeholder.com/400/739/fff/?text=Portica', '2021-08-06 04:05:10'),
(6, 4, 'Telpod', 'Tulip', 'small', 'https://via.placeholder.com/400/858/fff/?text=Telpod', '2020-06-09 01:05:27'),
(7, 2, 'Intradisk', 'Lily', 'medium', 'https://via.placeholder.com/400/788/fff/?text=Intradisk', '2021-04-20 08:23:59'),
(8, 4, 'Endicil', 'Tulip', 'large', 'https://via.placeholder.com/400/927/fff/?text=Endicil', '2021-03-28 03:35:03'),
(9, 6, 'Nurali', 'Tulip', 'medium', 'https://via.placeholder.com/400/891/fff/?text=Nurali', '2020-04-19 10:46:15'),
(10, 5, 'Omnigog', 'Tulip', 'large', 'https://via.placeholder.com/400/805/fff/?text=Omnigog', '2021-01-13 02:00:05'),
(11, 1, 'Apextri', 'Rose', 'small', 'https://via.placeholder.com/400/968/fff/?text=Apextri', '2020-09-06 04:57:27'),
(12, 10, 'Stelaecor', 'Rose', 'small', 'https://via.placeholder.com/400/700/fff/?text=Stelaecor', '2021-03-15 05:14:08'),
(13, 6, 'Sultraxin', 'Tulip', 'small', 'https://via.placeholder.com/400/905/fff/?text=Sultraxin', '2020-10-22 10:13:51'),
(14, 8, 'Viagrand', 'Tulip', 'medium', 'https://via.placeholder.com/400/945/fff/?text=Viagrand', '2021-09-02 03:44:29'),
(15, 2, 'Junipoor', 'Lily', 'medium', 'https://via.placeholder.com/400/824/fff/?text=Junipoor', '2020-07-03 06:21:21'),
(16, 7, 'Hivedom', 'Tulip', 'medium', 'https://via.placeholder.com/400/998/fff/?text=Hivedom', '2021-06-21 05:58:01'),
(17, 6, 'Earthwax', 'Lily', 'large', 'https://via.placeholder.com/400/762/fff/?text=Earthwax', '2020-09-08 11:17:01'),
(18, 9, 'Datagen', 'Lily', 'large', 'https://via.placeholder.com/400/911/fff/?text=Datagen', '2020-06-30 05:11:12'),
(19, 7, 'Bolax', 'Lily', 'large', 'https://via.placeholder.com/400/745/fff/?text=Bolax', '2021-09-29 07:06:29'),
(20, 10, 'Datacator', 'Tulip', 'large', 'https://via.placeholder.com/400/843/fff/?text=Datacator', '2020-08-25 01:40:50'),
(21, 3, 'Aquacine', 'Tulip', 'small', 'https://via.placeholder.com/400/700/fff/?text=Aquacine', '2020-06-18 05:13:04'),
(22, 8, 'Acium', 'Tulip', 'large', 'https://via.placeholder.com/400/899/fff/?text=Acium', '2021-09-10 12:06:44'),
(23, 8, 'Roboid', 'Lily', 'medium', 'https://via.placeholder.com/400/876/fff/?text=Roboid', '2021-10-20 10:27:07'),
(24, 9, 'Calcu', 'Rose', 'medium', 'https://via.placeholder.com/400/905/fff/?text=Calcu', '2021-10-26 03:38:43'),
(25, 8, 'Zepitope', 'Rose', 'large', 'https://via.placeholder.com/400/925/fff/?text=Zepitope', '2020-03-18 04:18:27'),
(26, 7, 'Motovate', 'Rose', 'small', 'https://via.placeholder.com/400/868/fff/?text=Motovate', '2020-07-14 12:51:18'),
(27, 3, 'Prosure', 'Rose', 'medium', 'https://via.placeholder.com/400/796/fff/?text=Prosure', '2020-03-22 02:46:28'),
(28, 9, 'Sealoud', 'Tulip', 'large', 'https://via.placeholder.com/400/793/fff/?text=Sealoud', '2020-01-03 02:16:01'),
(29, 2, 'Cubix', 'Rose', 'large', 'https://via.placeholder.com/400/895/fff/?text=Cubix', '2020-04-03 08:24:44'),
(30, 1, 'Entropix', 'Rose', 'large', 'https://via.placeholder.com/400/782/fff/?text=Entropix', '2020-01-16 01:35:54'),
(31, 3, 'Bitrex', 'Tulip', 'large', 'https://via.placeholder.com/400/885/fff/?text=Bitrex', '2021-03-31 01:50:54'),
(32, 10, 'Idego', 'Rose', 'large', 'https://via.placeholder.com/400/814/fff/?text=Idego', '2020-08-10 11:33:43'),
(33, 1, 'Mazuda', 'Tulip', 'medium', 'https://via.placeholder.com/400/868/fff/?text=Mazuda', '2020-09-06 10:30:44'),
(34, 3, 'Tingles', 'Lily', 'medium', 'https://via.placeholder.com/400/926/fff/?text=Tingles', '2021-05-19 07:51:06'),
(35, 7, 'Pearlesex', 'Tulip', 'large', 'https://via.placeholder.com/400/761/fff/?text=Pearlesex', '2020-03-25 10:39:10'),
(36, 9, 'Animalia', 'Tulip', 'medium', 'https://via.placeholder.com/400/776/fff/?text=Animalia', '2021-04-27 01:55:25'),
(37, 3, 'Ewaves', 'Tulip', 'large', 'https://via.placeholder.com/400/734/fff/?text=Ewaves', '2021-01-13 05:34:02'),
(38, 7, 'Vitricomp', 'Lily', 'large', 'https://via.placeholder.com/400/877/fff/?text=Vitricomp', '2021-03-08 11:07:57'),
(39, 3, 'Ecrater', 'Lily', 'large', 'https://via.placeholder.com/400/824/fff/?text=Ecrater', '2021-08-06 05:58:23'),
(40, 10, 'Jumpstack', 'Tulip', 'large', 'https://via.placeholder.com/400/830/fff/?text=Jumpstack', '2021-02-24 11:32:20'),
(41, 3, 'Imaginart', 'Lily', 'large', 'https://via.placeholder.com/400/957/fff/?text=Imaginart', '2020-03-14 10:02:50'),
(42, 7, 'Providco', 'Lily', 'small', 'https://via.placeholder.com/400/741/fff/?text=Providco', '2020-06-08 10:39:48'),
(43, 5, 'Geekol', 'Tulip', 'large', 'https://via.placeholder.com/400/980/fff/?text=Geekol', '2021-02-28 09:54:39'),
(44, 5, 'Inquala', 'Lily', 'large', 'https://via.placeholder.com/400/938/fff/?text=Inquala', '2020-07-22 04:19:48'),
(45, 1, 'Eventex', 'Rose', 'small', 'https://via.placeholder.com/400/875/fff/?text=Eventex', '2021-06-21 09:00:43'),
(46, 10, 'Medifax', 'Rose', 'small', 'https://via.placeholder.com/400/993/fff/?text=Medifax', '2020-07-22 02:53:35'),
(47, 6, 'Krog', 'Rose', 'medium', 'https://via.placeholder.com/400/921/fff/?text=Krog', '2021-02-19 06:03:22'),
(48, 7, 'Quarmony', 'Tulip', 'small', 'https://via.placeholder.com/400/750/fff/?text=Quarmony', '2020-02-21 05:08:40'),
(49, 6, 'Orbin', 'Tulip', 'large', 'https://via.placeholder.com/400/770/fff/?text=Orbin', '2021-04-24 10:59:22'),
(50, 8, 'Octocore', 'Rose', 'small', 'https://via.placeholder.com/400/720/fff/?text=Octocore', '2021-04-26 07:36:57');

-- --------------------------------------------------------

--
-- Table structure for table `track_locations`
--

CREATE TABLE `track_locations` (
  `id` int(13) NOT NULL,
  `flower_id` int(13) NOT NULL,
  `lat` decimal(8,6) NOT NULL,
  `lng` decimal(9,6) NOT NULL,
  `color` varchar(64) NOT NULL,
  `photo` varchar(256) NOT NULL,
  `icon` varchar(256) NOT NULL,
  `date_create` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `track_locations`
--

INSERT INTO `track_locations` (`id`, `flower_id`, `lat`, `lng`, `color`, `photo`, `icon`, `date_create`) VALUES
(1, 6, 37.429667, -122.168277, 'pink', 'https://via.placeholder.com/400/', 'https://via.placeholder.com/400/?text=ICON', '2020-10-15 03:21:11'),
(2, 10, 37.429667, -122.168277, 'white', 'https://via.placeholder.com/400/', 'https://via.placeholder.com/400/?text=ICON', '2021-05-17 07:35:26'),
(3, 5, 37.429667, -122.168277, 'red', 'https://via.placeholder.com/400/', 'https://via.placeholder.com/400/?text=ICON', '2020-11-27 04:17:51'),
(4, 9, 37.429667, -122.168277, 'white', 'https://via.placeholder.com/400/', 'https://via.placeholder.com/400/?text=ICON', '2020-04-20 01:17:55'),
(5, 5, 37.429667, -122.168277, 'purple', 'https://via.placeholder.com/400/', 'https://via.placeholder.com/400/?text=ICON', '2020-10-22 02:03:26'),
(6, 10, 37.429667, -122.168277, 'white', 'https://via.placeholder.com/400/', 'https://via.placeholder.com/400/?text=ICON', '2020-08-20 06:37:41'),
(7, 3, 37.429667, -122.168277, 'purple', 'https://via.placeholder.com/400/', 'https://via.placeholder.com/400/?text=ICON', '2020-01-22 11:14:18'),
(8, 3, 37.429667, -122.168277, 'pink', 'https://via.placeholder.com/400/', 'https://via.placeholder.com/400/?text=ICON', '2021-07-09 04:20:39'),
(9, 1, 37.429667, -122.168277, 'pink', 'https://via.placeholder.com/400/', 'https://via.placeholder.com/400/?text=ICON', '2020-02-23 11:58:50'),
(10, 6, 37.429667, -122.168277, 'red', 'https://via.placeholder.com/400/', 'https://via.placeholder.com/400/?text=ICON', '2021-10-25 12:21:28'),
(11, 10, 37.429667, -122.168277, 'red', 'https://via.placeholder.com/400/', 'https://via.placeholder.com/400/?text=ICON', '2020-10-12 12:55:35'),
(12, 4, 37.429667, -122.168277, 'purple', 'https://via.placeholder.com/400/', 'https://via.placeholder.com/400/?text=ICON', '2020-07-20 03:25:03'),
(13, 9, 37.429667, -122.168277, 'white', 'https://via.placeholder.com/400/', 'https://via.placeholder.com/400/?text=ICON', '2020-12-29 10:44:18'),
(14, 2, 37.429667, -122.168277, 'white', 'https://via.placeholder.com/400/', 'https://via.placeholder.com/400/?text=ICON', '2020-01-29 05:29:47'),
(15, 2, 37.429667, -122.168277, 'white', 'https://via.placeholder.com/400/', 'https://via.placeholder.com/400/?text=ICON', '2020-02-05 07:27:07'),
(16, 3, 37.429667, -122.168277, 'purple', 'https://via.placeholder.com/400/', 'https://via.placeholder.com/400/?text=ICON', '2020-03-02 05:19:16'),
(17, 10, 37.429667, -122.168277, 'purple', 'https://via.placeholder.com/400/', 'https://via.placeholder.com/400/?text=ICON', '2021-07-10 07:01:25'),
(18, 7, 37.429667, -122.168277, 'white', 'https://via.placeholder.com/400/', 'https://via.placeholder.com/400/?text=ICON', '2020-07-23 08:52:12'),
(19, 1, 37.429667, -122.168277, 'red', 'https://via.placeholder.com/400/', 'https://via.placeholder.com/400/?text=ICON', '2020-10-17 10:06:35'),
(20, 1, 37.429667, -122.168277, 'red', 'https://via.placeholder.com/400/', 'https://via.placeholder.com/400/?text=ICON', '2021-10-02 03:14:15'),
(21, 7, 37.429667, -122.168277, 'white', 'https://via.placeholder.com/400/', 'https://via.placeholder.com/400/?text=ICON', '2021-08-17 01:46:06'),
(22, 5, 37.429667, -122.168277, 'red', 'https://via.placeholder.com/400/', 'https://via.placeholder.com/400/?text=ICON', '2020-09-21 03:10:54'),
(23, 2, 37.429667, -122.168277, 'purple', 'https://via.placeholder.com/400/', 'https://via.placeholder.com/400/?text=ICON', '2020-08-17 03:00:26'),
(24, 10, 37.429667, -122.168277, 'pink', 'https://via.placeholder.com/400/', 'https://via.placeholder.com/400/?text=ICON', '2020-07-26 09:02:37'),
(25, 2, 37.429667, -122.168277, 'white', 'https://via.placeholder.com/400/', 'https://via.placeholder.com/400/?text=ICON', '2021-03-27 04:36:09'),
(26, 3, 37.429667, -122.168277, 'pink', 'https://via.placeholder.com/400/', 'https://via.placeholder.com/400/?text=ICON', '2020-06-26 09:49:27'),
(27, 10, 37.429667, -122.168277, 'white', 'https://via.placeholder.com/400/', 'https://via.placeholder.com/400/?text=ICON', '2020-08-12 01:48:19'),
(28, 4, 37.429667, -122.168277, 'white', 'https://via.placeholder.com/400/', 'https://via.placeholder.com/400/?text=ICON', '2021-09-05 12:59:21'),
(29, 4, 37.429667, -122.168277, 'white', 'https://via.placeholder.com/400/', 'https://via.placeholder.com/400/?text=ICON', '2021-01-04 03:27:51'),
(30, 6, 37.429667, -122.168277, 'white', 'https://via.placeholder.com/400/', 'https://via.placeholder.com/400/?text=ICON', '2020-03-25 08:03:01'),
(31, 2, 37.429667, -122.168277, 'purple', 'https://via.placeholder.com/400/', 'https://via.placeholder.com/400/?text=ICON', '2021-05-12 12:30:20'),
(32, 1, 37.429667, -122.168277, 'purple', 'https://via.placeholder.com/400/', 'https://via.placeholder.com/400/?text=ICON', '2020-06-03 10:33:38'),
(33, 2, 37.429667, -122.168277, 'white', 'https://via.placeholder.com/400/', 'https://via.placeholder.com/400/?text=ICON', '2021-08-21 09:25:57'),
(34, 3, 37.429667, -122.168277, 'white', 'https://via.placeholder.com/400/', 'https://via.placeholder.com/400/?text=ICON', '2020-01-22 03:23:27'),
(35, 9, 37.429667, -122.168277, 'purple', 'https://via.placeholder.com/400/', 'https://via.placeholder.com/400/?text=ICON', '2020-07-17 10:49:13'),
(36, 8, 37.429667, -122.168277, 'pink', 'https://via.placeholder.com/400/', 'https://via.placeholder.com/400/?text=ICON', '2020-11-29 11:57:02'),
(37, 3, 37.429667, -122.168277, 'white', 'https://via.placeholder.com/400/', 'https://via.placeholder.com/400/?text=ICON', '2021-03-23 02:55:38'),
(38, 7, 37.429667, -122.168277, 'white', 'https://via.placeholder.com/400/', 'https://via.placeholder.com/400/?text=ICON', '2020-01-28 11:28:19'),
(39, 3, 37.429667, -122.168277, 'red', 'https://via.placeholder.com/400/', 'https://via.placeholder.com/400/?text=ICON', '2021-10-22 01:11:59'),
(40, 4, 37.429667, -122.168277, 'purple', 'https://via.placeholder.com/400/', 'https://via.placeholder.com/400/?text=ICON', '2020-04-28 03:33:08'),
(41, 5, 37.429667, -122.168277, 'pink', 'https://via.placeholder.com/400/', 'https://via.placeholder.com/400/?text=ICON', '2020-03-02 02:53:15'),
(42, 2, 37.429667, -122.168277, 'white', 'https://via.placeholder.com/400/', 'https://via.placeholder.com/400/?text=ICON', '2021-05-09 06:01:07'),
(43, 2, 37.429667, -122.168277, 'red', 'https://via.placeholder.com/400/', 'https://via.placeholder.com/400/?text=ICON', '2021-01-29 12:23:49'),
(44, 4, 37.429667, -122.168277, 'red', 'https://via.placeholder.com/400/', 'https://via.placeholder.com/400/?text=ICON', '2021-06-22 05:52:14'),
(45, 2, 37.429667, -122.168277, 'red', 'https://via.placeholder.com/400/', 'https://via.placeholder.com/400/?text=ICON', '2020-06-16 03:11:41'),
(46, 10, 37.429667, -122.168277, 'red', 'https://via.placeholder.com/400/', 'https://via.placeholder.com/400/?text=ICON', '2020-05-24 03:49:56'),
(47, 7, 37.429667, -122.168277, 'pink', 'https://via.placeholder.com/400/', 'https://via.placeholder.com/400/?text=ICON', '2020-02-21 01:33:18'),
(48, 5, 37.429667, -122.168277, 'white', 'https://via.placeholder.com/400/', 'https://via.placeholder.com/400/?text=ICON', '2020-06-28 05:05:42'),
(49, 10, 37.429667, -122.168277, 'red', 'https://via.placeholder.com/400/', 'https://via.placeholder.com/400/?text=ICON', '2020-04-19 05:57:41'),
(50, 6, 37.429667, -122.168277, 'white', 'https://via.placeholder.com/400/', 'https://via.placeholder.com/400/?text=ICON', '2021-08-08 02:07:54'),
(51, 4, 37.429667, -122.168277, 'white', 'https://via.placeholder.com/400/', 'https://via.placeholder.com/400/?text=ICON', '2020-12-19 07:13:58'),
(52, 3, 37.429667, -122.168277, 'purple', 'https://via.placeholder.com/400/', 'https://via.placeholder.com/400/?text=ICON', '2020-09-07 11:36:09'),
(53, 9, 37.429667, -122.168277, 'purple', 'https://via.placeholder.com/400/', 'https://via.placeholder.com/400/?text=ICON', '2021-10-10 10:45:38'),
(54, 10, 37.429667, -122.168277, 'white', 'https://via.placeholder.com/400/', 'https://via.placeholder.com/400/?text=ICON', '2020-01-21 07:51:50'),
(55, 8, 37.429667, -122.168277, 'red', 'https://via.placeholder.com/400/', 'https://via.placeholder.com/400/?text=ICON', '2020-06-07 09:12:44'),
(56, 7, 37.429667, -122.168277, 'purple', 'https://via.placeholder.com/400/', 'https://via.placeholder.com/400/?text=ICON', '2021-08-06 03:28:14'),
(57, 2, 37.429667, -122.168277, 'white', 'https://via.placeholder.com/400/', 'https://via.placeholder.com/400/?text=ICON', '2021-08-15 09:00:03'),
(58, 8, 37.429667, -122.168277, 'pink', 'https://via.placeholder.com/400/', 'https://via.placeholder.com/400/?text=ICON', '2020-03-23 03:20:22'),
(59, 5, 37.429667, -122.168277, 'pink', 'https://via.placeholder.com/400/', 'https://via.placeholder.com/400/?text=ICON', '2021-07-31 04:14:34'),
(60, 9, 37.429667, -122.168277, 'purple', 'https://via.placeholder.com/400/', 'https://via.placeholder.com/400/?text=ICON', '2020-08-16 03:51:15'),
(61, 1, 37.429667, -122.168277, 'white', 'https://via.placeholder.com/400/', 'https://via.placeholder.com/400/?text=ICON', '2021-05-15 05:29:34'),
(62, 2, 37.429667, -122.168277, 'white', 'https://via.placeholder.com/400/', 'https://via.placeholder.com/400/?text=ICON', '2020-08-22 09:23:21'),
(63, 7, 37.429667, -122.168277, 'red', 'https://via.placeholder.com/400/', 'https://via.placeholder.com/400/?text=ICON', '2020-01-17 08:41:34'),
(64, 4, 37.429667, -122.168277, 'red', 'https://via.placeholder.com/400/', 'https://via.placeholder.com/400/?text=ICON', '2021-05-03 02:42:50'),
(65, 3, 37.429667, -122.168277, 'purple', 'https://via.placeholder.com/400/', 'https://via.placeholder.com/400/?text=ICON', '2021-01-23 12:36:10'),
(66, 9, 37.429667, -122.168277, 'white', 'https://via.placeholder.com/400/', 'https://via.placeholder.com/400/?text=ICON', '2020-12-13 04:23:35'),
(67, 10, 37.429667, -122.168277, 'red', 'https://via.placeholder.com/400/', 'https://via.placeholder.com/400/?text=ICON', '2021-01-30 04:52:23'),
(68, 6, 37.429667, -122.168277, 'red', 'https://via.placeholder.com/400/', 'https://via.placeholder.com/400/?text=ICON', '2020-06-03 12:54:35'),
(69, 6, 37.429667, -122.168277, 'white', 'https://via.placeholder.com/400/', 'https://via.placeholder.com/400/?text=ICON', '2021-01-14 10:28:45'),
(70, 9, 37.429667, -122.168277, 'pink', 'https://via.placeholder.com/400/', 'https://via.placeholder.com/400/?text=ICON', '2020-11-08 07:41:33'),
(71, 1, 37.429667, -122.168277, 'pink', 'https://via.placeholder.com/400/', 'https://via.placeholder.com/400/?text=ICON', '2020-10-20 12:28:18'),
(72, 1, 37.429667, -122.168277, 'red', 'https://via.placeholder.com/400/', 'https://via.placeholder.com/400/?text=ICON', '2021-08-01 04:18:20'),
(73, 6, 37.429667, -122.168277, 'purple', 'https://via.placeholder.com/400/', 'https://via.placeholder.com/400/?text=ICON', '2020-06-26 09:14:04'),
(74, 10, 37.429667, -122.168277, 'red', 'https://via.placeholder.com/400/', 'https://via.placeholder.com/400/?text=ICON', '2020-08-16 11:38:16'),
(75, 4, 37.429667, -122.168277, 'pink', 'https://via.placeholder.com/400/', 'https://via.placeholder.com/400/?text=ICON', '2021-10-19 11:32:02'),
(76, 9, 37.429667, -122.168277, 'white', 'https://via.placeholder.com/400/', 'https://via.placeholder.com/400/?text=ICON', '2021-09-26 11:24:28'),
(77, 6, 37.429667, -122.168277, 'red', 'https://via.placeholder.com/400/', 'https://via.placeholder.com/400/?text=ICON', '2021-03-18 12:57:55'),
(78, 1, 37.429667, -122.168277, 'red', 'https://via.placeholder.com/400/', 'https://via.placeholder.com/400/?text=ICON', '2021-02-25 12:52:49'),
(79, 1, 37.429667, -122.168277, 'white', 'https://via.placeholder.com/400/', 'https://via.placeholder.com/400/?text=ICON', '2021-06-04 11:15:44'),
(80, 8, 37.429667, -122.168277, 'white', 'https://via.placeholder.com/400/', 'https://via.placeholder.com/400/?text=ICON', '2020-07-07 08:52:23'),
(81, 2, 37.429667, -122.168277, 'white', 'https://via.placeholder.com/400/', 'https://via.placeholder.com/400/?text=ICON', '2020-12-31 02:57:17'),
(82, 7, 37.429667, -122.168277, 'purple', 'https://via.placeholder.com/400/', 'https://via.placeholder.com/400/?text=ICON', '2020-04-10 11:06:49'),
(83, 2, 37.429667, -122.168277, 'red', 'https://via.placeholder.com/400/', 'https://via.placeholder.com/400/?text=ICON', '2020-04-09 04:55:09'),
(84, 4, 37.429667, -122.168277, 'purple', 'https://via.placeholder.com/400/', 'https://via.placeholder.com/400/?text=ICON', '2021-05-09 05:34:53'),
(85, 9, 37.429667, -122.168277, 'purple', 'https://via.placeholder.com/400/', 'https://via.placeholder.com/400/?text=ICON', '2021-08-21 02:16:30'),
(86, 6, 37.429667, -122.168277, 'pink', 'https://via.placeholder.com/400/', 'https://via.placeholder.com/400/?text=ICON', '2021-07-02 08:04:19'),
(87, 1, 37.429667, -122.168277, 'purple', 'https://via.placeholder.com/400/', 'https://via.placeholder.com/400/?text=ICON', '2020-03-20 06:15:06'),
(88, 8, 37.429667, -122.168277, 'purple', 'https://via.placeholder.com/400/', 'https://via.placeholder.com/400/?text=ICON', '2020-12-08 12:51:09'),
(89, 5, 37.429667, -122.168277, 'white', 'https://via.placeholder.com/400/', 'https://via.placeholder.com/400/?text=ICON', '2021-07-07 10:22:14'),
(90, 3, 37.429667, -122.168277, 'red', 'https://via.placeholder.com/400/', 'https://via.placeholder.com/400/?text=ICON', '2021-01-14 10:23:07'),
(91, 6, 37.429667, -122.168277, 'pink', 'https://via.placeholder.com/400/', 'https://via.placeholder.com/400/?text=ICON', '2020-12-10 01:36:33'),
(92, 10, 37.429667, -122.168277, 'red', 'https://via.placeholder.com/400/', 'https://via.placeholder.com/400/?text=ICON', '2020-06-12 04:34:27'),
(93, 3, 37.429667, -122.168277, 'purple', 'https://via.placeholder.com/400/', 'https://via.placeholder.com/400/?text=ICON', '2021-06-21 10:48:38'),
(94, 3, 37.429667, -122.168277, 'red', 'https://via.placeholder.com/400/', 'https://via.placeholder.com/400/?text=ICON', '2021-08-28 03:11:28'),
(95, 8, 37.429667, -122.168277, 'purple', 'https://via.placeholder.com/400/', 'https://via.placeholder.com/400/?text=ICON', '2021-07-21 10:42:06'),
(96, 6, 37.429667, -122.168277, 'red', 'https://via.placeholder.com/400/', 'https://via.placeholder.com/400/?text=ICON', '2021-08-21 10:33:06'),
(97, 6, 37.429667, -122.168277, 'purple', 'https://via.placeholder.com/400/', 'https://via.placeholder.com/400/?text=ICON', '2020-09-06 04:56:29'),
(98, 4, 37.429667, -122.168277, 'purple', 'https://via.placeholder.com/400/', 'https://via.placeholder.com/400/?text=ICON', '2021-09-22 05:34:40'),
(99, 8, 37.429667, -122.168277, 'red', 'https://via.placeholder.com/400/', 'https://via.placeholder.com/400/?text=ICON', '2020-12-04 08:36:01'),
(100, 9, 37.429667, -122.168277, 'white', 'https://via.placeholder.com/400/', 'https://via.placeholder.com/400/?text=ICON', '2020-04-24 06:03:23'),
(101, 10, 37.429667, -122.168277, 'pink', 'https://via.placeholder.com/400/', 'https://via.placeholder.com/400/?text=ICON', '2020-10-13 03:40:14'),
(102, 5, 37.429667, -122.168277, 'pink', 'https://via.placeholder.com/400/', 'https://via.placeholder.com/400/?text=ICON', '2020-02-18 10:24:29'),
(103, 1, 37.429667, -122.168277, 'white', 'https://via.placeholder.com/400/', 'https://via.placeholder.com/400/?text=ICON', '2021-06-30 05:19:04'),
(104, 7, 37.429667, -122.168277, 'pink', 'https://via.placeholder.com/400/', 'https://via.placeholder.com/400/?text=ICON', '2020-08-15 09:00:59'),
(105, 8, 37.429667, -122.168277, 'purple', 'https://via.placeholder.com/400/', 'https://via.placeholder.com/400/?text=ICON', '2020-07-05 11:40:49'),
(106, 10, 37.429667, -122.168277, 'pink', 'https://via.placeholder.com/400/', 'https://via.placeholder.com/400/?text=ICON', '2021-05-02 02:29:52'),
(107, 5, 37.429667, -122.168277, 'purple', 'https://via.placeholder.com/400/', 'https://via.placeholder.com/400/?text=ICON', '2020-03-02 10:52:11'),
(108, 1, 37.429667, -122.168277, 'purple', 'https://via.placeholder.com/400/', 'https://via.placeholder.com/400/?text=ICON', '2020-12-25 01:07:49'),
(109, 10, 37.429667, -122.168277, 'pink', 'https://via.placeholder.com/400/', 'https://via.placeholder.com/400/?text=ICON', '2020-10-23 06:59:25'),
(110, 7, 37.429667, -122.168277, 'white', 'https://via.placeholder.com/400/', 'https://via.placeholder.com/400/?text=ICON', '2020-08-11 04:48:48'),
(111, 8, 37.429667, -122.168277, 'white', 'https://via.placeholder.com/400/', 'https://via.placeholder.com/400/?text=ICON', '2020-06-15 09:36:20'),
(112, 1, 37.429667, -122.168277, 'white', 'https://via.placeholder.com/400/', 'https://via.placeholder.com/400/?text=ICON', '2020-03-12 01:30:48'),
(113, 9, 37.429667, -122.168277, 'pink', 'https://via.placeholder.com/400/', 'https://via.placeholder.com/400/?text=ICON', '2020-12-19 04:07:04'),
(114, 8, 37.429667, -122.168277, 'pink', 'https://via.placeholder.com/400/', 'https://via.placeholder.com/400/?text=ICON', '2020-04-24 03:15:05'),
(115, 9, 37.429667, -122.168277, 'pink', 'https://via.placeholder.com/400/', 'https://via.placeholder.com/400/?text=ICON', '2020-03-09 07:30:55'),
(116, 5, 37.429667, -122.168277, 'red', 'https://via.placeholder.com/400/', 'https://via.placeholder.com/400/?text=ICON', '2020-03-22 08:36:24'),
(117, 7, 37.429667, -122.168277, 'purple', 'https://via.placeholder.com/400/', 'https://via.placeholder.com/400/?text=ICON', '2020-09-02 08:58:42'),
(118, 10, 37.429667, -122.168277, 'white', 'https://via.placeholder.com/400/', 'https://via.placeholder.com/400/?text=ICON', '2021-06-03 08:58:20'),
(119, 2, 37.429667, -122.168277, 'white', 'https://via.placeholder.com/400/', 'https://via.placeholder.com/400/?text=ICON', '2021-01-04 08:58:20'),
(120, 10, 37.429667, -122.168277, 'purple', 'https://via.placeholder.com/400/', 'https://via.placeholder.com/400/?text=ICON', '2020-05-08 02:02:00'),
(121, 10, 37.429667, -122.168277, 'pink', 'https://via.placeholder.com/400/', 'https://via.placeholder.com/400/?text=ICON', '2020-09-15 12:20:02'),
(122, 10, 37.429667, -122.168277, 'purple', 'https://via.placeholder.com/400/', 'https://via.placeholder.com/400/?text=ICON', '2021-09-22 10:25:34'),
(123, 6, 37.429667, -122.168277, 'pink', 'https://via.placeholder.com/400/', 'https://via.placeholder.com/400/?text=ICON', '2020-12-12 01:29:44'),
(124, 7, 37.429667, -122.168277, 'red', 'https://via.placeholder.com/400/', 'https://via.placeholder.com/400/?text=ICON', '2021-02-24 04:58:29'),
(125, 7, 37.429667, -122.168277, 'purple', 'https://via.placeholder.com/400/', 'https://via.placeholder.com/400/?text=ICON', '2021-09-06 07:18:18'),
(126, 8, 37.429667, -122.168277, 'white', 'https://via.placeholder.com/400/', 'https://via.placeholder.com/400/?text=ICON', '2020-12-15 09:10:58'),
(127, 2, 37.429667, -122.168277, 'pink', 'https://via.placeholder.com/400/', 'https://via.placeholder.com/400/?text=ICON', '2020-10-07 01:01:54'),
(128, 5, 37.429667, -122.168277, 'pink', 'https://via.placeholder.com/400/', 'https://via.placeholder.com/400/?text=ICON', '2020-03-19 05:43:10'),
(129, 2, 37.429667, -122.168277, 'white', 'https://via.placeholder.com/400/', 'https://via.placeholder.com/400/?text=ICON', '2020-01-06 04:58:27'),
(130, 6, 37.429667, -122.168277, 'red', 'https://via.placeholder.com/400/', 'https://via.placeholder.com/400/?text=ICON', '2021-10-11 10:55:57'),
(131, 4, 37.429667, -122.168277, 'purple', 'https://via.placeholder.com/400/', 'https://via.placeholder.com/400/?text=ICON', '2020-05-04 05:08:55'),
(132, 4, 37.429667, -122.168277, 'red', 'https://via.placeholder.com/400/', 'https://via.placeholder.com/400/?text=ICON', '2021-05-07 06:32:26'),
(133, 3, 37.429667, -122.168277, 'pink', 'https://via.placeholder.com/400/', 'https://via.placeholder.com/400/?text=ICON', '2021-10-11 04:25:50'),
(134, 5, 37.429667, -122.168277, 'pink', 'https://via.placeholder.com/400/', 'https://via.placeholder.com/400/?text=ICON', '2020-01-06 12:44:49'),
(135, 5, 37.429667, -122.168277, 'red', 'https://via.placeholder.com/400/', 'https://via.placeholder.com/400/?text=ICON', '2020-07-19 09:04:37'),
(136, 10, 37.429667, -122.168277, 'red', 'https://via.placeholder.com/400/', 'https://via.placeholder.com/400/?text=ICON', '2020-01-28 06:26:14'),
(137, 5, 37.429667, -122.168277, 'purple', 'https://via.placeholder.com/400/', 'https://via.placeholder.com/400/?text=ICON', '2021-08-24 12:52:52'),
(138, 10, 37.429667, -122.168277, 'purple', 'https://via.placeholder.com/400/', 'https://via.placeholder.com/400/?text=ICON', '2021-04-29 02:01:24'),
(139, 2, 37.429667, -122.168277, 'purple', 'https://via.placeholder.com/400/', 'https://via.placeholder.com/400/?text=ICON', '2020-05-30 12:19:45'),
(140, 1, 37.429667, -122.168277, 'pink', 'https://via.placeholder.com/400/', 'https://via.placeholder.com/400/?text=ICON', '2021-06-08 10:24:06'),
(141, 4, 37.429667, -122.168277, 'pink', 'https://via.placeholder.com/400/', 'https://via.placeholder.com/400/?text=ICON', '2020-01-25 03:18:24'),
(142, 2, 37.429667, -122.168277, 'white', 'https://via.placeholder.com/400/', 'https://via.placeholder.com/400/?text=ICON', '2021-04-13 10:54:36'),
(143, 4, 37.429667, -122.168277, 'purple', 'https://via.placeholder.com/400/', 'https://via.placeholder.com/400/?text=ICON', '2020-07-10 06:39:24'),
(144, 3, 37.429667, -122.168277, 'pink', 'https://via.placeholder.com/400/', 'https://via.placeholder.com/400/?text=ICON', '2020-09-09 01:38:36'),
(145, 10, 37.429667, -122.168277, 'pink', 'https://via.placeholder.com/400/', 'https://via.placeholder.com/400/?text=ICON', '2020-03-16 01:35:52'),
(146, 6, 37.429667, -122.168277, 'white', 'https://via.placeholder.com/400/', 'https://via.placeholder.com/400/?text=ICON', '2021-06-28 09:57:52'),
(147, 1, 37.429667, -122.168277, 'red', 'https://via.placeholder.com/400/', 'https://via.placeholder.com/400/?text=ICON', '2020-07-21 09:59:46'),
(148, 1, 37.429667, -122.168277, 'red', 'https://via.placeholder.com/400/', 'https://via.placeholder.com/400/?text=ICON', '2021-01-17 10:13:46'),
(149, 1, 37.429667, -122.168277, 'white', 'https://via.placeholder.com/400/', 'https://via.placeholder.com/400/?text=ICON', '2020-05-29 03:53:14'),
(150, 7, 37.429667, -122.168277, 'pink', 'https://via.placeholder.com/400/', 'https://via.placeholder.com/400/?text=ICON', '2020-07-16 11:18:06'),
(151, 9, 37.429667, -122.168277, 'red', 'https://via.placeholder.com/400/', 'https://via.placeholder.com/400/?text=ICON', '2020-07-24 03:21:52'),
(152, 7, 37.429667, -122.168277, 'red', 'https://via.placeholder.com/400/', 'https://via.placeholder.com/400/?text=ICON', '2020-01-27 07:10:06'),
(153, 6, 37.429667, -122.168277, 'pink', 'https://via.placeholder.com/400/', 'https://via.placeholder.com/400/?text=ICON', '2020-01-25 11:14:13'),
(154, 9, 37.429667, -122.168277, 'pink', 'https://via.placeholder.com/400/', 'https://via.placeholder.com/400/?text=ICON', '2021-09-05 10:19:18'),
(155, 10, 37.429667, -122.168277, 'pink', 'https://via.placeholder.com/400/', 'https://via.placeholder.com/400/?text=ICON', '2020-01-03 12:55:14'),
(156, 8, 37.429667, -122.168277, 'purple', 'https://via.placeholder.com/400/', 'https://via.placeholder.com/400/?text=ICON', '2021-02-24 09:38:15'),
(157, 4, 37.429667, -122.168277, 'purple', 'https://via.placeholder.com/400/', 'https://via.placeholder.com/400/?text=ICON', '2020-11-06 02:20:51'),
(158, 10, 37.429667, -122.168277, 'white', 'https://via.placeholder.com/400/', 'https://via.placeholder.com/400/?text=ICON', '2021-07-26 11:40:27'),
(159, 8, 37.429667, -122.168277, 'purple', 'https://via.placeholder.com/400/', 'https://via.placeholder.com/400/?text=ICON', '2020-08-23 05:52:30'),
(160, 3, 37.429667, -122.168277, 'white', 'https://via.placeholder.com/400/', 'https://via.placeholder.com/400/?text=ICON', '2021-05-11 10:58:06'),
(161, 3, 37.429667, -122.168277, 'pink', 'https://via.placeholder.com/400/', 'https://via.placeholder.com/400/?text=ICON', '2021-01-08 04:23:14'),
(162, 3, 37.429667, -122.168277, 'red', 'https://via.placeholder.com/400/', 'https://via.placeholder.com/400/?text=ICON', '2020-04-17 03:52:57'),
(163, 9, 37.429667, -122.168277, 'red', 'https://via.placeholder.com/400/', 'https://via.placeholder.com/400/?text=ICON', '2020-06-01 07:20:44'),
(164, 4, 37.429667, -122.168277, 'pink', 'https://via.placeholder.com/400/', 'https://via.placeholder.com/400/?text=ICON', '2020-12-30 07:35:38'),
(165, 6, 37.429667, -122.168277, 'white', 'https://via.placeholder.com/400/', 'https://via.placeholder.com/400/?text=ICON', '2021-10-08 03:02:01'),
(166, 7, 37.429667, -122.168277, 'purple', 'https://via.placeholder.com/400/', 'https://via.placeholder.com/400/?text=ICON', '2020-02-02 12:48:14'),
(167, 2, 37.429667, -122.168277, 'purple', 'https://via.placeholder.com/400/', 'https://via.placeholder.com/400/?text=ICON', '2020-02-08 06:00:47'),
(168, 9, 37.429667, -122.168277, 'purple', 'https://via.placeholder.com/400/', 'https://via.placeholder.com/400/?text=ICON', '2021-08-14 09:40:31'),
(169, 5, 37.429667, -122.168277, 'purple', 'https://via.placeholder.com/400/', 'https://via.placeholder.com/400/?text=ICON', '2021-08-20 02:30:45'),
(170, 1, 37.429667, -122.168277, 'white', 'https://via.placeholder.com/400/', 'https://via.placeholder.com/400/?text=ICON', '2021-09-24 06:21:46'),
(171, 6, 37.429667, -122.168277, 'purple', 'https://via.placeholder.com/400/', 'https://via.placeholder.com/400/?text=ICON', '2021-04-02 11:58:25'),
(172, 4, 37.429667, -122.168277, 'purple', 'https://via.placeholder.com/400/', 'https://via.placeholder.com/400/?text=ICON', '2021-09-27 08:16:03'),
(173, 1, 37.429667, -122.168277, 'pink', 'https://via.placeholder.com/400/', 'https://via.placeholder.com/400/?text=ICON', '2020-09-17 04:09:26'),
(174, 6, 37.429667, -122.168277, 'white', 'https://via.placeholder.com/400/', 'https://via.placeholder.com/400/?text=ICON', '2021-03-02 12:15:25'),
(175, 3, 37.429667, -122.168277, 'pink', 'https://via.placeholder.com/400/', 'https://via.placeholder.com/400/?text=ICON', '2021-07-25 01:56:38'),
(176, 6, 37.429667, -122.168277, 'purple', 'https://via.placeholder.com/400/', 'https://via.placeholder.com/400/?text=ICON', '2020-09-06 07:43:39'),
(177, 10, 37.429667, -122.168277, 'purple', 'https://via.placeholder.com/400/', 'https://via.placeholder.com/400/?text=ICON', '2020-08-01 02:08:22'),
(178, 9, 37.429667, -122.168277, 'red', 'https://via.placeholder.com/400/', 'https://via.placeholder.com/400/?text=ICON', '2021-01-16 03:11:39'),
(179, 6, 37.429667, -122.168277, 'white', 'https://via.placeholder.com/400/', 'https://via.placeholder.com/400/?text=ICON', '2020-03-15 08:02:44'),
(180, 3, 37.429667, -122.168277, 'white', 'https://via.placeholder.com/400/', 'https://via.placeholder.com/400/?text=ICON', '2021-07-26 10:21:14'),
(181, 8, 37.429667, -122.168277, 'purple', 'https://via.placeholder.com/400/', 'https://via.placeholder.com/400/?text=ICON', '2021-05-28 12:25:02'),
(182, 10, 37.429667, -122.168277, 'white', 'https://via.placeholder.com/400/', 'https://via.placeholder.com/400/?text=ICON', '2021-06-15 02:02:46'),
(183, 1, 37.429667, -122.168277, 'pink', 'https://via.placeholder.com/400/', 'https://via.placeholder.com/400/?text=ICON', '2021-01-14 04:25:08'),
(184, 6, 37.429667, -122.168277, 'red', 'https://via.placeholder.com/400/', 'https://via.placeholder.com/400/?text=ICON', '2020-10-17 10:53:54'),
(185, 6, 37.429667, -122.168277, 'red', 'https://via.placeholder.com/400/', 'https://via.placeholder.com/400/?text=ICON', '2020-01-02 03:02:46'),
(186, 1, 37.429667, -122.168277, 'purple', 'https://via.placeholder.com/400/', 'https://via.placeholder.com/400/?text=ICON', '2020-05-12 01:35:38'),
(187, 6, 37.429667, -122.168277, 'purple', 'https://via.placeholder.com/400/', 'https://via.placeholder.com/400/?text=ICON', '2021-04-08 02:58:16'),
(188, 10, 37.429667, -122.168277, 'red', 'https://via.placeholder.com/400/', 'https://via.placeholder.com/400/?text=ICON', '2020-01-15 07:58:59'),
(189, 4, 37.429667, -122.168277, 'white', 'https://via.placeholder.com/400/', 'https://via.placeholder.com/400/?text=ICON', '2021-08-09 02:08:20'),
(190, 1, 37.429667, -122.168277, 'purple', 'https://via.placeholder.com/400/', 'https://via.placeholder.com/400/?text=ICON', '2021-10-19 04:23:43'),
(191, 1, 37.429667, -122.168277, 'white', 'https://via.placeholder.com/400/', 'https://via.placeholder.com/400/?text=ICON', '2020-07-13 10:50:48'),
(192, 2, 37.429667, -122.168277, 'white', 'https://via.placeholder.com/400/', 'https://via.placeholder.com/400/?text=ICON', '2020-07-30 05:10:29'),
(193, 8, 37.429667, -122.168277, 'red', 'https://via.placeholder.com/400/', 'https://via.placeholder.com/400/?text=ICON', '2021-10-20 06:38:08'),
(194, 4, 37.429667, -122.168277, 'purple', 'https://via.placeholder.com/400/', 'https://via.placeholder.com/400/?text=ICON', '2021-08-04 10:03:56'),
(195, 6, 37.429667, -122.168277, 'purple', 'https://via.placeholder.com/400/', 'https://via.placeholder.com/400/?text=ICON', '2020-11-27 06:21:39'),
(196, 3, 37.429667, -122.168277, 'purple', 'https://via.placeholder.com/400/', 'https://via.placeholder.com/400/?text=ICON', '2020-08-13 03:20:10'),
(197, 2, 37.429667, -122.168277, 'purple', 'https://via.placeholder.com/400/', 'https://via.placeholder.com/400/?text=ICON', '2020-01-16 02:38:40'),
(198, 1, 37.429667, -122.168277, 'purple', 'https://via.placeholder.com/400/', 'https://via.placeholder.com/400/?text=ICON', '2020-05-06 03:39:37'),
(199, 1, 37.429667, -122.168277, 'pink', 'https://via.placeholder.com/400/', 'https://via.placeholder.com/400/?text=ICON', '2020-07-18 02:11:02'),
(200, 1, 37.429667, -122.168277, 'pink', 'https://via.placeholder.com/400/', 'https://via.placeholder.com/400/?text=ICON', '2021-06-28 03:35:44'),
(201, 8, 37.429667, -122.168277, 'pink', 'https://via.placeholder.com/400/', 'https://via.placeholder.com/400/?text=ICON', '2021-06-17 10:46:19'),
(202, 8, 37.429667, -122.168277, 'white', 'https://via.placeholder.com/400/', 'https://via.placeholder.com/400/?text=ICON', '2020-12-02 04:15:50'),
(203, 8, 37.429667, -122.168277, 'pink', 'https://via.placeholder.com/400/', 'https://via.placeholder.com/400/?text=ICON', '2020-02-19 10:22:00'),
(204, 8, 37.429667, -122.168277, 'pink', 'https://via.placeholder.com/400/', 'https://via.placeholder.com/400/?text=ICON', '2020-12-13 09:54:49'),
(205, 1, 37.429667, -122.168277, 'purple', 'https://via.placeholder.com/400/', 'https://via.placeholder.com/400/?text=ICON', '2020-12-26 04:37:56'),
(206, 2, 37.429667, -122.168277, 'purple', 'https://via.placeholder.com/400/', 'https://via.placeholder.com/400/?text=ICON', '2020-01-25 07:04:23'),
(207, 8, 37.429667, -122.168277, 'pink', 'https://via.placeholder.com/400/', 'https://via.placeholder.com/400/?text=ICON', '2020-12-20 07:53:16'),
(208, 6, 37.429667, -122.168277, 'white', 'https://via.placeholder.com/400/', 'https://via.placeholder.com/400/?text=ICON', '2020-07-20 02:34:36'),
(209, 1, 37.429667, -122.168277, 'purple', 'https://via.placeholder.com/400/', 'https://via.placeholder.com/400/?text=ICON', '2020-11-28 08:06:52'),
(210, 5, 37.429667, -122.168277, 'red', 'https://via.placeholder.com/400/', 'https://via.placeholder.com/400/?text=ICON', '2021-01-14 06:23:09'),
(211, 6, 37.429667, -122.168277, 'red', 'https://via.placeholder.com/400/', 'https://via.placeholder.com/400/?text=ICON', '2020-06-23 11:45:05'),
(212, 3, 37.429667, -122.168277, 'pink', 'https://via.placeholder.com/400/', 'https://via.placeholder.com/400/?text=ICON', '2021-05-02 05:28:42'),
(213, 7, 37.429667, -122.168277, 'pink', 'https://via.placeholder.com/400/', 'https://via.placeholder.com/400/?text=ICON', '2020-08-01 09:46:58'),
(214, 5, 37.429667, -122.168277, 'pink', 'https://via.placeholder.com/400/', 'https://via.placeholder.com/400/?text=ICON', '2020-09-25 05:21:46'),
(215, 5, 37.429667, -122.168277, 'pink', 'https://via.placeholder.com/400/', 'https://via.placeholder.com/400/?text=ICON', '2020-06-25 10:25:48'),
(216, 7, 37.429667, -122.168277, 'red', 'https://via.placeholder.com/400/', 'https://via.placeholder.com/400/?text=ICON', '2020-09-22 11:47:13'),
(217, 7, 37.429667, -122.168277, 'purple', 'https://via.placeholder.com/400/', 'https://via.placeholder.com/400/?text=ICON', '2021-01-03 11:10:24'),
(218, 6, 37.429667, -122.168277, 'purple', 'https://via.placeholder.com/400/', 'https://via.placeholder.com/400/?text=ICON', '2021-05-22 05:52:42'),
(219, 10, 37.429667, -122.168277, 'red', 'https://via.placeholder.com/400/', 'https://via.placeholder.com/400/?text=ICON', '2021-01-02 05:57:29'),
(220, 5, 37.429667, -122.168277, 'red', 'https://via.placeholder.com/400/', 'https://via.placeholder.com/400/?text=ICON', '2021-07-22 09:57:02'),
(221, 9, 37.429667, -122.168277, 'purple', 'https://via.placeholder.com/400/', 'https://via.placeholder.com/400/?text=ICON', '2020-01-24 04:52:58'),
(222, 4, 37.429667, -122.168277, 'purple', 'https://via.placeholder.com/400/', 'https://via.placeholder.com/400/?text=ICON', '2021-03-14 04:33:14'),
(223, 2, 37.429667, -122.168277, 'white', 'https://via.placeholder.com/400/', 'https://via.placeholder.com/400/?text=ICON', '2021-06-20 07:09:25'),
(224, 6, 37.429667, -122.168277, 'red', 'https://via.placeholder.com/400/', 'https://via.placeholder.com/400/?text=ICON', '2021-04-21 10:12:48'),
(225, 8, 37.429667, -122.168277, 'white', 'https://via.placeholder.com/400/', 'https://via.placeholder.com/400/?text=ICON', '2020-05-11 12:31:53'),
(226, 5, 37.429667, -122.168277, 'red', 'https://via.placeholder.com/400/', 'https://via.placeholder.com/400/?text=ICON', '2021-10-09 03:18:23'),
(227, 7, 37.429667, -122.168277, 'pink', 'https://via.placeholder.com/400/', 'https://via.placeholder.com/400/?text=ICON', '2020-06-23 03:16:02'),
(228, 10, 37.429667, -122.168277, 'pink', 'https://via.placeholder.com/400/', 'https://via.placeholder.com/400/?text=ICON', '2020-05-06 10:12:40'),
(229, 9, 37.429667, -122.168277, 'purple', 'https://via.placeholder.com/400/', 'https://via.placeholder.com/400/?text=ICON', '2021-04-27 02:50:21'),
(230, 7, 37.429667, -122.168277, 'white', 'https://via.placeholder.com/400/', 'https://via.placeholder.com/400/?text=ICON', '2020-09-23 12:24:04'),
(231, 6, 37.429667, -122.168277, 'purple', 'https://via.placeholder.com/400/', 'https://via.placeholder.com/400/?text=ICON', '2021-09-26 06:13:48'),
(232, 9, 37.429667, -122.168277, 'purple', 'https://via.placeholder.com/400/', 'https://via.placeholder.com/400/?text=ICON', '2021-02-13 03:46:13'),
(233, 5, 37.429667, -122.168277, 'purple', 'https://via.placeholder.com/400/', 'https://via.placeholder.com/400/?text=ICON', '2020-09-13 07:30:17'),
(234, 10, 37.429667, -122.168277, 'white', 'https://via.placeholder.com/400/', 'https://via.placeholder.com/400/?text=ICON', '2020-04-08 11:20:33'),
(235, 2, 37.429667, -122.168277, 'purple', 'https://via.placeholder.com/400/', 'https://via.placeholder.com/400/?text=ICON', '2021-07-19 10:04:31'),
(236, 5, 37.429667, -122.168277, 'white', 'https://via.placeholder.com/400/', 'https://via.placeholder.com/400/?text=ICON', '2020-07-13 01:08:20'),
(237, 1, 37.429667, -122.168277, 'white', 'https://via.placeholder.com/400/', 'https://via.placeholder.com/400/?text=ICON', '2021-03-19 06:07:20'),
(238, 3, 37.429667, -122.168277, 'white', 'https://via.placeholder.com/400/', 'https://via.placeholder.com/400/?text=ICON', '2020-10-02 08:14:35'),
(239, 4, 37.429667, -122.168277, 'red', 'https://via.placeholder.com/400/', 'https://via.placeholder.com/400/?text=ICON', '2020-04-16 12:16:35'),
(240, 9, 37.429667, -122.168277, 'pink', 'https://via.placeholder.com/400/', 'https://via.placeholder.com/400/?text=ICON', '2021-08-29 06:44:50'),
(241, 5, 37.429667, -122.168277, 'purple', 'https://via.placeholder.com/400/', 'https://via.placeholder.com/400/?text=ICON', '2020-09-02 05:01:58'),
(242, 2, 37.429667, -122.168277, 'red', 'https://via.placeholder.com/400/', 'https://via.placeholder.com/400/?text=ICON', '2021-10-26 12:47:01'),
(243, 1, 37.429667, -122.168277, 'pink', 'https://via.placeholder.com/400/', 'https://via.placeholder.com/400/?text=ICON', '2021-09-09 03:04:40'),
(244, 2, 37.429667, -122.168277, 'purple', 'https://via.placeholder.com/400/', 'https://via.placeholder.com/400/?text=ICON', '2021-03-28 12:47:45'),
(245, 8, 37.429667, -122.168277, 'pink', 'https://via.placeholder.com/400/', 'https://via.placeholder.com/400/?text=ICON', '2020-04-16 01:19:01'),
(246, 4, 37.429667, -122.168277, 'white', 'https://via.placeholder.com/400/', 'https://via.placeholder.com/400/?text=ICON', '2020-03-19 02:59:23'),
(247, 9, 37.429667, -122.168277, 'white', 'https://via.placeholder.com/400/', 'https://via.placeholder.com/400/?text=ICON', '2020-11-04 04:24:55'),
(248, 10, 37.429667, -122.168277, 'white', 'https://via.placeholder.com/400/', 'https://via.placeholder.com/400/?text=ICON', '2020-02-17 01:45:36'),
(249, 2, 37.429667, -122.168277, 'purple', 'https://via.placeholder.com/400/', 'https://via.placeholder.com/400/?text=ICON', '2021-08-10 10:01:05'),
(250, 6, 37.429667, -122.168277, 'purple', 'https://via.placeholder.com/400/', 'https://via.placeholder.com/400/?text=ICON', '2020-12-25 02:06:01');

-- --------------------------------------------------------

--
-- Table structure for table `track_users`
--

CREATE TABLE `track_users` (
  `id` int(13) NOT NULL,
  `name` varchar(64) NOT NULL,
  `username` varchar(64) NOT NULL,
  `email` varchar(128) NOT NULL,
  `password` varchar(32) NOT NULL,
  `img` varchar(256) NOT NULL,
  `date_create` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `track_users`
--

INSERT INTO `track_users` (`id`, `name`, `username`, `email`, `password`, `img`, `date_create`) VALUES
(1, 'Casandra Holman', 'user1', 'user1@gmail.com', '1a1dc91c907325c69271ddf0c944bc72', 'https://via.placeholder.com/400/864/fff/?text=user1', '2021-02-22 11:28:26'),
(2, 'Dyer Hendrix', 'user2', 'user2@gmail.com', '1a1dc91c907325c69271ddf0c944bc72', 'https://via.placeholder.com/400/848/fff/?text=user2', '2021-02-01 04:27:24'),
(3, 'Lynch Sheppard', 'user3', 'user3@gmail.com', '1a1dc91c907325c69271ddf0c944bc72', 'https://via.placeholder.com/400/907/fff/?text=user3', '2021-07-09 11:44:15'),
(4, 'Bonita Barnett', 'user4', 'user4@gmail.com', '1a1dc91c907325c69271ddf0c944bc72', 'https://via.placeholder.com/400/834/fff/?text=user4', '2021-08-25 11:05:59'),
(5, 'Corine Lawson', 'user5', 'user5@gmail.com', '1a1dc91c907325c69271ddf0c944bc72', 'https://via.placeholder.com/400/857/fff/?text=user5', '2020-02-08 07:21:00'),
(6, 'Decker Dyer', 'user6', 'user6@gmail.com', '1a1dc91c907325c69271ddf0c944bc72', 'https://via.placeholder.com/400/817/fff/?text=user6', '2020-04-13 06:25:29'),
(7, 'Tameka Wilkerson', 'user7', 'user7@gmail.com', '1a1dc91c907325c69271ddf0c944bc72', 'https://via.placeholder.com/400/962/fff/?text=user7', '2020-09-28 02:18:52'),
(8, 'Sonia Gillespie', 'user8', 'user8@gmail.com', '1a1dc91c907325c69271ddf0c944bc72', 'https://via.placeholder.com/400/958/fff/?text=user8', '2020-11-25 09:28:51'),
(9, 'Peck Harding', 'user9', 'user9@gmail.com', '1a1dc91c907325c69271ddf0c944bc72', 'https://via.placeholder.com/400/836/fff/?text=user9', '2020-12-25 11:08:24'),
(10, 'Sosa Cobb', 'user10', 'user10@gmail.com', '1a1dc91c907325c69271ddf0c944bc72', 'https://via.placeholder.com/400/883/fff/?text=user10', '2021-04-19 08:16:09');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `track_flowers`
--
ALTER TABLE `track_flowers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `track_locations`
--
ALTER TABLE `track_locations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `track_users`
--
ALTER TABLE `track_users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `track_flowers`
--
ALTER TABLE `track_flowers`
  MODIFY `id` int(13) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `track_locations`
--
ALTER TABLE `track_locations`
  MODIFY `id` int(13) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=251;

--
-- AUTO_INCREMENT for table `track_users`
--
ALTER TABLE `track_users`
  MODIFY `id` int(13) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
