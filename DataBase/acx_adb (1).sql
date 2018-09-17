-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Feb 09, 2015 at 01:07 PM
-- Server version: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `acx.adb`
--

-- --------------------------------------------------------

--
-- Table structure for table `dependents`
--

CREATE TABLE IF NOT EXISTS `dependents` (
  `dependent_id` int(11) NOT NULL AUTO_INCREMENT,
  `dependent_givenname` varchar(100) NOT NULL,
  `dependent_surname` varchar(100) NOT NULL,
  `dependent_middlename` varchar(100) NOT NULL,
  `birthdate` varchar(100) NOT NULL,
  `relationship` varchar(100) NOT NULL,
  `member_id` int(11) NOT NULL,
  PRIMARY KEY (`dependent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `members`
--

CREATE TABLE IF NOT EXISTS `members` (
  `member_id` int(11) NOT NULL AUTO_INCREMENT,
  `card_number` varchar(100) NOT NULL,
  `given_name` varchar(20) NOT NULL,
  `surname` varchar(20) NOT NULL,
  `middlename` varchar(20) NOT NULL,
  `sex` varchar(6) NOT NULL,
  `address` varchar(100) NOT NULL,
  `contact_no` varchar(50) NOT NULL,
  `age` int(11) NOT NULL,
  `date_of_birth` varchar(50) NOT NULL,
  `place_of_birth` varchar(100) NOT NULL,
  `civil_status` varchar(50) NOT NULL,
  `voters_id` varchar(11) NOT NULL,
  `postal_code` varchar(10) NOT NULL,
  `philhealth_membership` varchar(100) NOT NULL,
  `philhealth_number` varchar(11) NOT NULL,
  `philhealth_enrollment_sponsor` varchar(100) NOT NULL,
  `spouse_surname` varchar(50) NOT NULL,
  `spouse_given_name` varchar(50) NOT NULL,
  `spouse_middlename` varchar(50) NOT NULL,
  `name_of_employer` varchar(100) NOT NULL,
  `ave_income` varchar(11) NOT NULL,
  `employment_status` varchar(50) NOT NULL,
  PRIMARY KEY (`member_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=15 ;

--
-- Dumping data for table `members`
--

INSERT INTO `members` (`member_id`, `card_number`, `given_name`, `surname`, `middlename`, `sex`, `address`, `contact_no`, `age`, `date_of_birth`, `place_of_birth`, `civil_status`, `voters_id`, `postal_code`, `philhealth_membership`, `philhealth_number`, `philhealth_enrollment_sponsor`, `spouse_surname`, `spouse_given_name`, `spouse_middlename`, `name_of_employer`, `ave_income`, `employment_status`) VALUES
(14, '00000001', 'Aisah', 'Prito', 'M', 'Female', 'Davao City', '09071919224', 26, '02/20/1989', 'Lanao del Sur', 'Single', '', '8000', '', '', '', '', '', '', '', '12000', 'House-Wife/Husband');

-- --------------------------------------------------------

--
-- Table structure for table `program_coordinator`
--

CREATE TABLE IF NOT EXISTS `program_coordinator` (
  `program_coordinator_id` int(11) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(20) NOT NULL,
  `lastname` varchar(20) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `program_coordinator_in` varchar(100) NOT NULL,
  `contact_no` varchar(11) NOT NULL,
  `card_number` varchar(50) NOT NULL,
  `status` varchar(20) NOT NULL,
  PRIMARY KEY (`program_coordinator_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `program_coordinator`
--

INSERT INTO `program_coordinator` (`program_coordinator_id`, `firstname`, `lastname`, `username`, `password`, `program_coordinator_in`, `contact_no`, `card_number`, `status`) VALUES
(4, 'Dex', 'Delta', 'dex', 'dex', 'Davao City', '09071919224', '09071919224', ''),
(5, 'Aquel', 'Cuban', 'test', 'test', 'Davao City', '09094873927', '2', '');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE IF NOT EXISTS `student` (
  `student_id` int(11) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(100) NOT NULL,
  `lastname` varchar(100) NOT NULL,
  `class_id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `location` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL,
  PRIMARY KEY (`student_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=209 ;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`student_id`, `firstname`, `lastname`, `class_id`, `username`, `password`, `location`, `status`) VALUES
(72, 'Jayvon', 'Pig-ao', 13, '21100547', 'test', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered'),
(71, 'Noli', 'Mendoza', 13, '21100556', 'noledel', 'uploads/Africa.jpg', 'Registered'),
(134, 'Victor Anthony', 'Jacobo', 12, '21101050', 'akositon', 'uploads/win_boot_screen_16_9_by_medi_dadu-d4s7dc1.gif', 'Registered'),
(135, 'Albert Kezzel', 'Naynay', 14, '20101361', '', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered'),
(136, 'Jorgielyn', 'Serfino', 7, '20100331', '', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered'),
(137, 'Wina Mae', 'Espenorio', 8, '20100447', '', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered'),
(138, 'Brian Paul', 'Sablan', 7, '29000557', '', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered'),
(139, 'Rodzil', 'Camato', 7, '20100RC', '', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered'),
(140, 'Dean Martin', 'Tingson', 14, '21100665', '', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered'),
(141, 'Jared Reu', 'Windam', 15, '21100695', 'iloveyoujam', 'uploads/1463666_678111108874417_1795412912_n.jpg', 'Registered'),
(142, 'Lee Ann', 'Vertucio', 12, '21100351', '', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered'),
(143, 'Danica', 'Lamis', 12, '21100396', '', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered'),
(144, 'Neovi', 'Devierte', 12, '21100557', '', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered'),
(145, 'Eril Pio', 'Mercado', 12, '21100291', '', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered'),
(146, 'Johnedel', 'Bauno', 12, '21100411', '', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered'),
(147, 'Jerwin', 'Delos Reyes', 12, '21100369', '', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered'),
(148, 'Jendrix', 'Victosa', 12, '21100431', '', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered'),
(149, 'Jebson', 'Tordillos', 12, '21100406', '', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered'),
(150, 'Jethro', 'Pansales', 12, '21101273', '', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered'),
(151, 'Karyl June', 'Bacobo', 12, '21100895', '', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered'),
(152, 'Kristelle Shaine', 'Rubi', 12, '21101063', '', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered'),
(153, 'Richelle', 'Villarmia', 12, '20101392', '', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered'),
(154, 'Mae Ann', 'Panugaling', 12, '21100904', '', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered'),
(155, 'Ma. Roxette', 'Infante', 12, '21100421', '', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered'),
(156, 'Savrena Joy', 'Rael', 12, '2100287', '', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered'),
(157, 'Ace John', 'Casuyon', 12, '21100393', 'DianaraSayon', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Registered'),
(158, 'Rose Mae', 'Pido', 12, '21101195', '', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered'),
(159, 'Mary Ann', 'Panaguiton', 12, '21100701', '', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered'),
(162, 'kimberly kaye', 'salvatierra', 14, '21101182', 'kimzteng', 'uploads/29001002.jpg', 'Registered'),
(164, 'Alit', 'Arvin', 14, '20101605', '', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered'),
(165, 'Ana Mae', 'Alquizar', 14, '21100785', '', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered'),
(166, 'Thessalonica', 'Arroz', 14, '21100651', '', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered'),
(167, 'Leslie', 'Campo', 14, '21100265', '', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered'),
(168, 'Ace', 'Casolino', 14, '27000921', '', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered'),
(169, 'Michael Jed', 'Flores', 14, '21100820', '', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered'),
(172, 'Hennie Rose', 'Laz', 14, '21100805', '', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered'),
(171, 'Joy', 'Macahilig', 14, '21100464', '', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered'),
(173, 'Ma. Nieva', 'Manuel ', 14, '21100711', '', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered'),
(174, 'Devina', 'Navarro', 14, '21100711', '', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered'),
(175, 'Aimee', 'Orlido', 14, '21100654', '', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered'),
(176, 'Mary Grace', 'Quizan', 14, '21100772', '', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered'),
(177, 'John Christopher', 'Reguindin', 14, '21100418', '', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered'),
(178, 'Mary Ann', 'Somosa', 14, '21101150', '', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered'),
(179, 'Marrianne', 'Tumala', 14, '21100710', 'test', 'uploads/win_boot_screen_16_9_by_medi_dadu-d4s7dc1.gif', 'Registered'),
(180, 'Deo Christopher', 'Tribaco', 14, '21101227', '', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered'),
(181, 'Jerson', 'Vargas', 14, '21100819', '', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered'),
(182, 'Valencia', 'Jeralice', 14, '29000405', '', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered'),
(183, 'Cristine', 'Yanson', 14, '21101148', '', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered'),
(184, 'Ariane', 'Alix', 17, '21201166', '', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered'),
(185, 'Mark Arvin', 'Arandilla', 17, '21201453', '', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered'),
(186, 'Ryan Carl', 'Biaquis', 17, '21201244', '', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered'),
(187, 'Ria', 'Bitar', 17, '21201282', '', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered'),
(188, 'Jeremae', 'Bustamante', 17, '21200798', '', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered'),
(189, 'Rhen Mark', 'Callado', 17, '21201012', '', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered'),
(190, 'Ma. Geraldine', 'Carisma', 17, '21201219', '', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered'),
(191, 'Jenny', 'Casapao', 17, '21200855', '', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered'),
(192, 'Welson', 'Castro', 17, '120733', '', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered'),
(193, 'Kimberly Hope', 'Centina', 17, '21201338', '', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered'),
(194, 'Sandra', 'Gomez', 17, '21201335', '', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered'),
(195, 'Dona Jean', 'Guardialao', 17, '21201113', '', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered'),
(196, 'Jeara Mae', 'Guttierrez', 17, '21200782', '', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered'),
(197, 'Mary Joy', 'Jimenez', 17, '21201437', '', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered'),
(198, 'Cyril', 'Lambayong', 17, '21201163', '', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered'),
(199, 'Angelie', 'Lape', 17, '21201356', '', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered'),
(200, 'Jamine', 'Navarosa', 17, '21201115', '', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered'),
(201, 'Allen Joshua', 'Nicor', 17, '21201430', '', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered'),
(202, 'Charis', 'Onate', 17, '21200984', '', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered'),
(203, 'Ikea', 'Padonio', 17, '20100527', '', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered'),
(204, 'Marissa', 'Pasco', 17, '21200935', '', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered'),
(205, 'Kenneth', 'Sayon', 17, '21201268', '', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered'),
(206, 'Mary Grace', 'Morales', 14, '21100293', '', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered'),
(207, 'Danica', 'Delarmente', 14, '21100613', '', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered'),
(208, 'Irish Dawn', 'Belo', 19, '21300413', 'olebirish', 'uploads/Desert.jpg', 'Registered');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `firstname` varchar(100) NOT NULL,
  `lastname` varchar(100) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=17 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `username`, `password`, `firstname`, `lastname`) VALUES
(16, 'admin', 'admin', 'Web', 'Master');

-- --------------------------------------------------------

--
-- Table structure for table `user_log`
--

CREATE TABLE IF NOT EXISTS `user_log` (
  `user_log_id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(25) NOT NULL,
  `login_date` varchar(30) NOT NULL,
  `logout_date` varchar(30) NOT NULL,
  `user_id` int(11) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `contact_no` varchar(11) NOT NULL,
  `address` varchar(50) NOT NULL,
  PRIMARY KEY (`user_log_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=136 ;

--
-- Dumping data for table `user_log`
--

INSERT INTO `user_log` (`user_log_id`, `username`, `login_date`, `logout_date`, `user_id`, `firstname`, `lastname`, `contact_no`, `address`) VALUES
(21, 'ad', '2015-01-28 10:41:14', '2015-02-09 20:07:15', 16, '', '', '', ''),
(22, 'ad', '2015-01-28 14:24:07', '2015-02-09 20:07:15', 16, '', '', '', ''),
(25, 'admin', '2015-01-28 14:40:01', '2015-02-09 20:07:15', 16, '', '', '', ''),
(26, 'admin', '2015-01-28 14:58:46', '2015-02-09 20:07:15', 16, '', '', '', ''),
(27, 'admin', '2015-01-28 15:06:41', '2015-02-09 20:07:15', 16, '', '', '', ''),
(28, 'admin', '2015-01-28 15:13:17', '2015-02-09 20:07:15', 16, '', '', '', ''),
(29, 'admin', '2015-01-29 12:03:21', '2015-02-09 20:07:15', 16, '', '', '', ''),
(30, 'dex', '2015-01-29 12:41:17', '2015-02-09 20:07:28', 4, '', '', '', ''),
(31, 'dex', '2015-01-29 12:41:20', '2015-02-09 20:07:28', 4, '', '', '', ''),
(32, 'dex', '2015-01-29 12:41:20', '2015-02-09 20:07:28', 4, '', '', '', ''),
(33, 'dex', '2015-01-29 12:41:20', '2015-02-09 20:07:28', 4, '', '', '', ''),
(34, 'dex', '2015-01-29 12:41:21', '2015-02-09 20:07:28', 4, '', '', '', ''),
(35, 'dex', '2015-01-29 12:41:21', '2015-02-09 20:07:28', 4, '', '', '', ''),
(36, 'dex', '2015-01-29 12:41:21', '2015-02-09 20:07:28', 4, '', '', '', ''),
(37, 'dex', '2015-01-29 12:41:21', '2015-02-09 20:07:28', 4, '', '', '', ''),
(38, 'dex', '2015-01-29 12:41:21', '2015-02-09 20:07:28', 4, '', '', '', ''),
(39, 'dex', '2015-01-29 12:41:21', '2015-02-09 20:07:28', 4, '', '', '', ''),
(40, 'dex', '2015-01-29 12:41:35', '2015-02-09 20:07:28', 4, '', '', '', ''),
(41, 'dex', '2015-01-29 12:41:36', '2015-02-09 20:07:28', 4, '', '', '', ''),
(42, 'dex', '2015-01-29 12:41:36', '2015-02-09 20:07:28', 4, '', '', '', ''),
(43, 'dex', '2015-01-29 12:41:37', '2015-02-09 20:07:28', 4, '', '', '', ''),
(44, 'dex', '2015-01-29 12:41:37', '2015-02-09 20:07:28', 4, '', '', '', ''),
(45, 'dex', '2015-01-29 12:41:43', '2015-02-09 20:07:28', 4, '', '', '', ''),
(46, 'dex', '2015-01-29 12:42:23', '2015-02-09 20:07:28', 4, '', '', '', ''),
(47, 'dex', '2015-01-29 12:42:32', '2015-02-09 20:07:28', 4, '', '', '', ''),
(48, 'dex', '2015-01-29 12:43:15', '2015-02-09 20:07:28', 4, '', '', '', ''),
(49, 'dex', '2015-01-29 12:43:41', '2015-02-09 20:07:28', 4, '', '', '', ''),
(50, 'admin', '2015-01-29 12:43:51', '2015-02-09 20:07:15', 16, '', '', '', ''),
(51, 'dex', '2015-01-29 12:49:33', '2015-02-09 20:07:28', 4, '', '', '', ''),
(52, 'dex', '2015-01-29 12:51:57', '2015-02-09 20:07:28', 4, '', '', '', ''),
(53, 'asd', '2015-01-29 12:52:06', '2015-02-01 15:05:07', 5, '', '', '', ''),
(54, 'admin', '2015-01-29 12:59:05', '2015-02-09 20:07:15', 16, '', '', '', ''),
(55, 'dex', '2015-01-29 13:10:19', '2015-02-09 20:07:28', 4, '', '', '', ''),
(56, 'dex', '2015-01-29 13:22:41', '2015-02-09 20:07:28', 4, '', '', '', ''),
(57, 'admin', '2015-01-29 14:09:34', '2015-02-09 20:07:15', 16, '', '', '', ''),
(58, 'dex', '2015-01-29 14:15:23', '2015-02-09 20:07:28', 4, '', '', '', ''),
(59, 'admin', '2015-01-29 14:18:02', '2015-02-09 20:07:15', 16, '', '', '', ''),
(60, 'dex', '2015-01-29 14:18:12', '2015-02-09 20:07:28', 4, '', '', '', ''),
(61, 'dex', '2015-01-29 14:19:31', '2015-02-09 20:07:28', 4, '', '', '', ''),
(62, 'dex', '2015-01-29 14:25:11', '2015-02-09 20:07:28', 4, '', '', '', ''),
(63, 'dex', '2015-01-29 14:25:42', '2015-02-09 20:07:28', 4, '', '', '', ''),
(64, 'admin', '2015-01-29 14:26:50', '2015-02-09 20:07:15', 16, '', '', '', ''),
(65, 'dex', '2015-01-29 14:44:04', '2015-02-09 20:07:28', 4, '', '', '', ''),
(66, 'dex', '2015-01-29 14:48:49', '2015-02-09 20:07:28', 4, '', '', '', ''),
(67, 'admin', '2015-01-29 14:49:34', '2015-02-09 20:07:15', 16, '', '', '', ''),
(68, 'dex', '2015-01-29 14:50:57', '2015-02-09 20:07:28', 4, '', '', '', ''),
(69, 'dex', '2015-01-29 14:51:01', '2015-02-09 20:07:28', 4, '', '', '', ''),
(70, 'dex', '2015-01-29 14:52:50', '2015-02-09 20:07:28', 4, '', '', '', ''),
(71, 'admin', '2015-01-29 14:52:58', '2015-02-09 20:07:15', 16, '', '', '', ''),
(72, 'admin', '2015-01-29 14:53:01', '2015-02-09 20:07:15', 16, '', '', '', ''),
(73, 'admin', '2015-01-29 14:53:02', '2015-02-09 20:07:15', 16, '', '', '', ''),
(74, 'admin', '2015-01-29 14:53:02', '2015-02-09 20:07:15', 16, '', '', '', ''),
(75, 'admin', '2015-01-29 14:53:16', '2015-02-09 20:07:15', 16, '', '', '', ''),
(76, 'admin', '2015-01-29 14:53:17', '2015-02-09 20:07:15', 16, '', '', '', ''),
(77, 'admin', '2015-01-29 14:53:21', '2015-02-09 20:07:15', 16, '', '', '', ''),
(78, 'dex', '2015-01-29 14:53:51', '2015-02-09 20:07:28', 4, '', '', '', ''),
(79, 'admin', '2015-01-29 14:54:10', '2015-02-09 20:07:15', 16, '', '', '', ''),
(80, 'dex', '2015-01-29 14:56:50', '2015-02-09 20:07:28', 4, '', '', '', ''),
(81, 'admin', '2015-01-29 14:57:00', '2015-02-09 20:07:15', 16, '', '', '', ''),
(82, 'dex', '2015-01-29 15:40:41', '2015-02-09 20:07:28', 4, '', '', '', ''),
(83, 'dex', '2015-01-30 09:04:51', '2015-02-09 20:07:28', 4, '', '', '', ''),
(84, 'admin', '2015-01-30 09:05:11', '2015-02-09 20:07:15', 16, '', '', '', ''),
(85, 'admin', '2015-01-30 09:33:40', '2015-02-09 20:07:15', 16, '', '', '', ''),
(86, 'test', '2015-01-30 09:41:14', '2015-02-01 15:05:07', 5, '', '', '', ''),
(87, 'test', '2015-01-30 09:41:42', '2015-02-01 15:05:07', 5, '', '', '', ''),
(88, 'test', '2015-01-30 10:54:34', '2015-02-01 15:05:07', 5, '', '', '', ''),
(89, 'admin', '2015-01-30 10:54:49', '2015-02-09 20:07:15', 16, '', '', '', ''),
(90, 'test', '2015-01-30 10:56:58', '2015-02-01 15:05:07', 5, '', '', '', ''),
(91, 'test', '2015-01-30 10:58:09', '2015-02-01 15:05:07', 5, '', '', '', ''),
(92, 'dex', '2015-01-30 10:59:25', '2015-02-09 20:07:28', 4, '', '', '', ''),
(93, 'dex', '2015-01-30 10:59:33', '2015-02-09 20:07:28', 4, '', '', '', ''),
(94, 'test', '2015-01-30 11:00:11', '2015-02-01 15:05:07', 5, '', '', '', ''),
(95, 'dex', '2015-01-30 11:00:34', '2015-02-09 20:07:28', 4, '', '', '', ''),
(96, 'test', '2015-01-30 11:01:02', '2015-02-01 15:05:07', 5, '', '', '', ''),
(97, 'dex', '2015-01-30 11:01:44', '2015-02-09 20:07:28', 4, '', '', '', ''),
(98, 'test', '2015-01-30 11:02:20', '2015-02-01 15:05:07', 5, '', '', '', ''),
(99, 'test', '2015-01-30 11:02:34', '2015-02-01 15:05:07', 5, '', '', '', ''),
(100, 'test', '2015-01-30 11:02:49', '2015-02-01 15:05:07', 5, '', '', '', ''),
(101, 'dex', '2015-01-30 11:04:27', '2015-02-09 20:07:28', 4, '', '', '', ''),
(102, 'admin', '2015-01-30 11:04:41', '2015-02-09 20:07:15', 16, '', '', '', ''),
(103, 'dex', '2015-01-30 11:10:18', '2015-02-09 20:07:28', 4, '', '', '', ''),
(104, 'admin', '2015-01-30 11:10:40', '2015-02-09 20:07:15', 16, '', '', '', ''),
(105, 'admin', '2015-01-31 12:47:39', '2015-02-09 20:07:15', 16, '', '', '', ''),
(106, 'admin', '2015-01-31 22:08:25', '2015-02-09 20:07:15', 16, '', '', '', ''),
(107, 'admin', '2015-02-01 08:27:20', '2015-02-09 20:07:15', 16, '', '', '', ''),
(108, 'admin', '2015-02-01 08:47:10', '2015-02-09 20:07:15', 16, '', '', '', ''),
(109, 'dex', '2015-02-01 08:51:20', '2015-02-09 20:07:28', 4, '', '', '', ''),
(110, 'admin', '2015-02-01 08:54:29', '2015-02-09 20:07:15', 16, '', '', '', ''),
(111, 'admin', '2015-02-01 14:52:24', '2015-02-09 20:07:15', 16, '', '', '', ''),
(112, 'admin', '2015-02-01 15:03:50', '2015-02-09 20:07:15', 16, '', '', '', ''),
(113, 'test', '2015-02-01 15:04:08', '2015-02-01 15:05:07', 5, '', '', '', ''),
(114, 'admin', '2015-02-05 09:42:40', '2015-02-09 20:07:15', 16, '', '', '', ''),
(115, 'admin', '2015-02-05 09:50:57', '2015-02-09 20:07:15', 16, '', '', '', ''),
(116, 'admin', '2015-02-05 09:51:47', '2015-02-09 20:07:15', 16, '', '', '', ''),
(117, 'admin', '2015-02-05 09:52:52', '2015-02-09 20:07:15', 16, '', '', '', ''),
(118, 'admin', '2015-02-05 11:34:46', '2015-02-09 20:07:15', 16, '', '', '', ''),
(119, 'admin', '2015-02-05 11:58:30', '2015-02-09 20:07:15', 16, '', '', '', ''),
(120, 'admin', '2015-02-05 12:04:34', '2015-02-09 20:07:15', 16, '', '', '', ''),
(121, 'admin', '2015-02-05 12:06:19', '2015-02-09 20:07:15', 16, '', '', '', ''),
(122, 'admin', '2015-02-05 12:07:56', '2015-02-09 20:07:15', 16, '', '', '', ''),
(123, 'admin', '2015-02-05 16:33:21', '2015-02-09 20:07:15', 16, '', '', '', ''),
(124, 'admin', '2015-02-05 16:34:34', '2015-02-09 20:07:15', 16, '', '', '', ''),
(125, 'dex', '2015-02-05 16:34:42', '2015-02-09 20:07:28', 4, '', '', '', ''),
(126, 'admin', '2015-02-05 16:41:15', '2015-02-09 20:07:15', 16, '', '', '', ''),
(127, 'admin', '2015-02-05 16:47:11', '2015-02-09 20:07:15', 16, '', '', '', ''),
(128, 'admin', '2015-02-05 16:52:40', '2015-02-09 20:07:15', 16, '', '', '', ''),
(129, 'admin', '2015-02-05 17:05:45', '2015-02-09 20:07:15', 16, '', '', '', ''),
(130, 'admin', '2015-02-05 17:17:32', '2015-02-09 20:07:15', 16, '', '', '', ''),
(131, 'admin', '2015-02-05 17:22:31', '2015-02-09 20:07:15', 16, '', '', '', ''),
(132, 'admin', '2015-02-05 18:09:44', '2015-02-09 20:07:15', 16, '', '', '', ''),
(133, 'admin', '2015-02-09 20:03:31', '2015-02-09 20:07:15', 16, '', '', '', ''),
(134, 'admin', '2015-02-09 20:07:09', '2015-02-09 20:07:15', 16, '', '', '', ''),
(135, 'dex', '2015-02-09 20:07:20', '2015-02-09 20:07:28', 4, '', '', '', '');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
