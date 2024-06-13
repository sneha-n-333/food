-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 29, 2024 at 04:49 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `django_sneha`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add category', 7, 'add_category'),
(26, 'Can change category', 7, 'change_category'),
(27, 'Can delete category', 7, 'delete_category'),
(28, 'Can view category', 7, 'view_category'),
(29, 'Can add product', 8, 'add_product'),
(30, 'Can change product', 8, 'change_product'),
(31, 'Can delete product', 8, 'delete_product'),
(32, 'Can view product', 8, 'view_product'),
(33, 'Can add cart', 9, 'add_cart'),
(34, 'Can change cart', 9, 'change_cart'),
(35, 'Can delete cart', 9, 'delete_cart'),
(36, 'Can view cart', 9, 'view_cart');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$720000$fNJuAM4xieVdx6uiqyHca2$de2LqMJ321zgTKEsZ0jRY19E9ionJ28GLTXn4c1O6Sw=', '2024-04-27 20:55:53.749004', 1, 'sneha', '', '', 'sneha@gmail.com', 1, 1, '2024-04-24 04:45:31.987932'),
(2, 'pbkdf2_sha256$720000$1FgyJeOgifteR7mHHqnN1W$bWVROukaTYF9BNDCID0NPY1OsyI9n1qEP04rhMTRNgE=', '2024-04-27 23:05:24.613360', 0, 'neha', '', '', 'neha@gmail.com', 0, 1, '2024-04-27 05:11:49.901871'),
(3, 'pbkdf2_sha256$720000$0ZkUkzh5UCISGxLqIV5IMa$T7tfh9SVG1/ExgnYJVElHpAptsJQ5NcTcgGTWVCD2vk=', '2024-04-27 21:01:59.568933', 0, 'manju', '', '', 'manju@gmail.com', 0, 1, '2024-04-27 20:54:29.046063');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2024-04-24 05:07:25.688055', '1', 'Category object (1)', 1, '[{\"added\": {}}]', 7, 1),
(2, '2024-04-24 05:09:19.505002', '2', 'Category object (2)', 1, '[{\"added\": {}}]', 7, 1),
(3, '2024-04-24 05:22:44.064130', '3', 'Category object (3)', 1, '[{\"added\": {}}]', 7, 1),
(4, '2024-04-24 05:23:12.587235', '3', 'Category object (3)', 2, '[{\"changed\": {\"fields\": [\"Status\"]}}]', 7, 1),
(5, '2024-04-24 05:26:49.830102', '4', 'Category object (4)', 1, '[{\"added\": {}}]', 7, 1),
(6, '2024-04-24 05:28:16.567635', '5', 'Category object (5)', 1, '[{\"added\": {}}]', 7, 1),
(7, '2024-04-24 05:33:15.760498', '6', 'Category object (6)', 1, '[{\"added\": {}}]', 7, 1),
(8, '2024-04-24 07:14:19.579417', '1', 'Chicken Biriyani', 1, '[{\"added\": {}}]', 8, 1),
(9, '2024-04-24 07:17:16.987401', '2', 'Chicken Curry', 1, '[{\"added\": {}}]', 8, 1),
(10, '2024-04-24 07:18:26.157661', '3', 'Masala Dosa', 1, '[{\"added\": {}}]', 8, 1),
(11, '2024-04-24 07:19:20.662123', '4', 'Flatbread Pizza', 1, '[{\"added\": {}}]', 8, 1),
(12, '2024-04-24 07:19:58.150995', '5', 'Idli', 1, '[{\"added\": {}}]', 8, 1),
(13, '2024-04-24 07:21:15.000716', '6', 'Paneer Tika', 1, '[{\"added\": {}}]', 8, 1),
(14, '2024-04-24 07:21:51.768002', '7', 'Samosa', 1, '[{\"added\": {}}]', 8, 1),
(15, '2024-04-24 07:22:49.005536', '8', 'Shawarma', 1, '[{\"added\": {}}]', 8, 1),
(16, '2024-04-24 07:23:52.642059', '9', 'Tandoori Chicken', 1, '[{\"added\": {}}]', 8, 1),
(17, '2024-04-24 07:31:07.028264', '10', 'Hamburger', 1, '[{\"added\": {}}]', 8, 1),
(18, '2024-04-24 07:32:12.877319', '11', 'Applepie', 1, '[{\"added\": {}}]', 8, 1),
(19, '2024-04-24 07:33:29.127580', '12', 'Chili Con Carne', 1, '[{\"added\": {}}]', 8, 1),
(20, '2024-04-24 07:34:06.670018', '13', 'Fried Chicken', 1, '[{\"added\": {}}]', 8, 1),
(21, '2024-04-24 07:35:01.905953', '14', 'Lobster Roll', 1, '[{\"added\": {}}]', 8, 1),
(22, '2024-04-24 07:35:46.175127', '15', 'Macaroni', 1, '[{\"added\": {}}]', 8, 1),
(23, '2024-04-24 07:36:21.072810', '16', 'Pancake', 1, '[{\"added\": {}}]', 8, 1),
(24, '2024-04-24 07:37:11.192687', '17', 'Reuben Sandwich', 1, '[{\"added\": {}}]', 8, 1),
(25, '2024-04-24 07:38:06.860043', '18', 'Tater Tots', 1, '[{\"added\": {}}]', 8, 1),
(26, '2024-04-24 07:39:28.996694', '19', 'Green Curry', 1, '[{\"added\": {}}]', 8, 1),
(27, '2024-04-24 07:39:56.742998', '20', 'Larb', 1, '[{\"added\": {}}]', 8, 1),
(28, '2024-04-24 07:40:56.561464', '21', 'Mango Sticky Rice', 1, '[{\"added\": {}}]', 8, 1),
(29, '2024-04-24 07:41:41.161044', '22', 'Massaman Curry', 1, '[{\"added\": {}}]', 8, 1),
(30, '2024-04-24 07:42:21.631593', '23', 'Pad Kra Pao', 1, '[{\"added\": {}}]', 8, 1),
(31, '2024-04-24 07:42:53.329972', '24', 'Pad Thai', 1, '[{\"added\": {}}]', 8, 1),
(32, '2024-04-24 07:43:53.565471', '25', 'Som Tum', 1, '[{\"added\": {}}]', 8, 1),
(33, '2024-04-24 07:44:39.117005', '26', 'Tom Kha Gai', 1, '[{\"added\": {}}]', 8, 1),
(34, '2024-04-24 07:45:25.180247', '27', 'Tom Yum Kung', 1, '[{\"added\": {}}]', 8, 1),
(35, '2024-04-24 07:51:31.443397', '28', 'Burchetta', 1, '[{\"added\": {}}]', 8, 1),
(36, '2024-04-24 07:52:02.064338', '29', 'Caprese Salad', 1, '[{\"added\": {}}]', 8, 1),
(37, '2024-04-24 07:52:42.166921', '30', 'Fettuccine', 1, '[{\"added\": {}}]', 8, 1),
(38, '2024-04-24 07:53:12.759431', '31', 'Lasagna', 1, '[{\"added\": {}}]', 8, 1),
(39, '2024-04-24 07:53:51.197245', '32', 'Pizza Mergherita', 1, '[{\"added\": {}}]', 8, 1),
(40, '2024-04-24 07:54:19.883072', '33', 'Ravioli', 1, '[{\"added\": {}}]', 8, 1),
(41, '2024-04-24 07:55:11.052529', '34', 'Risotto Alla Milanese', 1, '[{\"added\": {}}]', 8, 1),
(42, '2024-04-24 07:55:49.310945', '35', 'Spaghetti', 1, '[{\"added\": {}}]', 8, 1),
(43, '2024-04-24 07:56:28.944778', '36', 'Tiramisu', 1, '[{\"added\": {}}]', 8, 1),
(44, '2024-04-24 07:58:22.883830', '37', 'Beef and Broccoli', 1, '[{\"added\": {}}]', 8, 1),
(45, '2024-04-24 07:59:09.941588', '38', 'Chow Mein', 1, '[{\"added\": {}}]', 8, 1),
(46, '2024-04-24 07:59:39.887474', '39', 'Fried Rice', 1, '[{\"added\": {}}]', 8, 1),
(47, '2024-04-24 08:00:24.668199', '40', 'Honey Walnut Shrimp', 1, '[{\"added\": {}}]', 8, 1),
(48, '2024-04-24 08:01:03.729830', '41', 'Kung Pao Chicken', 1, '[{\"added\": {}}]', 8, 1),
(49, '2024-04-24 08:01:39.635970', '42', 'Leamon Chicken', 1, '[{\"added\": {}}]', 8, 1),
(50, '2024-04-24 08:02:23.841709', '43', 'Spring Roll', 1, '[{\"added\": {}}]', 8, 1),
(51, '2024-04-24 08:03:25.802747', '44', 'Sweet and Sour Pork', 1, '[{\"added\": {}}]', 8, 1),
(52, '2024-04-24 08:03:57.183333', '45', 'Tso Chicken', 1, '[{\"added\": {}}]', 8, 1),
(53, '2024-04-24 08:05:25.924338', '46', 'Chawanmushi', 1, '[{\"added\": {}}]', 8, 1),
(54, '2024-04-24 08:06:06.338961', '47', 'Donburi', 1, '[{\"added\": {}}]', 8, 1),
(55, '2024-04-24 08:06:33.662518', '48', 'Miso Soup', 1, '[{\"added\": {}}]', 8, 1),
(56, '2024-04-24 08:07:04.130883', '49', 'Onigiri', 1, '[{\"added\": {}}]', 8, 1),
(57, '2024-04-24 08:07:35.788089', '50', 'Ramen Noodles', 1, '[{\"added\": {}}]', 8, 1),
(58, '2024-04-24 08:08:09.811413', '51', 'Shrimp Tempura', 1, '[{\"added\": {}}]', 8, 1),
(59, '2024-04-24 08:08:45.612562', '52', 'Takoyaki', 1, '[{\"added\": {}}]', 8, 1),
(60, '2024-04-24 08:09:18.471166', '53', 'Tonkatsu', 1, '[{\"added\": {}}]', 8, 1),
(61, '2024-04-24 08:09:54.850518', '54', 'Yakitori', 1, '[{\"added\": {}}]', 8, 1),
(62, '2024-04-25 07:33:49.752699', '3', 'Category object (3)', 2, '[{\"changed\": {\"fields\": [\"Status\"]}}]', 7, 1),
(63, '2024-04-26 08:50:30.435497', '2', 'Category object (2)', 2, '[{\"changed\": {\"fields\": [\"Status\"]}}]', 7, 1),
(64, '2024-04-26 21:50:51.961232', '54', 'Yakitori', 2, '[{\"changed\": {\"fields\": [\"Description\", \"Price\"]}}]', 8, 1),
(65, '2024-04-26 21:52:36.744236', '53', 'Tonkatsu', 2, '[{\"changed\": {\"fields\": [\"Description\", \"Price\"]}}]', 8, 1),
(66, '2024-04-26 21:53:49.077882', '52', 'Takoyaki', 2, '[{\"changed\": {\"fields\": [\"Description\"]}}]', 8, 1),
(67, '2024-04-26 21:54:53.791184', '51', 'Shrimp Tempura', 2, '[{\"changed\": {\"fields\": [\"Description\"]}}]', 8, 1),
(68, '2024-04-26 21:56:11.374601', '50', 'Ramen Noodles', 2, '[{\"changed\": {\"fields\": [\"Description\"]}}]', 8, 1),
(69, '2024-04-26 21:57:02.966395', '49', 'Onigiri', 2, '[{\"changed\": {\"fields\": [\"Description\"]}}]', 8, 1),
(70, '2024-04-26 21:57:59.478002', '48', 'Miso Soup', 2, '[{\"changed\": {\"fields\": [\"Description\", \"Price\"]}}]', 8, 1),
(71, '2024-04-26 21:58:55.768834', '47', 'Donburi', 2, '[{\"changed\": {\"fields\": [\"Description\"]}}]', 8, 1),
(72, '2024-04-26 21:59:58.742539', '46', 'Chawanmushi', 2, '[{\"changed\": {\"fields\": [\"Description\"]}}]', 8, 1),
(73, '2024-04-26 22:00:54.241237', '45', 'Tso Chicken', 2, '[{\"changed\": {\"fields\": [\"Description\", \"Price\"]}}]', 8, 1),
(74, '2024-04-26 22:01:51.844477', '44', 'Sweet and Sour Pork', 2, '[{\"changed\": {\"fields\": [\"Description\"]}}]', 8, 1),
(75, '2024-04-26 22:02:43.858113', '43', 'Spring Roll', 2, '[{\"changed\": {\"fields\": [\"Description\"]}}]', 8, 1),
(76, '2024-04-26 22:03:34.071052', '42', 'Leamon Chicken', 2, '[{\"changed\": {\"fields\": [\"Description\", \"Price\"]}}]', 8, 1),
(77, '2024-04-26 22:04:24.185435', '41', 'Kung Pao Chicken', 2, '[{\"changed\": {\"fields\": [\"Description\"]}}]', 8, 1),
(78, '2024-04-26 22:05:17.520577', '40', 'Honey Walnut Shrimp', 2, '[{\"changed\": {\"fields\": [\"Description\"]}}]', 8, 1),
(79, '2024-04-26 22:06:15.700935', '39', 'Fried Rice', 2, '[{\"changed\": {\"fields\": [\"Description\", \"Price\"]}}]', 8, 1),
(80, '2024-04-26 22:07:04.136214', '38', 'Chow Mein', 2, '[{\"changed\": {\"fields\": [\"Description\"]}}]', 8, 1),
(81, '2024-04-26 22:08:06.161731', '37', 'Beef and Broccoli', 2, '[{\"changed\": {\"fields\": [\"Description\", \"Price\"]}}]', 8, 1),
(82, '2024-04-26 22:09:06.588849', '36', 'Tiramisu', 2, '[{\"changed\": {\"fields\": [\"Description\"]}}]', 8, 1),
(83, '2024-04-26 22:10:04.180264', '35', 'Spaghetti', 2, '[{\"changed\": {\"fields\": [\"Description\", \"Price\"]}}]', 8, 1),
(84, '2024-04-26 22:11:06.927989', '34', 'Risotto Alla Milanese', 2, '[{\"changed\": {\"fields\": [\"Description\", \"Price\"]}}]', 8, 1),
(85, '2024-04-26 22:11:54.418939', '33', 'Ravioli', 2, '[{\"changed\": {\"fields\": [\"Description\"]}}]', 8, 1),
(86, '2024-04-26 22:14:47.359142', '32', 'Pizza Mergherita', 2, '[{\"changed\": {\"fields\": [\"Description\"]}}]', 8, 1),
(87, '2024-04-26 22:15:43.073662', '31', 'Lasagna', 2, '[{\"changed\": {\"fields\": [\"Description\"]}}]', 8, 1),
(88, '2024-04-26 22:16:56.465406', '30', 'Fettuccine', 2, '[{\"changed\": {\"fields\": [\"Description\", \"Price\"]}}]', 8, 1),
(89, '2024-04-26 22:18:18.291820', '29', 'Caprese Salad', 2, '[{\"changed\": {\"fields\": [\"Description\"]}}]', 8, 1),
(90, '2024-04-26 22:19:09.194194', '28', 'Burchetta', 2, '[{\"changed\": {\"fields\": [\"Description\"]}}]', 8, 1),
(91, '2024-04-26 22:20:05.780273', '27', 'Tom Yum Kung', 2, '[{\"changed\": {\"fields\": [\"Description\"]}}]', 8, 1),
(92, '2024-04-26 22:20:59.910925', '26', 'Tom Kha Gai', 2, '[{\"changed\": {\"fields\": [\"Description\", \"Price\"]}}]', 8, 1),
(93, '2024-04-26 22:22:13.258854', '25', 'Som Tum', 2, '[{\"changed\": {\"fields\": [\"Description\", \"Price\"]}}]', 8, 1),
(94, '2024-04-26 22:23:25.106476', '24', 'Pad Thai', 2, '[{\"changed\": {\"fields\": [\"Description\", \"Price\"]}}]', 8, 1),
(95, '2024-04-26 22:24:12.315294', '23', 'Pad Kra Pao', 2, '[{\"changed\": {\"fields\": [\"Description\"]}}]', 8, 1),
(96, '2024-04-26 22:25:17.800434', '22', 'Massaman Curry', 2, '[{\"changed\": {\"fields\": [\"Description\", \"Price\"]}}]', 8, 1),
(97, '2024-04-26 22:26:06.734538', '21', 'Mango Sticky Rice', 2, '[{\"changed\": {\"fields\": [\"Description\"]}}]', 8, 1),
(98, '2024-04-26 22:27:01.405204', '20', 'Larb', 2, '[{\"changed\": {\"fields\": [\"Description\", \"Price\"]}}]', 8, 1),
(99, '2024-04-26 22:27:48.507705', '19', 'Green Curry', 2, '[{\"changed\": {\"fields\": [\"Description\", \"Price\"]}}]', 8, 1),
(100, '2024-04-26 22:29:12.512031', '9', 'Tandoori Chicken', 2, '[{\"changed\": {\"fields\": [\"Description\"]}}]', 8, 1),
(101, '2024-04-26 22:30:03.397812', '8', 'Shawarma', 2, '[{\"changed\": {\"fields\": [\"Description\", \"Price\"]}}]', 8, 1),
(102, '2024-04-26 22:30:46.238550', '7', 'Samosa', 2, '[{\"changed\": {\"fields\": [\"Description\", \"Price\"]}}]', 8, 1),
(103, '2024-04-26 22:31:31.106930', '6', 'Paneer Tika', 2, '[{\"changed\": {\"fields\": [\"Description\"]}}]', 8, 1),
(104, '2024-04-26 22:32:21.231066', '5', 'Idli', 2, '[{\"changed\": {\"fields\": [\"Description\", \"Price\"]}}]', 8, 1),
(105, '2024-04-26 22:33:17.467126', '4', 'Flatbread Pizza', 2, '[{\"changed\": {\"fields\": [\"Description\"]}}]', 8, 1),
(106, '2024-04-26 22:34:05.769536', '3', 'Masala Dosa', 2, '[{\"changed\": {\"fields\": [\"Description\", \"Price\"]}}]', 8, 1),
(107, '2024-04-26 22:34:48.737663', '2', 'Chicken Curry', 2, '[{\"changed\": {\"fields\": [\"Description\", \"Price\"]}}]', 8, 1),
(108, '2024-04-26 22:36:02.820358', '1', 'Chicken Biriyani', 2, '[{\"changed\": {\"fields\": [\"Description\", \"Price\"]}}]', 8, 1),
(109, '2024-04-27 09:26:29.204855', '54', 'Yakitori', 2, '[{\"changed\": {\"fields\": [\"Quantity\"]}}]', 8, 1),
(110, '2024-04-27 09:27:00.601195', '52', 'Takoyaki', 2, '[{\"changed\": {\"fields\": [\"Quantity\"]}}]', 8, 1),
(111, '2024-04-27 09:27:15.851036', '51', 'Shrimp Tempura', 2, '[{\"changed\": {\"fields\": [\"Quantity\"]}}]', 8, 1),
(112, '2024-04-27 09:27:26.943653', '50', 'Ramen Noodles', 2, '[{\"changed\": {\"fields\": [\"Quantity\"]}}]', 8, 1),
(113, '2024-04-27 09:27:38.674643', '49', 'Onigiri', 2, '[{\"changed\": {\"fields\": [\"Quantity\"]}}]', 8, 1),
(114, '2024-04-27 09:27:49.421729', '48', 'Miso Soup', 2, '[{\"changed\": {\"fields\": [\"Quantity\"]}}]', 8, 1),
(115, '2024-04-27 09:27:59.531002', '47', 'Donburi', 2, '[{\"changed\": {\"fields\": [\"Quantity\"]}}]', 8, 1),
(116, '2024-04-27 09:28:13.575918', '46', 'Chawanmushi', 2, '[{\"changed\": {\"fields\": [\"Quantity\"]}}]', 8, 1),
(117, '2024-04-27 09:28:30.058082', '45', 'Tso Chicken', 2, '[{\"changed\": {\"fields\": [\"Quantity\"]}}]', 8, 1),
(118, '2024-04-27 09:28:45.233619', '44', 'Sweet and Sour Pork', 2, '[{\"changed\": {\"fields\": [\"Quantity\"]}}]', 8, 1),
(119, '2024-04-27 09:28:59.123036', '43', 'Spring Roll', 2, '[{\"changed\": {\"fields\": [\"Quantity\"]}}]', 8, 1),
(120, '2024-04-27 09:29:12.383205', '42', 'Leamon Chicken', 2, '[{\"changed\": {\"fields\": [\"Quantity\"]}}]', 8, 1),
(121, '2024-04-27 09:29:34.102448', '41', 'Kung Pao Chicken', 2, '[{\"changed\": {\"fields\": [\"Quantity\"]}}]', 8, 1),
(122, '2024-04-27 09:29:46.818854', '40', 'Honey Walnut Shrimp', 2, '[{\"changed\": {\"fields\": [\"Quantity\"]}}]', 8, 1),
(123, '2024-04-27 09:30:03.861653', '39', 'Fried Rice', 2, '[{\"changed\": {\"fields\": [\"Quantity\"]}}]', 8, 1),
(124, '2024-04-27 09:30:23.340528', '38', 'Chow Mein', 2, '[{\"changed\": {\"fields\": [\"Quantity\"]}}]', 8, 1),
(125, '2024-04-27 09:30:35.672683', '37', 'Beef and Broccoli', 2, '[{\"changed\": {\"fields\": [\"Quantity\"]}}]', 8, 1),
(126, '2024-04-27 09:30:48.740137', '36', 'Tiramisu', 2, '[{\"changed\": {\"fields\": [\"Quantity\"]}}]', 8, 1),
(127, '2024-04-27 09:31:05.675626', '35', 'Spaghetti', 2, '[{\"changed\": {\"fields\": [\"Quantity\"]}}]', 8, 1),
(128, '2024-04-27 09:31:29.930813', '34', 'Risotto Alla Milanese', 2, '[{\"changed\": {\"fields\": [\"Quantity\"]}}]', 8, 1),
(129, '2024-04-27 09:31:43.532167', '33', 'Ravioli', 2, '[{\"changed\": {\"fields\": [\"Quantity\"]}}]', 8, 1),
(130, '2024-04-27 09:31:55.481193', '32', 'Pizza Mergherita', 2, '[{\"changed\": {\"fields\": [\"Quantity\"]}}]', 8, 1),
(131, '2024-04-27 09:32:14.099613', '31', 'Lasagna', 2, '[{\"changed\": {\"fields\": [\"Quantity\"]}}]', 8, 1),
(132, '2024-04-27 09:32:31.902670', '30', 'Fettuccine', 2, '[{\"changed\": {\"fields\": [\"Quantity\"]}}]', 8, 1),
(133, '2024-04-27 09:32:46.326103', '29', 'Caprese Salad', 2, '[{\"changed\": {\"fields\": [\"Quantity\"]}}]', 8, 1),
(134, '2024-04-27 09:33:04.469155', '28', 'Burchetta', 2, '[{\"changed\": {\"fields\": [\"Quantity\"]}}]', 8, 1),
(135, '2024-04-27 09:33:16.802748', '27', 'Tom Yum Kung', 2, '[{\"changed\": {\"fields\": [\"Quantity\"]}}]', 8, 1),
(136, '2024-04-27 09:33:48.749180', '26', 'Tom Kha Gai', 2, '[{\"changed\": {\"fields\": [\"Quantity\"]}}]', 8, 1),
(137, '2024-04-27 09:34:06.673595', '25', 'Som Tum', 2, '[{\"changed\": {\"fields\": [\"Quantity\"]}}]', 8, 1),
(138, '2024-04-27 09:34:21.073008', '24', 'Pad Thai', 2, '[{\"changed\": {\"fields\": [\"Quantity\"]}}]', 8, 1),
(139, '2024-04-27 09:34:33.353397', '23', 'Pad Kra Pao', 2, '[{\"changed\": {\"fields\": [\"Quantity\"]}}]', 8, 1),
(140, '2024-04-27 09:34:52.810718', '22', 'Massaman Curry', 2, '[{\"changed\": {\"fields\": [\"Quantity\"]}}]', 8, 1),
(141, '2024-04-27 09:35:07.067208', '21', 'Mango Sticky Rice', 2, '[{\"changed\": {\"fields\": [\"Quantity\"]}}]', 8, 1),
(142, '2024-04-27 09:35:25.158152', '20', 'Larb', 2, '[{\"changed\": {\"fields\": [\"Quantity\"]}}]', 8, 1),
(143, '2024-04-27 09:35:42.621498', '19', 'Green Curry', 2, '[{\"changed\": {\"fields\": [\"Quantity\"]}}]', 8, 1),
(144, '2024-04-27 09:36:11.645469', '9', 'Tandoori Chicken', 2, '[{\"changed\": {\"fields\": [\"Quantity\"]}}]', 8, 1),
(145, '2024-04-27 09:36:23.615655', '8', 'Shawarma', 2, '[{\"changed\": {\"fields\": [\"Quantity\"]}}]', 8, 1),
(146, '2024-04-27 09:36:37.824999', '7', 'Samosa', 2, '[{\"changed\": {\"fields\": [\"Quantity\"]}}]', 8, 1),
(147, '2024-04-27 09:36:49.729297', '6', 'Paneer Tika', 2, '[{\"changed\": {\"fields\": [\"Quantity\"]}}]', 8, 1),
(148, '2024-04-27 09:37:04.526046', '5', 'Idli', 2, '[{\"changed\": {\"fields\": [\"Quantity\"]}}]', 8, 1),
(149, '2024-04-27 09:37:20.410624', '4', 'Flatbread Pizza', 2, '[{\"changed\": {\"fields\": [\"Quantity\"]}}]', 8, 1),
(150, '2024-04-27 09:37:31.095421', '3', 'Masala Dosa', 2, '[{\"changed\": {\"fields\": [\"Quantity\"]}}]', 8, 1),
(151, '2024-04-27 09:37:47.638852', '2', 'Chicken Curry', 2, '[{\"changed\": {\"fields\": [\"Quantity\"]}}]', 8, 1),
(152, '2024-04-27 09:38:00.909209', '1', 'Chicken Biriyani', 2, '[{\"changed\": {\"fields\": [\"Quantity\"]}}]', 8, 1);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(9, 'home', 'cart'),
(7, 'home', 'category'),
(8, 'home', 'product'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2024-04-24 04:40:43.881773'),
(2, 'auth', '0001_initial', '2024-04-24 04:40:52.806691'),
(3, 'admin', '0001_initial', '2024-04-24 04:40:54.826512'),
(4, 'admin', '0002_logentry_remove_auto_add', '2024-04-24 04:40:54.874030'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2024-04-24 04:40:55.101629'),
(6, 'contenttypes', '0002_remove_content_type_name', '2024-04-24 04:40:55.996273'),
(7, 'auth', '0002_alter_permission_name_max_length', '2024-04-24 04:40:56.704061'),
(8, 'auth', '0003_alter_user_email_max_length', '2024-04-24 04:40:56.866750'),
(9, 'auth', '0004_alter_user_username_opts', '2024-04-24 04:40:56.909937'),
(10, 'auth', '0005_alter_user_last_login_null', '2024-04-24 04:40:57.431724'),
(11, 'auth', '0006_require_contenttypes_0002', '2024-04-24 04:40:57.459503'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2024-04-24 04:40:57.511599'),
(13, 'auth', '0008_alter_user_username_max_length', '2024-04-24 04:40:57.665808'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2024-04-24 04:40:57.777272'),
(15, 'auth', '0010_alter_group_name_max_length', '2024-04-24 04:40:58.047104'),
(16, 'auth', '0011_update_proxy_permissions', '2024-04-24 04:40:58.171545'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2024-04-24 04:40:58.321651'),
(18, 'home', '0001_initial', '2024-04-24 04:40:59.693031'),
(19, 'sessions', '0001_initial', '2024-04-24 04:41:00.052314'),
(20, 'home', '0002_category_status_product_status', '2024-04-24 05:18:20.275544'),
(21, 'home', '0003_rename_category_product_category', '2024-04-25 19:07:03.444394'),
(22, 'home', '0004_cart', '2024-04-27 07:50:42.332437'),
(23, 'home', '0005_product_quantity', '2024-04-27 09:25:12.593806');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `home_cart`
--

CREATE TABLE `home_cart` (
  `id` bigint(20) NOT NULL,
  `product_qty` int(11) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `product_id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `home_cart`
--

INSERT INTO `home_cart` (`id`, `product_qty`, `created_at`, `product_id`, `user_id`) VALUES
(2, 2, '2024-04-27 10:07:48.541736', 20, 1),
(4, 1, '2024-04-27 19:27:47.317471', 19, 2),
(5, 1, '2024-04-27 23:05:39.039079', 30, 2);

-- --------------------------------------------------------

--
-- Table structure for table `home_category`
--

CREATE TABLE `home_category` (
  `id` bigint(20) NOT NULL,
  `name` varchar(150) NOT NULL,
  `image` varchar(100) DEFAULT NULL,
  `description` longtext NOT NULL,
  `created_at` date NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `home_category`
--

INSERT INTO `home_category` (`id`, `name`, `image`, `description`, `created_at`, `status`) VALUES
(1, 'Indian Cuisine', 'uploads/20240424103725biryani2.jpg', 'Indian cuisine offers a vibrant array of flavours,from rich curries to crispy dosa.Popular dishes include butter chicken,aromatic biriyani and spicy samosas', '2024-04-24', 0),
(2, 'American Cuisine', 'uploads/20240424103919amarican-cuisine.jpg', 'American cuisine is influenced by a blend of culinary tradition from various immigrant group.Popular dishes hamburgers,hot dogs,fried  chicken', '2024-04-24', 1),
(3, 'Thai Cuisine', 'uploads/20240424105243thai-cuisine.jpeg', 'Thai cuisine is known for its bold flavors,aromatic herbs balance of sweet,sour,salty spicy dishes.Popular dishes mango sticky rice,green curry,tom yum soup', '2024-04-24', 0),
(4, 'Italian Cuisine', 'uploads/20240424105649italian1.jpg', 'Italian cuisine celeberates the importance of quality ingredients,like ripe tomatoes, fragrant basil.Popular dishes Pizza margherita,Spaghetti,Ravioli', '2024-04-24', 0),
(5, 'Chinese Cuisine', 'uploads/20240424105816chinese.jpg', 'Chinese cuisine boasts a diverse range of flavors and regional specialties.Popular dishes include sweet and sour chicken,beef with broccoli,and kung pao shrimp', '2024-04-24', 0),
(6, 'Japanese Cuisine', 'uploads/20240424110315donburi-japanese2.jpg', 'Japanese cuisine is renowned for its emphasis on fresh,seasonl  ingredients and meticulas preperation techniques.Popular dishes sushi,tempura,ramen', '2024-04-24', 0);

-- --------------------------------------------------------

--
-- Table structure for table `home_product`
--

CREATE TABLE `home_product` (
  `id` bigint(20) NOT NULL,
  `name` varchar(150) NOT NULL,
  `product_image` varchar(100) DEFAULT NULL,
  `description` longtext NOT NULL,
  `price` int(11) NOT NULL,
  `created_at` date NOT NULL,
  `category_id` bigint(20) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `home_product`
--

INSERT INTO `home_product` (`id`, `name`, `product_image`, `description`, `price`, `created_at`, `category_id`, `status`, `quantity`) VALUES
(1, 'Chicken Biriyani', 'uploads/20240424124419chickenbiriyani.jpg', 'Chicken biryani is a fragrant and aromatic rice dish made with basmati rice, tender chicken pieces, and a blend of spices such as saffron, cardamom, and cloves. Layered and cooked together to infuse the flavors, chicken biryani offers a sumptuous and flavorful experience that\'s a highlight of Indian cuisine.', 250, '2024-04-24', 1, 0, 7),
(2, 'Chicken Curry', 'uploads/20240424124716chicken-curry.webp', 'Chicken curry is a classic dish found in various cuisines worldwide, featuring tender chicken pieces simmered in a flavorful sauce made with spices, tomatoes, onions, and sometimes coconut milk. With its rich aroma and depth of flavors, chicken curry offers a comforting and satisfying meal that\'s enjoyed in diverse culinary traditions.', 150, '2024-04-24', 1, 0, 5),
(3, 'Masala Dosa', 'uploads/20240424124826dosa.jpg', 'Masala dosa is a popular South Indian dish consisting of a thin, crispy rice and lentil crepe filled with a spicy potato filling. Served with coconut chutney and sambar, masala dosa is a flavorful and satisfying meal enjoyed for breakfast, lunch, or dinner across India and beyond.', 70, '2024-04-24', 1, 0, 5),
(4, 'Flatbread Pizza', 'uploads/20240424124920flatbread-pizza.jpg', 'Flatbread pizza is a delicious variation of traditional pizza, featuring a thin and crispy crust made from flatbread such as naan or lavash. Topped with sauce, cheese, and a variety of toppings, flatbread pizza offers a quick and easy way to enjoy the flavors of pizza with a lighter and more delicate base.', 100, '2024-04-24', 1, 0, 5),
(5, 'Idli', 'uploads/20240424124958idli.jpg', 'Idli is a popular South Indian dish made from fermented rice and black lentil batter, steamed to create soft and fluffy cakes. Served with chutneys and sambar, idli is a nutritious and versatile dish enjoyed as breakfast, snack, or part of a meal in India and beyond.', 60, '2024-04-24', 1, 0, 5),
(6, 'Paneer Tika', 'uploads/20240424125114paneer-tikka.jpg', 'Paneer tikka is a mouthwatering Indian dish made with chunks of paneer (Indian cottage cheese) marinated in a blend of yogurt and spices, then grilled or baked until golden and charred. With its tender, flavorful paneer and aromatic marinade, paneer tikka is a vegetarian delight that\'s enjoyed as an appetizer or as part of a main course in Indian cuisine.', 100, '2024-04-24', 1, 0, 5),
(7, 'Samosa', 'uploads/20240424125151samosa-indian.jpg', 'Samosa is a popular Indian appetizer consisting of a crispy pastry filled with savory ingredients such as spiced potatoes, peas, and sometimes minced meat. Whether enjoyed as a snack or served as part of a meal, samosas delight with their crunchy exterior and flavorful, aromatic filling, making them a beloved dish in Indian cuisine.', 60, '2024-04-24', 1, 0, 5),
(8, 'Shawarma', 'uploads/20240424125248Shawarma3.jpg', 'Shawarma is a Middle Eastern street food made with seasoned meat (typically chicken, beef, or lamb) cooked on a rotating vertical spit. Served wrapped in a warm pita bread and topped with vegetables, tahini sauce, and sometimes pickles or hot sauce, shawarma offers a flavorful and satisfying handheld meal enjoyed across the globe.', 150, '2024-04-24', 1, 0, 5),
(9, 'Tandoori Chicken', 'uploads/20240424125352Tandoorichicken-india.webp', 'Tandoori chicken is a flavorful Indian dish consisting of marinated chicken cooked in a tandoor, a traditional clay oven. With its vibrant red color from spices like cayenne pepper and turmeric, and its tender and juicy texture, tandoori chicken is a beloved staple of Indian cuisine enjoyed worldwide.', 100, '2024-04-24', 1, 0, 5),
(10, 'Hamburger', 'uploads/20240424130106amarican-cuisine.jpg', 'hamburger', 150, '2024-04-24', 2, 0, 0),
(11, 'Applepie', 'uploads/20240424130212applepie.webp', 'applepie', 150, '2024-04-24', 2, 0, 0),
(12, 'Chili Con Carne', 'uploads/20240424130329chili-con-carne.jpg', 'chili con carne', 100, '2024-04-24', 2, 0, 0),
(13, 'Fried Chicken', 'uploads/20240424130406friedchicken.jpg', 'fried chicken', 100, '2024-04-24', 2, 0, 0),
(14, 'Lobster Roll', '', 'lobster roll', 100, '2024-04-24', 2, 0, 0),
(15, 'Macaroni', 'uploads/20240424130546macaroni1.jpg', 'macaroni', 100, '2024-04-24', 2, 0, 0),
(16, 'Pancake', 'uploads/20240424130621pancake1.jpg', 'pancake', 100, '2024-04-24', 2, 0, 0),
(17, 'Reuben Sandwich', 'uploads/20240424130711reuben-sandwich.webp', 'sandwich', 100, '2024-04-24', 2, 0, 0),
(18, 'Tater Tots', 'uploads/20240424130806tater-tots.webp', 'tater tots', 100, '2024-04-24', 2, 0, 0),
(19, 'Green Curry', 'uploads/20240424130928greencurry.webp', 'Green curry is a classic Thai dish known for its vibrant green color and spicy, aromatic flavor. Made with a blend of green chili peppers, lemongrass, galangal, coconut milk, and fragrant herbs, it offers a deliciously complex taste that\'s both creamy and fiery.', 105, '2024-04-24', 3, 0, 5),
(20, 'Larb', 'uploads/20240424130956larb.jpeg', 'Larb is a traditional Thai salad made with minced meat (commonly chicken, pork, or beef) seasoned with lime juice, fish sauce, chili flakes, and fresh herbs like mint and cilantro. With its vibrant flavors and refreshing ingredients, larb offers a zesty and satisfying dish that\'s popular throughout Thailand and beyond.', 60, '2024-04-24', 3, 0, 5),
(21, 'Mango Sticky Rice', 'uploads/20240424131056mango-sticky-rice.jpg', 'Mango sticky rice is a popular Thai dessert featuring sweet sticky rice topped with ripe mango slices and drizzled with coconut milk. With its combination of creamy rice, juicy mango, and coconutty sweetness, it\'s a refreshing and indulgent treat that showcases the tropical flavors of Thailand.', 100, '2024-04-24', 3, 0, 5),
(22, 'Massaman Curry', 'uploads/20240424131141massaman-curry.jpeg', 'Massaman curry is a rich and fragrant Thai curry made with tender chunks of meat (usually beef or chicken), potatoes, onions, and peanuts in a creamy coconut milk-based sauce. With its blend of aromatic spices like cinnamon, cardamom, and cloves, Massaman curry offers a delightful balance of sweetness, spiciness, and creaminess that\'s sure to satisfy any curry lover\'s palate.', 120, '2024-04-24', 3, 0, 5),
(23, 'Pad Kra Pao', 'uploads/20240424131221pad-kra-pao.jpg', 'Pad Kra Pao, also known as Thai basil stir-fry, is a spicy and aromatic Thai dish made with minced meat (usually pork, chicken, or beef) stir-fried with holy basil, garlic, chili, and soy sauce. With its bold flavors and fragrant aroma, Pad Kra Pao is a favorite street food in Thailand, offering a quick and satisfying meal packed with savory goodness.', 100, '2024-04-24', 3, 0, 5),
(24, 'Pad Thai', 'uploads/20240424131253pad-thai.jpg', 'Pad Thai is a beloved Thai stir-fried noodle dish made with rice noodles, tofu, eggs, bean sprouts, and a flavorful sauce made from tamarind, fish sauce, and palm sugar. With its combination of savory, sweet, and tangy flavors, Pad Thai has become a symbol of Thai cuisine worldwide, offering a satisfying and delicious meal for both locals and visitors alike.', 200, '2024-04-24', 3, 0, 5),
(25, 'Som Tum', 'uploads/20240424131353som-tum.jpg', 'Som Tum, also known as Thai green papaya salad, is a refreshing and spicy Thai dish made with shredded green papaya, cherry tomatoes, green beans, peanuts, and a tangy dressing. With its vibrant colors and bold flavors, Som Tum offers a delightful balance of sweet, sour, salty, and spicy notes that make it a popular choice among Thai food enthusiasts.', 160, '2024-04-24', 3, 0, 5),
(26, 'Tom Kha Gai', 'uploads/20240424131439tom-kha-gai.jpg', 'Tom Kha Gai is a flavorful Thai soup made with coconut milk, chicken, galangal, lemongrass, and kaffir lime leaves, creating a delicate balance of creamy, tangy, and aromatic flavors. With its creamy texture and subtle yet complex taste, it\'s a beloved dish that offers a comforting and satisfying dining experience.', 120, '2024-04-24', 3, 0, 5),
(27, 'Tom Yum Kung', 'uploads/20240424131525Tom-Yum-kung.webp', 'Tom Yum Kung is a spicy and sour Thai soup known for its aromatic blend of lemongrass, lime leaves, chili peppers, and shrimp. With its bold flavors and fragrant broth, it\'s a beloved dish that\'s both comforting and invigorating, enjoyed by locals and international diners alike.', 100, '2024-04-24', 3, 0, 5),
(28, 'Burchetta', 'uploads/20240424132131bruchetta.jpg', 'Bruschetta is an Italian appetizer consisting of toasted bread slices rubbed with garlic and topped with diced tomatoes, basil, and olive oil. With its vibrant colors and fresh flavors, bruschetta is a popular antipasto that\'s perfect for showcasing the bright taste of summer tomatoes.', 100, '2024-04-24', 4, 0, 5),
(29, 'Caprese Salad', 'uploads/20240424132202Caprese-Salad.webp', 'Caprese salad is a classic Italian dish featuring fresh tomatoes, creamy mozzarella cheese, fragrant basil leaves, and a drizzle of extra virgin olive oil. With its vibrant colors and harmonious flavors, it\'s a refreshing and light appetizer that celebrates the simplicity and quality of its ingredients.', 100, '2024-04-24', 4, 0, 5),
(30, 'Fettuccine', 'uploads/20240424132242Fettuccine.jpg', 'Fettuccine is a type of pasta characterized by its flat, wide shape, similar to ribbon-like strands. Often served with rich and creamy sauces, such as Alfredo sauce, fettuccine offers a delightful chewy texture and is a favorite choice for pasta lovers seeking a comforting and indulgent meal.', 170, '2024-04-24', 4, 0, 5),
(31, 'Lasagna', 'uploads/20240424132312lasagna.jpg', 'Lasagna is a hearty Italian dish consisting of layers of wide pasta sheets, rich meat or vegetable sauce, creamy béchamel sauce, and cheese, baked until golden and bubbling. With its comforting layers of flavor and satisfying texture, lasagna has become a beloved staple in Italian-American cuisine and beyond.', 100, '2024-04-24', 4, 0, 5),
(32, 'Pizza Mergherita', 'uploads/20240424132351pizza-margherita.jpg', 'Pizza Margherita is a classic Italian pizza topped with tomato sauce, fresh mozzarella cheese, basil leaves, and a drizzle of olive oil. Named after Queen Margherita of Italy, its simple yet flavorful combination of ingredients has made it an iconic symbol of Italian cuisine around the world.', 100, '2024-04-24', 4, 0, 5),
(33, 'Ravioli', 'uploads/20240424132419Ravioli.jpg', 'Ravioli are Italian dumplings made from pasta dough, filled with various ingredients such as cheese, meat, or vegetables, and sealed before being cooked. Whether served in a delicate broth, topped with a savory sauce, or simply dressed in butter and herbs, ravioli offer a delicious and comforting dining experience cherished by pasta enthusiasts worldwide.', 100, '2024-04-24', 4, 0, 5),
(34, 'Risotto Alla Milanese', 'uploads/20240424132511risotto-alla-milanese.jpg', 'Risotto alla Milanese is a luxurious Italian rice dish infused with saffron, giving it a vibrant yellow hue and a distinctive flavor. With its creamy texture and rich aroma, it\'s a beloved specialty of Milan that showcases the elegance and depth of Italian cuisine.', 110, '2024-04-24', 4, 0, 5),
(35, 'Spaghetti', 'uploads/20240424132549spaghetti.jpg', 'Spaghetti is a versatile Italian pasta made from durum wheat flour, typically served with a variety of sauces such as marinara, Bolognese, or Alfredo. Loved for its simplicity and ability to pair with countless ingredients, spaghetti dishes offer a comforting and satisfying meal for pasta lovers around the world.', 150, '2024-04-24', 4, 0, 5),
(36, 'Tiramisu', 'uploads/20240424132628tiramisu.jpg', 'Beef and tiramisu make for an unusual culinary combination, with beef representing a savory main course and tiramisu a classic Italian dessert. While they may not traditionally be served together, both dishes showcase the diverse range of flavors found in global cuisine.', 100, '2024-04-24', 4, 0, 5),
(37, 'Beef and Broccoli', 'uploads/20240424132822beefandbroccoli.jpg', 'Beef and broccoli is a classic Chinese-American dish featuring tender slices of beef and crisp broccoli florets stir-fried in a savory brown sauce. With its simple yet satisfying flavors and nutritious ingredients, it\'s a beloved choice for both home cooking and dining out at Chinese restaurants.', 240, '2024-04-24', 5, 0, 5),
(38, 'Chow Mein', 'uploads/20240424132909Chow-Mein.png', 'Chow mein is a popular Chinese dish consisting of stir-fried noodles, often combined with vegetables, meat, and a savory sauce. Known for its crispy texture and flavorful combination of ingredients, it\'s a satisfying choice on Chinese restaurant menus and a favorite takeout option.', 100, '2024-04-24', 5, 0, 5),
(39, 'Fried Rice', 'uploads/20240424132939fried-rice.jpg', 'Fried rice is a versatile dish in Asian cuisine made by stir-frying cooked rice with various ingredients like vegetables, meat, and eggs. With its savory flavors, customizable ingredients, and ability to turn leftovers into a delicious meal, it\'s a beloved comfort food enjoyed worldwide.', 200, '2024-04-24', 5, 0, 5),
(40, 'Honey Walnut Shrimp', 'uploads/20240424133024Honey-Walnut-Shrimp.jpg', 'Honey walnut shrimp is a delectable Chinese-American dish featuring crispy shrimp coated in a creamy, sweet, and slightly tangy sauce, garnished with candied walnuts. The combination of succulent shrimp, crunchy walnuts, and luscious sauce creates a harmonious blend of flavors and textures that\'s a favorite among seafood lovers.', 100, '2024-04-24', 5, 0, 5),
(41, 'Kung Pao Chicken', 'uploads/20240424133103kung-pao-chicken.jpg', 'Kung Pao chicken is a flavorful Sichuan dish characterized by tender chicken, peanuts, and vegetables stir-fried in a spicy and tangy sauce. Known for its balance of heat, sweetness, and crunchiness, it\'s a beloved staple of Chinese cuisine both in China and abroad.', 100, '2024-04-24', 5, 0, 5),
(42, 'Leamon Chicken', 'uploads/20240424133139Lemon-Chicken.jpg', 'Lemon chicken is a popular dish in Chinese cuisine, featuring tender chicken pieces coated in a tangy and citrusy lemon sauce. With its bright flavors and crispy exterior, it\'s a refreshing and satisfying choice on any Chinese restaurant menu.', 130, '2024-04-24', 5, 0, 5),
(43, 'Spring Roll', 'uploads/20240424133223spring-roll.jpg', 'Sweet spring rolls are a delightful Asian dessert, typically filled with a mixture of fruits like banana, mango, or jackfruit, and sometimes sweet beans or nuts, then wrapped in a thin pastry wrapper and deep-fried until golden and crispy.', 100, '2024-04-24', 5, 0, 5),
(44, 'Sweet and Sour Pork', 'uploads/20240424133325Sweet-and-Sour-Pork-.jpg', 'Sweet and sour pork is a classic Chinese dish featuring crispy battered pork pieces tossed in a vibrant sauce made from sugar, vinegar, and various seasonings. With its combination of tangy sweetness and savory pork, it\'s a favorite on Chinese restaurant menus around the world.', 100, '2024-04-24', 5, 0, 5),
(45, 'Tso Chicken', 'uploads/20240424133357tso-chicken.jpg', 'General Tso\'s chicken is a popular Chinese-American dish known for its crispy chicken pieces coated in a sweet and tangy sauce. It\'s often served with steamed broccoli or rice, offering a delicious balance of flavors and textures that has become a favorite in many Westernized Chinese restaurants.', 180, '2024-04-24', 5, 0, 5),
(46, 'Chawanmushi', 'uploads/20240424133525Chawanmushi.jpg', 'Chawanmushi is a delicate Japanese egg custard dish steamed to perfection in a small cup or bowl. Filled with various ingredients such as shrimp, chicken, mushrooms, and ginkgo nuts, each spoonful offers a harmonious blend of flavors and textures, making it a beloved appetizer or side dish in Japanese cuisine.', 100, '2024-04-24', 6, 0, 5),
(47, 'Donburi', 'uploads/20240424133606donburi.webp', 'Donburi is a mouthwatering dish that combines the comforting flavors of ramen with the convenience of donburi, or Japanese rice bowls. It typically features a serving of ramen noodles topped with savory broth, tender slices of meat, vegetables, and a soft-boiled egg, all served over a bed of steamed rice for a hearty and satisfying meal.', 100, '2024-04-24', 6, 0, 5),
(48, 'Miso Soup', 'uploads/20240424133633MisoSoup.jpg', 'Miso soup is a delightful variation of the classic miso soup, enhanced with the addition of ramen noodles. The rich umami flavor of miso combines with the comforting presence of noodles, creating a warming and satisfying dish perfect for chilly days or whenever a hearty meal is desired.', 120, '2024-04-24', 6, 0, 5),
(49, 'Onigiri', 'uploads/20240424133704onigiri.jpg', 'onigiri is a creative fusion dish that combines the flavors of ramen with the convenience of onigiri, or Japanese rice balls. It typically features cooked ramen noodles encased in a layer of seasoned rice, offering a portable and delicious twist on both traditional dishes.', 100, '2024-04-24', 6, 0, 6),
(50, 'Ramen Noodles', 'uploads/20240424133735ramen-noodles.jpg', 'Ramen noodles are a staple of Japanese cuisine, featuring wheat noodles served in a flavorful broth, often accompanied by various toppings like sliced pork, green onions, and boiled eggs. Whether enjoyed in a cozy ramen shop or prepared at home, they offer a comforting and satisfying meal loved by many around the world.', 100, '2024-04-24', 6, 0, 5),
(51, 'Shrimp Tempura', 'uploads/20240424133809Shrimp-Tempura.png', 'Shrimp tempura is a popular Japanese dish consisting of large shrimp coated in a light batter and deep-fried until crispy and golden. Served alongside dipping sauce and often accompanied by vegetables, it offers a delightful contrast of crunchy exterior and tender, juicy shrimp inside.', 100, '2024-04-24', 6, 0, 5),
(52, 'Takoyaki', 'uploads/20240424133845takoyaki.jpg', 'Takoyaki is a delightful Japanese snack made from batter filled with octopus pieces, cooked in special round molds until golden brown. These savory balls are then topped with a savory sauce, mayonnaise, bonito flakes, and seaweed flakes, creating a mouthwatering combination of flavors and textures.', 100, '2024-04-24', 6, 0, 5),
(53, 'Tonkatsu', 'uploads/20240424133918tonkatsu.jpg', 'Tonkatsu is a classic Japanese dish featuring breaded and deep-fried pork cutlets, often served with shredded cabbage, rice, and a tangy tonkatsu sauce. Its crispy exterior and tender meat inside make it a beloved comfort food in Japan and worldwide.', 110, '2024-04-24', 6, 0, 0),
(54, 'Yakitori', 'uploads/20240424133954yakitori.jpg', 'Yakitori is a delicious Japanese dish consisting of skewered and grilled chicken pieces, typically seasoned with salt or a sweet soy sauce glaze. It\'s a popular choice in izakayas (Japanese pubs) and street food stalls, loved for its savory flavor and juicy texture.', 150, '2024-04-24', 6, 0, 5);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `home_cart`
--
ALTER TABLE `home_cart`
  ADD PRIMARY KEY (`id`),
  ADD KEY `home_cart_product_id_a7545c4e_fk_home_product_id` (`product_id`),
  ADD KEY `home_cart_user_id_5795e126_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `home_category`
--
ALTER TABLE `home_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `home_product`
--
ALTER TABLE `home_product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `home_product_category_id_0dc673e8_fk_home_category_id` (`category_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=153;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `home_cart`
--
ALTER TABLE `home_cart`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `home_category`
--
ALTER TABLE `home_category`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `home_product`
--
ALTER TABLE `home_product`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `home_cart`
--
ALTER TABLE `home_cart`
  ADD CONSTRAINT `home_cart_product_id_a7545c4e_fk_home_product_id` FOREIGN KEY (`product_id`) REFERENCES `home_product` (`id`),
  ADD CONSTRAINT `home_cart_user_id_5795e126_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `home_product`
--
ALTER TABLE `home_product`
  ADD CONSTRAINT `home_product_category_id_0dc673e8_fk_home_category_id` FOREIGN KEY (`category_id`) REFERENCES `home_category` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
