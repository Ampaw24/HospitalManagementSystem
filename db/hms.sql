-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 05, 2023 at 02:13 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hms`
--

-- --------------------------------------------------------

--
-- Table structure for table `accountant_log`
--

CREATE TABLE `accountant_log` (
  `id` int(10) NOT NULL,
  `user_mail` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `name` varchar(200) NOT NULL,
  `contact` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `accountant_log`
--

INSERT INTO `accountant_log` (`id`, `user_mail`, `password`, `name`, `contact`) VALUES
(1, 'safo@vicmail.com', '14213121', 'Ampaw Safo', '054433221');

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `updationDate` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `updationDate`) VALUES
(1, 'admin01', 'admin1421', '30-10-2022 11:42:05 AM');

-- --------------------------------------------------------

--
-- Table structure for table `allocatebed`
--

CREATE TABLE `allocatebed` (
  `id` int(11) NOT NULL,
  `AssignedPatient` varchar(200) NOT NULL,
  `bednumber` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `allocatebed`
--

INSERT INTO `allocatebed` (`id`, `AssignedPatient`, `bednumber`) VALUES
(1, 'Emmanuel Tagoe', 'Bed012'),
(2, 'Emmanuel Tagoe', 'Bed012'),
(3, 'Emmanuel Addo Nelson', 'Bed0100');

-- --------------------------------------------------------

--
-- Table structure for table `appointment`
--

CREATE TABLE `appointment` (
  `id` int(11) NOT NULL,
  `doctorSpecialization` varchar(255) DEFAULT NULL,
  `doctorId` int(11) DEFAULT NULL,
  `userId` int(11) DEFAULT NULL,
  `consultancyFees` int(11) DEFAULT NULL,
  `appointmentDate` varchar(255) DEFAULT NULL,
  `appointmentTime` varchar(255) DEFAULT NULL,
  `postingDate` timestamp NULL DEFAULT current_timestamp(),
  `userStatus` int(11) DEFAULT NULL,
  `doctorStatus` int(11) DEFAULT NULL,
  `updationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `appointment`
--

INSERT INTO `appointment` (`id`, `doctorSpecialization`, `doctorId`, `userId`, `consultancyFees`, `appointmentDate`, `appointmentTime`, `postingDate`, `userStatus`, `doctorStatus`, `updationDate`) VALUES
(1, 'ENT', 1, 1, 500, '2022-11-10', '12:45 PM', '2022-11-06 12:21:48', 1, 0, '2022-11-06 12:23:35'),
(2, 'ENT', 1, 2, 500, '2022-11-17', '7:00 PM', '2022-11-06 13:16:18', 1, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `currency`
--

CREATE TABLE `currency` (
  `id` int(10) NOT NULL,
  `name` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `currency`
--

INSERT INTO `currency` (`id`, `name`) VALUES
(1, 'USD'),
(2, 'GHC'),
(3, 'YRN'),
(4, 'DOLLAR');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `ID` int(11) NOT NULL,
  `NAME` varchar(20) NOT NULL,
  `CONTACT_NUMBER` varchar(10) NOT NULL,
  `ADDRESS` varchar(100) NOT NULL,
  `DOCTOR_NAME` varchar(20) NOT NULL,
  `DOCTOR_ADDRESS` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_bin;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`ID`, `NAME`, `CONTACT_NUMBER`, `ADDRESS`, `DOCTOR_NAME`, `DOCTOR_ADDRESS`) VALUES
(4, 'Kiran Suthar', '1234567690', 'Andheri East', 'Anshari', 'Andheri East'),
(6, 'Aditya', '7365687269', 'Virar West', 'Xyz', 'Virar West'),
(11, 'Shivam Tiwari', '6862369896', 'Dadar West', 'Dr Kapoor', 'Dadar East'),
(13, 'Varsha Suthar', '7622369694', 'Rani Station', 'Dr Ramesh', 'Rani Station'),
(14, 'Prakash Bhattarai', '9802851472', 'Pokhara-16, Dhikidada', 'Hari Bahadur', 'Matepani-12');

-- --------------------------------------------------------

--
-- Table structure for table `doctors`
--

CREATE TABLE `doctors` (
  `id` int(11) NOT NULL,
  `specilization` varchar(255) DEFAULT NULL,
  `doctorName` varchar(255) DEFAULT NULL,
  `address` longtext DEFAULT NULL,
  `docFees` varchar(255) DEFAULT NULL,
  `contactno` bigint(11) DEFAULT NULL,
  `docEmail` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `doctors`
--

INSERT INTO `doctors` (`id`, `specilization`, `doctorName`, `address`, `docFees`, `contactno`, `docEmail`, `password`, `creationDate`, `updationDate`) VALUES
(4, 'Radiology', 'Emmanuel Frachise', 'Tema', '$500', 54809887, 'emmanuelfran@vickmail.com', 'c8dad6b5e6568112e4851c8a5c0a83dd', '2023-08-26 13:28:03', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `doctorslog`
--

CREATE TABLE `doctorslog` (
  `id` int(11) NOT NULL,
  `uid` int(11) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `userip` binary(16) DEFAULT NULL,
  `loginTime` timestamp NULL DEFAULT current_timestamp(),
  `logout` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `doctorslog`
--

INSERT INTO `doctorslog` (`id`, `uid`, `username`, `userip`, `loginTime`, `logout`, `status`) VALUES
(20, NULL, 'gfdgdf', 0x3a3a3100000000000000000000000000, '2022-11-04 01:02:16', NULL, 0),
(21, 2, 'charudua12@test.com', 0x3a3a3100000000000000000000000000, '2022-11-06 11:59:40', '06-11-2022 05:35:18 PM', 1),
(22, 2, 'charudua12@test.com', 0x3a3a3100000000000000000000000000, '2022-11-06 12:06:37', '06-11-2022 05:36:40 PM', 1),
(23, 2, 'charudua12@test.com', 0x3a3a3100000000000000000000000000, '2022-11-06 12:08:56', '06-11-2022 05:42:53 PM', 1),
(24, 1, 'anujk123@test.com', 0x3a3a3100000000000000000000000000, '2022-11-06 12:23:18', '06-11-2022 05:53:40 PM', 1),
(25, 2, 'charudua12@test.com', 0x3a3a3100000000000000000000000000, '2022-11-06 13:16:53', '01-09-2023 02:49:33 PM', 1),
(26, 1, 'anujk123@test.com', 0x3a3a3100000000000000000000000000, '2022-11-06 13:17:33', '05-09-2023 03:45:00 AM', 1),
(27, NULL, 'admin01', 0x3132372e302e302e3100000000000000, '2023-08-17 19:40:32', NULL, 0),
(28, 4, 'emmanuelfran@vickmail.com', 0x3132372e302e302e3100000000000000, '2023-08-26 13:40:56', NULL, 1),
(29, NULL, 'ght@gmailcom', 0x3132372e302e302e3100000000000000, '2023-08-27 00:27:09', NULL, 0),
(30, NULL, 'jess@vicmail,com', 0x3132372e302e302e3100000000000000, '2023-08-27 00:27:36', NULL, 0),
(31, 4, 'emmanuelfran@vickmail.com', 0x3132372e302e302e3100000000000000, '2023-08-29 13:37:06', '29-08-2023 07:09:23 PM', 1),
(32, NULL, 'ght@gmailcom', 0x3132372e302e302e3100000000000000, '2023-08-29 19:28:29', NULL, 0),
(33, 4, 'emmanuelfran@vickmail.com', 0x3132372e302e302e3100000000000000, '2023-08-29 19:28:37', NULL, 1),
(34, 4, 'emmanuelfran@vickmail.com', 0x3132372e302e302e3100000000000000, '2023-08-31 22:56:39', '01-09-2023 05:05:35 AM', 1),
(35, 4, 'emmanuelfran@vickmail.com', 0x3132372e302e302e3100000000000000, '2023-09-01 08:28:55', '05-09-2023 05:11:49 AM', 1),
(36, NULL, 'emmanuelfran@vickmail.com', 0x3132372e302e302e3100000000000000, '2023-09-04 21:43:36', NULL, 0),
(37, NULL, 'admin01', 0x3132372e302e302e3100000000000000, '2023-09-04 21:43:46', NULL, 0),
(38, NULL, 'safo@vicmail.com', 0x3132372e302e302e3100000000000000, '2023-09-04 22:17:19', NULL, 0),
(39, NULL, 'safo@vicmail.com', 0x3132372e302e302e3100000000000000, '2023-09-04 22:21:08', NULL, 0),
(40, NULL, 'emmanuelfran@vickmail.com', 0x3132372e302e302e3100000000000000, '2023-09-04 22:21:23', NULL, 0),
(41, NULL, 'fermin24@gmail.com', 0x3132372e302e302e3100000000000000, '2023-09-04 22:21:34', NULL, 0),
(42, NULL, 'safo@vicmail.com', 0x3132372e302e302e3100000000000000, '2023-09-04 22:22:02', NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `doctorspecilization`
--

CREATE TABLE `doctorspecilization` (
  `id` int(11) NOT NULL,
  `specilization` varchar(255) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `doctorspecilization`
--

INSERT INTO `doctorspecilization` (`id`, `specilization`, `creationDate`, `updationDate`) VALUES
(1, 'Orthopedics', '2022-10-30 18:09:46', NULL),
(2, 'Internal Medicine', '2022-10-30 18:09:57', NULL),
(3, 'Obstetrics and Gynecology', '2022-10-30 18:10:18', NULL),
(4, 'Dermatology', '2022-10-30 18:10:28', NULL),
(5, 'Pediatrics', '2022-10-30 18:10:37', NULL),
(6, 'Radiology', '2022-10-30 18:10:46', NULL),
(7, 'General Surgery', '2022-10-30 18:10:56', NULL),
(8, 'Ophthalmology', '2022-10-30 18:11:03', NULL),
(9, 'Anesthesia', '2022-10-30 18:11:15', NULL),
(10, 'Pathology', '2022-10-30 18:11:22', NULL),
(11, 'ENT', '2022-10-30 18:11:30', NULL),
(12, 'Dental Care', '2022-10-30 18:11:39', NULL),
(13, 'Dermatologists', '2022-10-30 18:12:02', NULL),
(14, 'Endocrinologists', '2022-10-30 18:12:10', NULL),
(15, 'Neurologists', '2022-10-30 18:12:30', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `drug_prescribtion`
--

CREATE TABLE `drug_prescribtion` (
  `id` int(10) NOT NULL,
  `patient_doctor` varchar(200) NOT NULL,
  `patient_name` varchar(200) NOT NULL,
  `patient_health` varchar(200) NOT NULL,
  `drug1` varchar(200) NOT NULL,
  `date_presc` date NOT NULL,
  `patient_mail` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `drug_prescribtion`
--

INSERT INTO `drug_prescribtion` (`id`, `patient_doctor`, `patient_name`, `patient_health`, `drug1`, `date_presc`, `patient_mail`) VALUES
(3, 'Emmanuel Frachise', 'Asiedu Nketiah', 'Feveer', 'Fresmodial Colian', '2023-09-01', 'nketiandc@gmail.com'),
(4, 'Emmanuel Pharmsc', 'Josped Lopex', 'Malaria', 'Lufax', '2023-09-12', 'lopex@vicmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `hospitalbed`
--

CREATE TABLE `hospitalbed` (
  `id` int(11) NOT NULL,
  `Bedid` int(100) NOT NULL,
  `bednumber` varchar(200) NOT NULL,
  `roomLocation` varchar(200) NOT NULL,
  `allocated` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `hospitalbed`
--

INSERT INTO `hospitalbed` (`id`, `Bedid`, `bednumber`, `roomLocation`, `allocated`) VALUES
(3, 0, 'Bed012', 'GeneralPatientRoom1', ''),
(4, 0, 'Bed0100', 'GeneralPatientRoom2', ''),
(7, 0, 'bed419', 'GeneralPatientRoom2', '');

-- --------------------------------------------------------

--
-- Table structure for table `invoices`
--

CREATE TABLE `invoices` (
  `INVOICE_ID` int(11) NOT NULL,
  `PAYMENTMETHOD` varchar(100) NOT NULL DEFAULT
) ;

-- --------------------------------------------------------

--
-- Table structure for table `medicines`
--

CREATE TABLE `medicines` (
  `ID` int(11) NOT NULL,
  `NAME` varchar(100) NOT NULL,
  `PACKING` varchar(20) NOT NULL,
  `GENERIC_NAME` varchar(100) NOT NULL,
  `SUPPLIER_NAME` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_bin;

--
-- Dumping data for table `medicines`
--

INSERT INTO `medicines` (`ID`, `NAME`, `PACKING`, `GENERIC_NAME`, `SUPPLIER_NAME`) VALUES
(1, 'Nicip Plus', '10tab', 'Paracetamole', 'BDPL PHARMA'),
(2, 'Crosin', '10tab', 'Hdsgvkvajkcbja', 'Kiran Pharma'),
(4, 'Dolo 650', '15tab', 'paracetamole', 'BDPL PHARMA'),
(5, 'Gelusil', '10tab', 'mint fla', 'Desai Pharma'),
(6, 'Paraaa', 'wrrseses3', 'hfhfhfhfh', 'SS Distributors'),
(7, 'Rooter Mixture', '100', 'Rooter Mix', 'BDPL PHARMA');

-- --------------------------------------------------------

--
-- Table structure for table `medicines_stock`
--

CREATE TABLE `medicines_stock` (
  `ID` int(11) NOT NULL,
  `NAME` varchar(100) NOT NULL,
  `BATCH_ID` varchar(20) NOT NULL,
  `EXPIRY_DATE` varchar(10) NOT NULL,
  `QUANTITY` int(11) NOT NULL,
  `MRP` double NOT NULL,
  `RATE` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_bin;

--
-- Dumping data for table `medicines_stock`
--

INSERT INTO `medicines_stock` (`ID`, `NAME`, `BATCH_ID`, `EXPIRY_DATE`, `QUANTITY`, `MRP`, `RATE`) VALUES
(1, 'Crosin', 'CROS12', '12/34', 2, 2626, 26),
(2, 'Gelusil', 'G327', '12/42', 0, 15, 12),
(3, 'Dolo 650', 'DOLO327', '01/23', 3, 30, 24),
(4, 'Nicip Plus', 'NI325', '05/22', 3, 32.65, 28);

-- --------------------------------------------------------

--
-- Table structure for table `mop`
--

CREATE TABLE `mop` (
  `id` int(10) NOT NULL,
  `mo` varchar(199) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `mop`
--

INSERT INTO `mop` (`id`, `mo`) VALUES
(1, 'Mobile Money'),
(2, 'Paypal'),
(3, 'Bank Cheque');

-- --------------------------------------------------------

--
-- Table structure for table `nurses`
--

CREATE TABLE `nurses` (
  `id` int(10) NOT NULL,
  `nursename` varchar(100) NOT NULL,
  `contact` varchar(20) NOT NULL,
  `nursemail` varchar(100) NOT NULL,
  `specialization` varchar(100) NOT NULL,
  `password` varchar(200) NOT NULL,
  `address` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `nurses`
--

INSERT INTO `nurses` (`id`, `nursename`, `contact`, `nursemail`, `specialization`, `password`, `address`) VALUES
(1, 'Empathy', '0433255', 'ass@mail.com', 'FoodSience', 'eeeeeeeeeeee', 'eeeeeeeeeeeee'),
(2, 'Danitali', '099233', 'remont@vicmail.com', 'Pathology', '9aa42b31882ec039965f3c4923ce901b', ''),
(3, 'Jessica', '+233 419 2334', 'jess@vicmail.com', 'Pathology', 'c8dad6b5e6568112e4851c8a5c0a83dd', ''),
(4, 'Miriam', '023444555', 'miriam@vickmail.com', 'Pathology', 'c8dad6b5e6568112e4851c8a5c0a83dd', ''),
(5, 'nurse1', '0548665', 'nurse1@vicmail.com', 'Pathology', 'c8dad6b5e6568112e4851c8a5c0a83dd', '');

-- --------------------------------------------------------

--
-- Table structure for table `nurseslog`
--

CREATE TABLE `nurseslog` (
  `id` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `userip` binary(255) NOT NULL,
  `username` varchar(100) NOT NULL,
  `logintime` timestamp(5) NOT NULL DEFAULT current_timestamp(5) ON UPDATE current_timestamp(5),
  `logout` varchar(100) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `nurseslog`
--

INSERT INTO `nurseslog` (`id`, `uid`, `userip`, `username`, `logintime`, `logout`, `status`) VALUES
(1, 3, 0x3132372e302e302e31000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, 'jess@vicmail.com', '2023-08-26 21:48:37.95058', '', 1),
(2, 3, 0x3132372e302e302e31000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, 'jess@vicmail.com', '2023-08-26 22:04:33.87533', '', 1),
(3, 3, 0x3132372e302e302e31000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, 'jess@vicmail.com', '2023-08-27 00:28:51.66360', '', 1),
(4, 3, 0x3132372e302e302e31000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, 'jess@vicmail.com', '2023-08-27 10:41:33.92591', '', 1),
(5, 3, 0x3132372e302e302e31000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, 'jess@vicmail.com', '2023-08-27 11:03:05.50649', '', 1),
(6, 3, 0x3132372e302e302e31000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, 'jess@vicmail.com', '2023-08-27 11:07:42.08739', '', 1),
(7, 3, 0x3132372e302e302e31000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, 'jess@vicmail.com', '2023-08-29 13:36:12.75145', '', 1),
(8, 3, 0x3132372e302e302e31000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, 'jess@vicmail.com', '2023-08-29 13:39:47.69887', '', 1),
(9, 3, 0x3132372e302e302e31000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, 'jess@vicmail.com', '2023-08-29 18:41:42.83684', '', 1),
(10, 3, 0x3132372e302e302e31000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, 'jess@vicmail.com', '2023-09-04 21:44:33.43015', '', 1),
(11, 4, 0x3132372e302e302e31000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, 'miriam@vickmail.com', '2023-09-04 22:30:23.21801', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `pharm_admin`
--

CREATE TABLE `pharm_admin` (
  `id` int(10) NOT NULL,
  `pharm_mail` varchar(100) NOT NULL,
  `password` varchar(50) NOT NULL,
  `pharmaname` varchar(100) NOT NULL,
  `contact` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_bin;

--
-- Dumping data for table `pharm_admin`
--

INSERT INTO `pharm_admin` (`id`, `pharm_mail`, `password`, `pharmaname`, `contact`) VALUES
(2, 'fermin24@gmail.com', 'c8dad6b5e6568112e4851c8a5c0a83dd', 'Fermine Lopez', '0443322');

-- --------------------------------------------------------

--
-- Table structure for table `purchases`
--

CREATE TABLE `purchases` (
  `SUPPLIER_NAME` varchar(100) NOT NULL,
  `INVOICE_NUMBER` int(11) NOT NULL,
  `VOUCHER_NUMBER` int(11) NOT NULL,
  `PURCHASE_DATE` varchar(10) NOT NULL,
  `TOTAL_AMOUNT` double NOT NULL,
  `PAYMENT_STATUS` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_bin;

-- --------------------------------------------------------

--
-- Table structure for table `rooms`
--

CREATE TABLE `rooms` (
  `id` int(11) NOT NULL,
  `roomid` varchar(200) NOT NULL,
  `capacity` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `rooms`
--

INSERT INTO `rooms` (`id`, `roomid`, `capacity`) VALUES
(1, 'GeneralPatientRoom1', 50),
(2, 'GeneralPatientRoom2', 50),
(3, 'GeneralPatientRoom3', 40),
(4, 'GeneralPatientRoom5', 40),
(5, 'RMICU1', 10),
(6, 'RMICU2', 20);

-- --------------------------------------------------------

--
-- Table structure for table `suppliers`
--

CREATE TABLE `suppliers` (
  `ID` int(11) NOT NULL,
  `NAME` varchar(100) NOT NULL,
  `EMAIL` varchar(100) NOT NULL,
  `CONTACT_NUMBER` varchar(10) NOT NULL,
  `ADDRESS` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_bin;

--
-- Dumping data for table `suppliers`
--

INSERT INTO `suppliers` (`ID`, `NAME`, `EMAIL`, `CONTACT_NUMBER`, `ADDRESS`) VALUES
(1, 'Desai Pharma', 'desai@gmail.com', '9948724242', 'Mahim East'),
(2, 'BDPL PHARMA', 'bdpl@gmail.com', '8645632963', 'Santacruz West'),
(9, 'Kiran Pharma', 'kiranpharma@gmail.com', '7638683637', 'Andheri East'),
(10, 'Rsrnrnrndnn', 'ydj', '3737355538', '3fndfndfndndfnfdndfn'),
(11, 'Dfnsfndfndf', 'fnsn', '5475734385', 'Ndnss4yrhrhdhrdhrh'),
(12, 'SS Distributors', 'ssdis@gamil.com', '3867868752', 'Matunga West'),
(13, 'Avceve', 'ehh', '3466626226', 'Eteh266266262'),
(14, 'Hrshrhrjher', 'dzgdg', '4636347335', 'Rhrswjrnswjn'),
(15, 'Hmrxfmgtmt', 'trmtrm gm tr', '6553838835', '38ejtdjtdxetjdt'),
(20, 'Dtdxtkmtdshrrhhsrjrs', 'trmtrm gm tr', '6553838835', '38ejtdjtdxetjdt'),
(23, 'Fndn', 'nena ena', '3462462642', 'Ebsbsdbsdndsnsdfns'),
(24, 'Fndnbrwh', 'nena ena', '3462462642', 'Ebsbsdbsdndsnsdfns'),
(25, 'Jnentjrtj', 'nena ena', '3462462642', 'Ebsbsdbsdndsnsdfns'),
(26, 'Jerthjrtjtjr', 'nena ena', '3462462642', 'Ebsbsdbsdndsnsdfns'),
(28, 'Gahgkakbvkv', 'nena ena', '3462462642', 'Ebsbsdbsdndsnsdfns'),
(29, 'Hywhwhrhdw', 'nena ena', '3462462642', 'Ebsbsdbsdndsnsdfns'),
(30, 'Ernest Chemist', 'ernchem200@gmail.com', '054700121', 'Accra-Ghana');

-- --------------------------------------------------------

--
-- Table structure for table `tblcontactus`
--

CREATE TABLE `tblcontactus` (
  `id` int(11) NOT NULL,
  `fullname` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `contactno` bigint(12) DEFAULT NULL,
  `message` mediumtext DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp(),
  `AdminRemark` mediumtext DEFAULT NULL,
  `LastupdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `IsRead` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblcontactus`
--

INSERT INTO `tblcontactus` (`id`, `fullname`, `email`, `contactno`, `message`, `PostingDate`, `AdminRemark`, `LastupdationDate`, `IsRead`) VALUES
(2, 'Anuj kumar', 'ak@gmail.com', 1111122233, 'This is for testing', '2022-11-06 13:13:41', 'Contact the patient', '2022-11-06 13:13:57', 1),
(3, 'safo Gbemiti', 'ampaw222gmail.com', 548790987, 'Crazy Tepos', '2023-07-31 23:13:11', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblmedicalhistory`
--

CREATE TABLE `tblmedicalhistory` (
  `ID` int(10) NOT NULL,
  `PatientID` int(10) DEFAULT NULL,
  `BloodPressure` varchar(200) DEFAULT NULL,
  `BloodSugar` varchar(200) NOT NULL,
  `Weight` varchar(100) DEFAULT NULL,
  `Temperature` varchar(200) DEFAULT NULL,
  `MedicalPres` mediumtext DEFAULT NULL,
  `CreationDate` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblmedicalhistory`
--

INSERT INTO `tblmedicalhistory` (`ID`, `PatientID`, `BloodPressure`, `BloodSugar`, `Weight`, `Temperature`, `MedicalPres`, `CreationDate`) VALUES
(1, 1, '80/120', '120', '85', '98', 'Test', '2022-11-06 13:19:41');

-- --------------------------------------------------------

--
-- Table structure for table `tblpage`
--

CREATE TABLE `tblpage` (
  `ID` int(10) NOT NULL,
  `PageType` varchar(200) DEFAULT NULL,
  `PageTitle` varchar(200) DEFAULT NULL,
  `PageDescription` mediumtext DEFAULT NULL,
  `Email` varchar(120) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `UpdationDate` timestamp NULL DEFAULT current_timestamp(),
  `OpenningTime` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tblpage`
--

INSERT INTO `tblpage` (`ID`, `PageType`, `PageTitle`, `PageDescription`, `Email`, `MobileNumber`, `UpdationDate`, `OpenningTime`) VALUES
(1, 'aboutus', 'About Us', '<ul style=\"padding: 0px; margin-right: 0px; margin-bottom: 1.313em; margin-left: 1.655em;\" times=\"\" new=\"\" roman\";=\"\" font-size:=\"\" 14px;=\"\" text-align:=\"\" center;=\"\" background-color:=\"\" rgb(255,=\"\" 246,=\"\" 246);\"=\"\"><li style=\"text-align: left;\"><font color=\"#000000\">The Hospital Management System (HMS) is designed for Any Hospital to replace their existing manual, paper based system. The new system is to control the following information; patient information, room availability, staff and operating room schedules, and patient invoices. These services are to be provided in an efficient, cost effective manner, with the goal of reducing the time and resources currently required for such tasks.</font></li><li style=\"text-align: left;\"><font color=\"#000000\">A significant part of the operation of any hospital involves the acquisition, management and timely retrieval of great volumes of information. This information typically involves; patient personal information and medical history, staff information, room and ward scheduling, staff scheduling, operating theater scheduling and various facilities waiting lists. All of this information must be managed in an efficient and cost wise fashion so that an institution\'s resources may be effectively utilized HMS will automate the management of the hospital making it more efficient and error free. It aims at standardizing data, consolidating data ensuring data integrity and reducing inconsistencies.&nbsp;</font></li></ul>', NULL, NULL, '2020-05-20 07:21:52', NULL),
(2, 'contactus', 'Contact Details', 'Accra-Barnes Road', 'info@vicmachospital.com', 53221323, '2020-05-20 07:24:07', '24hrs Service');

-- --------------------------------------------------------

--
-- Table structure for table `tblpatient`
--

CREATE TABLE `tblpatient` (
  `ID` int(10) NOT NULL,
  `Docid` int(10) DEFAULT NULL,
  `PatientName` varchar(200) DEFAULT NULL,
  `PatientContno` bigint(10) DEFAULT NULL,
  `PatientEmail` varchar(200) DEFAULT NULL,
  `PatientGender` varchar(50) DEFAULT NULL,
  `PatientAdd` mediumtext DEFAULT NULL,
  `PatientAge` int(10) DEFAULT NULL,
  `PatientMedhis` mediumtext DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblpatient`
--

INSERT INTO `tblpatient` (`ID`, `Docid`, `PatientName`, `PatientContno`, `PatientEmail`, `PatientGender`, `PatientAdd`, `PatientAge`, `PatientMedhis`, `CreationDate`, `UpdationDate`) VALUES
(2, 3, 'Emmanuel Tagoe', 548790987, 'tagoa@vicmail.com', 'male', 'Taifa Mall', 25, 'Hiv/Aids', '2023-08-26 23:23:20', NULL),
(3, 3, 'Emmanuel Addo Nelson', 554402, 'manueladdo@vicmail.com', 'Male', 'New York City', 32, 'Asthma', '2023-08-29 13:44:42', '2023-08-29 18:42:51');

-- --------------------------------------------------------

--
-- Table structure for table `userlog`
--

CREATE TABLE `userlog` (
  `id` int(11) NOT NULL,
  `uid` int(11) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `userip` binary(16) DEFAULT NULL,
  `loginTime` timestamp NULL DEFAULT current_timestamp(),
  `logout` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `userlog`
--

INSERT INTO `userlog` (`id`, `uid`, `username`, `userip`, `loginTime`, `logout`, `status`) VALUES
(1, 1, 'johndoe12@test.com', 0x3a3a3100000000000000000000000000, '2022-11-06 12:14:11', NULL, 1),
(2, 1, 'johndoe12@test.com', 0x3a3a3100000000000000000000000000, '2022-11-06 12:21:20', '06-11-2022 05:53:00 PM', 1),
(3, NULL, 'amitk@gmail.com', 0x3a3a3100000000000000000000000000, '2022-11-06 13:15:43', NULL, 0),
(4, 2, 'amitk@gmail.com', 0x3a3a3100000000000000000000000000, '2022-11-06 13:15:58', '06-11-2022 06:50:46 PM', 1),
(5, 1, 'johndoe12@test.com', 0x3132372e302e302e3100000000000000, '2023-07-31 23:10:17', '01-08-2023 04:42:07 AM', 1),
(6, 3, 'ght@gmailcom', 0x3132372e302e302e3100000000000000, '2023-08-16 22:52:37', '17-08-2023 04:39:46 AM', 1),
(7, 4, 'user12@mail.gh.com', 0x3132372e302e302e3100000000000000, '2023-08-17 19:46:18', NULL, 1),
(8, 4, 'user12@mail.gh.com', 0x3132372e302e302e3100000000000000, '2023-08-22 23:23:07', '23-08-2023 04:53:19 AM', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `fullName` varchar(255) DEFAULT NULL,
  `address` longtext DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `regDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `fullName`, `address`, `city`, `gender`, `email`, `password`, `regDate`, `updationDate`) VALUES
(1, 'Safo Snr', 'Taifa', 'Accra', 'male', 'johndoe12@test.com', 'f925916e2754e5e03f75dd58a5733251', '2022-11-06 12:13:56', '2023-07-31 23:11:38'),
(4, 'user', 'Tema', 'Accra', 'male', 'user12@mail.gh.com', 'c8dad6b5e6568112e4851c8a5c0a83dd', '2023-08-17 19:45:05', NULL),
(5, 'Safo Ampaw', 'Taifa', 'Accra', 'male', 'ampawsafo23@gmail.com', 'c8dad6b5e6568112e4851c8a5c0a83dd', '2023-08-22 23:21:49', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accountant_log`
--
ALTER TABLE `accountant_log`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `allocatebed`
--
ALTER TABLE `allocatebed`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `appointment`
--
ALTER TABLE `appointment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `currency`
--
ALTER TABLE `currency`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doctors`
--
ALTER TABLE `doctors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doctorslog`
--
ALTER TABLE `doctorslog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doctorspecilization`
--
ALTER TABLE `doctorspecilization`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `drug_prescribtion`
--
ALTER TABLE `drug_prescribtion`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hospitalbed`
--
ALTER TABLE `hospitalbed`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `medicines`
--
ALTER TABLE `medicines`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `mop`
--
ALTER TABLE `mop`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nurses`
--
ALTER TABLE `nurses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nurseslog`
--
ALTER TABLE `nurseslog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pharm_admin`
--
ALTER TABLE `pharm_admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rooms`
--
ALTER TABLE `rooms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `suppliers`
--
ALTER TABLE `suppliers`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblcontactus`
--
ALTER TABLE `tblcontactus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblmedicalhistory`
--
ALTER TABLE `tblmedicalhistory`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblpage`
--
ALTER TABLE `tblpage`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblpatient`
--
ALTER TABLE `tblpatient`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `userlog`
--
ALTER TABLE `userlog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accountant_log`
--
ALTER TABLE `accountant_log`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `allocatebed`
--
ALTER TABLE `allocatebed`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `appointment`
--
ALTER TABLE `appointment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `currency`
--
ALTER TABLE `currency`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `doctors`
--
ALTER TABLE `doctors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `doctorslog`
--
ALTER TABLE `doctorslog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `doctorspecilization`
--
ALTER TABLE `doctorspecilization`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `drug_prescribtion`
--
ALTER TABLE `drug_prescribtion`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `hospitalbed`
--
ALTER TABLE `hospitalbed`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `invoices`
--
ALTER TABLE `invoices`
  MODIFY `INVOICE_ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `medicines`
--
ALTER TABLE `medicines`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `mop`
--
ALTER TABLE `mop`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `nurses`
--
ALTER TABLE `nurses`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `nurseslog`
--
ALTER TABLE `nurseslog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `pharm_admin`
--
ALTER TABLE `pharm_admin`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `rooms`
--
ALTER TABLE `rooms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `suppliers`
--
ALTER TABLE `suppliers`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `tblcontactus`
--
ALTER TABLE `tblcontactus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tblmedicalhistory`
--
ALTER TABLE `tblmedicalhistory`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblpage`
--
ALTER TABLE `tblpage`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tblpatient`
--
ALTER TABLE `tblpatient`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `userlog`
--
ALTER TABLE `userlog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
