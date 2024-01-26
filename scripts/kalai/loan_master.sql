-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 04, 2023 at 10:47 AM
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
-- Table structure for table `loan_master`
--

CREATE TABLE `loan_master` (
  `id` int(20) NOT NULL,
  `employee_id` varchar(255) DEFAULT NULL,
  `monthly_salery` varchar(255) DEFAULT NULL,
  `date_of_request` varchar(255) DEFAULT NULL,
  `loan_amount` varchar(255) DEFAULT NULL,
  `installment_month` varchar(200) DEFAULT NULL,
  `emi` varchar(256) DEFAULT NULL,
  `accounts_feedback` varchar(255) DEFAULT NULL,
  `previous_loan_date` varchar(255) DEFAULT NULL,
  `loan_status` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `loan_master`
--

INSERT INTO `loan_master` (`id`, `employee_id`, `monthly_salery`, `date_of_request`, `loan_amount`, `installment_month`, `emi`, `accounts_feedback`, `previous_loan_date`, `loan_status`, `created_at`, `updated_at`) VALUES
(7, '1', '300', '2023-04-12', '100000', NULL, '4000', 'wthu', NULL, 'Active', '2023-04-01 08:55:19.000000', NULL),
(9, '1', '10000', '2023-04-14', '3000', NULL, '231', '5000', '2023-04-12', 'Active', '2023-04-03 09:58:33.000000', '2023-04-03 12:50:05.000000'),
(12, '3', '300', '2023-04-01', '20000', NULL, '909', '20000', '', 'Active', '2023-04-03 02:35:11.000000', '2023-04-04 07:17:07.000000');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `loan_master`
--
ALTER TABLE `loan_master`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `loan_master`
--
ALTER TABLE `loan_master`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
