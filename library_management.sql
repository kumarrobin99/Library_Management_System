-- phpMyAdmin SQL Dump
-- version 4.8.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 14, 2020 at 02:24 PM
-- Server version: 10.1.33-MariaDB
-- PHP Version: 7.2.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `library_management`
--

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `BOOK_ID` int(10) NOT NULL,
  `BOOK_NAME` varchar(100) NOT NULL,
  `AUTHOR` varchar(100) NOT NULL,
  `PUBLICATION` varchar(100) NOT NULL,
  `STREAM` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`BOOK_ID`, `BOOK_NAME`, `AUTHOR`, `PUBLICATION`, `STREAM`) VALUES
(540, 'english', 'sanam', 'sb creation', 'M.Sc.'),
(34456, 'Introduction to Database System', 'C.J Date', 'Pearson Education', 'B.Tech'),
(321654, 'physics', 'h c verma', 'bharti bhawan', 'B.Tech');

-- --------------------------------------------------------

--
-- Table structure for table `issuedbooks`
--

CREATE TABLE `issuedbooks` (
  `Student's reg no.` int(10) UNSIGNED NOT NULL,
  `Student's name` varchar(100) NOT NULL,
  `Book id` int(10) UNSIGNED NOT NULL,
  `Book name` varchar(100) NOT NULL,
  `Author` varchar(100) NOT NULL,
  `Issue Date` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `issuedbooks`
--

INSERT INTO `issuedbooks` (`Student's reg no.`, `Student's name`, `Book id`, `Book name`, `Author`, `Issue Date`) VALUES
(1731857, 'robin kumar', 874512, 'physics', 'h c verma', 'Mon, 12 August 2019'),
(1731858, 'Sanamdeep Singh', 860, 'its sanam', 'sanam', 'Wed, 14 August 2019'),
(1818604, 'mridul', 44, 'physics', 'dsndj', 'Fri, 16 August 2019'),
(1731827, 'Anmol', 854, 'CA', 'knjhd', 'Fri, 16 August 2019'),
(351487, 'XYZ', 34456, 'Introduction to Database System', 'C.J. Date', 'Sat, 17 August 2019');

-- --------------------------------------------------------

--
-- Table structure for table `register_students`
--

CREATE TABLE `register_students` (
  `Name` varchar(100) NOT NULL,
  `Father's Name` varchar(100) NOT NULL,
  `Registration No.` int(10) UNSIGNED NOT NULL,
  `Course` varchar(20) NOT NULL,
  `Session` varchar(30) NOT NULL,
  `DOB` varchar(30) NOT NULL,
  `Gender` varchar(20) NOT NULL,
  `Address` varchar(100) NOT NULL,
  `Email` varchar(80) NOT NULL,
  `Mobile No.` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `register_students`
--

INSERT INTO `register_students` (`Name`, `Father's Name`, `Registration No.`, `Course`, `Session`, `DOB`, `Gender`, `Address`, `Email`, `Mobile No.`) VALUES
('Anmol', 'Pawan', 1731827, 'B.Tech', '2017-21', '10 May, 2000', 'Male', 'I.k.g ptu boys hostel', 'anmol@gmail.com', '123654789'),
('Mridul', 'Vijay Kumar', 1818604, 'B.Tech', '2017-2021', '02 Aug, 1999', 'Male', 'Jalandhar', 'mridul', '5481516865'),
('Robin Kumar', 'Surendra Prasad', 3215478, 'B.Tech', '2017-2021', '29 Jul, 1999', 'Male', 'Nalanda , Bihar', 'xyz@gmail.com', '6325148799'),
('Sanamdeep singh', 'Jaswinder singh', 1731858, 'B.Tech', '2017-21', '02 Apr, 2000', 'Male', 'ludhiana', 'sanambirdi88722@gmail.com', '8264900940'),
('XYZ', 'ABC', 987456, 'B.Tech', '2017-2021', '29 Jul, 1999', 'Male', 'QWERTY', 'xyzabc@gmail.com', '9874563210'),
('ROBIN KUMAR', 'SURENDRA PRASAD', 1731857, 'B.Tech', '2017-2021', '29 Jul, 1999', 'Male', 'NALANDA , BIHAR	', 'Kumarrobin99@gmail.com', '9955883101');

-- --------------------------------------------------------

--
-- Table structure for table `returnedbooks`
--

CREATE TABLE `returnedbooks` (
  `Student's reg no.` int(10) UNSIGNED NOT NULL,
  `Student's name` varchar(100) NOT NULL,
  `Book id` int(10) UNSIGNED NOT NULL,
  `Book name` varchar(100) NOT NULL,
  `Author` varchar(100) NOT NULL,
  `Issue Date` varchar(30) NOT NULL,
  `Return date` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `returnedbooks`
--

INSERT INTO `returnedbooks` (`Student's reg no.`, `Student's name`, `Book id`, `Book name`, `Author`, `Issue Date`, `Return date`) VALUES
(351487, 'XYZ', 34456, 'Introduction to Database System', 'C.J Dtae', '17 Aug, 2019', 'Sat, 17 August 2019');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD UNIQUE KEY `BOOK_ID` (`BOOK_ID`);

--
-- Indexes for table `register_students`
--
ALTER TABLE `register_students`
  ADD UNIQUE KEY `mob` (`Mobile No.`),
  ADD UNIQUE KEY `email` (`Email`),
  ADD UNIQUE KEY `reg` (`Registration No.`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
