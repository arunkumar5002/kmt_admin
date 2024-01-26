-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 20, 2023 at 06:59 AM
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
-- Table structure for table `tbl_vat_master`
--

CREATE TABLE `tbl_vat_master` (
  `id` int(20) NOT NULL,
  `vat_code` varchar(256) DEFAULT NULL,
  `description` varchar(256) DEFAULT NULL,
  `percentage` varchar(256) DEFAULT NULL,
  `vat_status` varchar(256) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_vat_master`
--

INSERT INTO `tbl_vat_master` (`id`, `vat_code`, `description`, `percentage`, `vat_status`, `created_at`, `updated_at`) VALUES
(2, '4144', 'hgvhgv34656565', '22', 'Active', '2023-04-06 08:07:22.000000', '2023-04-06 08:08:02.000000'),
(3, '43223423', 'gnhhcnbvn', '44', 'Active', '2023-04-19 01:16:02.000000', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_vat_master`
--
ALTER TABLE `tbl_vat_master`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_vat_master`
--
ALTER TABLE `tbl_vat_master`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
