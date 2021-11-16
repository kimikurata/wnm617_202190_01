-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 16, 2021 at 01:22 PM
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
  `color` varchar(64) NOT NULL,
  `size` varchar(64) NOT NULL,
  `img` varchar(256) NOT NULL,
  `date_create` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `track_flowers`
--

INSERT INTO `track_flowers` (`id`, `user_id`, `name`, `type`, `color`, `size`, `img`, `date_create`) VALUES
(1, 7, 'Tropolis', 'Tulip', 'red', 'small', 'https://via.placeholder.com/400/FFD391/fff/?text=Tropolis', '2021-10-27 03:27:26'),
(2, 2, 'Overplex', 'Lily', 'red', 'medium', 'https://via.placeholder.com/400/FFD391/fff/?text=Overplex', '2020-03-11 06:50:10'),
(3, 1, 'Zolavo', 'Rose', 'pink', 'medium', 'https://via.placeholder.com/400/AEBCB9/fff/?text=Zolavo', '2020-10-27 09:01:25'),
(4, 3, 'Ecosys', 'Rose', 'purple', 'large', 'https://via.placeholder.com/400/F09B9B/fff/?text=Ecosys', '2020-06-20 11:21:01'),
(5, 7, 'Intrawear', 'Tulip', 'red', 'medium', 'https://via.placeholder.com/400/E69B8C/fff/?text=Intrawear', '2020-02-24 12:27:50'),
(6, 6, 'Acruex', 'Lily', 'purple', 'medium', 'https://via.placeholder.com/400/F09B9B/fff/?text=Acruex', '2020-02-18 06:13:46'),
(7, 2, 'Stralum', 'Tulip', 'red', 'medium', 'https://via.placeholder.com/400/FFD391/fff/?text=Stralum', '2021-09-11 08:28:11'),
(8, 3, 'Poochies', 'Lily', 'red', 'small', 'https://via.placeholder.com/400/E69B8C/fff/?text=Poochies', '2021-09-12 01:30:48'),
(9, 6, 'Tubalum', 'Tulip', 'red', 'medium', 'https://via.placeholder.com/400/E69B8C/fff/?text=Tubalum', '2021-02-22 10:36:58'),
(10, 9, 'Petigems', 'Rose', 'red', 'small', 'https://via.placeholder.com/400/AEBCB9/fff/?text=Petigems', '2021-07-16 11:53:33'),
(11, 1, 'Comstar', 'Tulip', 'pink', 'large', 'https://via.placeholder.com/400/FFD391/fff/?text=Comstar', '2020-03-09 01:13:42'),
(12, 8, 'Rocklogic', 'Rose', 'purple', 'large', 'https://via.placeholder.com/400/E69B8C/fff/?text=Rocklogic', '2020-06-16 04:16:36'),
(13, 5, 'Twiist', 'Lily', 'pink', 'small', 'https://via.placeholder.com/400/FFD391/fff/?text=Twiist', '2020-01-16 02:40:06'),
(14, 1, 'Buzzness', 'Lily', 'pink', 'small', 'https://via.placeholder.com/400/FFD391/fff/?text=Buzzness', '2021-04-16 05:40:18'),
(15, 7, 'Kiosk', 'Lily', 'purple', 'large', 'https://via.placeholder.com/400/FFD391/fff/?text=Kiosk', '2021-05-04 03:56:55'),
(16, 5, 'Sonique', 'Rose', 'red', 'medium', 'https://via.placeholder.com/400/AEBCB9/fff/?text=Sonique', '2021-04-17 04:02:40'),
(17, 4, 'Hyplex', 'Rose', 'purple', 'large', 'https://via.placeholder.com/400/AEBCB9/fff/?text=Hyplex', '2020-07-21 08:27:52'),
(18, 2, 'Thredz', 'Tulip', 'white', 'medium', 'https://via.placeholder.com/400/F09B9B/fff/?text=Thredz', '2021-01-22 12:26:50'),
(19, 4, 'Mediot', 'Lily', 'white', 'medium', 'https://via.placeholder.com/400/AEBCB9/fff/?text=Mediot', '2021-01-27 12:47:49'),
(20, 5, 'Slumberia', 'Rose', 'white', 'small', 'https://via.placeholder.com/400/AEBCB9/fff/?text=Slumberia', '2020-10-24 12:51:41'),
(21, 2, 'Biospan', 'Lily', 'red', 'small', 'https://via.placeholder.com/400/AEBCB9/fff/?text=Biospan', '2020-02-29 04:00:31'),
(22, 5, 'Sloganaut', 'Lily', 'pink', 'medium', 'https://via.placeholder.com/400/E69B8C/fff/?text=Sloganaut', '2021-03-10 02:46:53'),
(23, 5, 'Bugsall', 'Lily', 'purple', 'medium', 'https://via.placeholder.com/400/AEBCB9/fff/?text=Bugsall', '2020-04-13 11:55:59'),
(24, 2, 'Austex', 'Lily', 'pink', 'small', 'https://via.placeholder.com/400/F09B9B/fff/?text=Austex', '2021-10-07 05:14:51'),
(25, 5, 'Supremia', 'Tulip', 'white', 'small', 'https://via.placeholder.com/400/F09B9B/fff/?text=Supremia', '2020-05-04 01:52:50'),
(26, 6, 'Cinaster', 'Tulip', 'red', 'small', 'https://via.placeholder.com/400/AEBCB9/fff/?text=Cinaster', '2021-02-07 07:21:00'),
(27, 8, 'Sunclipse', 'Tulip', 'white', 'large', 'https://via.placeholder.com/400/F09B9B/fff/?text=Sunclipse', '2021-11-07 10:09:33'),
(28, 4, 'Centuria', 'Tulip', 'purple', 'large', 'https://via.placeholder.com/400/AEBCB9/fff/?text=Centuria', '2021-06-27 09:53:55'),
(29, 10, 'Aquoavo', 'Tulip', 'red', 'small', 'https://via.placeholder.com/400/E69B8C/fff/?text=Aquoavo', '2021-06-26 04:41:37'),
(30, 4, 'Namebox', 'Lily', 'red', 'small', 'https://via.placeholder.com/400/AEBCB9/fff/?text=Namebox', '2020-01-11 09:50:48'),
(31, 5, 'Isoswitch', 'Lily', 'white', 'large', 'https://via.placeholder.com/400/AEBCB9/fff/?text=Isoswitch', '2020-11-19 11:49:45'),
(32, 9, 'Cosmosis', 'Tulip', 'pink', 'small', 'https://via.placeholder.com/400/E69B8C/fff/?text=Cosmosis', '2020-12-04 03:29:22'),
(33, 4, 'Gluid', 'Lily', 'white', 'small', 'https://via.placeholder.com/400/E69B8C/fff/?text=Gluid', '2021-05-27 01:29:39'),
(34, 5, 'Frolix', 'Rose', 'purple', 'large', 'https://via.placeholder.com/400/E69B8C/fff/?text=Frolix', '2021-05-10 12:02:31'),
(35, 8, 'Krag', 'Lily', 'white', 'small', 'https://via.placeholder.com/400/F09B9B/fff/?text=Krag', '2021-02-17 10:31:35'),
(36, 10, 'Comvey', 'Tulip', 'white', 'large', 'https://via.placeholder.com/400/FFD391/fff/?text=Comvey', '2020-12-17 03:27:04'),
(37, 4, 'Izzby', 'Lily', 'purple', 'large', 'https://via.placeholder.com/400/F09B9B/fff/?text=Izzby', '2020-01-01 07:12:26'),
(38, 1, 'Signity', 'Tulip', 'red', 'large', 'https://via.placeholder.com/400/AEBCB9/fff/?text=Signity', '2021-02-09 08:05:39'),
(39, 9, 'Oronoko', 'Lily', 'pink', 'medium', 'https://via.placeholder.com/400/FFD391/fff/?text=Oronoko', '2021-08-14 02:46:23'),
(40, 3, 'Ecrater', 'Tulip', 'pink', 'medium', 'https://via.placeholder.com/400/FFD391/fff/?text=Ecrater', '2020-08-06 05:39:20'),
(41, 7, 'Nixelt', 'Rose', 'pink', 'large', 'https://via.placeholder.com/400/E69B8C/fff/?text=Nixelt', '2021-05-14 06:47:49'),
(42, 1, 'Signidyne', 'Rose', 'pink', 'large', 'https://via.placeholder.com/400/AEBCB9/fff/?text=Signidyne', '2021-01-28 12:37:52'),
(43, 7, 'Housedown', 'Rose', 'white', 'small', 'https://via.placeholder.com/400/F09B9B/fff/?text=Housedown', '2021-11-03 06:06:05'),
(44, 4, 'Zoarere', 'Rose', 'red', 'medium', 'https://via.placeholder.com/400/AEBCB9/fff/?text=Zoarere', '2021-02-18 01:55:43'),
(45, 3, 'Nimon', 'Tulip', 'purple', 'large', 'https://via.placeholder.com/400/AEBCB9/fff/?text=Nimon', '2021-08-30 02:04:28'),
(46, 9, 'Zenthall', 'Rose', 'pink', 'medium', 'https://via.placeholder.com/400/E69B8C/fff/?text=Zenthall', '2020-08-05 07:10:37'),
(47, 3, 'Accel', 'Lily', 'red', 'large', 'https://via.placeholder.com/400/FFD391/fff/?text=Accel', '2021-04-03 02:27:16'),
(48, 1, 'Gronk', 'Rose', 'purple', 'medium', 'https://via.placeholder.com/400/FFD391/fff/?text=Gronk', '2020-05-10 02:41:55'),
(49, 4, 'Zillan', 'Lily', 'white', 'large', 'https://via.placeholder.com/400/F09B9B/fff/?text=Zillan', '2021-02-19 05:01:00'),
(50, 5, 'Lovepad', 'Rose', 'white', 'large', 'https://via.placeholder.com/400/FFD391/fff/?text=Lovepad', '2021-08-02 12:36:32');

-- --------------------------------------------------------

--
-- Table structure for table `track_locations`
--

CREATE TABLE `track_locations` (
  `id` int(13) NOT NULL,
  `flower_id` int(13) NOT NULL,
  `lat` decimal(8,6) NOT NULL,
  `lng` decimal(9,6) NOT NULL,
  `photo` varchar(256) NOT NULL,
  `icon` varchar(256) NOT NULL,
  `date_create` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `track_locations`
--

INSERT INTO `track_locations` (`id`, `flower_id`, `lat`, `lng`, `photo`, `icon`, `date_create`) VALUES
(1, 2, 37.360279, -121.944254, 'https://via.placeholder.com/400/CFF2F6/fff/?text=img', 'http://kimikurata.com/aau/wnm617/kurata.kimi/images/tulip-map-icon.png', '2020-10-09 02:25:54'),
(2, 13, 37.323941, -121.954790, 'https://via.placeholder.com/400/798BD7/fff/?text=img', 'http://kimikurata.com/aau/wnm617/kurata.kimi/images/tulip-map-icon.png', '2020-11-23 02:19:13'),
(3, 36, 37.349066, -121.953854, 'https://via.placeholder.com/400/798BD7/fff/?text=img', 'http://kimikurata.com/aau/wnm617/kurata.kimi/images/tulip-map-icon.png', '2020-12-02 01:27:21'),
(4, 19, 37.386262, -121.883711, 'https://via.placeholder.com/400/AA92E0/fff/?text=img', 'http://kimikurata.com/aau/wnm617/kurata.kimi/images/tulip-map-icon.png', '2021-01-31 01:02:24'),
(5, 2, 37.359754, -121.915432, 'https://via.placeholder.com/400/A8C6F8/fff/?text=img', 'http://kimikurata.com/aau/wnm617/kurata.kimi/images/tulip-map-icon.png', '2021-05-30 10:26:33'),
(6, 19, 37.326085, -121.910665, 'https://via.placeholder.com/400/AA92E0/fff/?text=img', 'http://kimikurata.com/aau/wnm617/kurata.kimi/images/tulip-map-icon.png', '2020-08-02 03:35:16'),
(7, 19, 37.303984, -121.870188, 'https://via.placeholder.com/400/798BD7/fff/?text=img', 'http://kimikurata.com/aau/wnm617/kurata.kimi/images/tulip-map-icon.png', '2021-11-16 12:29:12'),
(8, 17, 37.350672, -121.925201, 'https://via.placeholder.com/400/798BD7/fff/?text=img', 'http://kimikurata.com/aau/wnm617/kurata.kimi/images/tulip-map-icon.png', '2020-09-28 12:27:12'),
(9, 31, 37.368854, -121.852808, 'https://via.placeholder.com/400/A8C6F8/fff/?text=img', 'http://kimikurata.com/aau/wnm617/kurata.kimi/images/tulip-map-icon.png', '2021-04-27 11:20:20'),
(10, 46, 37.325630, -121.851735, 'https://via.placeholder.com/400/AA92E0/fff/?text=img', 'http://kimikurata.com/aau/wnm617/kurata.kimi/images/tulip-map-icon.png', '2020-01-30 08:26:37'),
(11, 21, 37.355654, -121.864390, 'https://via.placeholder.com/400/AA92E0/fff/?text=img', 'http://kimikurata.com/aau/wnm617/kurata.kimi/images/tulip-map-icon.png', '2020-12-12 05:35:53'),
(12, 43, 37.332934, -121.905620, 'https://via.placeholder.com/400/A8C6F8/fff/?text=img', 'http://kimikurata.com/aau/wnm617/kurata.kimi/images/tulip-map-icon.png', '2020-01-29 05:15:05'),
(13, 17, 37.313372, -121.950185, 'https://via.placeholder.com/400/A8C6F8/fff/?text=img', 'http://kimikurata.com/aau/wnm617/kurata.kimi/images/tulip-map-icon.png', '2021-11-06 10:55:50'),
(14, 11, 37.325101, -121.932800, 'https://via.placeholder.com/400/798BD7/fff/?text=img', 'http://kimikurata.com/aau/wnm617/kurata.kimi/images/tulip-map-icon.png', '2021-02-02 11:37:23'),
(15, 33, 37.388162, -121.845179, 'https://via.placeholder.com/400/798BD7/fff/?text=img', 'http://kimikurata.com/aau/wnm617/kurata.kimi/images/tulip-map-icon.png', '2020-05-26 10:12:29'),
(16, 40, 37.326341, -121.856636, 'https://via.placeholder.com/400/A8C6F8/fff/?text=img', 'http://kimikurata.com/aau/wnm617/kurata.kimi/images/tulip-map-icon.png', '2020-12-26 02:35:25'),
(17, 13, 37.367066, -121.952805, 'https://via.placeholder.com/400/AA92E0/fff/?text=img', 'http://kimikurata.com/aau/wnm617/kurata.kimi/images/tulip-map-icon.png', '2020-03-02 12:03:02'),
(18, 28, 37.345865, -121.924109, 'https://via.placeholder.com/400/CFF2F6/fff/?text=img', 'http://kimikurata.com/aau/wnm617/kurata.kimi/images/tulip-map-icon.png', '2020-05-20 07:38:22'),
(19, 48, 37.286221, -121.849367, 'https://via.placeholder.com/400/798BD7/fff/?text=img', 'http://kimikurata.com/aau/wnm617/kurata.kimi/images/tulip-map-icon.png', '2020-12-19 01:04:49'),
(20, 33, 37.327457, -121.890491, 'https://via.placeholder.com/400/798BD7/fff/?text=img', 'http://kimikurata.com/aau/wnm617/kurata.kimi/images/tulip-map-icon.png', '2021-05-02 02:45:02'),
(21, 8, 37.318485, -121.888352, 'https://via.placeholder.com/400/A8C6F8/fff/?text=img', 'http://kimikurata.com/aau/wnm617/kurata.kimi/images/tulip-map-icon.png', '2020-07-12 06:14:44'),
(22, 7, 37.310015, -121.893129, 'https://via.placeholder.com/400/CFF2F6/fff/?text=img', 'http://kimikurata.com/aau/wnm617/kurata.kimi/images/tulip-map-icon.png', '2021-01-01 09:18:57'),
(23, 44, 37.303725, -121.906901, 'https://via.placeholder.com/400/CFF2F6/fff/?text=img', 'http://kimikurata.com/aau/wnm617/kurata.kimi/images/tulip-map-icon.png', '2021-03-15 09:15:33'),
(24, 47, 37.301626, -121.876510, 'https://via.placeholder.com/400/A8C6F8/fff/?text=img', 'http://kimikurata.com/aau/wnm617/kurata.kimi/images/tulip-map-icon.png', '2020-05-29 02:59:00'),
(25, 27, 37.330621, -121.890603, 'https://via.placeholder.com/400/CFF2F6/fff/?text=img', 'http://kimikurata.com/aau/wnm617/kurata.kimi/images/tulip-map-icon.png', '2020-01-31 10:45:10'),
(26, 40, 37.342209, -121.952045, 'https://via.placeholder.com/400/A8C6F8/fff/?text=img', 'http://kimikurata.com/aau/wnm617/kurata.kimi/images/tulip-map-icon.png', '2021-11-05 06:04:59'),
(27, 7, 37.391375, -121.894971, 'https://via.placeholder.com/400/AA92E0/fff/?text=img', 'http://kimikurata.com/aau/wnm617/kurata.kimi/images/tulip-map-icon.png', '2021-07-05 06:49:51'),
(28, 28, 37.304182, -121.889124, 'https://via.placeholder.com/400/CFF2F6/fff/?text=img', 'http://kimikurata.com/aau/wnm617/kurata.kimi/images/tulip-map-icon.png', '2020-09-08 03:12:16'),
(29, 33, 37.307929, -121.916525, 'https://via.placeholder.com/400/798BD7/fff/?text=img', 'http://kimikurata.com/aau/wnm617/kurata.kimi/images/tulip-map-icon.png', '2021-06-03 09:36:02'),
(30, 34, 37.295803, -121.891984, 'https://via.placeholder.com/400/A8C6F8/fff/?text=img', 'http://kimikurata.com/aau/wnm617/kurata.kimi/images/tulip-map-icon.png', '2020-01-15 09:39:49'),
(31, 43, 37.377631, -121.868767, 'https://via.placeholder.com/400/CFF2F6/fff/?text=img', 'http://kimikurata.com/aau/wnm617/kurata.kimi/images/tulip-map-icon.png', '2021-05-05 06:14:41'),
(32, 36, 37.378688, -121.893435, 'https://via.placeholder.com/400/A8C6F8/fff/?text=img', 'http://kimikurata.com/aau/wnm617/kurata.kimi/images/tulip-map-icon.png', '2020-09-20 10:22:57'),
(33, 18, 37.328665, -121.905450, 'https://via.placeholder.com/400/AA92E0/fff/?text=img', 'http://kimikurata.com/aau/wnm617/kurata.kimi/images/tulip-map-icon.png', '2020-10-07 05:29:13'),
(34, 14, 37.368393, -121.915454, 'https://via.placeholder.com/400/A8C6F8/fff/?text=img', 'http://kimikurata.com/aau/wnm617/kurata.kimi/images/tulip-map-icon.png', '2021-02-22 06:26:30'),
(35, 50, 37.379376, -121.859685, 'https://via.placeholder.com/400/798BD7/fff/?text=img', 'http://kimikurata.com/aau/wnm617/kurata.kimi/images/tulip-map-icon.png', '2020-06-01 01:52:09'),
(36, 41, 37.383240, -121.854709, 'https://via.placeholder.com/400/A8C6F8/fff/?text=img', 'http://kimikurata.com/aau/wnm617/kurata.kimi/images/tulip-map-icon.png', '2020-01-19 02:28:58'),
(37, 3, 37.360809, -121.940224, 'https://via.placeholder.com/400/AA92E0/fff/?text=img', 'http://kimikurata.com/aau/wnm617/kurata.kimi/images/tulip-map-icon.png', '2021-03-01 08:44:45'),
(38, 13, 37.294290, -121.869110, 'https://via.placeholder.com/400/AA92E0/fff/?text=img', 'http://kimikurata.com/aau/wnm617/kurata.kimi/images/tulip-map-icon.png', '2020-08-05 11:19:33'),
(39, 24, 37.373952, -121.924146, 'https://via.placeholder.com/400/A8C6F8/fff/?text=img', 'http://kimikurata.com/aau/wnm617/kurata.kimi/images/tulip-map-icon.png', '2021-07-28 03:06:08'),
(40, 28, 37.329909, -121.909747, 'https://via.placeholder.com/400/CFF2F6/fff/?text=img', 'http://kimikurata.com/aau/wnm617/kurata.kimi/images/tulip-map-icon.png', '2021-08-11 02:20:43'),
(41, 22, 37.284696, -121.948925, 'https://via.placeholder.com/400/A8C6F8/fff/?text=img', 'http://kimikurata.com/aau/wnm617/kurata.kimi/images/tulip-map-icon.png', '2021-10-17 01:15:18'),
(42, 46, 37.301598, -121.895362, 'https://via.placeholder.com/400/CFF2F6/fff/?text=img', 'http://kimikurata.com/aau/wnm617/kurata.kimi/images/tulip-map-icon.png', '2020-11-22 08:44:50'),
(43, 33, 37.382672, -121.945384, 'https://via.placeholder.com/400/798BD7/fff/?text=img', 'http://kimikurata.com/aau/wnm617/kurata.kimi/images/tulip-map-icon.png', '2021-07-02 12:28:27'),
(44, 2, 37.335397, -121.941926, 'https://via.placeholder.com/400/A8C6F8/fff/?text=img', 'http://kimikurata.com/aau/wnm617/kurata.kimi/images/tulip-map-icon.png', '2021-09-14 10:19:22'),
(45, 50, 37.366757, -121.898791, 'https://via.placeholder.com/400/A8C6F8/fff/?text=img', 'http://kimikurata.com/aau/wnm617/kurata.kimi/images/tulip-map-icon.png', '2020-12-30 02:31:52'),
(46, 18, 37.292012, -121.892957, 'https://via.placeholder.com/400/CFF2F6/fff/?text=img', 'http://kimikurata.com/aau/wnm617/kurata.kimi/images/tulip-map-icon.png', '2020-03-20 08:42:53'),
(47, 11, 37.366270, -121.894467, 'https://via.placeholder.com/400/AA92E0/fff/?text=img', 'http://kimikurata.com/aau/wnm617/kurata.kimi/images/tulip-map-icon.png', '2021-10-26 03:34:18'),
(48, 11, 37.292261, -121.850924, 'https://via.placeholder.com/400/AA92E0/fff/?text=img', 'http://kimikurata.com/aau/wnm617/kurata.kimi/images/tulip-map-icon.png', '2021-01-05 09:09:05'),
(49, 43, 37.344623, -121.906408, 'https://via.placeholder.com/400/CFF2F6/fff/?text=img', 'http://kimikurata.com/aau/wnm617/kurata.kimi/images/tulip-map-icon.png', '2020-11-06 05:32:21'),
(50, 10, 37.382370, -121.868796, 'https://via.placeholder.com/400/798BD7/fff/?text=img', 'http://kimikurata.com/aau/wnm617/kurata.kimi/images/tulip-map-icon.png', '2020-07-24 07:18:18'),
(51, 41, 37.356195, -121.912700, 'https://via.placeholder.com/400/CFF2F6/fff/?text=img', 'http://kimikurata.com/aau/wnm617/kurata.kimi/images/tulip-map-icon.png', '2021-03-12 01:55:21'),
(52, 37, 37.313302, -121.904911, 'https://via.placeholder.com/400/AA92E0/fff/?text=img', 'http://kimikurata.com/aau/wnm617/kurata.kimi/images/tulip-map-icon.png', '2020-07-20 01:32:39'),
(53, 36, 37.293713, -121.888821, 'https://via.placeholder.com/400/798BD7/fff/?text=img', 'http://kimikurata.com/aau/wnm617/kurata.kimi/images/tulip-map-icon.png', '2021-04-11 07:57:44'),
(54, 11, 37.320867, -121.936595, 'https://via.placeholder.com/400/AA92E0/fff/?text=img', 'http://kimikurata.com/aau/wnm617/kurata.kimi/images/tulip-map-icon.png', '2021-05-04 10:01:17'),
(55, 36, 37.375872, -121.863802, 'https://via.placeholder.com/400/CFF2F6/fff/?text=img', 'http://kimikurata.com/aau/wnm617/kurata.kimi/images/tulip-map-icon.png', '2020-05-21 12:01:28'),
(56, 19, 37.297810, -121.923424, 'https://via.placeholder.com/400/CFF2F6/fff/?text=img', 'http://kimikurata.com/aau/wnm617/kurata.kimi/images/tulip-map-icon.png', '2020-03-23 06:23:40'),
(57, 50, 37.383003, -121.917664, 'https://via.placeholder.com/400/A8C6F8/fff/?text=img', 'http://kimikurata.com/aau/wnm617/kurata.kimi/images/tulip-map-icon.png', '2020-06-01 12:26:29'),
(58, 4, 37.378709, -121.936849, 'https://via.placeholder.com/400/798BD7/fff/?text=img', 'http://kimikurata.com/aau/wnm617/kurata.kimi/images/tulip-map-icon.png', '2021-10-30 06:29:39'),
(59, 10, 37.311135, -121.914026, 'https://via.placeholder.com/400/A8C6F8/fff/?text=img', 'http://kimikurata.com/aau/wnm617/kurata.kimi/images/tulip-map-icon.png', '2020-08-04 07:07:41'),
(60, 11, 37.320098, -121.865958, 'https://via.placeholder.com/400/798BD7/fff/?text=img', 'http://kimikurata.com/aau/wnm617/kurata.kimi/images/tulip-map-icon.png', '2021-03-22 07:55:54'),
(61, 31, 37.383781, -121.942551, 'https://via.placeholder.com/400/CFF2F6/fff/?text=img', 'http://kimikurata.com/aau/wnm617/kurata.kimi/images/tulip-map-icon.png', '2020-06-28 08:27:37'),
(62, 24, 37.312195, -121.857755, 'https://via.placeholder.com/400/A8C6F8/fff/?text=img', 'http://kimikurata.com/aau/wnm617/kurata.kimi/images/tulip-map-icon.png', '2021-09-02 10:08:37'),
(63, 27, 37.311501, -121.958873, 'https://via.placeholder.com/400/798BD7/fff/?text=img', 'http://kimikurata.com/aau/wnm617/kurata.kimi/images/tulip-map-icon.png', '2021-05-25 10:47:24'),
(64, 36, 37.312668, -121.912500, 'https://via.placeholder.com/400/798BD7/fff/?text=img', 'http://kimikurata.com/aau/wnm617/kurata.kimi/images/tulip-map-icon.png', '2021-05-24 01:04:47'),
(65, 13, 37.366872, -121.892594, 'https://via.placeholder.com/400/AA92E0/fff/?text=img', 'http://kimikurata.com/aau/wnm617/kurata.kimi/images/tulip-map-icon.png', '2021-10-02 02:29:00'),
(66, 12, 37.389566, -121.905395, 'https://via.placeholder.com/400/CFF2F6/fff/?text=img', 'http://kimikurata.com/aau/wnm617/kurata.kimi/images/tulip-map-icon.png', '2020-05-13 02:13:41'),
(67, 2, 37.312903, -121.899481, 'https://via.placeholder.com/400/798BD7/fff/?text=img', 'http://kimikurata.com/aau/wnm617/kurata.kimi/images/tulip-map-icon.png', '2020-07-27 05:12:29'),
(68, 24, 37.289573, -121.888683, 'https://via.placeholder.com/400/798BD7/fff/?text=img', 'http://kimikurata.com/aau/wnm617/kurata.kimi/images/tulip-map-icon.png', '2021-03-10 11:40:55'),
(69, 46, 37.373618, -121.852402, 'https://via.placeholder.com/400/798BD7/fff/?text=img', 'http://kimikurata.com/aau/wnm617/kurata.kimi/images/tulip-map-icon.png', '2020-05-23 06:58:59'),
(70, 11, 37.314914, -121.868454, 'https://via.placeholder.com/400/CFF2F6/fff/?text=img', 'http://kimikurata.com/aau/wnm617/kurata.kimi/images/tulip-map-icon.png', '2020-02-12 07:09:10'),
(71, 15, 37.291481, -121.891662, 'https://via.placeholder.com/400/A8C6F8/fff/?text=img', 'http://kimikurata.com/aau/wnm617/kurata.kimi/images/tulip-map-icon.png', '2021-02-12 08:48:42'),
(72, 43, 37.292067, -121.846686, 'https://via.placeholder.com/400/A8C6F8/fff/?text=img', 'http://kimikurata.com/aau/wnm617/kurata.kimi/images/tulip-map-icon.png', '2021-07-10 07:37:04'),
(73, 24, 37.390007, -121.851122, 'https://via.placeholder.com/400/798BD7/fff/?text=img', 'http://kimikurata.com/aau/wnm617/kurata.kimi/images/tulip-map-icon.png', '2021-02-20 06:10:14'),
(74, 46, 37.352165, -121.934406, 'https://via.placeholder.com/400/A8C6F8/fff/?text=img', 'http://kimikurata.com/aau/wnm617/kurata.kimi/images/tulip-map-icon.png', '2021-03-07 06:30:07'),
(75, 9, 37.307808, -121.951308, 'https://via.placeholder.com/400/CFF2F6/fff/?text=img', 'http://kimikurata.com/aau/wnm617/kurata.kimi/images/tulip-map-icon.png', '2021-02-18 07:11:10'),
(76, 15, 37.284962, -121.907303, 'https://via.placeholder.com/400/798BD7/fff/?text=img', 'http://kimikurata.com/aau/wnm617/kurata.kimi/images/tulip-map-icon.png', '2020-02-08 01:12:19'),
(77, 10, 37.376096, -121.950657, 'https://via.placeholder.com/400/A8C6F8/fff/?text=img', 'http://kimikurata.com/aau/wnm617/kurata.kimi/images/tulip-map-icon.png', '2020-12-09 03:04:31'),
(78, 10, 37.373106, -121.881523, 'https://via.placeholder.com/400/798BD7/fff/?text=img', 'http://kimikurata.com/aau/wnm617/kurata.kimi/images/tulip-map-icon.png', '2021-10-20 06:15:44'),
(79, 9, 37.381337, -121.882546, 'https://via.placeholder.com/400/A8C6F8/fff/?text=img', 'http://kimikurata.com/aau/wnm617/kurata.kimi/images/tulip-map-icon.png', '2021-10-03 08:22:23'),
(80, 42, 37.351008, -121.932162, 'https://via.placeholder.com/400/AA92E0/fff/?text=img', 'http://kimikurata.com/aau/wnm617/kurata.kimi/images/tulip-map-icon.png', '2020-07-21 06:07:22'),
(81, 29, 37.383386, -121.892641, 'https://via.placeholder.com/400/A8C6F8/fff/?text=img', 'http://kimikurata.com/aau/wnm617/kurata.kimi/images/tulip-map-icon.png', '2021-01-30 02:26:33'),
(82, 35, 37.359116, -121.951990, 'https://via.placeholder.com/400/AA92E0/fff/?text=img', 'http://kimikurata.com/aau/wnm617/kurata.kimi/images/tulip-map-icon.png', '2020-01-01 07:32:39'),
(83, 23, 37.345508, -121.849177, 'https://via.placeholder.com/400/AA92E0/fff/?text=img', 'http://kimikurata.com/aau/wnm617/kurata.kimi/images/tulip-map-icon.png', '2021-07-19 10:49:32'),
(84, 6, 37.319768, -121.951559, 'https://via.placeholder.com/400/CFF2F6/fff/?text=img', 'http://kimikurata.com/aau/wnm617/kurata.kimi/images/tulip-map-icon.png', '2021-11-10 04:23:12'),
(85, 12, 37.323248, -121.861598, 'https://via.placeholder.com/400/AA92E0/fff/?text=img', 'http://kimikurata.com/aau/wnm617/kurata.kimi/images/tulip-map-icon.png', '2021-09-20 01:59:35'),
(86, 46, 37.336385, -121.900846, 'https://via.placeholder.com/400/798BD7/fff/?text=img', 'http://kimikurata.com/aau/wnm617/kurata.kimi/images/tulip-map-icon.png', '2020-10-18 08:14:15'),
(87, 15, 37.302430, -121.853721, 'https://via.placeholder.com/400/CFF2F6/fff/?text=img', 'http://kimikurata.com/aau/wnm617/kurata.kimi/images/tulip-map-icon.png', '2020-03-12 10:15:08'),
(88, 47, 37.383449, -121.954792, 'https://via.placeholder.com/400/A8C6F8/fff/?text=img', 'http://kimikurata.com/aau/wnm617/kurata.kimi/images/tulip-map-icon.png', '2021-02-12 01:28:49'),
(89, 50, 37.351531, -121.868917, 'https://via.placeholder.com/400/CFF2F6/fff/?text=img', 'http://kimikurata.com/aau/wnm617/kurata.kimi/images/tulip-map-icon.png', '2020-10-03 02:18:08'),
(90, 20, 37.380569, -121.946837, 'https://via.placeholder.com/400/798BD7/fff/?text=img', 'http://kimikurata.com/aau/wnm617/kurata.kimi/images/tulip-map-icon.png', '2021-08-25 04:45:32'),
(91, 19, 37.289299, -121.855285, 'https://via.placeholder.com/400/CFF2F6/fff/?text=img', 'http://kimikurata.com/aau/wnm617/kurata.kimi/images/tulip-map-icon.png', '2020-02-05 05:50:32'),
(92, 36, 37.351357, -121.864907, 'https://via.placeholder.com/400/AA92E0/fff/?text=img', 'http://kimikurata.com/aau/wnm617/kurata.kimi/images/tulip-map-icon.png', '2020-11-25 05:37:20'),
(93, 37, 37.329215, -121.867568, 'https://via.placeholder.com/400/CFF2F6/fff/?text=img', 'http://kimikurata.com/aau/wnm617/kurata.kimi/images/tulip-map-icon.png', '2020-09-01 09:36:59'),
(94, 21, 37.384057, -121.935232, 'https://via.placeholder.com/400/AA92E0/fff/?text=img', 'http://kimikurata.com/aau/wnm617/kurata.kimi/images/tulip-map-icon.png', '2020-06-11 02:35:54'),
(95, 18, 37.346756, -121.944560, 'https://via.placeholder.com/400/A8C6F8/fff/?text=img', 'http://kimikurata.com/aau/wnm617/kurata.kimi/images/tulip-map-icon.png', '2020-08-05 01:53:01'),
(96, 19, 37.347923, -121.887674, 'https://via.placeholder.com/400/A8C6F8/fff/?text=img', 'http://kimikurata.com/aau/wnm617/kurata.kimi/images/tulip-map-icon.png', '2021-06-01 04:16:04'),
(97, 1, 37.381043, -121.845048, 'https://via.placeholder.com/400/AA92E0/fff/?text=img', 'http://kimikurata.com/aau/wnm617/kurata.kimi/images/tulip-map-icon.png', '2021-11-12 04:30:20'),
(98, 26, 37.352476, -121.868837, 'https://via.placeholder.com/400/CFF2F6/fff/?text=img', 'http://kimikurata.com/aau/wnm617/kurata.kimi/images/tulip-map-icon.png', '2020-07-31 10:51:14'),
(99, 49, 37.343874, -121.900825, 'https://via.placeholder.com/400/AA92E0/fff/?text=img', 'http://kimikurata.com/aau/wnm617/kurata.kimi/images/tulip-map-icon.png', '2021-02-19 06:53:46'),
(100, 32, 37.335645, -121.917163, 'https://via.placeholder.com/400/AA92E0/fff/?text=img', 'http://kimikurata.com/aau/wnm617/kurata.kimi/images/tulip-map-icon.png', '2020-11-11 01:11:24'),
(101, 16, 37.329585, -121.855763, 'https://via.placeholder.com/400/CFF2F6/fff/?text=img', 'http://kimikurata.com/aau/wnm617/kurata.kimi/images/tulip-map-icon.png', '2020-08-09 09:28:06'),
(102, 29, 37.288474, -121.931441, 'https://via.placeholder.com/400/AA92E0/fff/?text=img', 'http://kimikurata.com/aau/wnm617/kurata.kimi/images/tulip-map-icon.png', '2021-05-13 09:48:14'),
(103, 23, 37.310774, -121.960139, 'https://via.placeholder.com/400/AA92E0/fff/?text=img', 'http://kimikurata.com/aau/wnm617/kurata.kimi/images/tulip-map-icon.png', '2020-09-02 07:28:52'),
(104, 5, 37.377034, -121.853122, 'https://via.placeholder.com/400/CFF2F6/fff/?text=img', 'http://kimikurata.com/aau/wnm617/kurata.kimi/images/tulip-map-icon.png', '2021-07-28 03:16:43'),
(105, 40, 37.375604, -121.929177, 'https://via.placeholder.com/400/A8C6F8/fff/?text=img', 'http://kimikurata.com/aau/wnm617/kurata.kimi/images/tulip-map-icon.png', '2020-01-15 08:43:09'),
(106, 23, 37.383379, -121.914415, 'https://via.placeholder.com/400/CFF2F6/fff/?text=img', 'http://kimikurata.com/aau/wnm617/kurata.kimi/images/tulip-map-icon.png', '2021-02-22 06:16:41'),
(107, 5, 37.316982, -121.902627, 'https://via.placeholder.com/400/A8C6F8/fff/?text=img', 'http://kimikurata.com/aau/wnm617/kurata.kimi/images/tulip-map-icon.png', '2020-06-12 12:21:38'),
(108, 35, 37.324942, -121.904125, 'https://via.placeholder.com/400/AA92E0/fff/?text=img', 'http://kimikurata.com/aau/wnm617/kurata.kimi/images/tulip-map-icon.png', '2021-04-13 09:24:17'),
(109, 38, 37.366242, -121.940429, 'https://via.placeholder.com/400/798BD7/fff/?text=img', 'http://kimikurata.com/aau/wnm617/kurata.kimi/images/tulip-map-icon.png', '2021-04-24 04:21:05'),
(110, 37, 37.334507, -121.934249, 'https://via.placeholder.com/400/AA92E0/fff/?text=img', 'http://kimikurata.com/aau/wnm617/kurata.kimi/images/tulip-map-icon.png', '2021-03-09 03:41:35'),
(111, 23, 37.334121, -121.926054, 'https://via.placeholder.com/400/798BD7/fff/?text=img', 'http://kimikurata.com/aau/wnm617/kurata.kimi/images/tulip-map-icon.png', '2021-04-20 11:55:11'),
(112, 35, 37.311053, -121.935587, 'https://via.placeholder.com/400/CFF2F6/fff/?text=img', 'http://kimikurata.com/aau/wnm617/kurata.kimi/images/tulip-map-icon.png', '2021-03-01 09:11:24'),
(113, 43, 37.390116, -121.932208, 'https://via.placeholder.com/400/AA92E0/fff/?text=img', 'http://kimikurata.com/aau/wnm617/kurata.kimi/images/tulip-map-icon.png', '2021-07-17 11:08:21'),
(114, 37, 37.290526, -121.940537, 'https://via.placeholder.com/400/798BD7/fff/?text=img', 'http://kimikurata.com/aau/wnm617/kurata.kimi/images/tulip-map-icon.png', '2020-04-15 10:30:48'),
(115, 31, 37.291866, -121.874485, 'https://via.placeholder.com/400/AA92E0/fff/?text=img', 'http://kimikurata.com/aau/wnm617/kurata.kimi/images/tulip-map-icon.png', '2021-08-04 12:20:39'),
(116, 20, 37.317263, -121.863763, 'https://via.placeholder.com/400/A8C6F8/fff/?text=img', 'http://kimikurata.com/aau/wnm617/kurata.kimi/images/tulip-map-icon.png', '2020-09-22 04:05:56'),
(117, 39, 37.286323, -121.952790, 'https://via.placeholder.com/400/AA92E0/fff/?text=img', 'http://kimikurata.com/aau/wnm617/kurata.kimi/images/tulip-map-icon.png', '2020-11-26 08:02:38'),
(118, 43, 37.349076, -121.878593, 'https://via.placeholder.com/400/A8C6F8/fff/?text=img', 'http://kimikurata.com/aau/wnm617/kurata.kimi/images/tulip-map-icon.png', '2020-04-07 01:38:37'),
(119, 38, 37.359148, -121.926140, 'https://via.placeholder.com/400/CFF2F6/fff/?text=img', 'http://kimikurata.com/aau/wnm617/kurata.kimi/images/tulip-map-icon.png', '2021-09-21 05:34:44'),
(120, 27, 37.287936, -121.932749, 'https://via.placeholder.com/400/798BD7/fff/?text=img', 'http://kimikurata.com/aau/wnm617/kurata.kimi/images/tulip-map-icon.png', '2020-09-26 04:28:02'),
(121, 47, 37.355195, -121.938776, 'https://via.placeholder.com/400/AA92E0/fff/?text=img', 'http://kimikurata.com/aau/wnm617/kurata.kimi/images/tulip-map-icon.png', '2021-06-03 03:50:58'),
(122, 50, 37.345042, -121.859711, 'https://via.placeholder.com/400/A8C6F8/fff/?text=img', 'http://kimikurata.com/aau/wnm617/kurata.kimi/images/tulip-map-icon.png', '2020-06-13 01:41:31'),
(123, 8, 37.365226, -121.845157, 'https://via.placeholder.com/400/798BD7/fff/?text=img', 'http://kimikurata.com/aau/wnm617/kurata.kimi/images/tulip-map-icon.png', '2020-01-08 11:03:04'),
(124, 42, 37.359233, -121.947048, 'https://via.placeholder.com/400/AA92E0/fff/?text=img', 'http://kimikurata.com/aau/wnm617/kurata.kimi/images/tulip-map-icon.png', '2021-07-19 10:35:47'),
(125, 4, 37.361592, -121.895968, 'https://via.placeholder.com/400/CFF2F6/fff/?text=img', 'http://kimikurata.com/aau/wnm617/kurata.kimi/images/tulip-map-icon.png', '2021-01-15 03:51:18'),
(126, 2, 37.362306, -121.899595, 'https://via.placeholder.com/400/A8C6F8/fff/?text=img', 'http://kimikurata.com/aau/wnm617/kurata.kimi/images/tulip-map-icon.png', '2021-04-30 10:51:07'),
(127, 49, 37.367693, -121.861492, 'https://via.placeholder.com/400/A8C6F8/fff/?text=img', 'http://kimikurata.com/aau/wnm617/kurata.kimi/images/tulip-map-icon.png', '2020-01-06 02:02:20'),
(128, 9, 37.347481, -121.934917, 'https://via.placeholder.com/400/798BD7/fff/?text=img', 'http://kimikurata.com/aau/wnm617/kurata.kimi/images/tulip-map-icon.png', '2021-08-08 07:38:24'),
(129, 38, 37.318934, -121.904615, 'https://via.placeholder.com/400/CFF2F6/fff/?text=img', 'http://kimikurata.com/aau/wnm617/kurata.kimi/images/tulip-map-icon.png', '2021-01-18 06:14:39'),
(130, 12, 37.286558, -121.860840, 'https://via.placeholder.com/400/A8C6F8/fff/?text=img', 'http://kimikurata.com/aau/wnm617/kurata.kimi/images/tulip-map-icon.png', '2020-11-30 11:49:12'),
(131, 50, 37.299188, -121.926794, 'https://via.placeholder.com/400/AA92E0/fff/?text=img', 'http://kimikurata.com/aau/wnm617/kurata.kimi/images/tulip-map-icon.png', '2021-08-13 07:12:48'),
(132, 29, 37.338503, -121.871068, 'https://via.placeholder.com/400/CFF2F6/fff/?text=img', 'http://kimikurata.com/aau/wnm617/kurata.kimi/images/tulip-map-icon.png', '2020-04-05 01:27:16'),
(133, 5, 37.291147, -121.913563, 'https://via.placeholder.com/400/AA92E0/fff/?text=img', 'http://kimikurata.com/aau/wnm617/kurata.kimi/images/tulip-map-icon.png', '2020-11-10 08:13:33'),
(134, 34, 37.341065, -121.872378, 'https://via.placeholder.com/400/CFF2F6/fff/?text=img', 'http://kimikurata.com/aau/wnm617/kurata.kimi/images/tulip-map-icon.png', '2020-04-27 04:19:39'),
(135, 32, 37.350947, -121.912727, 'https://via.placeholder.com/400/CFF2F6/fff/?text=img', 'http://kimikurata.com/aau/wnm617/kurata.kimi/images/tulip-map-icon.png', '2020-01-14 07:02:12'),
(136, 14, 37.378341, -121.856290, 'https://via.placeholder.com/400/A8C6F8/fff/?text=img', 'http://kimikurata.com/aau/wnm617/kurata.kimi/images/tulip-map-icon.png', '2020-08-07 03:26:14'),
(137, 28, 37.355532, -121.954210, 'https://via.placeholder.com/400/798BD7/fff/?text=img', 'http://kimikurata.com/aau/wnm617/kurata.kimi/images/tulip-map-icon.png', '2020-03-27 02:08:01'),
(138, 23, 37.372362, -121.904498, 'https://via.placeholder.com/400/CFF2F6/fff/?text=img', 'http://kimikurata.com/aau/wnm617/kurata.kimi/images/tulip-map-icon.png', '2021-01-09 02:00:32'),
(139, 47, 37.304213, -121.908864, 'https://via.placeholder.com/400/A8C6F8/fff/?text=img', 'http://kimikurata.com/aau/wnm617/kurata.kimi/images/tulip-map-icon.png', '2020-06-13 09:21:41'),
(140, 17, 37.368556, -121.902878, 'https://via.placeholder.com/400/AA92E0/fff/?text=img', 'http://kimikurata.com/aau/wnm617/kurata.kimi/images/tulip-map-icon.png', '2020-05-30 11:01:31'),
(141, 22, 37.299131, -121.875861, 'https://via.placeholder.com/400/CFF2F6/fff/?text=img', 'http://kimikurata.com/aau/wnm617/kurata.kimi/images/tulip-map-icon.png', '2020-10-29 01:24:04'),
(142, 30, 37.349156, -121.869024, 'https://via.placeholder.com/400/AA92E0/fff/?text=img', 'http://kimikurata.com/aau/wnm617/kurata.kimi/images/tulip-map-icon.png', '2020-10-09 07:23:55'),
(143, 9, 37.285002, -121.904721, 'https://via.placeholder.com/400/AA92E0/fff/?text=img', 'http://kimikurata.com/aau/wnm617/kurata.kimi/images/tulip-map-icon.png', '2021-02-23 03:05:59'),
(144, 4, 37.361023, -121.923649, 'https://via.placeholder.com/400/A8C6F8/fff/?text=img', 'http://kimikurata.com/aau/wnm617/kurata.kimi/images/tulip-map-icon.png', '2021-09-27 05:23:22'),
(145, 11, 37.347621, -121.872866, 'https://via.placeholder.com/400/CFF2F6/fff/?text=img', 'http://kimikurata.com/aau/wnm617/kurata.kimi/images/tulip-map-icon.png', '2021-10-11 07:17:00'),
(146, 46, 37.379957, -121.872801, 'https://via.placeholder.com/400/A8C6F8/fff/?text=img', 'http://kimikurata.com/aau/wnm617/kurata.kimi/images/tulip-map-icon.png', '2020-08-27 12:02:03'),
(147, 45, 37.308910, -121.884202, 'https://via.placeholder.com/400/AA92E0/fff/?text=img', 'http://kimikurata.com/aau/wnm617/kurata.kimi/images/tulip-map-icon.png', '2020-08-15 05:51:24'),
(148, 12, 37.375367, -121.896458, 'https://via.placeholder.com/400/AA92E0/fff/?text=img', 'http://kimikurata.com/aau/wnm617/kurata.kimi/images/tulip-map-icon.png', '2020-06-25 05:41:15'),
(149, 42, 37.311454, -121.880788, 'https://via.placeholder.com/400/AA92E0/fff/?text=img', 'http://kimikurata.com/aau/wnm617/kurata.kimi/images/tulip-map-icon.png', '2020-11-24 07:13:44'),
(150, 32, 37.297467, -121.926518, 'https://via.placeholder.com/400/798BD7/fff/?text=img', 'http://kimikurata.com/aau/wnm617/kurata.kimi/images/tulip-map-icon.png', '2021-05-10 07:40:57'),
(151, 7, 37.349906, -121.915867, 'https://via.placeholder.com/400/798BD7/fff/?text=img', 'http://kimikurata.com/aau/wnm617/kurata.kimi/images/tulip-map-icon.png', '2021-07-02 07:29:44'),
(152, 20, 37.389220, -121.905812, 'https://via.placeholder.com/400/A8C6F8/fff/?text=img', 'http://kimikurata.com/aau/wnm617/kurata.kimi/images/tulip-map-icon.png', '2020-08-12 05:35:39'),
(153, 5, 37.375464, -121.932261, 'https://via.placeholder.com/400/AA92E0/fff/?text=img', 'http://kimikurata.com/aau/wnm617/kurata.kimi/images/tulip-map-icon.png', '2021-03-18 12:40:34'),
(154, 43, 37.295135, -121.893370, 'https://via.placeholder.com/400/CFF2F6/fff/?text=img', 'http://kimikurata.com/aau/wnm617/kurata.kimi/images/tulip-map-icon.png', '2020-09-27 03:04:58'),
(155, 3, 37.342999, -121.934912, 'https://via.placeholder.com/400/CFF2F6/fff/?text=img', 'http://kimikurata.com/aau/wnm617/kurata.kimi/images/tulip-map-icon.png', '2021-08-01 04:35:02'),
(156, 26, 37.382742, -121.900802, 'https://via.placeholder.com/400/AA92E0/fff/?text=img', 'http://kimikurata.com/aau/wnm617/kurata.kimi/images/tulip-map-icon.png', '2021-05-13 01:24:08'),
(157, 7, 37.347740, -121.907774, 'https://via.placeholder.com/400/A8C6F8/fff/?text=img', 'http://kimikurata.com/aau/wnm617/kurata.kimi/images/tulip-map-icon.png', '2020-02-15 06:50:47'),
(158, 38, 37.295229, -121.897531, 'https://via.placeholder.com/400/AA92E0/fff/?text=img', 'http://kimikurata.com/aau/wnm617/kurata.kimi/images/tulip-map-icon.png', '2021-01-22 11:59:42'),
(159, 4, 37.379864, -121.947461, 'https://via.placeholder.com/400/798BD7/fff/?text=img', 'http://kimikurata.com/aau/wnm617/kurata.kimi/images/tulip-map-icon.png', '2021-02-07 09:11:28'),
(160, 2, 37.313824, -121.924621, 'https://via.placeholder.com/400/A8C6F8/fff/?text=img', 'http://kimikurata.com/aau/wnm617/kurata.kimi/images/tulip-map-icon.png', '2020-09-29 09:49:33'),
(161, 10, 37.345778, -121.960129, 'https://via.placeholder.com/400/CFF2F6/fff/?text=img', 'http://kimikurata.com/aau/wnm617/kurata.kimi/images/tulip-map-icon.png', '2020-09-12 05:41:59'),
(162, 14, 37.360947, -121.889206, 'https://via.placeholder.com/400/A8C6F8/fff/?text=img', 'http://kimikurata.com/aau/wnm617/kurata.kimi/images/tulip-map-icon.png', '2021-10-16 03:38:10'),
(163, 24, 37.346908, -121.929575, 'https://via.placeholder.com/400/798BD7/fff/?text=img', 'http://kimikurata.com/aau/wnm617/kurata.kimi/images/tulip-map-icon.png', '2020-06-19 03:42:08'),
(164, 34, 37.284159, -121.920027, 'https://via.placeholder.com/400/A8C6F8/fff/?text=img', 'http://kimikurata.com/aau/wnm617/kurata.kimi/images/tulip-map-icon.png', '2021-03-16 12:45:16'),
(165, 4, 37.371227, -121.862236, 'https://via.placeholder.com/400/A8C6F8/fff/?text=img', 'http://kimikurata.com/aau/wnm617/kurata.kimi/images/tulip-map-icon.png', '2021-06-11 05:07:55'),
(166, 27, 37.307235, -121.909467, 'https://via.placeholder.com/400/AA92E0/fff/?text=img', 'http://kimikurata.com/aau/wnm617/kurata.kimi/images/tulip-map-icon.png', '2020-04-17 08:35:12'),
(167, 27, 37.287231, -121.861642, 'https://via.placeholder.com/400/CFF2F6/fff/?text=img', 'http://kimikurata.com/aau/wnm617/kurata.kimi/images/tulip-map-icon.png', '2020-01-18 06:33:03'),
(168, 17, 37.389013, -121.909418, 'https://via.placeholder.com/400/AA92E0/fff/?text=img', 'http://kimikurata.com/aau/wnm617/kurata.kimi/images/tulip-map-icon.png', '2020-01-06 05:36:07'),
(169, 8, 37.362630, -121.903830, 'https://via.placeholder.com/400/AA92E0/fff/?text=img', 'http://kimikurata.com/aau/wnm617/kurata.kimi/images/tulip-map-icon.png', '2020-01-27 09:20:05'),
(170, 4, 37.300323, -121.872228, 'https://via.placeholder.com/400/798BD7/fff/?text=img', 'http://kimikurata.com/aau/wnm617/kurata.kimi/images/tulip-map-icon.png', '2020-09-07 10:43:38'),
(171, 10, 37.338600, -121.934462, 'https://via.placeholder.com/400/AA92E0/fff/?text=img', 'http://kimikurata.com/aau/wnm617/kurata.kimi/images/tulip-map-icon.png', '2021-06-07 08:07:56'),
(172, 49, 37.380106, -121.944859, 'https://via.placeholder.com/400/A8C6F8/fff/?text=img', 'http://kimikurata.com/aau/wnm617/kurata.kimi/images/tulip-map-icon.png', '2021-01-04 05:39:12'),
(173, 48, 37.365481, -121.890929, 'https://via.placeholder.com/400/AA92E0/fff/?text=img', 'http://kimikurata.com/aau/wnm617/kurata.kimi/images/tulip-map-icon.png', '2021-06-28 11:03:36'),
(174, 8, 37.386219, -121.924033, 'https://via.placeholder.com/400/CFF2F6/fff/?text=img', 'http://kimikurata.com/aau/wnm617/kurata.kimi/images/tulip-map-icon.png', '2021-05-01 08:28:51'),
(175, 21, 37.346597, -121.940043, 'https://via.placeholder.com/400/CFF2F6/fff/?text=img', 'http://kimikurata.com/aau/wnm617/kurata.kimi/images/tulip-map-icon.png', '2021-04-24 05:14:39'),
(176, 42, 37.365342, -121.931204, 'https://via.placeholder.com/400/798BD7/fff/?text=img', 'http://kimikurata.com/aau/wnm617/kurata.kimi/images/tulip-map-icon.png', '2020-06-10 09:35:22'),
(177, 6, 37.390056, -121.948820, 'https://via.placeholder.com/400/CFF2F6/fff/?text=img', 'http://kimikurata.com/aau/wnm617/kurata.kimi/images/tulip-map-icon.png', '2020-02-10 07:07:52'),
(178, 2, 37.341925, -121.848640, 'https://via.placeholder.com/400/798BD7/fff/?text=img', 'http://kimikurata.com/aau/wnm617/kurata.kimi/images/tulip-map-icon.png', '2020-09-24 04:14:11'),
(179, 23, 37.294230, -121.907875, 'https://via.placeholder.com/400/A8C6F8/fff/?text=img', 'http://kimikurata.com/aau/wnm617/kurata.kimi/images/tulip-map-icon.png', '2020-03-09 10:24:48'),
(180, 27, 37.370134, -121.855437, 'https://via.placeholder.com/400/798BD7/fff/?text=img', 'http://kimikurata.com/aau/wnm617/kurata.kimi/images/tulip-map-icon.png', '2020-08-31 11:27:18'),
(181, 21, 37.309209, -121.886096, 'https://via.placeholder.com/400/A8C6F8/fff/?text=img', 'http://kimikurata.com/aau/wnm617/kurata.kimi/images/tulip-map-icon.png', '2021-06-11 09:53:48'),
(182, 43, 37.370472, -121.892602, 'https://via.placeholder.com/400/A8C6F8/fff/?text=img', 'http://kimikurata.com/aau/wnm617/kurata.kimi/images/tulip-map-icon.png', '2020-11-17 03:18:44'),
(183, 47, 37.317693, -121.902196, 'https://via.placeholder.com/400/CFF2F6/fff/?text=img', 'http://kimikurata.com/aau/wnm617/kurata.kimi/images/tulip-map-icon.png', '2020-12-17 08:59:32'),
(184, 4, 37.390266, -121.852085, 'https://via.placeholder.com/400/CFF2F6/fff/?text=img', 'http://kimikurata.com/aau/wnm617/kurata.kimi/images/tulip-map-icon.png', '2020-06-12 03:25:52'),
(185, 39, 37.337562, -121.854641, 'https://via.placeholder.com/400/AA92E0/fff/?text=img', 'http://kimikurata.com/aau/wnm617/kurata.kimi/images/tulip-map-icon.png', '2021-02-13 11:53:46'),
(186, 35, 37.375748, -121.864940, 'https://via.placeholder.com/400/A8C6F8/fff/?text=img', 'http://kimikurata.com/aau/wnm617/kurata.kimi/images/tulip-map-icon.png', '2021-10-19 05:53:11'),
(187, 12, 37.361158, -121.906870, 'https://via.placeholder.com/400/A8C6F8/fff/?text=img', 'http://kimikurata.com/aau/wnm617/kurata.kimi/images/tulip-map-icon.png', '2021-07-20 06:07:41'),
(188, 43, 37.358841, -121.855516, 'https://via.placeholder.com/400/CFF2F6/fff/?text=img', 'http://kimikurata.com/aau/wnm617/kurata.kimi/images/tulip-map-icon.png', '2021-07-20 03:28:19'),
(189, 34, 37.384492, -121.945932, 'https://via.placeholder.com/400/A8C6F8/fff/?text=img', 'http://kimikurata.com/aau/wnm617/kurata.kimi/images/tulip-map-icon.png', '2020-07-28 07:26:34'),
(190, 47, 37.357069, -121.872731, 'https://via.placeholder.com/400/A8C6F8/fff/?text=img', 'http://kimikurata.com/aau/wnm617/kurata.kimi/images/tulip-map-icon.png', '2021-10-20 02:01:02'),
(191, 26, 37.338585, -121.903080, 'https://via.placeholder.com/400/798BD7/fff/?text=img', 'http://kimikurata.com/aau/wnm617/kurata.kimi/images/tulip-map-icon.png', '2021-05-17 12:04:25'),
(192, 25, 37.353436, -121.899030, 'https://via.placeholder.com/400/A8C6F8/fff/?text=img', 'http://kimikurata.com/aau/wnm617/kurata.kimi/images/tulip-map-icon.png', '2020-04-09 10:27:59'),
(193, 20, 37.308891, -121.892163, 'https://via.placeholder.com/400/CFF2F6/fff/?text=img', 'http://kimikurata.com/aau/wnm617/kurata.kimi/images/tulip-map-icon.png', '2021-07-17 06:41:14'),
(194, 34, 37.319489, -121.915412, 'https://via.placeholder.com/400/A8C6F8/fff/?text=img', 'http://kimikurata.com/aau/wnm617/kurata.kimi/images/tulip-map-icon.png', '2021-03-26 03:21:29'),
(195, 33, 37.340129, -121.889855, 'https://via.placeholder.com/400/798BD7/fff/?text=img', 'http://kimikurata.com/aau/wnm617/kurata.kimi/images/tulip-map-icon.png', '2021-04-29 08:56:17'),
(196, 10, 37.325355, -121.868691, 'https://via.placeholder.com/400/AA92E0/fff/?text=img', 'http://kimikurata.com/aau/wnm617/kurata.kimi/images/tulip-map-icon.png', '2020-01-02 08:44:01'),
(197, 17, 37.356757, -121.945009, 'https://via.placeholder.com/400/AA92E0/fff/?text=img', 'http://kimikurata.com/aau/wnm617/kurata.kimi/images/tulip-map-icon.png', '2020-04-11 04:17:29'),
(198, 31, 37.341833, -121.893949, 'https://via.placeholder.com/400/AA92E0/fff/?text=img', 'http://kimikurata.com/aau/wnm617/kurata.kimi/images/tulip-map-icon.png', '2021-03-29 12:57:59'),
(199, 22, 37.344037, -121.891510, 'https://via.placeholder.com/400/A8C6F8/fff/?text=img', 'http://kimikurata.com/aau/wnm617/kurata.kimi/images/tulip-map-icon.png', '2021-02-04 08:37:58'),
(200, 49, 37.358361, -121.901868, 'https://via.placeholder.com/400/CFF2F6/fff/?text=img', 'http://kimikurata.com/aau/wnm617/kurata.kimi/images/tulip-map-icon.png', '2020-01-10 07:24:42'),
(201, 42, 37.314261, -121.918554, 'https://via.placeholder.com/400/AA92E0/fff/?text=img', 'http://kimikurata.com/aau/wnm617/kurata.kimi/images/tulip-map-icon.png', '2021-07-08 06:13:41'),
(202, 38, 37.387750, -121.885314, 'https://via.placeholder.com/400/798BD7/fff/?text=img', 'http://kimikurata.com/aau/wnm617/kurata.kimi/images/tulip-map-icon.png', '2020-08-13 11:16:47'),
(203, 40, 37.368896, -121.852615, 'https://via.placeholder.com/400/798BD7/fff/?text=img', 'http://kimikurata.com/aau/wnm617/kurata.kimi/images/tulip-map-icon.png', '2020-06-27 10:24:44'),
(204, 22, 37.307722, -121.869322, 'https://via.placeholder.com/400/A8C6F8/fff/?text=img', 'http://kimikurata.com/aau/wnm617/kurata.kimi/images/tulip-map-icon.png', '2020-07-28 02:20:24'),
(205, 46, 37.309086, -121.954303, 'https://via.placeholder.com/400/CFF2F6/fff/?text=img', 'http://kimikurata.com/aau/wnm617/kurata.kimi/images/tulip-map-icon.png', '2020-09-11 01:18:26'),
(206, 6, 37.330797, -121.956702, 'https://via.placeholder.com/400/CFF2F6/fff/?text=img', 'http://kimikurata.com/aau/wnm617/kurata.kimi/images/tulip-map-icon.png', '2021-10-07 06:52:47'),
(207, 19, 37.287131, -121.925097, 'https://via.placeholder.com/400/A8C6F8/fff/?text=img', 'http://kimikurata.com/aau/wnm617/kurata.kimi/images/tulip-map-icon.png', '2021-02-20 02:21:29'),
(208, 5, 37.360576, -121.905478, 'https://via.placeholder.com/400/798BD7/fff/?text=img', 'http://kimikurata.com/aau/wnm617/kurata.kimi/images/tulip-map-icon.png', '2020-08-18 06:00:02'),
(209, 14, 37.319263, -121.940184, 'https://via.placeholder.com/400/AA92E0/fff/?text=img', 'http://kimikurata.com/aau/wnm617/kurata.kimi/images/tulip-map-icon.png', '2021-09-21 01:49:25'),
(210, 16, 37.285698, -121.888806, 'https://via.placeholder.com/400/798BD7/fff/?text=img', 'http://kimikurata.com/aau/wnm617/kurata.kimi/images/tulip-map-icon.png', '2021-07-13 04:45:46'),
(211, 12, 37.290678, -121.911882, 'https://via.placeholder.com/400/798BD7/fff/?text=img', 'http://kimikurata.com/aau/wnm617/kurata.kimi/images/tulip-map-icon.png', '2020-02-14 01:48:12'),
(212, 10, 37.340835, -121.943708, 'https://via.placeholder.com/400/CFF2F6/fff/?text=img', 'http://kimikurata.com/aau/wnm617/kurata.kimi/images/tulip-map-icon.png', '2021-04-14 01:19:29'),
(213, 34, 37.380066, -121.954903, 'https://via.placeholder.com/400/CFF2F6/fff/?text=img', 'http://kimikurata.com/aau/wnm617/kurata.kimi/images/tulip-map-icon.png', '2021-08-05 11:04:59'),
(214, 5, 37.373839, -121.908695, 'https://via.placeholder.com/400/798BD7/fff/?text=img', 'http://kimikurata.com/aau/wnm617/kurata.kimi/images/tulip-map-icon.png', '2020-02-29 10:42:12'),
(215, 27, 37.286057, -121.902933, 'https://via.placeholder.com/400/CFF2F6/fff/?text=img', 'http://kimikurata.com/aau/wnm617/kurata.kimi/images/tulip-map-icon.png', '2020-03-10 03:13:08'),
(216, 28, 37.315790, -121.947178, 'https://via.placeholder.com/400/AA92E0/fff/?text=img', 'http://kimikurata.com/aau/wnm617/kurata.kimi/images/tulip-map-icon.png', '2021-05-20 12:42:06'),
(217, 5, 37.369851, -121.949163, 'https://via.placeholder.com/400/AA92E0/fff/?text=img', 'http://kimikurata.com/aau/wnm617/kurata.kimi/images/tulip-map-icon.png', '2021-03-06 01:38:51'),
(218, 40, 37.329063, -121.870783, 'https://via.placeholder.com/400/CFF2F6/fff/?text=img', 'http://kimikurata.com/aau/wnm617/kurata.kimi/images/tulip-map-icon.png', '2021-06-04 10:00:51'),
(219, 22, 37.374833, -121.852974, 'https://via.placeholder.com/400/AA92E0/fff/?text=img', 'http://kimikurata.com/aau/wnm617/kurata.kimi/images/tulip-map-icon.png', '2020-12-17 07:25:51'),
(220, 42, 37.298047, -121.930423, 'https://via.placeholder.com/400/AA92E0/fff/?text=img', 'http://kimikurata.com/aau/wnm617/kurata.kimi/images/tulip-map-icon.png', '2020-10-09 09:23:32'),
(221, 13, 37.346899, -121.955160, 'https://via.placeholder.com/400/AA92E0/fff/?text=img', 'http://kimikurata.com/aau/wnm617/kurata.kimi/images/tulip-map-icon.png', '2021-03-04 04:30:29'),
(222, 37, 37.347252, -121.845111, 'https://via.placeholder.com/400/AA92E0/fff/?text=img', 'http://kimikurata.com/aau/wnm617/kurata.kimi/images/tulip-map-icon.png', '2021-10-16 04:26:59'),
(223, 5, 37.297810, -121.886735, 'https://via.placeholder.com/400/798BD7/fff/?text=img', 'http://kimikurata.com/aau/wnm617/kurata.kimi/images/tulip-map-icon.png', '2020-06-07 05:06:29'),
(224, 40, 37.331276, -121.888825, 'https://via.placeholder.com/400/AA92E0/fff/?text=img', 'http://kimikurata.com/aau/wnm617/kurata.kimi/images/tulip-map-icon.png', '2020-12-17 08:15:23'),
(225, 18, 37.382168, -121.950333, 'https://via.placeholder.com/400/A8C6F8/fff/?text=img', 'http://kimikurata.com/aau/wnm617/kurata.kimi/images/tulip-map-icon.png', '2020-07-28 12:22:05'),
(226, 40, 37.339067, -121.885823, 'https://via.placeholder.com/400/798BD7/fff/?text=img', 'http://kimikurata.com/aau/wnm617/kurata.kimi/images/tulip-map-icon.png', '2021-10-26 02:53:11'),
(227, 50, 37.321403, -121.874026, 'https://via.placeholder.com/400/CFF2F6/fff/?text=img', 'http://kimikurata.com/aau/wnm617/kurata.kimi/images/tulip-map-icon.png', '2020-02-07 08:00:07'),
(228, 47, 37.360111, -121.849565, 'https://via.placeholder.com/400/AA92E0/fff/?text=img', 'http://kimikurata.com/aau/wnm617/kurata.kimi/images/tulip-map-icon.png', '2021-02-26 10:06:33'),
(229, 36, 37.375839, -121.849990, 'https://via.placeholder.com/400/798BD7/fff/?text=img', 'http://kimikurata.com/aau/wnm617/kurata.kimi/images/tulip-map-icon.png', '2021-04-27 04:38:14'),
(230, 27, 37.390278, -121.860014, 'https://via.placeholder.com/400/798BD7/fff/?text=img', 'http://kimikurata.com/aau/wnm617/kurata.kimi/images/tulip-map-icon.png', '2020-04-19 10:00:29'),
(231, 8, 37.383412, -121.891689, 'https://via.placeholder.com/400/A8C6F8/fff/?text=img', 'http://kimikurata.com/aau/wnm617/kurata.kimi/images/tulip-map-icon.png', '2020-06-26 05:50:38'),
(232, 31, 37.328773, -121.864568, 'https://via.placeholder.com/400/CFF2F6/fff/?text=img', 'http://kimikurata.com/aau/wnm617/kurata.kimi/images/tulip-map-icon.png', '2020-06-24 01:10:24'),
(233, 38, 37.300598, -121.942948, 'https://via.placeholder.com/400/CFF2F6/fff/?text=img', 'http://kimikurata.com/aau/wnm617/kurata.kimi/images/tulip-map-icon.png', '2021-03-22 02:05:46'),
(234, 18, 37.294633, -121.942730, 'https://via.placeholder.com/400/CFF2F6/fff/?text=img', 'http://kimikurata.com/aau/wnm617/kurata.kimi/images/tulip-map-icon.png', '2021-03-14 12:26:32'),
(235, 33, 37.305562, -121.858695, 'https://via.placeholder.com/400/A8C6F8/fff/?text=img', 'http://kimikurata.com/aau/wnm617/kurata.kimi/images/tulip-map-icon.png', '2021-11-14 08:38:07'),
(236, 6, 37.291654, -121.894405, 'https://via.placeholder.com/400/CFF2F6/fff/?text=img', 'http://kimikurata.com/aau/wnm617/kurata.kimi/images/tulip-map-icon.png', '2020-07-06 05:09:57'),
(237, 7, 37.328550, -121.876373, 'https://via.placeholder.com/400/798BD7/fff/?text=img', 'http://kimikurata.com/aau/wnm617/kurata.kimi/images/tulip-map-icon.png', '2020-05-15 08:11:06'),
(238, 19, 37.286861, -121.897912, 'https://via.placeholder.com/400/A8C6F8/fff/?text=img', 'http://kimikurata.com/aau/wnm617/kurata.kimi/images/tulip-map-icon.png', '2020-03-23 06:55:52'),
(239, 45, 37.320509, -121.950988, 'https://via.placeholder.com/400/AA92E0/fff/?text=img', 'http://kimikurata.com/aau/wnm617/kurata.kimi/images/tulip-map-icon.png', '2020-03-30 12:08:49'),
(240, 42, 37.365180, -121.896083, 'https://via.placeholder.com/400/CFF2F6/fff/?text=img', 'http://kimikurata.com/aau/wnm617/kurata.kimi/images/tulip-map-icon.png', '2021-01-08 11:57:47'),
(241, 13, 37.315402, -121.879073, 'https://via.placeholder.com/400/AA92E0/fff/?text=img', 'http://kimikurata.com/aau/wnm617/kurata.kimi/images/tulip-map-icon.png', '2020-03-12 06:13:58'),
(242, 47, 37.359484, -121.897867, 'https://via.placeholder.com/400/CFF2F6/fff/?text=img', 'http://kimikurata.com/aau/wnm617/kurata.kimi/images/tulip-map-icon.png', '2020-05-29 06:04:55'),
(243, 40, 37.389694, -121.849561, 'https://via.placeholder.com/400/AA92E0/fff/?text=img', 'http://kimikurata.com/aau/wnm617/kurata.kimi/images/tulip-map-icon.png', '2021-03-13 09:28:22'),
(244, 6, 37.333878, -121.939787, 'https://via.placeholder.com/400/A8C6F8/fff/?text=img', 'http://kimikurata.com/aau/wnm617/kurata.kimi/images/tulip-map-icon.png', '2021-10-05 03:35:05'),
(245, 9, 37.389075, -121.872838, 'https://via.placeholder.com/400/AA92E0/fff/?text=img', 'http://kimikurata.com/aau/wnm617/kurata.kimi/images/tulip-map-icon.png', '2020-06-27 07:25:53'),
(246, 41, 37.370815, -121.955756, 'https://via.placeholder.com/400/798BD7/fff/?text=img', 'http://kimikurata.com/aau/wnm617/kurata.kimi/images/tulip-map-icon.png', '2021-06-09 11:53:09'),
(247, 39, 37.314851, -121.863812, 'https://via.placeholder.com/400/798BD7/fff/?text=img', 'http://kimikurata.com/aau/wnm617/kurata.kimi/images/tulip-map-icon.png', '2021-07-08 02:05:47'),
(248, 42, 37.325419, -121.850261, 'https://via.placeholder.com/400/CFF2F6/fff/?text=img', 'http://kimikurata.com/aau/wnm617/kurata.kimi/images/tulip-map-icon.png', '2021-10-21 06:34:29'),
(249, 47, 37.340954, -121.906221, 'https://via.placeholder.com/400/A8C6F8/fff/?text=img', 'http://kimikurata.com/aau/wnm617/kurata.kimi/images/tulip-map-icon.png', '2020-01-04 07:34:57'),
(250, 25, 37.290324, -121.911247, 'https://via.placeholder.com/400/798BD7/fff/?text=img', 'http://kimikurata.com/aau/wnm617/kurata.kimi/images/tulip-map-icon.png', '2021-04-28 06:58:20');

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
(1, 'Lacy Hall', 'user1', 'user1@gmail.com', '1a1dc91c907325c69271ddf0c944bc72', 'https://via.placeholder.com/400/C3B7AD/fff/?text=user1', '2021-09-22 08:21:17'),
(2, 'Mollie Townsend', 'user2', 'user2@gmail.com', '1a1dc91c907325c69271ddf0c944bc72', 'https://via.placeholder.com/400/85A5DD/fff/?text=user2', '2020-07-09 02:02:41'),
(3, 'Sheila Mathis', 'user3', 'user3@gmail.com', '1a1dc91c907325c69271ddf0c944bc72', 'https://via.placeholder.com/400/85A5DD/fff/?text=user3', '2020-10-08 02:21:16'),
(4, 'Underwood Black', 'user4', 'user4@gmail.com', '1a1dc91c907325c69271ddf0c944bc72', 'https://via.placeholder.com/400/85A5DD/fff/?text=user4', '2021-05-29 08:14:02'),
(5, 'Kristi Garrett', 'user5', 'user5@gmail.com', '1a1dc91c907325c69271ddf0c944bc72', 'https://via.placeholder.com/400/45567A/fff/?text=user5', '2021-06-24 04:51:56'),
(6, 'Ramona Roach', 'user6', 'user6@gmail.com', '1a1dc91c907325c69271ddf0c944bc72', 'https://via.placeholder.com/400/85A5DD/fff/?text=user6', '2021-07-01 11:47:41'),
(7, 'Mullen Todd', 'user7', 'user7@gmail.com', '1a1dc91c907325c69271ddf0c944bc72', 'https://via.placeholder.com/400/45567A/fff/?text=user7', '2020-04-02 11:30:39'),
(8, 'Noelle George', 'user8', 'user8@gmail.com', '1a1dc91c907325c69271ddf0c944bc72', 'https://via.placeholder.com/400/85A5DD/fff/?text=user8', '2021-10-12 11:54:08'),
(9, 'Jeannie Gay', 'user9', 'user9@gmail.com', '1a1dc91c907325c69271ddf0c944bc72', 'https://via.placeholder.com/400/F295A0/fff/?text=user9', '2020-07-18 05:09:01'),
(10, 'Ruby Cleveland', 'user10', 'user10@gmail.com', '1a1dc91c907325c69271ddf0c944bc72', 'https://via.placeholder.com/400/C3B7AD/fff/?text=user10', '2020-09-01 10:52:08');

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
