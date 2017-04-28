-- phpMyAdmin SQL Dump
-- version 4.3.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 28, 2017 at 05:05 PM
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
  `endTime` datetime NOT NULL,
  `scheduleId` int(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`courseId`, `type`, `day`, `startTime`, `endTime`, `scheduleId`) VALUES
(1, 'regular', 'Monday', '2017-04-10 10:00:00', '2017-04-10 12:00:00', 1),
(2, 'regular', 'Wednesday', '2017-04-12 14:00:00', '2017-04-12 16:00:00', 2),
(3, 'truck', 'Friday', '2017-04-14 16:00:00', '2017-04-14 18:00:00', 3);

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
(10, 'Obiwan', 'Kanobi', 982387128, 2348761234, '0278 Mustafar', '2017-04-18', 25, '2017-07-13', 'Tamil'),
(11, 'Darlene', 'Pratt', 1239420834, 6326871278, '1285 MyAddress', '2017-07-19', 88, '2017-12-13', ''),
(12, 'Janet', 'Perez', 865122222, 1271118423, '599 Stuart', '2016-06-21', 122, '2017-04-16', 'French'),
(13, 'Jeannette ', 'Lambert', 2229872344, 22245719932, '1222 Danvers', '2015-09-09', 12, '2017-11-02', 'Tamil'),
(14, 'Tracy', 'McGrady', 5149999433, 5147149999, '4567 Querbs', '2016-06-27', 555, '2018-03-08', ''),
(15, 'Alvin ', 'Adams', 1239876123, 5143333333, '786 Jean-Talon', '2017-02-15', 9, '2017-04-04', ''),
(16, 'Gabriel', 'Olson', 3338763456, 3331234098, '472 Namur', '2017-04-11', 800, '2017-08-23', ''),
(17, 'Tyler', 'Burgass', 4325678900, 4324567321, '7894 Jean-Talon', '2017-04-19', 25.5, '2017-11-10', 'French'),
(18, 'Patty', 'Martinez', 2279876345, 1234781234, '5678 Ogilvy', '2017-11-09', 50, '2016-10-12', 'Tamil'),
(19, 'Mathieu ', 'Boileau', 1239864247, 2467855867, '5432 Lolololol', '2017-04-30', 9000, '2017-03-13', 'French'),
(20, 'Jeremya', 'lname', 4329876234, 2340987456, '234 Addresss', '2016-12-13', 12, '2017-04-05', 'Tamil'),
(21, 'Roxanne', 'Caldwell', 5447657777, 4321234444, '1234 Querbs', '2016-04-19', 500, '2017-04-04', ''),
(22, 'Willard', 'Cannon', 3456789098, 3452345677, '456 Stuart', '2017-01-09', 0, '2017-04-02', ''),
(23, 'Adam', 'Adams', 911, 911, '123 PoliceStation', '2016-07-18', 0, '2017-04-19', 'French'),
(24, 'Bob', 'Barker', 5149990432, 1234567890, '7651 ', '2017-04-13', 59, '2017-04-09', '');

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
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`courseId`), ADD KEY `courseId` (`courseId`,`scheduleId`);

--
-- Indexes for table `schedule`
--
ALTER TABLE `schedule`
  ADD PRIMARY KEY (`scheduleId`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`studentId`), ADD KEY `studentId` (`studentId`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD KEY `userId` (`userId`,`studentId`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
