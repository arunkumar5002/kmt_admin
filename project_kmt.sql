-- phpMyAdmin SQL Dump
-- version 4.9.11
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jan 25, 2024 at 02:34 PM
-- Server version: 8.0.35-0ubuntu0.22.04.1
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project_kmt`
--

-- --------------------------------------------------------

--
-- Table structure for table `company`
--

CREATE TABLE `company` (
  `company_id` int NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `landline` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `mobile` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `building_number` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `street_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `locality` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `pincode` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `logo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `website` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `default_company` tinyint(1) NOT NULL DEFAULT '1',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_by` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `company`
--

INSERT INTO `company` (`company_id`, `name`, `email`, `landline`, `mobile`, `building_number`, `street_name`, `locality`, `pincode`, `logo`, `website`, `default_company`, `status`, `created_by`, `created_at`, `updated_by`, `updated_at`) VALUES
(1, 'ilium', 'ilium@gmail.com', '0416-222000', '6812856652', 'no.54', 'indra nagar', 'bahrain', '632006', '7543836411679568693.jpg', 'www.ilium.in', 1, 1, NULL, NULL, NULL, NULL),
(2, 'Addobyte', 'email', '04498989898', '7708813913', '12', 'Test', 'test', '600026', '8120162311679385145.png', 'www.addobyte.com', 1, 0, NULL, NULL, NULL, NULL),
(3, 'Test', 'email', '1234488990', '9000000998', '12', 'test', 'test', 'test', '1606333591679548730.png', 'www.addobyte.com', 1, 0, NULL, NULL, NULL, NULL),
(4, 'ilium', 'test@gmail.com', '0416-2685655', '9455454544', '58', 'indra nagar', 'chennai', '689656', '1634239471679568866.jpg', 'http://www.google.com/', 1, 0, NULL, NULL, NULL, NULL),
(5, 'Test1', 'test1@gmail.com', '7708813913', '8899889988', '22', 'tets', 'tets', '600026', '2940802281680684130.png', 'test.com', 1, 1, NULL, NULL, NULL, NULL),
(6, 'ilium composites', 'ilium@gmail.com', '9736858845', '97355668', '14', 'Road 1518', 'Block 115', '115', '16181150791680758500.jpg', 'www.iliium.com', 1, 1, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `employee_id` int NOT NULL,
  `company_id` int DEFAULT NULL,
  `emp_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `employeename` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `username` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `contract_type` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `employee_status` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `department` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `designation` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `mobile` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `emergency_mobile_no` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `birthdate` date DEFAULT NULL,
  `gender` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `employedDate` date DEFAULT NULL,
  `resignedDate` date DEFAULT NULL,
  `address` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `spousename` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `profile_image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `passport_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `passport_number` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `passport_issue_date` date DEFAULT NULL,
  `passport_expiry_date` date DEFAULT NULL,
  `passport_issue_place` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `passport_file` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `rp_number` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `rp_issue_date` date DEFAULT NULL,
  `rp_expiry_date` date DEFAULT NULL,
  `rp_file` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `crp_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `crp_number` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `crp_issue_date` date DEFAULT NULL,
  `crp_expiry_date` date DEFAULT NULL,
  `bank_account_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `bank_iban` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `bank_swift_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `basic_salary` decimal(10,2) DEFAULT NULL,
  `other_allowance` decimal(10,2) DEFAULT NULL,
  `sio` decimal(10,2) DEFAULT NULL,
  `lmra_fee` decimal(10,2) DEFAULT NULL,
  `status` tinyint(1) DEFAULT '1',
  `created_by` int DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`employee_id`, `company_id`, `emp_id`, `employeename`, `username`, `password`, `contract_type`, `employee_status`, `department`, `designation`, `mobile`, `emergency_mobile_no`, `email`, `birthdate`, `gender`, `employedDate`, `resignedDate`, `address`, `spousename`, `profile_image`, `passport_name`, `passport_number`, `passport_issue_date`, `passport_expiry_date`, `passport_issue_place`, `passport_file`, `rp_number`, `rp_issue_date`, `rp_expiry_date`, `rp_file`, `crp_name`, `crp_number`, `crp_issue_date`, `crp_expiry_date`, `bank_account_name`, `bank_iban`, `bank_swift_code`, `basic_salary`, `other_allowance`, `sio`, `lmra_fee`, `status`, `created_by`, `created_at`, `updated_by`, `updated_at`) VALUES
(6, NULL, '1', 'Colin Locke', 'tester', 'tester', '', 'Local', '13', '12', '9685745849', '5421546845', 'ColinLocke@gmail.com', '1999-09-27', 'Male', '2014-09-27', NULL, 'bahrain', 'colin', '174721552616793157081_(1)342092814_20230415084324.jpg', 'Colin Locke', '550X50X550', '2022-07-08', '2032-07-05', 'bahrain', 'experience_certificate_template_luxury_elegant_curves_calligraphy_stamp_decor_69219012036497446_20230415084451.jpg', '3726914', '2022-06-22', '2024-09-27', 'experience_certificate_template_luxury_elegant_curves_calligraphy_stamp_decor_6921901674028100_20230415084535.jpg', 'Colin Locke', '780948840', '1970-01-01', '2025-07-17', 'Colin Locke', '956465884585', '65468iug', '500.00', '300.00', '52.00', '44.00', 1, NULL, NULL, 1, '2023-04-26 07:21:19'),
(7, NULL, '3', 'Sandeep K', 'tester', '', '', 'Local', '12', '14', '9685745845', '96584578548', 'Sandeep@gmail.com', '1970-01-01', 'Male', '2017-02-06', NULL, 'bahrain', 'sandeep', '18564396451680583979.jpg', 'Sandeep K', 'R8310090', '2017-08-23', '2027-08-22', 'bahrain', '209360424116799874661.jpg', '4239187', '2023-01-11', '2025-02-05', 'experience_certificate_template_luxury_elegant_curves_calligraphy_stamp_decor_69219011572327791_20230415090910.jpg', 'Sandeep K', '841159548', '1970-01-01', '2027-07-03', 'Sandeep K', '42647356756735674236', 'GFEWDF345345DSF', '600.00', '500.00', '50.00', '20.00', 1, NULL, NULL, 1, '2023-04-26 06:34:14'),
(8, NULL, '4', 'Manal S. Husain ', '', NULL, 'PartTime', 'Local', '', '', '8574965845', '3452364545', 'Husain@gmail.com', '2018-12-01', 'M', '2018-06-24', NULL, '', '', '18564396451680583979.jpg', 'Manal S. Husain ', '325476452', '2021-03-01', '2023-09-01', 'bharain\n', '107273430516799957501.jpg', '34326347', '2022-04-01', '2025-04-11', '107273430516799957502.jpg', 'Manal S. Husain ', '\n53436545', '2023-01-09', '2023-06-22', 'IBAN BANK', '21354325645654', '\nEG45TREG43', '600.00', '200.00', '40.00', '60.00', 0, NULL, NULL, NULL, NULL),
(9, NULL, '5', 'Luma Majed Aljishi', '', NULL, 'PartTime', 'Local', '', '', '+973 9874 9630', '+973 8520 7412', 'Aljishi@gmail.com', '1986-06-05', 'F', '2011-04-03', NULL, 'bahrain', 'alijishi', '15389043741680607328.jpg', 'Luma Majed Aljishi', 'J2987456', '2023-04-05', '2024-09-21', 'bahrain\n', '153890437416806073281.jpg', '985452', '2023-04-05', '2021-10-06', '153890437416806073282.jpg', 'E01', '\n98565', '2022-04-06', '2024-05-01', '85745842', '0253641', '\n2323', '4.00', '50.00', '950.00', '600.00', 1, NULL, NULL, NULL, NULL),
(10, NULL, '6', 'Jacques Francois Daniel Paque', '', NULL, 'PartTime', 'Local', '', '', '+973 9874 6352', '+973 8521 7896', 'Jacques@gmail.com', '1983-08-04', 'M', '2010-08-16', NULL, 'bahrain', 'sana khan', '16645154221680608079.jpg', 'Jacques Francois Daniel Paque', 'J56412302', '2022-06-18', '2024-02-15', 'bahrain\n', '166451542216806080791.jpg', '89755', '2022-04-04', '2024-04-04', '166451542216806080792.jpg', 'E02', '\n874596', '2022-12-05', '2023-08-19', 'Jacques Francois Daniel Paque', '1299123456BH00', '\n0000', '3.00', '0.00', '2020.00', '1235.00', 1, NULL, NULL, NULL, NULL),
(11, NULL, '7', 'Jahir Hussain Vena', 'tester', '', 'Full Time', 'Expat', '14', '13', '+973 8546 9874', '+973 7894 9562', 'Jahir @gmail.com', '1983-06-14', 'Male', '2011-04-03', NULL, 'bahrain', 'jahir', '174721552616793157081_(1)1897499731_20230415090151.jpg', 'Jahir Hussain Vena', 'V8725630', '2022-04-05', '2032-04-04', 'bahrain', 'experience_certificate_template_luxury_elegant_curves_calligraphy_stamp_decor_6921901555397419_20230415090309.jpg', '1467677', '2022-12-04', '2025-02-07', 'experience_certificate_template_luxury_elegant_curves_calligraphy_stamp_decor_6921901452976524_20230415090347.jpg', 'E05', '701240822', '1970-01-01', '2026-02-18', '1299123456BH02', '25441', '2031', '600.00', '0.00', '900.00', '150.00', 1, NULL, NULL, 1, '2023-04-26 06:34:05'),
(15, NULL, '8', 'Jacques Francois Daniel Paque', 'tester', '', 'Full Time', 'Expat', '11', '10', '97356412', '97358742', 'Paque@gmail.com', '1986-04-02', 'Male', '2022-08-19', NULL, 'bahrain', 'jacques', '174721552616793157081_(1)604059878_20230415085654.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '2023-04-06 06:02:42', 1, '2023-04-26 06:33:45'),
(16, NULL, '9', 'Luma Majed Aljishi', 'tester', '', 'Full Time', 'Local', '11', '10', '97354869', '97358742', 'Aljishi@gmail.com', '1985-03-12', 'Female', '2011-04-03', NULL, 'bharain', 'luma', '1616879203504276110200_20230415083043.jpg', 'Luma Majed Aljishi', '550X50X50', '2022-07-08', '2032-07-08', 'Bahrain', '1616879203504227260624_20230415083527.jpg', '3726914', '2022-06-22', '2024-09-27', 'experience_certificate_template_luxury_elegant_curves_calligraphy_stamp_decor_6921901935132215_20230415083621.jpg', 'Luma Majed Aljishi', '701240822', '1970-01-01', '2026-07-18', 'Luma Majed Aljishi', '1299123456BH00', 'NBOBBHBMXXX', '4.00', '0.00', '0.00', '0.00', 1, 1, '2023-04-13 07:09:18', 1, '2023-04-26 06:33:35'),
(17, NULL, '10', 'Manal S. Husain ', '', NULL, 'Part Time', 'Local', '15', '15', '97358643', '97389478', 'Husain@gmail.com', '1987-07-07', 'Male', '2018-06-24', NULL, 'bahrain', 'manal', 'experience_certificate_template_luxury_elegant_curves_calligraphy_stamp_decor_6921901241428479_20230415091257.jpg', 'Manal S. Husain ', 'j8555547775', '2022-03-22', '2032-03-23', 'bahrain', 'experience_certificate_template_luxury_elegant_curves_calligraphy_stamp_decor_6921901956781577_20230415091526.jpg', '9879871', '2021-09-06', '2024-09-06', 'experience_certificate_template_luxury_elegant_curves_calligraphy_stamp_decor_69219011647667363_20230415092006.jpg', 'Manal S. Husain ', '577454', '2021-05-05', '2024-02-10', 'Manal S. Husain ', '225467979', '5254l44', '3.00', '0.00', '300.00', '100.00', 1, 1, '2023-04-15 09:12:57', 1, '2023-04-15 09:22:09'),
(18, NULL, '11', 'Santhosh Thampan', '', NULL, 'Full Time', 'Expat', '12', '16', '97358468', '97395420', 'Santhosh@gmail.com', '1979-01-02', 'Male', '1970-01-01', NULL, 'bahrain', 'thampan', '174721552616793157081_(1)144661737_20230415092834.jpg', 'Santhosh Thampan', 'P5997984', '2017-05-16', '2027-05-15', 'bahrain', 'experience_certificate_template_luxury_elegant_curves_calligraphy_stamp_decor_69219011851172022_20230415093007.jpg', '1858793', '2022-06-26', '2024-08-08', 'experience_certificate_template_luxury_elegant_curves_calligraphy_stamp_decor_6921901676125361_20230415093300.jpg', 'Santhosh Thampan E07', '780514742', '1970-01-01', '2026-02-08', NULL, NULL, NULL, '300.00', '50.00', '325.00', '0.00', 1, 1, '2023-04-15 09:28:34', 1, '2023-04-15 09:38:09'),
(19, NULL, '12', 'Sadam Siraz Miah', '', NULL, 'Full Time', 'Expat', '12', '17', '9735847896', '97358974', 'sadam@gmail.com', '1976-09-25', 'Male', '2013-12-15', NULL, 'bahrain', 'miah', '174721552616793157081_(1)1204111706_20230415094213.jpg', 'Sadam Siraz Miah', 'EE0885271', '2020-01-28', '2025-01-27', 'bahrain', 'experience_certificate_template_luxury_elegant_curves_calligraphy_stamp_decor_69219011903957567_20230415094421.jpg', '3616776', '2023-03-01', '2025-02-13', 'experience_certificate_template_luxury_elegant_curves_calligraphy_stamp_decor_69219011802302229_20230415094624.jpg', 'Sadam Siraz MiahE08', '850252644', '1970-01-01', '2027-10-13', 'Sadam Siraz Miah', '424242441', 'iu5653320', '225.00', '0.00', '225.00', '0.00', 1, 1, '2023-04-15 09:42:13', 1, '2023-04-15 09:50:25'),
(20, NULL, '13', 'Rabin Rahim', '', NULL, 'Full Time', 'Expat', '12', '17', '97358474', '97398741', 'ra@gmail.com', '1979-06-19', 'Male', '2013-12-15', NULL, 'bahrain', 'rahim', 'experience_certificate_template_luxury_elegant_curves_calligraphy_stamp_decor_6921901142733384_20230415095428.jpg', 'Rabin Rahim', 'EG0973878', '2020-10-01', '2025-09-30', 'bahrain', 'experience_certificate_template_luxury_elegant_curves_calligraphy_stamp_decor_6921901683306538_20230415095529.jpg', '3616774', '2023-03-01', '2025-02-13', 'experience_certificate_template_luxury_elegant_curves_calligraphy_stamp_decor_6921901948520522_20230415095610.jpg', 'Rabin RahimE09', '850252644', '1970-01-01', '2027-10-13', 'Rabin Rahim', 'bh53346375', '454xc5235', '225.00', '0.00', '0.00', '100.00', 1, 1, '2023-04-15 09:54:28', 1, '2023-04-15 09:58:14'),
(21, NULL, '14', 'Mahmood Isa', '', NULL, 'Full Time', 'Local', '16', '18', '97329852', '97369853', 'm@gmail.com', '1984-04-24', 'Male', '2018-11-01', NULL, 'bahrain', 'mahmood', '174721552616793157081_(1)608822565_20230415100052.jpg', 'Mahmood Isa', 'R8310090', '2017-08-23', '2027-05-15', 'bahrain', 'experience_certificate_template_luxury_elegant_curves_calligraphy_stamp_decor_6921901163674475_20230415100152.jpg', '756756756', '2022-06-26', '2024-08-08', 'experience_certificate_template_luxury_elegant_curves_calligraphy_stamp_decor_6921901798570178_20230415100338.jpg', 'Mahmood Isa E10', '780514742', '1970-01-01', '2026-02-08', 'Mahmood Isa', '54452454', '010412', '50.00', '0.00', '0.00', '0.00', 1, 1, '2023-04-15 10:00:52', 1, '2023-04-15 10:05:46'),
(22, NULL, '15', 'Husain Ali Hamad', '', NULL, 'Full Time', 'Local', '12', '22', '97386949', '97309153', 'hussain@gmail.com', '1970-01-01', 'Male', '2016-04-03', NULL, 'bahrain', 'husain', '174721552616793157081_(1)65078713_20230415100834.jpg', 'Husain Ali Hamad', 'Z2425468', '2016-05-30', '2026-05-29', 'bahrain', 'experience_certificate_template_luxury_elegant_curves_calligraphy_stamp_decor_6921901402503981_20230415100946.jpg', '56775542', '2023-02-13', '2025-01-29', 'experience_certificate_template_luxury_elegant_curves_calligraphy_stamp_decor_69219011751333778_20230415101029.jpg', 'Husain Ali Hamad', '861375262', '1970-01-01', '2025-03-21', 'Husain Ali Hamad', '455442', '011220', '500.00', '0.00', '0.00', '0.00', 1, 1, '2023-04-15 10:08:34', 1, '2023-04-15 10:12:32'),
(23, NULL, '16', 'Darusi Twaha Hamiss', '', NULL, 'Full Time', 'Expat', '12', '17', '97395897', '97356594', 'darusi@gmail.com', '1986-06-25', 'Male', '2017-06-10', NULL, 'bahrain', 'darusi', '174721552616793157081_(1)1516344154_20230415101612.jpg', 'Darusi Twaha Hamiss', 'A00157757', '2019-10-02', '2029-10-01', 'bahrain', 'experience_certificate_template_luxury_elegant_curves_calligraphy_stamp_decor_6921901642759304_20230415101758.jpg', '5235577', '2022-10-05', '2024-10-08', 'experience_certificate_template_luxury_elegant_curves_calligraphy_stamp_decor_6921901935224943_20230415102637.jpg', 'Darusi Twaha Hamiss', '890634300', '1970-01-01', '2025-09-12', NULL, NULL, NULL, '180.00', '20.00', '0.00', '25.00', 1, 1, '2023-04-15 10:16:12', 1, '2023-04-15 10:28:06'),
(24, NULL, '17', 'Sakil Abadot', '', NULL, 'Full Time', 'Expat', '12', '17', '97358479', '97358479', 'sakil@gmail.com', '1970-01-01', 'Male', '2017-01-12', NULL, 'bahrain', 'abadot', '174721552616793157081_(1)2065926582_20230415103022.jpg', 'Sakil Abadot', 'BX0697750', '2018-11-01', '2023-10-31', 'bahrain', 'experience_certificate_template_luxury_elegant_curves_calligraphy_stamp_decor_69219011667399271_20230415103112.jpg', '4115422', '2022-11-16', '2024-12-04', 'experience_certificate_template_luxury_elegant_curves_calligraphy_stamp_decor_69219011416842118_20230415103156.jpg', 'Sakil Abadot E13', '900193468', '1970-01-01', '1970-01-01', 'Sakil Abadot', '234565765uj', '12442', '200.00', '0.00', '0.00', '0.00', 1, 1, '2023-04-15 10:30:22', 1, '2023-04-15 10:33:41'),
(26, NULL, '19', 'Manu Eliyan', '', NULL, 'Full Time', 'Expat', '12', '17', '97389759', '97398429', 'manu@gmail.com', '1976-12-29', 'Male', '2019-01-02', NULL, 'bahrain', '', '174721552616793157081_(1)788360449_20230415104320.jpg', 'Manu Eliyan', 'N5312548', '2015-12-02', '2025-12-01', 'bahrain', 'experience_certificate_template_luxury_elegant_curves_calligraphy_stamp_decor_6921901202568112_20230415104424.jpg', '4524845', '2023-02-13', '2025-01-29', 'experience_certificate_template_luxury_elegant_curves_calligraphy_stamp_decor_69219011310469460_20230415104458.jpg', 'Manu Eliyan E15', '861375262', '1970-01-01', '2024-03-04', 'Manu Eliyan', '87976542', '1012', '200.00', '0.00', '0.00', '0.00', 1, 1, '2023-04-15 10:43:20', 1, '2023-04-15 10:46:26'),
(27, NULL, '20', 'Albert Lucky', '', NULL, 'Full Time', 'Expat', '12', '17', '97385946', '97398746', 'albert12@gmail.com', '0000-00-00', 'Male', '2020-07-05', NULL, 'bahrain', 'lucky', '174721552616793157081_(1)1329972379_20230415104813.jpg', 'Albert Lucky', 'N5312548', '2015-12-02', '2025-12-01', 'bahrain', 'experience_certificate_template_luxury_elegant_curves_calligraphy_stamp_decor_6921901716207691_20230415104908.jpg', '4524845', '2023-02-13', '2025-01-29', 'experience_certificate_template_luxury_elegant_curves_calligraphy_stamp_decor_69219011154987517_20230415104943.jpg', 'Albert Lucky E16', '861375262', '1970-01-01', '2024-03-04', 'Albert Lucky', '967876554', '2235', '200.00', '200.00', '0.00', '0.00', 1, 1, '2023-04-15 10:48:13', 1, '2023-04-15 10:52:36'),
(28, NULL, '21', 'Yusuf Alnajjar', '', NULL, 'Full Time', 'Local', '12', '20', '97389746', '97302687', 'yusuf@gmail.com', '1976-06-19', 'Male', '2021-07-01', NULL, 'bahrain', 'alnajjar', '174721552616793157081_(1)1893047162_20230415105541.jpg', 'Yusuf Alnajjar', 'BX0697750', '2018-11-01', '2023-10-31', 'bahrain', 'experience_certificate_template_luxury_elegant_curves_calligraphy_stamp_decor_69219011528601837_20230415105635.jpg', '4115422', '2022-11-16', '2024-12-04', 'experience_certificate_template_luxury_elegant_curves_calligraphy_stamp_decor_69219011012581405_20230415105710.jpg', 'Yusuf Alnajjar E17', '900193468', '1970-01-01', '2027-02-15', 'Yusuf Alnajjar', '564452', '2000', '350.00', '0.00', '0.00', '0.00', 1, 1, '2023-04-15 10:55:41', 1, '2023-04-15 10:58:46'),
(29, NULL, '22', 'Khalid Habib', '', NULL, 'Full Time', 'Expat', '12', '21', '97369855', '97398654', 'khalid@gmail.com', '1985-08-05', 'Male', '2021-07-15', NULL, 'bahrain', 'habib', '174721552616793157081_(1)1892983642_20230415110128.jpg', 'Khalid Habib', 'AC6034373', '2019-04-24', '2024-04-22', 'bahrain', 'experience_certificate_template_luxury_elegant_curves_calligraphy_stamp_decor_69219011083181803_20230415110251.jpg', '1671830', '2022-11-16', '2024-12-07', 'experience_certificate_template_luxury_elegant_curves_calligraphy_stamp_decor_69219011485778149_20230415110348.jpg', 'Khalid Habib E18', '761127267', '1970-01-01', '2026-01-14', 'Khalid Habib', '6787365454', '2323', '450.00', '0.00', '0.00', '0.00', 1, 1, '2023-04-15 11:01:28', 1, '2023-04-15 11:05:41'),
(30, NULL, '23', 'Jahan Zaib', '', NULL, 'Full Time', 'Expat', '12', '23', '97369857', '97389756', 'jahan@gmail.com', '1986-05-18', 'Male', '2021-11-03', NULL, 'bahrain', 'azhar', '174721552616793157081_(1)78884931_20230415111408.jpg', 'Jahan Zaib', 'AB5936064', '2019-07-01', '2024-06-29', 'bahrain', 'experience_certificate_template_luxury_elegant_curves_calligraphy_stamp_decor_69219011119254216_20230415111644.jpg', '1569027', '2022-11-16', '2024-12-05', 'experience_certificate_template_luxury_elegant_curves_calligraphy_stamp_decor_6921901562919924_20230415111716.jpg', 'Jahan Zaib', '851228216', '1970-01-01', '1970-01-01', 'Jahan Zaib', '655645452', '00102', '900.00', '0.00', '0.00', '0.00', 1, 1, '2023-04-15 11:14:08', 1, '2023-04-15 11:18:36'),
(31, NULL, '24', 'Shella Mangubat', '', NULL, 'Full Time', 'Expat', '12', '24', '97365444', '973654894', 'shella@gmail.com', '1989-07-06', 'Female', '2022-03-09', NULL, 'bahrain', 'shella', '1616879203504420961766_20230415112433.jpg', 'Shella Mangubat', 'P1088288B', '2019-03-18', '2029-03-17', 'bahrain', 'experience_certificate_template_luxury_elegant_curves_calligraphy_stamp_decor_6921901954695925_20230415112535.jpg', '3787679', '2022-04-04', '2023-04-04', 'experience_certificate_template_luxury_elegant_curves_calligraphy_stamp_decor_6921901520163924_20230415112609.jpg', 'Shella Mangubat', '870588532', '1970-01-01', '2026-03-29', 'Shella Mangubat', '78765637532', '2322', '350.00', '0.00', '0.00', '0.00', 1, 1, '2023-04-15 11:24:33', 1, '2023-04-15 11:28:03'),
(32, NULL, '25', 'Ramesh Pillia', '', NULL, 'Full Time', 'Expat', '12', '17', '97369852', '97398465', 'ramesh@gmail.com', '1989-12-12', 'Male', '2022-04-13', NULL, 'bahrain', 'ramesh', '174721552616793157081_(1)1410376009_20230415113026.jpg', 'Ramesh Pillia', 'U0436538', '2019-09-03', '2029-09-02', 'bahrain', 'experience_certificate_template_luxury_elegant_curves_calligraphy_stamp_decor_6921901272685950_20230415113118.jpg', '3624220', '2022-05-08', '2023-05-08', 'experience_certificate_template_luxury_elegant_curves_calligraphy_stamp_decor_69219011836015391_20230415113155.jpg', 'Ramesh Pillia', '820943215', '1970-01-01', '2027-07-03', 'Ramesh Pillia', '567867867', '2020', '225.00', '0.00', '0.00', '0.00', 1, 1, '2023-04-15 11:30:26', 1, '2023-04-15 11:33:38'),
(34, NULL, '27', 'Vachery Mohamed Aashique ', '', NULL, 'Full Time', 'Expat', '11', '23', '97398656', '97398564', 'Vachery @gmail.com', '1985-04-09', 'Male', '2023-03-01', NULL, 'bahrain', 'Vachery ', '174721552616793157081_(1)604608095_20230415114036.jpg', 'Vachery Mohamed Aashique ', 'Z2425468', '2016-05-30', '2026-05-29', 'bahrain', 'experience_certificate_template_luxury_elegant_curves_calligraphy_stamp_decor_6921901217189031_20230415114118.jpg', '-', '1970-01-01', '1970-01-01', 'experience_certificate_template_luxury_elegant_curves_calligraphy_stamp_decor_69219011632166589_20230415114143.jpg', 'Vachery Mohamed Aashique ', '700523197', '1970-01-01', '2025-05-20', 'Vachery Mohamed Aashique ', '786767325', '0021', '700.00', '0.00', '0.00', '0.00', 1, 1, '2023-04-15 11:40:36', 1, '2023-04-15 11:43:05');

-- --------------------------------------------------------

--
-- Table structure for table `employee_certificate`
--

CREATE TABLE `employee_certificate` (
  `id` int NOT NULL,
  `certificate_emp_id` int DEFAULT NULL,
  `certificate_name` varchar(250) DEFAULT NULL,
  `certificate_image` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `created_by` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `employee_certificate`
--

INSERT INTO `employee_certificate` (`id`, `certificate_emp_id`, `certificate_name`, `certificate_image`, `created_at`, `created_by`) VALUES
(1, 12, 'test', 'points2127335887_20230406075826.PNG', '2023-04-06 07:58:26', 1),
(2, 16, 'ilium', '16168792035041009565111_20230415084114.jpg', '2023-04-15 08:41:14', 1),
(3, 6, 'i lium', 'experience_certificate_template_luxury_elegant_curves_calligraphy_stamp_decor_6921901918641507_20230415084625.jpg', '2023-04-15 08:46:25', 1),
(4, 11, 'ilium', 'experience_certificate_template_luxury_elegant_curves_calligraphy_stamp_decor_6921901399925660_20230415085009.jpg', '2023-04-15 08:50:09', 1),
(5, 7, 'ilium', 'experience_certificate_template_luxury_elegant_curves_calligraphy_stamp_decor_69219011382623017_20230415091014.jpg', '2023-04-15 09:10:14', 1),
(6, 17, 'ilium', 'experience_certificate_template_luxury_elegant_curves_calligraphy_stamp_decor_69219011745632976_20230415092219.jpg', '2023-04-15 09:22:19', 1),
(7, 18, 'ilium', 'experience_certificate_template_luxury_elegant_curves_calligraphy_stamp_decor_69219011647898165_20230415093818.jpg', '2023-04-15 09:38:18', 1),
(8, 19, 'ilium', 'experience_certificate_template_luxury_elegant_curves_calligraphy_stamp_decor_69219011605476448_20230415095111.jpg', '2023-04-15 09:51:11', 1),
(9, 20, 'ilium', 'experience_certificate_template_luxury_elegant_curves_calligraphy_stamp_decor_6921901581508496_20230415095822.jpg', '2023-04-15 09:58:22', 1),
(10, 21, 'ilium', 'experience_certificate_template_luxury_elegant_curves_calligraphy_stamp_decor_6921901508021339_20230415100557.jpg', '2023-04-15 10:05:57', 1),
(11, 22, 'ilium', 'experience_certificate_template_luxury_elegant_curves_calligraphy_stamp_decor_6921901346392073_20230415101241.jpg', '2023-04-15 10:12:41', 1),
(12, 23, 'ilium', 'experience_certificate_template_luxury_elegant_curves_calligraphy_stamp_decor_6921901786295076_20230415102815.jpg', '2023-04-15 10:28:15', 1),
(13, 24, 'ilium', 'experience_certificate_template_luxury_elegant_curves_calligraphy_stamp_decor_69219011072395347_20230415103351.jpg', '2023-04-15 10:33:51', 1),
(14, 25, 'ilium', 'experience_certificate_template_luxury_elegant_curves_calligraphy_stamp_decor_6921901440539162_20230415104053.jpg', '2023-04-15 10:40:53', 1),
(15, 26, 'ilium', 'experience_certificate_template_luxury_elegant_curves_calligraphy_stamp_decor_6921901922265478_20230415104634.jpg', '2023-04-15 10:46:34', 1),
(16, 27, 'ilium', 'experience_certificate_template_luxury_elegant_curves_calligraphy_stamp_decor_69219012132536605_20230415105246.jpg', '2023-04-15 10:52:46', 1),
(17, 28, 'ilium', 'experience_certificate_template_luxury_elegant_curves_calligraphy_stamp_decor_69219011777702994_20230415105856.jpg', '2023-04-15 10:58:56', 1),
(18, 29, 'ilium', 'experience_certificate_template_luxury_elegant_curves_calligraphy_stamp_decor_6921901944633280_20230415110550.jpg', '2023-04-15 11:05:50', 1),
(19, 30, 'ilium', 'experience_certificate_template_luxury_elegant_curves_calligraphy_stamp_decor_6921901831604573_20230415111845.jpg', '2023-04-15 11:18:45', 1),
(20, 31, 'ilium', 'experience_certificate_template_luxury_elegant_curves_calligraphy_stamp_decor_6921901564399021_20230415112812.jpg', '2023-04-15 11:28:12', 1),
(21, 32, 'ilium', 'experience_certificate_template_luxury_elegant_curves_calligraphy_stamp_decor_69219012095222661_20230415113346.jpg', '2023-04-15 11:33:46', 1),
(22, 33, 'ilium', 'experience_certificate_template_luxury_elegant_curves_calligraphy_stamp_decor_69219011267504879_20230415113831.jpg', '2023-04-15 11:38:31', 1),
(23, 34, 'ilium', 'experience_certificate_template_luxury_elegant_curves_calligraphy_stamp_decor_6921901417196573_20230415114312.jpg', '2023-04-15 11:43:12', 1),
(24, 6, 'edu', 'Ilium-Composites661965333_20230509043752.png', '2023-05-09 04:37:52', 1);

-- --------------------------------------------------------

--
-- Table structure for table `loan_master`
--

CREATE TABLE `loan_master` (
  `id` int NOT NULL,
  `employee_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `monthly_salery` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `date_of_request` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `loan_amount` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `loan_balance_amount` int DEFAULT NULL,
  `installment_month` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `emi` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `accounts_feedback` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `previous_loan_date` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `loan_status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `loan_master`
--

INSERT INTO `loan_master` (`id`, `employee_id`, `monthly_salery`, `date_of_request`, `loan_amount`, `loan_balance_amount`, `installment_month`, `emi`, `accounts_feedback`, `previous_loan_date`, `loan_status`, `created_at`, `updated_at`) VALUES
(7, '1', '300', '2023-04-12', '100000', NULL, NULL, '4000', 'wthu', NULL, 'Active', '2023-04-01 08:55:19.000000', NULL),
(9, '1', '10000', '2023-04-14', '3000', NULL, NULL, '231', '5000', '2023-04-12', 'Active', '2023-04-03 09:58:33.000000', '2023-04-03 12:50:05.000000'),
(12, '3', '300', '2023-04-01', '20000', NULL, NULL, '909', '20000', '', 'Active', '2023-04-03 02:35:11.000000', '2023-04-04 07:17:07.000000'),
(16, '6', '500', '05/02/2023', '5000', 5000, '6', '833', 'tester', '04/04/2023', 'Active', '2023-05-02 10:35:56.000000', NULL),
(17, '7', '500', '05/03/2023', '50000', 18000, '12', '4167', 'teser', '', 'Active', '2023-05-02 10:37:13.000000', NULL),
(18, '6', '5000', '05/02/2023', '10000', 9000, '10', '1000', '', '05/02/2023', 'Active', '2023-05-02 12:15:48.000000', NULL),
(19, '32', '5000', '05/03/2023', '500', 500, '2', '250', 'testing', '', 'Active', '2023-05-09 05:12:16.000000', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `loan_payment_history`
--

CREATE TABLE `loan_payment_history` (
  `id` int NOT NULL,
  `payment_loan_id` int DEFAULT NULL,
  `payment_date` date DEFAULT NULL,
  `payment_amount` int DEFAULT NULL,
  `payment_method` varchar(100) DEFAULT NULL,
  `payment_details` text,
  `created_by` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `loan_payment_history`
--

INSERT INTO `loan_payment_history` (`id`, `payment_loan_id`, `payment_date`, `payment_amount`, `payment_method`, `payment_details`, `created_by`) VALUES
(1, 17, '2023-05-05', 1000, 'UPI', 'UPI ID : 89090', 1),
(2, 17, '2023-05-02', 5000, 'Cash', 'jiojoi', 1),
(3, 18, '2023-05-02', 1000, 'Salary Detection', '', 1),
(4, 17, '2023-05-02', 6000, 'Salary Detection', 'salary', 1),
(5, 17, '2023-05-02', 20000, 'Bank Transfer', 'hgh', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_attendance_leave_category`
--

CREATE TABLE `tbl_attendance_leave_category` (
  `id` int NOT NULL,
  `category_name` varchar(250) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `category_value` int DEFAULT NULL,
  `category_type` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `category_status` varchar(250) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_attendance_leave_category`
--

INSERT INTO `tbl_attendance_leave_category` (`id`, `category_name`, `category_value`, `category_type`, `category_status`, `created_at`, `updated_at`) VALUES
(1, 'Sick Leave', 15, NULL, 'Active', '2023-03-21 11:31:41', '2023-04-10 09:29:47'),
(2, 'Casual Leave', 20, '2', 'Active', '2023-03-27 03:02:06', '2023-05-02 10:31:33'),
(5, 'Annual Leave', 30, '1', 'Active', '2023-04-10 09:25:46', '2023-05-02 10:31:25'),
(6, 'Haj Leave', 21, NULL, 'Active', '2023-04-10 09:28:47', NULL),
(7, 'paternity', 4, '1', 'Active', '2023-05-02 12:22:54', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_attendance_master`
--

CREATE TABLE `tbl_attendance_master` (
  `id` int NOT NULL,
  `attend_date` varchar(250) DEFAULT NULL,
  `attend_emp_id` varchar(150) DEFAULT NULL,
  `attend_shift` varchar(120) DEFAULT NULL,
  `attend_in_time` varchar(120) DEFAULT NULL,
  `attend_out_time` varchar(120) DEFAULT NULL,
  `attend_work_hours` varchar(250) DEFAULT NULL,
  `attend_over_time` varchar(120) DEFAULT NULL,
  `attend_total_hours` varchar(120) DEFAULT NULL,
  `attend_status` varchar(120) DEFAULT NULL,
  `attend_notes` varchar(120) DEFAULT NULL,
  `attend_month_year` varchar(250) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `attend_import_by` int DEFAULT NULL,
  `attend_action_status` int NOT NULL COMMENT '0 - No , 1 - Salary Paid , 2 - OT Paid, 3 - Government Paid , 4 - Deduction, 5 - Off Paid',
  `attend_action_by` int DEFAULT NULL,
  `attend_amount` int DEFAULT NULL,
  `attend_leave_category` int DEFAULT NULL,
  `attend_action_notes` text,
  `attend_action_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `tbl_attendance_master`
--

INSERT INTO `tbl_attendance_master` (`id`, `attend_date`, `attend_emp_id`, `attend_shift`, `attend_in_time`, `attend_out_time`, `attend_work_hours`, `attend_over_time`, `attend_total_hours`, `attend_status`, `attend_notes`, `attend_month_year`, `created_at`, `attend_import_by`, `attend_action_status`, `attend_action_by`, `attend_amount`, `attend_leave_category`, `attend_action_notes`, `attend_action_at`) VALUES
(1, '01-Feb-2023', '1', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'February - 2023', '2023-04-17 09:10:47', 1, 0, NULL, NULL, NULL, NULL, NULL),
(2, '01-Feb-2023', '3', 'GS', '05:43', '18:10', '9:01', '1:10', '10:11', 'Present', '', 'February - 2023', '2023-04-17 09:10:47', 1, 1, NULL, NULL, NULL, NULL, NULL),
(3, '01-Feb-2023', '4', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'February - 2023', '2023-04-17 09:10:47', 1, 0, NULL, NULL, NULL, NULL, NULL),
(4, '01-Feb-2023', '5', 'GS', '07:43', '17:06', '9:07', '00:00', '9:07', 'Present', '', 'February - 2023', '2023-04-17 09:10:47', 1, 1, NULL, NULL, NULL, NULL, NULL),
(5, '01-Feb-2023', '6', 'GS', '07:32', '17:04', '9:05', '00:00', '9:05', 'Present', '', 'February - 2023', '2023-04-17 09:10:47', 1, 1, NULL, NULL, NULL, NULL, NULL),
(6, '01-Feb-2023', '7', 'GS', '07:32', '17:04', '9:05', '00:00', '9:05', 'Present', '', 'February - 2023', '2023-04-17 09:10:47', 1, 1, NULL, NULL, NULL, NULL, NULL),
(7, '01-Feb-2023', '8', 'GS', '08:07', '17:06', '8:57', '00:00', '8:57', 'Present', '', 'February - 2023', '2023-04-17 09:10:47', 1, 1, NULL, NULL, NULL, NULL, NULL),
(8, '01-Feb-2023', '9', 'GS', '07:32', '17:04', '9:05', '00:00', '9:05', 'Present', '', 'February - 2023', '2023-04-17 09:10:47', 1, 1, NULL, NULL, NULL, NULL, NULL),
(9, '01-Feb-2023', '10', 'GS', '07:32', '17:04', '9:04', '00:00', '9:04', 'Present', '', 'February - 2023', '2023-04-17 09:10:47', 1, 1, NULL, NULL, NULL, NULL, NULL),
(10, '01-Feb-2023', '11', 'GS', '07:32', '17:04', '9:05', '00:00', '9:05', 'Present', '', 'February - 2023', '2023-04-17 09:10:47', 1, 1, NULL, NULL, NULL, NULL, NULL),
(11, '01-Feb-2023', '14', 'GS', '08:03', '17:04', '9:01', '00:00', '9:01', 'Present', '', 'February - 2023', '2023-04-17 09:10:47', 1, 1, NULL, NULL, NULL, NULL, NULL),
(12, '01-Feb-2023', '15', 'GS', '10:07', '16:36', '6:28', '00:00', '6:28', 'Present', '', 'February - 2023', '2023-04-17 09:10:47', 1, 1, NULL, NULL, NULL, NULL, NULL),
(13, '01-Feb-2023', '16', 'GS', '08:13', '17:02', '8:49', '00:00', '8:49', 'Present', '', 'February - 2023', '2023-04-17 09:10:47', 1, 1, NULL, NULL, NULL, NULL, NULL),
(14, '01-Feb-2023', '17', 'NS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'February - 2023', '2023-04-17 09:10:47', 1, 0, NULL, NULL, NULL, NULL, NULL),
(15, '01-Feb-2023', '18', 'GS', '07:42', '17:08', '9:09', '00:00', '9:09', 'Present', '', 'February - 2023', '2023-04-17 09:10:47', 1, 1, NULL, NULL, NULL, NULL, NULL),
(16, '01-Feb-2023', '19', 'GS', '07:43', '17:11', '9:12', '00:00', '9:12', 'Present', '', 'February - 2023', '2023-04-17 09:10:47', 1, 1, NULL, NULL, NULL, NULL, NULL),
(17, '01-Feb-2023', '20', 'GS', '07:19', '16:17', '8:18', '00:00', '8:18', 'Present', '', 'February - 2023', '2023-04-17 09:10:47', 1, 1, NULL, NULL, NULL, NULL, NULL),
(18, '01-Feb-2023', '21', 'GS', '07:32', '17:05', '9:06', '00:00', '9:06', 'Present', '', 'February - 2023', '2023-04-17 09:10:47', 1, 1, NULL, NULL, NULL, NULL, NULL),
(19, '01-Feb-2023', '22', 'GS', '08:06', '13:48', '5:42', '00:00', '5:42', 'Present', '', 'February - 2023', '2023-04-17 09:10:47', 1, 1, NULL, NULL, NULL, NULL, NULL),
(20, '01-Feb-2023', '23', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'February - 2023', '2023-04-17 09:10:47', 1, 0, NULL, NULL, NULL, NULL, NULL),
(21, '01-Feb-2023', '24', 'Sam', '01:06', '21:06', '00:01', '19:59', '20:00', 'Absent', '', 'February - 2023', '2023-04-17 09:10:47', 1, 0, NULL, NULL, NULL, NULL, NULL),
(22, '01-Feb-2023', '26', 'GS', '07:32', '17:04', '9:05', '00:00', '9:05', 'Present', '', 'February - 2023', '2023-04-17 09:10:47', 1, 1, NULL, NULL, NULL, NULL, NULL),
(23, '01-Feb-2023', '28', 'GS', '07:32', '17:04', '9:05', '00:00', '9:05', 'Present', '', 'February - 2023', '2023-04-17 09:10:47', 1, 1, NULL, NULL, NULL, NULL, NULL),
(24, '01-Feb-2023', '30', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'February - 2023', '2023-04-17 09:10:47', 1, 0, NULL, NULL, NULL, NULL, NULL),
(25, '01-Feb-2023', '33', 'GS', '14:51', '16:24', '1:29', '00:00', '1:29', 'Absent', '', 'February - 2023', '2023-04-17 09:10:47', 1, 0, NULL, NULL, NULL, NULL, NULL),
(26, '01-Feb-2023', '34', 'NS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'February - 2023', '2023-04-17 09:10:47', 1, 0, NULL, NULL, NULL, NULL, NULL),
(27, '01-Feb-2023', '35', 'NS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'February - 2023', '2023-04-17 09:10:47', 1, 0, NULL, NULL, NULL, NULL, NULL),
(28, '01-Feb-2023', '36', 'NS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'February - 2023', '2023-04-17 09:10:47', 1, 0, NULL, NULL, NULL, NULL, NULL),
(29, '01-Feb-2023', '', '', '', '', '', '', '', '', '', 'February - 2023', '2023-04-17 09:10:47', 1, 0, NULL, NULL, NULL, NULL, NULL),
(30, '02-Feb-2023', '1', 'GS', '08:01', '', '00:00', '00:00', '00:00', 'Absent (No OutPunch)', '', 'February - 2023', '2023-04-17 09:10:47', 1, 0, NULL, NULL, NULL, NULL, NULL),
(31, '02-Feb-2023', '3', 'GS', '05:42', '17:28', '9:29', '00:00', '9:29', 'Present', '', 'February - 2023', '2023-04-17 09:10:47', 1, 1, NULL, NULL, NULL, NULL, NULL),
(32, '02-Feb-2023', '4', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'February - 2023', '2023-04-17 09:10:47', 1, 0, NULL, NULL, NULL, NULL, NULL),
(33, '02-Feb-2023', '5', 'GS', '07:26', '17:05', '9:05', '00:00', '9:05', 'Present', '', 'February - 2023', '2023-04-17 09:10:47', 1, 1, NULL, NULL, NULL, NULL, NULL),
(34, '02-Feb-2023', '6', 'GS', '07:33', '17:05', '9:06', '00:00', '9:06', 'Present', '', 'February - 2023', '2023-04-17 09:10:47', 1, 1, NULL, NULL, NULL, NULL, NULL),
(35, '02-Feb-2023', '7', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'February - 2023', '2023-04-17 09:10:47', 1, 0, NULL, NULL, NULL, NULL, NULL),
(36, '02-Feb-2023', '8', 'GS', '08:10', '15:32', '7:22', '00:00', '7:22', 'Present', '', 'February - 2023', '2023-04-17 09:10:47', 1, 1, NULL, NULL, NULL, NULL, NULL),
(37, '02-Feb-2023', '9', 'GS', '07:33', '17:05', '9:06', '00:00', '9:06', 'Present', '', 'February - 2023', '2023-04-17 09:10:47', 1, 1, NULL, NULL, NULL, NULL, NULL),
(38, '02-Feb-2023', '10', 'GS', '07:33', '17:05', '9:06', '00:00', '9:06', 'Present', '', 'February - 2023', '2023-04-17 09:10:47', 1, 1, NULL, NULL, NULL, NULL, NULL),
(39, '02-Feb-2023', '11', 'GS', '07:33', '17:03', '9:04', '00:00', '9:04', 'Present', '', 'February - 2023', '2023-04-17 09:10:47', 1, 1, NULL, NULL, NULL, NULL, NULL),
(40, '02-Feb-2023', '14', 'GS', '07:45', '17:21', '9:22', '00:00', '9:22', 'Present', '', 'February - 2023', '2023-04-17 09:10:47', 1, 1, NULL, NULL, NULL, NULL, NULL),
(41, '02-Feb-2023', '15', 'GS', '08:21', '16:51', '8:30', '00:00', '8:30', 'Present', '', 'February - 2023', '2023-04-17 09:10:47', 1, 1, NULL, NULL, NULL, NULL, NULL),
(42, '02-Feb-2023', '16', 'GS', '09:53', '16:52', '6:59', '00:00', '6:59', 'Present', '', 'February - 2023', '2023-04-17 09:10:47', 1, 1, NULL, NULL, NULL, NULL, NULL),
(43, '02-Feb-2023', '17', 'NS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'February - 2023', '2023-04-17 09:10:47', 1, 0, NULL, NULL, NULL, NULL, NULL),
(44, '02-Feb-2023', '18', 'GS', '07:26', '17:11', '9:12', '00:00', '9:12', 'Present', '', 'February - 2023', '2023-04-17 09:10:47', 1, 1, NULL, NULL, NULL, NULL, NULL),
(45, '02-Feb-2023', '19', 'GS', '07:26', '17:10', '9:11', '00:00', '9:11', 'Present', '', 'February - 2023', '2023-04-17 09:10:47', 1, 1, NULL, NULL, NULL, NULL, NULL),
(46, '02-Feb-2023', '20', 'GS', '06:23', '08:38', '00:39', '00:00', '00:39', 'Absent', '', 'February - 2023', '2023-04-17 09:10:47', 1, 0, NULL, NULL, NULL, NULL, NULL),
(47, '02-Feb-2023', '21', 'GS', '07:33', '17:03', '9:04', '00:00', '9:04', 'Present', '', 'February - 2023', '2023-04-17 09:10:47', 1, 1, NULL, NULL, NULL, NULL, NULL),
(48, '02-Feb-2023', '22', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'February - 2023', '2023-04-17 09:10:47', 1, 0, NULL, NULL, NULL, NULL, NULL),
(49, '02-Feb-2023', '23', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'February - 2023', '2023-04-17 09:10:47', 1, 0, NULL, NULL, NULL, NULL, NULL),
(50, '02-Feb-2023', '24', 'Sam', '01:26', '21:08', '00:01', '19:41', '19:42', 'Absent', '', 'February - 2023', '2023-04-17 09:10:47', 1, 0, NULL, NULL, NULL, NULL, NULL),
(51, '02-Feb-2023', '26', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'February - 2023', '2023-04-17 09:10:47', 1, 0, NULL, NULL, NULL, NULL, NULL),
(52, '02-Feb-2023', '28', 'GS', '07:33', '17:02', '9:03', '00:00', '9:03', 'Present', '', 'February - 2023', '2023-04-17 09:10:47', 1, 1, NULL, NULL, NULL, NULL, NULL),
(53, '02-Feb-2023', '30', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'February - 2023', '2023-04-17 09:10:47', 1, 0, NULL, NULL, NULL, NULL, NULL),
(54, '02-Feb-2023', '33', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'February - 2023', '2023-04-17 09:10:47', 1, 0, NULL, NULL, NULL, NULL, NULL),
(55, '02-Feb-2023', '34', 'NS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'February - 2023', '2023-04-17 09:10:47', 1, 0, NULL, NULL, NULL, NULL, NULL),
(56, '02-Feb-2023', '35', 'NS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'February - 2023', '2023-04-17 09:10:47', 1, 0, NULL, NULL, NULL, NULL, NULL),
(57, '02-Feb-2023', '36', 'NS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'February - 2023', '2023-04-17 09:10:47', 1, 0, NULL, NULL, NULL, NULL, NULL),
(58, '02-Feb-2023', '', '', '', '', '', '', '', '', '', 'February - 2023', '2023-04-17 09:10:47', 1, 0, NULL, NULL, NULL, NULL, NULL),
(59, '03-Feb-2023', '1', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'February - 2023', '2023-04-17 09:10:47', 1, 0, NULL, NULL, NULL, NULL, NULL),
(60, '03-Feb-2023', '3', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'February - 2023', '2023-04-17 09:10:47', 1, 0, NULL, NULL, NULL, NULL, NULL),
(61, '03-Feb-2023', '4', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'February - 2023', '2023-04-17 09:10:47', 1, 0, NULL, NULL, NULL, NULL, NULL),
(62, '03-Feb-2023', '5', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'February - 2023', '2023-04-17 09:10:47', 1, 0, NULL, NULL, NULL, NULL, NULL),
(63, '03-Feb-2023', '6', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'February - 2023', '2023-04-17 09:10:47', 1, 0, NULL, NULL, NULL, NULL, NULL),
(64, '03-Feb-2023', '7', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'February - 2023', '2023-04-17 09:10:47', 1, 0, NULL, NULL, NULL, NULL, NULL),
(65, '03-Feb-2023', '8', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'February - 2023', '2023-04-17 09:10:47', 1, 0, NULL, NULL, NULL, NULL, NULL),
(66, '03-Feb-2023', '9', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'February - 2023', '2023-04-17 09:10:47', 1, 0, NULL, NULL, NULL, NULL, NULL),
(67, '03-Feb-2023', '10', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'February - 2023', '2023-04-17 09:10:47', 1, 0, NULL, NULL, NULL, NULL, NULL),
(68, '03-Feb-2023', '11', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'February - 2023', '2023-04-17 09:10:47', 1, 0, NULL, NULL, NULL, NULL, NULL),
(69, '03-Feb-2023', '14', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'February - 2023', '2023-04-17 09:10:47', 1, 0, NULL, NULL, NULL, NULL, NULL),
(70, '03-Feb-2023', '15', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'February - 2023', '2023-04-17 09:10:47', 1, 0, NULL, NULL, NULL, NULL, NULL),
(71, '03-Feb-2023', '16', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'February - 2023', '2023-04-17 09:10:47', 1, 0, NULL, NULL, NULL, NULL, NULL),
(72, '03-Feb-2023', '17', 'NS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'February - 2023', '2023-04-17 09:10:47', 1, 0, NULL, NULL, NULL, NULL, NULL),
(73, '03-Feb-2023', '18', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'February - 2023', '2023-04-17 09:10:47', 1, 0, NULL, NULL, NULL, NULL, NULL),
(74, '03-Feb-2023', '19', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'February - 2023', '2023-04-17 09:10:47', 1, 0, NULL, NULL, NULL, NULL, NULL),
(75, '03-Feb-2023', '20', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'February - 2023', '2023-04-17 09:10:47', 1, 0, NULL, NULL, NULL, NULL, NULL),
(76, '03-Feb-2023', '21', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'February - 2023', '2023-04-17 09:10:47', 1, 0, NULL, NULL, NULL, NULL, NULL),
(77, '03-Feb-2023', '22', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'February - 2023', '2023-04-17 09:10:47', 1, 0, NULL, NULL, NULL, NULL, NULL),
(78, '03-Feb-2023', '23', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'February - 2023', '2023-04-17 09:10:47', 1, 0, NULL, NULL, NULL, NULL, NULL),
(79, '03-Feb-2023', '24', 'Sam', '01:06', '21:05', '00:00', '19:59', '19:59', 'Absent', '', 'February - 2023', '2023-04-17 09:10:47', 1, 0, NULL, NULL, NULL, NULL, NULL),
(80, '03-Feb-2023', '26', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'February - 2023', '2023-04-17 09:10:47', 1, 0, NULL, NULL, NULL, NULL, NULL),
(81, '03-Feb-2023', '28', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'February - 2023', '2023-04-17 09:10:47', 1, 0, NULL, NULL, NULL, NULL, NULL),
(82, '03-Feb-2023', '30', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'February - 2023', '2023-04-17 09:10:47', 1, 0, NULL, NULL, NULL, NULL, NULL),
(83, '03-Feb-2023', '33', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'February - 2023', '2023-04-17 09:10:47', 1, 0, NULL, NULL, NULL, NULL, NULL),
(84, '03-Feb-2023', '34', 'NS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'February - 2023', '2023-04-17 09:10:47', 1, 0, NULL, NULL, NULL, NULL, NULL),
(85, '03-Feb-2023', '35', 'NS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'February - 2023', '2023-04-17 09:10:47', 1, 0, NULL, NULL, NULL, NULL, NULL),
(86, '03-Feb-2023', '36', 'NS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'February - 2023', '2023-04-17 09:10:47', 1, 0, NULL, NULL, NULL, NULL, NULL),
(87, '03-Feb-2023', '', '', '', '', '', '', '', '', '', 'February - 2023', '2023-04-17 09:10:47', 1, 0, NULL, NULL, NULL, NULL, NULL),
(88, '04-Feb-2023', '1', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'February - 2023', '2023-04-17 09:10:47', 1, 0, NULL, NULL, NULL, NULL, NULL),
(89, '04-Feb-2023', '3', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'February - 2023', '2023-04-17 09:10:47', 1, 0, NULL, NULL, NULL, NULL, NULL),
(90, '04-Feb-2023', '4', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'February - 2023', '2023-04-17 09:10:47', 1, 0, NULL, NULL, NULL, NULL, NULL),
(91, '04-Feb-2023', '5', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'February - 2023', '2023-04-17 09:10:47', 1, 0, NULL, NULL, NULL, NULL, NULL),
(92, '04-Feb-2023', '6', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'February - 2023', '2023-04-17 09:10:47', 1, 0, NULL, NULL, NULL, NULL, NULL),
(93, '04-Feb-2023', '7', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'February - 2023', '2023-04-17 09:10:47', 1, 0, NULL, NULL, NULL, NULL, NULL),
(94, '04-Feb-2023', '8', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'February - 2023', '2023-04-17 09:10:47', 1, 0, NULL, NULL, NULL, NULL, NULL),
(95, '04-Feb-2023', '9', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'February - 2023', '2023-04-17 09:10:47', 1, 0, NULL, NULL, NULL, NULL, NULL),
(96, '04-Feb-2023', '10', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'February - 2023', '2023-04-17 09:10:47', 1, 0, NULL, NULL, NULL, NULL, NULL),
(97, '04-Feb-2023', '11', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'February - 2023', '2023-04-17 09:10:47', 1, 0, NULL, NULL, NULL, NULL, NULL),
(98, '04-Feb-2023', '14', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'February - 2023', '2023-04-17 09:10:47', 1, 0, NULL, NULL, NULL, NULL, NULL),
(99, '04-Feb-2023', '15', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'February - 2023', '2023-04-17 09:10:47', 1, 0, NULL, NULL, NULL, NULL, NULL),
(100, '04-Feb-2023', '16', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'February - 2023', '2023-04-17 09:10:47', 1, 0, NULL, NULL, NULL, NULL, NULL),
(101, '04-Feb-2023', '17', 'NS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'February - 2023', '2023-04-17 09:10:47', 1, 0, NULL, NULL, NULL, NULL, NULL),
(102, '04-Feb-2023', '18', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'February - 2023', '2023-04-17 09:10:47', 1, 0, NULL, NULL, NULL, NULL, NULL),
(103, '04-Feb-2023', '19', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'February - 2023', '2023-04-17 09:10:47', 1, 0, NULL, NULL, NULL, NULL, NULL),
(104, '04-Feb-2023', '20', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'February - 2023', '2023-04-17 09:10:47', 1, 0, NULL, NULL, NULL, NULL, NULL),
(105, '04-Feb-2023', '21', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'February - 2023', '2023-04-17 09:10:47', 1, 0, NULL, NULL, NULL, NULL, NULL),
(106, '04-Feb-2023', '22', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'February - 2023', '2023-04-17 09:10:47', 1, 0, NULL, NULL, NULL, NULL, NULL),
(107, '04-Feb-2023', '23', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'February - 2023', '2023-04-17 09:10:47', 1, 0, NULL, NULL, NULL, NULL, NULL),
(108, '04-Feb-2023', '24', 'Sam', '01:03', '21:07', '00:00', '20:04', '20:04', 'WeeklyOff Present', '', 'February - 2023', '2023-04-17 09:10:47', 1, 0, NULL, NULL, NULL, NULL, NULL),
(109, '04-Feb-2023', '26', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'February - 2023', '2023-04-17 09:10:47', 1, 0, NULL, NULL, NULL, NULL, NULL),
(110, '04-Feb-2023', '28', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'February - 2023', '2023-04-17 09:10:47', 1, 0, NULL, NULL, NULL, NULL, NULL),
(111, '04-Feb-2023', '30', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'February - 2023', '2023-04-17 09:10:47', 1, 0, NULL, NULL, NULL, NULL, NULL),
(112, '04-Feb-2023', '33', 'GS', '09:23', '', '00:00', '00:00', '00:00', 'Absent (No OutPunch)', '', 'February - 2023', '2023-04-17 09:10:47', 1, 0, NULL, NULL, NULL, NULL, NULL),
(113, '04-Feb-2023', '34', 'NS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'February - 2023', '2023-04-17 09:10:47', 1, 0, NULL, NULL, NULL, NULL, NULL),
(114, '04-Feb-2023', '35', 'NS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'February - 2023', '2023-04-17 09:10:47', 1, 0, NULL, NULL, NULL, NULL, NULL),
(115, '04-Feb-2023', '36', 'NS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'February - 2023', '2023-04-17 09:10:47', 1, 0, NULL, NULL, NULL, NULL, NULL),
(116, '04-Feb-2023', '', '', '', '', '', '', '', '', '', 'February - 2023', '2023-04-17 09:10:47', 1, 0, NULL, NULL, NULL, NULL, NULL),
(117, '05-Feb-2023', '1', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'February - 2023', '2023-04-17 09:10:47', 1, 0, NULL, NULL, NULL, NULL, NULL),
(118, '05-Feb-2023', '3', 'GS', '05:35', '18:29', '00:00', '12:54', '12:54', 'WeeklyOff Present', '', 'February - 2023', '2023-04-17 09:10:47', 1, 0, NULL, NULL, NULL, NULL, NULL),
(119, '05-Feb-2023', '4', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'February - 2023', '2023-04-17 09:10:47', 1, 0, NULL, NULL, NULL, NULL, NULL),
(120, '05-Feb-2023', '5', 'GS', '07:29', '17:04', '00:00', '9:35', '9:35', 'WeeklyOff Present', '', 'February - 2023', '2023-04-17 09:10:47', 1, 0, NULL, NULL, NULL, NULL, NULL),
(121, '05-Feb-2023', '6', 'GS', '07:32', '17:01', '00:00', '9:29', '9:29', 'WeeklyOff Present', '', 'February - 2023', '2023-04-17 09:10:47', 1, 0, NULL, NULL, NULL, NULL, NULL),
(122, '05-Feb-2023', '7', 'GS', '07:31', '17:03', '00:00', '9:32', '9:32', 'WeeklyOff Present', '', 'February - 2023', '2023-04-17 09:10:47', 1, 0, NULL, NULL, NULL, NULL, NULL),
(123, '05-Feb-2023', '8', 'GS', '08:12', '17:04', '00:00', '8:50', '8:50', 'WeeklyOff Present', '', 'February - 2023', '2023-04-17 09:10:47', 1, 0, NULL, NULL, NULL, NULL, NULL),
(124, '05-Feb-2023', '9', 'GS', '07:32', '17:01', '00:00', '9:29', '9:29', 'WeeklyOff Present', '', 'February - 2023', '2023-04-17 09:10:47', 1, 0, NULL, NULL, NULL, NULL, NULL),
(125, '05-Feb-2023', '10', 'GS', '07:31', '17:04', '00:00', '9:33', '9:33', 'WeeklyOff Present', '', 'February - 2023', '2023-04-17 09:10:47', 1, 0, NULL, NULL, NULL, NULL, NULL),
(126, '05-Feb-2023', '11', 'GS', '07:32', '17:01', '00:00', '9:29', '9:29', 'WeeklyOff Present', '', 'February - 2023', '2023-04-17 09:10:47', 1, 0, NULL, NULL, NULL, NULL, NULL),
(127, '05-Feb-2023', '14', 'GS', '07:48', '16:59', '00:00', '9:11', '9:11', 'WeeklyOff Present', '', 'February - 2023', '2023-04-17 09:10:47', 1, 0, NULL, NULL, NULL, NULL, NULL),
(128, '05-Feb-2023', '15', 'GS', '08:30', '16:57', '00:00', '8:27', '8:27', 'WeeklyOff Present', '', 'February - 2023', '2023-04-17 09:10:47', 1, 0, NULL, NULL, NULL, NULL, NULL),
(129, '05-Feb-2023', '16', 'GS', '08:11', '17:00', '00:00', '8:49', '8:49', 'WeeklyOff Present', '', 'February - 2023', '2023-04-17 09:10:47', 1, 0, NULL, NULL, NULL, NULL, NULL),
(130, '05-Feb-2023', '17', 'GS', '07:29', '17:09', '00:00', '9:40', '9:40', 'WeeklyOff Present', '', 'February - 2023', '2023-04-17 09:10:47', 1, 0, NULL, NULL, NULL, NULL, NULL),
(131, '05-Feb-2023', '18', 'GS', '07:29', '17:04', '00:00', '9:35', '9:35', 'WeeklyOff Present', '', 'February - 2023', '2023-04-17 09:10:47', 1, 0, NULL, NULL, NULL, NULL, NULL),
(132, '05-Feb-2023', '19', 'GS', '11:13', '17:09', '00:00', '5:56', '5:56', 'WeeklyOff Present', '', 'February - 2023', '2023-04-17 09:10:47', 1, 0, NULL, NULL, NULL, NULL, NULL),
(133, '05-Feb-2023', '20', 'GS', '07:10', '17:57', '00:00', '10:47', '10:47', 'WeeklyOff Present', '', 'February - 2023', '2023-04-17 09:10:47', 1, 0, NULL, NULL, NULL, NULL, NULL),
(134, '05-Feb-2023', '21', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'February - 2023', '2023-04-17 09:10:47', 1, 0, NULL, NULL, NULL, NULL, NULL),
(135, '05-Feb-2023', '22', 'GS', '08:05', '13:54', '00:00', '5:49', '5:49', 'WeeklyOff Present', '', 'February - 2023', '2023-04-17 09:10:47', 1, 0, NULL, NULL, NULL, NULL, NULL),
(136, '05-Feb-2023', '23', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'February - 2023', '2023-04-17 09:10:47', 1, 0, NULL, NULL, NULL, NULL, NULL),
(137, '05-Feb-2023', '24', 'Sam', '01:04', '21:20', '00:00', '20:16', '20:16', 'WeeklyOff Present', '', 'February - 2023', '2023-04-17 09:10:47', 1, 0, NULL, NULL, NULL, NULL, NULL),
(138, '05-Feb-2023', '26', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'February - 2023', '2023-04-17 09:10:47', 1, 0, NULL, NULL, NULL, NULL, NULL),
(139, '05-Feb-2023', '28', 'GS', '07:32', '17:01', '00:00', '9:29', '9:29', 'WeeklyOff Present', '', 'February - 2023', '2023-04-17 09:10:47', 1, 0, NULL, NULL, NULL, NULL, NULL),
(140, '05-Feb-2023', '30', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'February - 2023', '2023-04-17 09:10:47', 1, 0, NULL, NULL, NULL, NULL, NULL),
(141, '05-Feb-2023', '33', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'February - 2023', '2023-04-17 09:10:47', 1, 0, NULL, NULL, NULL, NULL, NULL),
(142, '05-Feb-2023', '34', 'NS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'February - 2023', '2023-04-17 09:10:47', 1, 0, NULL, NULL, NULL, NULL, NULL),
(143, '05-Feb-2023', '35', 'NS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'February - 2023', '2023-04-17 09:10:47', 1, 0, NULL, NULL, NULL, NULL, NULL),
(144, '05-Feb-2023', '36', 'NS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'February - 2023', '2023-04-17 09:10:47', 1, 0, NULL, NULL, NULL, NULL, NULL),
(145, '05-Feb-2023', '', '', '', '', '', '', '', '', '', 'February - 2023', '2023-04-17 09:10:47', 1, 0, NULL, NULL, NULL, NULL, NULL),
(146, '06-Feb-2023', '1', 'GS', '08:08', '11:27', '3:19', '00:00', '3:19', '½Present', '', 'February - 2023', '2023-04-17 09:10:47', 1, 0, NULL, NULL, NULL, NULL, NULL),
(147, '06-Feb-2023', '3', 'GS', '05:34', '18:18', '9:01', '1:18', '10:19', 'Present', '', 'February - 2023', '2023-04-17 09:10:47', 1, 1, NULL, NULL, NULL, NULL, NULL),
(148, '06-Feb-2023', '4', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'February - 2023', '2023-04-17 09:10:47', 1, 0, NULL, NULL, NULL, NULL, NULL),
(149, '06-Feb-2023', '5', 'GS', '07:29', '17:04', '9:05', '00:00', '9:05', 'Present', '', 'February - 2023', '2023-04-17 09:10:47', 1, 1, NULL, NULL, NULL, NULL, NULL),
(150, '06-Feb-2023', '6', 'GS', '07:30', '17:01', '9:02', '00:00', '9:02', 'Present', '', 'February - 2023', '2023-04-17 09:10:47', 1, 1, NULL, NULL, NULL, NULL, NULL),
(151, '06-Feb-2023', '7', 'GS', '07:30', '16:59', '9:00', '00:00', '9:00', 'Present', '', 'February - 2023', '2023-04-17 09:10:47', 1, 1, NULL, NULL, NULL, NULL, NULL),
(152, '06-Feb-2023', '8', 'GS', '08:12', '17:06', '8:54', '00:00', '8:54', 'Present', '', 'February - 2023', '2023-04-17 09:10:47', 1, 1, NULL, NULL, NULL, NULL, NULL),
(153, '06-Feb-2023', '9', 'GS', '07:30', '17:00', '9:01', '00:00', '9:01', 'Present', '', 'February - 2023', '2023-04-17 09:10:47', 1, 1, NULL, NULL, NULL, NULL, NULL),
(154, '06-Feb-2023', '10', 'GS', '07:30', '16:59', '9:00', '00:00', '9:00', 'Present', '', 'February - 2023', '2023-04-17 09:10:47', 1, 1, NULL, NULL, NULL, NULL, NULL),
(155, '06-Feb-2023', '11', 'GS', '07:30', '17:03', '9:04', '00:00', '9:04', 'Present', '', 'February - 2023', '2023-04-17 09:10:47', 1, 1, NULL, NULL, NULL, NULL, NULL),
(156, '06-Feb-2023', '14', 'GS', '07:49', '17:11', '9:12', '00:00', '9:12', 'Present', '', 'February - 2023', '2023-04-17 09:10:47', 1, 1, NULL, NULL, NULL, NULL, NULL),
(157, '06-Feb-2023', '15', 'GS', '08:56', '15:53', '6:57', '00:00', '6:57', 'Present', '', 'February - 2023', '2023-04-17 09:10:47', 1, 1, NULL, NULL, NULL, NULL, NULL),
(158, '06-Feb-2023', '16', 'GS', '08:11', '16:59', '8:48', '00:00', '8:48', 'Present', '', 'February - 2023', '2023-04-17 09:10:47', 1, 1, NULL, NULL, NULL, NULL, NULL),
(159, '06-Feb-2023', '17', 'GS', '07:29', '17:13', '9:14', '00:00', '9:14', 'Present', '', 'February - 2023', '2023-04-17 09:10:47', 1, 1, NULL, NULL, NULL, NULL, NULL),
(160, '06-Feb-2023', '18', 'GS', '07:29', '17:03', '9:04', '00:00', '9:04', 'Present', '', 'February - 2023', '2023-04-17 09:10:47', 1, 1, NULL, NULL, NULL, NULL, NULL),
(161, '06-Feb-2023', '19', 'GS', '07:29', '17:11', '9:12', '00:00', '9:12', 'Present', '', 'February - 2023', '2023-04-17 09:10:47', 1, 1, NULL, NULL, NULL, NULL, NULL),
(162, '06-Feb-2023', '20', 'GS', '07:11', '17:04', '9:04', '00:00', '9:04', 'Present', '', 'February - 2023', '2023-04-17 09:10:47', 1, 1, NULL, NULL, NULL, NULL, NULL),
(163, '06-Feb-2023', '21', 'GS', '07:30', '17:01', '9:02', '00:00', '9:02', 'Present', '', 'February - 2023', '2023-04-17 09:10:47', 1, 1, NULL, NULL, NULL, NULL, NULL),
(164, '06-Feb-2023', '22', 'GS', '08:12', '13:54', '5:42', '00:00', '5:42', 'Present', '', 'February - 2023', '2023-04-17 09:10:47', 1, 1, NULL, NULL, NULL, NULL, NULL),
(165, '06-Feb-2023', '23', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'February - 2023', '2023-04-17 09:10:48', 1, 0, NULL, NULL, NULL, NULL, NULL),
(166, '06-Feb-2023', '24', 'Sam', '01:05', '21:06', '00:01', '20:00', '20:01', 'Absent', '', 'February - 2023', '2023-04-17 09:10:48', 1, 0, NULL, NULL, NULL, NULL, NULL),
(167, '06-Feb-2023', '26', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'February - 2023', '2023-04-17 09:10:48', 1, 0, NULL, NULL, NULL, NULL, NULL),
(168, '06-Feb-2023', '28', 'GS', '07:30', '16:59', '9:00', '00:00', '9:00', 'Present', '', 'February - 2023', '2023-04-17 09:10:48', 1, 1, NULL, NULL, NULL, NULL, NULL),
(169, '06-Feb-2023', '30', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'February - 2023', '2023-04-17 09:10:48', 1, 0, NULL, NULL, NULL, NULL, NULL),
(170, '06-Feb-2023', '33', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'February - 2023', '2023-04-17 09:10:48', 1, 0, NULL, NULL, NULL, NULL, NULL),
(171, '06-Feb-2023', '34', 'NS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'February - 2023', '2023-04-17 09:10:48', 1, 0, NULL, NULL, NULL, NULL, NULL),
(172, '06-Feb-2023', '35', 'NS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'February - 2023', '2023-04-17 09:10:48', 1, 0, NULL, NULL, NULL, NULL, NULL),
(173, '06-Feb-2023', '36', 'NS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'February - 2023', '2023-04-17 09:10:48', 1, 0, NULL, NULL, NULL, NULL, NULL),
(174, '06-Feb-2023', '', '', '', '', '', '', '', '', '', 'February - 2023', '2023-04-17 09:10:48', 1, 0, NULL, NULL, NULL, NULL, NULL),
(175, '07-Feb-2023', '1', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'February - 2023', '2023-04-17 09:10:48', 1, 0, NULL, NULL, NULL, NULL, NULL),
(176, '07-Feb-2023', '3', 'GS', '05:39', '18:12', '9:01', '1:12', '10:13', 'Present', '', 'February - 2023', '2023-04-17 09:10:48', 1, 1, NULL, NULL, NULL, NULL, NULL),
(177, '07-Feb-2023', '4', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'February - 2023', '2023-04-17 09:10:48', 1, 0, NULL, NULL, NULL, NULL, NULL),
(178, '07-Feb-2023', '5', 'GS', '07:28', '17:02', '9:03', '00:00', '9:03', 'Present', '', 'February - 2023', '2023-04-17 09:10:48', 1, 1, NULL, NULL, NULL, NULL, NULL),
(179, '07-Feb-2023', '6', 'GS', '07:36', '17:00', '9:01', '00:00', '9:01', 'Present', '', 'February - 2023', '2023-04-17 09:10:48', 1, 1, NULL, NULL, NULL, NULL, NULL),
(180, '07-Feb-2023', '7', 'GS', '07:36', '17:00', '9:01', '00:00', '9:01', 'Present', '', 'February - 2023', '2023-04-17 09:10:48', 1, 1, NULL, NULL, NULL, NULL, NULL),
(181, '07-Feb-2023', '8', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'February - 2023', '2023-04-17 09:10:48', 1, 0, NULL, NULL, NULL, NULL, NULL),
(182, '07-Feb-2023', '9', 'GS', '07:36', '16:59', '9:00', '00:00', '9:00', 'Present', '', 'February - 2023', '2023-04-17 09:10:48', 1, 1, NULL, NULL, NULL, NULL, NULL),
(183, '07-Feb-2023', '10', 'GS', '07:56', '16:59', '9:00', '00:00', '9:00', 'Present', '', 'February - 2023', '2023-04-17 09:10:48', 1, 1, NULL, NULL, NULL, NULL, NULL),
(184, '07-Feb-2023', '11', 'GS', '07:36', '17:01', '9:02', '00:00', '9:02', 'Present', '', 'February - 2023', '2023-04-17 09:10:48', 1, 1, NULL, NULL, NULL, NULL, NULL),
(185, '07-Feb-2023', '14', 'GS', '07:47', '16:59', '9:00', '00:00', '9:00', 'Present', '', 'February - 2023', '2023-04-17 09:10:48', 1, 1, NULL, NULL, NULL, NULL, NULL),
(186, '07-Feb-2023', '15', 'GS', '08:16', '15:55', '7:39', '00:00', '7:39', 'Present', '', 'February - 2023', '2023-04-17 09:10:48', 1, 1, NULL, NULL, NULL, NULL, NULL),
(187, '07-Feb-2023', '16', 'GS', '08:23', '16:59', '8:36', '00:00', '8:36', 'Present', '', 'February - 2023', '2023-04-17 09:10:48', 1, 1, NULL, NULL, NULL, NULL, NULL),
(188, '07-Feb-2023', '17', 'GS', '07:28', '17:13', '9:14', '00:00', '9:14', 'Present', '', 'February - 2023', '2023-04-17 09:10:48', 1, 1, NULL, NULL, NULL, NULL, NULL),
(189, '07-Feb-2023', '18', 'GS', '07:28', '17:06', '9:03', '00:00', '9:03', 'Present', '', 'February - 2023', '2023-04-17 09:10:48', 1, 1, NULL, NULL, NULL, NULL, NULL),
(190, '07-Feb-2023', '19', 'GS', '07:28', '17:10', '9:11', '00:00', '9:11', 'Present', '', 'February - 2023', '2023-04-17 09:10:48', 1, 1, NULL, NULL, NULL, NULL, NULL),
(191, '07-Feb-2023', '20', 'GS', '07:22', '', '00:00', '00:00', '00:00', 'Absent (No OutPunch)', '', 'February - 2023', '2023-04-17 09:10:48', 1, 0, NULL, NULL, NULL, NULL, NULL),
(192, '07-Feb-2023', '21', 'GS', '07:36', '17:00', '9:00', '00:00', '9:00', 'Present', '', 'February - 2023', '2023-04-17 09:10:48', 1, 1, NULL, NULL, NULL, NULL, NULL),
(193, '07-Feb-2023', '22', 'GS', '08:16', '13:48', '5:32', '00:00', '5:32', 'Present', '', 'February - 2023', '2023-04-17 09:10:48', 1, 1, NULL, NULL, NULL, NULL, NULL),
(194, '07-Feb-2023', '23', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'February - 2023', '2023-04-17 09:10:48', 1, 0, NULL, NULL, NULL, NULL, NULL),
(195, '07-Feb-2023', '24', 'Sam', '01:04', '21:07', '00:00', '20:03', '20:03', 'Absent', '', 'February - 2023', '2023-04-17 09:10:48', 1, 0, NULL, NULL, NULL, NULL, NULL),
(196, '07-Feb-2023', '26', 'GS', '07:36', '16:59', '9:00', '00:00', '9:00', 'Present', '', 'February - 2023', '2023-04-17 09:10:48', 1, 1, NULL, NULL, NULL, NULL, NULL),
(197, '07-Feb-2023', '28', 'GS', '07:36', '16:59', '9:00', '00:00', '9:00', 'Present', '', 'February - 2023', '2023-04-17 09:10:48', 1, 1, NULL, NULL, NULL, NULL, NULL),
(198, '07-Feb-2023', '30', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'February - 2023', '2023-04-17 09:10:48', 1, 0, NULL, NULL, NULL, NULL, NULL),
(199, '07-Feb-2023', '33', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'February - 2023', '2023-04-17 09:10:48', 1, 0, NULL, NULL, NULL, NULL, NULL),
(200, '07-Feb-2023', '34', 'NS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'February - 2023', '2023-04-17 09:10:48', 1, 0, NULL, NULL, NULL, NULL, NULL),
(201, '07-Feb-2023', '35', 'NS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'February - 2023', '2023-04-17 09:10:48', 1, 0, NULL, NULL, NULL, NULL, NULL),
(202, '07-Feb-2023', '36', 'NS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'February - 2023', '2023-04-17 09:10:48', 1, 0, NULL, NULL, NULL, NULL, NULL),
(203, '07-Feb-2023', '', '', '', '', '', '', '', '', '', 'February - 2023', '2023-04-17 09:10:48', 1, 0, NULL, NULL, NULL, NULL, NULL),
(204, '08-Feb-2023', '1', 'GS', '11:51', '', '00:00', '00:00', '00:00', 'Absent (No OutPunch)', '', 'February - 2023', '2023-04-17 09:10:48', 1, 0, NULL, NULL, NULL, NULL, NULL),
(205, '08-Feb-2023', '3', 'GS', '05:37', '18:28', '9:01', '1:28', '10:29', 'Present', '', 'February - 2023', '2023-04-17 09:10:48', 1, 1, NULL, NULL, NULL, NULL, NULL),
(206, '08-Feb-2023', '4', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'February - 2023', '2023-04-17 09:10:48', 1, 0, NULL, NULL, NULL, NULL, NULL),
(207, '08-Feb-2023', '5', 'GS', '07:29', '17:11', '9:12', '00:00', '9:12', 'Present', '', 'February - 2023', '2023-04-17 09:10:48', 1, 1, NULL, NULL, NULL, NULL, NULL),
(208, '08-Feb-2023', '6', 'GS', '07:37', '16:59', '9:00', '00:00', '9:00', 'Present', '', 'February - 2023', '2023-04-17 09:10:48', 1, 1, NULL, NULL, NULL, NULL, NULL),
(209, '08-Feb-2023', '7', 'GS', '07:37', '17:00', '9:01', '00:00', '9:01', 'Present', '', 'February - 2023', '2023-04-17 09:10:48', 1, 1, NULL, NULL, NULL, NULL, NULL),
(210, '08-Feb-2023', '8', 'GS', '07:58', '17:03', '9:04', '00:00', '9:04', 'Present', '', 'February - 2023', '2023-04-17 09:10:48', 1, 1, NULL, NULL, NULL, NULL, NULL),
(211, '08-Feb-2023', '9', 'GS', '07:37', '16:59', '9:00', '00:00', '9:00', 'Present', '', 'February - 2023', '2023-04-17 09:10:48', 1, 1, NULL, NULL, NULL, NULL, NULL),
(212, '08-Feb-2023', '10', 'GS', '07:37', '17:00', '9:01', '00:00', '9:01', 'Present', '', 'February - 2023', '2023-04-17 09:10:48', 1, 1, NULL, NULL, NULL, NULL, NULL),
(213, '08-Feb-2023', '11', 'GS', '07:37', '16:59', '9:00', '00:00', '9:00', 'Present', '', 'February - 2023', '2023-04-17 09:10:48', 1, 1, NULL, NULL, NULL, NULL, NULL),
(214, '08-Feb-2023', '14', 'GS', '07:43', '17:00', '9:01', '00:00', '9:01', 'Present', '', 'February - 2023', '2023-04-17 09:10:48', 1, 1, NULL, NULL, NULL, NULL, NULL),
(215, '08-Feb-2023', '15', 'GS', '08:16', '16:54', '8:38', '00:00', '8:38', 'Present', '', 'February - 2023', '2023-04-17 09:10:48', 1, 1, NULL, NULL, NULL, NULL, NULL),
(216, '08-Feb-2023', '16', 'GS', '08:06', '16:54', '8:48', '00:00', '8:48', 'Present', '', 'February - 2023', '2023-04-17 09:10:48', 1, 1, NULL, NULL, NULL, NULL, NULL),
(217, '08-Feb-2023', '17', 'GS', '07:29', '17:13', '9:14', '00:00', '9:14', 'Present', '', 'February - 2023', '2023-04-17 09:10:48', 1, 1, NULL, NULL, NULL, NULL, NULL),
(218, '08-Feb-2023', '18', 'GS', '07:29', '16:57', '8:58', '00:00', '8:58', 'Present', '', 'February - 2023', '2023-04-17 09:10:48', 1, 1, NULL, NULL, NULL, NULL, NULL),
(219, '08-Feb-2023', '19', 'GS', '07:29', '17:11', '9:12', '00:00', '9:12', 'Present', '', 'February - 2023', '2023-04-17 09:10:48', 1, 1, NULL, NULL, NULL, NULL, NULL),
(220, '08-Feb-2023', '20', 'GS', '07:31', '13:00', '5:01', '00:00', '5:01', 'Present', '', 'February - 2023', '2023-04-17 09:10:48', 1, 1, NULL, NULL, NULL, NULL, NULL),
(221, '08-Feb-2023', '21', 'GS', '07:37', '16:59', '9:00', '00:00', '9:00', 'Present', '', 'February - 2023', '2023-04-17 09:10:48', 1, 1, NULL, NULL, NULL, NULL, NULL),
(222, '08-Feb-2023', '22', 'GS', '08:05', '13:57', '5:52', '00:00', '5:52', 'Present', '', 'February - 2023', '2023-04-17 09:10:48', 1, 1, NULL, NULL, NULL, NULL, NULL),
(223, '08-Feb-2023', '23', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'February - 2023', '2023-04-17 09:10:48', 1, 0, NULL, NULL, NULL, NULL, NULL),
(224, '08-Feb-2023', '24', 'Sam', '01:06', '21:07', '00:01', '20:00', '20:01', 'Absent', '', 'February - 2023', '2023-04-17 09:10:48', 1, 0, NULL, NULL, NULL, NULL, NULL),
(225, '08-Feb-2023', '26', 'GS', '07:37', '16:59', '9:00', '00:00', '9:00', 'Present', '', 'February - 2023', '2023-04-17 09:10:48', 1, 1, NULL, NULL, NULL, NULL, NULL),
(226, '08-Feb-2023', '28', 'GS', '07:37', '16:59', '9:00', '00:00', '9:00', 'Present', '', 'February - 2023', '2023-04-17 09:10:48', 1, 1, NULL, NULL, NULL, NULL, NULL),
(227, '08-Feb-2023', '30', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'February - 2023', '2023-04-17 09:10:48', 1, 0, NULL, NULL, NULL, NULL, NULL),
(228, '08-Feb-2023', '33', 'GS', '15:30', '', '00:00', '00:00', '00:00', 'Absent (No OutPunch)', '', 'February - 2023', '2023-04-17 09:10:48', 1, 0, NULL, NULL, NULL, NULL, NULL),
(229, '08-Feb-2023', '34', 'NS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'February - 2023', '2023-04-17 09:10:48', 1, 0, NULL, NULL, NULL, NULL, NULL),
(230, '08-Feb-2023', '35', 'NS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'February - 2023', '2023-04-17 09:10:48', 1, 0, NULL, NULL, NULL, NULL, NULL),
(231, '08-Feb-2023', '36', 'NS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'February - 2023', '2023-04-17 09:10:48', 1, 0, NULL, NULL, NULL, NULL, NULL),
(232, '08-Feb-2023', '', '', '', '', '', '', '', '', '', 'February - 2023', '2023-04-17 09:10:48', 1, 0, NULL, NULL, NULL, NULL, NULL),
(233, '09-Feb-2023', '1', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'February - 2023', '2023-04-17 09:10:48', 1, 0, NULL, NULL, NULL, NULL, NULL),
(234, '09-Feb-2023', '3', 'GS', '05:34', '18:12', '9:01', '1:12', '10:13', 'Present', '', 'February - 2023', '2023-04-17 09:10:48', 1, 1, NULL, NULL, NULL, NULL, NULL),
(235, '09-Feb-2023', '4', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'February - 2023', '2023-04-17 09:10:48', 1, 0, NULL, NULL, NULL, NULL, NULL),
(236, '09-Feb-2023', '5', 'GS', '07:27', '17:07', '9:04', '00:00', '9:04', 'Present', '', 'February - 2023', '2023-04-17 09:10:48', 1, 1, NULL, NULL, NULL, NULL, NULL),
(237, '09-Feb-2023', '6', 'GS', '07:34', '17:04', '9:05', '00:00', '9:05', 'Present', '', 'February - 2023', '2023-04-17 09:10:48', 1, 1, NULL, NULL, NULL, NULL, NULL),
(238, '09-Feb-2023', '7', 'GS', '07:34', '17:03', '9:04', '00:00', '9:04', 'Present', '', 'February - 2023', '2023-04-17 09:10:48', 1, 1, NULL, NULL, NULL, NULL, NULL),
(239, '09-Feb-2023', '8', 'GS', '11:30', '17:06', '5:36', '00:00', '5:36', 'Present', '', 'February - 2023', '2023-04-17 09:10:48', 1, 1, NULL, NULL, NULL, NULL, NULL),
(240, '09-Feb-2023', '9', 'GS', '07:34', '17:03', '9:04', '00:00', '9:04', 'Present', '', 'February - 2023', '2023-04-17 09:10:48', 1, 1, NULL, NULL, NULL, NULL, NULL),
(241, '09-Feb-2023', '10', 'GS', '07:34', '17:00', '9:01', '00:00', '9:01', 'Present', '', 'February - 2023', '2023-04-17 09:10:48', 1, 1, NULL, NULL, NULL, NULL, NULL),
(242, '09-Feb-2023', '11', 'GS', '07:34', '17:06', '9:07', '00:00', '9:07', 'Present', '', 'February - 2023', '2023-04-17 09:10:48', 1, 1, NULL, NULL, NULL, NULL, NULL),
(243, '09-Feb-2023', '14', 'GS', '07:44', '17:10', '9:11', '00:00', '9:11', 'Present', '', 'February - 2023', '2023-04-17 09:10:48', 1, 1, NULL, NULL, NULL, NULL, NULL),
(244, '09-Feb-2023', '15', 'GS', '10:29', '16:19', '5:50', '00:00', '5:50', 'Present', '', 'February - 2023', '2023-04-17 09:10:48', 1, 1, NULL, NULL, NULL, NULL, NULL),
(245, '09-Feb-2023', '16', 'GS', '08:07', '16:56', '8:49', '00:00', '8:49', 'Present', '', 'February - 2023', '2023-04-17 09:10:48', 1, 1, NULL, NULL, NULL, NULL, NULL),
(246, '09-Feb-2023', '17', 'GS', '07:27', '17:10', '9:11', '00:00', '9:11', 'Present', '', 'February - 2023', '2023-04-17 09:10:48', 1, 1, NULL, NULL, NULL, NULL, NULL),
(247, '09-Feb-2023', '18', 'GS', '07:27', '17:11', '9:12', '00:00', '9:12', 'Present', '', 'February - 2023', '2023-04-17 09:10:48', 1, 1, NULL, NULL, NULL, NULL, NULL),
(248, '09-Feb-2023', '19', 'GS', '07:27', '13:04', '5:05', '00:00', '5:05', 'Present', '', 'February - 2023', '2023-04-17 09:10:48', 1, 1, NULL, NULL, NULL, NULL, NULL),
(249, '09-Feb-2023', '20', 'GS', '07:17', '', '00:00', '00:00', '00:00', 'Absent (No OutPunch)', '', 'February - 2023', '2023-04-17 09:10:48', 1, 0, NULL, NULL, NULL, NULL, NULL),
(250, '09-Feb-2023', '21', 'GS', '07:34', '17:03', '9:04', '00:00', '9:04', 'Present', '', 'February - 2023', '2023-04-17 09:10:48', 1, 1, NULL, NULL, NULL, NULL, NULL),
(251, '09-Feb-2023', '22', 'GS', '08:16', '14:23', '6:07', '00:00', '6:07', 'Present', '', 'February - 2023', '2023-04-17 09:10:48', 1, 1, NULL, NULL, NULL, NULL, NULL),
(252, '09-Feb-2023', '23', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'February - 2023', '2023-04-17 09:10:48', 1, 0, NULL, NULL, NULL, NULL, NULL),
(253, '09-Feb-2023', '24', 'Sam', '00:34', '21:07', '00:01', '20:32', '20:33', 'Absent', '', 'February - 2023', '2023-04-17 09:10:48', 1, 0, NULL, NULL, NULL, NULL, NULL),
(254, '09-Feb-2023', '26', 'GS', '07:34', '17:03', '9:04', '00:00', '9:04', 'Present', '', 'February - 2023', '2023-04-17 09:10:48', 1, 1, NULL, NULL, NULL, NULL, NULL),
(255, '09-Feb-2023', '28', 'GS', '07:34', '17:02', '9:03', '00:00', '9:03', 'Present', '', 'February - 2023', '2023-04-17 09:10:48', 1, 1, NULL, NULL, NULL, NULL, NULL),
(256, '09-Feb-2023', '30', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'February - 2023', '2023-04-17 09:10:48', 1, 0, NULL, NULL, NULL, NULL, NULL),
(257, '09-Feb-2023', '33', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'February - 2023', '2023-04-17 09:10:48', 1, 0, NULL, NULL, NULL, NULL, NULL),
(258, '09-Feb-2023', '34', 'NS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'February - 2023', '2023-04-17 09:10:48', 1, 0, NULL, NULL, NULL, NULL, NULL),
(259, '09-Feb-2023', '35', 'NS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'February - 2023', '2023-04-17 09:10:48', 1, 0, NULL, NULL, NULL, NULL, NULL),
(260, '09-Feb-2023', '36', 'NS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'February - 2023', '2023-04-17 09:10:48', 1, 0, NULL, NULL, NULL, NULL, NULL),
(261, '09-Feb-2023', '', '', '', '', '', '', '', '', '', 'February - 2023', '2023-04-17 09:10:48', 1, 0, NULL, NULL, NULL, NULL, NULL),
(262, '10-Feb-2023', '1', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'February - 2023', '2023-04-17 09:10:48', 1, 0, NULL, NULL, NULL, NULL, NULL),
(263, '10-Feb-2023', '3', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'February - 2023', '2023-04-17 09:10:48', 1, 0, NULL, NULL, NULL, NULL, NULL),
(264, '10-Feb-2023', '4', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'February - 2023', '2023-04-17 09:10:48', 1, 0, NULL, NULL, NULL, NULL, NULL),
(265, '10-Feb-2023', '5', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'February - 2023', '2023-04-17 09:10:48', 1, 0, NULL, NULL, NULL, NULL, NULL),
(266, '10-Feb-2023', '6', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'February - 2023', '2023-04-17 09:10:48', 1, 0, NULL, NULL, NULL, NULL, NULL),
(267, '10-Feb-2023', '7', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'February - 2023', '2023-04-17 09:10:48', 1, 0, NULL, NULL, NULL, NULL, NULL),
(268, '10-Feb-2023', '8', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'February - 2023', '2023-04-17 09:10:48', 1, 0, NULL, NULL, NULL, NULL, NULL),
(269, '10-Feb-2023', '9', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'February - 2023', '2023-04-17 09:10:48', 1, 0, NULL, NULL, NULL, NULL, NULL),
(270, '10-Feb-2023', '10', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'February - 2023', '2023-04-17 09:10:48', 1, 0, NULL, NULL, NULL, NULL, NULL),
(271, '10-Feb-2023', '11', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'February - 2023', '2023-04-17 09:10:48', 1, 0, NULL, NULL, NULL, NULL, NULL),
(272, '10-Feb-2023', '14', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'February - 2023', '2023-04-17 09:10:48', 1, 0, NULL, NULL, NULL, NULL, NULL),
(273, '10-Feb-2023', '15', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'February - 2023', '2023-04-17 09:10:48', 1, 0, NULL, NULL, NULL, NULL, NULL),
(274, '10-Feb-2023', '16', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'February - 2023', '2023-04-17 09:10:48', 1, 0, NULL, NULL, NULL, NULL, NULL),
(275, '10-Feb-2023', '17', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'February - 2023', '2023-04-17 09:10:48', 1, 0, NULL, NULL, NULL, NULL, NULL),
(276, '10-Feb-2023', '18', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'February - 2023', '2023-04-17 09:10:48', 1, 0, NULL, NULL, NULL, NULL, NULL),
(277, '10-Feb-2023', '19', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'February - 2023', '2023-04-17 09:10:48', 1, 0, NULL, NULL, NULL, NULL, NULL),
(278, '10-Feb-2023', '20', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'February - 2023', '2023-04-17 09:10:48', 1, 0, NULL, NULL, NULL, NULL, NULL),
(279, '10-Feb-2023', '21', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'February - 2023', '2023-04-17 09:10:48', 1, 0, NULL, NULL, NULL, NULL, NULL),
(280, '10-Feb-2023', '22', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'February - 2023', '2023-04-17 09:10:48', 1, 0, NULL, NULL, NULL, NULL, NULL),
(281, '10-Feb-2023', '23', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'February - 2023', '2023-04-17 09:10:48', 1, 0, NULL, NULL, NULL, NULL, NULL),
(282, '10-Feb-2023', '24', 'Sam', '01:06', '21:06', '00:00', '20:00', '20:00', 'Absent', '', 'February - 2023', '2023-04-17 09:10:48', 1, 0, NULL, NULL, NULL, NULL, NULL),
(283, '10-Feb-2023', '26', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'February - 2023', '2023-04-17 09:10:48', 1, 0, NULL, NULL, NULL, NULL, NULL),
(284, '10-Feb-2023', '28', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'February - 2023', '2023-04-17 09:10:48', 1, 0, NULL, NULL, NULL, NULL, NULL),
(285, '10-Feb-2023', '30', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'February - 2023', '2023-04-17 09:10:48', 1, 0, NULL, NULL, NULL, NULL, NULL),
(286, '10-Feb-2023', '33', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'February - 2023', '2023-04-17 09:10:48', 1, 0, NULL, NULL, NULL, NULL, NULL),
(287, '10-Feb-2023', '34', 'NS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'February - 2023', '2023-04-17 09:10:48', 1, 0, NULL, NULL, NULL, NULL, NULL),
(288, '10-Feb-2023', '35', 'NS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'February - 2023', '2023-04-17 09:10:48', 1, 0, NULL, NULL, NULL, NULL, NULL),
(289, '10-Feb-2023', '36', 'NS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'February - 2023', '2023-04-17 09:10:48', 1, 0, NULL, NULL, NULL, NULL, NULL),
(290, '10-Feb-2023', '', '', '', '', '', '', '', '', '', 'February - 2023', '2023-04-17 09:10:48', 1, 0, NULL, NULL, NULL, NULL, NULL),
(291, '11-Feb-2023', '1', 'GS', '09:16', '13:39', '00:00', '4:23', '4:23', 'WeeklyOff Present', '', 'February - 2023', '2023-04-17 09:10:48', 1, 0, NULL, NULL, NULL, NULL, NULL),
(292, '11-Feb-2023', '3', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'February - 2023', '2023-04-17 09:10:48', 1, 0, NULL, NULL, NULL, NULL, NULL),
(293, '11-Feb-2023', '4', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'February - 2023', '2023-04-17 09:10:48', 1, 0, NULL, NULL, NULL, NULL, NULL),
(294, '11-Feb-2023', '5', 'GS', '08:31', '17:00', '00:00', '8:29', '8:29', 'WeeklyOff Present', '', 'February - 2023', '2023-04-17 09:10:48', 1, 0, NULL, NULL, NULL, NULL, NULL),
(295, '11-Feb-2023', '6', 'GS', '08:31', '16:59', '00:00', '8:28', '8:28', 'WeeklyOff Present', '', 'February - 2023', '2023-04-17 09:10:48', 1, 0, NULL, NULL, NULL, NULL, NULL),
(296, '11-Feb-2023', '7', 'GS', '08:31', '17:00', '00:00', '8:29', '8:29', 'WeeklyOff Present', '', 'February - 2023', '2023-04-17 09:10:48', 1, 0, NULL, NULL, NULL, NULL, NULL),
(297, '11-Feb-2023', '8', 'GS', '08:58', '17:01', '00:00', '7:59', '7:59', 'WeeklyOff Present', '', 'February - 2023', '2023-04-17 09:10:48', 1, 0, NULL, NULL, NULL, NULL, NULL),
(298, '11-Feb-2023', '9', 'GS', '08:31', '16:55', '00:00', '8:24', '8:24', 'WeeklyOff Present', '', 'February - 2023', '2023-04-17 09:10:48', 1, 0, NULL, NULL, NULL, NULL, NULL),
(299, '11-Feb-2023', '10', 'GS', '09:00', '16:55', '00:00', '7:55', '7:55', 'WeeklyOff Present', '', 'February - 2023', '2023-04-17 09:10:48', 1, 0, NULL, NULL, NULL, NULL, NULL),
(300, '11-Feb-2023', '11', 'GS', '08:31', '16:59', '00:00', '8:28', '8:28', 'WeeklyOff Present', '', 'February - 2023', '2023-04-17 09:10:48', 1, 0, NULL, NULL, NULL, NULL, NULL),
(301, '11-Feb-2023', '14', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'February - 2023', '2023-04-17 09:10:48', 1, 0, NULL, NULL, NULL, NULL, NULL),
(302, '11-Feb-2023', '15', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'February - 2023', '2023-04-17 09:10:48', 1, 0, NULL, NULL, NULL, NULL, NULL),
(303, '11-Feb-2023', '16', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'February - 2023', '2023-04-17 09:10:48', 1, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_attendance_master` (`id`, `attend_date`, `attend_emp_id`, `attend_shift`, `attend_in_time`, `attend_out_time`, `attend_work_hours`, `attend_over_time`, `attend_total_hours`, `attend_status`, `attend_notes`, `attend_month_year`, `created_at`, `attend_import_by`, `attend_action_status`, `attend_action_by`, `attend_amount`, `attend_leave_category`, `attend_action_notes`, `attend_action_at`) VALUES
(304, '11-Feb-2023', '17', 'GS', '08:32', '13:47', '00:00', '5:15', '5:15', 'WeeklyOff Present', '', 'February - 2023', '2023-04-17 09:10:48', 1, 0, NULL, NULL, NULL, NULL, NULL),
(305, '11-Feb-2023', '18', 'GS', '08:30', '16:56', '00:00', '8:26', '8:26', 'WeeklyOff Present', '', 'February - 2023', '2023-04-17 09:10:48', 1, 0, NULL, NULL, NULL, NULL, NULL),
(306, '11-Feb-2023', '19', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'February - 2023', '2023-04-17 09:10:48', 1, 0, NULL, NULL, NULL, NULL, NULL),
(307, '11-Feb-2023', '20', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'February - 2023', '2023-04-17 09:10:48', 1, 0, NULL, NULL, NULL, NULL, NULL),
(308, '11-Feb-2023', '21', 'GS', '08:31', '16:59', '00:00', '8:28', '8:28', 'WeeklyOff Present', '', 'February - 2023', '2023-04-17 09:10:48', 1, 0, NULL, NULL, NULL, NULL, NULL),
(309, '11-Feb-2023', '22', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'February - 2023', '2023-04-17 09:10:48', 1, 0, NULL, NULL, NULL, NULL, NULL),
(310, '11-Feb-2023', '23', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'February - 2023', '2023-04-17 09:10:48', 1, 0, NULL, NULL, NULL, NULL, NULL),
(311, '11-Feb-2023', '24', 'Sam', '01:05', '21:05', '00:00', '20:00', '20:00', 'WeeklyOff Present', '', 'February - 2023', '2023-04-17 09:10:48', 1, 0, NULL, NULL, NULL, NULL, NULL),
(312, '11-Feb-2023', '26', 'GS', '08:31', '16:55', '00:00', '8:24', '8:24', 'WeeklyOff Present', '', 'February - 2023', '2023-04-17 09:10:48', 1, 0, NULL, NULL, NULL, NULL, NULL),
(313, '11-Feb-2023', '28', 'GS', '08:31', '16:55', '00:00', '8:24', '8:24', 'WeeklyOff Present', '', 'February - 2023', '2023-04-17 09:10:48', 1, 0, NULL, NULL, NULL, NULL, NULL),
(314, '11-Feb-2023', '30', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'February - 2023', '2023-04-17 09:10:48', 1, 0, NULL, NULL, NULL, NULL, NULL),
(315, '11-Feb-2023', '33', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'February - 2023', '2023-04-17 09:10:48', 1, 0, NULL, NULL, NULL, NULL, NULL),
(316, '11-Feb-2023', '34', 'NS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'February - 2023', '2023-04-17 09:10:48', 1, 0, NULL, NULL, NULL, NULL, NULL),
(317, '11-Feb-2023', '35', 'NS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'February - 2023', '2023-04-17 09:10:48', 1, 0, NULL, NULL, NULL, NULL, NULL),
(318, '11-Feb-2023', '36', 'NS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'February - 2023', '2023-04-17 09:10:48', 1, 0, NULL, NULL, NULL, NULL, NULL),
(319, '11-Feb-2023', '', '', '', '', '', '', '', '', '', 'February - 2023', '2023-04-17 09:10:48', 1, 0, NULL, NULL, NULL, NULL, NULL),
(320, '12-Feb-2023', '1', 'GS', '', '', '00:00', '00:00', '00:00', 'WeeklyOff', '', 'February - 2023', '2023-04-17 09:10:48', 1, 0, NULL, NULL, NULL, NULL, NULL),
(321, '12-Feb-2023', '3', 'GS', '05:34', '18:14', '00:00', '12:40', '12:40', 'WeeklyOff Present', '', 'February - 2023', '2023-04-17 09:10:48', 1, 0, NULL, NULL, NULL, NULL, NULL),
(322, '12-Feb-2023', '4', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'February - 2023', '2023-04-17 09:10:48', 1, 0, NULL, NULL, NULL, NULL, NULL),
(323, '12-Feb-2023', '5', 'GS', '07:26', '17:03', '00:00', '9:33', '9:33', 'WeeklyOff Present', '', 'February - 2023', '2023-04-17 09:10:48', 1, 0, NULL, NULL, NULL, NULL, NULL),
(324, '12-Feb-2023', '6', 'GS', '07:33', '16:59', '00:00', '9:26', '9:26', 'WeeklyOff Present', '', 'February - 2023', '2023-04-17 09:10:48', 1, 0, NULL, NULL, NULL, NULL, NULL),
(325, '12-Feb-2023', '7', 'GS', '07:33', '16:59', '00:00', '9:26', '9:26', 'WeeklyOff Present', '', 'February - 2023', '2023-04-17 09:10:48', 1, 0, NULL, NULL, NULL, NULL, NULL),
(326, '12-Feb-2023', '8', 'GS', '08:14', '16:55', '00:00', '8:41', '8:41', 'WeeklyOff Present', '', 'February - 2023', '2023-04-17 09:10:48', 1, 0, NULL, NULL, NULL, NULL, NULL),
(327, '12-Feb-2023', '9', 'GS', '07:33', '16:58', '00:00', '9:25', '9:25', 'WeeklyOff Present', '', 'February - 2023', '2023-04-17 09:10:48', 1, 0, NULL, NULL, NULL, NULL, NULL),
(328, '12-Feb-2023', '10', 'GS', '07:33', '17:00', '00:00', '9:27', '9:27', 'WeeklyOff Present', '', 'February - 2023', '2023-04-17 09:10:48', 1, 0, NULL, NULL, NULL, NULL, NULL),
(329, '12-Feb-2023', '11', 'GS', '07:33', '16:59', '00:00', '9:26', '9:26', 'WeeklyOff Present', '', 'February - 2023', '2023-04-17 09:10:48', 1, 0, NULL, NULL, NULL, NULL, NULL),
(330, '12-Feb-2023', '14', 'GS', '07:51', '17:19', '00:00', '9:28', '9:28', 'WeeklyOff Present', '', 'February - 2023', '2023-04-17 09:10:48', 1, 0, NULL, NULL, NULL, NULL, NULL),
(331, '12-Feb-2023', '15', 'GS', '08:54', '15:49', '00:00', '6:55', '6:55', 'WeeklyOff Present', '', 'February - 2023', '2023-04-17 09:10:48', 1, 0, NULL, NULL, NULL, NULL, NULL),
(332, '12-Feb-2023', '16', 'GS', '08:07', '16:48', '00:00', '8:40', '8:40', 'WeeklyOff Present', '', 'February - 2023', '2023-04-17 09:10:48', 1, 0, NULL, NULL, NULL, NULL, NULL),
(333, '12-Feb-2023', '17', 'GS', '07:26', '17:15', '00:00', '9:48', '9:48', 'WeeklyOff Present', '', 'February - 2023', '2023-04-17 09:10:48', 1, 0, NULL, NULL, NULL, NULL, NULL),
(334, '12-Feb-2023', '18', 'GS', '07:26', '09:47', '00:00', '2:21', '2:21', 'WeeklyOff  ½Present', '', 'February - 2023', '2023-04-17 09:10:48', 1, 0, NULL, NULL, NULL, NULL, NULL),
(335, '12-Feb-2023', '19', 'GS', '07:26', '17:15', '00:00', '9:49', '9:49', 'WeeklyOff Present', '', 'February - 2023', '2023-04-17 09:10:48', 1, 0, NULL, NULL, NULL, NULL, NULL),
(336, '12-Feb-2023', '20', 'GS', '07:27', '17:36', '00:00', '10:09', '10:09', 'WeeklyOff Present', '', 'February - 2023', '2023-04-17 09:10:48', 1, 0, NULL, NULL, NULL, NULL, NULL),
(337, '12-Feb-2023', '21', 'GS', '07:33', '16:59', '00:00', '9:26', '9:26', 'WeeklyOff Present', '', 'February - 2023', '2023-04-17 09:10:48', 1, 0, NULL, NULL, NULL, NULL, NULL),
(338, '12-Feb-2023', '22', 'GS', '08:09', '13:45', '00:00', '5:36', '5:36', 'WeeklyOff Present', '', 'February - 2023', '2023-04-17 09:10:48', 1, 0, NULL, NULL, NULL, NULL, NULL),
(339, '12-Feb-2023', '23', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'February - 2023', '2023-04-17 09:10:48', 1, 0, NULL, NULL, NULL, NULL, NULL),
(340, '12-Feb-2023', '24', 'Sam', '01:06', '21:06', '00:00', '20:00', '20:00', 'WeeklyOff Present', '', 'February - 2023', '2023-04-17 09:10:48', 1, 0, NULL, NULL, NULL, NULL, NULL),
(341, '12-Feb-2023', '26', 'GS', '07:33', '16:59', '00:00', '9:26', '9:26', 'WeeklyOff Present', '', 'February - 2023', '2023-04-17 09:10:48', 1, 0, NULL, NULL, NULL, NULL, NULL),
(342, '12-Feb-2023', '28', 'GS', '07:33', '16:59', '00:00', '9:26', '9:26', 'WeeklyOff Present', '', 'February - 2023', '2023-04-17 09:10:48', 1, 0, NULL, NULL, NULL, NULL, NULL),
(343, '12-Feb-2023', '30', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'February - 2023', '2023-04-17 09:10:48', 1, 0, NULL, NULL, NULL, NULL, NULL),
(344, '12-Feb-2023', '33', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'February - 2023', '2023-04-17 09:10:48', 1, 0, NULL, NULL, NULL, NULL, NULL),
(345, '12-Feb-2023', '34', 'NS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'February - 2023', '2023-04-17 09:10:48', 1, 0, NULL, NULL, NULL, NULL, NULL),
(346, '12-Feb-2023', '35', 'NS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'February - 2023', '2023-04-17 09:10:48', 1, 0, NULL, NULL, NULL, NULL, NULL),
(347, '12-Feb-2023', '36', 'NS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'February - 2023', '2023-04-17 09:10:48', 1, 0, NULL, NULL, NULL, NULL, NULL),
(348, '12-Feb-2023', '', '', '', '', '', '', '', '', '', 'February - 2023', '2023-04-17 09:10:48', 1, 0, NULL, NULL, NULL, NULL, NULL),
(349, '13-Feb-2023', '1', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'February - 2023', '2023-04-17 09:10:48', 1, 0, NULL, NULL, NULL, NULL, NULL),
(350, '13-Feb-2023', '3', 'GS', '05:38', '18:11', '9:01', '1:11', '10:12', 'Present', '', 'February - 2023', '2023-04-17 09:10:48', 1, 1, NULL, NULL, NULL, NULL, NULL),
(351, '13-Feb-2023', '4', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'February - 2023', '2023-04-17 09:10:48', 1, 0, NULL, NULL, NULL, NULL, NULL),
(352, '13-Feb-2023', '5', 'GS', '07:28', '17:24', '9:25', '00:00', '9:25', 'Present', '', 'February - 2023', '2023-04-17 09:10:48', 1, 1, NULL, NULL, NULL, NULL, NULL),
(353, '13-Feb-2023', '6', 'GS', '07:37', '', '00:00', '00:00', '00:00', 'Absent (No OutPunch)', '', 'February - 2023', '2023-04-17 09:10:48', 1, 0, NULL, NULL, NULL, NULL, NULL),
(354, '13-Feb-2023', '7', 'GS', '07:37', '17:18', '9:19', '00:00', '9:19', 'Present', '', 'February - 2023', '2023-04-17 09:10:48', 1, 1, NULL, NULL, NULL, NULL, NULL),
(355, '13-Feb-2023', '8', 'GS', '08:11', '17:01', '8:46', '00:00', '8:46', 'Present', '', 'February - 2023', '2023-04-17 09:10:48', 1, 1, NULL, NULL, NULL, NULL, NULL),
(356, '13-Feb-2023', '9', 'GS', '07:37', '17:20', '9:21', '00:00', '9:21', 'Present', '', 'February - 2023', '2023-04-17 09:10:48', 1, 1, NULL, NULL, NULL, NULL, NULL),
(357, '13-Feb-2023', '10', 'GS', '07:36', '17:09', '9:10', '00:00', '9:10', 'Present', '', 'February - 2023', '2023-04-17 09:10:48', 1, 1, NULL, NULL, NULL, NULL, NULL),
(358, '13-Feb-2023', '11', 'GS', '07:37', '17:18', '9:19', '00:00', '9:19', 'Present', '', 'February - 2023', '2023-04-17 09:10:48', 1, 1, NULL, NULL, NULL, NULL, NULL),
(359, '13-Feb-2023', '14', 'GS', '07:47', '17:39', '9:01', '00:39', '9:40', 'Present', '', 'February - 2023', '2023-04-17 09:10:48', 1, 1, NULL, NULL, NULL, NULL, NULL),
(360, '13-Feb-2023', '15', 'GS', '09:35', '16:51', '7:16', '00:00', '7:16', 'Present', '', 'February - 2023', '2023-04-17 09:10:48', 1, 1, NULL, NULL, NULL, NULL, NULL),
(361, '13-Feb-2023', '16', 'GS', '07:57', '16:52', '8:53', '00:00', '8:53', 'Present', '', 'February - 2023', '2023-04-17 09:10:48', 1, 1, NULL, NULL, NULL, NULL, NULL),
(362, '13-Feb-2023', '17', 'GS', '07:28', '17:16', '9:17', '00:00', '9:17', 'Present', '', 'February - 2023', '2023-04-17 09:10:48', 1, 1, NULL, NULL, NULL, NULL, NULL),
(363, '13-Feb-2023', '18', 'GS', '07:28', '17:26', '9:27', '00:00', '9:27', 'Present', '', 'February - 2023', '2023-04-17 09:10:48', 1, 1, NULL, NULL, NULL, NULL, NULL),
(364, '13-Feb-2023', '19', 'GS', '07:28', '17:12', '9:13', '00:00', '9:13', 'Present', '', 'February - 2023', '2023-04-17 09:10:48', 1, 1, NULL, NULL, NULL, NULL, NULL),
(365, '13-Feb-2023', '20', 'GS', '07:23', '17:20', '9:21', '00:00', '9:21', 'Present', '', 'February - 2023', '2023-04-17 09:10:48', 1, 1, NULL, NULL, NULL, NULL, NULL),
(366, '13-Feb-2023', '21', 'GS', '07:37', '17:17', '9:18', '00:00', '9:18', 'Present', '', 'February - 2023', '2023-04-17 09:10:48', 1, 1, NULL, NULL, NULL, NULL, NULL),
(367, '13-Feb-2023', '22', 'GS', '08:09', '13:47', '5:38', '00:00', '5:38', 'Present', '', 'February - 2023', '2023-04-17 09:10:48', 1, 1, NULL, NULL, NULL, NULL, NULL),
(368, '13-Feb-2023', '23', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'February - 2023', '2023-04-17 09:10:48', 1, 0, NULL, NULL, NULL, NULL, NULL),
(369, '13-Feb-2023', '24', 'Sam', '02:02', '21:07', '00:01', '19:04', '19:05', 'Absent', '', 'February - 2023', '2023-04-17 09:10:48', 1, 0, NULL, NULL, NULL, NULL, NULL),
(370, '13-Feb-2023', '26', 'GS', '07:37', '17:20', '9:21', '00:00', '9:21', 'Present', '', 'February - 2023', '2023-04-17 09:10:48', 1, 1, NULL, NULL, NULL, NULL, NULL),
(371, '13-Feb-2023', '28', 'GS', '07:37', '17:20', '9:20', '00:00', '9:20', 'Present', '', 'February - 2023', '2023-04-17 09:10:48', 1, 1, NULL, NULL, NULL, NULL, NULL),
(372, '13-Feb-2023', '30', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'February - 2023', '2023-04-17 09:10:48', 1, 0, NULL, NULL, NULL, NULL, NULL),
(373, '13-Feb-2023', '33', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'February - 2023', '2023-04-17 09:10:48', 1, 0, NULL, NULL, NULL, NULL, NULL),
(374, '13-Feb-2023', '34', 'NS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'February - 2023', '2023-04-17 09:10:48', 1, 0, NULL, NULL, NULL, NULL, NULL),
(375, '13-Feb-2023', '35', 'NS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'February - 2023', '2023-04-17 09:10:48', 1, 0, NULL, NULL, NULL, NULL, NULL),
(376, '13-Feb-2023', '36', 'NS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'February - 2023', '2023-04-17 09:10:48', 1, 0, NULL, NULL, NULL, NULL, NULL),
(377, '13-Feb-2023', '', '', '', '', '', '', '', '', '', 'February - 2023', '2023-04-17 09:10:48', 1, 0, NULL, NULL, NULL, NULL, NULL),
(378, '14-Feb-2023', '1', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'February - 2023', '2023-04-17 09:10:48', 1, 0, NULL, NULL, NULL, NULL, NULL),
(379, '14-Feb-2023', '3', 'GS', '05:35', '18:39', '9:01', '1:39', '10:40', 'Present', '', 'February - 2023', '2023-04-17 09:10:48', 1, 1, NULL, NULL, NULL, NULL, NULL),
(380, '14-Feb-2023', '4', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'February - 2023', '2023-04-17 09:10:48', 1, 0, NULL, NULL, NULL, NULL, NULL),
(381, '14-Feb-2023', '5', 'GS', '07:28', '17:01', '9:02', '00:00', '9:02', 'Present', '', 'February - 2023', '2023-04-17 09:10:48', 1, 1, NULL, NULL, NULL, NULL, NULL),
(382, '14-Feb-2023', '6', 'GS', '07:41', '16:59', '9:00', '00:00', '9:00', 'Present', '', 'February - 2023', '2023-04-17 09:10:48', 1, 1, NULL, NULL, NULL, NULL, NULL),
(383, '14-Feb-2023', '7', 'GS', '07:41', '17:00', '9:01', '00:00', '9:01', 'Present', '', 'February - 2023', '2023-04-17 09:10:48', 1, 1, NULL, NULL, NULL, NULL, NULL),
(384, '14-Feb-2023', '8', 'GS', '08:10', '16:53', '8:43', '00:00', '8:43', 'Present', '', 'February - 2023', '2023-04-17 09:10:48', 1, 1, NULL, NULL, NULL, NULL, NULL),
(385, '14-Feb-2023', '9', 'GS', '07:41', '17:00', '9:00', '00:00', '9:00', 'Present', '', 'February - 2023', '2023-04-17 09:10:48', 1, 1, NULL, NULL, NULL, NULL, NULL),
(386, '14-Feb-2023', '10', 'GS', '07:41', '17:00', '9:01', '00:00', '9:01', 'Present', '', 'February - 2023', '2023-04-17 09:10:48', 1, 1, NULL, NULL, NULL, NULL, NULL),
(387, '14-Feb-2023', '11', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'February - 2023', '2023-04-17 09:10:48', 1, 0, NULL, NULL, NULL, NULL, NULL),
(388, '14-Feb-2023', '14', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'February - 2023', '2023-04-17 09:10:48', 1, 0, NULL, NULL, NULL, NULL, NULL),
(389, '14-Feb-2023', '15', 'GS', '08:53', '16:51', '7:58', '00:00', '7:58', 'Present', '', 'February - 2023', '2023-04-17 09:10:48', 1, 1, NULL, NULL, NULL, NULL, NULL),
(390, '14-Feb-2023', '16', 'GS', '08:21', '16:51', '8:30', '00:00', '8:30', 'Present', '', 'February - 2023', '2023-04-17 09:10:48', 1, 1, NULL, NULL, NULL, NULL, NULL),
(391, '14-Feb-2023', '17', 'GS', '07:28', '17:18', '9:19', '00:00', '9:19', 'Present', '', 'February - 2023', '2023-04-17 09:10:48', 1, 1, NULL, NULL, NULL, NULL, NULL),
(392, '14-Feb-2023', '18', 'GS', '07:28', '17:17', '9:17', '00:00', '9:17', 'Present', '', 'February - 2023', '2023-04-17 09:10:48', 1, 1, NULL, NULL, NULL, NULL, NULL),
(393, '14-Feb-2023', '19', 'GS', '07:28', '17:14', '9:15', '00:00', '9:15', 'Present', '', 'February - 2023', '2023-04-17 09:10:48', 1, 1, NULL, NULL, NULL, NULL, NULL),
(394, '14-Feb-2023', '20', 'GS', '08:00', '17:49', '9:00', '00:49', '9:49', 'Present', '', 'February - 2023', '2023-04-17 09:10:48', 1, 1, NULL, NULL, NULL, NULL, NULL),
(395, '14-Feb-2023', '21', 'GS', '07:41', '16:59', '9:00', '00:00', '9:00', 'Present', '', 'February - 2023', '2023-04-17 09:10:48', 1, 1, NULL, NULL, NULL, NULL, NULL),
(396, '14-Feb-2023', '22', 'GS', '08:11', '14:00', '5:49', '00:00', '5:49', 'Present', '', 'February - 2023', '2023-04-17 09:10:48', 1, 1, NULL, NULL, NULL, NULL, NULL),
(397, '14-Feb-2023', '23', 'GS', '11:38', '', '00:00', '00:00', '00:00', 'Absent (No OutPunch)', '', 'February - 2023', '2023-04-17 09:10:48', 1, 0, NULL, NULL, NULL, NULL, NULL),
(398, '14-Feb-2023', '24', 'Sam', '01:07', '21:08', '00:00', '20:01', '20:01', 'Absent', '', 'February - 2023', '2023-04-17 09:10:48', 1, 0, NULL, NULL, NULL, NULL, NULL),
(399, '14-Feb-2023', '26', 'GS', '07:41', '17:00', '9:01', '00:00', '9:01', 'Present', '', 'February - 2023', '2023-04-17 09:10:48', 1, 1, NULL, NULL, NULL, NULL, NULL),
(400, '14-Feb-2023', '28', 'GS', '07:41', '17:00', '9:01', '00:00', '9:01', 'Present', '', 'February - 2023', '2023-04-17 09:10:48', 1, 1, NULL, NULL, NULL, NULL, NULL),
(401, '14-Feb-2023', '30', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'February - 2023', '2023-04-17 09:10:48', 1, 0, NULL, NULL, NULL, NULL, NULL),
(402, '14-Feb-2023', '33', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'February - 2023', '2023-04-17 09:10:48', 1, 0, NULL, NULL, NULL, NULL, NULL),
(403, '14-Feb-2023', '34', 'NS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'February - 2023', '2023-04-17 09:10:48', 1, 0, NULL, NULL, NULL, NULL, NULL),
(404, '14-Feb-2023', '35', 'NS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'February - 2023', '2023-04-17 09:10:48', 1, 0, NULL, NULL, NULL, NULL, NULL),
(405, '14-Feb-2023', '36', 'NS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'February - 2023', '2023-04-17 09:10:48', 1, 0, NULL, NULL, NULL, NULL, NULL),
(406, '14-Feb-2023', '', '', '', '', '', '', '', '', '', 'February - 2023', '2023-04-17 09:10:48', 1, 0, NULL, NULL, NULL, NULL, NULL),
(407, '15-Feb-2023', '1', 'GS', '14:17', '', '00:00', '00:00', '00:00', 'Absent (No OutPunch)', '', 'February - 2023', '2023-04-17 09:10:48', 1, 0, NULL, NULL, NULL, NULL, NULL),
(408, '15-Feb-2023', '3', 'GS', '05:43', '18:24', '9:01', '1:24', '10:25', 'Present', '', 'February - 2023', '2023-04-17 09:10:48', 1, 1, NULL, NULL, NULL, NULL, NULL),
(409, '15-Feb-2023', '4', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'February - 2023', '2023-04-17 09:10:48', 1, 0, NULL, NULL, NULL, NULL, NULL),
(410, '15-Feb-2023', '5', 'GS', '07:30', '17:06', '9:03', '00:00', '9:03', 'Present', '', 'February - 2023', '2023-04-17 09:10:48', 1, 1, NULL, NULL, NULL, NULL, NULL),
(411, '15-Feb-2023', '6', 'GS', '07:21', '16:59', '9:00', '00:00', '9:00', 'Present', '', 'February - 2023', '2023-04-17 09:10:48', 1, 1, NULL, NULL, NULL, NULL, NULL),
(412, '15-Feb-2023', '7', 'GS', '07:20', '17:00', '9:01', '00:00', '9:01', 'Present', '', 'February - 2023', '2023-04-17 09:10:48', 1, 1, NULL, NULL, NULL, NULL, NULL),
(413, '15-Feb-2023', '8', 'GS', '07:53', '16:57', '8:58', '00:00', '8:58', 'Present', '', 'February - 2023', '2023-04-17 09:10:48', 1, 1, NULL, NULL, NULL, NULL, NULL),
(414, '15-Feb-2023', '9', 'GS', '07:21', '17:00', '9:01', '00:00', '9:01', 'Present', '', 'February - 2023', '2023-04-17 09:10:48', 1, 1, NULL, NULL, NULL, NULL, NULL),
(415, '15-Feb-2023', '10', 'GS', '07:20', '17:01', '9:02', '00:00', '9:02', 'Present', '', 'February - 2023', '2023-04-17 09:10:48', 1, 1, NULL, NULL, NULL, NULL, NULL),
(416, '15-Feb-2023', '11', 'GS', '07:20', '17:01', '9:02', '00:00', '9:02', 'Present', '', 'February - 2023', '2023-04-17 09:10:48', 1, 1, NULL, NULL, NULL, NULL, NULL),
(417, '15-Feb-2023', '14', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'February - 2023', '2023-04-17 09:10:48', 1, 0, NULL, NULL, NULL, NULL, NULL),
(418, '15-Feb-2023', '15', 'GS', '09:25', '16:51', '7:26', '00:00', '7:26', 'Present', '', 'February - 2023', '2023-04-17 09:10:48', 1, 1, NULL, NULL, NULL, NULL, NULL),
(419, '15-Feb-2023', '16', 'GS', '07:53', '16:49', '8:50', '00:00', '8:50', 'Present', '', 'February - 2023', '2023-04-17 09:10:48', 1, 1, NULL, NULL, NULL, NULL, NULL),
(420, '15-Feb-2023', '17', 'GS', '07:30', '17:16', '9:17', '00:00', '9:17', 'Present', '', 'February - 2023', '2023-04-17 09:10:48', 1, 1, NULL, NULL, NULL, NULL, NULL),
(421, '15-Feb-2023', '18', 'GS', '07:30', '17:02', '9:03', '00:00', '9:03', 'Present', '', 'February - 2023', '2023-04-17 09:10:48', 1, 1, NULL, NULL, NULL, NULL, NULL),
(422, '15-Feb-2023', '19', 'GS', '07:30', '17:13', '9:14', '00:00', '9:14', 'Present', '', 'February - 2023', '2023-04-17 09:10:48', 1, 1, NULL, NULL, NULL, NULL, NULL),
(423, '15-Feb-2023', '20', 'GS', '07:10', '16:24', '8:25', '00:00', '8:25', 'Present', '', 'February - 2023', '2023-04-17 09:10:48', 1, 1, NULL, NULL, NULL, NULL, NULL),
(424, '15-Feb-2023', '21', 'GS', '07:21', '17:01', '9:02', '00:00', '9:02', 'Present', '', 'February - 2023', '2023-04-17 09:10:48', 1, 1, NULL, NULL, NULL, NULL, NULL),
(425, '15-Feb-2023', '22', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'February - 2023', '2023-04-17 09:10:48', 1, 0, NULL, NULL, NULL, NULL, NULL),
(426, '15-Feb-2023', '23', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'February - 2023', '2023-04-17 09:10:48', 1, 0, NULL, NULL, NULL, NULL, NULL),
(427, '15-Feb-2023', '24', 'Sam', '01:06', '21:07', '00:00', '20:01', '20:01', 'Absent', '', 'February - 2023', '2023-04-17 09:10:48', 1, 0, NULL, NULL, NULL, NULL, NULL),
(428, '15-Feb-2023', '26', 'GS', '07:21', '17:01', '9:02', '00:00', '9:02', 'Present', '', 'February - 2023', '2023-04-17 09:10:48', 1, 1, NULL, NULL, NULL, NULL, NULL),
(429, '15-Feb-2023', '28', 'GS', '07:20', '17:00', '9:01', '00:00', '9:01', 'Present', '', 'February - 2023', '2023-04-17 09:10:48', 1, 1, NULL, NULL, NULL, NULL, NULL),
(430, '15-Feb-2023', '30', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'February - 2023', '2023-04-17 09:10:48', 1, 0, NULL, NULL, NULL, NULL, NULL),
(431, '15-Feb-2023', '33', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'February - 2023', '2023-04-17 09:10:48', 1, 0, NULL, NULL, NULL, NULL, NULL),
(432, '15-Feb-2023', '34', 'NS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'February - 2023', '2023-04-17 09:10:48', 1, 0, NULL, NULL, NULL, NULL, NULL),
(433, '15-Feb-2023', '35', 'NS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'February - 2023', '2023-04-17 09:10:48', 1, 0, NULL, NULL, NULL, NULL, NULL),
(434, '15-Feb-2023', '36', 'NS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'February - 2023', '2023-04-17 09:10:48', 1, 0, NULL, NULL, NULL, NULL, NULL),
(435, '15-Feb-2023', '', '', '', '', '', '', '', '', '', 'February - 2023', '2023-04-17 09:10:48', 1, 0, NULL, NULL, NULL, NULL, NULL),
(436, '16-Feb-2023', '1', 'GS', '10:48', '', '00:00', '00:00', '00:00', 'Absent (No OutPunch)', '', 'February - 2023', '2023-04-17 09:10:48', 1, 0, NULL, NULL, NULL, NULL, NULL),
(437, '16-Feb-2023', '3', 'GS', '05:35', '18:10', '9:01', '1:10', '10:11', 'Present', '', 'February - 2023', '2023-04-17 09:10:48', 1, 1, NULL, NULL, NULL, NULL, NULL),
(438, '16-Feb-2023', '4', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'February - 2023', '2023-04-17 09:10:48', 1, 0, NULL, NULL, NULL, NULL, NULL),
(439, '16-Feb-2023', '5', 'GS', '07:27', '17:00', '9:01', '00:00', '9:01', 'Present', '', 'February - 2023', '2023-04-17 09:10:48', 1, 1, NULL, NULL, NULL, NULL, NULL),
(440, '16-Feb-2023', '6', 'GS', '07:35', '17:01', '9:02', '00:00', '9:02', 'Present', '', 'February - 2023', '2023-04-17 09:10:48', 1, 1, NULL, NULL, NULL, NULL, NULL),
(441, '16-Feb-2023', '7', 'GS', '07:35', '16:59', '9:00', '00:00', '9:00', 'Present', '', 'February - 2023', '2023-04-17 09:10:48', 1, 1, NULL, NULL, NULL, NULL, NULL),
(442, '16-Feb-2023', '8', 'GS', '08:04', '17:02', '8:58', '00:00', '8:58', 'Present', '', 'February - 2023', '2023-04-17 09:10:48', 1, 1, NULL, NULL, NULL, NULL, NULL),
(443, '16-Feb-2023', '9', 'GS', '07:35', '16:59', '9:00', '00:00', '9:00', 'Present', '', 'February - 2023', '2023-04-17 09:10:48', 1, 1, NULL, NULL, NULL, NULL, NULL),
(444, '16-Feb-2023', '10', 'GS', '07:35', '17:02', '9:03', '00:00', '9:03', 'Present', '', 'February - 2023', '2023-04-17 09:10:48', 1, 1, NULL, NULL, NULL, NULL, NULL),
(445, '16-Feb-2023', '11', 'GS', '07:35', '17:04', '9:05', '00:00', '9:05', 'Present', '', 'February - 2023', '2023-04-17 09:10:48', 1, 1, NULL, NULL, NULL, NULL, NULL),
(446, '16-Feb-2023', '14', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'February - 2023', '2023-04-17 09:10:48', 1, 0, NULL, NULL, NULL, NULL, NULL),
(447, '16-Feb-2023', '15', 'GS', '09:01', '16:53', '7:52', '00:00', '7:52', 'Present', '', 'February - 2023', '2023-04-17 09:10:48', 1, 1, NULL, NULL, NULL, NULL, NULL),
(448, '16-Feb-2023', '16', 'GS', '09:35', '16:53', '7:18', '00:00', '7:18', 'Present', '', 'February - 2023', '2023-04-17 09:10:48', 1, 1, NULL, NULL, NULL, NULL, NULL),
(449, '16-Feb-2023', '17', 'GS', '07:28', '17:17', '9:18', '00:00', '9:18', 'Present', '', 'February - 2023', '2023-04-17 09:10:48', 1, 1, NULL, NULL, NULL, NULL, NULL),
(450, '16-Feb-2023', '18', 'GS', '07:27', '17:15', '9:16', '00:00', '9:16', 'Present', '', 'February - 2023', '2023-04-17 09:10:48', 1, 1, NULL, NULL, NULL, NULL, NULL),
(451, '16-Feb-2023', '19', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'February - 2023', '2023-04-17 09:10:48', 1, 0, NULL, NULL, NULL, NULL, NULL),
(452, '16-Feb-2023', '20', 'GS', '06:57', '17:49', '9:01', '00:49', '9:50', 'Present', '', 'February - 2023', '2023-04-17 09:10:48', 1, 1, NULL, NULL, NULL, NULL, NULL),
(453, '16-Feb-2023', '21', 'GS', '07:35', '17:00', '9:01', '00:00', '9:01', 'Present', '', 'February - 2023', '2023-04-17 09:10:48', 1, 1, NULL, NULL, NULL, NULL, NULL),
(454, '16-Feb-2023', '22', 'GS', '08:14', '14:01', '5:47', '00:00', '5:47', 'Present', '', 'February - 2023', '2023-04-17 09:10:48', 1, 1, NULL, NULL, NULL, NULL, NULL),
(455, '16-Feb-2023', '23', 'GS', '13:45', '', '00:00', '00:00', '00:00', 'Absent (No OutPunch)', '', 'February - 2023', '2023-04-17 09:10:48', 1, 0, NULL, NULL, NULL, NULL, NULL),
(456, '16-Feb-2023', '24', 'Sam', '01:04', '21:06', '00:01', '20:01', '20:02', 'Absent', '', 'February - 2023', '2023-04-17 09:10:48', 1, 0, NULL, NULL, NULL, NULL, NULL),
(457, '16-Feb-2023', '26', 'GS', '07:35', '17:01', '9:02', '00:00', '9:02', 'Present', '', 'February - 2023', '2023-04-17 09:10:48', 1, 1, NULL, NULL, NULL, NULL, NULL),
(458, '16-Feb-2023', '28', 'GS', '07:35', '16:59', '9:00', '00:00', '9:00', 'Present', '', 'February - 2023', '2023-04-17 09:10:48', 1, 1, NULL, NULL, NULL, NULL, NULL),
(459, '16-Feb-2023', '30', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'February - 2023', '2023-04-17 09:10:48', 1, 0, NULL, NULL, NULL, NULL, NULL),
(460, '16-Feb-2023', '33', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'February - 2023', '2023-04-17 09:10:48', 1, 0, NULL, NULL, NULL, NULL, NULL),
(461, '16-Feb-2023', '34', 'NS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'February - 2023', '2023-04-17 09:10:48', 1, 0, NULL, NULL, NULL, NULL, NULL),
(462, '16-Feb-2023', '35', 'NS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'February - 2023', '2023-04-17 09:10:48', 1, 0, NULL, NULL, NULL, NULL, NULL),
(463, '16-Feb-2023', '36', 'NS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'February - 2023', '2023-04-17 09:10:48', 1, 0, NULL, NULL, NULL, NULL, NULL),
(464, '16-Feb-2023', '', '', '', '', '', '', '', '', '', 'February - 2023', '2023-04-17 09:10:48', 1, 0, NULL, NULL, NULL, NULL, NULL),
(465, '17-Feb-2023', '1', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'February - 2023', '2023-04-17 09:10:48', 1, 0, NULL, NULL, NULL, NULL, NULL),
(466, '17-Feb-2023', '3', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'February - 2023', '2023-04-17 09:10:48', 1, 0, NULL, NULL, NULL, NULL, NULL),
(467, '17-Feb-2023', '4', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'February - 2023', '2023-04-17 09:10:48', 1, 0, NULL, NULL, NULL, NULL, NULL),
(468, '17-Feb-2023', '5', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'February - 2023', '2023-04-17 09:10:48', 1, 0, NULL, NULL, NULL, NULL, NULL),
(469, '17-Feb-2023', '6', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'February - 2023', '2023-04-17 09:10:48', 1, 0, NULL, NULL, NULL, NULL, NULL),
(470, '17-Feb-2023', '7', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'February - 2023', '2023-04-17 09:10:48', 1, 0, NULL, NULL, NULL, NULL, NULL),
(471, '17-Feb-2023', '8', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'February - 2023', '2023-04-17 09:10:48', 1, 0, NULL, NULL, NULL, NULL, NULL),
(472, '17-Feb-2023', '9', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'February - 2023', '2023-04-17 09:10:48', 1, 0, NULL, NULL, NULL, NULL, NULL),
(473, '17-Feb-2023', '10', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'February - 2023', '2023-04-17 09:10:48', 1, 0, NULL, NULL, NULL, NULL, NULL),
(474, '17-Feb-2023', '11', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'February - 2023', '2023-04-17 09:10:48', 1, 0, NULL, NULL, NULL, NULL, NULL),
(475, '17-Feb-2023', '14', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'February - 2023', '2023-04-17 09:10:48', 1, 0, NULL, NULL, NULL, NULL, NULL),
(476, '17-Feb-2023', '15', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'February - 2023', '2023-04-17 09:10:48', 1, 0, NULL, NULL, NULL, NULL, NULL),
(477, '17-Feb-2023', '16', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'February - 2023', '2023-04-17 09:10:48', 1, 0, NULL, NULL, NULL, NULL, NULL),
(478, '17-Feb-2023', '17', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'February - 2023', '2023-04-17 09:10:48', 1, 0, NULL, NULL, NULL, NULL, NULL),
(479, '17-Feb-2023', '18', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'February - 2023', '2023-04-17 09:10:48', 1, 0, NULL, NULL, NULL, NULL, NULL),
(480, '17-Feb-2023', '19', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'February - 2023', '2023-04-17 09:10:48', 1, 0, NULL, NULL, NULL, NULL, NULL),
(481, '17-Feb-2023', '20', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'February - 2023', '2023-04-17 09:10:48', 1, 0, NULL, NULL, NULL, NULL, NULL),
(482, '17-Feb-2023', '21', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'February - 2023', '2023-04-17 09:10:48', 1, 0, NULL, NULL, NULL, NULL, NULL),
(483, '17-Feb-2023', '22', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'February - 2023', '2023-04-17 09:10:48', 1, 0, NULL, NULL, NULL, NULL, NULL),
(484, '17-Feb-2023', '23', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'February - 2023', '2023-04-17 09:10:48', 1, 0, NULL, NULL, NULL, NULL, NULL),
(485, '17-Feb-2023', '24', 'Sam', '01:05', '15:24', '00:01', '14:18', '14:19', 'Absent', '', 'February - 2023', '2023-04-17 09:10:48', 1, 0, NULL, NULL, NULL, NULL, NULL),
(486, '17-Feb-2023', '26', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'February - 2023', '2023-04-17 09:10:48', 1, 0, NULL, NULL, NULL, NULL, NULL),
(487, '17-Feb-2023', '28', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'February - 2023', '2023-04-17 09:10:48', 1, 0, NULL, NULL, NULL, NULL, NULL),
(488, '17-Feb-2023', '30', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'February - 2023', '2023-04-17 09:10:48', 1, 0, NULL, NULL, NULL, NULL, NULL),
(489, '17-Feb-2023', '33', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'February - 2023', '2023-04-17 09:10:48', 1, 0, NULL, NULL, NULL, NULL, NULL),
(490, '17-Feb-2023', '34', 'NS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'February - 2023', '2023-04-17 09:10:48', 1, 0, NULL, NULL, NULL, NULL, NULL),
(491, '17-Feb-2023', '35', 'NS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'February - 2023', '2023-04-17 09:10:48', 1, 0, NULL, NULL, NULL, NULL, NULL),
(492, '17-Feb-2023', '36', 'NS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'February - 2023', '2023-04-17 09:10:48', 1, 0, NULL, NULL, NULL, NULL, NULL),
(493, '17-Feb-2023', '', '', '', '', '', '', '', '', '', 'February - 2023', '2023-04-17 09:10:48', 1, 0, NULL, NULL, NULL, NULL, NULL),
(494, '18-Feb-2023', '1', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'February - 2023', '2023-04-17 09:10:48', 1, 0, NULL, NULL, NULL, NULL, NULL),
(495, '18-Feb-2023', '3', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'February - 2023', '2023-04-17 09:10:48', 1, 0, NULL, NULL, NULL, NULL, NULL),
(496, '18-Feb-2023', '4', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'February - 2023', '2023-04-17 09:10:48', 1, 0, NULL, NULL, NULL, NULL, NULL),
(497, '18-Feb-2023', '5', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'February - 2023', '2023-04-17 09:10:48', 1, 0, NULL, NULL, NULL, NULL, NULL),
(498, '18-Feb-2023', '6', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'February - 2023', '2023-04-17 09:10:48', 1, 0, NULL, NULL, NULL, NULL, NULL),
(499, '18-Feb-2023', '7', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'February - 2023', '2023-04-17 09:10:48', 1, 0, NULL, NULL, NULL, NULL, NULL),
(500, '18-Feb-2023', '8', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'February - 2023', '2023-04-17 09:10:48', 1, 0, NULL, NULL, NULL, NULL, NULL),
(501, '18-Feb-2023', '9', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'February - 2023', '2023-04-17 09:10:48', 1, 0, NULL, NULL, NULL, NULL, NULL),
(502, '18-Feb-2023', '10', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'February - 2023', '2023-04-17 09:10:48', 1, 0, NULL, NULL, NULL, NULL, NULL),
(503, '18-Feb-2023', '11', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'February - 2023', '2023-04-17 09:10:48', 1, 0, NULL, NULL, NULL, NULL, NULL),
(504, '18-Feb-2023', '14', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'February - 2023', '2023-04-17 09:10:49', 1, 0, NULL, NULL, NULL, NULL, NULL),
(505, '18-Feb-2023', '15', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'February - 2023', '2023-04-17 09:10:49', 1, 0, NULL, NULL, NULL, NULL, NULL),
(506, '18-Feb-2023', '16', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'February - 2023', '2023-04-17 09:10:49', 1, 0, NULL, NULL, NULL, NULL, NULL),
(507, '18-Feb-2023', '17', 'GS', '08:21', '12:05', '00:00', '3:44', '3:44', 'WeeklyOff Present', '', 'February - 2023', '2023-04-17 09:10:49', 1, 0, NULL, NULL, NULL, NULL, NULL),
(508, '18-Feb-2023', '18', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'February - 2023', '2023-04-17 09:10:49', 1, 0, NULL, NULL, NULL, NULL, NULL),
(509, '18-Feb-2023', '19', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'February - 2023', '2023-04-17 09:10:49', 1, 0, NULL, NULL, NULL, NULL, NULL),
(510, '18-Feb-2023', '20', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'February - 2023', '2023-04-17 09:10:49', 1, 0, NULL, NULL, NULL, NULL, NULL),
(511, '18-Feb-2023', '21', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'February - 2023', '2023-04-17 09:10:49', 1, 0, NULL, NULL, NULL, NULL, NULL),
(512, '18-Feb-2023', '22', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'February - 2023', '2023-04-17 09:10:49', 1, 0, NULL, NULL, NULL, NULL, NULL),
(513, '18-Feb-2023', '23', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'February - 2023', '2023-04-17 09:10:49', 1, 0, NULL, NULL, NULL, NULL, NULL),
(514, '18-Feb-2023', '24', 'Sam', '07:55', '21:08', '00:00', '13:13', '13:13', 'WeeklyOff Present', '', 'February - 2023', '2023-04-17 09:10:49', 1, 0, NULL, NULL, NULL, NULL, NULL),
(515, '18-Feb-2023', '26', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'February - 2023', '2023-04-17 09:10:49', 1, 0, NULL, NULL, NULL, NULL, NULL),
(516, '18-Feb-2023', '28', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'February - 2023', '2023-04-17 09:10:49', 1, 0, NULL, NULL, NULL, NULL, NULL),
(517, '18-Feb-2023', '30', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'February - 2023', '2023-04-17 09:10:49', 1, 0, NULL, NULL, NULL, NULL, NULL),
(518, '18-Feb-2023', '33', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'February - 2023', '2023-04-17 09:10:49', 1, 0, NULL, NULL, NULL, NULL, NULL),
(519, '18-Feb-2023', '34', 'NS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'February - 2023', '2023-04-17 09:10:49', 1, 0, NULL, NULL, NULL, NULL, NULL),
(520, '18-Feb-2023', '35', 'NS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'February - 2023', '2023-04-17 09:10:49', 1, 0, NULL, NULL, NULL, NULL, NULL),
(521, '18-Feb-2023', '36', 'NS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'February - 2023', '2023-04-17 09:10:49', 1, 0, NULL, NULL, NULL, NULL, NULL),
(522, '18-Feb-2023', '', '', '', '', '', '', '', '', '', 'February - 2023', '2023-04-17 09:10:49', 1, 0, NULL, NULL, NULL, NULL, NULL),
(523, '19-Feb-2023', '1', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'February - 2023', '2023-04-17 09:10:49', 1, 0, NULL, NULL, NULL, NULL, NULL),
(524, '19-Feb-2023', '3', 'GS', '05:41', '18:09', '00:00', '12:28', '12:28', 'WeeklyOff Present', '', 'February - 2023', '2023-04-17 09:10:49', 1, 0, NULL, NULL, NULL, NULL, NULL),
(525, '19-Feb-2023', '4', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'February - 2023', '2023-04-17 09:10:49', 1, 0, NULL, NULL, NULL, NULL, NULL),
(526, '19-Feb-2023', '5', 'GS', '07:25', '17:05', '00:00', '9:40', '9:40', 'WeeklyOff Present', '', 'February - 2023', '2023-04-17 09:10:49', 1, 0, NULL, NULL, NULL, NULL, NULL),
(527, '19-Feb-2023', '6', 'GS', '07:36', '17:01', '00:00', '9:25', '9:25', 'WeeklyOff Present', '', 'February - 2023', '2023-04-17 09:10:49', 1, 0, NULL, NULL, NULL, NULL, NULL),
(528, '19-Feb-2023', '7', 'GS', '07:36', '17:01', '00:00', '9:25', '9:25', 'WeeklyOff Present', '', 'February - 2023', '2023-04-17 09:10:49', 1, 0, NULL, NULL, NULL, NULL, NULL),
(529, '19-Feb-2023', '8', 'GS', '08:05', '16:59', '00:00', '8:52', '8:52', 'WeeklyOff Present', '', 'February - 2023', '2023-04-17 09:10:49', 1, 0, NULL, NULL, NULL, NULL, NULL),
(530, '19-Feb-2023', '9', 'GS', '07:36', '16:58', '00:00', '9:22', '9:22', 'WeeklyOff Present', '', 'February - 2023', '2023-04-17 09:10:49', 1, 0, NULL, NULL, NULL, NULL, NULL),
(531, '19-Feb-2023', '10', 'GS', '07:36', '16:58', '00:00', '9:22', '9:22', 'WeeklyOff Present', '', 'February - 2023', '2023-04-17 09:10:49', 1, 0, NULL, NULL, NULL, NULL, NULL),
(532, '19-Feb-2023', '11', 'GS', '07:36', '17:01', '00:00', '9:25', '9:25', 'WeeklyOff Present', '', 'February - 2023', '2023-04-17 09:10:49', 1, 0, NULL, NULL, NULL, NULL, NULL),
(533, '19-Feb-2023', '14', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'February - 2023', '2023-04-17 09:10:49', 1, 0, NULL, NULL, NULL, NULL, NULL),
(534, '19-Feb-2023', '15', 'GS', '08:16', '16:12', '00:00', '7:56', '7:56', 'WeeklyOff Present', '', 'February - 2023', '2023-04-17 09:10:49', 1, 0, NULL, NULL, NULL, NULL, NULL),
(535, '19-Feb-2023', '16', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'February - 2023', '2023-04-17 09:10:49', 1, 0, NULL, NULL, NULL, NULL, NULL),
(536, '19-Feb-2023', '17', 'GS', '07:25', '17:16', '00:00', '9:51', '9:51', 'WeeklyOff Present', '', 'February - 2023', '2023-04-17 09:10:49', 1, 0, NULL, NULL, NULL, NULL, NULL),
(537, '19-Feb-2023', '18', 'GS', '07:25', '17:17', '00:00', '9:52', '9:52', 'WeeklyOff Present', '', 'February - 2023', '2023-04-17 09:10:49', 1, 0, NULL, NULL, NULL, NULL, NULL),
(538, '19-Feb-2023', '19', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'February - 2023', '2023-04-17 09:10:49', 1, 0, NULL, NULL, NULL, NULL, NULL),
(539, '19-Feb-2023', '20', 'GS', '07:14', '17:35', '00:00', '10:21', '10:21', 'WeeklyOff Present', '', 'February - 2023', '2023-04-17 09:10:49', 1, 0, NULL, NULL, NULL, NULL, NULL),
(540, '19-Feb-2023', '21', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'February - 2023', '2023-04-17 09:10:49', 1, 0, NULL, NULL, NULL, NULL, NULL),
(541, '19-Feb-2023', '22', 'GS', '08:17', '13:55', '00:00', '5:38', '5:38', 'WeeklyOff Present', '', 'February - 2023', '2023-04-17 09:10:49', 1, 0, NULL, NULL, NULL, NULL, NULL),
(542, '19-Feb-2023', '23', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'February - 2023', '2023-04-17 09:10:49', 1, 0, NULL, NULL, NULL, NULL, NULL),
(543, '19-Feb-2023', '24', 'Sam', '01:07', '13:35', '00:00', '12:28', '12:28', 'WeeklyOff Present', '', 'February - 2023', '2023-04-17 09:10:49', 1, 0, NULL, NULL, NULL, NULL, NULL),
(544, '19-Feb-2023', '26', 'GS', '07:36', '16:58', '00:00', '9:22', '9:22', 'WeeklyOff Present', '', 'February - 2023', '2023-04-17 09:10:49', 1, 0, NULL, NULL, NULL, NULL, NULL),
(545, '19-Feb-2023', '28', 'GS', '07:36', '16:58', '00:00', '9:22', '9:22', 'WeeklyOff Present', '', 'February - 2023', '2023-04-17 09:10:49', 1, 0, NULL, NULL, NULL, NULL, NULL),
(546, '19-Feb-2023', '30', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'February - 2023', '2023-04-17 09:10:49', 1, 0, NULL, NULL, NULL, NULL, NULL),
(547, '19-Feb-2023', '33', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'February - 2023', '2023-04-17 09:10:49', 1, 0, NULL, NULL, NULL, NULL, NULL),
(548, '19-Feb-2023', '34', 'NS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'February - 2023', '2023-04-17 09:10:49', 1, 0, NULL, NULL, NULL, NULL, NULL),
(549, '19-Feb-2023', '35', 'NS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'February - 2023', '2023-04-17 09:10:49', 1, 0, NULL, NULL, NULL, NULL, NULL),
(550, '19-Feb-2023', '36', 'NS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'February - 2023', '2023-04-17 09:10:49', 1, 0, NULL, NULL, NULL, NULL, NULL),
(551, '19-Feb-2023', '', '', '', '', '', '', '', '', '', 'February - 2023', '2023-04-17 09:10:49', 1, 0, NULL, NULL, NULL, NULL, NULL),
(552, '20-Feb-2023', '1', 'GS', '12:20', '', '00:00', '00:00', '00:00', 'Absent (No OutPunch)', '', 'February - 2023', '2023-04-17 09:10:49', 1, 0, NULL, NULL, NULL, NULL, NULL),
(553, '20-Feb-2023', '3', 'GS', '05:32', '18:20', '9:01', '1:20', '10:21', 'Present', '', 'February - 2023', '2023-04-17 09:10:49', 1, 1, NULL, NULL, NULL, NULL, NULL),
(554, '20-Feb-2023', '4', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'February - 2023', '2023-04-17 09:10:49', 1, 0, NULL, NULL, NULL, NULL, NULL),
(555, '20-Feb-2023', '5', 'GS', '07:37', '17:09', '9:10', '00:00', '9:10', 'Present', '', 'February - 2023', '2023-04-17 09:10:49', 1, 1, NULL, NULL, NULL, NULL, NULL),
(556, '20-Feb-2023', '6', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'February - 2023', '2023-04-17 09:10:49', 1, 0, NULL, NULL, NULL, NULL, NULL),
(557, '20-Feb-2023', '7', 'GS', '07:38', '17:00', '9:01', '00:00', '9:01', 'Present', '', 'February - 2023', '2023-04-17 09:10:49', 1, 1, NULL, NULL, NULL, NULL, NULL),
(558, '20-Feb-2023', '8', 'GS', '08:03', '16:54', '8:48', '00:00', '8:48', 'Present', '', 'February - 2023', '2023-04-17 09:10:49', 1, 1, NULL, NULL, NULL, NULL, NULL),
(559, '20-Feb-2023', '9', 'GS', '07:39', '16:59', '9:00', '00:00', '9:00', 'Present', '', 'February - 2023', '2023-04-17 09:10:49', 1, 1, NULL, NULL, NULL, NULL, NULL),
(560, '20-Feb-2023', '10', 'GS', '07:38', '16:59', '9:00', '00:00', '9:00', 'Present', '', 'February - 2023', '2023-04-17 09:10:49', 1, 1, NULL, NULL, NULL, NULL, NULL),
(561, '20-Feb-2023', '11', 'GS', '07:38', '17:00', '9:01', '00:00', '9:01', 'Present', '', 'February - 2023', '2023-04-17 09:10:49', 1, 1, NULL, NULL, NULL, NULL, NULL),
(562, '20-Feb-2023', '14', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'February - 2023', '2023-04-17 09:10:49', 1, 0, NULL, NULL, NULL, NULL, NULL),
(563, '20-Feb-2023', '15', 'GS', '09:29', '16:55', '7:26', '00:00', '7:26', 'Present', '', 'February - 2023', '2023-04-17 09:10:49', 1, 1, NULL, NULL, NULL, NULL, NULL),
(564, '20-Feb-2023', '16', 'GS', '07:52', '16:56', '8:57', '00:00', '8:57', 'Present', '', 'February - 2023', '2023-04-17 09:10:49', 1, 1, NULL, NULL, NULL, NULL, NULL),
(565, '20-Feb-2023', '17', 'GS', '07:37', '17:14', '9:15', '00:00', '9:15', 'Present', '', 'February - 2023', '2023-04-17 09:10:49', 1, 1, NULL, NULL, NULL, NULL, NULL),
(566, '20-Feb-2023', '18', 'GS', '07:59', '17:12', '9:13', '00:00', '9:13', 'Present', '', 'February - 2023', '2023-04-17 09:10:49', 1, 1, NULL, NULL, NULL, NULL, NULL),
(567, '20-Feb-2023', '19', 'GS', '07:37', '17:13', '9:14', '00:00', '9:14', 'Present', '', 'February - 2023', '2023-04-17 09:10:49', 1, 1, NULL, NULL, NULL, NULL, NULL),
(568, '20-Feb-2023', '20', 'GS', '06:28', '17:35', '9:01', '00:34', '9:35', 'Present', '', 'February - 2023', '2023-04-17 09:10:49', 1, 1, NULL, NULL, NULL, NULL, NULL),
(569, '20-Feb-2023', '21', 'GS', '07:38', '16:59', '9:00', '00:00', '9:00', 'Present', '', 'February - 2023', '2023-04-17 09:10:49', 1, 1, NULL, NULL, NULL, NULL, NULL),
(570, '20-Feb-2023', '22', 'GS', '08:23', '13:55', '5:32', '00:00', '5:32', 'Present', '', 'February - 2023', '2023-04-17 09:10:49', 1, 1, NULL, NULL, NULL, NULL, NULL),
(571, '20-Feb-2023', '23', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'February - 2023', '2023-04-17 09:10:49', 1, 0, NULL, NULL, NULL, NULL, NULL),
(572, '20-Feb-2023', '24', 'Sam', '06:19', '21:35', '00:01', '15:15', '15:16', 'Absent', '', 'February - 2023', '2023-04-17 09:10:49', 1, 0, NULL, NULL, NULL, NULL, NULL),
(573, '20-Feb-2023', '26', 'GS', '07:39', '16:59', '9:00', '00:00', '9:00', 'Present', '', 'February - 2023', '2023-04-17 09:10:49', 1, 1, NULL, NULL, NULL, NULL, NULL),
(574, '20-Feb-2023', '28', 'GS', '07:38', '16:59', '9:00', '00:00', '9:00', 'Present', '', 'February - 2023', '2023-04-17 09:10:49', 1, 1, NULL, NULL, NULL, NULL, NULL),
(575, '20-Feb-2023', '30', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'February - 2023', '2023-04-17 09:10:49', 1, 0, NULL, NULL, NULL, NULL, NULL),
(576, '20-Feb-2023', '33', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'February - 2023', '2023-04-17 09:10:49', 1, 0, NULL, NULL, NULL, NULL, NULL),
(577, '20-Feb-2023', '34', 'NS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'February - 2023', '2023-04-17 09:10:49', 1, 0, NULL, NULL, NULL, NULL, NULL),
(578, '20-Feb-2023', '35', 'NS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'February - 2023', '2023-04-17 09:10:49', 1, 0, NULL, NULL, NULL, NULL, NULL),
(579, '20-Feb-2023', '36', 'NS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'February - 2023', '2023-04-17 09:10:49', 1, 0, NULL, NULL, NULL, NULL, NULL),
(580, '20-Feb-2023', '', '', '', '', '', '', '', '', '', 'February - 2023', '2023-04-17 09:10:49', 1, 0, NULL, NULL, NULL, NULL, NULL),
(581, '21-Feb-2023', '1', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'February - 2023', '2023-04-17 09:10:49', 1, 0, NULL, NULL, NULL, NULL, NULL),
(582, '21-Feb-2023', '3', 'GS', '05:36', '18:32', '9:01', '1:32', '10:33', 'Present', '', 'February - 2023', '2023-04-17 09:10:49', 1, 1, NULL, NULL, NULL, NULL, NULL),
(583, '21-Feb-2023', '4', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'February - 2023', '2023-04-17 09:10:49', 1, 0, NULL, NULL, NULL, NULL, NULL),
(584, '21-Feb-2023', '5', 'GS', '07:29', '17:15', '9:16', '00:00', '9:16', 'Present', '', 'February - 2023', '2023-04-17 09:10:49', 1, 1, NULL, NULL, NULL, NULL, NULL),
(585, '21-Feb-2023', '6', 'GS', '07:42', '17:04', '9:05', '00:00', '9:05', 'Present', '', 'February - 2023', '2023-04-17 09:10:49', 1, 1, NULL, NULL, NULL, NULL, NULL),
(586, '21-Feb-2023', '7', 'GS', '07:42', '17:01', '9:02', '00:00', '9:02', 'Present', '', 'February - 2023', '2023-04-17 09:10:49', 1, 1, NULL, NULL, NULL, NULL, NULL),
(587, '21-Feb-2023', '8', 'GS', '08:10', '16:58', '8:43', '00:00', '8:43', 'Present', '', 'February - 2023', '2023-04-17 09:10:49', 1, 1, NULL, NULL, NULL, NULL, NULL),
(588, '21-Feb-2023', '9', 'GS', '07:42', '17:00', '9:01', '00:00', '9:01', 'Present', '', 'February - 2023', '2023-04-17 09:10:49', 1, 1, NULL, NULL, NULL, NULL, NULL),
(589, '21-Feb-2023', '10', 'GS', '07:42', '17:02', '9:03', '00:00', '9:03', 'Present', '', 'February - 2023', '2023-04-17 09:10:49', 1, 1, NULL, NULL, NULL, NULL, NULL),
(590, '21-Feb-2023', '11', 'GS', '07:42', '17:04', '9:05', '00:00', '9:05', 'Present', '', 'February - 2023', '2023-04-17 09:10:49', 1, 1, NULL, NULL, NULL, NULL, NULL),
(591, '21-Feb-2023', '14', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'February - 2023', '2023-04-17 09:10:49', 1, 0, NULL, NULL, NULL, NULL, NULL),
(592, '21-Feb-2023', '15', 'GS', '08:16', '15:52', '7:36', '00:00', '7:36', 'Present', '', 'February - 2023', '2023-04-17 09:10:49', 1, 1, NULL, NULL, NULL, NULL, NULL),
(593, '21-Feb-2023', '16', 'GS', '08:10', '16:52', '8:42', '00:00', '8:42', 'Present', '', 'February - 2023', '2023-04-17 09:10:49', 1, 1, NULL, NULL, NULL, NULL, NULL),
(594, '21-Feb-2023', '17', 'GS', '07:29', '17:17', '9:18', '00:00', '9:18', 'Present', '', 'February - 2023', '2023-04-17 09:10:49', 1, 1, NULL, NULL, NULL, NULL, NULL),
(595, '21-Feb-2023', '18', 'GS', '07:29', '17:16', '9:17', '00:00', '9:17', 'Present', '', 'February - 2023', '2023-04-17 09:10:49', 1, 1, NULL, NULL, NULL, NULL, NULL),
(596, '21-Feb-2023', '19', 'GS', '07:29', '17:16', '9:17', '00:00', '9:17', 'Present', '', 'February - 2023', '2023-04-17 09:10:49', 1, 1, NULL, NULL, NULL, NULL, NULL),
(597, '21-Feb-2023', '20', 'GS', '07:11', '18:03', '9:01', '1:03', '10:04', 'Present', '', 'February - 2023', '2023-04-17 09:10:49', 1, 1, NULL, NULL, NULL, NULL, NULL),
(598, '21-Feb-2023', '21', 'GS', '07:42', '17:02', '9:03', '00:00', '9:03', 'Present', '', 'February - 2023', '2023-04-17 09:10:49', 1, 1, NULL, NULL, NULL, NULL, NULL),
(599, '21-Feb-2023', '22', 'GS', '08:09', '13:48', '5:39', '00:00', '5:39', 'Present', '', 'February - 2023', '2023-04-17 09:10:49', 1, 1, NULL, NULL, NULL, NULL, NULL),
(600, '21-Feb-2023', '23', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'February - 2023', '2023-04-17 09:10:49', 1, 0, NULL, NULL, NULL, NULL, NULL),
(601, '21-Feb-2023', '24', 'Sam', '01:06', '21:07', '00:01', '20:00', '20:01', 'Absent', '', 'February - 2023', '2023-04-17 09:10:49', 1, 0, NULL, NULL, NULL, NULL, NULL),
(602, '21-Feb-2023', '26', 'GS', '07:42', '17:02', '9:03', '00:00', '9:03', 'Present', '', 'February - 2023', '2023-04-17 09:10:49', 1, 1, NULL, NULL, NULL, NULL, NULL),
(603, '21-Feb-2023', '28', 'GS', '07:42', '17:02', '9:03', '00:00', '9:03', 'Present', '', 'February - 2023', '2023-04-17 09:10:49', 1, 1, NULL, NULL, NULL, NULL, NULL),
(604, '21-Feb-2023', '30', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'February - 2023', '2023-04-17 09:10:49', 1, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_attendance_master` (`id`, `attend_date`, `attend_emp_id`, `attend_shift`, `attend_in_time`, `attend_out_time`, `attend_work_hours`, `attend_over_time`, `attend_total_hours`, `attend_status`, `attend_notes`, `attend_month_year`, `created_at`, `attend_import_by`, `attend_action_status`, `attend_action_by`, `attend_amount`, `attend_leave_category`, `attend_action_notes`, `attend_action_at`) VALUES
(605, '21-Feb-2023', '33', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'February - 2023', '2023-04-17 09:10:49', 1, 0, NULL, NULL, NULL, NULL, NULL),
(606, '21-Feb-2023', '34', 'NS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'February - 2023', '2023-04-17 09:10:49', 1, 0, NULL, NULL, NULL, NULL, NULL),
(607, '21-Feb-2023', '35', 'NS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'February - 2023', '2023-04-17 09:10:49', 1, 0, NULL, NULL, NULL, NULL, NULL),
(608, '21-Feb-2023', '36', 'NS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'February - 2023', '2023-04-17 09:10:49', 1, 0, NULL, NULL, NULL, NULL, NULL),
(609, '21-Feb-2023', '', '', '', '', '', '', '', '', '', 'February - 2023', '2023-04-17 09:10:49', 1, 0, NULL, NULL, NULL, NULL, NULL),
(610, '22-Feb-2023', '1', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'February - 2023', '2023-04-17 09:10:49', 1, 0, NULL, NULL, NULL, NULL, NULL),
(611, '22-Feb-2023', '3', 'GS', '05:43', '18:26', '9:01', '1:26', '10:27', 'Present', '', 'February - 2023', '2023-04-17 09:10:49', 1, 1, NULL, NULL, NULL, NULL, NULL),
(612, '22-Feb-2023', '4', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'February - 2023', '2023-04-17 09:10:49', 1, 0, NULL, NULL, NULL, NULL, NULL),
(613, '22-Feb-2023', '5', 'GS', '07:31', '17:16', '9:17', '00:00', '9:17', 'Present', '', 'February - 2023', '2023-04-17 09:10:49', 1, 1, NULL, NULL, NULL, NULL, NULL),
(614, '22-Feb-2023', '6', 'GS', '07:39', '17:00', '9:01', '00:00', '9:01', 'Present', '', 'February - 2023', '2023-04-17 09:10:49', 1, 1, NULL, NULL, NULL, NULL, NULL),
(615, '22-Feb-2023', '7', 'GS', '07:39', '17:00', '9:01', '00:00', '9:01', 'Present', '', 'February - 2023', '2023-04-17 09:10:49', 1, 1, NULL, NULL, NULL, NULL, NULL),
(616, '22-Feb-2023', '8', 'GS', '08:19', '16:52', '8:33', '00:00', '8:33', 'Present', '', 'February - 2023', '2023-04-17 09:10:49', 1, 1, NULL, NULL, NULL, NULL, NULL),
(617, '22-Feb-2023', '9', 'GS', '07:40', '17:00', '9:01', '00:00', '9:01', 'Present', '', 'February - 2023', '2023-04-17 09:10:49', 1, 1, NULL, NULL, NULL, NULL, NULL),
(618, '22-Feb-2023', '10', 'GS', '07:39', '16:58', '8:59', '00:00', '8:59', 'Present', '', 'February - 2023', '2023-04-17 09:10:49', 1, 1, NULL, NULL, NULL, NULL, NULL),
(619, '22-Feb-2023', '11', 'GS', '07:39', '17:00', '9:01', '00:00', '9:01', 'Present', '', 'February - 2023', '2023-04-17 09:10:49', 1, 1, NULL, NULL, NULL, NULL, NULL),
(620, '22-Feb-2023', '14', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'February - 2023', '2023-04-17 09:10:49', 1, 0, NULL, NULL, NULL, NULL, NULL),
(621, '22-Feb-2023', '15', 'GS', '09:24', '16:51', '7:27', '00:00', '7:27', 'Present', '', 'February - 2023', '2023-04-17 09:10:49', 1, 1, NULL, NULL, NULL, NULL, NULL),
(622, '22-Feb-2023', '16', 'GS', '08:12', '16:52', '8:40', '00:00', '8:40', 'Present', '', 'February - 2023', '2023-04-17 09:10:49', 1, 1, NULL, NULL, NULL, NULL, NULL),
(623, '22-Feb-2023', '17', 'GS', '07:31', '17:18', '9:19', '00:00', '9:19', 'Present', '', 'February - 2023', '2023-04-17 09:10:49', 1, 1, NULL, NULL, NULL, NULL, NULL),
(624, '22-Feb-2023', '18', 'GS', '07:31', '17:09', '9:10', '00:00', '9:10', 'Present', '', 'February - 2023', '2023-04-17 09:10:49', 1, 1, NULL, NULL, NULL, NULL, NULL),
(625, '22-Feb-2023', '19', 'GS', '07:31', '17:16', '9:17', '00:00', '9:17', 'Present', '', 'February - 2023', '2023-04-17 09:10:49', 1, 1, NULL, NULL, NULL, NULL, NULL),
(626, '22-Feb-2023', '20', 'GS', '06:54', '18:06', '9:01', '1:06', '10:07', 'Present', '', 'February - 2023', '2023-04-17 09:10:49', 1, 1, NULL, NULL, NULL, NULL, NULL),
(627, '22-Feb-2023', '21', 'GS', '07:40', '17:08', '9:09', '00:00', '9:09', 'Present', '', 'February - 2023', '2023-04-17 09:10:49', 1, 1, NULL, NULL, NULL, NULL, NULL),
(628, '22-Feb-2023', '22', 'GS', '08:14', '13:42', '5:28', '00:00', '5:28', 'Present', '', 'February - 2023', '2023-04-17 09:10:49', 1, 1, NULL, NULL, NULL, NULL, NULL),
(629, '22-Feb-2023', '23', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'February - 2023', '2023-04-17 09:10:49', 1, 0, NULL, NULL, NULL, NULL, NULL),
(630, '22-Feb-2023', '24', 'Sam', '01:06', '21:08', '00:00', '20:02', '20:02', 'Absent', '', 'February - 2023', '2023-04-17 09:10:49', 1, 0, NULL, NULL, NULL, NULL, NULL),
(631, '22-Feb-2023', '26', 'GS', '07:39', '17:02', '9:03', '00:00', '9:03', 'Present', '', 'February - 2023', '2023-04-17 09:10:49', 1, 1, NULL, NULL, NULL, NULL, NULL),
(632, '22-Feb-2023', '28', 'GS', '07:39', '16:58', '8:59', '00:00', '8:59', 'Present', '', 'February - 2023', '2023-04-17 09:10:49', 1, 1, NULL, NULL, NULL, NULL, NULL),
(633, '22-Feb-2023', '30', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'February - 2023', '2023-04-17 09:10:49', 1, 0, NULL, NULL, NULL, NULL, NULL),
(634, '22-Feb-2023', '33', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'February - 2023', '2023-04-17 09:10:49', 1, 0, NULL, NULL, NULL, NULL, NULL),
(635, '22-Feb-2023', '34', 'NS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'February - 2023', '2023-04-17 09:10:49', 1, 0, NULL, NULL, NULL, NULL, NULL),
(636, '22-Feb-2023', '35', 'NS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'February - 2023', '2023-04-17 09:10:49', 1, 0, NULL, NULL, NULL, NULL, NULL),
(637, '22-Feb-2023', '36', 'NS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'February - 2023', '2023-04-17 09:10:49', 1, 0, NULL, NULL, NULL, NULL, NULL),
(638, '22-Feb-2023', '', '', '', '', '', '', '', '', '', 'February - 2023', '2023-04-17 09:10:49', 1, 0, NULL, NULL, NULL, NULL, NULL),
(639, '23-Feb-2023', '1', 'GS', '11:10', '', '00:00', '00:00', '00:00', 'Absent (No OutPunch)', '', 'February - 2023', '2023-04-17 09:10:49', 1, 0, NULL, NULL, NULL, NULL, NULL),
(640, '23-Feb-2023', '3', 'GS', '05:36', '18:14', '9:01', '1:14', '10:15', 'Present', '', 'February - 2023', '2023-04-17 09:10:49', 1, 1, NULL, NULL, NULL, NULL, NULL),
(641, '23-Feb-2023', '4', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'February - 2023', '2023-04-17 09:10:49', 1, 0, NULL, NULL, NULL, NULL, NULL),
(642, '23-Feb-2023', '5', 'GS', '07:25', '17:05', '9:06', '00:00', '9:06', 'Present', '', 'February - 2023', '2023-04-17 09:10:49', 1, 1, NULL, NULL, NULL, NULL, NULL),
(643, '23-Feb-2023', '6', 'GS', '07:38', '17:03', '9:04', '00:00', '9:04', 'Present', '', 'February - 2023', '2023-04-17 09:10:49', 1, 1, NULL, NULL, NULL, NULL, NULL),
(644, '23-Feb-2023', '7', 'GS', '07:38', '17:03', '9:04', '00:00', '9:04', 'Present', '', 'February - 2023', '2023-04-17 09:10:49', 1, 1, NULL, NULL, NULL, NULL, NULL),
(645, '23-Feb-2023', '8', 'GS', '08:00', '16:54', '8:54', '00:00', '8:54', 'Present', '', 'February - 2023', '2023-04-17 09:10:49', 1, 1, NULL, NULL, NULL, NULL, NULL),
(646, '23-Feb-2023', '9', 'GS', '07:38', '17:03', '9:04', '00:00', '9:04', 'Present', '', 'February - 2023', '2023-04-17 09:10:49', 1, 1, NULL, NULL, NULL, NULL, NULL),
(647, '23-Feb-2023', '10', 'GS', '07:46', '17:02', '9:03', '00:00', '9:03', 'Present', '', 'February - 2023', '2023-04-17 09:10:49', 1, 1, NULL, NULL, NULL, NULL, NULL),
(648, '23-Feb-2023', '11', 'GS', '07:38', '17:05', '9:06', '00:00', '9:06', 'Present', '', 'February - 2023', '2023-04-17 09:10:49', 1, 1, NULL, NULL, NULL, NULL, NULL),
(649, '23-Feb-2023', '14', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'February - 2023', '2023-04-17 09:10:49', 1, 0, NULL, NULL, NULL, NULL, NULL),
(650, '23-Feb-2023', '15', 'GS', '08:16', '09:55', '1:39', '00:00', '1:39', 'Absent', '', 'February - 2023', '2023-04-17 09:10:49', 1, 0, NULL, NULL, NULL, NULL, NULL),
(651, '23-Feb-2023', '16', 'GS', '08:08', '16:55', '8:47', '00:00', '8:47', 'Present', '', 'February - 2023', '2023-04-17 09:10:49', 1, 1, NULL, NULL, NULL, NULL, NULL),
(652, '23-Feb-2023', '17', 'GS', '07:25', '17:07', '9:08', '00:00', '9:08', 'Present', '', 'February - 2023', '2023-04-17 09:10:49', 1, 1, NULL, NULL, NULL, NULL, NULL),
(653, '23-Feb-2023', '18', 'GS', '07:25', '17:10', '9:10', '00:00', '9:10', 'Present', '', 'February - 2023', '2023-04-17 09:10:49', 1, 1, NULL, NULL, NULL, NULL, NULL),
(654, '23-Feb-2023', '19', 'GS', '09:27', '16:54', '7:27', '00:00', '7:27', 'Present', '', 'February - 2023', '2023-04-17 09:10:49', 1, 1, NULL, NULL, NULL, NULL, NULL),
(655, '23-Feb-2023', '20', 'GS', '06:56', '15:08', '7:09', '00:00', '7:09', 'Present', '', 'February - 2023', '2023-04-17 09:10:49', 1, 1, NULL, NULL, NULL, NULL, NULL),
(656, '23-Feb-2023', '21', 'GS', '07:38', '17:02', '9:03', '00:00', '9:03', 'Present', '', 'February - 2023', '2023-04-17 09:10:49', 1, 1, NULL, NULL, NULL, NULL, NULL),
(657, '23-Feb-2023', '22', 'GS', '08:06', '13:51', '5:45', '00:00', '5:45', 'Present', '', 'February - 2023', '2023-04-17 09:10:49', 1, 1, NULL, NULL, NULL, NULL, NULL),
(658, '23-Feb-2023', '23', 'GS', '11:58', '', '00:00', '00:00', '00:00', 'Absent (No OutPunch)', '', 'February - 2023', '2023-04-17 09:10:49', 1, 0, NULL, NULL, NULL, NULL, NULL),
(659, '23-Feb-2023', '24', 'Sam', '01:06', '21:08', '00:00', '20:02', '20:02', 'Absent', '', 'February - 2023', '2023-04-17 09:10:49', 1, 0, NULL, NULL, NULL, NULL, NULL),
(660, '23-Feb-2023', '26', 'GS', '07:38', '17:04', '9:05', '00:00', '9:05', 'Present', '', 'February - 2023', '2023-04-17 09:10:49', 1, 1, NULL, NULL, NULL, NULL, NULL),
(661, '23-Feb-2023', '28', 'GS', '07:38', '17:02', '9:03', '00:00', '9:03', 'Present', '', 'February - 2023', '2023-04-17 09:10:49', 1, 1, NULL, NULL, NULL, NULL, NULL),
(662, '23-Feb-2023', '30', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'February - 2023', '2023-04-17 09:10:49', 1, 0, NULL, NULL, NULL, NULL, NULL),
(663, '23-Feb-2023', '33', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'February - 2023', '2023-04-17 09:10:49', 1, 0, NULL, NULL, NULL, NULL, NULL),
(664, '23-Feb-2023', '34', 'NS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'February - 2023', '2023-04-17 09:10:49', 1, 0, NULL, NULL, NULL, NULL, NULL),
(665, '23-Feb-2023', '35', 'NS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'February - 2023', '2023-04-17 09:10:49', 1, 0, NULL, NULL, NULL, NULL, NULL),
(666, '23-Feb-2023', '36', 'NS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'February - 2023', '2023-04-17 09:10:49', 1, 0, NULL, NULL, NULL, NULL, NULL),
(667, '23-Feb-2023', '', '', '', '', '', '', '', '', '', 'February - 2023', '2023-04-17 09:10:49', 1, 0, NULL, NULL, NULL, NULL, NULL),
(668, '24-Feb-2023', '1', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'February - 2023', '2023-04-17 09:10:49', 1, 0, NULL, NULL, NULL, NULL, NULL),
(669, '24-Feb-2023', '3', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'February - 2023', '2023-04-17 09:10:49', 1, 0, NULL, NULL, NULL, NULL, NULL),
(670, '24-Feb-2023', '4', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'February - 2023', '2023-04-17 09:10:49', 1, 0, NULL, NULL, NULL, NULL, NULL),
(671, '24-Feb-2023', '5', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'February - 2023', '2023-04-17 09:10:49', 1, 0, NULL, NULL, NULL, NULL, NULL),
(672, '24-Feb-2023', '6', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'February - 2023', '2023-04-17 09:10:49', 1, 0, NULL, NULL, NULL, NULL, NULL),
(673, '24-Feb-2023', '7', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'February - 2023', '2023-04-17 09:10:49', 1, 0, NULL, NULL, NULL, NULL, NULL),
(674, '24-Feb-2023', '8', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'February - 2023', '2023-04-17 09:10:49', 1, 0, NULL, NULL, NULL, NULL, NULL),
(675, '24-Feb-2023', '9', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'February - 2023', '2023-04-17 09:10:49', 1, 0, NULL, NULL, NULL, NULL, NULL),
(676, '24-Feb-2023', '10', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'February - 2023', '2023-04-17 09:10:49', 1, 0, NULL, NULL, NULL, NULL, NULL),
(677, '24-Feb-2023', '11', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'February - 2023', '2023-04-17 09:10:49', 1, 0, NULL, NULL, NULL, NULL, NULL),
(678, '24-Feb-2023', '14', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'February - 2023', '2023-04-17 09:10:49', 1, 0, NULL, NULL, NULL, NULL, NULL),
(679, '24-Feb-2023', '15', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'February - 2023', '2023-04-17 09:10:49', 1, 0, NULL, NULL, NULL, NULL, NULL),
(680, '24-Feb-2023', '16', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'February - 2023', '2023-04-17 09:10:49', 1, 0, NULL, NULL, NULL, NULL, NULL),
(681, '24-Feb-2023', '17', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'February - 2023', '2023-04-17 09:10:49', 1, 0, NULL, NULL, NULL, NULL, NULL),
(682, '24-Feb-2023', '18', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'February - 2023', '2023-04-17 09:10:49', 1, 0, NULL, NULL, NULL, NULL, NULL),
(683, '24-Feb-2023', '19', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'February - 2023', '2023-04-17 09:10:49', 1, 0, NULL, NULL, NULL, NULL, NULL),
(684, '24-Feb-2023', '20', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'February - 2023', '2023-04-17 09:10:49', 1, 0, NULL, NULL, NULL, NULL, NULL),
(685, '24-Feb-2023', '21', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'February - 2023', '2023-04-17 09:10:49', 1, 0, NULL, NULL, NULL, NULL, NULL),
(686, '24-Feb-2023', '22', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'February - 2023', '2023-04-17 09:10:49', 1, 0, NULL, NULL, NULL, NULL, NULL),
(687, '24-Feb-2023', '23', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'February - 2023', '2023-04-17 09:10:49', 1, 0, NULL, NULL, NULL, NULL, NULL),
(688, '24-Feb-2023', '24', 'Sam', '01:09', '21:11', '00:00', '20:02', '20:02', 'Absent', '', 'February - 2023', '2023-04-17 09:10:49', 1, 0, NULL, NULL, NULL, NULL, NULL),
(689, '24-Feb-2023', '26', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'February - 2023', '2023-04-17 09:10:49', 1, 0, NULL, NULL, NULL, NULL, NULL),
(690, '24-Feb-2023', '28', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'February - 2023', '2023-04-17 09:10:49', 1, 0, NULL, NULL, NULL, NULL, NULL),
(691, '24-Feb-2023', '30', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'February - 2023', '2023-04-17 09:10:49', 1, 0, NULL, NULL, NULL, NULL, NULL),
(692, '24-Feb-2023', '33', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'February - 2023', '2023-04-17 09:10:49', 1, 0, NULL, NULL, NULL, NULL, NULL),
(693, '24-Feb-2023', '34', 'NS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'February - 2023', '2023-04-17 09:10:49', 1, 0, NULL, NULL, NULL, NULL, NULL),
(694, '24-Feb-2023', '35', 'NS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'February - 2023', '2023-04-17 09:10:49', 1, 0, NULL, NULL, NULL, NULL, NULL),
(695, '24-Feb-2023', '36', 'NS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'February - 2023', '2023-04-17 09:10:49', 1, 0, NULL, NULL, NULL, NULL, NULL),
(696, '24-Feb-2023', '', '', '', '', '', '', '', '', '', 'February - 2023', '2023-04-17 09:10:49', 1, 0, NULL, NULL, NULL, NULL, NULL),
(697, '25-Feb-2023', '1', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'February - 2023', '2023-04-17 09:10:49', 1, 0, NULL, NULL, NULL, NULL, NULL),
(698, '25-Feb-2023', '3', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'February - 2023', '2023-04-17 09:10:49', 1, 0, NULL, NULL, NULL, NULL, NULL),
(699, '25-Feb-2023', '4', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'February - 2023', '2023-04-17 09:10:49', 1, 0, NULL, NULL, NULL, NULL, NULL),
(700, '25-Feb-2023', '5', 'GS', '08:31', '16:59', '00:00', '8:28', '8:28', 'WeeklyOff Present', '', 'February - 2023', '2023-04-17 09:10:49', 1, 0, NULL, NULL, NULL, NULL, NULL),
(701, '25-Feb-2023', '6', 'GS', '08:31', '16:57', '00:00', '8:26', '8:26', 'WeeklyOff Present', '', 'February - 2023', '2023-04-17 09:10:49', 1, 0, NULL, NULL, NULL, NULL, NULL),
(702, '25-Feb-2023', '7', 'GS', '08:31', '16:59', '00:00', '8:28', '8:28', 'WeeklyOff Present', '', 'February - 2023', '2023-04-17 09:10:49', 1, 0, NULL, NULL, NULL, NULL, NULL),
(703, '25-Feb-2023', '8', 'GS', '09:02', '16:58', '00:00', '7:56', '7:56', 'WeeklyOff Present', '', 'February - 2023', '2023-04-17 09:10:49', 1, 0, NULL, NULL, NULL, NULL, NULL),
(704, '25-Feb-2023', '9', 'GS', '08:32', '16:57', '00:00', '8:25', '8:25', 'WeeklyOff Present', '', 'February - 2023', '2023-04-17 09:10:49', 1, 0, NULL, NULL, NULL, NULL, NULL),
(705, '25-Feb-2023', '10', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'February - 2023', '2023-04-17 09:10:49', 1, 0, NULL, NULL, NULL, NULL, NULL),
(706, '25-Feb-2023', '11', 'GS', '08:31', '16:59', '00:00', '8:28', '8:28', 'WeeklyOff Present', '', 'February - 2023', '2023-04-17 09:10:49', 1, 0, NULL, NULL, NULL, NULL, NULL),
(707, '25-Feb-2023', '14', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'February - 2023', '2023-04-17 09:10:49', 1, 0, NULL, NULL, NULL, NULL, NULL),
(708, '25-Feb-2023', '15', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'February - 2023', '2023-04-17 09:10:49', 1, 0, NULL, NULL, NULL, NULL, NULL),
(709, '25-Feb-2023', '16', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'February - 2023', '2023-04-17 09:10:49', 1, 0, NULL, NULL, NULL, NULL, NULL),
(710, '25-Feb-2023', '17', 'GS', '08:44', '13:14', '00:00', '4:30', '4:30', 'WeeklyOff Present', '', 'February - 2023', '2023-04-17 09:10:49', 1, 0, NULL, NULL, NULL, NULL, NULL),
(711, '25-Feb-2023', '18', 'GS', '08:31', '16:57', '00:00', '8:26', '8:26', 'WeeklyOff Present', '', 'February - 2023', '2023-04-17 09:10:49', 1, 0, NULL, NULL, NULL, NULL, NULL),
(712, '25-Feb-2023', '19', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'February - 2023', '2023-04-17 09:10:49', 1, 0, NULL, NULL, NULL, NULL, NULL),
(713, '25-Feb-2023', '20', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'February - 2023', '2023-04-17 09:10:49', 1, 0, NULL, NULL, NULL, NULL, NULL),
(714, '25-Feb-2023', '21', 'GS', '08:31', '16:57', '00:00', '8:26', '8:26', 'WeeklyOff Present', '', 'February - 2023', '2023-04-17 09:10:49', 1, 0, NULL, NULL, NULL, NULL, NULL),
(715, '25-Feb-2023', '22', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'February - 2023', '2023-04-17 09:10:49', 1, 0, NULL, NULL, NULL, NULL, NULL),
(716, '25-Feb-2023', '23', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'February - 2023', '2023-04-17 09:10:49', 1, 0, NULL, NULL, NULL, NULL, NULL),
(717, '25-Feb-2023', '24', 'Sam', '01:57', '21:07', '00:00', '19:10', '19:10', 'WeeklyOff Present', '', 'February - 2023', '2023-04-17 09:10:49', 1, 0, NULL, NULL, NULL, NULL, NULL),
(718, '25-Feb-2023', '26', 'GS', '08:31', '16:58', '00:00', '8:27', '8:27', 'WeeklyOff Present', '', 'February - 2023', '2023-04-17 09:10:49', 1, 0, NULL, NULL, NULL, NULL, NULL),
(719, '25-Feb-2023', '28', 'GS', '08:31', '16:58', '00:00', '8:27', '8:27', 'WeeklyOff Present', '', 'February - 2023', '2023-04-17 09:10:49', 1, 0, NULL, NULL, NULL, NULL, NULL),
(720, '25-Feb-2023', '30', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'February - 2023', '2023-04-17 09:10:49', 1, 0, NULL, NULL, NULL, NULL, NULL),
(721, '25-Feb-2023', '33', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'February - 2023', '2023-04-17 09:10:49', 1, 0, NULL, NULL, NULL, NULL, NULL),
(722, '25-Feb-2023', '34', 'NS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'February - 2023', '2023-04-17 09:10:49', 1, 0, NULL, NULL, NULL, NULL, NULL),
(723, '25-Feb-2023', '35', 'NS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'February - 2023', '2023-04-17 09:10:49', 1, 0, NULL, NULL, NULL, NULL, NULL),
(724, '25-Feb-2023', '36', 'NS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'February - 2023', '2023-04-17 09:10:49', 1, 0, NULL, NULL, NULL, NULL, NULL),
(725, '25-Feb-2023', '', '', '', '', '', '', '', '', '', 'February - 2023', '2023-04-17 09:10:49', 1, 0, NULL, NULL, NULL, NULL, NULL),
(726, '26-Feb-2023', '1', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'February - 2023', '2023-04-17 09:10:49', 1, 4, 1, NULL, NULL, '', '2023-04-26 06:13:13'),
(727, '26-Feb-2023', '3', 'GS', '05:41', '18:19', '00:00', '12:38', '12:38', 'WeeklyOff Present', '', 'February - 2023', '2023-04-17 09:10:49', 1, 0, NULL, NULL, NULL, NULL, NULL),
(728, '26-Feb-2023', '4', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'February - 2023', '2023-04-17 09:10:49', 1, 0, NULL, NULL, NULL, NULL, NULL),
(729, '26-Feb-2023', '5', 'GS', '07:32', '17:04', '00:00', '9:32', '9:32', 'WeeklyOff Present', '', 'February - 2023', '2023-04-17 09:10:49', 1, 0, NULL, NULL, NULL, NULL, NULL),
(730, '26-Feb-2023', '6', 'GS', '07:41', '16:58', '00:00', '9:17', '9:17', 'WeeklyOff Present', '', 'February - 2023', '2023-04-17 09:10:49', 1, 0, NULL, NULL, NULL, NULL, NULL),
(731, '26-Feb-2023', '7', 'GS', '07:41', '16:58', '00:00', '9:17', '9:17', 'WeeklyOff Present', '', 'February - 2023', '2023-04-17 09:10:49', 1, 0, NULL, NULL, NULL, NULL, NULL),
(732, '26-Feb-2023', '8', 'GS', '08:17', '16:53', '00:00', '8:36', '8:36', 'WeeklyOff Present', '', 'February - 2023', '2023-04-17 09:10:49', 1, 0, NULL, NULL, NULL, NULL, NULL),
(733, '26-Feb-2023', '9', 'GS', '07:42', '16:58', '00:00', '9:16', '9:16', 'WeeklyOff Present', '', 'February - 2023', '2023-04-17 09:10:49', 1, 0, NULL, NULL, NULL, NULL, NULL),
(734, '26-Feb-2023', '10', 'GS', '07:41', '16:58', '00:00', '9:17', '9:17', 'WeeklyOff Present', '', 'February - 2023', '2023-04-17 09:10:49', 1, 0, NULL, NULL, NULL, NULL, NULL),
(735, '26-Feb-2023', '11', 'GS', '07:42', '16:53', '00:00', '9:11', '9:11', 'WeeklyOff Present', '', 'February - 2023', '2023-04-17 09:10:49', 1, 0, NULL, NULL, NULL, NULL, NULL),
(736, '26-Feb-2023', '14', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'February - 2023', '2023-04-17 09:10:49', 1, 0, NULL, NULL, NULL, NULL, NULL),
(737, '26-Feb-2023', '15', 'GS', '07:40', '16:54', '00:00', '9:13', '9:13', 'WeeklyOff Present', '', 'February - 2023', '2023-04-17 09:10:49', 1, 0, NULL, NULL, NULL, NULL, NULL),
(738, '26-Feb-2023', '16', 'GS', '08:09', '16:54', '00:00', '8:45', '8:45', 'WeeklyOff Present', '', 'February - 2023', '2023-04-17 09:10:49', 1, 0, NULL, NULL, NULL, NULL, NULL),
(739, '26-Feb-2023', '17', 'GS', '07:32', '17:06', '00:00', '9:34', '9:34', 'WeeklyOff Present', '', 'February - 2023', '2023-04-17 09:10:49', 1, 0, NULL, NULL, NULL, NULL, NULL),
(740, '26-Feb-2023', '18', 'GS', '07:32', '17:07', '00:00', '9:35', '9:35', 'WeeklyOff Present', '', 'February - 2023', '2023-04-17 09:10:49', 1, 0, NULL, NULL, NULL, NULL, NULL),
(741, '26-Feb-2023', '19', 'GS', '07:32', '17:10', '00:00', '9:38', '9:38', 'WeeklyOff Present', '', 'February - 2023', '2023-04-17 09:10:49', 1, 0, NULL, NULL, NULL, NULL, NULL),
(742, '26-Feb-2023', '20', 'GS', '06:54', '13:22', '00:00', '6:28', '6:28', 'WeeklyOff Present', '', 'February - 2023', '2023-04-17 09:10:49', 1, 0, NULL, NULL, NULL, NULL, NULL),
(743, '26-Feb-2023', '21', 'GS', '07:42', '16:58', '00:00', '9:16', '9:16', 'WeeklyOff Present', '', 'February - 2023', '2023-04-17 09:10:49', 1, 0, NULL, NULL, NULL, NULL, NULL),
(744, '26-Feb-2023', '22', 'GS', '08:07', '13:58', '00:00', '5:51', '5:51', 'WeeklyOff Present', '', 'February - 2023', '2023-04-17 09:10:49', 1, 0, NULL, NULL, NULL, NULL, NULL),
(745, '26-Feb-2023', '23', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'February - 2023', '2023-04-17 09:10:49', 1, 0, NULL, NULL, NULL, NULL, NULL),
(746, '26-Feb-2023', '24', 'Sam', '01:07', '21:06', '00:00', '19:59', '19:59', 'WeeklyOff Present', '', 'February - 2023', '2023-04-17 09:10:49', 1, 0, NULL, NULL, NULL, NULL, NULL),
(747, '26-Feb-2023', '26', 'GS', '07:42', '16:58', '00:00', '9:16', '9:16', 'WeeklyOff Present', '', 'February - 2023', '2023-04-17 09:10:49', 1, 0, NULL, NULL, NULL, NULL, NULL),
(748, '26-Feb-2023', '28', 'GS', '07:41', '16:58', '00:00', '9:17', '9:17', 'WeeklyOff Present', '', 'February - 2023', '2023-04-17 09:10:49', 1, 0, NULL, NULL, NULL, NULL, NULL),
(749, '26-Feb-2023', '30', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'February - 2023', '2023-04-17 09:10:49', 1, 0, NULL, NULL, NULL, NULL, NULL),
(750, '26-Feb-2023', '33', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'February - 2023', '2023-04-17 09:10:49', 1, 0, NULL, NULL, NULL, NULL, NULL),
(751, '26-Feb-2023', '34', 'NS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'February - 2023', '2023-04-17 09:10:49', 1, 0, NULL, NULL, NULL, NULL, NULL),
(752, '26-Feb-2023', '35', 'NS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'February - 2023', '2023-04-17 09:10:49', 1, 0, NULL, NULL, NULL, NULL, NULL),
(753, '26-Feb-2023', '36', 'NS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'February - 2023', '2023-04-17 09:10:49', 1, 0, NULL, NULL, NULL, NULL, NULL),
(754, '26-Feb-2023', '', '', '', '', '', '', '', '', '', 'February - 2023', '2023-04-17 09:10:49', 1, 0, NULL, NULL, NULL, NULL, NULL),
(755, '27-Feb-2023', '1', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'February - 2023', '2023-04-17 09:10:49', 1, 4, 1, NULL, NULL, 'deeduct from salary', '2023-04-17 09:19:02'),
(756, '27-Feb-2023', '3', 'GS', '05:35', '18:27', '9:01', '1:27', '10:28', 'Present', '', 'February - 2023', '2023-04-17 09:10:49', 1, 1, NULL, NULL, NULL, NULL, NULL),
(757, '27-Feb-2023', '4', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'February - 2023', '2023-04-17 09:10:49', 1, 4, 1, NULL, NULL, 'deeduct from salary', '2023-04-17 09:19:02'),
(758, '27-Feb-2023', '5', 'GS', '07:33', '17:06', '9:07', '00:00', '9:07', 'Present', '', 'February - 2023', '2023-04-17 09:10:49', 1, 1, NULL, NULL, NULL, NULL, NULL),
(759, '27-Feb-2023', '6', 'GS', '07:25', '16:59', '9:00', '00:00', '9:00', 'Present', '', 'February - 2023', '2023-04-17 09:10:49', 1, 1, NULL, NULL, NULL, NULL, NULL),
(760, '27-Feb-2023', '7', 'GS', '07:25', '16:59', '9:00', '00:00', '9:00', 'Present', '', 'February - 2023', '2023-04-17 09:10:49', 1, 1, NULL, NULL, NULL, NULL, NULL),
(761, '27-Feb-2023', '8', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'February - 2023', '2023-04-17 09:10:49', 1, 0, NULL, NULL, NULL, NULL, NULL),
(762, '27-Feb-2023', '9', 'GS', '07:25', '16:57', '8:58', '00:00', '8:58', 'Present', '', 'February - 2023', '2023-04-17 09:10:49', 1, 1, NULL, NULL, NULL, NULL, NULL),
(763, '27-Feb-2023', '10', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'February - 2023', '2023-04-17 09:10:49', 1, 0, NULL, NULL, NULL, NULL, NULL),
(764, '27-Feb-2023', '11', 'GS', '07:25', '16:59', '9:00', '00:00', '9:00', 'Present', '', 'February - 2023', '2023-04-17 09:10:49', 1, 1, NULL, NULL, NULL, NULL, NULL),
(765, '27-Feb-2023', '14', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'February - 2023', '2023-04-17 09:10:50', 1, 0, NULL, NULL, NULL, NULL, NULL),
(766, '27-Feb-2023', '15', 'GS', '07:48', '14:46', '6:47', '00:00', '6:47', 'Present', '', 'February - 2023', '2023-04-17 09:10:50', 1, 1, NULL, NULL, NULL, NULL, NULL),
(767, '27-Feb-2023', '16', 'GS', '08:14', '16:52', '8:38', '00:00', '8:38', 'Present', '', 'February - 2023', '2023-04-17 09:10:50', 1, 1, NULL, NULL, NULL, NULL, NULL),
(768, '27-Feb-2023', '17', 'GS', '07:33', '17:15', '9:16', '00:00', '9:16', 'Present', '', 'February - 2023', '2023-04-17 09:10:50', 1, 1, NULL, NULL, NULL, NULL, NULL),
(769, '27-Feb-2023', '18', 'GS', '07:33', '17:13', '9:14', '00:00', '9:14', 'Present', '', 'February - 2023', '2023-04-17 09:10:50', 1, 1, NULL, NULL, NULL, NULL, NULL),
(770, '27-Feb-2023', '19', 'GS', '07:33', '17:16', '9:17', '00:00', '9:17', 'Present', '', 'February - 2023', '2023-04-17 09:10:50', 1, 1, NULL, NULL, NULL, NULL, NULL),
(771, '27-Feb-2023', '20', 'GS', '07:35', '17:26', '9:26', '00:00', '9:26', 'Present', '', 'February - 2023', '2023-04-17 09:10:50', 1, 1, NULL, NULL, NULL, NULL, NULL),
(772, '27-Feb-2023', '21', 'GS', '07:25', '16:57', '8:58', '00:00', '8:58', 'Present', '', 'February - 2023', '2023-04-17 09:10:50', 1, 1, NULL, NULL, NULL, NULL, NULL),
(773, '27-Feb-2023', '22', 'GS', '08:15', '13:55', '5:40', '00:00', '5:40', 'Present', '', 'February - 2023', '2023-04-17 09:10:50', 1, 1, NULL, NULL, NULL, NULL, NULL),
(774, '27-Feb-2023', '23', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'February - 2023', '2023-04-17 09:10:50', 1, 0, NULL, NULL, NULL, NULL, NULL),
(775, '27-Feb-2023', '24', 'Sam', '01:08', '21:08', '00:00', '20:00', '20:00', 'Absent', '', 'February - 2023', '2023-04-17 09:10:50', 1, 0, NULL, NULL, NULL, NULL, NULL),
(776, '27-Feb-2023', '26', 'GS', '07:25', '16:59', '9:00', '00:00', '9:00', 'Present', '', 'February - 2023', '2023-04-17 09:10:50', 1, 1, NULL, NULL, NULL, NULL, NULL),
(777, '27-Feb-2023', '28', 'GS', '07:25', '16:59', '9:00', '00:00', '9:00', 'Present', '', 'February - 2023', '2023-04-17 09:10:50', 1, 1, NULL, NULL, NULL, NULL, NULL),
(778, '27-Feb-2023', '30', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'February - 2023', '2023-04-17 09:10:50', 1, 0, NULL, NULL, NULL, NULL, NULL),
(779, '27-Feb-2023', '33', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'February - 2023', '2023-04-17 09:10:50', 1, 0, NULL, NULL, NULL, NULL, NULL),
(780, '27-Feb-2023', '34', 'NS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'February - 2023', '2023-04-17 09:10:50', 1, 0, NULL, NULL, NULL, NULL, NULL),
(781, '27-Feb-2023', '35', 'NS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'February - 2023', '2023-04-17 09:10:50', 1, 0, NULL, NULL, NULL, NULL, NULL),
(782, '27-Feb-2023', '36', 'NS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'February - 2023', '2023-04-17 09:10:50', 1, 0, NULL, NULL, NULL, NULL, NULL),
(783, '27-Feb-2023', '', '', '', '', '', '', '', '', '', 'February - 2023', '2023-04-17 09:10:50', 1, 0, NULL, NULL, NULL, NULL, NULL),
(784, '28-Feb-2023', '1', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'February - 2023', '2023-04-17 09:10:50', 1, 4, 1, NULL, NULL, 'No ad', '2023-04-17 09:11:50'),
(785, '28-Feb-2023', '3', 'GS', '05:37', '18:30', '9:01', '1:30', '10:31', 'Present', '', 'February - 2023', '2023-04-17 09:10:50', 1, 1, NULL, NULL, NULL, NULL, NULL),
(786, '28-Feb-2023', '4', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'February - 2023', '2023-04-17 09:10:50', 1, 4, 1, NULL, NULL, 'No ad', '2023-04-17 09:11:50'),
(787, '28-Feb-2023', '5', 'GS', '07:31', '17:09', '9:06', '00:00', '9:06', 'Present', '', 'February - 2023', '2023-04-17 09:10:50', 1, 1, NULL, NULL, NULL, NULL, NULL),
(788, '28-Feb-2023', '6', 'GS', '07:28', '16:59', '9:00', '00:00', '9:00', 'Present', '', 'February - 2023', '2023-04-17 09:10:50', 1, 1, NULL, NULL, NULL, NULL, NULL),
(789, '28-Feb-2023', '7', 'GS', '07:28', '16:59', '9:00', '00:00', '9:00', 'Present', '', 'February - 2023', '2023-04-17 09:10:50', 1, 1, NULL, NULL, NULL, NULL, NULL),
(790, '28-Feb-2023', '8', 'GS', '08:02', '16:58', '8:51', '00:00', '8:51', 'Present', '', 'February - 2023', '2023-04-17 09:10:50', 1, 1, NULL, NULL, NULL, NULL, NULL),
(791, '28-Feb-2023', '9', 'GS', '07:28', '16:59', '9:00', '00:00', '9:00', 'Present', '', 'February - 2023', '2023-04-17 09:10:50', 1, 1, NULL, NULL, NULL, NULL, NULL),
(792, '28-Feb-2023', '10', 'GS', '08:52', '16:59', '8:07', '00:00', '8:07', 'Present', '', 'February - 2023', '2023-04-17 09:10:50', 1, 1, NULL, NULL, NULL, NULL, NULL),
(793, '28-Feb-2023', '11', 'GS', '07:28', '16:59', '9:00', '00:00', '9:00', 'Present', '', 'February - 2023', '2023-04-17 09:10:50', 1, 1, NULL, NULL, NULL, NULL, NULL),
(794, '28-Feb-2023', '14', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'February - 2023', '2023-04-17 09:10:50', 1, 0, NULL, NULL, NULL, NULL, NULL),
(795, '28-Feb-2023', '15', 'GS', '07:52', '16:25', '8:26', '00:00', '8:26', 'Present', '', 'February - 2023', '2023-04-17 09:10:50', 1, 1, NULL, NULL, NULL, NULL, NULL),
(796, '28-Feb-2023', '16', 'GS', '08:26', '16:51', '8:25', '00:00', '8:25', 'Present', '', 'February - 2023', '2023-04-17 09:10:50', 1, 1, NULL, NULL, NULL, NULL, NULL),
(797, '28-Feb-2023', '17', 'GS', '07:31', '17:19', '9:20', '00:00', '9:20', 'Present', '', 'February - 2023', '2023-04-17 09:10:50', 1, 1, NULL, NULL, NULL, NULL, NULL),
(798, '28-Feb-2023', '18', 'GS', '07:31', '17:16', '9:17', '00:00', '9:17', 'Present', '', 'February - 2023', '2023-04-17 09:10:50', 1, 1, NULL, NULL, NULL, NULL, NULL),
(799, '28-Feb-2023', '19', 'GS', '07:31', '17:16', '9:17', '00:00', '9:17', 'Present', '', 'February - 2023', '2023-04-17 09:10:50', 1, 1, NULL, NULL, NULL, NULL, NULL),
(800, '28-Feb-2023', '20', 'GS', '06:54', '07:59', '00:00', '00:00', '00:00', 'Absent', '', 'February - 2023', '2023-04-17 09:10:50', 1, 0, NULL, NULL, NULL, NULL, NULL),
(801, '28-Feb-2023', '21', 'GS', '07:28', '16:59', '9:00', '00:00', '9:00', 'Present', '', 'February - 2023', '2023-04-17 09:10:50', 1, 1, NULL, NULL, NULL, NULL, NULL),
(802, '28-Feb-2023', '22', 'GS', '08:20', '13:51', '5:31', '00:00', '5:31', 'Present', '', 'February - 2023', '2023-04-17 09:10:50', 1, 1, NULL, NULL, NULL, NULL, NULL),
(803, '28-Feb-2023', '23', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'February - 2023', '2023-04-17 09:10:50', 1, 0, NULL, NULL, NULL, NULL, NULL),
(804, '28-Feb-2023', '24', 'Sam', '01:10', '21:59', '00:01', '20:48', '20:49', 'Absent', '', 'February - 2023', '2023-04-17 09:10:50', 1, 0, NULL, NULL, NULL, NULL, NULL),
(805, '28-Feb-2023', '26', 'GS', '07:28', '16:59', '9:00', '00:00', '9:00', 'Present', '', 'February - 2023', '2023-04-17 09:10:50', 1, 1, NULL, NULL, NULL, NULL, NULL),
(806, '28-Feb-2023', '28', 'GS', '07:28', '16:59', '9:00', '00:00', '9:00', 'Present', '', 'February - 2023', '2023-04-17 09:10:50', 1, 1, NULL, NULL, NULL, NULL, NULL),
(807, '28-Feb-2023', '30', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'February - 2023', '2023-04-17 09:10:50', 1, 0, NULL, NULL, NULL, NULL, NULL),
(808, '28-Feb-2023', '33', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'February - 2023', '2023-04-17 09:10:50', 1, 0, NULL, NULL, NULL, NULL, NULL),
(809, '28-Feb-2023', '34', 'NS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'February - 2023', '2023-04-17 09:10:50', 1, 0, NULL, NULL, NULL, NULL, NULL),
(810, '28-Feb-2023', '35', 'NS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'February - 2023', '2023-04-17 09:10:50', 1, 0, NULL, NULL, NULL, NULL, NULL),
(811, '28-Feb-2023', '36', 'NS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'February - 2023', '2023-04-17 09:10:50', 1, 0, NULL, NULL, NULL, NULL, NULL),
(812, '28-Feb-2023', '', '', '', '', '', '', '', '', '', 'February - 2023', '2023-04-17 09:10:50', 1, 0, NULL, NULL, NULL, NULL, NULL),
(813, '01-Mar-2023', '1', 'GS', '09:16', '', '00:00', '00:00', '00:00', 'Absent (No OutPunch)', 'tester', 'March - 2023', '2023-05-02 11:14:16', 1, 0, NULL, NULL, NULL, NULL, NULL),
(814, '01-Mar-2023', '3', 'GS', '05:39', '18:31', '9:01', '1:31', '10:32', 'Present', '', 'March - 2023', '2023-05-02 11:14:16', 1, 1, NULL, NULL, NULL, NULL, NULL),
(815, '01-Mar-2023', '4', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'March - 2023', '2023-05-02 11:14:16', 1, 0, NULL, NULL, NULL, NULL, NULL),
(816, '01-Mar-2023', '5', 'GS', '07:29', '17:11', '9:12', '00:00', '9:12', 'Present', '', 'March - 2023', '2023-05-02 11:14:16', 1, 1, NULL, NULL, NULL, NULL, NULL),
(817, '01-Mar-2023', '6', 'GS', '07:36', '17:00', '9:01', '00:00', '9:01', 'Present', '', 'March - 2023', '2023-05-02 11:14:16', 1, 1, NULL, NULL, NULL, NULL, NULL),
(818, '01-Mar-2023', '7', 'GS', '07:36', '17:00', '9:01', '00:00', '9:01', 'Present', '', 'March - 2023', '2023-05-02 11:14:16', 1, 1, NULL, NULL, NULL, NULL, NULL),
(819, '01-Mar-2023', '8', 'GS', '10:44', '16:55', '6:08', '00:00', '6:08', 'Present', '', 'March - 2023', '2023-05-02 11:14:16', 1, 1, NULL, NULL, NULL, NULL, NULL),
(820, '01-Mar-2023', '9', 'GS', '07:36', '17:00', '9:01', '00:00', '9:01', 'Present', '', 'March - 2023', '2023-05-02 11:14:16', 1, 1, NULL, NULL, NULL, NULL, NULL),
(821, '01-Mar-2023', '10', 'GS', '07:36', '17:00', '9:01', '00:00', '9:01', 'Present', '', 'March - 2023', '2023-05-02 11:14:16', 1, 1, NULL, NULL, NULL, NULL, NULL),
(822, '01-Mar-2023', '11', 'GS', '07:36', '17:00', '9:01', '00:00', '9:01', 'Present', '', 'March - 2023', '2023-05-02 11:14:16', 1, 1, NULL, NULL, NULL, NULL, NULL),
(823, '01-Mar-2023', '14', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'March - 2023', '2023-05-02 11:14:16', 1, 0, NULL, NULL, NULL, NULL, NULL),
(824, '01-Mar-2023', '15', 'GS', '07:42', '14:59', '7:00', '00:00', '7:00', 'Present', '', 'March - 2023', '2023-05-02 11:14:16', 1, 1, NULL, NULL, NULL, NULL, NULL),
(825, '01-Mar-2023', '16', 'GS', '08:18', '16:53', '8:35', '00:00', '8:35', 'Present', '', 'March - 2023', '2023-05-02 11:14:16', 1, 1, NULL, NULL, NULL, NULL, NULL),
(826, '01-Mar-2023', '17', 'GS', '07:30', '17:17', '9:18', '00:00', '9:18', 'Present', '', 'March - 2023', '2023-05-02 11:14:16', 1, 1, NULL, NULL, NULL, NULL, NULL),
(827, '01-Mar-2023', '18', 'GS', '07:34', '17:08', '9:09', '00:00', '9:09', 'Present', '', 'March - 2023', '2023-05-02 11:14:16', 1, 1, NULL, NULL, NULL, NULL, NULL),
(828, '01-Mar-2023', '19', 'GS', '07:29', '17:15', '9:16', '00:00', '9:16', 'Present', '', 'March - 2023', '2023-05-02 11:14:16', 1, 1, NULL, NULL, NULL, NULL, NULL),
(829, '01-Mar-2023', '20', 'GS', '06:48', '18:05', '9:01', '1:05', '10:06', 'Present', '', 'March - 2023', '2023-05-02 11:14:16', 1, 1, NULL, NULL, NULL, NULL, NULL),
(830, '01-Mar-2023', '21', 'GS', '07:36', '17:00', '9:01', '00:00', '9:01', 'Present', '', 'March - 2023', '2023-05-02 11:14:16', 1, 1, NULL, NULL, NULL, NULL, NULL),
(831, '01-Mar-2023', '22', 'GS', '08:23', '14:00', '5:37', '00:00', '5:37', 'Present', '', 'March - 2023', '2023-05-02 11:14:16', 1, 1, NULL, NULL, NULL, NULL, NULL),
(832, '01-Mar-2023', '23', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'March - 2023', '2023-05-02 11:14:16', 1, 0, NULL, NULL, NULL, NULL, NULL),
(833, '01-Mar-2023', '24', 'Sam', '01:09', '06:48', '00:01', '5:38', '5:39', 'Absent', '', 'March - 2023', '2023-05-02 11:14:16', 1, 0, NULL, NULL, NULL, NULL, NULL),
(834, '01-Mar-2023', '26', 'GS', '07:36', '16:59', '9:00', '00:00', '9:00', 'Present', '', 'March - 2023', '2023-05-02 11:14:16', 1, 1, NULL, NULL, NULL, NULL, NULL),
(835, '01-Mar-2023', '28', 'GS', '07:36', '17:00', '9:01', '00:00', '9:01', 'Present', '', 'March - 2023', '2023-05-02 11:14:16', 1, 1, NULL, NULL, NULL, NULL, NULL),
(836, '01-Mar-2023', '30', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'March - 2023', '2023-05-02 11:14:16', 1, 0, NULL, NULL, NULL, NULL, NULL),
(837, '01-Mar-2023', '33', 'NS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'March - 2023', '2023-05-02 11:14:16', 1, 0, NULL, NULL, NULL, NULL, NULL),
(838, '01-Mar-2023', '34', 'GS', '08:04', '16:55', '8:51', '00:00', '8:51', 'Present', '', 'March - 2023', '2023-05-02 11:14:16', 1, 1, NULL, NULL, NULL, NULL, NULL),
(839, '01-Mar-2023', '35', 'GS', '08:05', '16:59', '8:54', '00:00', '8:54', 'Present', '', 'March - 2023', '2023-05-02 11:14:16', 1, 1, NULL, NULL, NULL, NULL, NULL),
(840, '01-Mar-2023', '36', 'NS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'March - 2023', '2023-05-02 11:14:16', 1, 0, NULL, NULL, NULL, NULL, NULL),
(841, '01-Mar-2023', '', '', '', '', '', '', '', '', '', 'March - 2023', '2023-05-02 11:14:16', 1, 0, NULL, NULL, NULL, NULL, NULL),
(842, '02-Mar-2023', '1', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'March - 2023', '2023-05-02 11:14:16', 1, 0, NULL, NULL, NULL, NULL, NULL),
(843, '02-Mar-2023', '3', 'GS', '05:41', '18:24', '9:01', '1:24', '10:25', 'Present', '', 'March - 2023', '2023-05-02 11:14:16', 1, 1, NULL, NULL, NULL, NULL, NULL),
(844, '02-Mar-2023', '4', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'March - 2023', '2023-05-02 11:14:16', 1, 0, NULL, NULL, NULL, NULL, NULL),
(845, '02-Mar-2023', '5', 'GS', '07:29', '17:01', '9:02', '00:00', '9:02', 'Present', '', 'March - 2023', '2023-05-02 11:14:16', 1, 1, NULL, NULL, NULL, NULL, NULL),
(846, '02-Mar-2023', '6', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'March - 2023', '2023-05-02 11:14:16', 1, 0, NULL, NULL, NULL, NULL, NULL),
(847, '02-Mar-2023', '7', 'GS', '07:42', '17:01', '9:02', '00:00', '9:02', 'Present', '', 'March - 2023', '2023-05-02 11:14:16', 1, 1, NULL, NULL, NULL, NULL, NULL),
(848, '02-Mar-2023', '8', 'GS', '08:05', '17:00', '8:55', '00:00', '8:55', 'Present', '', 'March - 2023', '2023-05-02 11:14:16', 1, 1, NULL, NULL, NULL, NULL, NULL),
(849, '02-Mar-2023', '9', 'GS', '07:42', '17:00', '9:01', '00:00', '9:01', 'Present', '', 'March - 2023', '2023-05-02 11:14:16', 1, 1, NULL, NULL, NULL, NULL, NULL),
(850, '02-Mar-2023', '10', 'GS', '07:42', '16:57', '8:58', '00:00', '8:58', 'Present', '', 'March - 2023', '2023-05-02 11:14:16', 1, 1, NULL, NULL, NULL, NULL, NULL),
(851, '02-Mar-2023', '11', 'GS', '07:42', '16:54', '8:55', '00:00', '8:55', 'Present', '', 'March - 2023', '2023-05-02 11:14:16', 1, 1, NULL, NULL, NULL, NULL, NULL),
(852, '02-Mar-2023', '14', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'March - 2023', '2023-05-02 11:14:16', 1, 0, NULL, NULL, NULL, NULL, NULL),
(853, '02-Mar-2023', '15', 'GS', '07:35', '16:50', '8:51', '00:00', '8:51', 'Present', '', 'March - 2023', '2023-05-02 11:14:16', 1, 1, NULL, NULL, NULL, NULL, NULL),
(854, '02-Mar-2023', '16', 'GS', '08:17', '16:52', '8:35', '00:00', '8:35', 'Present', '', 'March - 2023', '2023-05-02 11:14:16', 1, 1, NULL, NULL, NULL, NULL, NULL),
(855, '02-Mar-2023', '17', 'GS', '07:29', '17:18', '9:19', '00:00', '9:19', 'Present', '', 'March - 2023', '2023-05-02 11:14:16', 1, 1, NULL, NULL, NULL, NULL, NULL),
(856, '02-Mar-2023', '18', 'GS', '07:29', '16:58', '8:59', '00:00', '8:59', 'Present', '', 'March - 2023', '2023-05-02 11:14:16', 1, 1, NULL, NULL, NULL, NULL, NULL),
(857, '02-Mar-2023', '19', 'GS', '07:29', '17:17', '9:18', '00:00', '9:18', 'Present', '', 'March - 2023', '2023-05-02 11:14:16', 1, 1, NULL, NULL, NULL, NULL, NULL),
(858, '02-Mar-2023', '20', 'GS', '06:47', '15:59', '8:00', '00:00', '8:00', 'Present', '', 'March - 2023', '2023-05-02 11:14:16', 1, 1, NULL, NULL, NULL, NULL, NULL),
(859, '02-Mar-2023', '21', 'GS', '07:42', '16:59', '9:00', '00:00', '9:00', 'Present', '', 'March - 2023', '2023-05-02 11:14:16', 1, 1, NULL, NULL, NULL, NULL, NULL),
(860, '02-Mar-2023', '22', 'GS', '08:18', '', '00:00', '00:00', '00:00', 'Absent (No OutPunch)', '', 'March - 2023', '2023-05-02 11:14:16', 1, 0, NULL, NULL, NULL, NULL, NULL),
(861, '02-Mar-2023', '23', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'March - 2023', '2023-05-02 11:14:16', 1, 0, NULL, NULL, NULL, NULL, NULL),
(862, '02-Mar-2023', '24', 'Sam', '06:43', '21:22', '00:00', '14:39', '14:39', 'Absent', '', 'March - 2023', '2023-05-02 11:14:16', 1, 0, NULL, NULL, NULL, NULL, NULL),
(863, '02-Mar-2023', '26', 'GS', '07:42', '16:57', '8:58', '00:00', '8:58', 'Present', '', 'March - 2023', '2023-05-02 11:14:16', 1, 1, NULL, NULL, NULL, NULL, NULL),
(864, '02-Mar-2023', '28', 'GS', '07:42', '16:57', '8:58', '00:00', '8:58', 'Present', '', 'March - 2023', '2023-05-02 11:14:16', 1, 1, NULL, NULL, NULL, NULL, NULL),
(865, '02-Mar-2023', '30', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'March - 2023', '2023-05-02 11:14:16', 1, 0, NULL, NULL, NULL, NULL, NULL),
(866, '02-Mar-2023', '33', 'NS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'March - 2023', '2023-05-02 11:14:16', 1, 0, NULL, NULL, NULL, NULL, NULL),
(867, '02-Mar-2023', '34', 'GS', '07:50', '16:54', '8:54', '00:00', '8:54', 'Present', '', 'March - 2023', '2023-05-02 11:14:16', 1, 1, NULL, NULL, NULL, NULL, NULL),
(868, '02-Mar-2023', '35', 'GS', '07:42', '16:58', '8:59', '00:00', '8:59', 'Present', '', 'March - 2023', '2023-05-02 11:14:16', 1, 1, NULL, NULL, NULL, NULL, NULL),
(869, '02-Mar-2023', '36', 'NS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'March - 2023', '2023-05-02 11:14:16', 1, 0, NULL, NULL, NULL, NULL, NULL),
(870, '02-Mar-2023', '', '', '', '', '', '', '', '', '', 'March - 2023', '2023-05-02 11:14:16', 1, 0, NULL, NULL, NULL, NULL, NULL),
(871, '03-Mar-2023', '1', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'March - 2023', '2023-05-02 11:14:16', 1, 0, NULL, NULL, NULL, NULL, NULL),
(872, '03-Mar-2023', '3', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'March - 2023', '2023-05-02 11:14:16', 1, 0, NULL, NULL, NULL, NULL, NULL),
(873, '03-Mar-2023', '4', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'March - 2023', '2023-05-02 11:14:16', 1, 0, NULL, NULL, NULL, NULL, NULL),
(874, '03-Mar-2023', '5', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'March - 2023', '2023-05-02 11:14:16', 1, 0, NULL, NULL, NULL, NULL, NULL),
(875, '03-Mar-2023', '6', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'March - 2023', '2023-05-02 11:14:16', 1, 0, NULL, NULL, NULL, NULL, NULL),
(876, '03-Mar-2023', '7', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'March - 2023', '2023-05-02 11:14:16', 1, 0, NULL, NULL, NULL, NULL, NULL),
(877, '03-Mar-2023', '8', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'March - 2023', '2023-05-02 11:14:16', 1, 0, NULL, NULL, NULL, NULL, NULL),
(878, '03-Mar-2023', '9', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'March - 2023', '2023-05-02 11:14:16', 1, 0, NULL, NULL, NULL, NULL, NULL),
(879, '03-Mar-2023', '10', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'March - 2023', '2023-05-02 11:14:16', 1, 0, NULL, NULL, NULL, NULL, NULL),
(880, '03-Mar-2023', '11', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'March - 2023', '2023-05-02 11:14:16', 1, 0, NULL, NULL, NULL, NULL, NULL),
(881, '03-Mar-2023', '14', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'March - 2023', '2023-05-02 11:14:16', 1, 0, NULL, NULL, NULL, NULL, NULL),
(882, '03-Mar-2023', '15', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'March - 2023', '2023-05-02 11:14:16', 1, 0, NULL, NULL, NULL, NULL, NULL),
(883, '03-Mar-2023', '16', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'March - 2023', '2023-05-02 11:14:16', 1, 0, NULL, NULL, NULL, NULL, NULL),
(884, '03-Mar-2023', '17', 'GS', '08:20', '', '00:00', '00:00', '00:00', 'Absent (No OutPunch)', '', 'March - 2023', '2023-05-02 11:14:16', 1, 0, NULL, NULL, NULL, NULL, NULL),
(885, '03-Mar-2023', '18', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'March - 2023', '2023-05-02 11:14:16', 1, 0, NULL, NULL, NULL, NULL, NULL),
(886, '03-Mar-2023', '19', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'March - 2023', '2023-05-02 11:14:16', 1, 0, NULL, NULL, NULL, NULL, NULL),
(887, '03-Mar-2023', '20', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'March - 2023', '2023-05-02 11:14:16', 1, 0, NULL, NULL, NULL, NULL, NULL),
(888, '03-Mar-2023', '21', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'March - 2023', '2023-05-02 11:14:16', 1, 0, NULL, NULL, NULL, NULL, NULL),
(889, '03-Mar-2023', '22', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'March - 2023', '2023-05-02 11:14:16', 1, 0, NULL, NULL, NULL, NULL, NULL),
(890, '03-Mar-2023', '23', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'March - 2023', '2023-05-02 11:14:16', 1, 0, NULL, NULL, NULL, NULL, NULL),
(891, '03-Mar-2023', '24', 'Sam', '01:00', '21:07', '00:01', '20:06', '20:07', 'Absent', '', 'March - 2023', '2023-05-02 11:14:16', 1, 0, NULL, NULL, NULL, NULL, NULL),
(892, '03-Mar-2023', '26', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'March - 2023', '2023-05-02 11:14:16', 1, 0, NULL, NULL, NULL, NULL, NULL),
(893, '03-Mar-2023', '28', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'March - 2023', '2023-05-02 11:14:16', 1, 0, NULL, NULL, NULL, NULL, NULL),
(894, '03-Mar-2023', '30', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'March - 2023', '2023-05-02 11:14:16', 1, 0, NULL, NULL, NULL, NULL, NULL),
(895, '03-Mar-2023', '33', 'NS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'March - 2023', '2023-05-02 11:14:16', 1, 0, NULL, NULL, NULL, NULL, NULL),
(896, '03-Mar-2023', '34', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'March - 2023', '2023-05-02 11:14:16', 1, 0, NULL, NULL, NULL, NULL, NULL),
(897, '03-Mar-2023', '35', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'March - 2023', '2023-05-02 11:14:16', 1, 0, NULL, NULL, NULL, NULL, NULL),
(898, '03-Mar-2023', '36', 'NS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'March - 2023', '2023-05-02 11:14:16', 1, 0, NULL, NULL, NULL, NULL, NULL),
(899, '03-Mar-2023', '', '', '', '', '', '', '', '', '', 'March - 2023', '2023-05-02 11:14:16', 1, 0, NULL, NULL, NULL, NULL, NULL),
(900, '04-Mar-2023', '1', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'March - 2023', '2023-05-02 11:14:16', 1, 0, NULL, NULL, NULL, NULL, NULL),
(901, '04-Mar-2023', '3', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'March - 2023', '2023-05-02 11:14:17', 1, 0, NULL, NULL, NULL, NULL, NULL),
(902, '04-Mar-2023', '4', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'March - 2023', '2023-05-02 11:14:17', 1, 0, NULL, NULL, NULL, NULL, NULL),
(903, '04-Mar-2023', '5', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'March - 2023', '2023-05-02 11:14:17', 1, 0, NULL, NULL, NULL, NULL, NULL),
(904, '04-Mar-2023', '6', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'March - 2023', '2023-05-02 11:14:17', 1, 0, NULL, NULL, NULL, NULL, NULL),
(905, '04-Mar-2023', '7', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'March - 2023', '2023-05-02 11:14:17', 1, 0, NULL, NULL, NULL, NULL, NULL),
(906, '04-Mar-2023', '8', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'March - 2023', '2023-05-02 11:14:17', 1, 0, NULL, NULL, NULL, NULL, NULL),
(907, '04-Mar-2023', '9', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'March - 2023', '2023-05-02 11:14:17', 1, 0, NULL, NULL, NULL, NULL, NULL),
(908, '04-Mar-2023', '10', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'March - 2023', '2023-05-02 11:14:17', 1, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_attendance_master` (`id`, `attend_date`, `attend_emp_id`, `attend_shift`, `attend_in_time`, `attend_out_time`, `attend_work_hours`, `attend_over_time`, `attend_total_hours`, `attend_status`, `attend_notes`, `attend_month_year`, `created_at`, `attend_import_by`, `attend_action_status`, `attend_action_by`, `attend_amount`, `attend_leave_category`, `attend_action_notes`, `attend_action_at`) VALUES
(909, '04-Mar-2023', '11', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'March - 2023', '2023-05-02 11:14:17', 1, 0, NULL, NULL, NULL, NULL, NULL),
(910, '04-Mar-2023', '14', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'March - 2023', '2023-05-02 11:14:17', 1, 0, NULL, NULL, NULL, NULL, NULL),
(911, '04-Mar-2023', '15', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'March - 2023', '2023-05-02 11:14:17', 1, 0, NULL, NULL, NULL, NULL, NULL),
(912, '04-Mar-2023', '16', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'March - 2023', '2023-05-02 11:14:17', 1, 0, NULL, NULL, NULL, NULL, NULL),
(913, '04-Mar-2023', '17', 'GS', '09:02', '16:21', '00:00', '7:19', '7:19', 'WeeklyOff Present', '', 'March - 2023', '2023-05-02 11:14:17', 1, 0, NULL, NULL, NULL, NULL, NULL),
(914, '04-Mar-2023', '18', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'March - 2023', '2023-05-02 11:14:17', 1, 0, NULL, NULL, NULL, NULL, NULL),
(915, '04-Mar-2023', '19', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'March - 2023', '2023-05-02 11:14:17', 1, 0, NULL, NULL, NULL, NULL, NULL),
(916, '04-Mar-2023', '20', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'March - 2023', '2023-05-02 11:14:17', 1, 0, NULL, NULL, NULL, NULL, NULL),
(917, '04-Mar-2023', '21', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'March - 2023', '2023-05-02 11:14:17', 1, 0, NULL, NULL, NULL, NULL, NULL),
(918, '04-Mar-2023', '22', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'March - 2023', '2023-05-02 11:14:17', 1, 0, NULL, NULL, NULL, NULL, NULL),
(919, '04-Mar-2023', '23', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'March - 2023', '2023-05-02 11:14:17', 1, 0, NULL, NULL, NULL, NULL, NULL),
(920, '04-Mar-2023', '24', 'Sam', '01:06', '21:09', '00:00', '20:03', '20:03', 'WeeklyOff Present', '', 'March - 2023', '2023-05-02 11:14:17', 1, 0, NULL, NULL, NULL, NULL, NULL),
(921, '04-Mar-2023', '26', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'March - 2023', '2023-05-02 11:14:17', 1, 0, NULL, NULL, NULL, NULL, NULL),
(922, '04-Mar-2023', '28', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'March - 2023', '2023-05-02 11:14:17', 1, 0, NULL, NULL, NULL, NULL, NULL),
(923, '04-Mar-2023', '30', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'March - 2023', '2023-05-02 11:14:17', 1, 0, NULL, NULL, NULL, NULL, NULL),
(924, '04-Mar-2023', '33', 'NS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'March - 2023', '2023-05-02 11:14:17', 1, 0, NULL, NULL, NULL, NULL, NULL),
(925, '04-Mar-2023', '34', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'March - 2023', '2023-05-02 11:14:17', 1, 0, NULL, NULL, NULL, NULL, NULL),
(926, '04-Mar-2023', '35', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'March - 2023', '2023-05-02 11:14:17', 1, 0, NULL, NULL, NULL, NULL, NULL),
(927, '04-Mar-2023', '36', 'NS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'March - 2023', '2023-05-02 11:14:17', 1, 0, NULL, NULL, NULL, NULL, NULL),
(928, '04-Mar-2023', '', '', '', '', '', '', '', '', '', 'March - 2023', '2023-05-02 11:14:17', 1, 0, NULL, NULL, NULL, NULL, NULL),
(929, '05-Mar-2023', '1', 'GS', '09:59', '', '00:00', '00:00', '00:00', 'Absent (No OutPunch)', '', 'March - 2023', '2023-05-02 11:14:17', 1, 0, NULL, NULL, NULL, NULL, NULL),
(930, '05-Mar-2023', '3', 'GS', '05:26', '16:37', '00:00', '11:11', '11:11', 'WeeklyOff Present', '', 'March - 2023', '2023-05-02 11:14:17', 1, 0, NULL, NULL, NULL, NULL, NULL),
(931, '05-Mar-2023', '4', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'March - 2023', '2023-05-02 11:14:17', 1, 0, NULL, NULL, NULL, NULL, NULL),
(932, '05-Mar-2023', '5', 'GS', '07:31', '16:59', '00:00', '9:28', '9:28', 'WeeklyOff Present', '', 'March - 2023', '2023-05-02 11:14:17', 1, 0, NULL, NULL, NULL, NULL, NULL),
(933, '05-Mar-2023', '6', 'GS', '07:41', '16:59', '00:00', '9:18', '9:18', 'WeeklyOff Present', '', 'March - 2023', '2023-05-02 11:14:17', 1, 0, NULL, NULL, NULL, NULL, NULL),
(934, '05-Mar-2023', '7', 'GS', '07:42', '16:59', '00:00', '9:17', '9:17', 'WeeklyOff Present', '', 'March - 2023', '2023-05-02 11:14:17', 1, 0, NULL, NULL, NULL, NULL, NULL),
(935, '05-Mar-2023', '8', 'GS', '08:02', '16:59', '00:00', '8:55', '8:55', 'WeeklyOff Present', '', 'March - 2023', '2023-05-02 11:14:17', 1, 0, NULL, NULL, NULL, NULL, NULL),
(936, '05-Mar-2023', '9', 'GS', '07:41', '16:59', '00:00', '9:18', '9:18', 'WeeklyOff Present', '', 'March - 2023', '2023-05-02 11:14:17', 1, 0, NULL, NULL, NULL, NULL, NULL),
(937, '05-Mar-2023', '10', 'GS', '07:42', '16:58', '00:00', '9:16', '9:16', 'WeeklyOff Present', '', 'March - 2023', '2023-05-02 11:14:17', 1, 0, NULL, NULL, NULL, NULL, NULL),
(938, '05-Mar-2023', '11', 'GS', '07:41', '', '00:00', '00:00', '00:00', 'Absent (No OutPunch)', '', 'March - 2023', '2023-05-02 11:14:17', 1, 0, NULL, NULL, NULL, NULL, NULL),
(939, '05-Mar-2023', '14', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'March - 2023', '2023-05-02 11:14:17', 1, 0, NULL, NULL, NULL, NULL, NULL),
(940, '05-Mar-2023', '15', 'GS', '08:13', '16:15', '00:00', '8:02', '8:02', 'WeeklyOff Present', '', 'March - 2023', '2023-05-02 11:14:17', 1, 0, NULL, NULL, NULL, NULL, NULL),
(941, '05-Mar-2023', '16', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'March - 2023', '2023-05-02 11:14:17', 1, 0, NULL, NULL, NULL, NULL, NULL),
(942, '05-Mar-2023', '17', 'GS', '07:31', '', '00:00', '00:00', '00:00', 'WeeklyOff  (No OutPunch)', '', 'March - 2023', '2023-05-02 11:14:17', 1, 0, NULL, NULL, NULL, NULL, NULL),
(943, '05-Mar-2023', '18', 'GS', '07:31', '10:41', '00:00', '3:10', '3:10', 'WeeklyOff  ½Present', '', 'March - 2023', '2023-05-02 11:14:17', 1, 0, NULL, NULL, NULL, NULL, NULL),
(944, '05-Mar-2023', '19', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'March - 2023', '2023-05-02 11:14:17', 1, 0, NULL, NULL, NULL, NULL, NULL),
(945, '05-Mar-2023', '20', 'GS', '07:06', '15:34', '00:00', '8:28', '8:28', 'WeeklyOff Present', '', 'March - 2023', '2023-05-02 11:14:17', 1, 0, NULL, NULL, NULL, NULL, NULL),
(946, '05-Mar-2023', '21', 'GS', '07:41', '16:59', '00:00', '9:18', '9:18', 'WeeklyOff Present', '', 'March - 2023', '2023-05-02 11:14:17', 1, 0, NULL, NULL, NULL, NULL, NULL),
(947, '05-Mar-2023', '22', 'GS', '08:20', '13:56', '00:00', '5:36', '5:36', 'WeeklyOff Present', '', 'March - 2023', '2023-05-02 11:14:17', 1, 0, NULL, NULL, NULL, NULL, NULL),
(948, '05-Mar-2023', '23', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'March - 2023', '2023-05-02 11:14:17', 1, 0, NULL, NULL, NULL, NULL, NULL),
(949, '05-Mar-2023', '24', 'Sam', '01:07', '05:10', '00:00', '4:03', '4:03', 'WeeklyOff Present', '', 'March - 2023', '2023-05-02 11:14:17', 1, 0, NULL, NULL, NULL, NULL, NULL),
(950, '05-Mar-2023', '26', 'GS', '07:41', '16:59', '00:00', '9:18', '9:18', 'WeeklyOff Present', '', 'March - 2023', '2023-05-02 11:14:17', 1, 0, NULL, NULL, NULL, NULL, NULL),
(951, '05-Mar-2023', '28', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'March - 2023', '2023-05-02 11:14:17', 1, 0, NULL, NULL, NULL, NULL, NULL),
(952, '05-Mar-2023', '30', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'March - 2023', '2023-05-02 11:14:17', 1, 0, NULL, NULL, NULL, NULL, NULL),
(953, '05-Mar-2023', '33', 'NS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'March - 2023', '2023-05-02 11:14:17', 1, 0, NULL, NULL, NULL, NULL, NULL),
(954, '05-Mar-2023', '34', 'GS', '07:50', '16:57', '00:00', '9:07', '9:07', 'WeeklyOff Present', '', 'March - 2023', '2023-05-02 11:14:17', 1, 0, NULL, NULL, NULL, NULL, NULL),
(955, '05-Mar-2023', '35', 'GS', '07:41', '', '00:00', '00:00', '00:00', 'Absent (No OutPunch)', '', 'March - 2023', '2023-05-02 11:14:17', 1, 0, NULL, NULL, NULL, NULL, NULL),
(956, '05-Mar-2023', '36', 'NS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'March - 2023', '2023-05-02 11:14:17', 1, 0, NULL, NULL, NULL, NULL, NULL),
(957, '05-Mar-2023', '', '', '', '', '', '', '', '', '', 'March - 2023', '2023-05-02 11:14:17', 1, 0, NULL, NULL, NULL, NULL, NULL),
(958, '06-Mar-2023', '1', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'March - 2023', '2023-05-02 11:14:17', 1, 0, NULL, NULL, NULL, NULL, NULL),
(959, '06-Mar-2023', '3', 'GS', '05:34', '18:13', '9:01', '1:13', '10:14', 'Present', '', 'March - 2023', '2023-05-02 11:14:17', 1, 1, NULL, NULL, NULL, NULL, NULL),
(960, '06-Mar-2023', '4', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'March - 2023', '2023-05-02 11:14:17', 1, 0, NULL, NULL, NULL, NULL, NULL),
(961, '06-Mar-2023', '5', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'March - 2023', '2023-05-02 11:14:17', 1, 0, NULL, NULL, NULL, NULL, NULL),
(962, '06-Mar-2023', '6', 'GS', '07:35', '17:00', '9:01', '00:00', '9:01', 'Present', '', 'March - 2023', '2023-05-02 11:14:17', 1, 1, NULL, NULL, NULL, NULL, NULL),
(963, '06-Mar-2023', '7', 'GS', '07:35', '17:00', '9:01', '00:00', '9:01', 'Present', '', 'March - 2023', '2023-05-02 11:14:17', 1, 1, NULL, NULL, NULL, NULL, NULL),
(964, '06-Mar-2023', '8', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'March - 2023', '2023-05-02 11:14:17', 1, 0, NULL, NULL, NULL, NULL, NULL),
(965, '06-Mar-2023', '9', 'GS', '07:36', '16:58', '8:59', '00:00', '8:59', 'Present', '', 'March - 2023', '2023-05-02 11:14:17', 1, 1, NULL, NULL, NULL, NULL, NULL),
(966, '06-Mar-2023', '10', 'GS', '07:35', '16:58', '8:59', '00:00', '8:59', 'Present', '', 'March - 2023', '2023-05-02 11:14:17', 1, 1, NULL, NULL, NULL, NULL, NULL),
(967, '06-Mar-2023', '11', 'GS', '07:35', '17:00', '9:01', '00:00', '9:01', 'Present', '', 'March - 2023', '2023-05-02 11:14:17', 1, 1, NULL, NULL, NULL, NULL, NULL),
(968, '06-Mar-2023', '14', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'March - 2023', '2023-05-02 11:14:17', 1, 0, NULL, NULL, NULL, NULL, NULL),
(969, '06-Mar-2023', '15', 'GS', '07:45', '16:42', '8:42', '00:00', '8:42', 'Present', '', 'March - 2023', '2023-05-02 11:14:17', 1, 1, NULL, NULL, NULL, NULL, NULL),
(970, '06-Mar-2023', '16', 'GS', '08:11', '16:58', '8:47', '00:00', '8:47', 'Present', '', 'March - 2023', '2023-05-02 11:14:17', 1, 1, NULL, NULL, NULL, NULL, NULL),
(971, '06-Mar-2023', '17', 'GS', '07:41', '17:02', '9:03', '00:00', '9:03', 'Present', '', 'March - 2023', '2023-05-02 11:14:17', 1, 1, NULL, NULL, NULL, NULL, NULL),
(972, '06-Mar-2023', '18', 'GS', '07:41', '16:59', '8:59', '00:00', '8:59', 'Present', '', 'March - 2023', '2023-05-02 11:14:17', 1, 1, NULL, NULL, NULL, NULL, NULL),
(973, '06-Mar-2023', '19', 'GS', '07:41', '16:58', '8:59', '00:00', '8:59', 'Present', '', 'March - 2023', '2023-05-02 11:14:17', 1, 1, NULL, NULL, NULL, NULL, NULL),
(974, '06-Mar-2023', '20', 'GS', '13:57', '', '00:00', '00:00', '00:00', 'Absent (No OutPunch)', '', 'March - 2023', '2023-05-02 11:14:17', 1, 0, NULL, NULL, NULL, NULL, NULL),
(975, '06-Mar-2023', '21', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'March - 2023', '2023-05-02 11:14:17', 1, 0, NULL, NULL, NULL, NULL, NULL),
(976, '06-Mar-2023', '22', 'GS', '13:54', '', '00:00', '00:00', '00:00', 'Absent (No OutPunch)', '', 'March - 2023', '2023-05-02 11:14:17', 1, 0, NULL, NULL, NULL, NULL, NULL),
(977, '06-Mar-2023', '23', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'March - 2023', '2023-05-02 11:14:17', 1, 0, NULL, NULL, NULL, NULL, NULL),
(978, '06-Mar-2023', '24', 'Sam', '01:05', '21:07', '00:00', '20:02', '20:02', 'Absent', '', 'March - 2023', '2023-05-02 11:14:17', 1, 0, NULL, NULL, NULL, NULL, NULL),
(979, '06-Mar-2023', '26', 'GS', '07:35', '16:58', '8:59', '00:00', '8:59', 'Present', '', 'March - 2023', '2023-05-02 11:14:17', 1, 1, NULL, NULL, NULL, NULL, NULL),
(980, '06-Mar-2023', '28', 'GS', '07:35', '16:58', '8:59', '00:00', '8:59', 'Present', '', 'March - 2023', '2023-05-02 11:14:17', 1, 1, NULL, NULL, NULL, NULL, NULL),
(981, '06-Mar-2023', '30', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'March - 2023', '2023-05-02 11:14:17', 1, 0, NULL, NULL, NULL, NULL, NULL),
(982, '06-Mar-2023', '33', 'GS', '16:06', '', '00:00', '00:00', '00:00', 'Absent (No OutPunch)', '', 'March - 2023', '2023-05-02 11:14:17', 1, 0, NULL, NULL, NULL, NULL, NULL),
(983, '06-Mar-2023', '34', 'GS', '07:54', '16:59', '9:00', '00:00', '9:00', 'Present', '', 'March - 2023', '2023-05-02 11:14:17', 1, 1, NULL, NULL, NULL, NULL, NULL),
(984, '06-Mar-2023', '35', 'GS', '17:02', '', '00:00', '00:00', '00:00', 'Absent (No OutPunch)', '', 'March - 2023', '2023-05-02 11:14:17', 1, 0, NULL, NULL, NULL, NULL, NULL),
(985, '06-Mar-2023', '36', 'NS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'March - 2023', '2023-05-02 11:14:17', 1, 0, NULL, NULL, NULL, NULL, NULL),
(986, '06-Mar-2023', '', '', '', '', '', '', '', '', '', 'March - 2023', '2023-05-02 11:14:17', 1, 0, NULL, NULL, NULL, NULL, NULL),
(987, '07-Mar-2023', '1', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'March - 2023', '2023-05-02 11:14:17', 1, 0, NULL, NULL, NULL, NULL, NULL),
(988, '07-Mar-2023', '3', 'GS', '09:04', '18:03', '7:56', '1:03', '8:59', 'Present', '', 'March - 2023', '2023-05-02 11:14:17', 1, 1, NULL, NULL, NULL, NULL, NULL),
(989, '07-Mar-2023', '4', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'March - 2023', '2023-05-02 11:14:17', 1, 0, NULL, NULL, NULL, NULL, NULL),
(990, '07-Mar-2023', '5', 'GS', '07:31', '17:08', '9:09', '00:00', '9:09', 'Present', '', 'March - 2023', '2023-05-02 11:14:17', 1, 1, NULL, NULL, NULL, NULL, NULL),
(991, '07-Mar-2023', '6', 'GS', '07:34', '17:00', '9:01', '00:00', '9:01', 'Present', '', 'March - 2023', '2023-05-02 11:14:17', 1, 1, NULL, NULL, NULL, NULL, NULL),
(992, '07-Mar-2023', '7', 'GS', '07:34', '17:00', '9:01', '00:00', '9:01', 'Present', '', 'March - 2023', '2023-05-02 11:14:17', 1, 1, NULL, NULL, NULL, NULL, NULL),
(993, '07-Mar-2023', '8', 'GS', '08:12', '17:04', '8:52', '00:00', '8:52', 'Present', '', 'March - 2023', '2023-05-02 11:14:17', 1, 1, NULL, NULL, NULL, NULL, NULL),
(994, '07-Mar-2023', '9', 'GS', '07:34', '16:59', '9:00', '00:00', '9:00', 'Present', '', 'March - 2023', '2023-05-02 11:14:17', 1, 1, NULL, NULL, NULL, NULL, NULL),
(995, '07-Mar-2023', '10', 'GS', '07:34', '16:59', '9:00', '00:00', '9:00', 'Present', '', 'March - 2023', '2023-05-02 11:14:17', 1, 1, NULL, NULL, NULL, NULL, NULL),
(996, '07-Mar-2023', '11', 'GS', '07:33', '17:00', '9:01', '00:00', '9:01', 'Present', '', 'March - 2023', '2023-05-02 11:14:17', 1, 1, NULL, NULL, NULL, NULL, NULL),
(997, '07-Mar-2023', '14', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'March - 2023', '2023-05-02 11:14:17', 1, 0, NULL, NULL, NULL, NULL, NULL),
(998, '07-Mar-2023', '15', 'GS', '07:40', '15:42', '7:43', '00:00', '7:43', 'Present', '', 'March - 2023', '2023-05-02 11:14:17', 1, 1, NULL, NULL, NULL, NULL, NULL),
(999, '07-Mar-2023', '16', 'GS', '08:18', '16:53', '8:35', '00:00', '8:35', 'Present', '', 'March - 2023', '2023-05-02 11:14:17', 1, 1, NULL, NULL, NULL, NULL, NULL),
(1000, '07-Mar-2023', '17', 'GS', '07:31', '17:15', '9:16', '00:00', '9:16', 'Present', '', 'March - 2023', '2023-05-02 11:14:17', 1, 1, NULL, NULL, NULL, NULL, NULL),
(1001, '07-Mar-2023', '18', 'GS', '09:11', '17:13', '8:02', '00:00', '8:02', 'Present', '', 'March - 2023', '2023-05-02 11:14:17', 1, 1, NULL, NULL, NULL, NULL, NULL),
(1002, '07-Mar-2023', '19', 'GS', '07:31', '17:13', '9:14', '00:00', '9:14', 'Present', '', 'March - 2023', '2023-05-02 11:14:17', 1, 1, NULL, NULL, NULL, NULL, NULL),
(1003, '07-Mar-2023', '20', 'GS', '08:20', '12:28', '4:08', '00:00', '4:08', 'Present', '', 'March - 2023', '2023-05-02 11:14:17', 1, 1, NULL, NULL, NULL, NULL, NULL),
(1004, '07-Mar-2023', '21', 'GS', '07:34', '16:59', '9:00', '00:00', '9:00', 'Present', '', 'March - 2023', '2023-05-02 11:14:17', 1, 1, NULL, NULL, NULL, NULL, NULL),
(1005, '07-Mar-2023', '22', 'GS', '08:25', '13:58', '5:33', '00:00', '5:33', 'Present', '', 'March - 2023', '2023-05-02 11:14:17', 1, 1, NULL, NULL, NULL, NULL, NULL),
(1006, '07-Mar-2023', '23', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'March - 2023', '2023-05-02 11:14:17', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1007, '07-Mar-2023', '24', 'Sam', '01:28', '21:06', '00:00', '19:38', '19:38', 'Absent', '', 'March - 2023', '2023-05-02 11:14:17', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1008, '07-Mar-2023', '26', 'GS', '07:34', '16:59', '9:00', '00:00', '9:00', 'Present', '', 'March - 2023', '2023-05-02 11:14:17', 1, 1, NULL, NULL, NULL, NULL, NULL),
(1009, '07-Mar-2023', '28', 'GS', '07:34', '16:59', '9:00', '00:00', '9:00', 'Present', '', 'March - 2023', '2023-05-02 11:14:17', 1, 1, NULL, NULL, NULL, NULL, NULL),
(1010, '07-Mar-2023', '30', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'March - 2023', '2023-05-02 11:14:17', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1011, '07-Mar-2023', '33', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'March - 2023', '2023-05-02 11:14:17', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1012, '07-Mar-2023', '34', 'GS', '08:04', '16:57', '8:53', '00:00', '8:53', 'Present', '', 'March - 2023', '2023-05-02 11:14:17', 1, 1, NULL, NULL, NULL, NULL, NULL),
(1013, '07-Mar-2023', '35', 'GS', '07:33', '16:59', '9:00', '00:00', '9:00', 'Present', '', 'March - 2023', '2023-05-02 11:14:17', 1, 1, NULL, NULL, NULL, NULL, NULL),
(1014, '07-Mar-2023', '36', 'NS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'March - 2023', '2023-05-02 11:14:17', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1015, '07-Mar-2023', '', '', '', '', '', '', '', '', '', 'March - 2023', '2023-05-02 11:14:17', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1016, '08-Mar-2023', '1', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'March - 2023', '2023-05-02 11:14:17', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1017, '08-Mar-2023', '3', 'GS', '05:38', '18:08', '9:01', '1:08', '10:09', 'Present', '', 'March - 2023', '2023-05-02 11:14:17', 1, 1, NULL, NULL, NULL, NULL, NULL),
(1018, '08-Mar-2023', '4', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'March - 2023', '2023-05-02 11:14:17', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1019, '08-Mar-2023', '5', 'GS', '07:33', '17:08', '9:09', '00:00', '9:09', 'Present', '', 'March - 2023', '2023-05-02 11:14:17', 1, 1, NULL, NULL, NULL, NULL, NULL),
(1020, '08-Mar-2023', '6', 'GS', '07:39', '16:59', '9:00', '00:00', '9:00', 'Present', '', 'March - 2023', '2023-05-02 11:14:17', 1, 1, NULL, NULL, NULL, NULL, NULL),
(1021, '08-Mar-2023', '7', 'GS', '07:40', '16:59', '9:00', '00:00', '9:00', 'Present', '', 'March - 2023', '2023-05-02 11:14:17', 1, 1, NULL, NULL, NULL, NULL, NULL),
(1022, '08-Mar-2023', '8', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'March - 2023', '2023-05-02 11:14:17', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1023, '08-Mar-2023', '9', 'GS', '07:40', '16:59', '9:00', '00:00', '9:00', 'Present', '', 'March - 2023', '2023-05-02 11:14:17', 1, 1, NULL, NULL, NULL, NULL, NULL),
(1024, '08-Mar-2023', '10', 'GS', '07:39', '17:00', '9:01', '00:00', '9:01', 'Present', '', 'March - 2023', '2023-05-02 11:14:17', 1, 1, NULL, NULL, NULL, NULL, NULL),
(1025, '08-Mar-2023', '11', 'GS', '07:39', '16:59', '9:00', '00:00', '9:00', 'Present', '', 'March - 2023', '2023-05-02 11:14:17', 1, 1, NULL, NULL, NULL, NULL, NULL),
(1026, '08-Mar-2023', '14', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'March - 2023', '2023-05-02 11:14:17', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1027, '08-Mar-2023', '15', 'GS', '08:08', '16:54', '8:46', '00:00', '8:46', 'Present', '', 'March - 2023', '2023-05-02 11:14:17', 1, 1, NULL, NULL, NULL, NULL, NULL),
(1028, '08-Mar-2023', '16', 'GS', '08:09', '16:54', '8:45', '00:00', '8:45', 'Present', '', 'March - 2023', '2023-05-02 11:14:17', 1, 1, NULL, NULL, NULL, NULL, NULL),
(1029, '08-Mar-2023', '17', 'GS', '07:33', '17:17', '9:18', '00:00', '9:18', 'Present', '', 'March - 2023', '2023-05-02 11:14:17', 1, 1, NULL, NULL, NULL, NULL, NULL),
(1030, '08-Mar-2023', '18', 'GS', '07:33', '17:08', '9:09', '00:00', '9:09', 'Present', '', 'March - 2023', '2023-05-02 11:14:17', 1, 1, NULL, NULL, NULL, NULL, NULL),
(1031, '08-Mar-2023', '19', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'March - 2023', '2023-05-02 11:14:17', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1032, '08-Mar-2023', '20', 'GS', '07:07', '14:19', '6:20', '00:00', '6:20', 'Present', '', 'March - 2023', '2023-05-02 11:14:17', 1, 1, NULL, NULL, NULL, NULL, NULL),
(1033, '08-Mar-2023', '21', 'GS', '07:40', '16:59', '9:00', '00:00', '9:00', 'Present', '', 'March - 2023', '2023-05-02 11:14:17', 1, 1, NULL, NULL, NULL, NULL, NULL),
(1034, '08-Mar-2023', '22', 'GS', '08:10', '13:46', '5:36', '00:00', '5:36', 'Present', '', 'March - 2023', '2023-05-02 11:14:17', 1, 1, NULL, NULL, NULL, NULL, NULL),
(1035, '08-Mar-2023', '23', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'March - 2023', '2023-05-02 11:14:17', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1036, '08-Mar-2023', '24', 'Sam', '01:06', '21:07', '00:01', '20:00', '20:01', 'Absent', '', 'March - 2023', '2023-05-02 11:14:17', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1037, '08-Mar-2023', '26', 'GS', '07:40', '17:00', '9:01', '00:00', '9:01', 'Present', '', 'March - 2023', '2023-05-02 11:14:17', 1, 1, NULL, NULL, NULL, NULL, NULL),
(1038, '08-Mar-2023', '28', 'GS', '07:40', '17:00', '9:00', '00:00', '9:00', 'Present', '', 'March - 2023', '2023-05-02 11:14:17', 1, 1, NULL, NULL, NULL, NULL, NULL),
(1039, '08-Mar-2023', '30', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'March - 2023', '2023-05-02 11:14:17', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1040, '08-Mar-2023', '33', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'March - 2023', '2023-05-02 11:14:17', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1041, '08-Mar-2023', '34', 'GS', '07:55', '16:56', '8:52', '00:00', '8:52', 'Present', '', 'March - 2023', '2023-05-02 11:14:17', 1, 1, NULL, NULL, NULL, NULL, NULL),
(1042, '08-Mar-2023', '35', 'GS', '07:39', '16:55', '8:56', '00:00', '8:56', 'Present', '', 'March - 2023', '2023-05-02 11:14:17', 1, 1, NULL, NULL, NULL, NULL, NULL),
(1043, '08-Mar-2023', '36', 'NS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'March - 2023', '2023-05-02 11:14:17', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1044, '08-Mar-2023', '', '', '', '', '', '', '', '', '', 'March - 2023', '2023-05-02 11:14:17', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1045, '09-Mar-2023', '1', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'March - 2023', '2023-05-02 11:14:17', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1046, '09-Mar-2023', '3', 'GS', '08:57', '18:10', '8:03', '1:10', '9:13', 'Present', '', 'March - 2023', '2023-05-02 11:14:17', 1, 1, NULL, NULL, NULL, NULL, NULL),
(1047, '09-Mar-2023', '4', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'March - 2023', '2023-05-02 11:14:17', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1048, '09-Mar-2023', '5', 'GS', '07:33', '16:58', '8:59', '00:00', '8:59', 'Present', '', 'March - 2023', '2023-05-02 11:14:17', 1, 1, NULL, NULL, NULL, NULL, NULL),
(1049, '09-Mar-2023', '6', 'GS', '07:36', '16:57', '8:58', '00:00', '8:58', 'Present', '', 'March - 2023', '2023-05-02 11:14:17', 1, 1, NULL, NULL, NULL, NULL, NULL),
(1050, '09-Mar-2023', '7', 'GS', '07:36', '', '00:00', '00:00', '00:00', 'Absent (No OutPunch)', '', 'March - 2023', '2023-05-02 11:14:17', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1051, '09-Mar-2023', '8', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'March - 2023', '2023-05-02 11:14:17', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1052, '09-Mar-2023', '9', 'GS', '07:36', '16:58', '8:59', '00:00', '8:59', 'Present', '', 'March - 2023', '2023-05-02 11:14:17', 1, 1, NULL, NULL, NULL, NULL, NULL),
(1053, '09-Mar-2023', '10', 'GS', '07:36', '16:57', '8:58', '00:00', '8:58', 'Present', '', 'March - 2023', '2023-05-02 11:14:17', 1, 1, NULL, NULL, NULL, NULL, NULL),
(1054, '09-Mar-2023', '11', 'GS', '07:36', '16:57', '8:58', '00:00', '8:58', 'Present', '', 'March - 2023', '2023-05-02 11:14:17', 1, 1, NULL, NULL, NULL, NULL, NULL),
(1055, '09-Mar-2023', '14', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'March - 2023', '2023-05-02 11:14:17', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1056, '09-Mar-2023', '15', 'GS', '07:49', '16:02', '8:03', '00:00', '8:03', 'Present', '', 'March - 2023', '2023-05-02 11:14:17', 1, 1, NULL, NULL, NULL, NULL, NULL),
(1057, '09-Mar-2023', '16', 'GS', '08:12', '16:54', '8:42', '00:00', '8:42', 'Present', '', 'March - 2023', '2023-05-02 11:14:17', 1, 1, NULL, NULL, NULL, NULL, NULL),
(1058, '09-Mar-2023', '17', 'GS', '07:33', '17:19', '9:20', '00:00', '9:20', 'Present', '', 'March - 2023', '2023-05-02 11:14:17', 1, 1, NULL, NULL, NULL, NULL, NULL),
(1059, '09-Mar-2023', '18', 'GS', '11:07', '17:17', '6:10', '00:00', '6:10', 'Present', '', 'March - 2023', '2023-05-02 11:14:17', 1, 1, NULL, NULL, NULL, NULL, NULL),
(1060, '09-Mar-2023', '19', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'March - 2023', '2023-05-02 11:14:17', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1061, '09-Mar-2023', '20', 'GS', '11:04', '17:25', '6:21', '00:00', '6:21', 'Present', '', 'March - 2023', '2023-05-02 11:14:17', 1, 1, NULL, NULL, NULL, NULL, NULL),
(1062, '09-Mar-2023', '21', 'GS', '07:36', '', '00:00', '00:00', '00:00', 'Absent (No OutPunch)', '', 'March - 2023', '2023-05-02 11:14:17', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1063, '09-Mar-2023', '22', 'GS', '08:05', '13:39', '5:34', '00:00', '5:34', 'Present', '', 'March - 2023', '2023-05-02 11:14:17', 1, 1, NULL, NULL, NULL, NULL, NULL),
(1064, '09-Mar-2023', '23', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'March - 2023', '2023-05-02 11:14:17', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1065, '09-Mar-2023', '24', 'Sam', '14:59', '21:06', '00:00', '6:07', '6:07', 'Absent', '', 'March - 2023', '2023-05-02 11:14:17', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1066, '09-Mar-2023', '26', 'GS', '07:36', '16:57', '8:58', '00:00', '8:58', 'Present', '', 'March - 2023', '2023-05-02 11:14:18', 1, 1, NULL, NULL, NULL, NULL, NULL),
(1067, '09-Mar-2023', '28', 'GS', '07:36', '', '00:00', '00:00', '00:00', 'Absent (No OutPunch)', '', 'March - 2023', '2023-05-02 11:14:18', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1068, '09-Mar-2023', '30', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'March - 2023', '2023-05-02 11:14:18', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1069, '09-Mar-2023', '33', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'March - 2023', '2023-05-02 11:14:18', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1070, '09-Mar-2023', '34', 'GS', '08:03', '16:59', '8:56', '00:00', '8:56', 'Present', '', 'March - 2023', '2023-05-02 11:14:18', 1, 1, NULL, NULL, NULL, NULL, NULL),
(1071, '09-Mar-2023', '35', 'GS', '07:36', '17:00', '9:01', '00:00', '9:01', 'Present', '', 'March - 2023', '2023-05-02 11:14:18', 1, 1, NULL, NULL, NULL, NULL, NULL),
(1072, '09-Mar-2023', '36', 'NS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'March - 2023', '2023-05-02 11:14:18', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1073, '09-Mar-2023', '', '', '', '', '', '', '', '', '', 'March - 2023', '2023-05-02 11:14:18', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1074, '10-Mar-2023', '1', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'March - 2023', '2023-05-02 11:14:18', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1075, '10-Mar-2023', '3', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'March - 2023', '2023-05-02 11:14:18', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1076, '10-Mar-2023', '4', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'March - 2023', '2023-05-02 11:14:18', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1077, '10-Mar-2023', '5', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'March - 2023', '2023-05-02 11:14:18', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1078, '10-Mar-2023', '6', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'March - 2023', '2023-05-02 11:14:18', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1079, '10-Mar-2023', '7', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'March - 2023', '2023-05-02 11:14:18', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1080, '10-Mar-2023', '8', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'March - 2023', '2023-05-02 11:14:18', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1081, '10-Mar-2023', '9', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'March - 2023', '2023-05-02 11:14:18', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1082, '10-Mar-2023', '10', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'March - 2023', '2023-05-02 11:14:18', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1083, '10-Mar-2023', '11', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'March - 2023', '2023-05-02 11:14:18', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1084, '10-Mar-2023', '14', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'March - 2023', '2023-05-02 11:14:18', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1085, '10-Mar-2023', '15', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'March - 2023', '2023-05-02 11:14:18', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1086, '10-Mar-2023', '16', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'March - 2023', '2023-05-02 11:14:18', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1087, '10-Mar-2023', '17', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'March - 2023', '2023-05-02 11:14:18', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1088, '10-Mar-2023', '18', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'March - 2023', '2023-05-02 11:14:18', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1089, '10-Mar-2023', '19', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'March - 2023', '2023-05-02 11:14:18', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1090, '10-Mar-2023', '20', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'March - 2023', '2023-05-02 11:14:18', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1091, '10-Mar-2023', '21', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'March - 2023', '2023-05-02 11:14:18', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1092, '10-Mar-2023', '22', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'March - 2023', '2023-05-02 11:14:18', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1093, '10-Mar-2023', '23', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'March - 2023', '2023-05-02 11:14:18', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1094, '10-Mar-2023', '24', 'Sam', '01:05', '21:07', '00:01', '20:01', '20:02', 'Absent', '', 'March - 2023', '2023-05-02 11:14:18', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1095, '10-Mar-2023', '26', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'March - 2023', '2023-05-02 11:14:18', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1096, '10-Mar-2023', '28', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'March - 2023', '2023-05-02 11:14:18', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1097, '10-Mar-2023', '30', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'March - 2023', '2023-05-02 11:14:18', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1098, '10-Mar-2023', '33', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'March - 2023', '2023-05-02 11:14:18', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1099, '10-Mar-2023', '34', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'March - 2023', '2023-05-02 11:14:18', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1100, '10-Mar-2023', '35', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'March - 2023', '2023-05-02 11:14:18', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1101, '10-Mar-2023', '36', 'NS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'March - 2023', '2023-05-02 11:14:18', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1102, '10-Mar-2023', '', '', '', '', '', '', '', '', '', 'March - 2023', '2023-05-02 11:14:18', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1103, '11-Mar-2023', '1', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'March - 2023', '2023-05-02 11:14:18', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1104, '11-Mar-2023', '3', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'March - 2023', '2023-05-02 11:14:18', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1105, '11-Mar-2023', '4', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'March - 2023', '2023-05-02 11:14:18', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1106, '11-Mar-2023', '5', 'GS', '08:22', '16:58', '00:00', '8:36', '8:36', 'WeeklyOff Present', '', 'March - 2023', '2023-05-02 11:14:18', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1107, '11-Mar-2023', '6', 'GS', '08:22', '16:58', '00:00', '8:36', '8:36', 'WeeklyOff Present', '', 'March - 2023', '2023-05-02 11:14:18', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1108, '11-Mar-2023', '7', 'GS', '08:22', '16:58', '00:00', '8:36', '8:36', 'WeeklyOff Present', '', 'March - 2023', '2023-05-02 11:14:18', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1109, '11-Mar-2023', '8', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'March - 2023', '2023-05-02 11:14:18', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1110, '11-Mar-2023', '9', 'GS', '08:22', '16:58', '00:00', '8:36', '8:36', 'WeeklyOff Present', '', 'March - 2023', '2023-05-02 11:14:18', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1111, '11-Mar-2023', '10', 'GS', '08:22', '16:57', '00:00', '8:35', '8:35', 'WeeklyOff Present', '', 'March - 2023', '2023-05-02 11:14:18', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1112, '11-Mar-2023', '11', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'March - 2023', '2023-05-02 11:14:18', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1113, '11-Mar-2023', '14', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'March - 2023', '2023-05-02 11:14:18', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1114, '11-Mar-2023', '15', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'March - 2023', '2023-05-02 11:14:18', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1115, '11-Mar-2023', '16', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'March - 2023', '2023-05-02 11:14:18', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1116, '11-Mar-2023', '17', 'GS', '09:51', '17:00', '00:00', '7:09', '7:09', 'WeeklyOff Present', '', 'March - 2023', '2023-05-02 11:14:18', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1117, '11-Mar-2023', '18', 'GS', '08:22', '16:57', '00:00', '8:35', '8:35', 'WeeklyOff Present', '', 'March - 2023', '2023-05-02 11:14:18', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1118, '11-Mar-2023', '19', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'March - 2023', '2023-05-02 11:14:18', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1119, '11-Mar-2023', '20', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'March - 2023', '2023-05-02 11:14:18', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1120, '11-Mar-2023', '21', 'GS', '08:22', '16:59', '00:00', '8:37', '8:37', 'WeeklyOff Present', '', 'March - 2023', '2023-05-02 11:14:18', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1121, '11-Mar-2023', '22', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'March - 2023', '2023-05-02 11:14:18', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1122, '11-Mar-2023', '23', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'March - 2023', '2023-05-02 11:14:18', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1123, '11-Mar-2023', '24', 'Sam', '01:05', '07:40', '00:00', '6:35', '6:35', 'WeeklyOff Present', '', 'March - 2023', '2023-05-02 11:14:18', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1124, '11-Mar-2023', '26', 'GS', '08:22', '16:58', '00:00', '8:36', '8:36', 'WeeklyOff Present', '', 'March - 2023', '2023-05-02 11:14:18', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1125, '11-Mar-2023', '28', 'GS', '08:22', '16:58', '00:00', '8:36', '8:36', 'WeeklyOff Present', '', 'March - 2023', '2023-05-02 11:14:18', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1126, '11-Mar-2023', '30', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'March - 2023', '2023-05-02 11:14:18', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1127, '11-Mar-2023', '33', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'March - 2023', '2023-05-02 11:14:18', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1128, '11-Mar-2023', '34', 'GS', '09:04', '17:00', '00:00', '7:56', '7:56', 'WeeklyOff Present', '', 'March - 2023', '2023-05-02 11:14:18', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1129, '11-Mar-2023', '35', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'March - 2023', '2023-05-02 11:14:18', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1130, '11-Mar-2023', '36', 'NS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'March - 2023', '2023-05-02 11:14:18', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1131, '11-Mar-2023', '', '', '', '', '', '', '', '', '', 'March - 2023', '2023-05-02 11:14:18', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1132, '12-Mar-2023', '1', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'March - 2023', '2023-05-02 11:14:18', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1133, '12-Mar-2023', '3', 'GS', '05:30', '18:19', '00:00', '12:49', '12:49', 'WeeklyOff Present', '', 'March - 2023', '2023-05-02 11:14:18', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1134, '12-Mar-2023', '4', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'March - 2023', '2023-05-02 11:14:18', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1135, '12-Mar-2023', '5', 'GS', '07:27', '17:12', '00:00', '9:45', '9:45', 'WeeklyOff Present', '', 'March - 2023', '2023-05-02 11:14:18', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1136, '12-Mar-2023', '6', 'GS', '07:37', '17:05', '00:00', '9:28', '9:28', 'WeeklyOff Present', '', 'March - 2023', '2023-05-02 11:14:18', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1137, '12-Mar-2023', '7', 'GS', '07:37', '', '00:00', '00:00', '00:00', 'WeeklyOff  (No OutPunch)', '', 'March - 2023', '2023-05-02 11:14:18', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1138, '12-Mar-2023', '8', 'GS', '08:02', '16:58', '00:00', '8:53', '8:53', 'WeeklyOff Present', '', 'March - 2023', '2023-05-02 11:14:18', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1139, '12-Mar-2023', '9', 'GS', '07:37', '17:05', '00:00', '9:28', '9:28', 'WeeklyOff Present', '', 'March - 2023', '2023-05-02 11:14:18', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1140, '12-Mar-2023', '10', 'GS', '07:37', '17:02', '00:00', '9:25', '9:25', 'WeeklyOff Present', '', 'March - 2023', '2023-05-02 11:14:18', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1141, '12-Mar-2023', '11', 'GS', '07:36', '', '00:00', '00:00', '00:00', 'Absent (No OutPunch)', '', 'March - 2023', '2023-05-02 11:14:18', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1142, '12-Mar-2023', '14', 'GS', '07:45', '17:21', '00:00', '9:36', '9:36', 'WeeklyOff Present', '', 'March - 2023', '2023-05-02 11:14:18', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1143, '12-Mar-2023', '15', 'GS', '07:40', '16:50', '00:00', '9:10', '9:10', 'WeeklyOff Present', '', 'March - 2023', '2023-05-02 11:14:18', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1144, '12-Mar-2023', '16', 'GS', '08:16', '16:53', '00:00', '8:37', '8:37', 'WeeklyOff Present', '', 'March - 2023', '2023-05-02 11:14:18', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1145, '12-Mar-2023', '17', 'GS', '07:27', '17:18', '00:00', '9:51', '9:51', 'WeeklyOff Present', '', 'March - 2023', '2023-05-02 11:14:18', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1146, '12-Mar-2023', '18', 'GS', '07:27', '17:12', '00:00', '9:45', '9:45', 'WeeklyOff Present', '', 'March - 2023', '2023-05-02 11:14:18', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1147, '12-Mar-2023', '19', 'GS', '10:25', '12:09', '00:00', '1:44', '1:44', 'Absent', '', 'March - 2023', '2023-05-02 11:14:18', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1148, '12-Mar-2023', '20', 'GS', '08:20', '17:01', '00:00', '8:41', '8:41', 'WeeklyOff Present', '', 'March - 2023', '2023-05-02 11:14:18', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1149, '12-Mar-2023', '21', 'GS', '07:37', '17:04', '00:00', '9:27', '9:27', 'WeeklyOff Present', '', 'March - 2023', '2023-05-02 11:14:18', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1150, '12-Mar-2023', '22', 'GS', '08:22', '14:06', '00:00', '5:44', '5:44', 'WeeklyOff Present', '', 'March - 2023', '2023-05-02 11:14:18', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1151, '12-Mar-2023', '23', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'March - 2023', '2023-05-02 11:14:18', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1152, '12-Mar-2023', '24', 'Sam', '18:55', '21:07', '00:00', '2:12', '2:12', 'WeeklyOff  ½Present', '', 'March - 2023', '2023-05-02 11:14:18', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1153, '12-Mar-2023', '26', 'GS', '07:37', '17:07', '00:00', '9:30', '9:30', 'WeeklyOff Present', '', 'March - 2023', '2023-05-02 11:14:18', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1154, '12-Mar-2023', '28', 'GS', '07:37', '17:06', '00:00', '9:29', '9:29', 'WeeklyOff Present', '', 'March - 2023', '2023-05-02 11:14:18', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1155, '12-Mar-2023', '30', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'March - 2023', '2023-05-02 11:14:18', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1156, '12-Mar-2023', '33', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'March - 2023', '2023-05-02 11:14:18', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1157, '12-Mar-2023', '34', 'GS', '08:02', '16:56', '00:00', '8:54', '8:54', 'WeeklyOff Present', '', 'March - 2023', '2023-05-02 11:14:18', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1158, '12-Mar-2023', '35', 'GS', '07:37', '16:58', '00:00', '9:21', '9:21', 'WeeklyOff Present', '', 'March - 2023', '2023-05-02 11:14:18', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1159, '12-Mar-2023', '36', 'NS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'March - 2023', '2023-05-02 11:14:18', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1160, '12-Mar-2023', '', '', '', '', '', '', '', '', '', 'March - 2023', '2023-05-02 11:14:18', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1161, '13-Mar-2023', '1', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'March - 2023', '2023-05-02 11:14:18', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1162, '13-Mar-2023', '3', 'GS', '05:28', '18:28', '9:01', '1:28', '10:29', 'Present', '', 'March - 2023', '2023-05-02 11:14:18', 1, 1, NULL, NULL, NULL, NULL, NULL),
(1163, '13-Mar-2023', '4', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'March - 2023', '2023-05-02 11:14:18', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1164, '13-Mar-2023', '5', 'GS', '07:28', '17:06', '9:07', '00:00', '9:07', 'Present', '', 'March - 2023', '2023-05-02 11:14:18', 1, 1, NULL, NULL, NULL, NULL, NULL),
(1165, '13-Mar-2023', '6', 'GS', '16:58', '', '00:00', '00:00', '00:00', 'Absent (No OutPunch)', '', 'March - 2023', '2023-05-02 11:14:18', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1166, '13-Mar-2023', '7', 'GS', '07:42', '16:58', '8:59', '00:00', '8:59', 'Present', '', 'March - 2023', '2023-05-02 11:14:18', 1, 1, NULL, NULL, NULL, NULL, NULL),
(1167, '13-Mar-2023', '8', 'GS', '08:52', '17:00', '8:08', '00:00', '8:08', 'Present', '', 'March - 2023', '2023-05-02 11:14:18', 1, 1, NULL, NULL, NULL, NULL, NULL),
(1168, '13-Mar-2023', '9', 'GS', '07:43', '16:59', '9:00', '00:00', '9:00', 'Present', '', 'March - 2023', '2023-05-02 11:14:18', 1, 1, NULL, NULL, NULL, NULL, NULL),
(1169, '13-Mar-2023', '10', 'GS', '12:32', '16:58', '4:26', '00:00', '4:26', 'Present', '', 'March - 2023', '2023-05-02 11:14:18', 1, 1, NULL, NULL, NULL, NULL, NULL),
(1170, '13-Mar-2023', '11', 'GS', '16:58', '', '00:00', '00:00', '00:00', 'Absent (No OutPunch)', '', 'March - 2023', '2023-05-02 11:14:18', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1171, '13-Mar-2023', '14', 'GS', '07:46', '14:22', '6:23', '00:00', '6:23', 'Present', '', 'March - 2023', '2023-05-02 11:14:18', 1, 1, NULL, NULL, NULL, NULL, NULL),
(1172, '13-Mar-2023', '15', 'GS', '07:37', '15:30', '7:30', '00:00', '7:30', 'Present', '', 'March - 2023', '2023-05-02 11:14:18', 1, 1, NULL, NULL, NULL, NULL, NULL),
(1173, '13-Mar-2023', '16', 'GS', '08:28', '16:53', '8:25', '00:00', '8:25', 'Present', '', 'March - 2023', '2023-05-02 11:14:18', 1, 1, NULL, NULL, NULL, NULL, NULL),
(1174, '13-Mar-2023', '17', 'GS', '07:28', '17:23', '9:24', '00:00', '9:24', 'Present', '', 'March - 2023', '2023-05-02 11:14:18', 1, 1, NULL, NULL, NULL, NULL, NULL),
(1175, '13-Mar-2023', '18', 'GS', '07:28', '17:22', '9:23', '00:00', '9:23', 'Present', '', 'March - 2023', '2023-05-02 11:14:18', 1, 1, NULL, NULL, NULL, NULL, NULL),
(1176, '13-Mar-2023', '19', 'GS', '12:12', '13:47', '1:35', '00:00', '1:35', 'Absent', '', 'March - 2023', '2023-05-02 11:14:18', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1177, '13-Mar-2023', '20', 'GS', '07:25', '17:24', '9:25', '00:00', '9:25', 'Present', '', 'March - 2023', '2023-05-02 11:14:18', 1, 1, NULL, NULL, NULL, NULL, NULL),
(1178, '13-Mar-2023', '21', 'GS', '07:43', '16:58', '8:59', '00:00', '8:59', 'Present', '', 'March - 2023', '2023-05-02 11:14:18', 1, 1, NULL, NULL, NULL, NULL, NULL),
(1179, '13-Mar-2023', '22', 'GS', '08:31', '14:13', '5:42', '00:00', '5:42', 'Present', '', 'March - 2023', '2023-05-02 11:14:18', 1, 1, NULL, NULL, NULL, NULL, NULL),
(1180, '13-Mar-2023', '23', 'GS', '11:18', '', '00:00', '00:00', '00:00', 'Absent (No OutPunch)', '', 'March - 2023', '2023-05-02 11:14:18', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1181, '13-Mar-2023', '24', 'Sam', '01:06', '21:10', '00:01', '20:03', '20:04', 'Absent', '', 'March - 2023', '2023-05-02 11:14:18', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1182, '13-Mar-2023', '26', 'GS', '07:43', '16:58', '8:59', '00:00', '8:59', 'Present', '', 'March - 2023', '2023-05-02 11:14:18', 1, 1, NULL, NULL, NULL, NULL, NULL),
(1183, '13-Mar-2023', '28', 'GS', '07:42', '17:00', '9:01', '00:00', '9:01', 'Present', '', 'March - 2023', '2023-05-02 11:14:18', 1, 1, NULL, NULL, NULL, NULL, NULL),
(1184, '13-Mar-2023', '30', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'March - 2023', '2023-05-02 11:14:18', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1185, '13-Mar-2023', '33', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'March - 2023', '2023-05-02 11:14:18', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1186, '13-Mar-2023', '34', 'GS', '08:07', '16:56', '8:49', '00:00', '8:49', 'Present', '', 'March - 2023', '2023-05-02 11:14:18', 1, 1, NULL, NULL, NULL, NULL, NULL),
(1187, '13-Mar-2023', '35', 'GS', '17:03', '', '00:00', '00:00', '00:00', 'Absent (No OutPunch)', '', 'March - 2023', '2023-05-02 11:14:18', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1188, '13-Mar-2023', '36', 'NS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'March - 2023', '2023-05-02 11:14:18', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1189, '13-Mar-2023', '', '', '', '', '', '', '', '', '', 'March - 2023', '2023-05-02 11:14:18', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1190, '14-Mar-2023', '1', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'March - 2023', '2023-05-02 11:14:18', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1191, '14-Mar-2023', '3', 'GS', '05:33', '18:16', '9:01', '1:16', '10:17', 'Present', '', 'March - 2023', '2023-05-02 11:14:18', 1, 1, NULL, NULL, NULL, NULL, NULL),
(1192, '14-Mar-2023', '4', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'March - 2023', '2023-05-02 11:14:18', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1193, '14-Mar-2023', '5', 'GS', '07:31', '', '00:00', '00:00', '00:00', 'Absent (No OutPunch)', '', 'March - 2023', '2023-05-02 11:14:18', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1194, '14-Mar-2023', '6', 'GS', '07:37', '16:58', '8:59', '00:00', '8:59', 'Present', '', 'March - 2023', '2023-05-02 11:14:18', 1, 1, NULL, NULL, NULL, NULL, NULL),
(1195, '14-Mar-2023', '7', 'GS', '07:37', '17:00', '9:01', '00:00', '9:01', 'Present', '', 'March - 2023', '2023-05-02 11:14:18', 1, 1, NULL, NULL, NULL, NULL, NULL),
(1196, '14-Mar-2023', '8', 'GS', '08:06', '16:52', '8:46', '00:00', '8:46', 'Present', '', 'March - 2023', '2023-05-02 11:14:18', 1, 1, NULL, NULL, NULL, NULL, NULL),
(1197, '14-Mar-2023', '9', 'GS', '07:38', '16:58', '8:59', '00:00', '8:59', 'Present', '', 'March - 2023', '2023-05-02 11:14:18', 1, 1, NULL, NULL, NULL, NULL, NULL),
(1198, '14-Mar-2023', '10', 'GS', '07:37', '14:49', '6:50', '00:00', '6:50', 'Present', '', 'March - 2023', '2023-05-02 11:14:18', 1, 1, NULL, NULL, NULL, NULL, NULL),
(1199, '14-Mar-2023', '11', 'GS', '07:37', '16:58', '8:59', '00:00', '8:59', 'Present', '', 'March - 2023', '2023-05-02 11:14:18', 1, 1, NULL, NULL, NULL, NULL, NULL),
(1200, '14-Mar-2023', '14', 'GS', '07:49', '16:59', '9:00', '00:00', '9:00', 'Present', '', 'March - 2023', '2023-05-02 11:14:18', 1, 1, NULL, NULL, NULL, NULL, NULL),
(1201, '14-Mar-2023', '15', 'GS', '07:47', '15:06', '7:07', '00:00', '7:07', 'Present', '', 'March - 2023', '2023-05-02 11:14:18', 1, 1, NULL, NULL, NULL, NULL, NULL),
(1202, '14-Mar-2023', '16', 'GS', '08:18', '16:52', '8:34', '00:00', '8:34', 'Present', '', 'March - 2023', '2023-05-02 11:14:18', 1, 1, NULL, NULL, NULL, NULL, NULL),
(1203, '14-Mar-2023', '17', 'GS', '07:31', '', '00:00', '00:00', '00:00', 'Absent (No OutPunch)', '', 'March - 2023', '2023-05-02 11:14:18', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1204, '14-Mar-2023', '18', 'GS', '07:31', '15:15', '7:16', '00:00', '7:16', 'Present', '', 'March - 2023', '2023-05-02 11:14:18', 1, 1, NULL, NULL, NULL, NULL, NULL),
(1205, '14-Mar-2023', '19', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'March - 2023', '2023-05-02 11:14:18', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1206, '14-Mar-2023', '20', 'GS', '07:20', '15:06', '7:06', '00:00', '7:06', 'Present', '', 'March - 2023', '2023-05-02 11:14:18', 1, 1, NULL, NULL, NULL, NULL, NULL),
(1207, '14-Mar-2023', '21', 'GS', '07:38', '16:58', '8:59', '00:00', '8:59', 'Present', '', 'March - 2023', '2023-05-02 11:14:18', 1, 1, NULL, NULL, NULL, NULL, NULL),
(1208, '14-Mar-2023', '22', 'GS', '08:18', '', '00:00', '00:00', '00:00', 'Absent (No OutPunch)', '', 'March - 2023', '2023-05-02 11:14:18', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1209, '14-Mar-2023', '23', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'March - 2023', '2023-05-02 11:14:18', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1210, '14-Mar-2023', '24', 'Sam', '01:07', '21:07', '00:01', '19:59', '20:00', 'Absent', '', 'March - 2023', '2023-05-02 11:14:18', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1211, '14-Mar-2023', '26', 'GS', '07:38', '', '00:00', '00:00', '00:00', 'Absent (No OutPunch)', '', 'March - 2023', '2023-05-02 11:14:18', 1, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_attendance_master` (`id`, `attend_date`, `attend_emp_id`, `attend_shift`, `attend_in_time`, `attend_out_time`, `attend_work_hours`, `attend_over_time`, `attend_total_hours`, `attend_status`, `attend_notes`, `attend_month_year`, `created_at`, `attend_import_by`, `attend_action_status`, `attend_action_by`, `attend_amount`, `attend_leave_category`, `attend_action_notes`, `attend_action_at`) VALUES
(1212, '14-Mar-2023', '28', 'GS', '07:37', '17:02', '9:03', '00:00', '9:03', 'Present', '', 'March - 2023', '2023-05-02 11:14:18', 1, 1, NULL, NULL, NULL, NULL, NULL),
(1213, '14-Mar-2023', '30', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'March - 2023', '2023-05-02 11:14:18', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1214, '14-Mar-2023', '33', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'March - 2023', '2023-05-02 11:14:18', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1215, '14-Mar-2023', '34', 'GS', '08:18', '16:52', '8:34', '00:00', '8:34', 'Present', '', 'March - 2023', '2023-05-02 11:14:19', 1, 1, NULL, NULL, NULL, NULL, NULL),
(1216, '14-Mar-2023', '35', 'GS', '07:37', '17:00', '9:01', '00:00', '9:01', 'Present', '', 'March - 2023', '2023-05-02 11:14:19', 1, 1, NULL, NULL, NULL, NULL, NULL),
(1217, '14-Mar-2023', '36', 'NS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'March - 2023', '2023-05-02 11:14:19', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1218, '14-Mar-2023', '', '', '', '', '', '', '', '', '', 'March - 2023', '2023-05-02 11:14:19', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1219, '15-Mar-2023', '1', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'March - 2023', '2023-05-02 11:14:19', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1220, '15-Mar-2023', '3', 'GS', '05:37', '18:22', '9:01', '1:22', '10:23', 'Present', '', 'March - 2023', '2023-05-02 11:14:19', 1, 1, NULL, NULL, NULL, NULL, NULL),
(1221, '15-Mar-2023', '4', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'March - 2023', '2023-05-02 11:14:19', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1222, '15-Mar-2023', '5', 'GS', '07:33', '17:10', '9:11', '00:00', '9:11', 'Present', '', 'March - 2023', '2023-05-02 11:14:19', 1, 1, NULL, NULL, NULL, NULL, NULL),
(1223, '15-Mar-2023', '6', 'GS', '07:29', '17:06', '9:07', '00:00', '9:07', 'Present', '', 'March - 2023', '2023-05-02 11:14:19', 1, 1, NULL, NULL, NULL, NULL, NULL),
(1224, '15-Mar-2023', '7', 'GS', '07:29', '17:04', '9:05', '00:00', '9:05', 'Present', '', 'March - 2023', '2023-05-02 11:14:19', 1, 1, NULL, NULL, NULL, NULL, NULL),
(1225, '15-Mar-2023', '8', 'GS', '07:56', '17:00', '9:01', '00:00', '9:01', 'Present', '', 'March - 2023', '2023-05-02 11:14:19', 1, 1, NULL, NULL, NULL, NULL, NULL),
(1226, '15-Mar-2023', '9', 'GS', '07:30', '17:05', '9:06', '00:00', '9:06', 'Present', '', 'March - 2023', '2023-05-02 11:14:19', 1, 1, NULL, NULL, NULL, NULL, NULL),
(1227, '15-Mar-2023', '10', 'GS', '07:29', '17:03', '9:04', '00:00', '9:04', 'Present', '', 'March - 2023', '2023-05-02 11:14:19', 1, 1, NULL, NULL, NULL, NULL, NULL),
(1228, '15-Mar-2023', '11', 'GS', '07:29', '17:08', '9:09', '00:00', '9:09', 'Present', '', 'March - 2023', '2023-05-02 11:14:19', 1, 1, NULL, NULL, NULL, NULL, NULL),
(1229, '15-Mar-2023', '14', 'GS', '07:47', '17:14', '9:15', '00:00', '9:15', 'Present', '', 'March - 2023', '2023-05-02 11:14:19', 1, 1, NULL, NULL, NULL, NULL, NULL),
(1230, '15-Mar-2023', '15', 'GS', '07:42', '15:20', '7:21', '00:00', '7:21', 'Present', '', 'March - 2023', '2023-05-02 11:14:19', 1, 1, NULL, NULL, NULL, NULL, NULL),
(1231, '15-Mar-2023', '16', 'GS', '09:28', '16:57', '7:29', '00:00', '7:29', 'Present', '', 'March - 2023', '2023-05-02 11:14:19', 1, 1, NULL, NULL, NULL, NULL, NULL),
(1232, '15-Mar-2023', '17', 'GS', '07:33', '17:13', '9:13', '00:00', '9:13', 'Present', '', 'March - 2023', '2023-05-02 11:14:19', 1, 1, NULL, NULL, NULL, NULL, NULL),
(1233, '15-Mar-2023', '18', 'GS', '07:33', '17:11', '9:12', '00:00', '9:12', 'Present', '', 'March - 2023', '2023-05-02 11:14:19', 1, 1, NULL, NULL, NULL, NULL, NULL),
(1234, '15-Mar-2023', '19', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'March - 2023', '2023-05-02 11:14:19', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1235, '15-Mar-2023', '20', 'GS', '07:14', '16:30', '8:31', '00:00', '8:31', 'Present', '', 'March - 2023', '2023-05-02 11:14:19', 1, 1, NULL, NULL, NULL, NULL, NULL),
(1236, '15-Mar-2023', '21', 'GS', '07:30', '17:06', '9:06', '00:00', '9:06', 'Present', '', 'March - 2023', '2023-05-02 11:14:19', 1, 1, NULL, NULL, NULL, NULL, NULL),
(1237, '15-Mar-2023', '22', 'GS', '07:56', '13:31', '5:32', '00:00', '5:32', 'Present', '', 'March - 2023', '2023-05-02 11:14:19', 1, 1, NULL, NULL, NULL, NULL, NULL),
(1238, '15-Mar-2023', '23', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'March - 2023', '2023-05-02 11:14:19', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1239, '15-Mar-2023', '24', 'Sam', '01:07', '21:06', '00:00', '19:59', '19:59', 'Absent', '', 'March - 2023', '2023-05-02 11:14:19', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1240, '15-Mar-2023', '26', 'GS', '07:29', '17:06', '9:07', '00:00', '9:07', 'Present', '', 'March - 2023', '2023-05-02 11:14:19', 1, 1, NULL, NULL, NULL, NULL, NULL),
(1241, '15-Mar-2023', '28', 'GS', '07:29', '17:05', '9:06', '00:00', '9:06', 'Present', '', 'March - 2023', '2023-05-02 11:14:19', 1, 1, NULL, NULL, NULL, NULL, NULL),
(1242, '15-Mar-2023', '30', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'March - 2023', '2023-05-02 11:14:19', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1243, '15-Mar-2023', '33', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'March - 2023', '2023-05-02 11:14:19', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1244, '15-Mar-2023', '34', 'GS', '08:02', '16:59', '8:57', '00:00', '8:57', 'Present', '', 'March - 2023', '2023-05-02 11:14:19', 1, 1, NULL, NULL, NULL, NULL, NULL),
(1245, '15-Mar-2023', '35', 'GS', '07:29', '17:00', '9:01', '00:00', '9:01', 'Present', '', 'March - 2023', '2023-05-02 11:14:19', 1, 1, NULL, NULL, NULL, NULL, NULL),
(1246, '15-Mar-2023', '36', 'NS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'March - 2023', '2023-05-02 11:14:19', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1247, '15-Mar-2023', '', '', '', '', '', '', '', '', '', 'March - 2023', '2023-05-02 11:14:19', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1248, '16-Mar-2023', '1', 'GS', '09:53', '', '00:00', '00:00', '00:00', 'Absent (No OutPunch)', '', 'March - 2023', '2023-05-02 11:14:19', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1249, '16-Mar-2023', '3', 'GS', '05:31', '18:23', '9:01', '1:23', '10:24', 'Present', '', 'March - 2023', '2023-05-02 11:14:19', 1, 1, NULL, NULL, NULL, NULL, NULL),
(1250, '16-Mar-2023', '4', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'March - 2023', '2023-05-02 11:14:19', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1251, '16-Mar-2023', '5', 'GS', '07:25', '17:02', '9:03', '00:00', '9:03', 'Present', '', 'March - 2023', '2023-05-02 11:14:19', 1, 1, NULL, NULL, NULL, NULL, NULL),
(1252, '16-Mar-2023', '6', 'GS', '07:34', '17:01', '9:02', '00:00', '9:02', 'Present', '', 'March - 2023', '2023-05-02 11:14:19', 1, 1, NULL, NULL, NULL, NULL, NULL),
(1253, '16-Mar-2023', '7', 'GS', '07:34', '17:02', '9:03', '00:00', '9:03', 'Present', '', 'March - 2023', '2023-05-02 11:14:19', 1, 1, NULL, NULL, NULL, NULL, NULL),
(1254, '16-Mar-2023', '8', 'GS', '08:01', '17:04', '9:01', '00:00', '9:01', 'Present', '', 'March - 2023', '2023-05-02 11:14:19', 1, 1, NULL, NULL, NULL, NULL, NULL),
(1255, '16-Mar-2023', '9', 'GS', '07:34', '17:02', '9:03', '00:00', '9:03', 'Present', '', 'March - 2023', '2023-05-02 11:14:19', 1, 1, NULL, NULL, NULL, NULL, NULL),
(1256, '16-Mar-2023', '10', 'GS', '07:34', '17:02', '9:03', '00:00', '9:03', 'Present', '', 'March - 2023', '2023-05-02 11:14:19', 1, 1, NULL, NULL, NULL, NULL, NULL),
(1257, '16-Mar-2023', '11', 'GS', '07:34', '17:01', '9:02', '00:00', '9:02', 'Present', '', 'March - 2023', '2023-05-02 11:14:19', 1, 1, NULL, NULL, NULL, NULL, NULL),
(1258, '16-Mar-2023', '14', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'March - 2023', '2023-05-02 11:14:19', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1259, '16-Mar-2023', '15', 'GS', '07:32', '14:18', '6:19', '00:00', '6:19', 'Present', '', 'March - 2023', '2023-05-02 11:14:19', 1, 1, NULL, NULL, NULL, NULL, NULL),
(1260, '16-Mar-2023', '16', 'GS', '08:19', '16:57', '8:38', '00:00', '8:38', 'Present', '', 'March - 2023', '2023-05-02 11:14:19', 1, 1, NULL, NULL, NULL, NULL, NULL),
(1261, '16-Mar-2023', '17', 'GS', '07:25', '17:18', '9:19', '00:00', '9:19', 'Present', '', 'March - 2023', '2023-05-02 11:14:19', 1, 1, NULL, NULL, NULL, NULL, NULL),
(1262, '16-Mar-2023', '18', 'GS', '07:25', '17:17', '9:17', '00:00', '9:17', 'Present', '', 'March - 2023', '2023-05-02 11:14:19', 1, 1, NULL, NULL, NULL, NULL, NULL),
(1263, '16-Mar-2023', '19', 'GS', '07:25', '17:17', '9:18', '00:00', '9:18', 'Present', '', 'March - 2023', '2023-05-02 11:14:19', 1, 1, NULL, NULL, NULL, NULL, NULL),
(1264, '16-Mar-2023', '20', 'GS', '06:56', '13:40', '5:41', '00:00', '5:41', 'Present', '', 'March - 2023', '2023-05-02 11:14:19', 1, 1, NULL, NULL, NULL, NULL, NULL),
(1265, '16-Mar-2023', '21', 'GS', '07:34', '17:02', '9:03', '00:00', '9:03', 'Present', '', 'March - 2023', '2023-05-02 11:14:19', 1, 1, NULL, NULL, NULL, NULL, NULL),
(1266, '16-Mar-2023', '22', 'GS', '08:36', '14:03', '5:27', '00:00', '5:27', 'Present', '', 'March - 2023', '2023-05-02 11:14:19', 1, 1, NULL, NULL, NULL, NULL, NULL),
(1267, '16-Mar-2023', '23', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'March - 2023', '2023-05-02 11:14:19', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1268, '16-Mar-2023', '24', 'Sam', '01:07', '21:07', '00:00', '20:00', '20:00', 'Absent', '', 'March - 2023', '2023-05-02 11:14:19', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1269, '16-Mar-2023', '26', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'March - 2023', '2023-05-02 11:14:19', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1270, '16-Mar-2023', '28', 'GS', '07:34', '17:00', '9:01', '00:00', '9:01', 'Present', '', 'March - 2023', '2023-05-02 11:14:19', 1, 1, NULL, NULL, NULL, NULL, NULL),
(1271, '16-Mar-2023', '30', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'March - 2023', '2023-05-02 11:14:19', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1272, '16-Mar-2023', '33', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'March - 2023', '2023-05-02 11:14:19', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1273, '16-Mar-2023', '34', 'GS', '08:01', '17:02', '9:01', '00:00', '9:01', 'Present', '', 'March - 2023', '2023-05-02 11:14:19', 1, 1, NULL, NULL, NULL, NULL, NULL),
(1274, '16-Mar-2023', '35', 'GS', '07:34', '17:02', '9:03', '00:00', '9:03', 'Present', '', 'March - 2023', '2023-05-02 11:14:19', 1, 1, NULL, NULL, NULL, NULL, NULL),
(1275, '16-Mar-2023', '36', 'GS', '09:54', '18:22', '7:06', '1:22', '8:28', 'Present', '', 'March - 2023', '2023-05-02 11:14:19', 1, 1, NULL, NULL, NULL, NULL, NULL),
(1276, '16-Mar-2023', '', '', '', '', '', '', '', '', '', 'March - 2023', '2023-05-02 11:14:19', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1277, '17-Mar-2023', '1', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'March - 2023', '2023-05-02 11:14:19', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1278, '17-Mar-2023', '3', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'March - 2023', '2023-05-02 11:14:19', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1279, '17-Mar-2023', '4', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'March - 2023', '2023-05-02 11:14:19', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1280, '17-Mar-2023', '5', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'March - 2023', '2023-05-02 11:14:19', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1281, '17-Mar-2023', '6', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'March - 2023', '2023-05-02 11:14:19', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1282, '17-Mar-2023', '7', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'March - 2023', '2023-05-02 11:14:19', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1283, '17-Mar-2023', '8', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'March - 2023', '2023-05-02 11:14:19', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1284, '17-Mar-2023', '9', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'March - 2023', '2023-05-02 11:14:19', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1285, '17-Mar-2023', '10', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'March - 2023', '2023-05-02 11:14:19', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1286, '17-Mar-2023', '11', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'March - 2023', '2023-05-02 11:14:19', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1287, '17-Mar-2023', '14', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'March - 2023', '2023-05-02 11:14:19', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1288, '17-Mar-2023', '15', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'March - 2023', '2023-05-02 11:14:19', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1289, '17-Mar-2023', '16', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'March - 2023', '2023-05-02 11:14:19', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1290, '17-Mar-2023', '17', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'March - 2023', '2023-05-02 11:14:19', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1291, '17-Mar-2023', '18', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'March - 2023', '2023-05-02 11:14:19', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1292, '17-Mar-2023', '19', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'March - 2023', '2023-05-02 11:14:19', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1293, '17-Mar-2023', '20', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'March - 2023', '2023-05-02 11:14:19', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1294, '17-Mar-2023', '21', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'March - 2023', '2023-05-02 11:14:19', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1295, '17-Mar-2023', '22', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'March - 2023', '2023-05-02 11:14:19', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1296, '17-Mar-2023', '23', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'March - 2023', '2023-05-02 11:14:19', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1297, '17-Mar-2023', '24', 'Sam', '01:05', '21:07', '00:01', '20:01', '20:02', 'Absent', '', 'March - 2023', '2023-05-02 11:14:19', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1298, '17-Mar-2023', '26', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'March - 2023', '2023-05-02 11:14:19', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1299, '17-Mar-2023', '28', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'March - 2023', '2023-05-02 11:14:19', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1300, '17-Mar-2023', '30', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'March - 2023', '2023-05-02 11:14:19', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1301, '17-Mar-2023', '33', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'March - 2023', '2023-05-02 11:14:19', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1302, '17-Mar-2023', '34', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'March - 2023', '2023-05-02 11:14:19', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1303, '17-Mar-2023', '35', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'March - 2023', '2023-05-02 11:14:19', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1304, '17-Mar-2023', '36', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'March - 2023', '2023-05-02 11:14:19', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1305, '17-Mar-2023', '', '', '', '', '', '', '', '', '', 'March - 2023', '2023-05-02 11:14:19', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1306, '18-Mar-2023', '1', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'March - 2023', '2023-05-02 11:14:19', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1307, '18-Mar-2023', '3', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'March - 2023', '2023-05-02 11:14:19', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1308, '18-Mar-2023', '4', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'March - 2023', '2023-05-02 11:14:19', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1309, '18-Mar-2023', '5', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'March - 2023', '2023-05-02 11:14:19', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1310, '18-Mar-2023', '6', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'March - 2023', '2023-05-02 11:14:19', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1311, '18-Mar-2023', '7', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'March - 2023', '2023-05-02 11:14:19', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1312, '18-Mar-2023', '8', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'March - 2023', '2023-05-02 11:14:19', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1313, '18-Mar-2023', '9', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'March - 2023', '2023-05-02 11:14:19', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1314, '18-Mar-2023', '10', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'March - 2023', '2023-05-02 11:14:19', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1315, '18-Mar-2023', '11', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'March - 2023', '2023-05-02 11:14:19', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1316, '18-Mar-2023', '14', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'March - 2023', '2023-05-02 11:14:19', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1317, '18-Mar-2023', '15', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'March - 2023', '2023-05-02 11:14:19', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1318, '18-Mar-2023', '16', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'March - 2023', '2023-05-02 11:14:19', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1319, '18-Mar-2023', '17', 'GS', '08:10', '18:05', '00:00', '9:55', '9:55', 'WeeklyOff Present', '', 'March - 2023', '2023-05-02 11:14:19', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1320, '18-Mar-2023', '18', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'March - 2023', '2023-05-02 11:14:19', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1321, '18-Mar-2023', '19', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'March - 2023', '2023-05-02 11:14:19', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1322, '18-Mar-2023', '20', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'March - 2023', '2023-05-02 11:14:19', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1323, '18-Mar-2023', '21', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'March - 2023', '2023-05-02 11:14:19', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1324, '18-Mar-2023', '22', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'March - 2023', '2023-05-02 11:14:19', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1325, '18-Mar-2023', '23', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'March - 2023', '2023-05-02 11:14:19', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1326, '18-Mar-2023', '24', 'Sam', '01:05', '21:08', '00:00', '20:03', '20:03', 'WeeklyOff Present', '', 'March - 2023', '2023-05-02 11:14:19', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1327, '18-Mar-2023', '26', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'March - 2023', '2023-05-02 11:14:19', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1328, '18-Mar-2023', '28', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'March - 2023', '2023-05-02 11:14:19', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1329, '18-Mar-2023', '30', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'March - 2023', '2023-05-02 11:14:19', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1330, '18-Mar-2023', '33', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'March - 2023', '2023-05-02 11:14:19', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1331, '18-Mar-2023', '34', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'March - 2023', '2023-05-02 11:14:19', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1332, '18-Mar-2023', '35', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'March - 2023', '2023-05-02 11:14:19', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1333, '18-Mar-2023', '36', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'March - 2023', '2023-05-02 11:14:19', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1334, '18-Mar-2023', '', '', '', '', '', '', '', '', '', 'March - 2023', '2023-05-02 11:14:19', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1335, '19-Mar-2023', '1', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'March - 2023', '2023-05-02 11:14:19', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1336, '19-Mar-2023', '3', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'March - 2023', '2023-05-02 11:14:19', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1337, '19-Mar-2023', '4', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'March - 2023', '2023-05-02 11:14:19', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1338, '19-Mar-2023', '5', 'GS', '07:36', '17:09', '00:00', '9:33', '9:33', 'WeeklyOff Present', '', 'March - 2023', '2023-05-02 11:14:19', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1339, '19-Mar-2023', '6', 'GS', '07:37', '17:00', '00:00', '9:23', '9:23', 'WeeklyOff Present', '', 'March - 2023', '2023-05-02 11:14:19', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1340, '19-Mar-2023', '7', 'GS', '07:37', '17:00', '00:00', '9:23', '9:23', 'WeeklyOff Present', '', 'March - 2023', '2023-05-02 11:14:19', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1341, '19-Mar-2023', '8', 'GS', '11:46', '17:00', '00:00', '5:14', '5:14', 'WeeklyOff Present', '', 'March - 2023', '2023-05-02 11:14:19', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1342, '19-Mar-2023', '9', 'GS', '07:37', '16:59', '00:00', '9:22', '9:22', 'WeeklyOff Present', '', 'March - 2023', '2023-05-02 11:14:19', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1343, '19-Mar-2023', '10', 'GS', '07:37', '16:59', '00:00', '9:22', '9:22', 'WeeklyOff Present', '', 'March - 2023', '2023-05-02 11:14:19', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1344, '19-Mar-2023', '11', 'GS', '07:37', '17:00', '00:00', '9:23', '9:23', 'WeeklyOff Present', '', 'March - 2023', '2023-05-02 11:14:19', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1345, '19-Mar-2023', '14', 'GS', '07:43', '16:59', '00:00', '9:16', '9:16', 'WeeklyOff Present', '', 'March - 2023', '2023-05-02 11:14:19', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1346, '19-Mar-2023', '15', 'GS', '08:17', '13:39', '00:00', '5:22', '5:22', 'WeeklyOff Present', '', 'March - 2023', '2023-05-02 11:14:19', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1347, '19-Mar-2023', '16', 'GS', '08:18', '16:55', '00:00', '8:37', '8:37', 'WeeklyOff Present', '', 'March - 2023', '2023-05-02 11:14:19', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1348, '19-Mar-2023', '17', 'GS', '07:36', '17:03', '00:00', '9:27', '9:27', 'WeeklyOff Present', '', 'March - 2023', '2023-05-02 11:14:19', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1349, '19-Mar-2023', '18', 'GS', '07:36', '17:15', '00:00', '9:39', '9:39', 'WeeklyOff Present', '', 'March - 2023', '2023-05-02 11:14:19', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1350, '19-Mar-2023', '19', 'GS', '11:54', '16:59', '00:00', '5:05', '5:05', 'WeeklyOff Present', '', 'March - 2023', '2023-05-02 11:14:19', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1351, '19-Mar-2023', '20', 'GS', '07:18', '14:02', '00:00', '6:44', '6:44', 'WeeklyOff Present', '', 'March - 2023', '2023-05-02 11:14:19', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1352, '19-Mar-2023', '21', 'GS', '07:37', '', '00:00', '00:00', '00:00', 'Absent (No OutPunch)', '', 'March - 2023', '2023-05-02 11:14:19', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1353, '19-Mar-2023', '22', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'March - 2023', '2023-05-02 11:14:19', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1354, '19-Mar-2023', '23', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'March - 2023', '2023-05-02 11:14:20', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1355, '19-Mar-2023', '24', 'Sam', '01:37', '21:05', '00:00', '19:28', '19:28', 'WeeklyOff Present', '', 'March - 2023', '2023-05-02 11:14:20', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1356, '19-Mar-2023', '26', 'GS', '07:37', '16:59', '00:00', '9:22', '9:22', 'WeeklyOff Present', '', 'March - 2023', '2023-05-02 11:14:20', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1357, '19-Mar-2023', '28', 'GS', '07:37', '16:59', '00:00', '9:22', '9:22', 'WeeklyOff Present', '', 'March - 2023', '2023-05-02 11:14:20', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1358, '19-Mar-2023', '30', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'March - 2023', '2023-05-02 11:14:20', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1359, '19-Mar-2023', '33', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'March - 2023', '2023-05-02 11:14:20', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1360, '19-Mar-2023', '34', 'GS', '07:59', '16:59', '00:00', '9:00', '9:00', 'WeeklyOff Present', '', 'March - 2023', '2023-05-02 11:14:20', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1361, '19-Mar-2023', '35', 'GS', '07:37', '17:04', '00:00', '9:27', '9:27', 'WeeklyOff Present', '', 'March - 2023', '2023-05-02 11:14:20', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1362, '19-Mar-2023', '36', 'GS', '05:28', '18:23', '00:00', '12:55', '12:55', 'WeeklyOff Present', '', 'March - 2023', '2023-05-02 11:14:20', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1363, '19-Mar-2023', '', '', '', '', '', '', '', '', '', 'March - 2023', '2023-05-02 11:14:20', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1364, '20-Mar-2023', '1', 'GS', '16:58', '', '00:00', '00:00', '00:00', 'Absent (No OutPunch)', '', 'March - 2023', '2023-05-02 11:14:20', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1365, '20-Mar-2023', '3', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'March - 2023', '2023-05-02 11:14:20', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1366, '20-Mar-2023', '4', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'March - 2023', '2023-05-02 11:14:20', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1367, '20-Mar-2023', '5', 'GS', '07:27', '17:07', '9:08', '00:00', '9:08', 'Present', '', 'March - 2023', '2023-05-02 11:14:20', 1, 1, NULL, NULL, NULL, NULL, NULL),
(1368, '20-Mar-2023', '6', 'GS', '07:35', '17:00', '9:01', '00:00', '9:01', 'Present', '', 'March - 2023', '2023-05-02 11:14:20', 1, 1, NULL, NULL, NULL, NULL, NULL),
(1369, '20-Mar-2023', '7', 'GS', '07:35', '17:06', '9:07', '00:00', '9:07', 'Present', '', 'March - 2023', '2023-05-02 11:14:20', 1, 1, NULL, NULL, NULL, NULL, NULL),
(1370, '20-Mar-2023', '8', 'GS', '08:22', '17:00', '8:38', '00:00', '8:38', 'Present', '', 'March - 2023', '2023-05-02 11:14:20', 1, 1, NULL, NULL, NULL, NULL, NULL),
(1371, '20-Mar-2023', '9', 'GS', '07:35', '17:00', '9:01', '00:00', '9:01', 'Present', '', 'March - 2023', '2023-05-02 11:14:20', 1, 1, NULL, NULL, NULL, NULL, NULL),
(1372, '20-Mar-2023', '10', 'GS', '09:00', '17:00', '7:59', '00:00', '7:59', 'Present', '', 'March - 2023', '2023-05-02 11:14:20', 1, 1, NULL, NULL, NULL, NULL, NULL),
(1373, '20-Mar-2023', '11', 'GS', '07:35', '17:01', '9:02', '00:00', '9:02', 'Present', '', 'March - 2023', '2023-05-02 11:14:20', 1, 1, NULL, NULL, NULL, NULL, NULL),
(1374, '20-Mar-2023', '14', 'GS', '07:47', '17:08', '9:09', '00:00', '9:09', 'Present', '', 'March - 2023', '2023-05-02 11:14:20', 1, 1, NULL, NULL, NULL, NULL, NULL),
(1375, '20-Mar-2023', '15', 'GS', '07:47', '17:00', '9:01', '00:00', '9:01', 'Present', '', 'March - 2023', '2023-05-02 11:14:20', 1, 1, NULL, NULL, NULL, NULL, NULL),
(1376, '20-Mar-2023', '16', 'GS', '08:09', '16:59', '8:50', '00:00', '8:50', 'Present', '', 'March - 2023', '2023-05-02 11:14:20', 1, 1, NULL, NULL, NULL, NULL, NULL),
(1377, '20-Mar-2023', '17', 'GS', '07:27', '17:21', '9:22', '00:00', '9:22', 'Present', '', 'March - 2023', '2023-05-02 11:14:20', 1, 1, NULL, NULL, NULL, NULL, NULL),
(1378, '20-Mar-2023', '18', 'GS', '07:27', '17:06', '9:07', '00:00', '9:07', 'Present', '', 'March - 2023', '2023-05-02 11:14:20', 1, 1, NULL, NULL, NULL, NULL, NULL),
(1379, '20-Mar-2023', '19', 'GS', '07:27', '17:19', '9:20', '00:00', '9:20', 'Present', '', 'March - 2023', '2023-05-02 11:14:20', 1, 1, NULL, NULL, NULL, NULL, NULL),
(1380, '20-Mar-2023', '20', 'GS', '07:17', '17:34', '9:01', '00:30', '9:31', 'Present', '', 'March - 2023', '2023-05-02 11:14:20', 1, 1, NULL, NULL, NULL, NULL, NULL),
(1381, '20-Mar-2023', '21', 'GS', '07:35', '17:00', '9:01', '00:00', '9:01', 'Present', '', 'March - 2023', '2023-05-02 11:14:20', 1, 1, NULL, NULL, NULL, NULL, NULL),
(1382, '20-Mar-2023', '22', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'March - 2023', '2023-05-02 11:14:20', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1383, '20-Mar-2023', '23', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'March - 2023', '2023-05-02 11:14:20', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1384, '20-Mar-2023', '24', 'Sam', '01:20', '21:07', '00:00', '19:47', '19:47', 'Absent', '', 'March - 2023', '2023-05-02 11:14:20', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1385, '20-Mar-2023', '26', 'GS', '07:35', '17:06', '9:07', '00:00', '9:07', 'Present', '', 'March - 2023', '2023-05-02 11:14:20', 1, 1, NULL, NULL, NULL, NULL, NULL),
(1386, '20-Mar-2023', '28', 'GS', '07:35', '17:00', '9:00', '00:00', '9:00', 'Present', '', 'March - 2023', '2023-05-02 11:14:20', 1, 1, NULL, NULL, NULL, NULL, NULL),
(1387, '20-Mar-2023', '30', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'March - 2023', '2023-05-02 11:14:20', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1388, '20-Mar-2023', '33', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'March - 2023', '2023-05-02 11:14:20', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1389, '20-Mar-2023', '34', 'GS', '07:56', '17:01', '8:58', '00:00', '8:58', 'Present', '', 'March - 2023', '2023-05-02 11:14:20', 1, 1, NULL, NULL, NULL, NULL, NULL),
(1390, '20-Mar-2023', '35', 'GS', '07:35', '17:13', '9:14', '00:00', '9:14', 'Present', '', 'March - 2023', '2023-05-02 11:14:20', 1, 1, NULL, NULL, NULL, NULL, NULL),
(1391, '20-Mar-2023', '36', 'GS', '05:49', '18:16', '9:01', '1:16', '10:17', 'Present', '', 'March - 2023', '2023-05-02 11:14:20', 1, 1, NULL, NULL, NULL, NULL, NULL),
(1392, '20-Mar-2023', '', '', '', '', '', '', '', '', '', 'March - 2023', '2023-05-02 11:14:20', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1393, '21-Mar-2023', '1', 'GS', '07:46', '16:57', '8:58', '00:00', '8:58', 'Present', '', 'March - 2023', '2023-05-02 11:14:20', 1, 1, NULL, NULL, NULL, NULL, NULL),
(1394, '21-Mar-2023', '3', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'March - 2023', '2023-05-02 11:14:20', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1395, '21-Mar-2023', '4', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'March - 2023', '2023-05-02 11:14:20', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1396, '21-Mar-2023', '5', 'GS', '07:28', '17:14', '9:15', '00:00', '9:15', 'Present', '', 'March - 2023', '2023-05-02 11:14:20', 1, 1, NULL, NULL, NULL, NULL, NULL),
(1397, '21-Mar-2023', '6', 'GS', '07:47', '17:03', '9:04', '00:00', '9:04', 'Present', '', 'March - 2023', '2023-05-02 11:14:20', 1, 1, NULL, NULL, NULL, NULL, NULL),
(1398, '21-Mar-2023', '7', 'GS', '07:47', '17:01', '9:02', '00:00', '9:02', 'Present', '', 'March - 2023', '2023-05-02 11:14:20', 1, 1, NULL, NULL, NULL, NULL, NULL),
(1399, '21-Mar-2023', '8', 'GS', '08:27', '16:56', '8:29', '00:00', '8:29', 'Present', '', 'March - 2023', '2023-05-02 11:14:20', 1, 1, NULL, NULL, NULL, NULL, NULL),
(1400, '21-Mar-2023', '9', 'GS', '07:47', '17:00', '9:01', '00:00', '9:01', 'Present', '', 'March - 2023', '2023-05-02 11:14:20', 1, 1, NULL, NULL, NULL, NULL, NULL),
(1401, '21-Mar-2023', '10', 'GS', '09:13', '17:00', '7:47', '00:00', '7:47', 'Present', '', 'March - 2023', '2023-05-02 11:14:20', 1, 1, NULL, NULL, NULL, NULL, NULL),
(1402, '21-Mar-2023', '11', 'GS', '07:46', '17:01', '9:02', '00:00', '9:02', 'Present', '', 'March - 2023', '2023-05-02 11:14:20', 1, 1, NULL, NULL, NULL, NULL, NULL),
(1403, '21-Mar-2023', '14', 'GS', '09:40', '17:04', '7:24', '00:00', '7:24', 'Present', '', 'March - 2023', '2023-05-02 11:14:20', 1, 1, NULL, NULL, NULL, NULL, NULL),
(1404, '21-Mar-2023', '15', 'GS', '07:40', '16:52', '8:53', '00:00', '8:53', 'Present', '', 'March - 2023', '2023-05-02 11:14:20', 1, 1, NULL, NULL, NULL, NULL, NULL),
(1405, '21-Mar-2023', '16', 'GS', '08:37', '16:53', '8:15', '00:00', '8:15', 'Present', '', 'March - 2023', '2023-05-02 11:14:20', 1, 1, NULL, NULL, NULL, NULL, NULL),
(1406, '21-Mar-2023', '17', 'GS', '07:27', '17:18', '9:19', '00:00', '9:19', 'Present', '', 'March - 2023', '2023-05-02 11:14:20', 1, 1, NULL, NULL, NULL, NULL, NULL),
(1407, '21-Mar-2023', '18', 'GS', '07:27', '17:09', '9:09', '00:00', '9:09', 'Present', '', 'March - 2023', '2023-05-02 11:14:20', 1, 1, NULL, NULL, NULL, NULL, NULL),
(1408, '21-Mar-2023', '19', 'GS', '07:27', '17:16', '9:17', '00:00', '9:17', 'Present', '', 'March - 2023', '2023-05-02 11:14:20', 1, 1, NULL, NULL, NULL, NULL, NULL),
(1409, '21-Mar-2023', '20', 'GS', '07:24', '11:48', '3:49', '00:00', '3:49', '½Present', '', 'March - 2023', '2023-05-02 11:14:20', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1410, '21-Mar-2023', '21', 'GS', '07:47', '17:00', '9:01', '00:00', '9:01', 'Present', '', 'March - 2023', '2023-05-02 11:14:20', 1, 1, NULL, NULL, NULL, NULL, NULL),
(1411, '21-Mar-2023', '22', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'March - 2023', '2023-05-02 11:14:20', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1412, '21-Mar-2023', '23', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'March - 2023', '2023-05-02 11:14:20', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1413, '21-Mar-2023', '24', 'Sam', '01:08', '21:07', '00:01', '19:58', '19:59', 'Absent', '', 'March - 2023', '2023-05-02 11:14:20', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1414, '21-Mar-2023', '26', 'GS', '07:47', '17:00', '9:01', '00:00', '9:01', 'Present', '', 'March - 2023', '2023-05-02 11:14:20', 1, 1, NULL, NULL, NULL, NULL, NULL),
(1415, '21-Mar-2023', '28', 'GS', '07:47', '17:00', '9:01', '00:00', '9:01', 'Present', '', 'March - 2023', '2023-05-02 11:14:20', 1, 1, NULL, NULL, NULL, NULL, NULL),
(1416, '21-Mar-2023', '30', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'March - 2023', '2023-05-02 11:14:20', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1417, '21-Mar-2023', '33', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'March - 2023', '2023-05-02 11:14:20', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1418, '21-Mar-2023', '34', 'GS', '08:08', '16:56', '8:45', '00:00', '8:45', 'Present', '', 'March - 2023', '2023-05-02 11:14:20', 1, 1, NULL, NULL, NULL, NULL, NULL),
(1419, '21-Mar-2023', '35', 'GS', '07:47', '17:13', '9:14', '00:00', '9:14', 'Present', '', 'March - 2023', '2023-05-02 11:14:20', 1, 1, NULL, NULL, NULL, NULL, NULL),
(1420, '21-Mar-2023', '36', 'GS', '05:24', '17:52', '9:01', '00:52', '9:53', 'Present', '', 'March - 2023', '2023-05-02 11:14:20', 1, 1, NULL, NULL, NULL, NULL, NULL),
(1421, '21-Mar-2023', '', '', '', '', '', '', '', '', '', 'March - 2023', '2023-05-02 11:14:20', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1422, '22-Mar-2023', '1', 'GS', '07:34', '16:53', '8:54', '00:00', '8:54', 'Present', '', 'March - 2023', '2023-05-02 11:14:20', 1, 1, NULL, NULL, NULL, NULL, NULL),
(1423, '22-Mar-2023', '3', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'March - 2023', '2023-05-02 11:14:20', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1424, '22-Mar-2023', '4', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'March - 2023', '2023-05-02 11:14:20', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1425, '22-Mar-2023', '5', 'GS', '07:32', '17:10', '9:11', '00:00', '9:11', 'Present', '', 'March - 2023', '2023-05-02 11:14:20', 1, 1, NULL, NULL, NULL, NULL, NULL),
(1426, '22-Mar-2023', '6', 'GS', '07:34', '', '00:00', '00:00', '00:00', 'Absent (No OutPunch)', '', 'March - 2023', '2023-05-02 11:14:20', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1427, '22-Mar-2023', '7', 'GS', '07:34', '17:02', '9:03', '00:00', '9:03', 'Present', '', 'March - 2023', '2023-05-02 11:14:20', 1, 1, NULL, NULL, NULL, NULL, NULL),
(1428, '22-Mar-2023', '8', 'GS', '08:04', '16:59', '8:55', '00:00', '8:55', 'Present', '', 'March - 2023', '2023-05-02 11:14:20', 1, 1, NULL, NULL, NULL, NULL, NULL),
(1429, '22-Mar-2023', '9', 'GS', '07:34', '17:00', '9:01', '00:00', '9:01', 'Present', '', 'March - 2023', '2023-05-02 11:14:20', 1, 1, NULL, NULL, NULL, NULL, NULL),
(1430, '22-Mar-2023', '10', 'GS', '07:34', '', '00:00', '00:00', '00:00', 'Absent (No OutPunch)', '', 'March - 2023', '2023-05-02 11:14:20', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1431, '22-Mar-2023', '11', 'GS', '07:34', '', '00:00', '00:00', '00:00', 'Absent (No OutPunch)', '', 'March - 2023', '2023-05-02 11:14:20', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1432, '22-Mar-2023', '14', 'GS', '07:52', '17:02', '9:03', '00:00', '9:03', 'Present', '', 'March - 2023', '2023-05-02 11:14:20', 1, 1, NULL, NULL, NULL, NULL, NULL),
(1433, '22-Mar-2023', '15', 'GS', '07:43', '16:48', '8:49', '00:00', '8:49', 'Present', '', 'March - 2023', '2023-05-02 11:14:20', 1, 1, NULL, NULL, NULL, NULL, NULL),
(1434, '22-Mar-2023', '16', 'GS', '08:40', '16:54', '8:14', '00:00', '8:14', 'Present', '', 'March - 2023', '2023-05-02 11:14:20', 1, 1, NULL, NULL, NULL, NULL, NULL),
(1435, '22-Mar-2023', '17', 'GS', '07:31', '17:19', '9:19', '00:00', '9:19', 'Present', '', 'March - 2023', '2023-05-02 11:14:20', 1, 1, NULL, NULL, NULL, NULL, NULL),
(1436, '22-Mar-2023', '18', 'GS', '07:31', '17:12', '9:12', '00:00', '9:12', 'Present', '', 'March - 2023', '2023-05-02 11:14:20', 1, 1, NULL, NULL, NULL, NULL, NULL),
(1437, '22-Mar-2023', '19', 'GS', '07:31', '17:17', '9:18', '00:00', '9:18', 'Present', '', 'March - 2023', '2023-05-02 11:14:20', 1, 1, NULL, NULL, NULL, NULL, NULL),
(1438, '22-Mar-2023', '20', 'GS', '07:16', '14:35', '6:36', '00:00', '6:36', 'Present', '', 'March - 2023', '2023-05-02 11:14:20', 1, 1, NULL, NULL, NULL, NULL, NULL),
(1439, '22-Mar-2023', '21', 'GS', '07:35', '17:02', '9:03', '00:00', '9:03', 'Present', '', 'March - 2023', '2023-05-02 11:14:20', 1, 1, NULL, NULL, NULL, NULL, NULL),
(1440, '22-Mar-2023', '22', 'GS', '08:39', '14:01', '5:22', '00:00', '5:22', 'Present', '', 'March - 2023', '2023-05-02 11:14:20', 1, 1, NULL, NULL, NULL, NULL, NULL),
(1441, '22-Mar-2023', '23', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'March - 2023', '2023-05-02 11:14:20', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1442, '22-Mar-2023', '24', 'Sam', '01:05', '21:07', '00:00', '20:02', '20:02', 'Absent', '', 'March - 2023', '2023-05-02 11:14:20', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1443, '22-Mar-2023', '26', 'GS', '07:34', '12:40', '4:41', '00:00', '4:41', 'Present', '', 'March - 2023', '2023-05-02 11:14:20', 1, 1, NULL, NULL, NULL, NULL, NULL),
(1444, '22-Mar-2023', '28', 'GS', '07:34', '', '00:00', '00:00', '00:00', 'Absent (No OutPunch)', '', 'March - 2023', '2023-05-02 11:14:20', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1445, '22-Mar-2023', '30', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'March - 2023', '2023-05-02 11:14:20', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1446, '22-Mar-2023', '33', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'March - 2023', '2023-05-02 11:14:20', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1447, '22-Mar-2023', '34', 'GS', '08:08', '16:59', '8:51', '00:00', '8:51', 'Present', '', 'March - 2023', '2023-05-02 11:14:20', 1, 1, NULL, NULL, NULL, NULL, NULL),
(1448, '22-Mar-2023', '35', 'GS', '07:34', '17:06', '9:07', '00:00', '9:07', 'Present', '', 'March - 2023', '2023-05-02 11:14:20', 1, 1, NULL, NULL, NULL, NULL, NULL),
(1449, '22-Mar-2023', '36', 'GS', '05:30', '18:20', '9:01', '1:20', '10:21', 'Present', '', 'March - 2023', '2023-05-02 11:14:20', 1, 1, NULL, NULL, NULL, NULL, NULL),
(1450, '22-Mar-2023', '', '', '', '', '', '', '', '', '', 'March - 2023', '2023-05-02 11:14:20', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1451, '23-Mar-2023', '1', 'GS', '07:32', '', '00:00', '00:00', '00:00', 'Absent (No OutPunch)', '', 'March - 2023', '2023-05-02 11:14:20', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1452, '23-Mar-2023', '3', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'March - 2023', '2023-05-02 11:14:20', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1453, '23-Mar-2023', '4', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'March - 2023', '2023-05-02 11:14:20', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1454, '23-Mar-2023', '5', 'GS', '07:28', '16:56', '8:56', '00:00', '8:56', 'Present', '', 'March - 2023', '2023-05-02 11:14:20', 1, 1, NULL, NULL, NULL, NULL, NULL),
(1455, '23-Mar-2023', '6', 'GS', '07:33', '14:02', '6:03', '00:00', '6:03', 'Present', '', 'March - 2023', '2023-05-02 11:14:20', 1, 1, NULL, NULL, NULL, NULL, NULL),
(1456, '23-Mar-2023', '7', 'GS', '07:33', '14:05', '6:04', '00:00', '6:04', 'Present', '', 'March - 2023', '2023-05-02 11:14:20', 1, 1, NULL, NULL, NULL, NULL, NULL),
(1457, '23-Mar-2023', '8', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'March - 2023', '2023-05-02 11:14:20', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1458, '23-Mar-2023', '9', 'GS', '07:33', '14:04', '6:05', '00:00', '6:05', 'Present', '', 'March - 2023', '2023-05-02 11:14:20', 1, 1, NULL, NULL, NULL, NULL, NULL),
(1459, '23-Mar-2023', '10', 'GS', '07:33', '16:56', '8:57', '00:00', '8:57', 'Present', '', 'March - 2023', '2023-05-02 11:14:20', 1, 1, NULL, NULL, NULL, NULL, NULL),
(1460, '23-Mar-2023', '11', 'GS', '07:32', '16:56', '8:57', '00:00', '8:57', 'Present', '', 'March - 2023', '2023-05-02 11:14:20', 1, 1, NULL, NULL, NULL, NULL, NULL),
(1461, '23-Mar-2023', '14', 'GS', '07:45', '17:01', '9:01', '00:00', '9:01', 'Present', '', 'March - 2023', '2023-05-02 11:14:20', 1, 1, NULL, NULL, NULL, NULL, NULL),
(1462, '23-Mar-2023', '15', 'GS', '08:26', '14:31', '6:05', '00:00', '6:05', 'Present', '', 'March - 2023', '2023-05-02 11:14:20', 1, 1, NULL, NULL, NULL, NULL, NULL),
(1463, '23-Mar-2023', '16', 'GS', '08:49', '15:01', '6:12', '00:00', '6:12', 'Present', '', 'March - 2023', '2023-05-02 11:14:20', 1, 1, NULL, NULL, NULL, NULL, NULL),
(1464, '23-Mar-2023', '17', 'GS', '07:27', '17:00', '9:01', '00:00', '9:01', 'Present', '', 'March - 2023', '2023-05-02 11:14:20', 1, 1, NULL, NULL, NULL, NULL, NULL),
(1465, '23-Mar-2023', '18', 'GS', '07:27', '16:58', '8:55', '00:00', '8:55', 'Present', '', 'March - 2023', '2023-05-02 11:14:20', 1, 1, NULL, NULL, NULL, NULL, NULL),
(1466, '23-Mar-2023', '19', 'GS', '07:27', '14:02', '6:03', '00:00', '6:03', 'Present', '', 'March - 2023', '2023-05-02 11:14:20', 1, 1, NULL, NULL, NULL, NULL, NULL),
(1467, '23-Mar-2023', '20', 'GS', '07:37', '17:06', '9:07', '00:00', '9:07', 'Present', '', 'March - 2023', '2023-05-02 11:14:20', 1, 1, NULL, NULL, NULL, NULL, NULL),
(1468, '23-Mar-2023', '21', 'GS', '07:33', '14:03', '6:04', '00:00', '6:04', 'Present', '', 'March - 2023', '2023-05-02 11:14:20', 1, 1, NULL, NULL, NULL, NULL, NULL),
(1469, '23-Mar-2023', '22', 'GS', '08:20', '14:16', '5:56', '00:00', '5:56', 'Present', '', 'March - 2023', '2023-05-02 11:14:20', 1, 1, NULL, NULL, NULL, NULL, NULL),
(1470, '23-Mar-2023', '23', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'March - 2023', '2023-05-02 11:14:20', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1471, '23-Mar-2023', '24', 'Sam', '01:04', '21:16', '00:01', '20:11', '20:12', 'Absent', '', 'March - 2023', '2023-05-02 11:14:20', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1472, '23-Mar-2023', '26', 'GS', '07:33', '', '00:00', '00:00', '00:00', 'Absent (No OutPunch)', '', 'March - 2023', '2023-05-02 11:14:20', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1473, '23-Mar-2023', '28', 'GS', '07:33', '16:58', '8:59', '00:00', '8:59', 'Present', '', 'March - 2023', '2023-05-02 11:14:20', 1, 1, NULL, NULL, NULL, NULL, NULL),
(1474, '23-Mar-2023', '30', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'March - 2023', '2023-05-02 11:14:20', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1475, '23-Mar-2023', '33', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'March - 2023', '2023-05-02 11:14:20', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1476, '23-Mar-2023', '34', 'GS', '09:00', '15:00', '6:00', '00:00', '6:00', 'Present', '', 'March - 2023', '2023-05-02 11:14:20', 1, 1, NULL, NULL, NULL, NULL, NULL),
(1477, '23-Mar-2023', '35', 'GS', '07:33', '14:04', '6:05', '00:00', '6:05', 'Present', '', 'March - 2023', '2023-05-02 11:14:20', 1, 1, NULL, NULL, NULL, NULL, NULL),
(1478, '23-Mar-2023', '36', 'GS', '05:28', '18:07', '9:01', '1:07', '10:08', 'Present', '', 'March - 2023', '2023-05-02 11:14:20', 1, 1, NULL, NULL, NULL, NULL, NULL),
(1479, '23-Mar-2023', '', '', '', '', '', '', '', '', '', 'March - 2023', '2023-05-02 11:14:20', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1480, '24-Mar-2023', '1', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'March - 2023', '2023-05-02 11:14:20', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1481, '24-Mar-2023', '3', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'March - 2023', '2023-05-02 11:14:20', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1482, '24-Mar-2023', '4', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'March - 2023', '2023-05-02 11:14:21', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1483, '24-Mar-2023', '5', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'March - 2023', '2023-05-02 11:14:21', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1484, '24-Mar-2023', '6', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'March - 2023', '2023-05-02 11:14:21', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1485, '24-Mar-2023', '7', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'March - 2023', '2023-05-02 11:14:21', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1486, '24-Mar-2023', '8', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'March - 2023', '2023-05-02 11:14:21', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1487, '24-Mar-2023', '9', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'March - 2023', '2023-05-02 11:14:21', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1488, '24-Mar-2023', '10', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'March - 2023', '2023-05-02 11:14:21', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1489, '24-Mar-2023', '11', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'March - 2023', '2023-05-02 11:14:21', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1490, '24-Mar-2023', '14', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'March - 2023', '2023-05-02 11:14:21', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1491, '24-Mar-2023', '15', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'March - 2023', '2023-05-02 11:14:21', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1492, '24-Mar-2023', '16', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'March - 2023', '2023-05-02 11:14:21', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1493, '24-Mar-2023', '17', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'March - 2023', '2023-05-02 11:14:21', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1494, '24-Mar-2023', '18', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'March - 2023', '2023-05-02 11:14:21', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1495, '24-Mar-2023', '19', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'March - 2023', '2023-05-02 11:14:21', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1496, '24-Mar-2023', '20', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'March - 2023', '2023-05-02 11:14:21', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1497, '24-Mar-2023', '21', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'March - 2023', '2023-05-02 11:14:21', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1498, '24-Mar-2023', '22', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'March - 2023', '2023-05-02 11:14:21', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1499, '24-Mar-2023', '23', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'March - 2023', '2023-05-02 11:14:21', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1500, '24-Mar-2023', '24', 'Sam', '01:05', '21:07', '00:01', '20:01', '20:02', 'Absent', '', 'March - 2023', '2023-05-02 11:14:21', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1501, '24-Mar-2023', '26', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'March - 2023', '2023-05-02 11:14:21', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1502, '24-Mar-2023', '28', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'March - 2023', '2023-05-02 11:14:21', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1503, '24-Mar-2023', '30', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'March - 2023', '2023-05-02 11:14:21', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1504, '24-Mar-2023', '33', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'March - 2023', '2023-05-02 11:14:21', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1505, '24-Mar-2023', '34', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'March - 2023', '2023-05-02 11:14:21', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1506, '24-Mar-2023', '35', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'March - 2023', '2023-05-02 11:14:21', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1507, '24-Mar-2023', '36', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'March - 2023', '2023-05-02 11:14:21', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1508, '24-Mar-2023', '', '', '', '', '', '', '', '', '', 'March - 2023', '2023-05-02 11:14:21', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1509, '25-Mar-2023', '1', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'March - 2023', '2023-05-02 11:14:21', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1510, '25-Mar-2023', '3', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'March - 2023', '2023-05-02 11:14:21', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1511, '25-Mar-2023', '4', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'March - 2023', '2023-05-02 11:14:21', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1512, '25-Mar-2023', '5', 'GS', '08:26', '15:00', '00:00', '6:34', '6:34', 'WeeklyOff Present', '', 'March - 2023', '2023-05-02 11:14:21', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1513, '25-Mar-2023', '6', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'March - 2023', '2023-05-02 11:14:21', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1514, '25-Mar-2023', '7', 'GS', '08:26', '14:59', '00:00', '6:33', '6:33', 'WeeklyOff Present', '', 'March - 2023', '2023-05-02 11:14:21', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1515, '25-Mar-2023', '8', 'GS', '08:54', '15:05', '00:00', '6:11', '6:11', 'WeeklyOff Present', '', 'March - 2023', '2023-05-02 11:14:21', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1516, '25-Mar-2023', '9', 'GS', '08:26', '14:59', '00:00', '6:33', '6:33', 'WeeklyOff Present', '', 'March - 2023', '2023-05-02 11:14:21', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1517, '25-Mar-2023', '10', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'March - 2023', '2023-05-02 11:14:21', 1, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_attendance_master` (`id`, `attend_date`, `attend_emp_id`, `attend_shift`, `attend_in_time`, `attend_out_time`, `attend_work_hours`, `attend_over_time`, `attend_total_hours`, `attend_status`, `attend_notes`, `attend_month_year`, `created_at`, `attend_import_by`, `attend_action_status`, `attend_action_by`, `attend_amount`, `attend_leave_category`, `attend_action_notes`, `attend_action_at`) VALUES
(1518, '25-Mar-2023', '11', 'GS', '08:26', '15:00', '00:00', '6:34', '6:34', 'WeeklyOff Present', '', 'March - 2023', '2023-05-02 11:14:21', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1519, '25-Mar-2023', '14', 'GS', '09:09', '15:01', '00:00', '5:52', '5:52', 'WeeklyOff Present', '', 'March - 2023', '2023-05-02 11:14:21', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1520, '25-Mar-2023', '15', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'March - 2023', '2023-05-02 11:14:21', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1521, '25-Mar-2023', '16', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'March - 2023', '2023-05-02 11:14:21', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1522, '25-Mar-2023', '17', 'GS', '08:25', '15:00', '00:00', '6:34', '6:34', 'WeeklyOff Present', '', 'March - 2023', '2023-05-02 11:14:21', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1523, '25-Mar-2023', '18', 'GS', '08:25', '14:59', '00:00', '6:34', '6:34', 'WeeklyOff Present', '', 'March - 2023', '2023-05-02 11:14:21', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1524, '25-Mar-2023', '19', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'March - 2023', '2023-05-02 11:14:21', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1525, '25-Mar-2023', '20', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'March - 2023', '2023-05-02 11:14:21', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1526, '25-Mar-2023', '21', 'GS', '08:26', '14:59', '00:00', '6:33', '6:33', 'WeeklyOff Present', '', 'March - 2023', '2023-05-02 11:14:21', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1527, '25-Mar-2023', '22', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'March - 2023', '2023-05-02 11:14:21', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1528, '25-Mar-2023', '23', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'March - 2023', '2023-05-02 11:14:21', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1529, '25-Mar-2023', '24', 'Sam', '01:06', '21:07', '00:00', '20:01', '20:01', 'WeeklyOff Present', '', 'March - 2023', '2023-05-02 11:14:21', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1530, '25-Mar-2023', '26', 'GS', '08:26', '14:59', '00:00', '6:33', '6:33', 'WeeklyOff Present', '', 'March - 2023', '2023-05-02 11:14:21', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1531, '25-Mar-2023', '28', 'GS', '08:26', '14:59', '00:00', '6:33', '6:33', 'WeeklyOff Present', '', 'March - 2023', '2023-05-02 11:14:21', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1532, '25-Mar-2023', '30', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'March - 2023', '2023-05-02 11:14:21', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1533, '25-Mar-2023', '33', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'March - 2023', '2023-05-02 11:14:21', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1534, '25-Mar-2023', '34', 'GS', '09:05', '15:05', '00:00', '6:00', '6:00', 'WeeklyOff Present', '', 'March - 2023', '2023-05-02 11:14:21', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1535, '25-Mar-2023', '35', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'March - 2023', '2023-05-02 11:14:21', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1536, '25-Mar-2023', '36', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'March - 2023', '2023-05-02 11:14:21', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1537, '25-Mar-2023', '', '', '', '', '', '', '', '', '', 'March - 2023', '2023-05-02 11:14:21', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1538, '26-Mar-2023', '1', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'March - 2023', '2023-05-02 11:14:21', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1539, '26-Mar-2023', '3', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'March - 2023', '2023-05-02 11:14:21', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1540, '26-Mar-2023', '4', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'March - 2023', '2023-05-02 11:14:21', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1541, '26-Mar-2023', '5', 'GS', '07:26', '16:57', '00:00', '9:31', '9:31', 'WeeklyOff Present', '', 'March - 2023', '2023-05-02 11:14:21', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1542, '26-Mar-2023', '6', 'GS', '07:33', '', '00:00', '00:00', '00:00', 'Absent (No OutPunch)', '', 'March - 2023', '2023-05-02 11:14:21', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1543, '26-Mar-2023', '7', 'GS', '07:33', '', '00:00', '00:00', '00:00', 'WeeklyOff  (No OutPunch)', '', 'March - 2023', '2023-05-02 11:14:21', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1544, '26-Mar-2023', '8', 'GS', '', '', '00:00', '00:00', '00:00', 'WeeklyOff', '', 'March - 2023', '2023-05-02 11:14:21', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1545, '26-Mar-2023', '9', 'GS', '07:34', '13:56', '00:00', '6:22', '6:22', 'WeeklyOff Present', '', 'March - 2023', '2023-05-02 11:14:21', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1546, '26-Mar-2023', '10', 'GS', '07:33', '16:57', '00:00', '9:24', '9:24', 'WeeklyOff Present', '', 'March - 2023', '2023-05-02 11:14:21', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1547, '26-Mar-2023', '11', 'GS', '07:33', '16:57', '00:00', '9:24', '9:24', 'WeeklyOff Present', '', 'March - 2023', '2023-05-02 11:14:21', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1548, '26-Mar-2023', '14', 'GS', '07:56', '16:49', '00:00', '8:53', '8:53', 'WeeklyOff Present', '', 'March - 2023', '2023-05-02 11:14:21', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1549, '26-Mar-2023', '15', 'GS', '08:30', '14:31', '00:00', '6:01', '6:01', 'WeeklyOff Present', '', 'March - 2023', '2023-05-02 11:14:21', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1550, '26-Mar-2023', '16', 'GS', '09:08', '15:00', '00:00', '5:52', '5:52', 'WeeklyOff Present', '', 'March - 2023', '2023-05-02 11:14:21', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1551, '26-Mar-2023', '17', 'GS', '07:26', '', '00:00', '00:00', '00:00', 'WeeklyOff  (No OutPunch)', '', 'March - 2023', '2023-05-02 11:14:21', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1552, '26-Mar-2023', '18', 'GS', '07:26', '13:59', '00:00', '6:33', '6:33', 'WeeklyOff Present', '', 'March - 2023', '2023-05-02 11:14:21', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1553, '26-Mar-2023', '19', 'GS', '07:26', '13:59', '00:00', '6:33', '6:33', 'WeeklyOff Present', '', 'March - 2023', '2023-05-02 11:14:21', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1554, '26-Mar-2023', '20', 'GS', '07:27', '15:48', '00:00', '8:21', '8:21', 'WeeklyOff Present', '', 'March - 2023', '2023-05-02 11:14:21', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1555, '26-Mar-2023', '21', 'GS', '07:34', '', '00:00', '00:00', '00:00', 'WeeklyOff  (No OutPunch)', '', 'March - 2023', '2023-05-02 11:14:21', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1556, '26-Mar-2023', '22', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'March - 2023', '2023-05-02 11:14:21', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1557, '26-Mar-2023', '23', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'March - 2023', '2023-05-02 11:14:21', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1558, '26-Mar-2023', '24', 'Sam', '01:07', '21:07', '00:00', '20:00', '20:00', 'WeeklyOff Present', '', 'March - 2023', '2023-05-02 11:14:21', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1559, '26-Mar-2023', '26', 'GS', '07:33', '', '00:00', '00:00', '00:00', 'WeeklyOff  (No OutPunch)', '', 'March - 2023', '2023-05-02 11:14:21', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1560, '26-Mar-2023', '28', 'GS', '07:33', '16:57', '00:00', '9:24', '9:24', 'WeeklyOff Present', '', 'March - 2023', '2023-05-02 11:14:21', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1561, '26-Mar-2023', '30', 'GS', '10:47', '', '00:00', '00:00', '00:00', 'Absent (No OutPunch)', '', 'March - 2023', '2023-05-02 11:14:21', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1562, '26-Mar-2023', '33', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'March - 2023', '2023-05-02 11:14:21', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1563, '26-Mar-2023', '34', 'GS', '09:01', '14:57', '00:00', '5:56', '5:56', 'WeeklyOff Present', '', 'March - 2023', '2023-05-02 11:14:21', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1564, '26-Mar-2023', '35', 'GS', '07:33', '13:59', '00:00', '6:26', '6:26', 'WeeklyOff Present', '', 'March - 2023', '2023-05-02 11:14:21', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1565, '26-Mar-2023', '36', 'GS', '05:25', '18:00', '00:00', '12:35', '12:35', 'WeeklyOff Present', '', 'March - 2023', '2023-05-02 11:14:21', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1566, '26-Mar-2023', '', '', '', '', '', '', '', '', '', 'March - 2023', '2023-05-02 11:14:21', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1567, '27-Mar-2023', '1', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'March - 2023', '2023-05-02 11:14:21', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1568, '27-Mar-2023', '3', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'March - 2023', '2023-05-02 11:14:21', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1569, '27-Mar-2023', '4', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'March - 2023', '2023-05-02 11:14:21', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1570, '27-Mar-2023', '5', 'GS', '07:25', '18:11', '9:01', '1:11', '10:12', 'Present', '', 'March - 2023', '2023-05-02 11:14:21', 1, 1, NULL, NULL, NULL, NULL, NULL),
(1571, '27-Mar-2023', '6', 'GS', '07:26', '13:50', '5:51', '00:00', '5:51', 'Present', '', 'March - 2023', '2023-05-02 11:14:21', 1, 1, NULL, NULL, NULL, NULL, NULL),
(1572, '27-Mar-2023', '7', 'GS', '07:26', '13:53', '5:52', '00:00', '5:52', 'Present', '', 'March - 2023', '2023-05-02 11:14:21', 1, 1, NULL, NULL, NULL, NULL, NULL),
(1573, '27-Mar-2023', '8', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'March - 2023', '2023-05-02 11:14:21', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1574, '27-Mar-2023', '9', 'GS', '07:26', '13:51', '5:52', '00:00', '5:52', 'Present', '', 'March - 2023', '2023-05-02 11:14:21', 1, 1, NULL, NULL, NULL, NULL, NULL),
(1575, '27-Mar-2023', '10', 'GS', '07:27', '18:10', '9:01', '1:10', '10:11', 'Present', '', 'March - 2023', '2023-05-02 11:14:21', 1, 1, NULL, NULL, NULL, NULL, NULL),
(1576, '27-Mar-2023', '11', 'GS', '07:26', '16:58', '8:59', '00:00', '8:59', 'Present', '', 'March - 2023', '2023-05-02 11:14:21', 1, 1, NULL, NULL, NULL, NULL, NULL),
(1577, '27-Mar-2023', '14', 'GS', '07:55', '16:47', '8:48', '00:00', '8:48', 'Present', '', 'March - 2023', '2023-05-02 11:14:21', 1, 1, NULL, NULL, NULL, NULL, NULL),
(1578, '27-Mar-2023', '15', 'GS', '08:31', '14:28', '5:57', '00:00', '5:57', 'Present', '', 'March - 2023', '2023-05-02 11:14:21', 1, 1, NULL, NULL, NULL, NULL, NULL),
(1579, '27-Mar-2023', '16', 'GS', '09:02', '15:00', '5:58', '00:00', '5:58', 'Present', '', 'March - 2023', '2023-05-02 11:14:21', 1, 1, NULL, NULL, NULL, NULL, NULL),
(1580, '27-Mar-2023', '17', 'GS', '07:25', '13:59', '6:00', '00:00', '6:00', 'Present', '', 'March - 2023', '2023-05-02 11:14:21', 1, 1, NULL, NULL, NULL, NULL, NULL),
(1581, '27-Mar-2023', '18', 'GS', '07:25', '13:56', '5:56', '00:00', '5:56', 'Present', '', 'March - 2023', '2023-05-02 11:14:21', 1, 1, NULL, NULL, NULL, NULL, NULL),
(1582, '27-Mar-2023', '19', 'GS', '07:25', '13:59', '6:00', '00:00', '6:00', 'Present', '', 'March - 2023', '2023-05-02 11:14:21', 1, 1, NULL, NULL, NULL, NULL, NULL),
(1583, '27-Mar-2023', '20', 'GS', '07:33', '14:13', '6:11', '00:00', '6:11', 'Present', '', 'March - 2023', '2023-05-02 11:14:21', 1, 1, NULL, NULL, NULL, NULL, NULL),
(1584, '27-Mar-2023', '21', 'GS', '07:26', '13:53', '5:54', '00:00', '5:54', 'Present', '', 'March - 2023', '2023-05-02 11:14:21', 1, 1, NULL, NULL, NULL, NULL, NULL),
(1585, '27-Mar-2023', '22', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'March - 2023', '2023-05-02 11:14:21', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1586, '27-Mar-2023', '23', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'March - 2023', '2023-05-02 11:14:21', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1587, '27-Mar-2023', '24', 'Sam', '01:20', '21:15', '00:01', '19:54', '19:55', 'Absent', '', 'March - 2023', '2023-05-02 11:14:21', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1588, '27-Mar-2023', '26', 'GS', '07:26', '13:51', '5:52', '00:00', '5:52', 'Present', '', 'March - 2023', '2023-05-02 11:14:21', 1, 1, NULL, NULL, NULL, NULL, NULL),
(1589, '27-Mar-2023', '28', 'GS', '07:26', '16:58', '8:59', '00:00', '8:59', 'Present', '', 'March - 2023', '2023-05-02 11:14:21', 1, 1, NULL, NULL, NULL, NULL, NULL),
(1590, '27-Mar-2023', '30', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'March - 2023', '2023-05-02 11:14:21', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1591, '27-Mar-2023', '33', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'March - 2023', '2023-05-02 11:14:21', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1592, '27-Mar-2023', '34', 'GS', '09:02', '14:55', '5:53', '00:00', '5:53', 'Present', '', 'March - 2023', '2023-05-02 11:14:21', 1, 1, NULL, NULL, NULL, NULL, NULL),
(1593, '27-Mar-2023', '35', 'GS', '07:26', '13:56', '5:57', '00:00', '5:57', 'Present', '', 'March - 2023', '2023-05-02 11:14:21', 1, 1, NULL, NULL, NULL, NULL, NULL),
(1594, '27-Mar-2023', '36', 'GS', '05:27', '18:00', '9:01', '00:56', '9:57', 'Present', '', 'March - 2023', '2023-05-02 11:14:21', 1, 1, NULL, NULL, NULL, NULL, NULL),
(1595, '27-Mar-2023', '', '', '', '', '', '', '', '', '', 'March - 2023', '2023-05-02 11:14:21', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1596, '28-Mar-2023', '1', 'GS', '07:30', '', '00:00', '00:00', '00:00', 'Absent (No OutPunch)', '', 'March - 2023', '2023-05-02 11:14:21', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1597, '28-Mar-2023', '3', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'March - 2023', '2023-05-02 11:14:21', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1598, '28-Mar-2023', '4', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'March - 2023', '2023-05-02 11:14:21', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1599, '28-Mar-2023', '5', 'GS', '07:25', '18:30', '9:01', '1:30', '10:31', 'Present', '', 'March - 2023', '2023-05-02 11:14:21', 1, 1, NULL, NULL, NULL, NULL, NULL),
(1600, '28-Mar-2023', '6', 'GS', '07:30', '13:58', '5:59', '00:00', '5:59', 'Present', '', 'March - 2023', '2023-05-02 11:14:21', 1, 1, NULL, NULL, NULL, NULL, NULL),
(1601, '28-Mar-2023', '7', 'GS', '07:30', '14:02', '6:03', '00:00', '6:03', 'Present', '', 'March - 2023', '2023-05-02 11:14:21', 1, 1, NULL, NULL, NULL, NULL, NULL),
(1602, '28-Mar-2023', '8', 'GS', '09:01', '14:52', '5:51', '00:00', '5:51', 'Present', '', 'March - 2023', '2023-05-02 11:14:21', 1, 1, NULL, NULL, NULL, NULL, NULL),
(1603, '28-Mar-2023', '9', 'GS', '07:30', '13:59', '6:00', '00:00', '6:00', 'Present', '', 'March - 2023', '2023-05-02 11:14:21', 1, 1, NULL, NULL, NULL, NULL, NULL),
(1604, '28-Mar-2023', '10', 'GS', '07:30', '18:28', '9:01', '1:28', '10:29', 'Present', '', 'March - 2023', '2023-05-02 11:14:21', 1, 1, NULL, NULL, NULL, NULL, NULL),
(1605, '28-Mar-2023', '11', 'GS', '07:30', '17:02', '9:03', '00:00', '9:03', 'Present', '', 'March - 2023', '2023-05-02 11:14:21', 1, 1, NULL, NULL, NULL, NULL, NULL),
(1606, '28-Mar-2023', '14', 'GS', '07:43', '14:56', '6:57', '00:00', '6:57', 'Present', '', 'March - 2023', '2023-05-02 11:14:21', 1, 1, NULL, NULL, NULL, NULL, NULL),
(1607, '28-Mar-2023', '15', 'GS', '08:33', '14:29', '5:56', '00:00', '5:56', 'Present', '', 'March - 2023', '2023-05-02 11:14:21', 1, 1, NULL, NULL, NULL, NULL, NULL),
(1608, '28-Mar-2023', '16', 'GS', '09:15', '15:15', '6:00', '00:00', '6:00', 'Present', '', 'March - 2023', '2023-05-02 11:14:21', 1, 1, NULL, NULL, NULL, NULL, NULL),
(1609, '28-Mar-2023', '17', 'GS', '07:25', '14:02', '6:03', '00:00', '6:03', 'Present', '', 'March - 2023', '2023-05-02 11:14:21', 1, 1, NULL, NULL, NULL, NULL, NULL),
(1610, '28-Mar-2023', '18', 'GS', '07:25', '13:59', '5:56', '00:00', '5:56', 'Present', '', 'March - 2023', '2023-05-02 11:14:21', 1, 1, NULL, NULL, NULL, NULL, NULL),
(1611, '28-Mar-2023', '19', 'GS', '07:25', '14:00', '6:01', '00:00', '6:01', 'Present', '', 'March - 2023', '2023-05-02 11:14:21', 1, 1, NULL, NULL, NULL, NULL, NULL),
(1612, '28-Mar-2023', '20', 'GS', '07:43', '16:37', '8:38', '00:00', '8:38', 'Present', '', 'March - 2023', '2023-05-02 11:14:21', 1, 1, NULL, NULL, NULL, NULL, NULL),
(1613, '28-Mar-2023', '21', 'GS', '07:30', '13:59', '6:00', '00:00', '6:00', 'Present', '', 'March - 2023', '2023-05-02 11:14:21', 1, 1, NULL, NULL, NULL, NULL, NULL),
(1614, '28-Mar-2023', '22', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'March - 2023', '2023-05-02 11:14:21', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1615, '28-Mar-2023', '23', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'March - 2023', '2023-05-02 11:14:21', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1616, '28-Mar-2023', '24', 'Sam', '01:05', '21:07', '00:01', '20:01', '20:02', 'Absent', '', 'March - 2023', '2023-05-02 11:14:21', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1617, '28-Mar-2023', '26', 'GS', '07:30', '13:59', '6:00', '00:00', '6:00', 'Present', '', 'March - 2023', '2023-05-02 11:14:21', 1, 1, NULL, NULL, NULL, NULL, NULL),
(1618, '28-Mar-2023', '28', 'GS', '07:30', '17:02', '8:59', '00:00', '8:59', 'Present', '', 'March - 2023', '2023-05-02 11:14:21', 1, 1, NULL, NULL, NULL, NULL, NULL),
(1619, '28-Mar-2023', '30', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'March - 2023', '2023-05-02 11:14:21', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1620, '28-Mar-2023', '33', 'GS', '14:36', '15:36', '1:00', '00:00', '1:00', 'Absent', '', 'March - 2023', '2023-05-02 11:14:21', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1621, '28-Mar-2023', '34', 'GS', '09:01', '14:52', '5:51', '00:00', '5:51', 'Present', '', 'March - 2023', '2023-05-02 11:14:21', 1, 1, NULL, NULL, NULL, NULL, NULL),
(1622, '28-Mar-2023', '35', 'GS', '07:30', '14:03', '6:04', '00:00', '6:04', 'Present', '', 'March - 2023', '2023-05-02 11:14:21', 1, 1, NULL, NULL, NULL, NULL, NULL),
(1623, '28-Mar-2023', '36', 'GS', '05:21', '17:58', '9:01', '00:58', '9:59', 'Present', '', 'March - 2023', '2023-05-02 11:14:21', 1, 1, NULL, NULL, NULL, NULL, NULL),
(1624, '28-Mar-2023', '', '', '', '', '', '', '', '', '', 'March - 2023', '2023-05-02 11:14:21', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1625, '29-Mar-2023', '1', 'GS', '07:30', '17:00', '9:01', '00:00', '9:01', 'Present', '', 'March - 2023', '2023-05-02 11:14:21', 1, 1, NULL, NULL, NULL, NULL, NULL),
(1626, '29-Mar-2023', '3', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'March - 2023', '2023-05-02 11:14:21', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1627, '29-Mar-2023', '4', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'March - 2023', '2023-05-02 11:14:21', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1628, '29-Mar-2023', '5', 'GS', '07:26', '17:08', '9:09', '00:00', '9:09', 'Present', '', 'March - 2023', '2023-05-02 11:14:21', 1, 1, NULL, NULL, NULL, NULL, NULL),
(1629, '29-Mar-2023', '6', 'GS', '07:30', '14:03', '6:04', '00:00', '6:04', 'Present', '', 'March - 2023', '2023-05-02 11:14:21', 1, 1, NULL, NULL, NULL, NULL, NULL),
(1630, '29-Mar-2023', '7', 'GS', '07:30', '14:03', '6:03', '00:00', '6:03', 'Present', '', 'March - 2023', '2023-05-02 11:14:21', 1, 1, NULL, NULL, NULL, NULL, NULL),
(1631, '29-Mar-2023', '8', 'GS', '08:45', '14:55', '6:06', '00:00', '6:06', 'Present', '', 'March - 2023', '2023-05-02 11:14:21', 1, 1, NULL, NULL, NULL, NULL, NULL),
(1632, '29-Mar-2023', '9', 'GS', '07:31', '14:04', '6:05', '00:00', '6:05', 'Present', '', 'March - 2023', '2023-05-02 11:14:21', 1, 1, NULL, NULL, NULL, NULL, NULL),
(1633, '29-Mar-2023', '10', 'GS', '07:30', '16:59', '9:00', '00:00', '9:00', 'Present', '', 'March - 2023', '2023-05-02 11:14:21', 1, 1, NULL, NULL, NULL, NULL, NULL),
(1634, '29-Mar-2023', '11', 'GS', '07:30', '17:00', '9:01', '00:00', '9:01', 'Present', '', 'March - 2023', '2023-05-02 11:14:21', 1, 1, NULL, NULL, NULL, NULL, NULL),
(1635, '29-Mar-2023', '14', 'GS', '07:52', '17:10', '9:11', '00:00', '9:11', 'Present', '', 'March - 2023', '2023-05-02 11:14:21', 1, 1, NULL, NULL, NULL, NULL, NULL),
(1636, '29-Mar-2023', '15', 'GS', '08:32', '14:03', '5:31', '00:00', '5:31', 'Present', '', 'March - 2023', '2023-05-02 11:14:21', 1, 1, NULL, NULL, NULL, NULL, NULL),
(1637, '29-Mar-2023', '16', 'GS', '09:12', '15:12', '6:00', '00:00', '6:00', 'Present', '', 'March - 2023', '2023-05-02 11:14:21', 1, 1, NULL, NULL, NULL, NULL, NULL),
(1638, '29-Mar-2023', '17', 'GS', '07:25', '17:03', '9:04', '00:00', '9:04', 'Present', '', 'March - 2023', '2023-05-02 11:14:21', 1, 1, NULL, NULL, NULL, NULL, NULL),
(1639, '29-Mar-2023', '18', 'GS', '07:25', '14:04', '6:04', '00:00', '6:04', 'Present', '', 'March - 2023', '2023-05-02 11:14:21', 1, 1, NULL, NULL, NULL, NULL, NULL),
(1640, '29-Mar-2023', '19', 'GS', '09:05', '', '00:00', '00:00', '00:00', 'Absent (No OutPunch)', '', 'March - 2023', '2023-05-02 11:14:21', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1641, '29-Mar-2023', '20', 'GS', '07:33', '17:11', '9:12', '00:00', '9:12', 'Present', '', 'March - 2023', '2023-05-02 11:14:21', 1, 1, NULL, NULL, NULL, NULL, NULL),
(1642, '29-Mar-2023', '21', 'GS', '07:30', '14:05', '6:06', '00:00', '6:06', 'Present', '', 'March - 2023', '2023-05-02 11:14:21', 1, 1, NULL, NULL, NULL, NULL, NULL),
(1643, '29-Mar-2023', '22', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'March - 2023', '2023-05-02 11:14:21', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1644, '29-Mar-2023', '23', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'March - 2023', '2023-05-02 11:14:22', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1645, '29-Mar-2023', '24', 'Sam', '01:08', '21:11', '00:01', '20:02', '20:03', 'Absent', '', 'March - 2023', '2023-05-02 11:14:22', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1646, '29-Mar-2023', '26', 'GS', '07:30', '14:04', '6:05', '00:00', '6:05', 'Present', '', 'March - 2023', '2023-05-02 11:14:22', 1, 1, NULL, NULL, NULL, NULL, NULL),
(1647, '29-Mar-2023', '28', 'GS', '07:30', '17:03', '9:04', '00:00', '9:04', 'Present', '', 'March - 2023', '2023-05-02 11:14:22', 1, 1, NULL, NULL, NULL, NULL, NULL),
(1648, '29-Mar-2023', '30', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'March - 2023', '2023-05-02 11:14:22', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1649, '29-Mar-2023', '33', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'March - 2023', '2023-05-02 11:14:22', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1650, '29-Mar-2023', '34', 'GS', '08:57', '14:58', '6:01', '00:00', '6:01', 'Present', '', 'March - 2023', '2023-05-02 11:14:22', 1, 1, NULL, NULL, NULL, NULL, NULL),
(1651, '29-Mar-2023', '35', 'GS', '07:30', '14:06', '6:07', '00:00', '6:07', 'Present', '', 'March - 2023', '2023-05-02 11:14:22', 1, 1, NULL, NULL, NULL, NULL, NULL),
(1652, '29-Mar-2023', '36', 'GS', '05:25', '17:49', '9:01', '00:49', '9:50', 'Present', '', 'March - 2023', '2023-05-02 11:14:22', 1, 1, NULL, NULL, NULL, NULL, NULL),
(1653, '29-Mar-2023', '', '', '', '', '', '', '', '', '', 'March - 2023', '2023-05-02 11:14:22', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1654, '30-Mar-2023', '1', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'March - 2023', '2023-05-02 11:14:22', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1655, '30-Mar-2023', '3', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'March - 2023', '2023-05-02 11:14:22', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1656, '30-Mar-2023', '4', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'March - 2023', '2023-05-02 11:14:22', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1657, '30-Mar-2023', '5', 'GS', '16:57', '', '00:00', '00:00', '00:00', 'Absent (No OutPunch)', '', 'March - 2023', '2023-05-02 11:14:22', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1658, '30-Mar-2023', '6', 'GS', '07:27', '14:07', '6:08', '00:00', '6:08', 'Present', '', 'March - 2023', '2023-05-02 11:14:22', 1, 1, NULL, NULL, NULL, NULL, NULL),
(1659, '30-Mar-2023', '7', 'GS', '07:27', '14:07', '6:08', '00:00', '6:08', 'Present', '', 'March - 2023', '2023-05-02 11:14:22', 1, 1, NULL, NULL, NULL, NULL, NULL),
(1660, '30-Mar-2023', '8', 'GS', '08:46', '14:50', '6:04', '00:00', '6:04', 'Present', '', 'March - 2023', '2023-05-02 11:14:22', 1, 1, NULL, NULL, NULL, NULL, NULL),
(1661, '30-Mar-2023', '9', 'GS', '07:28', '14:07', '6:08', '00:00', '6:08', 'Present', '', 'March - 2023', '2023-05-02 11:14:22', 1, 1, NULL, NULL, NULL, NULL, NULL),
(1662, '30-Mar-2023', '10', 'GS', '07:27', '16:56', '8:57', '00:00', '8:57', 'Present', '', 'March - 2023', '2023-05-02 11:14:22', 1, 1, NULL, NULL, NULL, NULL, NULL),
(1663, '30-Mar-2023', '11', 'GS', '16:57', '', '00:00', '00:00', '00:00', 'Absent (No OutPunch)', '', 'March - 2023', '2023-05-02 11:14:22', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1664, '30-Mar-2023', '14', 'GS', '07:48', '17:05', '9:06', '00:00', '9:06', 'Present', '', 'March - 2023', '2023-05-02 11:14:22', 1, 1, NULL, NULL, NULL, NULL, NULL),
(1665, '30-Mar-2023', '15', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'March - 2023', '2023-05-02 11:14:22', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1666, '30-Mar-2023', '16', 'GS', '15:16', '', '00:00', '00:00', '00:00', 'Absent (No OutPunch)', '', 'March - 2023', '2023-05-02 11:14:22', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1667, '30-Mar-2023', '17', 'GS', '16:58', '', '00:00', '00:00', '00:00', 'Absent (No OutPunch)', '', 'March - 2023', '2023-05-02 11:14:22', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1668, '30-Mar-2023', '18', 'GS', '11:34', '14:07', '2:33', '00:00', '2:33', '½Present', '', 'March - 2023', '2023-05-02 11:14:22', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1669, '30-Mar-2023', '19', 'GS', '08:51', '10:41', '1:50', '00:00', '1:50', 'Absent', '', 'March - 2023', '2023-05-02 11:14:22', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1670, '30-Mar-2023', '20', 'GS', '07:49', '15:35', '7:36', '00:00', '7:36', 'Present', '', 'March - 2023', '2023-05-02 11:14:22', 1, 1, NULL, NULL, NULL, NULL, NULL),
(1671, '30-Mar-2023', '21', 'GS', '07:28', '16:57', '8:57', '00:00', '8:57', 'Present', '', 'March - 2023', '2023-05-02 11:14:22', 1, 1, NULL, NULL, NULL, NULL, NULL),
(1672, '30-Mar-2023', '22', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'March - 2023', '2023-05-02 11:14:22', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1673, '30-Mar-2023', '23', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'March - 2023', '2023-05-02 11:14:22', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1674, '30-Mar-2023', '24', 'Sam', '01:06', '05:09', '00:01', '4:02', '4:03', 'Absent', '', 'March - 2023', '2023-05-02 11:14:22', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1675, '30-Mar-2023', '26', 'GS', '07:27', '14:06', '6:07', '00:00', '6:07', 'Present', '', 'March - 2023', '2023-05-02 11:14:22', 1, 1, NULL, NULL, NULL, NULL, NULL),
(1676, '30-Mar-2023', '28', 'GS', '07:27', '16:57', '8:58', '00:00', '8:58', 'Present', '', 'March - 2023', '2023-05-02 11:14:22', 1, 1, NULL, NULL, NULL, NULL, NULL),
(1677, '30-Mar-2023', '30', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'March - 2023', '2023-05-02 11:14:22', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1678, '30-Mar-2023', '33', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'March - 2023', '2023-05-02 11:14:22', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1679, '30-Mar-2023', '34', 'GS', '08:47', '14:46', '5:59', '00:00', '5:59', 'Present', '', 'March - 2023', '2023-05-02 11:14:22', 1, 1, NULL, NULL, NULL, NULL, NULL),
(1680, '30-Mar-2023', '35', 'GS', '14:01', '', '00:00', '00:00', '00:00', 'Absent (No OutPunch)', '', 'March - 2023', '2023-05-02 11:14:22', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1681, '30-Mar-2023', '36', 'GS', '05:24', '17:06', '9:07', '00:00', '9:07', 'Present', '', 'March - 2023', '2023-05-02 11:14:22', 1, 1, NULL, NULL, NULL, NULL, NULL),
(1682, '30-Mar-2023', '', '', '', '', '', '', '', '', '', 'March - 2023', '2023-05-02 11:14:22', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1683, '31-Mar-2023', '1', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'March - 2023', '2023-05-02 11:14:22', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1684, '31-Mar-2023', '3', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'March - 2023', '2023-05-02 11:14:22', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1685, '31-Mar-2023', '4', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'March - 2023', '2023-05-02 11:14:22', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1686, '31-Mar-2023', '5', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'March - 2023', '2023-05-02 11:14:22', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1687, '31-Mar-2023', '6', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'March - 2023', '2023-05-02 11:14:22', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1688, '31-Mar-2023', '7', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'March - 2023', '2023-05-02 11:14:22', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1689, '31-Mar-2023', '8', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'March - 2023', '2023-05-02 11:14:22', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1690, '31-Mar-2023', '9', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'March - 2023', '2023-05-02 11:14:22', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1691, '31-Mar-2023', '10', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'March - 2023', '2023-05-02 11:14:22', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1692, '31-Mar-2023', '11', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'March - 2023', '2023-05-02 11:14:22', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1693, '31-Mar-2023', '14', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'March - 2023', '2023-05-02 11:14:22', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1694, '31-Mar-2023', '15', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'March - 2023', '2023-05-02 11:14:22', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1695, '31-Mar-2023', '16', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'March - 2023', '2023-05-02 11:14:22', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1696, '31-Mar-2023', '17', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'March - 2023', '2023-05-02 11:14:22', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1697, '31-Mar-2023', '18', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'March - 2023', '2023-05-02 11:14:22', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1698, '31-Mar-2023', '19', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'March - 2023', '2023-05-02 11:14:22', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1699, '31-Mar-2023', '20', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'March - 2023', '2023-05-02 11:14:22', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1700, '31-Mar-2023', '21', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'March - 2023', '2023-05-02 11:14:22', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1701, '31-Mar-2023', '22', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'March - 2023', '2023-05-02 11:14:22', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1702, '31-Mar-2023', '23', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'March - 2023', '2023-05-02 11:14:22', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1703, '31-Mar-2023', '24', 'Sam', '13:39', '21:08', '00:00', '7:29', '7:29', 'Absent', '', 'March - 2023', '2023-05-02 11:14:22', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1704, '31-Mar-2023', '26', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'March - 2023', '2023-05-02 11:14:22', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1705, '31-Mar-2023', '28', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'March - 2023', '2023-05-02 11:14:22', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1706, '31-Mar-2023', '30', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'March - 2023', '2023-05-02 11:14:22', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1707, '31-Mar-2023', '33', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'March - 2023', '2023-05-02 11:14:22', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1708, '31-Mar-2023', '34', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'March - 2023', '2023-05-02 11:14:22', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1709, '31-Mar-2023', '35', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'March - 2023', '2023-05-02 11:14:22', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1710, '31-Mar-2023', '36', 'GS', '', '', '00:00', '00:00', '00:00', 'Absent', '', 'March - 2023', '2023-05-02 11:14:22', 1, 0, NULL, NULL, NULL, NULL, NULL),
(1711, '31-Mar-2023', '', '', '', '', '', '', '', '', '', 'March - 2023', '2023-05-02 11:14:22', 1, 0, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_department_category`
--

CREATE TABLE `tbl_department_category` (
  `id` int NOT NULL,
  `department_name` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `department_status` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_department_category`
--

INSERT INTO `tbl_department_category` (`id`, `department_name`, `department_status`, `created_at`, `updated_at`) VALUES
(11, 'Management', 'Active', '2023-03-25 02:26:23', '2023-03-25 02:28:05'),
(12, 'Production', 'Active', '2023-03-25 02:26:37', '2023-03-25 02:28:11'),
(13, 'Sales', 'Active', '2023-03-25 02:26:45', '2023-04-04 04:42:30'),
(14, 'Finance', 'Active', '2023-03-25 02:26:54', '2023-04-06 05:56:09'),
(15, 'Human Resources', 'Active', '2023-03-25 02:27:08', '2023-03-25 02:27:58'),
(16, 'Administration', 'Active', '2023-03-25 02:27:20', '2023-04-10 09:08:31'),
(19, 'Business Development Manager  ', 'Active', '2023-04-10 11:58:19', NULL),
(20, 'Logistics ', 'Active', '2023-04-26 11:33:38', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_desigantion_category`
--

CREATE TABLE `tbl_desigantion_category` (
  `id` int NOT NULL,
  `designation_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `designation_status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_desigantion_category`
--

INSERT INTO `tbl_desigantion_category` (`id`, `designation_name`, `designation_status`, `created_at`, `updated_at`) VALUES
(10, 'Managing Director', 'Active', '2023-03-24 20:56:14', '2023-03-28 08:34:40'),
(11, 'Production Manager ', 'Active', '2023-03-24 20:56:27', '2023-03-25 13:26:27'),
(12, 'BDM', 'Active', '2023-03-24 20:57:19', '2023-09-15 10:08:21'),
(13, 'Accounts Manager', 'Active', '2023-03-24 20:57:31', '2023-03-25 13:27:31'),
(14, 'Production Supervisor', 'Active', '2023-03-24 20:57:42', '2023-03-25 13:27:42'),
(15, 'HR Manager', 'Active', '2023-03-24 20:57:52', '2023-03-25 13:27:52'),
(16, 'Warehouse & Logistics Operator', 'Active', '2023-03-24 20:58:05', '2023-04-04 04:42:56'),
(17, 'Machine Operator', 'Active', '2023-03-24 20:58:17', '2023-03-25 13:28:17'),
(18, 'General Administrator', 'Active', '2023-03-24 20:58:30', '2023-03-25 13:28:30'),
(20, 'Carpenter', 'Active', '2023-03-24 21:00:35', '2023-03-25 13:30:35'),
(21, 'Supply Chain Administrator', 'Active', '2023-03-24 21:00:48', '2023-03-25 13:30:48'),
(22, 'Quality and Machine Operator', 'Active', '2023-03-24 21:00:58', '2023-03-25 13:30:58'),
(23, 'Maintenance Engineer', 'Active', '2023-03-24 21:01:16', '2023-03-25 13:31:16'),
(24, 'Administrative Assistant', 'Active', '2023-03-24 21:01:36', '2023-03-28 08:35:30'),
(29, 'Finance Manager', 'Active', '2023-04-10 09:19:59', '2023-04-10 09:19:59'),
(30, 'logistics manager ', 'Active', '2023-04-26 11:34:20', '2023-04-26 11:34:20');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_employee_performance`
--

CREATE TABLE `tbl_employee_performance` (
  `id` int NOT NULL,
  `employee_id` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `date_of_review` date DEFAULT NULL,
  `review_period` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `line_manager` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `job_knowledge_rating` tinyint(1) DEFAULT NULL,
  `job_knowledge_comments` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `quality_rating` tinyint(1) DEFAULT NULL,
  `quality_rating_comments` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `attendance_punctuality_rating` tinyint(1) DEFAULT NULL,
  `attendance_punctuality_comments` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `takes_initiative_rating` tinyint(1) DEFAULT NULL,
  `takes_initiative_comments` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `communication_listening_rating` tinyint(1) DEFAULT NULL,
  `communication_listening_comments` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `dependability_rating` tinyint(1) DEFAULT NULL,
  `dependability_comments` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `overall_rating` float(5,2) DEFAULT NULL,
  `employee_status` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_employee_performance`
--

INSERT INTO `tbl_employee_performance` (`id`, `employee_id`, `date_of_review`, `review_period`, `line_manager`, `job_knowledge_rating`, `job_knowledge_comments`, `quality_rating`, `quality_rating_comments`, `attendance_punctuality_rating`, `attendance_punctuality_comments`, `takes_initiative_rating`, `takes_initiative_comments`, `communication_listening_rating`, `communication_listening_comments`, `dependability_rating`, `dependability_comments`, `overall_rating`, `employee_status`, `created_at`, `updated_at`) VALUES
(31, '11', '2023-04-17', '12', 'Ram', 4, '                     good                                                                                                              ', 5, 'good', 5, 'good', 4, 'good', 5, 'good', 5, 'good', 4.67, NULL, '2023-04-06 11:54:25.000000', '2023-04-06 01:42:07.000000'),
(32, '7', '2023-04-10', '3 months', 'ram', 2, '                                 vfdgd', 4, 'czfz', 4, 'cz', 4, '', 4, '', 4, '', 3.67, NULL, '2023-04-10 09:42:01.000000', NULL),
(33, '18', '2023-05-02', '1 year', 'sss', 5, '                                 ', 5, '', 4, '', 5, '', 5, '', 5, '', 4.83, NULL, '2023-05-02 11:43:25.000000', NULL),
(34, '11', '2023-05-02', '1 year', 'cloin', 5, '                                 ', 4, '', 5, '', 4, '', 4, '', 3, '', 4.17, NULL, '2023-05-02 12:17:57.000000', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_holidays`
--

CREATE TABLE `tbl_holidays` (
  `id` int NOT NULL,
  `holidays_name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `holidays_date` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `holidays_day` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `holiday_status` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_holidays`
--

INSERT INTO `tbl_holidays` (`id`, `holidays_name`, `holidays_date`, `holidays_day`, `holiday_status`, `created_at`, `updated_at`) VALUES
(12, 'Labour Day', '05/01/2023', 'Monday', 'Active', '2023-05-08 10:00:05.000000', '2023-05-09 10:43:27.000000'),
(13, 'Arafat day', '06/27/2023', 'Tuesday', 'Active', '2023-05-08 10:00:27.000000', '2023-05-09 10:44:02.000000'),
(14, 'Eid al Adha', '06/28/2023', 'Wednesday', 'Active', '2023-05-08 10:01:29.000000', '2023-05-09 10:43:40.000000'),
(15, 'National Day', '12/18/2023', 'Monday', 'Active', '2023-05-08 10:01:57.000000', '2023-05-09 10:43:19.000000'),
(16, 'New Year ', '01/01/2023', 'Sunday', 'Active', '2023-05-08 10:02:51.000000', '2023-05-09 10:43:12.000000'),
(17, 'Eid  Al Fitr', '04/21/2023', 'Friday', 'Active', '2023-05-08 10:04:15.000000', '2023-05-09 10:43:57.000000'),
(18, 'Islamic New Year', '07/19/2023', 'Wednesday', 'Active', '2023-05-08 10:04:54.000000', '2023-05-09 10:43:33.000000'),
(20, 'personal', '12/09/2023', 'Saturday', 'Active', '2023-12-09 12:12:24.000000', '2023-12-09 12:12:36.000000');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_leave_request_master`
--

CREATE TABLE `tbl_leave_request_master` (
  `id` int NOT NULL,
  `request_emp_id` int DEFAULT NULL,
  `request_leave_category` int DEFAULT NULL,
  `request_leave_type` int DEFAULT NULL COMMENT '1 - Single , 2 - Multiple',
  `request_start_date` date DEFAULT NULL,
  `request_end_date` date DEFAULT NULL,
  `request_reason` text,
  `request_attachment` varchar(250) DEFAULT NULL,
  `request_created_by` int DEFAULT NULL,
  `request_status` int NOT NULL COMMENT '0 - No , 1 - Approve , 2 - Reject',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `tbl_leave_request_master`
--

INSERT INTO `tbl_leave_request_master` (`id`, `request_emp_id`, `request_leave_category`, `request_leave_type`, `request_start_date`, `request_end_date`, `request_reason`, `request_attachment`, `request_created_by`, `request_status`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, '2023-03-27', '2023-03-28', 'sick', NULL, 1, 0, '2023-03-27 03:02:39', NULL),
(2, 1, 1, 1, '2023-03-29', '2023-03-30', 'fwet', NULL, 1, 0, '2023-03-28 07:55:43', NULL),
(3, 6, 1, 2, '2023-03-29', '2023-03-30', '', NULL, 1, 1, '2023-03-29 10:28:06', '2023-04-04 11:27:47'),
(4, 6, 1, 1, '2023-04-03', '2023-04-03', 'developer tester', NULL, 1, 2, '2023-04-03 11:07:58', NULL),
(5, 6, 5, 1, '2023-04-10', '2023-04-10', 'testr', NULL, 1, 2, '2023-04-10 09:31:24', NULL),
(6, 6, 2, 1, '2023-04-10', '2023-04-10', 'ff', NULL, 1, 2, '2023-04-10 09:31:55', NULL),
(7, 8, 2, 1, '2023-05-02', '2023-05-04', '', NULL, 6, 1, '2023-05-01 06:44:57', NULL),
(8, 6, 1, 1, '2023-05-05', '2023-05-06', 'o9p', NULL, 1, 1, '2023-05-04 02:04:41', NULL),
(9, 8, 1, 1, '2023-11-01', '2023-11-02', 'tfgu', NULL, 1, 1, '2023-11-01 11:28:53', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_menu`
--

CREATE TABLE `tbl_menu` (
  `id` int NOT NULL,
  `menu_name` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `menu_order` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_menu`
--

INSERT INTO `tbl_menu` (`id`, `menu_name`, `menu_order`) VALUES
(1, 'HR', 1),
(2, 'Configuration', 2),
(3, 'Finance', 3),
(4, 'Bank Reconcilliation', 4),
(5, 'Inventory Master', 5),
(6, 'Aging Schedule', 6),
(7, 'Purchase', 7),
(8, 'Sales', 8),
(9, 'Reports', 9),
(10, 'CRM', 10),
(11, 'Users', 11);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_salary_deductions`
--

CREATE TABLE `tbl_salary_deductions` (
  `id` int NOT NULL,
  `deductions_name` varchar(250) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `deductions_percent` varchar(150) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `deductions_status` varchar(250) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_salary_deductions`
--

INSERT INTO `tbl_salary_deductions` (`id`, `deductions_name`, `deductions_percent`, `deductions_status`, `created_at`, `updated_at`) VALUES
(1, 'Visa', '2.5', 'Active', '2023-03-28 07:49:55', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_salary_details`
--

CREATE TABLE `tbl_salary_details` (
  `id` int NOT NULL,
  `slip_id` int DEFAULT NULL,
  `details_name` varchar(250) DEFAULT NULL,
  `details_amount` int DEFAULT NULL,
  `details_type` int DEFAULT NULL COMMENT '1 - Earnings , 2 - Deductions , 3 - Loan'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `tbl_salary_details`
--

INSERT INTO `tbl_salary_details` (`id`, `slip_id`, `details_name`, `details_amount`, `details_type`) VALUES
(1, 1, 'HRA', 6, 1),
(2, 1, 'Transport', 8, 1),
(3, 1, 'Visa', 8, 2),
(4, 2, 'HRA', 0, 1),
(5, 2, 'Transport', 0, 1),
(6, 2, 'Visa', 0, 2),
(7, 3, 'HRA', 0, 1),
(8, 3, 'Transport', 0, 1),
(9, 3, 'Visa', 0, 2);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_salary_earninings`
--

CREATE TABLE `tbl_salary_earninings` (
  `id` int NOT NULL,
  `earninings_name` varchar(250) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `earninings_percent` varchar(150) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `earninings_status` varchar(250) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_salary_earninings`
--

INSERT INTO `tbl_salary_earninings` (`id`, `earninings_name`, `earninings_percent`, `earninings_status`, `created_at`, `updated_at`) VALUES
(1, 'HRA', '2', 'Active', '2023-03-23 10:16:24', NULL),
(2, 'Transport', '2.5', 'Active', '2023-03-28 07:48:54', '2023-04-03 11:04:36');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_salary_settings`
--

CREATE TABLE `tbl_salary_settings` (
  `id` int NOT NULL,
  `percentage_hra` double DEFAULT NULL,
  `percentage_transport` double DEFAULT NULL,
  `percentage_other_allowance` double DEFAULT NULL,
  `percentage_others` double DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_salary_settings`
--

INSERT INTO `tbl_salary_settings` (`id`, `percentage_hra`, `percentage_transport`, `percentage_other_allowance`, `percentage_others`, `updated_at`) VALUES
(1, 123, NULL, NULL, 132, '2023-03-21 09:59:32');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_salary_slip`
--

CREATE TABLE `tbl_salary_slip` (
  `id` int NOT NULL,
  `slip_emp_id` int DEFAULT NULL,
  `slip_month` varchar(250) DEFAULT NULL,
  `slip_earnings` int DEFAULT NULL,
  `slip_deductions` int DEFAULT NULL,
  `slip_net_pay` int DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `tbl_salary_slip`
--

INSERT INTO `tbl_salary_slip` (`id`, `slip_emp_id`, `slip_month`, `slip_earnings`, `slip_deductions`, `slip_net_pay`, `created_at`, `created_by`, `updated_at`, `updated_by`) VALUES
(1, 18, 'March - 2023', 14, 8, 6, '2023-05-11 11:27:27', 1, NULL, NULL),
(2, 17, 'March - 2023', 0, 0, 0, '2023-05-11 11:27:39', 1, NULL, NULL),
(3, 17, 'February - 2023', 0, 0, 0, '2023-11-08 10:26:30', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_shift_timing_master`
--

CREATE TABLE `tbl_shift_timing_master` (
  `id` int NOT NULL,
  `shift_name` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `shift_in_time` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `shift_out_time` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `shift_status` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_shift_timing_master`
--

INSERT INTO `tbl_shift_timing_master` (`id`, `shift_name`, `shift_in_time`, `shift_out_time`, `shift_status`, `created_at`, `updated_at`) VALUES
(3, 'GS', '08:00', '18:00', 'Active', '2023-03-28 07:50:52.000000', NULL),
(4, 'First Shift Timmings', '09:00', '06:30', 'Active', '2023-04-01 01:14:13.000000', '2023-04-04 04:47:26.000000'),
(5, 'shistrsor', '09:00', '06:00', 'Active', '2023-04-01 01:14:50.000000', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user_account_type`
--

CREATE TABLE `tbl_user_account_type` (
  `id` int NOT NULL,
  `account_name` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `account_status` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `account_permission` int DEFAULT NULL COMMENT '1 - Yes , 0 - No',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_user_account_type`
--

INSERT INTO `tbl_user_account_type` (`id`, `account_name`, `account_status`, `account_permission`, `created_at`, `updated_at`) VALUES
(4, 'Line Manager', 'Active', 1, '2023-03-28 07:52:29', '2023-04-13 06:44:56'),
(5, 'HR', 'Active', 1, '2023-03-28 07:52:39', '2023-03-30 04:57:47'),
(6, 'Alpha Tester', 'Active', 1, '2023-03-31 11:30:32', '2023-05-02 11:42:07');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_vat_master`
--

CREATE TABLE `tbl_vat_master` (
  `id` int NOT NULL,
  `vat_code` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `description` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `percentage` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `vat_status` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_vat_master`
--

INSERT INTO `tbl_vat_master` (`id`, `vat_code`, `description`, `percentage`, `vat_status`, `created_at`, `updated_at`) VALUES
(5, '001', 'value added', '4', 'Active', '2023-05-02 12:26:44.000000', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int NOT NULL,
  `username` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `firstname` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `lastname` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `mobile` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `landline` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `permission` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1 - Active , 0 -Inactive',
  `user_admin` int DEFAULT NULL COMMENT '1 - Yes , 0 - No',
  `user_role` int DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `username`, `password`, `firstname`, `lastname`, `email`, `mobile`, `landline`, `permission`, `status`, `user_admin`, `user_role`, `created_by`, `created_at`, `updated_by`, `updated_at`) VALUES
(1, 'admin', '$2y$10$XTtBOzTd0G9qAPW3ywK0PuR3x4nD./DCcUXB46xJXp1Bb1D5SOSFq', 'admin', 'admin', 'admin@mail.com', NULL, NULL, NULL, 1, 1, 0, NULL, NULL, NULL, NULL),
(2, 'ram', '$2y$10$7KZlRnlh4zQjhhhMPSfo3.iE2YKYQbfZ4YB2Co69E2vqXDI/2nTde', 'Ram', 'Kumar', 'ram4uever24@gmail.com', '7708813913', '044255565566', '[\"Purchase Invoice\",\"Purchase Invoice\",\"Purchase Invoice\"]', 1, NULL, NULL, NULL, NULL, NULL, NULL),
(3, 'sulaiman', '$2y$10$Z0TLqzpjDP1Tx8J3DPFbdeOhVDUSQ5KpnJSPDY23AuEQnWRWaBT8q', 'Sulaiman', 'S', 'sulaiman@addobyte.com', '8877998899', NULL, '[\"Company/company_master\",\"Company/company_master_edit\",\"Company/company_list\"]', 1, NULL, NULL, NULL, NULL, NULL, NULL),
(4, 'raj', '$2y$10$hYh1mrqbek2Pf6xewkQJ8ujgbAcRsDMNBGt/7NGvrODFjnoQJOD3G', 'Joe', 'Smith', 'sirs.rajasekar@gmail.com', '9080914005', NULL, NULL, 1, NULL, 5, NULL, '2023-03-29 12:54:47', NULL, NULL),
(5, 'alphauser', '$2y$10$Kbp7pWUkqaSTs6iqtCjntOnnNuyE6KHkcHf4q6na1zvGEtWtZRfBi', 'Alpha', 'User', 'alphauser@gmail.com', '898989898989898', NULL, NULL, 1, NULL, 5, NULL, '2023-04-03 11:05:30', NULL, NULL),
(6, 'arun', '$2y$10$dhNqkWzN568nmQdkEYUaiufWE9efYXrq4GTSEDvnBG.YMbq9Ch1fS', 'arun', 'kumar', 'arun@gmail.com', '9875641230', NULL, NULL, 1, NULL, 6, NULL, '2023-04-04 10:30:55', NULL, NULL),
(7, 'ramkumar', '$2y$10$40vWBx.xXgWNDbntHygEa.BuJ/em6GqRzfiUt/nqzSwMTV30djhwu', 'Ram', 'ram', 'ram4uever25@gmail.com', '7708813914', NULL, NULL, 1, 0, 6, NULL, '2023-04-05 08:40:16', NULL, '2023-04-06 05:47:37'),
(8, 'Colin Locke', '$2y$10$YAlRkyRMHqjFKOWNlc/OPuvTpOZ6KkxxErmj0oaUFOveO6kJPx6qO', 'Colin ', 'Locke', 'ColinLocke45@gmail.com', '973454575', NULL, NULL, 1, 0, 6, NULL, '2023-04-06 05:29:47', NULL, NULL),
(9, 'fyjfyj', '$2y$10$7m1PsYduv4B2KbNmNEqDauhrNAyd08BZm6jJNx.YUUTnWSwuqouY6', 'fyuhrftu', 'fhuftuj', 'fgfy@gmail', '156456', NULL, NULL, 1, 0, 6, NULL, '2023-04-06 06:06:53', NULL, '2023-04-06 01:32:20');

-- --------------------------------------------------------

--
-- Table structure for table `user_role`
--

CREATE TABLE `user_role` (
  `id` int NOT NULL,
  `user_id` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `menu_id` int DEFAULT NULL,
  `menu_name` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `menu_permission_add` int DEFAULT NULL COMMENT '0-no\r\n1-yes',
  `menu_permission_edit` int DEFAULT NULL COMMENT '0-no\r\n1-yes',
  `menu_permission_delete` int DEFAULT NULL COMMENT '0-no\r\n1-yes',
  `menu_permission_view` int DEFAULT NULL COMMENT '0-no\r\n1-yes',
  `menu_permission_download` int DEFAULT NULL COMMENT '0-no\r\n1-yes',
  `created_at` tinyint DEFAULT NULL,
  `created_by` tinyint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_role`
--

INSERT INTO `user_role` (`id`, `user_id`, `menu_id`, `menu_name`, `menu_permission_add`, `menu_permission_edit`, `menu_permission_delete`, `menu_permission_view`, `menu_permission_download`, `created_at`, `created_by`) VALUES
(1, '5', NULL, 'HR', 1, 1, 1, 1, 1, NULL, NULL),
(2, '5', NULL, 'Configuration', 0, 0, 0, 0, 0, NULL, NULL),
(3, '5', NULL, 'Finance', 0, 0, 0, 0, 0, NULL, NULL),
(4, '5', NULL, 'Bank Reconcilliation', 0, 0, 1, 0, 0, NULL, NULL),
(5, '5', NULL, 'Inventory Master', 0, 0, 1, 0, 0, NULL, NULL),
(6, '5', NULL, 'Aging Schedule', 0, 1, 0, 0, 0, NULL, NULL),
(7, '5', NULL, 'Purchase', 0, 0, 1, 0, 0, NULL, NULL),
(8, '5', NULL, 'Sales', 0, 0, 0, 0, 1, NULL, NULL),
(9, '5', NULL, 'Reports', 0, 0, 0, 0, 0, NULL, NULL),
(10, '5', NULL, 'Logistics', 1, 0, 0, 0, 0, NULL, NULL),
(11, '5', NULL, 'Users Access', 0, 0, 0, 0, 0, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `company`
--
ALTER TABLE `company`
  ADD PRIMARY KEY (`company_id`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`employee_id`);

--
-- Indexes for table `employee_certificate`
--
ALTER TABLE `employee_certificate`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `loan_master`
--
ALTER TABLE `loan_master`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `loan_payment_history`
--
ALTER TABLE `loan_payment_history`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_attendance_leave_category`
--
ALTER TABLE `tbl_attendance_leave_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_attendance_master`
--
ALTER TABLE `tbl_attendance_master`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_department_category`
--
ALTER TABLE `tbl_department_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_desigantion_category`
--
ALTER TABLE `tbl_desigantion_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_employee_performance`
--
ALTER TABLE `tbl_employee_performance`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_holidays`
--
ALTER TABLE `tbl_holidays`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_leave_request_master`
--
ALTER TABLE `tbl_leave_request_master`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_menu`
--
ALTER TABLE `tbl_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_salary_deductions`
--
ALTER TABLE `tbl_salary_deductions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_salary_details`
--
ALTER TABLE `tbl_salary_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_salary_earninings`
--
ALTER TABLE `tbl_salary_earninings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_salary_settings`
--
ALTER TABLE `tbl_salary_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_salary_slip`
--
ALTER TABLE `tbl_salary_slip`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_shift_timing_master`
--
ALTER TABLE `tbl_shift_timing_master`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_user_account_type`
--
ALTER TABLE `tbl_user_account_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_vat_master`
--
ALTER TABLE `tbl_vat_master`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `user_role`
--
ALTER TABLE `user_role`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `company`
--
ALTER TABLE `company`
  MODIFY `company_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `employee_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `employee_certificate`
--
ALTER TABLE `employee_certificate`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `loan_master`
--
ALTER TABLE `loan_master`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `loan_payment_history`
--
ALTER TABLE `loan_payment_history`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_attendance_leave_category`
--
ALTER TABLE `tbl_attendance_leave_category`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tbl_attendance_master`
--
ALTER TABLE `tbl_attendance_master`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1712;

--
-- AUTO_INCREMENT for table `tbl_department_category`
--
ALTER TABLE `tbl_department_category`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `tbl_desigantion_category`
--
ALTER TABLE `tbl_desigantion_category`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `tbl_employee_performance`
--
ALTER TABLE `tbl_employee_performance`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `tbl_holidays`
--
ALTER TABLE `tbl_holidays`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `tbl_leave_request_master`
--
ALTER TABLE `tbl_leave_request_master`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tbl_menu`
--
ALTER TABLE `tbl_menu`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tbl_salary_deductions`
--
ALTER TABLE `tbl_salary_deductions`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_salary_details`
--
ALTER TABLE `tbl_salary_details`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tbl_salary_earninings`
--
ALTER TABLE `tbl_salary_earninings`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_salary_settings`
--
ALTER TABLE `tbl_salary_settings`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_salary_slip`
--
ALTER TABLE `tbl_salary_slip`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_shift_timing_master`
--
ALTER TABLE `tbl_shift_timing_master`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_user_account_type`
--
ALTER TABLE `tbl_user_account_type`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_vat_master`
--
ALTER TABLE `tbl_vat_master`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `user_role`
--
ALTER TABLE `user_role`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
