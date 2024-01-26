-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 17, 2023 at 04:01 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ilium`
--

-- --------------------------------------------------------

--
-- Table structure for table `user_role`
--

CREATE TABLE `user_role` (
  `id` int(11) NOT NULL,
  `user_id` varchar(256) DEFAULT NULL,
  `menu_name` varchar(256) DEFAULT NULL,
  `menu_permission_add` int(11) DEFAULT NULL COMMENT '0-no\r\n1-yes',
  `menu_permission_edit` int(11) DEFAULT NULL COMMENT '0-no\r\n1-yes',
  `menu_permission_delete` int(11) DEFAULT NULL COMMENT '0-no\r\n1-yes',
  `menu_permission_view` int(11) DEFAULT NULL COMMENT '0-no\r\n1-yes',
  `menu_permission_download` int(11) DEFAULT NULL COMMENT '0-no\r\n1-yes',
  `created_at` tinyint(6) DEFAULT NULL,
  `created_by` tinyint(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_role`
--

INSERT INTO `user_role` (`id`, `user_id`, `menu_name`, `menu_permission_add`, `menu_permission_edit`, `menu_permission_delete`, `menu_permission_view`, `menu_permission_download`, `created_at`, `created_by`) VALUES
(1, '5', 'HR', 1, 1, 1, 1, 1, NULL, NULL),
(2, '5', 'Configuration', 0, 0, 0, 0, 0, NULL, NULL),
(3, '5', 'Finance', 0, 0, 0, 0, 0, NULL, NULL),
(4, '5', 'Bank Reconcilliation', 0, 0, 1, 0, 0, NULL, NULL),
(5, '5', 'Inventory Master', 0, 0, 1, 0, 0, NULL, NULL),
(6, '5', 'Aging Schedule', 0, 1, 0, 0, 0, NULL, NULL),
(7, '5', 'Purchase', 0, 0, 1, 0, 0, NULL, NULL),
(8, '5', 'Sales', 0, 0, 0, 0, 1, NULL, NULL),
(9, '5', 'Reports', 0, 0, 0, 0, 0, NULL, NULL),
(10, '5', 'Logistics', 1, 0, 0, 0, 0, NULL, NULL),
(11, '5', 'Users Access', 0, 0, 0, 0, 0, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `user_role`
--
ALTER TABLE `user_role`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `user_role`
--
ALTER TABLE `user_role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
