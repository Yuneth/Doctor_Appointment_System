-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 17, 2023 at 02:58 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

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
(1, 'admin', 'Test@12345', '30-10-2022 11:42:05 AM');

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
(2, 'ENT', 1, 2, 500, '2022-11-17', '7:00 PM', '2022-11-06 13:16:18', 1, 1, NULL),
(3, 'Orthopedics', 4, 3, 1000, '2023-03-04', '12:00 PM', '2023-03-04 05:54:42', 1, 1, NULL),
(4, 'ENT', 1, 5, 1000, '2023-03-29', '9:45 AM', '2023-03-05 04:13:52', 1, 1, NULL),
(5, 'Dental Care', 6, 5, 2500, '2023-03-21', '10:00 AM', '2023-03-05 04:20:38', 1, 0, '2023-03-05 04:23:29'),
(6, 'ENT', 1, 6, 1000, '2023-03-09', '8:30 PM', '2023-03-08 14:58:58', 1, 1, NULL),
(7, 'Orthopedics', 4, 3, 1000, '2023-04-05', '1:00 PM', '2023-04-05 04:19:53', 1, 0, '2023-04-13 12:17:02'),
(8, 'Orthopedics', 4, 3, 1000, '2023-04-20', '5:00 PM', '2023-04-13 11:29:09', 1, 1, NULL),
(9, 'ENT', 1, 3, 1000, '2023-04-20', '7:30 AM', '2023-04-14 01:56:25', 1, 1, NULL),
(10, 'ENT', 1, 3, 1000, '2023-04-20', '7:30 AM', '2023-04-14 01:56:52', 1, 1, NULL),
(11, 'Orthopedics', 4, 3, 2200, '2023-04-17', '9:45 PM', '2023-04-16 16:11:16', 1, 1, NULL),
(12, 'ENT', 1, 3, 1000, '2023-04-18', '9:45 PM', '2023-04-16 16:15:55', 1, 1, NULL),
(13, 'Orthopedics', 4, 3, 2200, '2023-04-26', '10:00 AM', '2023-04-16 16:25:44', 1, 1, NULL);

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
(1, 'ENT', 'Anujaya kumarasiri', 'Gampaha', '1000', 142536250, 'anujk123@test.com', 'ae69a331121724849f83f2aca559eb49', '2022-10-30 18:16:52', '2023-03-08 15:02:59'),
(2, 'Endocrinologists', 'Chathura', 'Moratuwa', '800', 1231231230, 'charudua12@test.com', 'f925916e2754e5e03f75dd58a5733251', '2022-11-04 01:06:41', '2023-03-04 05:49:47'),
(4, 'Orthopedics', 'Saneshka Costa', 'Colombo', '2200', 717057854, 'scosta@gmail.com', '3f00ca522e10ba50e34747b98349bead', '2023-03-04 05:46:35', '2023-04-14 17:13:30'),
(5, 'Radiology', 'Kaushal Fernando ', 'Kaluthara', '800', 767899523, 'kfernando@gmail.com', '5ebf7a0d4c70fe5e1d680022a61236ac', '2023-03-04 05:48:23', NULL),
(6, 'Dental Care', 'Ravindu Hasanranga', 'Colombo', '2500', 778958956, 'ravindu@gmail.com', 'cd32d642b49e52dc856b15f34afdecf9', '2023-03-05 04:19:08', NULL),
(9, 'General Surgery', 'Akalanka Perera', 'Panadura', '1500', 717035586, 'jagathnishantha900@gmail.com', 'fcea920f7412b5da7be0cf42b8c93759', '2023-04-13 13:17:46', NULL),
(10, 'Dermatologist', 'Nipuni Chamika', 'No 12, Mathugama ', '2000', 772581145, 'nipunimadushani52@gmail.com', 'fcea920f7412b5da7be0cf42b8c93759', '2023-04-14 01:02:21', NULL);

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
(25, 2, 'charudua12@test.com', 0x3a3a3100000000000000000000000000, '2022-11-06 13:16:53', '06-11-2022 06:47:07 PM', 1),
(26, 1, 'anujk123@test.com', 0x3a3a3100000000000000000000000000, '2022-11-06 13:17:33', '06-11-2022 06:50:28 PM', 1),
(27, 4, 'scosta@gmail.com', 0x3a3a3100000000000000000000000000, '2023-03-04 05:55:19', '04-03-2023 11:29:34 AM', 1),
(28, 6, 'ravindu@gmail.com', 0x3a3a3100000000000000000000000000, '2023-03-05 04:19:32', NULL, 1),
(29, 6, 'ravindu@gmail.com', 0x3a3a3100000000000000000000000000, '2023-03-05 04:22:11', NULL, 1),
(30, 4, 'scosta@gmail.com', 0x3a3a3100000000000000000000000000, '2023-03-08 14:46:42', '08-03-2023 08:19:15 PM', 1),
(31, 1, 'anujk123@test.com', 0x3a3a3100000000000000000000000000, '2023-03-08 15:03:16', NULL, 1),
(32, 4, 'scosta@gmail.com', 0x3a3a3100000000000000000000000000, '2023-04-01 05:19:26', '01-04-2023 10:50:53 AM', 1),
(33, 4, 'scosta@gmail.com', 0x3a3a3100000000000000000000000000, '2023-04-05 04:00:37', '05-04-2023 09:30:54 AM', 1),
(34, 1, 'anujk123@test.com', 0x3a3a3100000000000000000000000000, '2023-04-05 04:11:51', '05-04-2023 09:45:25 AM', 1),
(35, 4, 'scosta@gmail.com', 0x3a3a3100000000000000000000000000, '2023-04-05 04:20:36', '05-04-2023 10:21:57 AM', 1),
(36, NULL, 'abc@gmail.com', 0x3a3a3100000000000000000000000000, '2023-04-13 08:13:00', NULL, 0),
(37, NULL, 'yunethperera987@gmail.com ', 0x3a3a3100000000000000000000000000, '2023-04-13 08:17:45', NULL, 0),
(38, 4, 'scosta@gmail.com', 0x3a3a3100000000000000000000000000, '2023-04-13 08:18:06', '13-04-2023 01:48:14 PM', 1),
(39, 4, 'scosta@gmail.com', 0x3a3a3100000000000000000000000000, '2023-04-13 11:42:16', '13-04-2023 05:31:17 PM', 1),
(40, 4, 'scosta@gmail.com', 0x3a3a3100000000000000000000000000, '2023-04-13 12:03:12', '13-04-2023 05:59:25 PM', 1),
(41, 4, 'scosta@gmail.com', 0x3a3a3100000000000000000000000000, '2023-04-13 13:57:52', '13-04-2023 07:28:23 PM', 1),
(42, 4, 'scosta@gmail.com', 0x3a3a3100000000000000000000000000, '2023-04-14 16:51:38', NULL, 1),
(43, NULL, ' scosta@gmail.com', 0x3a3a3100000000000000000000000000, '2023-04-14 17:26:11', NULL, 0),
(44, 4, 'scosta@gmail.com', 0x3a3a3100000000000000000000000000, '2023-04-14 17:26:27', '14-04-2023 11:07:16 PM', 1);

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
(15, 'Neurologists', '2022-10-30 18:12:30', NULL),
(18, 'Eye Surgeon', '2023-04-13 12:38:15', NULL),
(20, 'Dermatologist', '2023-04-14 00:52:03', NULL),
(21, 'Dermatologist', '2023-04-14 00:52:24', NULL);

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
(1, 'Anuj kumar', 'anujk30@test.com', 1425362514, 'This is for testing purposes.   This is for testing purposes.This is for testing purposes.This is for testing purposes.This is for testing purposes.This is for testing purposes.This is for testing purposes.This is for testing purposes.This is for testing purposes.', '2022-10-30 16:52:03', 'dkjfnwaj', '2023-03-05 04:04:35', 1),
(2, 'Anuj kumar', 'ak@gmail.com', 1111122233, 'This is for testing', '2022-11-06 13:13:41', 'Contact the patient', '2022-11-06 13:13:57', 1);

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
(1, 1, '80/120', '120', '85', '98', 'Test', '2022-11-06 13:19:41'),
(2, 2, '55', '98', '75', '26', 'Acetaminophen\r\nAdderall\r\nAmitriptyline\r\nAmlodipine', '2023-03-08 15:11:57'),
(3, 3, '123', '110', '85', '31', 'Adderall.\r\nAmitriptyline.\r\nAmlodipine.\r\nAmoxicillin.\r\nAtivan.', '2023-04-05 04:25:01'),
(4, 3, '87', '90', '62', '32', 'Cymbalta\r\nDoxycycline\r\nDupixent\r\nEntresto\r\nEntyvio\r\nFarxiga\r\nFentanyl Patch', '2023-04-13 11:43:48'),
(5, 3, '77', '98', '57', '29', 'Lexapro\r\nLisinopril\r\nLofexidine\r\nLoratadine\r\nLyrica\r\nMelatonin\r\nMeloxicam', '2023-04-13 11:45:47'),
(6, 3, '111', '97', '63', '31', 'Entyvio\r\nFarxiga\r\nFentanyl Patch\r\nGabapentin\r\nGilenya\r\nHumira\r\nHydrochlorothiazide', '2023-04-13 11:57:12');

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
(2, 'contactus', 'Contact Details', 'No 244, Samagi Mw, Wadduwa, Kaluthara , Sri Lanka', 'sdccinfo@gmail.com', 94382287458, '2023-01-11 07:24:07', '9 am To 10 Pm');

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
(1, 1, 'Amit Kumar', 1231231230, 'amitk@gmail.com', 'Male', 'New Delhi india', 35, 'NA', '2022-11-06 13:18:31', '2023-03-08 15:12:13'),
(2, 1, 'Chamika', 717302248, 'cjagoda@gmail.com', 'Male', 'Keselwaththa, Panadura', 30, 'Blood test', '2023-03-08 15:06:25', '2023-03-08 15:06:44'),
(3, 4, 'Yuneth Perera', 717025589, 'yunethperera987@gmail.com', 'male', 'Panadura', 31, 'Adderall.\r\nAmitriptyline.\r\nAmlodipine.\r\nAmoxicillin.\r\nAtivan.', '2023-04-05 04:23:17', NULL);

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
(3, NULL, 'amitk@gmail.com', 0x3a3a3100000000000000000000000000, '2022-11-06 13:15:43', NULL, 0),
(4, 2, 'amitk@gmail.com', 0x3a3a3100000000000000000000000000, '2022-11-06 13:15:58', '06-11-2022 06:50:46 PM', 1),
(5, 3, 'yunethperera987@gmail.com', 0x3a3a3100000000000000000000000000, '2023-03-04 05:44:13', '04-03-2023 11:14:41 AM', 1),
(6, 3, 'yunethperera987@gmail.com', 0x3a3a3100000000000000000000000000, '2023-03-04 05:53:45', '04-03-2023 11:24:57 AM', 1),
(7, 5, 'surath@gmail.com', 0x3a3a3100000000000000000000000000, '2023-03-05 04:11:58', NULL, 1),
(8, 5, 'surath@gmail.com', 0x3a3a3100000000000000000000000000, '2023-03-05 04:20:04', NULL, 1),
(9, 5, 'Surath@gmail.com', 0x3a3a3100000000000000000000000000, '2023-03-05 04:23:05', NULL, 1),
(10, 3, 'yunethperera987@gmail.com', 0x3a3a3100000000000000000000000000, '2023-03-08 14:49:40', '08-03-2023 08:21:34 PM', 1),
(11, 6, 'cjagoda@gmail.com', 0x3a3a3100000000000000000000000000, '2023-03-08 14:58:14', NULL, 1),
(12, 7, 'akila12@gmail.com', 0x3a3a3100000000000000000000000000, '2023-03-08 18:31:30', '09-03-2023 12:01:44 AM', 1),
(13, NULL, 'asd@gmail.com', 0x3a3a3100000000000000000000000000, '2023-03-08 18:43:39', NULL, 0),
(14, 3, 'yunethperera987@gmail.com', 0x3a3a3100000000000000000000000000, '2023-04-01 05:06:56', '01-04-2023 10:39:43 AM', 1),
(15, 3, 'yunethperera987@gmail.com', 0x3a3a3100000000000000000000000000, '2023-04-01 05:43:13', NULL, 1),
(16, 3, 'yunethperera987@gmail.com', 0x3a3a3100000000000000000000000000, '2023-04-01 05:49:04', NULL, 1),
(17, NULL, '', 0x3a3a3100000000000000000000000000, '2023-04-05 03:31:51', NULL, 0),
(18, NULL, 'pamudu11@gmail.com', 0x3a3a3100000000000000000000000000, '2023-04-05 03:32:22', NULL, 0),
(19, NULL, 'pamudu11@gmail.com', 0x3a3a3100000000000000000000000000, '2023-04-05 03:32:44', NULL, 0),
(20, 3, 'yunethperera987@gmail.com', 0x3a3a3100000000000000000000000000, '2023-04-05 03:33:09', '05-04-2023 09:03:12 AM', 1),
(21, NULL, 'pamudu11@gmail.com', 0x3a3a3100000000000000000000000000, '2023-04-05 03:33:40', NULL, 0),
(22, NULL, '', 0x3a3a3100000000000000000000000000, '2023-04-05 03:36:16', NULL, 0),
(23, NULL, 'pamudu11@gmail.com', 0x3a3a3100000000000000000000000000, '2023-04-05 03:36:35', NULL, 0),
(24, 11, 'pamudu11@gmail.com', 0x3a3a3100000000000000000000000000, '2023-04-05 03:39:15', '05-04-2023 09:09:45 AM', 1),
(25, NULL, 'scosta@gmail.com', 0x3a3a3100000000000000000000000000, '2023-04-05 04:00:03', NULL, 0),
(26, 3, 'yunethperera987@gmail.com', 0x3a3a3100000000000000000000000000, '2023-04-05 04:19:07', '05-04-2023 09:50:15 AM', 1),
(27, 18, 'oiu@gmail.com', 0x3a3a3100000000000000000000000000, '2023-04-05 05:57:40', '05-04-2023 11:27:46 AM', 1),
(28, 3, 'yunethperera987@gmail.com', 0x3a3a3100000000000000000000000000, '2023-04-06 15:52:40', '06-04-2023 09:26:50 PM', 1),
(29, NULL, 'admin', 0x3a3a3100000000000000000000000000, '2023-04-13 07:01:00', NULL, 0),
(30, 3, 'yunethperera987@gmail.com ', 0x3a3a3100000000000000000000000000, '2023-04-13 07:56:52', '13-04-2023 01:27:25 PM', 1),
(32, NULL, 'yunethperera@gmail.com ', 0x3a3a3100000000000000000000000000, '2023-04-13 08:00:14', NULL, 0),
(33, NULL, 'jagathnishantha900@gmail.com ', 0x3a3a3100000000000000000000000000, '2023-04-13 08:05:27', NULL, 0),
(36, NULL, 'abc@gmail.com', 0x3a3a3100000000000000000000000000, '2023-04-13 08:11:36', NULL, 0),
(38, NULL, 'yunethperera987@gmail.com ', 0x3a3a3100000000000000000000000000, '2023-04-13 08:15:58', NULL, 0),
(39, NULL, 'yunethperera987@gmail.com ', 0x3a3a3100000000000000000000000000, '2023-04-13 08:16:20', NULL, 0),
(40, NULL, 'yunethperera987@gmail.com ', 0x3a3a3100000000000000000000000000, '2023-04-13 08:20:12', NULL, 0),
(41, 3, 'yunethperera987@gmail.com ', 0x3a3a3100000000000000000000000000, '2023-04-13 11:27:32', '13-04-2023 05:11:50 PM', 1),
(42, 3, 'yunethperera987@gmail.com ', 0x3a3a3100000000000000000000000000, '2023-04-13 12:01:41', '13-04-2023 05:32:22 PM', 1),
(43, 3, 'yunethperera987@gmail.com ', 0x3a3a3100000000000000000000000000, '2023-04-13 13:58:48', '13-04-2023 07:31:09 PM', 1),
(44, 3, 'yunethperera987@gmail.com', 0x3a3a3100000000000000000000000000, '2023-04-14 01:56:09', NULL, 1),
(45, 3, 'yunethperera987@gmail.com', 0x3a3a3100000000000000000000000000, '2023-04-14 01:56:43', NULL, 1),
(46, 3, 'yunethperera987@gmail.com ', 0x3a3a3100000000000000000000000000, '2023-04-14 03:02:34', '14-04-2023 08:33:22 AM', 1),
(47, 3, 'yunethperera987@gmail.com ', 0x3a3a3100000000000000000000000000, '2023-04-14 09:43:17', '14-04-2023 03:14:18 PM', 1),
(48, 3, 'yunethperera987@gmail.com ', 0x3a3a3100000000000000000000000000, '2023-04-14 13:07:14', NULL, 1),
(49, 3, 'yunethperera987@gmail.com ', 0x3a3a3100000000000000000000000000, '2023-04-14 13:24:22', NULL, 1),
(50, 3, 'yunethperera987@gmail.com ', 0x3a3a3100000000000000000000000000, '2023-04-15 11:06:00', NULL, 1),
(51, 3, 'yunethperera987@gmail.com ', 0x3a3a3100000000000000000000000000, '2023-04-15 11:23:03', '15-04-2023 04:55:05 PM', 1),
(52, 3, 'yunethperera987@gmail.com ', 0x3a3a3100000000000000000000000000, '2023-04-16 16:10:27', '16-04-2023 09:45:18 PM', 1),
(53, 3, 'yunethperera987@gmail.com ', 0x3a3a3100000000000000000000000000, '2023-04-16 16:15:31', '16-04-2023 09:56:13 PM', 1);

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
(2, 'Amit kumar', 'No.123,abcd, Kaluthara', 'Kaluthara', 'male', 'amitk@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2022-11-06 13:15:32', NULL),
(3, 'Yuneth Perera', 'Panadura', 'Panadura', 'male', 'yunethperera987@gmail.com', '8c78b0fb6fd3811106ac62889bbad077', '2023-03-04 05:43:52', NULL),
(4, 'Sadun Prabath', 'no3, first cross road colombo - 1', 'Colombo', 'male', 'sadun@gmail.com', '202cb962ac59075b964b07152d234b70', '2023-03-05 04:09:42', NULL),
(5, 'Surath Kavin', 'colombo', 'colombo', 'male', 'Surath@gmail.com', 'f955220afb6d3aa541c497f61378cca3', '2023-03-05 04:11:36', NULL),
(6, 'Chamika', 'Keselwaththa, Panadura', 'Panadura', 'female', 'cjagoda@gmail.com', '3e19b5009c3f24642936caa810c1d4ba', '2023-03-08 14:57:53', NULL),
(7, 'Akila Perera', 'Ragama, Colombo', 'Colombo ', 'male', 'akila12@gmail.com', '77cb2899cf0a7a8d52eca93d410df665', '2023-03-08 18:30:59', NULL),
(8, 'Danuja Lakmal', 'Badulla', 'Badulla', 'male', 'danu123@gmail.com', 'ad9464b0a86a0fe12d01b8034d1af56d', '2023-03-08 18:41:39', NULL),
(9, 'Dulanga Pahasara', 'Panadura', 'Panadura', 'male', 'dula345@gmail.com', '1418e4f523a61f03777dc2bbea27fc3d', '2023-03-08 18:47:31', NULL),
(10, 'Thimira', '123 Namal Mw, Paratta', 'Panadura ', 'male', 'thimira.12@gmail.com', '25d55ad283aa400af464c76d713c07ad', '2023-04-01 05:23:55', NULL),
(23, 'Jagath', 'No.1234, bscahjdsc', 'csvknbskjv', 'male', 'yumneth253@gmail.com', 'fcea920f7412b5da7be0cf42b8c93759', '2023-04-06 18:07:21', NULL),
(24, 'Jagath', 'No.12, Samagi Mw, Moratuwa', 'Moratuwa', 'male', 'jagathnishantha900@gmail.com', 'fcea920f7412b5da7be0cf42b8c93759', '2023-04-13 08:31:25', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `appointment`
--
ALTER TABLE `appointment`
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
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `appointment`
--
ALTER TABLE `appointment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `doctors`
--
ALTER TABLE `doctors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `doctorslog`
--
ALTER TABLE `doctorslog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `doctorspecilization`
--
ALTER TABLE `doctorspecilization`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `tblcontactus`
--
ALTER TABLE `tblcontactus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tblmedicalhistory`
--
ALTER TABLE `tblmedicalhistory`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
