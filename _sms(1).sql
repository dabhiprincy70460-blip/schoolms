-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 25, 2025 at 09:01 AM
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
-- Database: `_sms`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `s_no` int(20) NOT NULL,
  `id` varchar(30) NOT NULL,
  `fname` varchar(100) NOT NULL,
  `lname` varchar(100) NOT NULL,
  `dob` varchar(20) NOT NULL,
  `image` varchar(40) NOT NULL DEFAULT '1701517055user.png',
  `phone` varchar(20) NOT NULL,
  `gender` varchar(20) NOT NULL,
  `address` varchar(700) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`s_no`, `id`, `fname`, `lname`, `dob`, `image`, `phone`, `gender`, `address`) VALUES
(2, 'A9876543210', 'patel', 'krishna', '12/11/2024', 'A98765432101744265506.jpg', '1234567890', 'Male', 'no where');

-- --------------------------------------------------------

--
-- Table structure for table `attendence`
--

CREATE TABLE `attendence` (
  `s_no` int(20) NOT NULL,
  `student_id` varchar(40) NOT NULL,
  `attendence` varchar(10) NOT NULL,
  `class` varchar(30) NOT NULL,
  `section` varchar(5) NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `attendence`
--

INSERT INTO `attendence` (`s_no`, `student_id`, `attendence`, `class`, `section`, `date`) VALUES
(1, 'S1718791292', '1', '12c', 'A', '2024-06-19 15:32:37'),
(2, 'S1741709542', '1', '12c', 'A', '2025-03-17 19:22:01'),
(3, 'S1718791292', '1', '12c', 'A', '2025-03-17 19:22:01'),
(4, 'S1741712721', '1', '12s', 'B', '2025-03-17 19:22:22'),
(5, 'S1741710716', '0', '12s', 'A', '2025-03-17 19:22:35'),
(6, 'S1741709542', '1', '12c', 'A', '2025-04-11 10:18:27');

-- --------------------------------------------------------

--
-- Table structure for table `buses`
--

CREATE TABLE `buses` (
  `s_no` int(11) NOT NULL,
  `bus_id` varchar(20) NOT NULL,
  `bus_title` varchar(100) NOT NULL,
  `bus_number` varchar(20) NOT NULL,
  `request` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `buses`
--

INSERT INTO `buses` (`s_no`, `bus_id`, `bus_title`, `bus_number`, `request`) VALUES
(10, '1718791847', 'Bus 1', 'XXXXXX', ''),
(11, '1718791949', 'Bus 2', '999999', ''),
(12, '1718791984', 'Another bus', 'OOOOOOOO', '');

-- --------------------------------------------------------

--
-- Table structure for table `bus_root`
--

CREATE TABLE `bus_root` (
  `s_no` int(11) NOT NULL,
  `bus_id` varchar(20) NOT NULL,
  `location` varchar(255) NOT NULL,
  `arrival_time` varchar(20) NOT NULL,
  `serial` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bus_root`
--

INSERT INTO `bus_root` (`s_no`, `bus_id`, `location`, `arrival_time`, `serial`) VALUES
(7, '1718791847', 'Stop 1', '06:50 AM', 1),
(8, '1718791847', 'Stop 2', '07:00 AM', 2),
(9, '1718791847', 'Stop 3', '07:10 AM', 3),
(10, '1718791847', 'SCHOOL', '10:00 AM', 4),
(13, '1718791949', 'Stop z', '06:35 AM', 1),
(14, '1718791949', 'SCHOOL', '10:00 AM', 2),
(15, '1718791984', 'Stop x', '06:45 AM', 1),
(16, '1718791984', 'SCHOOL', '10:00 AM', 2);

-- --------------------------------------------------------

--
-- Table structure for table `bus_staff`
--

CREATE TABLE `bus_staff` (
  `s_no` int(11) NOT NULL,
  `id` varchar(20) NOT NULL,
  `bus_id` varchar(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `contact` varchar(10) NOT NULL,
  `role` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bus_staff`
--

INSERT INTO `bus_staff` (`s_no`, `id`, `bus_id`, `name`, `contact`, `role`) VALUES
(1, 'B1718791847', '1718791847', 'driver ', '8080808080', 'driver'),
(2, 'B1718791847', '1718791847', 'helper ', '0000000000', 'helper'),
(3, 'B1718791949', '1718791949', 'driver 2', '7897898988', 'driver'),
(4, 'B1718791949', '1718791949', 'helper', '7897898988', 'helper'),
(5, 'B1718791984', '1718791984', 'another driver', '7897897898', 'driver'),
(6, 'B1718791984', '1718791984', 'another helper', '7894568796', 'helper');

-- --------------------------------------------------------

--
-- Table structure for table `classes`
--

CREATE TABLE `classes` (
  `s_no` int(10) NOT NULL,
  `class` varchar(20) NOT NULL,
  `section` varchar(1) NOT NULL,
  `fees` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `exams`
--

CREATE TABLE `exams` (
  `s_no` int(20) NOT NULL,
  `exam_id` varchar(40) NOT NULL,
  `exam_title` varchar(512) NOT NULL,
  `subject` varchar(50) NOT NULL,
  `class` varchar(30) NOT NULL,
  `section` varchar(10) NOT NULL,
  `total_marks` varchar(10) NOT NULL,
  `passing_marks` varchar(10) NOT NULL,
  `timestamp` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `exams`
--

INSERT INTO `exams` (`s_no`, `exam_id`, `exam_title`, `subject`, `class`, `section`, `total_marks`, `passing_marks`, `timestamp`) VALUES
(3, 'E17187917486672ae442b976', 'Monthly test ', 'ALL', '12c', 'A', '100', '33', '2024-06-19 15:39:08'),
(4, 'E17187928006672b26095672', 'Hindi exam result', 'Hindi', '12c', 'A', '100', '33', '2024-06-19 15:56:40'),
(5, 'E17187929656672b305cbb25', 'sldfj', 'ALL', '12c', 'A', '100', '33', '2024-06-19 15:59:25');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `s_no` int(11) NOT NULL,
  `sender_id` varchar(20) NOT NULL,
  `receiver_id` varchar(20) NOT NULL,
  `msg` varchar(500) NOT NULL,
  `timestamp` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`s_no`, `sender_id`, `receiver_id`, `msg`, `timestamp`) VALUES
(7, 'T1718791191', 'S1718791292', 'Hello student', '2024-06-19 15:46:58'),
(8, 'T1718791191', 'S1718791292', 'You are so naughty\n', '2024-06-19 15:47:11');

-- --------------------------------------------------------

--
-- Table structure for table `fee_record`
--

CREATE TABLE `fee_record` (
  `s_no` int(11) NOT NULL,
  `id` varchar(20) NOT NULL,
  `month` varchar(20) NOT NULL,
  `other_collection` int(5) NOT NULL,
  `total` int(5) NOT NULL,
  `paid` int(5) NOT NULL,
  `balance` int(5) NOT NULL,
  `timestamp` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `leaves`
--

CREATE TABLE `leaves` (
  `s_no` int(10) NOT NULL,
  `sender_id` varchar(20) NOT NULL,
  `send_date` datetime NOT NULL DEFAULT current_timestamp(),
  `leave_type` varchar(100) NOT NULL,
  `leave_desc` varchar(255) NOT NULL,
  `start_date` datetime NOT NULL,
  `end_date` datetime NOT NULL,
  `status` varchar(10) NOT NULL DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `leaves`
--

INSERT INTO `leaves` (`s_no`, `sender_id`, `send_date`, `leave_type`, `leave_desc`, `start_date`, `end_date`, `status`) VALUES
(12, 'T1718791191', '2024-06-19 15:48:43', 'Medical Leave', 'accept my leave otherwise ....... ', '2024-06-20 00:00:00', '2024-06-27 00:00:00', 'rejected'),
(13, 'T1718791191', '2024-06-19 15:49:23', 'Casual Leave', 'I want some rest please give me leave', '2024-06-29 00:00:00', '2024-07-03 00:00:00', 'rejected');

-- --------------------------------------------------------

--
-- Table structure for table `marks`
--

CREATE TABLE `marks` (
  `s_no` int(20) NOT NULL,
  `exam_id` varchar(40) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `student_id` varchar(40) NOT NULL,
  `marks` varchar(10) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `marks`
--

INSERT INTO `marks` (`s_no`, `exam_id`, `subject`, `student_id`, `marks`) VALUES
(1, 'E17187917486672ae442b976', 'Hindi', 'S1718791292', '86'),
(2, 'E17187917486672ae442b976', 'Commerce', 'S1718791292', '62'),
(3, 'E17187917486672ae442b976', 'English', 'S1718791292', '59'),
(4, 'E17187928006672b26095672', 'Hindi', 'S1718791292', '33'),
(5, 'E17187929656672b305cbb25', 'Hindi', 'S1718791292', '55'),
(6, 'E17187929656672b305cbb25', 'Commerce', 'S1718791292', '55'),
(7, 'E17187929656672b305cbb25', 'English', 'S1718791292', '21');

-- --------------------------------------------------------

--
-- Table structure for table `notes`
--

CREATE TABLE `notes` (
  `s_no` int(20) NOT NULL,
  `sender_id` varchar(40) NOT NULL,
  `editor_id` varchar(40) NOT NULL,
  `class` varchar(50) NOT NULL,
  `subject` varchar(100) NOT NULL,
  `title` varchar(100) NOT NULL,
  `comment` varchar(1000) NOT NULL,
  `file` varchar(50) NOT NULL,
  `timestamp` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `notes`
--

INSERT INTO `notes` (`s_no`, `sender_id`, `editor_id`, `class`, `subject`, `title`, `comment`, `file`, `timestamp`) VALUES
(1, 'A9876543210', 'A9876543210', '12c', 'Hindi', 'Hindi Homework ', 'do this on time', 'A98765432101718791715.png', '2024-06-19 15:38:35');

-- --------------------------------------------------------

--
-- Table structure for table `notice`
--

CREATE TABLE `notice` (
  `s_no` int(20) NOT NULL,
  `sender_id` varchar(40) NOT NULL,
  `editor_id` varchar(40) NOT NULL,
  `title` varchar(100) NOT NULL,
  `body` varchar(1000) NOT NULL,
  `file` varchar(100) NOT NULL,
  `importance` varchar(5) NOT NULL DEFAULT '1',
  `timestamp` datetime NOT NULL DEFAULT current_timestamp(),
  `role` varchar(11) NOT NULL,
  `class` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `notice`
--

INSERT INTO `notice` (`s_no`, `sender_id`, `editor_id`, `title`, `body`, `file`, `importance`, `timestamp`, `role`, `class`) VALUES
(54, '', '', 'maha shivratri', 'holiday', '', '1', '2025-02-24 18:14:00', 'all', '----SELECT '),
(55, 'A9876543210', 'A9876543210', 'HOLI', 'HOLIDAY in day', 'A98765432101741707553.jpg', '1', '2025-03-11 21:09:13', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `s_no` int(20) NOT NULL,
  `sender_id` varchar(40) NOT NULL,
  `class` varchar(30) NOT NULL,
  `section` varchar(10) NOT NULL,
  `type` varchar(10) NOT NULL,
  `title` varchar(100) NOT NULL,
  `message` varchar(1000) NOT NULL,
  `file` varchar(50) NOT NULL,
  `datetime` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payroll`
--

CREATE TABLE `payroll` (
  `s_no` int(11) NOT NULL,
  `id` varchar(30) NOT NULL,
  `amount` int(11) NOT NULL,
  `date` varchar(30) NOT NULL,
  `name` varchar(50) NOT NULL,
  `account_no` varchar(40) NOT NULL,
  `ifsc_code` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `reminders`
--

CREATE TABLE `reminders` (
  `s_no` int(20) NOT NULL,
  `id` varchar(40) NOT NULL,
  `message` varchar(2000) NOT NULL,
  `status` varchar(15) NOT NULL DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `reminders`
--

INSERT INTO `reminders` (`s_no`, `id`, `message`, `status`) VALUES
(68, 'T1718791191', 'Post a homework daily', 'completed'),
(69, 'T1718791191', 'principal meeting', 'completed'),
(70, 'A9876543210', 'Reminder for myself : have a good day', 'completed'),
(71, 'A9876543210', '\nBest of luck', 'completed');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `s_no` int(20) NOT NULL,
  `id` varchar(40) NOT NULL,
  `fname` varchar(100) NOT NULL,
  `lname` varchar(100) NOT NULL,
  `father` varchar(200) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `class` varchar(20) NOT NULL,
  `section` varchar(50) NOT NULL,
  `dob` varchar(15) NOT NULL,
  `image` varchar(50) NOT NULL DEFAULT '1701517055user.png',
  `phone` varchar(15) NOT NULL,
  `email` varchar(100) NOT NULL,
  `address` varchar(200) NOT NULL,
  `city` varchar(50) NOT NULL,
  `zip` varchar(20) NOT NULL,
  `state` varchar(50) NOT NULL,
  `request_date` varchar(30) NOT NULL,
  `request_time` varchar(30) NOT NULL,
  `request` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`s_no`, `id`, `fname`, `lname`, `father`, `gender`, `class`, `section`, `dob`, `image`, `phone`, `email`, `address`, `city`, `zip`, `state`, `request_date`, `request_time`, `request`) VALUES
(2, 'S1718791292', 'dabhi', 'taksh', 'girishbhai', 'Male', '9', 'A', '05-11-2010', 'S17417084291741708429.jpg', '6352823345', 'taksh@gmail.com', 'ghoba', 'gariyadhar', '364525', 'Gujrat', '', '', ''),
(3, 'S1741709542', 'parmar', 'janvi', 'girishbhai', 'Female', '12c', 'A', '10-12-2006', 'S17417095421741709542.png', '9974603382', 'janvi@123gmail.com', 'girgadhda', 'girgadhda', '12345', 'Gujrat', '', '', ''),
(4, 'S1741710040', 'dhruti', 'chudashama', 'govindbhai', 'Female', '10', 'B', '09-12-2007', 'S17417100401741710040.png', '7698304567', 'dhrutu123@gmail.com', 'rajkot', 'thorala', '13112005', 'Gujrat', '', '', ''),
(5, 'S1741710340', 'vaishali', 'jadeja', 'vishalbhai', 'Female', '9', 'A', '02-12-2008', 'S17417103401741710340.png', '9974603248', 'vaishali@12345gmail.com', 'amreli', 'savarkundala', '15289', 'Gujrat', '', '', ''),
(6, 'S1741710716', 'rajesh', 'vala', 'girishbhai', 'Male', '12s', 'A', '11-12-2005', 'S17417107161741710716.png', '9974703345', 'rajesh@123.com', 'bhavanagar', 'palitana', '19917', 'Gujrat', '', '', ''),
(7, 'S1741712004', 'disha', 'jadeja', 'vishalbhai', 'Female', '9', 'B', '02-12-2011', 'S17417120041741712004.png', '9974129290', 'disha@123gmail.com', 'amreli', 'khambha', '123456', 'Gujrat', '', '', ''),
(8, 'S1741712409', 'vishakha', 'kapur', 'dilipbhai', 'Female', '11s', 'B', '07-12-2008', 'S17417124091741712409.png', '9984708277', 'vishakha@123gmail.com', 'vadodara', 'vadodara', '123456', 'Gujrat', '', '', ''),
(9, 'S1741712721', 'keval', 'joshi', 'mitalbhai', 'Male', '12s', 'B', '12-12-2007', 'S17417127211741712721.png', '9974640278', 'vishu123@gmail.com', 'kachtch', 'bhashu', '123456', 'Gujrat', '', '', ''),
(10, 'S1741713116', 'champaklal', 'gada', 'jentilal', 'Male', '11s', 'B', '01-02-0007', 'S17417131161741713116.png', '4738292938', 'champaklal1234@gmail.com', 'bhavanagar', 'mahuva', '1234567890', 'Gujrat', '', '', ''),
(11, 'S1742316284', 'dabhi ', 'sujal', 'jivanbhai', 'Male', '10', 'A', '18-02-2009', 'S17423162841742316284.png', '1234567890', 'sujal123@gmail.com', 'pasodra', 'surat', '123456', 'Gujrat', '', '', ''),
(12, 'S1742319453', 'dabhi', 'sujal', 'jivanbhai', 'Male', '9', 'A', '02-01-2006', 'S17423194531742319453.jpeg', '1234567890', 'sujal@gmail.com', 'pasodra', 'surat', '123456', 'Gujrat', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `student_guardian`
--

CREATE TABLE `student_guardian` (
  `s_no` int(20) NOT NULL,
  `id` varchar(40) NOT NULL,
  `gname` varchar(200) NOT NULL,
  `gphone` varchar(20) NOT NULL,
  `gaddress` varchar(200) NOT NULL,
  `gcity` varchar(100) NOT NULL,
  `gzip` varchar(50) NOT NULL,
  `relation` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `student_guardian`
--

INSERT INTO `student_guardian` (`s_no`, `id`, `gname`, `gphone`, `gaddress`, `gcity`, `gzip`, `relation`) VALUES
(1, 'S1718791292', 'Regan Clemons', '4567894562', 'Eum sit et laboriosa', 'Abbot', 'Hunter', 'Culpa odio laboriosa'),
(2, 'S1741708429', 'princyben', '7046057581', 'ghoba', 'garoyadhar', '364525', 'sister'),
(3, 'S1741709542', 'hiteshbhai', '7694507868', 'bhavnagar', 'mahuva', '123456', 'bhai'),
(4, 'S1741710040', 'aaditya', '9974603183', 'rajkot', 'thorala', '13112005', 'uncle'),
(5, 'S1741710340', 'shitalben', '7712508947', 'amreli ', 'savarkundala', '18181818', 'bhabhi'),
(6, 'S1741710716', 'kalpana', '9977134647', 'bhavanagar', 'palitana', '141614', 'sister'),
(7, 'S1741712004', 'ptiti', '9946253636', 'amreli', 'khambha', '1234567', 'mother in low'),
(8, 'S1741712409', 'rohitbhau', '6789364678', 'vadodara', 'vadodara', '1234567', 'jijaji'),
(9, 'S1741712721', 'jethalal', '6727803182', 'kachcht', 'bhachu', '678901', 'bhai'),
(10, 'S1741713116', 'vedang', '7788903124', 'bhavanagar', 'mahuva', 'isha', 'bhai'),
(11, 'S1742316284', 'dip', '2345678901', 'pasodra', 'surat', '123456', 'brother'),
(12, 'S1742319453', 'rajubhai', '2345678901', 'pasodra', 'surat', '123456', 'uncle');

-- --------------------------------------------------------

--
-- Table structure for table `subjects`
--

CREATE TABLE `subjects` (
  `s_no` int(20) NOT NULL,
  `subject_id` varchar(40) NOT NULL,
  `subject_name` varchar(100) NOT NULL,
  `class` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `subjects`
--

INSERT INTO `subjects` (`s_no`, `subject_id`, `subject_name`, `class`) VALUES
(1, '12c6672ac911a253', 'Hindi', '12c'),
(2, '12c6672ac9c45d68', 'Commerce', '12c'),
(3, '12c6672aca78c3c7', 'English', '12c'),
(4, '11c67f75fc1061ec', 'ACCOUNT', '11c'),
(5, '11c67f75fd18e8e7', 'maths', '11c'),
(6, '11c67f75fdc6499a', 'english', '11c'),
(7, '11c67f75fef8ce9c', 'gujarati', '11c'),
(8, '12s67f7600051908', 'english', '12s'),
(9, '12s67f760130ff89', 'gujarati', '12s'),
(10, '12s67f76021d6650', 'stat', '12s'),
(11, '12s67f7603d3740f', 'account', '12s'),
(12, '11s67f76047b6590', 'account', '11s'),
(13, '11s67f760518c95d', 'stat', '11s'),
(14, '1067f7607bee2f9', 'english', '10'),
(15, '1067f7608803dc3', 'gujarati', '10'),
(16, '1067f76091443cd', 'hindi', '10'),
(17, '1067f7609d5b7f9', 'social', '10'),
(18, '1067f760a8776ec', 'science', '10');

-- --------------------------------------------------------

--
-- Table structure for table `syllabus`
--

CREATE TABLE `syllabus` (
  `s_no` int(20) NOT NULL,
  `class` varchar(50) NOT NULL,
  `subject` varchar(100) NOT NULL,
  `file` varchar(100) NOT NULL DEFAULT '-1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `syllabus`
--

INSERT INTO `syllabus` (`s_no`, `class`, `subject`, `file`) VALUES
(12, '12c', 'Hindi', 'T17187911911742319474.jpg'),
(13, '12c', 'English', 'T17187911911718792285.png'),
(14, '9', 'Commerce', 'T17187911911742317708.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `teachers`
--

CREATE TABLE `teachers` (
  `s_no` int(20) NOT NULL,
  `id` varchar(40) NOT NULL,
  `fname` varchar(100) NOT NULL,
  `lname` varchar(100) NOT NULL,
  `father` varchar(150) NOT NULL,
  `subject` varchar(50) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `dob` varchar(20) NOT NULL,
  `image` varchar(30) NOT NULL DEFAULT '1701517055user.png',
  `phone` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `address` varchar(512) NOT NULL,
  `city` varchar(50) NOT NULL,
  `zip` varchar(20) NOT NULL,
  `state` varchar(50) NOT NULL,
  `class` varchar(20) NOT NULL,
  `section` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `teachers`
--

INSERT INTO `teachers` (`s_no`, `id`, `fname`, `lname`, `father`, `subject`, `gender`, `dob`, `image`, `phone`, `email`, `address`, `city`, `zip`, `state`, `class`, `section`) VALUES
(1, 'T1718791191', 'patel', 'kumar', '', 'Hindi', 'Male', '19-06-2024', 'T17187911911718792416.png', '7896541230', 'teacher@gmail.com', 'near admins house', 'home town', '478548', 'Delhi', '12c', 'A'),
(2, 'T1741707730', 'bambhaniya', 'isha', '', 'english', 'Female', '11-12-2005', '1701517055user.png', '9638104624', 'isha123@gmail.com', 'una', 'rajula', '123456', 'Gujrat', '12c', 'A'),
(3, 'T1741708041', 'bhuva', 'vaishali', '', 'gujrati', 'Female', '02-01-1999', '1701517055user.png', '9876543210', 'vaishali@gmail.com', 'amareli', 'lathi', '987654', 'Gujrat', '11c', 'B'),
(4, 'T1741708198', 'koladiya', 'yash', '', 'economics', 'Male', '06-03-2000', '1701517055user.png', '9823456767', 'yash34@gmail.com', 'mota varacha', 'surat', '674521', 'Gujrat', '11c', 'A'),
(5, 'T1741713426', 'vedang', 'der', '', 'account', 'Male', '21-12-1995', '1701517055user.png', '9948289129', 'vedang123@gmail.com', 'bhavanagar', 'mahuva', '192837465', 'Gujrat', '11c', 'A'),
(6, 'T1741713691', 'daya', 'makawana', '', 'maths', 'Female', '21-12-1996', '1701517055user.png', '6847834839', 'daya1234@gmail.com', 'amritsir', 'amritsir', '1929293', 'Panjab', '12s', 'A');

-- --------------------------------------------------------

--
-- Table structure for table `teacher_guardian`
--

CREATE TABLE `teacher_guardian` (
  `s_no` int(20) NOT NULL,
  `id` varchar(40) NOT NULL,
  `gname` varchar(256) NOT NULL,
  `gphone` varchar(20) NOT NULL,
  `gaddress` varchar(256) NOT NULL,
  `gcity` varchar(50) NOT NULL,
  `gzip` varchar(20) NOT NULL,
  `relation` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `teacher_guardian`
--

INSERT INTO `teacher_guardian` (`s_no`, `id`, `gname`, `gphone`, `gaddress`, `gcity`, `gzip`, `relation`) VALUES
(1, 'T1718791191', 'Velma Walker', '1234567895', 'Sit voluptas nisi v', 'Maggie', 'Mckee', 'Consequatur Volupta'),
(2, 'T1741707730', 'bhagwanbhai', '9974703182', 'una', 'rajula', '123456', 'father'),
(3, 'T1741708041', 'kevalbhai', '7856345678', 'rajula', 'rajula', '787878', 'husband'),
(4, 'T1741708198', 'sureshbhai', '9456783289', 'mota varacha', 'surat', '200022', 'father'),
(5, 'T1741713426', 'miral', '1029993875', 'bhavanagar', 'mahua', '123457890', 'wife '),
(6, 'T1741713691', 'dushyan', '1928374718', 'punjab', 'amritsir', '12347', 'uncle');

-- --------------------------------------------------------

--
-- Table structure for table `time_table`
--

CREATE TABLE `time_table` (
  `s_no` int(20) NOT NULL,
  `class` varchar(50) NOT NULL,
  `section` varchar(10) NOT NULL,
  `start_time` varchar(20) NOT NULL,
  `end_time` varchar(20) NOT NULL,
  `mon` varchar(30) NOT NULL,
  `tue` varchar(30) NOT NULL,
  `wed` varchar(30) NOT NULL,
  `thu` varchar(30) NOT NULL,
  `fri` varchar(30) NOT NULL,
  `sat` varchar(30) NOT NULL,
  `editor_id` varchar(40) NOT NULL,
  `timestamp` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `time_table`
--

INSERT INTO `time_table` (`s_no`, `class`, `section`, `start_time`, `end_time`, `mon`, `tue`, `wed`, `thu`, `fri`, `sat`, `editor_id`, `timestamp`) VALUES
(1, '12c', 'A', '07:00', '08:00', 'Hindi', '', '', '', '', '', 'A9876543210', '2024-06-19 15:37:37'),
(2, '12c', 'A', '08:00', '09:00', 'English', '', '', '', '', '', 'A9876543210', '2024-06-19 15:37:37'),
(3, '12c', 'A', '09:00', '10:00', 'Math', '', '', '', '', '', 'A9876543210', '2024-06-19 15:37:37'),
(4, '12c', 'A', '10:00', '11:00', 'Hindi', '', '', '', '', '', 'A9876543210', '2024-06-19 15:37:37'),
(5, '12c', 'A', '11:00', '12:00', 'English', '', '', '', '', '', 'A9876543210', '2024-06-19 15:37:37'),
(6, '12c', 'A', '12:00', '01:00', 'Commerce', '', '', '', '', '', 'A9876543210', '2024-06-19 15:37:37'),
(7, '12c', 'A', '01:00', '02:00', 'Commerce', '', '', '', '', '', 'A9876543210', '2024-06-19 15:37:37'),
(8, '12c', 'A', '02:00', '03:00', 'Hindi', '', '', '', '', '', 'A9876543210', '2024-06-19 15:37:37');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `s_no` int(15) NOT NULL,
  `id` varchar(40) NOT NULL,
  `email` varchar(256) NOT NULL,
  `password_hash` varchar(700) NOT NULL,
  `role` varchar(20) NOT NULL,
  `theme` varchar(20) NOT NULL DEFAULT 'light'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`s_no`, `id`, `email`, `password_hash`, `role`, `theme`) VALUES
(1, 'A9876543210', 'admin@gmail.com', '$2y$10$2MrhbQa30mll8mKG6LPyjuI7CQPC4abCvqrSvczxXVRu4RVueRfoe', 'admin', 'light'),
(2, 'T1718791191', 'teacher@gmail.com', '$2y$10$2MrhbQa30mll8mKG6LPyjuI7CQPC4abCvqrSvczxXVRu4RVueRfoe', 'teacher', 'light'),
(3, 'S1718791292', 'students@gmail.com', '$2y$10$2MrhbQa30mll8mKG6LPyjuI7CQPC4abCvqrSvczxXVRu4RVueRfoe', 'student', 'light'),
(4, 'O7898987845', 'owner@gmail.com', '$2y$10$2MrhbQa30mll8mKG6LPyjuI7CQPC4abCvqrSvczxXVRu4RVueRfoe', 'owner', 'light'),
(5, 'T1741707730', 'isha123@gmail.com', '$2y$10$TfmYNgKgokAzNBDDoqRPkekJETeV/tb0E0ksWBhsI3zCT8.S5CPNK', 'teacher', 'light'),
(6, 'T1741708041', 'vaishali@gmail.com', '$2y$10$dDN/lKqGNnxZG4GkOsBFiOhUDAM7xYuxIEujmBPI2QnT3hq/xDks6', 'teacher', 'light'),
(7, 'T1741708198', 'yash34@gmail.com', '$2y$10$f4U0JhFZhsrow0ACbTl76.Bi4nJSyDbOYxSt6JSYEdTD/IvQbTKyK', 'teacher', 'light'),
(8, 'S1741708429', 'taksh@gmail.com', '$2y$10$/jVNtYkSP/gxAz0Yf6lKS.7wL0cvcK3q8V0l3N.RdfINQZeIxUmgW', 'student', 'light'),
(9, 'S1741709542', 'janvi@123gmail.com', '$2y$10$n1V38zkHsS3EB7JO3V6/PuOnFUviuAfz0OsbgXsB.xoqrgnr7rbaO', 'student', 'light'),
(10, 'S1741710040', 'dhrutu123@gmail.com', '$2y$10$tSFiebS4q/klcbhGiNdNCecQb1nBFb4NrwkyVOANO/k/JBYj5qCQS', 'student', 'light'),
(11, 'S1741710340', 'vaishali@12345gmail.com', '$2y$10$PfWIHh.oyn1RfODCBAlUsuYAiXRfZoDOi4rlW5fLOjvWRldBZm8yq', 'student', 'light'),
(12, 'S1741710716', 'rajesh@123.com', '$2y$10$NTTn5hPUxOOoS1w3sAssEuiHaAnnxDAZBE0SMzBAIZoQZXx6mtLSO', 'student', 'light'),
(13, 'S1741712004', 'disha@123gmail.com', '$2y$10$vb/2xdqd5zFQuKGMSLVl2e5qkXs0m4NBlkGHiJQBlBpcCUl/zHQXm', 'student', 'light'),
(14, 'S1741712409', 'vishakha@123gmail.com', '$2y$10$55eVdpgMpsh7pZG6LtvQFeJuHOXidicyDeN/LIagWtQ0A45b1mIUS', 'student', 'light'),
(15, 'S1741712721', 'vishu123@gmail.com', '$2y$10$KYWjtNdEgCQYSz/yjgdqTOb8y8lR9HC6W84tmxRiwRdEdQ4LLvLjq', 'student', 'light'),
(16, 'S1741713116', 'champaklal1234@gmail.com', '$2y$10$AUPU81G3b6o/xvbBZZhjHeSyZ9lOz4nQ3a/L8Sr.feBwMGCo0qwsy', 'student', 'light'),
(17, 'T1741713426', 'vedang123@gmail.com', '$2y$10$yZ/gyvK/epWSGsQlfTapYu2wOqcadj6MVjtIi7jM6KJpP4NGEnofi', 'teacher', 'light'),
(18, 'T1741713691', 'daya1234@gmail.com', '$2y$10$PIb5pCcuK68/hjDEUnXCCOsBRoWZoELrD45IBj7IrzS.yZgknYzQO', 'teacher', 'light'),
(19, 'S1742316284', 'sujal123@gmail.com', '$2y$10$HWCgy0X0wgCBMOuq5dVXn.mDaIChz9ukUxIxhkT74syEZCC9UZS1C', 'student', 'light'),
(20, 'S1742319453', 'sujal@gmail.com', '$2y$10$rJuyOHBNYr.EBqB4tsLYheZ3u/tmSOGQU01aGHjQrWozYXPb8qMHq', 'student', 'light');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`s_no`);

--
-- Indexes for table `attendence`
--
ALTER TABLE `attendence`
  ADD PRIMARY KEY (`s_no`);

--
-- Indexes for table `buses`
--
ALTER TABLE `buses`
  ADD PRIMARY KEY (`s_no`);

--
-- Indexes for table `bus_root`
--
ALTER TABLE `bus_root`
  ADD PRIMARY KEY (`s_no`);

--
-- Indexes for table `bus_staff`
--
ALTER TABLE `bus_staff`
  ADD PRIMARY KEY (`s_no`);

--
-- Indexes for table `classes`
--
ALTER TABLE `classes`
  ADD PRIMARY KEY (`s_no`);

--
-- Indexes for table `exams`
--
ALTER TABLE `exams`
  ADD PRIMARY KEY (`s_no`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`s_no`);

--
-- Indexes for table `fee_record`
--
ALTER TABLE `fee_record`
  ADD PRIMARY KEY (`s_no`);

--
-- Indexes for table `leaves`
--
ALTER TABLE `leaves`
  ADD PRIMARY KEY (`s_no`);

--
-- Indexes for table `marks`
--
ALTER TABLE `marks`
  ADD PRIMARY KEY (`s_no`);

--
-- Indexes for table `notes`
--
ALTER TABLE `notes`
  ADD PRIMARY KEY (`s_no`);

--
-- Indexes for table `notice`
--
ALTER TABLE `notice`
  ADD PRIMARY KEY (`s_no`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`s_no`);

--
-- Indexes for table `payroll`
--
ALTER TABLE `payroll`
  ADD PRIMARY KEY (`s_no`);

--
-- Indexes for table `reminders`
--
ALTER TABLE `reminders`
  ADD PRIMARY KEY (`s_no`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`s_no`);

--
-- Indexes for table `student_guardian`
--
ALTER TABLE `student_guardian`
  ADD PRIMARY KEY (`s_no`);

--
-- Indexes for table `subjects`
--
ALTER TABLE `subjects`
  ADD PRIMARY KEY (`s_no`);

--
-- Indexes for table `syllabus`
--
ALTER TABLE `syllabus`
  ADD PRIMARY KEY (`s_no`);

--
-- Indexes for table `teachers`
--
ALTER TABLE `teachers`
  ADD PRIMARY KEY (`s_no`);

--
-- Indexes for table `teacher_guardian`
--
ALTER TABLE `teacher_guardian`
  ADD PRIMARY KEY (`s_no`);

--
-- Indexes for table `time_table`
--
ALTER TABLE `time_table`
  ADD PRIMARY KEY (`s_no`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`s_no`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `s_no` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `attendence`
--
ALTER TABLE `attendence`
  MODIFY `s_no` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `buses`
--
ALTER TABLE `buses`
  MODIFY `s_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `bus_root`
--
ALTER TABLE `bus_root`
  MODIFY `s_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `bus_staff`
--
ALTER TABLE `bus_staff`
  MODIFY `s_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `classes`
--
ALTER TABLE `classes`
  MODIFY `s_no` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `exams`
--
ALTER TABLE `exams`
  MODIFY `s_no` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `s_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `fee_record`
--
ALTER TABLE `fee_record`
  MODIFY `s_no` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `leaves`
--
ALTER TABLE `leaves`
  MODIFY `s_no` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `marks`
--
ALTER TABLE `marks`
  MODIFY `s_no` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `notes`
--
ALTER TABLE `notes`
  MODIFY `s_no` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `notice`
--
ALTER TABLE `notice`
  MODIFY `s_no` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `s_no` int(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payroll`
--
ALTER TABLE `payroll`
  MODIFY `s_no` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `reminders`
--
ALTER TABLE `reminders`
  MODIFY `s_no` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `s_no` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `student_guardian`
--
ALTER TABLE `student_guardian`
  MODIFY `s_no` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `subjects`
--
ALTER TABLE `subjects`
  MODIFY `s_no` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `syllabus`
--
ALTER TABLE `syllabus`
  MODIFY `s_no` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `teachers`
--
ALTER TABLE `teachers`
  MODIFY `s_no` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `teacher_guardian`
--
ALTER TABLE `teacher_guardian`
  MODIFY `s_no` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `time_table`
--
ALTER TABLE `time_table`
  MODIFY `s_no` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `s_no` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
