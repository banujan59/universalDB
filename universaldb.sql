-- phpMyAdmin SQL Dump
-- version 4.3.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 08, 2017 at 05:02 PM
-- Server version: 5.6.24
-- PHP Version: 5.5.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: 'universaldb'
--

-- --------------------------------------------------------

--
-- Table structure for table 'course'
--

CREATE TABLE IF NOT EXISTS 'course' (
  'courseId' int(11) NOT NULL,
  'type' varchar(10) NOT NULL,
  'language' varchar(10) NOT NULL,
  'scheduleId' int(11) NOT NULL,
  'maxStudents' int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table 'course'
--

INSERT INTO 'course' ('courseId', 'type', 'language', 'scheduleId', 'maxStudents') VALUES
(1, 'Regular', 'English', 1, 20),
(2, 'Regular', 'Tamil', 2, 20),
(3, 'Truck', 'English', 3, 20);

-- --------------------------------------------------------

--
-- Table structure for table 'schedule'
--

CREATE TABLE IF NOT EXISTS 'schedule' (
  'scheduleId' int(5) NOT NULL,
  'day' varchar(10) NOT NULL,
  'dayStart' datetime NOT NULL,
  'dayEnd' datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table 'schedule'
--

INSERT INTO 'schedule' ('scheduleId', 'day', 'dayStart', 'dayEnd') VALUES
(1, 'Monday', '2017-05-18 10:00:00', '2017-05-18 12:00:00'),
(2, 'Wednesday', '2017-05-20 14:00:00', '2017-05-20 16:00:00'),
(3, 'Saturday', '2017-05-22 12:00:00', '2017-05-22 14:00:00');

-- --------------------------------------------------------

--
-- Table structure for table 'students'
--

CREATE TABLE IF NOT EXISTS 'students' (
  'studentId' int(11) NOT NULL,
  'firstName' varchar(18) NOT NULL,
  'lastName' varchar(18) NOT NULL,
  'phoneNumber' varchar(15) NOT NULL,
  'emergencyPhoneNumber' varchar(15) NOT NULL,
  'email' varchar(30) NOT NULL,
  'address' varchar(50) NOT NULL,
  'birthdate' date NOT NULL,
  'balance' double(7,2) NOT NULL,
  'balanceDueDate' date NOT NULL,
  'courseID' int(11) NOT NULL,
  'language' varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table 'students'
--

INSERT INTO 'students' ('studentId', 'firstName', 'lastName', 'phoneNumber', 'emergencyPhoneNumber', 'email', 'address', 'birthdate', 'balance', 'balanceDueDate', 'courseID', 'language') VALUES
(1, 'John', 'Doe', '(514) 239-4920', '(450) 996-8200', 'john@doe.com', '7483 Sherbrooke Street', '1990-11-11', 800.99, '2017-04-11', 1, 'English'),
(2, 'Austin', 'Forte', '(514) 138-8298', '(450) 253-8729', 'austin@forte.com', '9876 Texas Street', '1999-12-13', 562.56, '2017-04-29', 2, 'English'),
(3, 'Sergiu', 'Gobby', '(514) 993-4111', '(450) 802-3849', 'sergiu@gobby.com', '1234567 Hi Road', '1988-07-18', 50.00, '2017-04-03', 1, 'Tamil'),
(4, 'Jeremya', 'Ifimov', '(514) 815-9936', '(450) 624-9575', 'jeremya@ifimov.com', '987654 French Drive', '1990-06-26', 654.00, '2017-02-12', 1, 'French'),
(5, 'Banujan', 'Deneault', '(514) 272-5671', '(450) 827-5448', 'banujan@deneault.com', '6543 Lankan Boulevard', '1993-05-14', 5675.00, '2017-05-10', 2, 'Tamil'),
(6, 'Andrei', 'Atputhawhatnot', '(514) 157-4986', '(450) 521-8952', 'andrei@atputhawhatnot.com', '8765 Moldovan Drive', '1993-04-26', 5.00, '2017-07-21', 1, 'French'),
(7, 'Gio', 'Alaev', '(514) 594-0874', '(450) 325-6651', 'gio@alaev.com', '87654 Pasta Road', '1993-06-16', 500.00, '2017-07-19', 1, 'French'),
(8, 'Alec', 'Angelini', '(514) 209-3256', '(450) 816-1971', 'alec@angelini.com', '456 Armenian Boulevard', '1989-12-05', 300.00, '2017-10-11', 2, 'Tamil'),
(9, 'An', 'Arakilyan', '(514) 554-8083', '(450) 311-6337', 'an@arakilyan.com', '76543 Vietnam Street', '2001-02-26', 23.00, '2017-04-13', 1, 'English'),
(10, 'Jason', 'Huynh', '(514) 976-6306', '(450) 635-3778', 'jason@huynh.com', '8765 Strong Road', '1987-11-06', 50.00, '2017-04-09', 1, 'English'),
(11, 'Tris', 'Prior', '(514) 116-3631', '(450) 387-1734', 'tris@prior.com', '1234 Divergent Street', '1991-02-26', 1.99, '2017-04-27', 1, 'French'),
(12, 'Katniss', 'Everdeen', '(514) 400-6703', '(450) 844-1241', 'katniss@everdeen.com', '2345 Mockingjay Street', '1994-11-24', 456.00, '2017-04-30', 1, 'Tamil'),
(13, 'James', 'Bond', '(514) 371-4239', '(450) 534-8612', 'james@bond.com', '7777 Goldfinger Street', '1990-10-06', 77.77, '2017-04-29', 2, 'English'),
(14, 'Claire', 'Farron', '(514) 163-7023', '(450) 551-2106', 'claire@farron.com', '3456 L''Cie Street', '1992-07-03', 13000.13, '2017-04-26', 1, 'English'),
(15, 'Noctis', 'Caelum', '(514) 775-7243', '(450) 884-4297', 'noctis@caelum.com', '4567 Insomnia Boulevard', '1987-09-18', 1515.00, '2017-04-23', 1, 'French'),
(16, 'Sora', 'Shore', '(514) 963-5005', '(450) 601-0111', 'sora@shore.com', '8901 Destiny Drive', '1996-01-26', 789.56, '2017-04-20', 2, 'Tamil'),
(17, 'Ororo', 'Munroe', '(514) 178-4803', '(450) 527-2789', 'ororo@munroe.com', '9012 Storm Drive', '1994-08-20', 333.33, '2017-04-21', 1, 'Tamil'),
(18, 'Peter', 'Parker', '(514) 540-0881', '(450) 275-6269', 'peter@parker.com', '123 Arachnid Road', '1990-07-01', 2006.12, '2017-04-28', 1, 'English'),
(19, 'Leonard', 'Hofstadter', '(514) 169-8677', '(450) 629-4856', 'leonard@hofstadter.com', '4567 Theorist Avenue', '1989-04-30', 987.65, '2017-04-16', 2, 'French'),
(20, 'Buzz', 'Lightyear', '(514) 354-2081', '(450) 609-9200', 'buzz@lightyear.com', '8901 Pixar Drive', '1993-07-15', 1995.99, '2017-04-30', 1, 'French'),
(21, 'Melanie', 'Moretti', '(514) 447-0304', '(450) 205-8856', 'melanie@moretti.com', '2346 Cleveland Road', '1999-04-10', 2010.88, '2017-04-30', 1, 'English'),
(22, 'Xiaoyang', 'Zhu', '(514) 549-4517', '(450) 354-4548', 'zhu@xiaoyang.com', '9876 Yellow Road', '1988-06-08', 1234.45, '2017-04-25', 2, 'French'),
(23, 'Kara', 'Danvers', '(514) 767-8353', '(450) 234-9326', 'kara@danvers.com', '1938 Krypton Avenue', '1992-12-05', 99999.99, '2017-04-28', 2, 'Tamil'),
(24, 'David', 'Dunn', '(514) 416-0891', '(450) 212-9744', 'david@dunn.com', '2000 Unbreakable Boulevard', '1988-06-21', 0.00, '2017-04-25', 2, 'French'),
(25, 'Casey', 'Cooke', '(514) 932-5875', '(450) 570-7937', 'casey@cooke.com', '6666 Split Boulevard', '1995-10-06', 5.00, '2017-04-28', 1, 'Tamil');

-- --------------------------------------------------------

--
-- Table structure for table 'users'
--

CREATE TABLE IF NOT EXISTS 'users' (
  'userId' int(9) NOT NULL,
  'userType' varchar(10) NOT NULL,
  'email' varchar(30) NOT NULL,
  'password' varchar(20) NOT NULL,
  'studentId' int(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table 'users'
--

INSERT INTO 'users' ('userId', 'userType', 'email', 'password', 'studentId') VALUES
(1, 'admin', 'admin@gmail.com', 'admin', 0),
(2, 'student', 'student1@gmail.com', 'student1', 1),
(3, 'student2', 'student2@gmail.com', 'student2', 2),
(4, 'student3', 'student3@gmail.com', 'student3', 3);

--
-- Indexes for dumped tables
--

--
-- Indexes for table 'course'
--
ALTER TABLE 'course'
  ADD PRIMARY KEY ('courseId'), ADD KEY 'scheduleId' ('scheduleId'), ADD KEY 'courseId' ('courseId'), ADD KEY 'scheduleId_2' ('scheduleId'), ADD KEY 'courseId_2' ('courseId'), ADD KEY 'courseId_3' ('courseId','scheduleId'), ADD KEY 'courseId_4' ('courseId','scheduleId');

--
-- Indexes for table 'schedule'
--
ALTER TABLE 'schedule'
  ADD PRIMARY KEY ('scheduleId'), ADD KEY 'scheduleId' ('scheduleId');

--
-- Indexes for table 'students'
--
ALTER TABLE 'students'
  ADD PRIMARY KEY ('studentId'), ADD UNIQUE KEY 'studentId' ('studentId'), ADD KEY 'courseID' ('courseID'), ADD KEY 'courseID_2' ('courseID'), ADD KEY 'studentId_2' ('studentId','courseID');

--
-- Indexes for table 'users'
--
ALTER TABLE 'users'
  ADD PRIMARY KEY ('userId'), ADD KEY 'userId' ('userId','studentId');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
