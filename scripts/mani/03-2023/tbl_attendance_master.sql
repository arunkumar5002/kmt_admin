-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 25, 2023 at 05:04 PM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.2.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
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
-- Table structure for table `tbl_attendance_master`
--

CREATE TABLE `tbl_attendance_master` (
  `id` int(11) NOT NULL,
  `attend_date` date DEFAULT NULL,
  `attend_emp_id` varchar(150) DEFAULT NULL,
  `attend_shift` varchar(120) DEFAULT NULL,
  `attend_in_time` varchar(120) DEFAULT NULL,
  `attend_out_time` varchar(120) DEFAULT NULL,
  `attend_over_time` varchar(120) DEFAULT NULL,
  `attend_total_hours` varchar(120) DEFAULT NULL,
  `attend_status` varchar(120) DEFAULT NULL,
  `attend_notes` varchar(120) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `attend_import_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_attendance_master`
--
ALTER TABLE `tbl_attendance_master`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_attendance_master`
--
ALTER TABLE `tbl_attendance_master`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
