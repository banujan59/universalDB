-- phpMyAdmin SQL Dump
-- version 4.3.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 28, 2017 at 04:35 PM
-- Server version: 5.6.24
-- PHP Version: 5.5.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `universaldb`
--

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE IF NOT EXISTS `course` (
  `courseId` int(9) NOT NULL,
  `type` varchar(10) NOT NULL,
  `day` varchar(10) NOT NULL,
  `startTime` datetime NOT NULL,
  `endTime` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `schedule`
--

CREATE TABLE IF NOT EXISTS `schedule` (
  `scheduleId` int(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE IF NOT EXISTS `students` (
  `studentId` int(9) NOT NULL,
  `firstName` varchar(20) NOT NULL,
  `lastName` varchar(20) NOT NULL,
  `phoneNumber` bigint(10) NOT NULL,
  `emergencyContact` bigint(10) NOT NULL,
  `address` varchar(20) NOT NULL,
  `birthDate` date NOT NULL,
  `balance` double NOT NULL,
  `paymentDue` date NOT NULL,
  `language` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`studentId`, `firstName`, `lastName`, `phoneNumber`, `emergencyContact`, `address`, `birthDate`, `balance`, `paymentDue`, `language`) VALUES
(1, 'Austin', 'Gobby', 5149994321, 5143245678, '7255 sfgfhdh', '2017-04-12', 0, '0000-00-00', ''),
(2, 'Banujan', 'lname', 5143214567, 7651239876, '2345 qwerty', '2017-06-15', 75, '2017-06-24', 'Tamil'),
(3, 'Jeremya', 'lname', 5143214598, 5142121111, '9876 zxvb', '2017-09-20', 500, '2017-04-10', 'french'),
(4, 'Andrei', 'lname', 5148765432, 5141234567, '1234 street', '2017-06-09', 325, '2017-04-30', ''),
(5, 'Sergiu', 'lname', 5140987654, 5143971265, '8623 ', '2017-04-21', 75, '2017-06-01', ''),
(6, 'Alec', 'lname', 5140378143, 3751234956, '1237 MyStreet', '2016-07-05', 120, '2016-05-27', 'French'),
(7, 'An', 'lname', 6541239552, 5143287450, '3456 Birnam', '2017-12-06', 2, '2017-12-12', ''),
(8, 'Gio', 'lname', 7881209380, 5149999678, '1230 Liege', '2017-04-18', 500, '2017-03-13', ''),
(9, 'Luke', 'Skywalker', 5148887777, 5143322116, '7432 Alderon', '2017-08-25', 5000, '2016-10-18', ''),
(10, 'Obiwan', 'Kanobi', 982387128, 2348761234, '0278 Mustafar', '2017-04-18', 25, '2017-07-13', 'Tamil');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `userId` int(9) NOT NULL,
  `email` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `studentId` int(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`userId`, `email`, `password`, `studentId`) VALUES
(1, 'admin@gmail.com', 'admin', 0),
(2, 'student1@gmail.com', 'student1', 1),
(3, 'student2@gmail.com', 'student2', 2),
(4, 'student3@gmail.com', 'student3', 3);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD KEY `userId` (`userId`,`studentId`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
