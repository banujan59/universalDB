-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 29, 2017 at 10:39 PM
-- Server version: 10.1.19-MariaDB
-- PHP Version: 5.6.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `universaldb`
--

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `courseId` int(11) NOT NULL,
  `type` varchar(10) NOT NULL,
  `language` varchar(10) NOT NULL,
  `scheduleId` int(11) NOT NULL,
  `maxStudents` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`courseId`, `type`, `language`, `scheduleId`, `maxStudents`) VALUES
(1, 'Regular', 'English', 1, 20),
(2, 'Regular', 'Tamil', 2, 20),
(3, 'Truck', 'English', 3, 20);

-- --------------------------------------------------------

--
-- Table structure for table `schedule`
--

CREATE TABLE `schedule` (
  `scheduleId` int(5) NOT NULL,
  `day` varchar(10) NOT NULL,
  `dayStart` datetime NOT NULL,
  `dayEnd` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `schedule`
--

INSERT INTO `schedule` (`scheduleId`, `day`, `dayStart`, `dayEnd`) VALUES
(1, 'Monday', '2017-05-18 10:00:00', '2017-05-18 12:00:00'),
(2, 'Wednesday', '2017-05-20 14:00:00', '2017-05-20 16:00:00'),
(3, 'Friday', '2017-05-22 12:00:00', '2017-05-22 14:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `studentId` int(11) NOT NULL,
  `firstName` varchar(18) NOT NULL,
  `lastName` varchar(18) NOT NULL,
  `phoneNumber` bigint(10) NOT NULL,
  `emergencyPhoneNumber` bigint(10) NOT NULL,
  `email` varchar(30) NOT NULL,
  `address` varchar(50) NOT NULL,
  `birthdate` date NOT NULL,
  `balance` double(7,2) NOT NULL,
  `balanceDueDate` date NOT NULL,
  `courseID` int(11) NOT NULL,
  `language` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`studentId`, `firstName`, `lastName`, `phoneNumber`, `emergencyPhoneNumber`, `email`, `address`, `birthdate`, `balance`, `balanceDueDate`, `courseID`, `language`) VALUES
(1, 'John', 'Doe', 2147483647, 2147483647, 'john@example.com', '7483 Sherbrooke street, Montre', '1990-01-05', 0.00, '2017-04-11', 1, ''),
(2, 'Austin', 'Janovich', 514516847, 514516849, 'austinjanovich@email.com', '9876 random street, montreal ', '2017-04-18', 562.56, '2017-04-29', 2, 'tamil'),
(3, 'Sergiu', 'Vaninovich', 514516847, 514516847, 'email@emaill.com', '1234567 hi', '2017-04-02', 50.00, '2017-04-03', 3, ''),
(4, 'Jeremya', 'Vaninovich', 514516847, 514516847, 'email@email.com', '987654 address', '2017-05-31', 654.00, '2017-02-12', 1, 'french'),
(5, 'Banujan ', 'Vaninovich', 514516847, 514516847, 'email@email.com', '6543 rgonrg', '2017-07-18', 5675.00, '2017-05-10', 2, 'tamil'),
(6, 'Andrei', 'Vaninovich', 514516847, 514516847, 'email.hotmail.com', '8765 qwertty', '2017-05-11', 5.00, '2017-07-21', 2, ''),
(7, 'Gio', 'Vaninovich', 514516847, 514516847, 'email@gmail.com', '87654 mnbvc', '2017-05-17', 500.00, '2017-07-19', 1, 'french'),
(8, 'Alec', 'Vaninovich', 514516847, 514516847, 'email@hotmail.com', '456 sdfg', '2017-04-23', 300.00, '2017-10-11', 2, ''),
(9, 'An', 'Vaninovich', 514516847, 514516847, 'email@hotmail.com', '76543 bdfvcgf', '2017-04-12', 23.00, '2017-04-13', 1, ''),
(10, 'Json', 'Vaninovich', 514516847, 514516847, 'email@yahoo.com', '8765 hjgfkdl', '2017-06-02', 50.00, '2017-04-09', 1, ''),
(11, 'Tris', 'Prior', 514516847, 514516847, 'tris@prior.com', '1234 Divergent Street', '2017-04-01', 1.99, '2017-04-27', 1, 'french'),
(12, 'Katniss', 'Everdeen', 514516847, 514516847, 'katniss@everdeen.com', '2345 Mockingjay Street', '2017-04-02', 456.00, '2017-04-30', 2, 'tamil'),
(13, 'James', 'Bond', 514516847, 514516847, 'james@bond.com', '7777 Goldfinger Street', '2017-04-03', 77.77, '2017-04-29', 2, ''),
(14, 'Claire', 'Farron', 514516847, 514516847, 'claire@farron.com', '3456 L''Cie Street', '2017-04-04', 13000.13, '2017-04-26', 1, ''),
(15, 'Noctis', 'Caelum', 514516847, 514516847, 'noctis@caelum.com', '4567 Insomnia Boulevard', '2017-04-12', 1515.00, '2017-04-23', 1, 'french'),
(16, 'Sora', 'Shore', 514516847, 514516847, 'sora@shore.com', '8901 Destiny Drive', '2017-04-06', 789.56, '2017-04-20', 2, ''),
(17, 'Ororo', 'Munroe', 514516847, 514516847, 'ororo@munroe.com', '9012 Storm Drive', '2017-04-13', 333.33, '2017-04-21', 1, 'tamil'),
(18, 'Peter', 'Parker', 514516847, 514516847, 'peter@parker.com', '123 Arachnid Road', '2017-04-15', 2006.12, '2017-04-28', 2, ''),
(19, 'Leonard', 'Hofstadter', 514516847, 514516847, 'leonard@hofstadter.com', '4567 Theorist Avenue', '2017-04-15', 987.65, '2017-04-16', 2, ''),
(20, 'Buzz', 'Lightyear', 514516847, 514516847, 'buzz@lightyear.com', '8901 Pixar Drive', '2017-04-22', 1995.99, '2017-04-30', 1, 'french'),
(21, 'Jonay', 'Moretti', 514516847, 514516847, 'melanie@moretti.com', '2346 Cleveland Road', '2017-04-05', 2010.88, '2017-04-30', 1, ''),
(22, 'Xiaoyang', 'Zhu', 514516847, 514516847, 'zhu@xiaoyang.com', '9876 Yellow Road', '2017-04-14', 1234.45, '2017-04-25', 2, 'french'),
(23, 'Kara', 'Danvers', 514516847, 514516847, 'kara@danvers.com', '1938 Krypton Avenue', '2017-04-14', 99999.99, '2017-04-28', 2, ''),
(24, 'David', 'Dunn', 514516847, 514516847, 'david@dunn.com', '2000 Unbreakable Boulevard', '2017-04-07', 0.00, '2017-04-25', 2, ''),
(25, 'Casey', 'Cooke', 514516847, 514516847, 'casey@cooke.com', '6666 Split Boulevard', '2017-04-02', 5.00, '2017-04-28', 1, 'tamil');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `userId` int(9) NOT NULL,
  `userType` varchar(10) NOT NULL,
  `email` varchar(30) NOT NULL,
  `password` varchar(20) NOT NULL,
  `studentId` int(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`userId`, `userType`, `email`, `password`, `studentId`) VALUES
(1, 'admin', 'admin@gmail.com', 'admin', 0),
(2, 'student', 'student1@gmail.com', 'student1', 1),
(3, 'student', 'student2@gmail.com', 'student2', 2),
(4, 'student', 'student3@gmail.com', 'student3', 3);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`courseId`),
  ADD KEY `scheduleId` (`scheduleId`),
  ADD KEY `courseId` (`courseId`),
  ADD KEY `scheduleId_2` (`scheduleId`),
  ADD KEY `courseId_2` (`courseId`),
  ADD KEY `courseId_3` (`courseId`,`scheduleId`),
  ADD KEY `courseId_4` (`courseId`,`scheduleId`);

--
-- Indexes for table `schedule`
--
ALTER TABLE `schedule`
  ADD PRIMARY KEY (`scheduleId`),
  ADD KEY `scheduleId` (`scheduleId`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`studentId`),
  ADD UNIQUE KEY `studentId` (`studentId`),
  ADD KEY `courseID` (`courseID`),
  ADD KEY `courseID_2` (`courseID`),
  ADD KEY `studentId_2` (`studentId`,`courseID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`userId`),
  ADD KEY `userId` (`userId`,`studentId`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
