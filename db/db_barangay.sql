-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 04, 2025 at 09:09 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_barangay`
--

-- --------------------------------------------------------

--
-- Table structure for table `tblactivity`
--

CREATE TABLE `tblactivity` (
  `id` int(11) NOT NULL,
  `dateofactivity` date NOT NULL,
  `activity` text NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblactivity`
--

INSERT INTO `tblactivity` (`id`, `dateofactivity`, `activity`, `description`) VALUES
(10, '2017-01-03', 'activity', 'Description'),
(11, '2017-01-28', 'teets', 'sdfsdfsdfsdf');

-- --------------------------------------------------------

--
-- Table structure for table `tblactivityphoto`
--

CREATE TABLE `tblactivityphoto` (
  `id` int(11) NOT NULL,
  `activityid` int(11) NOT NULL,
  `filename` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblactivityphoto`
--

INSERT INTO `tblactivityphoto` (`id`, `activityid`, `filename`) VALUES
(18, 7, '1485255503893ChibiMaker.jpg'),
(19, 7, '1485255504014dental.jpg'),
(20, 7, '1485255504108images.jpg'),
(21, 8, '1485255608251dfxfxfxdfxfxfxdf.png'),
(22, 8, '1485255608315easy-nail-art-designs-for-beginners-youtube.jpg'),
(23, 8, '1485255608404Easy-Winter-Nail-Art-Tutorials-2013-2014-For-Beginners-Learners-10.jpg'),
(24, 8, '1485255608513motherboard.png'),
(25, 9, '148525575293111041019_1012143402147589_9043399646875097729_n.jpg'),
(26, 9, '1485255753089bg.PNG'),
(32, 10, '148526764905211041019_1012143402147589_9043399646875097729_n.jpg'),
(33, 10, '1485267649364bg.PNG'),
(34, 10, '1485267649563motherboard.png'),
(35, 10, '14855301764078196186971_2237f161bd_b.jpg'),
(36, 10, '1485530481111bicycle-1280x720.jpg'),
(38, 11, '1485530620716user2.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tblblotter`
--

CREATE TABLE `tblblotter` (
  `id` int(11) NOT NULL,
  `yearRecorded` varchar(4) NOT NULL,
  `dateRecorded` date NOT NULL,
  `complainant` text NOT NULL,
  `cage` int(11) NOT NULL,
  `caddress` text NOT NULL,
  `ccontact` int(11) NOT NULL,
  `personToComplain` text NOT NULL,
  `page` int(11) NOT NULL,
  `paddress` text NOT NULL,
  `pcontact` int(11) NOT NULL,
  `complaint` text NOT NULL,
  `actionTaken` varchar(50) NOT NULL,
  `sStatus` varchar(50) NOT NULL,
  `locationOfIncidence` text NOT NULL,
  `recordedby` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblblotter`
--

INSERT INTO `tblblotter` (`id`, `yearRecorded`, `dateRecorded`, `complainant`, `cage`, `caddress`, `ccontact`, `personToComplain`, `page`, `paddress`, `pcontact`, `complaint`, `actionTaken`, `sStatus`, `locationOfIncidence`, `recordedby`) VALUES
(3, '2016', '2016-10-15', 'sda, as das', 2132, 'asda', 213, '11', 3213, 'dasda', 2123, '213asd', '1st Option', 'Solved', 'asdsa', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `tblcedula`
--

CREATE TABLE `tblcedula` (
  `id` int(11) NOT NULL,
  `ResidentId` int(11) NOT NULL,
  `Address` varchar(100) NOT NULL,
  `Birthplace` varchar(100) NOT NULL,
  `Gender` varchar(20) NOT NULL,
  `Birthday` date NOT NULL,
  `CivilStatus` varchar(50) NOT NULL,
  `Height` float NOT NULL,
  `Weight` float NOT NULL,
  `EmploymentStatus` varchar(50) NOT NULL,
  `Occupation` varchar(100) DEFAULT NULL,
  `MonthlyIncome` float NOT NULL,
  `dateCreated` date NOT NULL,
  `Approved` tinyint(1) NOT NULL,
  `Status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tblcedula`
--

INSERT INTO `tblcedula` (`id`, `ResidentId`, `Address`, `Birthplace`, `Gender`, `Birthday`, `CivilStatus`, `Height`, `Weight`, `EmploymentStatus`, `Occupation`, `MonthlyIncome`, `dateCreated`, `Approved`, `Status`) VALUES
(1, 0, 'a', 'a', 'Male', '0000-00-00', 'Single', 0, 0, 'Student', 'q', 0, '2024-12-17', 0, 'APPROVED'),
(2, 0, 'qwe', 'qwe', 'Female', '0000-00-00', 'Widowed', 0, 0, 'Senior', 'qwe', 0, '2024-12-17', 0, 'APPROVED'),
(3, 0, 'asdf', '', '', '0000-00-00', '', 0, 0, '', '', 0, '2024-12-18', 0, 'APPROVED'),
(4, 0, 'q', 'qwe', 'Male', '0000-00-00', 'Married', 0, 0, 'Senior', '', 1, '2024-12-18', 0, 'APPROVED'),
(5, 18, '1', '1', 'Male', '0000-00-00', 'Single', 1, 1, 'Senior', '', 1, '2024-12-18', 0, 'APPROVED'),
(6, 20, '/q', 'q', 'Male', '0000-00-00', 'Single', 1, 1, 'Student', '1', 1, '2024-12-23', 0, 'PENDING'),
(7, 19, '1', '1', 'Male', '0000-00-00', 'Married', 1, 1, 'Senior', '1', 1, '2024-12-23', 0, 'PENDING'),
(8, 11, '/1', '1', 'Male', '0000-00-00', 'Single', 1, 1, 'Senior', '1', 1, '2024-12-23', 0, 'PENDING'),
(9, 16, '/1', '1', 'Male', '0000-00-00', 'Single', 1, 1, 'Senior', '1', 1, '2024-12-23', 1, 'PENDING'),
(10, 11, 'asdfasdf', '1', 'Male', '0000-00-00', 'Widowed', 1, 1, 'Senior', '1', 1, '2024-12-23', 0, 'PENDING'),
(11, 11, '1', '1', 'Male', '0000-00-00', 'Single', 1, 1, 'Student', '1', 1, '2024-12-25', 1, 'APPROVED'),
(12, 20, '/', '1', 'Male', '0000-00-00', 'Single', 1, 1, 'Senior', '1', 1, '2024-12-26', 0, 'APPROVED'),
(13, 20, '123123', '1', 'Male', '0000-00-00', 'Widowed', 1, 123123, 'Employee', '123123', 123123, '2024-12-26', 0, 'PENDING'),
(14, 20, '1123', '123', 'Male', '0000-00-00', 'Single', 123, 13, 'Senior', '13', 1313, '2024-12-26', 0, 'APPROVED'),
(15, 12, '1eqe', 'asd', 'Male', '0000-00-00', 'Single', 1, 1, 'Senior', '1', 1, '2024-12-26', 0, 'APPROVED');

-- --------------------------------------------------------

--
-- Table structure for table `tblclearance`
--

CREATE TABLE `tblclearance` (
  `id` int(11) NOT NULL,
  `clearanceNo` int(11) NOT NULL,
  `residentid` int(11) NOT NULL,
  `findings` text NOT NULL,
  `purpose` text NOT NULL,
  `orNo` int(11) NOT NULL,
  `samount` int(11) NOT NULL,
  `dateRecorded` date NOT NULL,
  `recordedBy` varchar(50) NOT NULL,
  `status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblclearance`
--

INSERT INTO `tblclearance` (`id`, `clearanceNo`, `residentid`, `findings`, `purpose`, `orNo`, `samount`, `dateRecorded`, `recordedBy`, `status`) VALUES
(8, 0, 11, '', 'asd', 0, 0, '2017-01-20', 'User1', 'New'),
(9, 1234, 15, 'asdada', 'local employment', 12, 3434, '2017-01-22', 'admin', 'Approved'),
(10, 123, 11, 'qwe', 'qwe', 213, 2123, '2017-01-24', 'admin', 'Approved');

-- --------------------------------------------------------

--
-- Table structure for table `tblclearance2`
--

CREATE TABLE `tblclearance2` (
  `id` int(11) NOT NULL,
  `ResidentId` int(11) NOT NULL,
  `Address` varchar(50) NOT NULL,
  `Birthdate` date NOT NULL,
  `Age` int(11) NOT NULL,
  `BloodType` varchar(50) NOT NULL,
  `ContactNumber` int(11) NOT NULL,
  `BirthPlace` varchar(50) NOT NULL,
  `CivilStatus` varchar(50) NOT NULL,
  `YearsKauswagan` int(11) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `ForPurpose` varchar(50) NOT NULL,
  `Purpose` varchar(50) NOT NULL,
  `Others` varchar(50) NOT NULL,
  `Remarks` varchar(50) NOT NULL,
  `IndigencyApproved` varchar(50) NOT NULL,
  `LuponApproval` varchar(50) NOT NULL,
  `dateCreated` date NOT NULL,
  `Approved` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tblclearance2`
--

INSERT INTO `tblclearance2` (`id`, `ResidentId`, `Address`, `Birthdate`, `Age`, `BloodType`, `ContactNumber`, `BirthPlace`, `CivilStatus`, `YearsKauswagan`, `Email`, `ForPurpose`, `Purpose`, `Others`, `Remarks`, `IndigencyApproved`, `LuponApproval`, `dateCreated`, `Approved`) VALUES
(1, 18, '1', '2024-12-01', 1, '1', 1, '1', '1', 1, '1', 'Single', '1', '1', '1', '1', '1', '2024-12-20', 'APPROVED'),
(2, 19, 'q', '2024-12-01', 1, '1', 1, '1', '1', 1, '1', 'Single', 'q', '1', '1', '1', '1', '2024-12-25', 'APPROVED'),
(3, 16, '1', '2024-12-01', 1, '1', 1, '1', '1', 1, '1', 'Single', '1', '1', '1', '1', '1', '2024-12-26', 'PENDING'),
(4, 11, '1', '2025-01-05', 1, '1', 1, '1', '1', 1, '1', 'Single', '1', '1', '1', '1', '1', '2025-01-03', 'PENDING'),
(5, 12, '1', '2025-01-08', 1, '1', 1, '1', '1', 1, '1', 'Single', '1', '1', '1', '1', '1', '2025-01-03', 'APPROVED');

-- --------------------------------------------------------

--
-- Table structure for table `tblfiles`
--

CREATE TABLE `tblfiles` (
  `id` int(11) NOT NULL,
  `filename` varchar(50) NOT NULL,
  `description` varchar(50) NOT NULL,
  `upload_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tblfiles`
--

INSERT INTO `tblfiles` (`id`, `filename`, `description`, `upload_date`) VALUES
(1, 'miming6.jpg', 'miming cat', '2025-01-05');

-- --------------------------------------------------------

--
-- Table structure for table `tblhousehold`
--

CREATE TABLE `tblhousehold` (
  `id` int(11) NOT NULL,
  `householdno` int(11) NOT NULL,
  `zone` varchar(11) NOT NULL,
  `totalhouseholdmembers` int(2) NOT NULL,
  `headoffamily` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblhousehold`
--

INSERT INTO `tblhousehold` (`id`, `householdno`, `zone`, `totalhouseholdmembers`, `headoffamily`) VALUES
(3, 2, '2', 0, '12');

-- --------------------------------------------------------

--
-- Table structure for table `tbllogs`
--

CREATE TABLE `tbllogs` (
  `id` int(11) NOT NULL,
  `user` varchar(50) NOT NULL,
  `logdate` datetime NOT NULL,
  `action` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbllogs`
--

INSERT INTO `tbllogs` (`id`, `user`, `logdate`, `action`) VALUES
(2, 'asd', '2017-01-04 00:00:00', 'Added Resident namedjayjay, asd asd'),
(3, 'asd', '2017-01-04 19:13:40', 'Update Resident named Sample1, User1 Brgy1'),
(4, 'sad', '2017-01-05 13:22:10', 'Update Official named eliezer a. vacalares, jr.'),
(7, 'sad', '2017-01-05 13:54:40', 'Update Household Number 1'),
(8, 'sad', '2017-01-05 14:00:08', 'Update Blotter Request sda, as das'),
(9, 'sad', '2017-01-05 14:15:39', 'Update Clearance with clearance number of 123131'),
(10, 'sad', '2017-01-05 14:25:03', 'Update Permit with business name of asda'),
(11, 'sad', '2017-01-05 14:25:25', 'Update Resident named Sample1, User1 Brgy1'),
(12, 'Administrator', '2017-01-24 16:32:40', 'Added Permit with business name of hahaha'),
(13, 'Administrator', '2017-01-24 16:35:41', 'Added Clearance with clearance number of 123'),
(14, 'Administrator', '2017-01-24 18:43:35', 'Added Activity sad'),
(15, 'Administrator', '2017-01-24 18:45:49', 'Added Activity qwe'),
(16, 'Administrator', '2017-01-24 18:46:20', 'Added Activity ss'),
(17, 'Administrator', '2017-01-24 18:47:39', 'Added Activity e'),
(18, 'Administrator', '2017-01-24 18:55:20', 'Added Activity activity'),
(19, 'Administrator', '2017-01-24 18:58:23', 'Added Activity Activity'),
(20, 'Administrator', '2017-01-24 19:00:07', 'Added Activity activity'),
(21, 'Administrator', '2017-01-24 19:02:32', 'Added Activity Activity'),
(22, 'Administrator', '2017-01-24 19:04:54', 'Added Activity activity'),
(23, 'Administrator', '2017-01-24 19:08:40', 'Update Activity activity'),
(24, 'Administrator', '2017-01-27 23:23:40', 'Added Activity teets'),
(25, 'Administrator', '2017-01-27 23:24:14', 'Update Resident named Sample1, User1 Brgy1'),
(26, 'Administrator', '2017-01-27 23:25:10', 'Update Resident named sda, as das'),
(27, 'Administrator', '2017-01-30 10:45:13', 'Added Resident named 2, 2 2'),
(28, 'Administrator', '2017-01-30 10:45:54', 'Added Resident named 2, 2 2'),
(29, 'Administrator', '2017-02-06 08:58:23', 'Update Resident named sda, as das'),
(30, 'Administrator', '2017-02-06 09:00:14', 'Update Resident named sda, as das'),
(31, 'Administrator', '2017-02-06 09:03:57', 'Added Household Number 2'),
(32, 'Administrator', '2017-02-06 09:04:25', 'Added Household Number 2'),
(33, 'Administrator', '2024-12-17 20:31:22', 'Added cedula with business name of '),
(34, 'Administrator', '2024-12-17 20:32:37', 'Added cedula with business name of '),
(35, 'Administrator', '2024-12-17 20:34:01', 'Added cedula with business name of aa'),
(36, 'Administrator', '2024-12-17 20:34:15', 'Added cedula with business name of aa'),
(37, 'Administrator', '2024-12-17 20:36:55', 'Added cedula with business name of aa'),
(38, 'Administrator', '2024-12-17 20:39:07', 'Added cedula with business name of aa'),
(39, 'Administrator', '2024-12-17 20:40:58', 'Added cedula with business name of aa'),
(40, 'Administrator', '2024-12-17 22:06:30', 'Added cedula with business name of qweqwe'),
(41, 'Administrator', '2024-12-17 22:37:59', 'Update Permit with business name of '),
(42, 'Administrator', '2024-12-18 01:26:16', 'Added Resident named qqq, www eee'),
(43, 'Administrator', '2024-12-18 01:26:55', 'Added Resident named qqq, www eee'),
(44, 'Administrator', '2024-12-18 01:30:38', 'Added Resident named qqq, www eee'),
(45, 'Administrator', '2024-12-18 02:43:05', 'Added cedula with business name of '),
(46, 'Administrator', '2024-12-18 15:23:17', 'Added Resident named miming, cat  x'),
(47, 'Administrator', '2024-12-18 15:35:47', 'Added cedula with name of 18,miming, cat ,x'),
(48, 'Administrator', '2024-12-18 15:38:39', 'Added cedula with name of 18,miming, cat ,x'),
(49, 'Administrator', '2024-12-20 02:32:17', 'Added Clearance with clearance for 18'),
(50, 'Administrator', '2024-12-20 02:34:26', 'Added Clearance with clearance for 18'),
(51, 'Administrator', '2024-12-20 02:35:10', 'Added Clearance with clearance for 18'),
(52, 'Administrator', '2024-12-20 02:36:41', 'Added Clearance with clearance for 18'),
(53, 'Administrator', '2024-12-20 02:36:56', 'Added Clearance with clearance for 18'),
(54, 'Administrator', '2024-12-20 02:39:28', 'Added Clearance with clearance for 18'),
(55, 'Administrator', '2024-12-20 02:41:36', 'Added Clearance with clearance for '),
(56, 'Administrator', '2024-12-20 02:47:18', 'Added Clearance with clearance for 18'),
(57, 'Administrator', '2024-12-20 02:48:18', 'Added Clearance with clearance for 18'),
(58, 'Administrator', '2024-12-23 02:45:00', 'Added Resident named ming, ming ming'),
(59, 'Administrator', '2024-12-23 03:04:07', 'Added Resident named Resident, test test'),
(60, 'Resident', '2024-12-23 03:43:54', 'Added cedula with name of 20,Resident, test,test'),
(61, 'Resident', '2024-12-23 03:45:58', 'Added cedula with name of 20,Resident, test,test'),
(62, 'Administrator', '2024-12-23 03:46:42', 'Added cedula with name of 20,Resident, test,test'),
(63, 'Administrator', '2024-12-23 03:51:23', 'Added cedula with name of 19,ming, ming,ming'),
(64, 'Administrator', '2024-12-23 03:52:25', 'Added cedula with name of 11,Sample1, User1,Brgy1'),
(65, 'Administrator', '2024-12-23 03:53:41', 'Added cedula with name of 16,jayjay, asd,asd'),
(66, 'Resident', '2024-12-23 03:54:45', 'Added cedula with name of 11,Sample1, User1,Brgy1'),
(67, 'Administrator', '2024-12-24 04:08:48', 'Added Staff with name of 123123'),
(68, 'Administrator', '2024-12-25 05:17:35', 'Added cedula with name of 11,Sample1, User1,Brgy1'),
(69, 'Administrator', '2024-12-25 06:23:24', 'Added Clearance with clearance for 19'),
(70, 'Administrator', '2024-12-26 00:51:59', 'Added cedula with name of 20,Resident, test,test'),
(71, 'Resident', '2024-12-26 00:52:38', 'Added cedula with name of 20,Resident, test,test'),
(72, 'Administrator', '2024-12-26 20:41:44', 'Added cedula with name of 20,Resident, test,test'),
(73, 'Resident', '2024-12-26 20:42:08', 'Added cedula with name of 12,sda, as,das'),
(74, 'Administrator', '2024-12-26 20:45:08', 'Added Clearance with clearance for 16'),
(75, 'Resident', '2025-01-03 03:27:28', 'Added Clearance with clearance for 11'),
(76, 'Administrator', '2025-01-03 03:28:13', 'Added Clearance with clearance for 12'),
(77, 'Administrator', '2025-01-04 04:25:50', 'Added Resident named qwer, qwer qwer'),
(78, 'Administrator', '2025-01-04 04:28:54', 'Added Staff with name of qwe'),
(79, 'Administrator', '2025-01-04 04:48:40', 'Added Resident named 123, 123123 123132'),
(80, 'Administrator', '2025-01-04 05:28:43', 'Added Staff with name of asdd'),
(81, 'Administrator', '2025-01-04 05:34:30', 'Added Staff with name of assd'),
(82, 'Administrator', '2025-01-04 05:35:32', 'Added Staff with name of aasd'),
(83, 'Administrator', '2025-01-05 03:27:20', 'Uploaded File: miming6.jpg'),
(84, 'Administrator', '2025-01-05 03:40:28', 'Added Zone number 2');

-- --------------------------------------------------------

--
-- Table structure for table `tblofficial`
--

CREATE TABLE `tblofficial` (
  `id` int(11) NOT NULL,
  `sPosition` varchar(50) NOT NULL,
  `completeName` text NOT NULL,
  `pcontact` varchar(20) NOT NULL,
  `paddress` text NOT NULL,
  `termStart` date NOT NULL,
  `termEnd` date NOT NULL,
  `status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblofficial`
--

INSERT INTO `tblofficial` (`id`, `sPosition`, `completeName`, `pcontact`, `paddress`, `termStart`, `termEnd`, `status`) VALUES
(4, 'Captain', 'eliezer a. vacalares, jr.', '8978768761', 'gdfgdfgd', '2016-10-03', '2016-10-06', 'Ongoing Term'),
(5, 'Kagawad(Ordinance)', 'ramil d. pakino', '4234', 'sfdsa', '2016-10-31', '2016-11-17', 'Ongoing Term'),
(6, 'Kagawad(Public Safety)', 'chito t. epal', '234234', '45sdfdf', '2016-10-31', '2016-11-24', 'Ongoing Term'),
(7, 'Kagawad(Tourism)', 'debie v. pereyra', '67567', 'sdfgf543', '2016-11-13', '2016-12-01', 'Ongoing Term'),
(8, 'Kagawad(Budget & Finance)', 'milard t. muring', '35454', 'dfgfgxcg', '2016-11-06', '2016-11-30', 'Ongoing Term'),
(9, 'Kagawad(Agriculture)', 'jaime d. abella', '3453545', 'sfsfds', '2016-11-06', '2016-11-22', 'Ongoing Term'),
(10, 'Kagawad(Education)', 'eugene j. labo', '4245', 'vxcsaf', '2016-11-06', '2016-11-25', 'Ongoing Term'),
(11, 'Kagawad(Infrastracture)', 'lerma a. abesamis', '231', 'xcvs', '2016-10-31', '2016-11-28', 'Ongoing Term');

-- --------------------------------------------------------

--
-- Table structure for table `tblpermit`
--

CREATE TABLE `tblpermit` (
  `id` int(11) NOT NULL,
  `residentid` int(11) NOT NULL,
  `businessName` text NOT NULL,
  `businessAddress` text NOT NULL,
  `typeOfBusiness` varchar(50) NOT NULL,
  `orNo` int(11) NOT NULL,
  `samount` int(11) NOT NULL,
  `dateRecorded` date NOT NULL,
  `recordedBy` varchar(50) NOT NULL,
  `status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblpermit`
--

INSERT INTO `tblpermit` (`id`, `residentid`, `businessName`, `businessAddress`, `typeOfBusiness`, `orNo`, `samount`, `dateRecorded`, `recordedBy`, `status`) VALUES
(5, 11, 'Business ', 'Address', 'Option 1', 0, 0, '2016-12-04', 'a', 'New'),
(6, 11, 'sa', 'sa', 'Option 1', 2, 12, '2017-01-20', 'a', 'Approved'),
(7, 11, 'sad', 'asd', 'Option 2', 0, 0, '2017-01-20', 'a', 'New'),
(8, 12, 'hahaha', 'hehe', 'Option 1', 1234, 1234, '2017-01-24', 'admin', 'Approved');

-- --------------------------------------------------------

--
-- Table structure for table `tblresident`
--

CREATE TABLE `tblresident` (
  `id` int(11) NOT NULL,
  `lname` varchar(20) NOT NULL,
  `fname` varchar(20) NOT NULL,
  `mname` varchar(20) NOT NULL,
  `bdate` varchar(20) NOT NULL,
  `bplace` text NOT NULL,
  `age` int(11) NOT NULL,
  `barangay` varchar(120) NOT NULL,
  `zone` varchar(5) NOT NULL,
  `totalhousehold` int(5) NOT NULL,
  `differentlyabledperson` varchar(100) NOT NULL,
  `relationtohead` varchar(50) NOT NULL,
  `maritalstatus` varchar(50) NOT NULL,
  `bloodtype` varchar(10) NOT NULL,
  `civilstatus` varchar(20) NOT NULL,
  `occupation` varchar(100) NOT NULL,
  `monthlyincome` int(12) NOT NULL,
  `householdnum` int(11) NOT NULL,
  `lengthofstay` int(11) NOT NULL,
  `religion` varchar(50) NOT NULL,
  `nationality` varchar(50) NOT NULL,
  `gender` varchar(6) NOT NULL,
  `skills` text NOT NULL,
  `igpitID` int(11) NOT NULL,
  `philhealthNo` int(12) NOT NULL,
  `highestEducationalAttainment` varchar(50) NOT NULL,
  `houseOwnershipStatus` varchar(50) NOT NULL,
  `landOwnershipStatus` varchar(20) NOT NULL,
  `dwellingtype` varchar(20) NOT NULL,
  `waterUsage` varchar(20) NOT NULL,
  `lightningFacilities` varchar(20) NOT NULL,
  `sanitaryToilet` varchar(20) NOT NULL,
  `formerAddress` text NOT NULL,
  `remarks` text NOT NULL,
  `image` text NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblresident`
--

INSERT INTO `tblresident` (`id`, `lname`, `fname`, `mname`, `bdate`, `bplace`, `age`, `barangay`, `zone`, `totalhousehold`, `differentlyabledperson`, `relationtohead`, `maritalstatus`, `bloodtype`, `civilstatus`, `occupation`, `monthlyincome`, `householdnum`, `lengthofstay`, `religion`, `nationality`, `gender`, `skills`, `igpitID`, `philhealthNo`, `highestEducationalAttainment`, `houseOwnershipStatus`, `landOwnershipStatus`, `dwellingtype`, `waterUsage`, `lightningFacilities`, `sanitaryToilet`, `formerAddress`, `remarks`, `image`, `username`, `password`) VALUES
(11, 'Sample1', 'User1', 'Brgy1', '2017-01-01', 'dfsd1', 1, 'asdf', '2', 3, 'asdf', 'asdf', 'saf', 'sadf', 'fsd', 'adfs', 1, 1, 7, 'asd', 'asd', 'Female', 'asda1', 2, 2211, 'Doctorate degree', 'Live with Parents/Re', '1st Option', '1st Option', 'dsad11', '2211', 'dsfs11', 'ddsfd111', 'fdgfd11', '1482037013441_bg.PNG', 'qqq', 'qqq'),
(12, 'sda', 'as', 'das', '2016-01-01', 'adda', 1, '2323', '0', 5, '', '', '', '', '', '', 45, 2, 6, 'ada', 'sda', 'Male', 'sasda', 2, 3, 'Elementary', 'Rent', '2nd Option', '1st Option', 'sadas', '3', 'asdas', 'dsada', 'dsadsa', '1486342814017_Beach-Wallpapers.jpg', '', ''),
(13, 'a', 'asd', 'das', '2016-12-31', 'asdf', 2, '', '0', 0, '', '', '', '', '', '', 234, 3, 1, 'asd', 'asdf', '', 'saf', 3, 3, 'No schooling completed', 'Own Home', '1st Option', '1st Option', 'asdf', 'asdf', 'asdf', 'asdf', 'asdf', 'default.png', '', ''),
(14, 'sdf', 'das', 'das', '2016-01-01', 'dsf', 2, '', '0', 0, '', '', '', '', '', '', 234, 2, 3, 'asdf', 'asdf', 'Male', 'asf', 2, 2, 'No schooling completed', 'Own Home', '1st Option', '1st Option', 'asf', 'sdf', 'asdf', 'asdf', 'asd', '1482037013441_bg.PNG', '', ''),
(15, 'jay', 'dsf', 'asdf', '2017-01-19', 'sdfa', 2, 'sdaf', '23', 23, 'sdf', 'adf', 'asd', 'asdf', 'adf', 'adsf', 23123, 23, 23, 'asd', 'dsf', 'Male', 'asdf', 23, 23, 'No schooling completed', 'Own Home', 'Owned', '1st Option', 'Faucet', 'Electric', 'Water-sealed', 'asdfa', 'asfa', 'default.png', '', ''),
(16, 'jayjay', 'asd', 'asd', '2017-01-02', 'sad', 23, 'asd', '23', 23, 'ad', 'asd', 'asd', 'as', 'asd', 'asd', 43, 23, 23, 'asd', 'asd', 'Male', 'sad', 23, 23, 'No schooling completed', 'Own Home', 'Owned', '1st Option', 'Faucet', 'Electric', 'Water-sealed', 'asd', 'asd', 'default.png', '', ''),
(17, 'qqq', 'www', 'eee', '2024-12-01', 'q', 0, 'qwe', '1', 1, '1', '1', 'q', '1', '1', '1', 1, 1, 1, '1', '1', 'Male', '1', 1, 1, 'Elementary', 'Own Home', 'Owned', '1st Option', 'Faucet', 'Electric', 'Water-sealed', '1', '1', '1734456638879_miming.jpg', '', ''),
(18, 'miming', 'cat ', 'x', '2024-12-05', 'q', 0, 'q', '1', 1, 'e', 'q', 'e', 'q', '1', '1', 1, 1, 1, '1', '1', 'Male', '1', 1, 1, 'Elementary', 'Rent', 'Landless', '1st Option', 'Faucet', 'Electric', 'Antipolo', '1', '1', '1734506597621_miming2.jpg', '', ''),
(19, 'ming', 'ming', 'ming', '2024-12-06', '1', 0, '1', '1', 1, '1', '1', '1', '1', '1', '1', 1, 1, 1, '1', '1', 'Male', '1', 1, 1, 'High school graduate', 'Rent', 'Landless', '2nd Option', 'Deep Well', 'Lamp', 'Antipolo', '1', '1', '1734893100341_miming3.jpg', '', ''),
(20, 'Resident', 'test', 'test', '2024-12-11', '1', 0, '1', '1', 1, '1', '1', '1', '1', '1', '1', 1, 1, 1, '1', '1', 'Male', '1', 1, 1, 'Elementary', 'Rent', 'Owned', '2nd Option', 'Faucet', 'Lamp', 'Antipolo', '1', '1', '1734894247732_miming4.jpg', '', ''),
(21, 'qwer', 'qwer', 'qwer', '2025-01-01', 'q', 0, '', 'q', 1, 'q', 'q', 'q', 'q', 'q', 'q', 1, 1, 1, 'q', 'q', 'Male', '', 0, 0, 'Elementary', 'Rent', 'Owned', '1st Option', '', '', '', 'q', 'q', '1735935950655_miming5.jpg', '', ''),
(22, '123', '123123', '123132', '2025-01-01', '1', 0, '', '1', 1, '1', '1', '1', '1', '1', 'Employed', 1, 1, 1, '1', '1', 'Male', '', 0, 0, 'High school, undergrad', 'Rent', 'Landless', '2nd Option', '', '', '', '1', '1', '1735937320627_miming6.jpg', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `tblstaff`
--

CREATE TABLE `tblstaff` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblstaff`
--

INSERT INTO `tblstaff` (`id`, `name`, `username`, `password`) VALUES
(1, 'sad', 'asd', 'asd'),
(2, '123123', 'qqq', 'qqq'),
(3, 'qwe', 'qwe', '123456789'),
(4, 'asdd', 'asdd', 'asddasdasdddasdasdd'),
(5, 'assd', 'assd', 'Asdasdasdqwdsdqr'),
(6, 'aasd', 'aasd', 'Qweqweqwee');

-- --------------------------------------------------------

--
-- Table structure for table `tbluser`
--

CREATE TABLE `tbluser` (
  `id` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `type` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbluser`
--

INSERT INTO `tbluser` (`id`, `username`, `password`, `type`) VALUES
(1, 'admin', '123456789', 'administrator'),
(2, 'zone', '123456789', 'zoneleader');

-- --------------------------------------------------------

--
-- Table structure for table `tblzone`
--

CREATE TABLE `tblzone` (
  `id` int(5) NOT NULL,
  `zone` varchar(10) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblzone`
--

INSERT INTO `tblzone` (`id`, `zone`, `username`, `password`) VALUES
(0, '2', 'qwe', 'Q123456789'),
(2, '4', 'zone1', '123456789');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tblactivity`
--
ALTER TABLE `tblactivity`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblactivityphoto`
--
ALTER TABLE `tblactivityphoto`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblblotter`
--
ALTER TABLE `tblblotter`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcedula`
--
ALTER TABLE `tblcedula`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblclearance`
--
ALTER TABLE `tblclearance`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblclearance2`
--
ALTER TABLE `tblclearance2`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblfiles`
--
ALTER TABLE `tblfiles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblhousehold`
--
ALTER TABLE `tblhousehold`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbllogs`
--
ALTER TABLE `tbllogs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblofficial`
--
ALTER TABLE `tblofficial`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblpermit`
--
ALTER TABLE `tblpermit`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblresident`
--
ALTER TABLE `tblresident`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblstaff`
--
ALTER TABLE `tblstaff`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbluser`
--
ALTER TABLE `tbluser`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblzone`
--
ALTER TABLE `tblzone`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tblactivity`
--
ALTER TABLE `tblactivity`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tblactivityphoto`
--
ALTER TABLE `tblactivityphoto`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `tblblotter`
--
ALTER TABLE `tblblotter`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tblcedula`
--
ALTER TABLE `tblcedula`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `tblclearance`
--
ALTER TABLE `tblclearance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tblclearance2`
--
ALTER TABLE `tblclearance2`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tblfiles`
--
ALTER TABLE `tblfiles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblhousehold`
--
ALTER TABLE `tblhousehold`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbllogs`
--
ALTER TABLE `tbllogs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=85;

--
-- AUTO_INCREMENT for table `tblofficial`
--
ALTER TABLE `tblofficial`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tblpermit`
--
ALTER TABLE `tblpermit`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tblresident`
--
ALTER TABLE `tblresident`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `tblstaff`
--
ALTER TABLE `tblstaff`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbluser`
--
ALTER TABLE `tbluser`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
