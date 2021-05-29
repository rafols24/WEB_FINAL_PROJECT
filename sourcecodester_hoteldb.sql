-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 25, 2021 at 04:41 PM
-- Server version: 10.4.10-MariaDB
-- PHP Version: 7.1.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sourcecodester_hoteldb`
--

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` int(10) UNSIGNED NOT NULL,
  `fullname` varchar(100) DEFAULT NULL,
  `phoneno` int(10) DEFAULT NULL,
  `email` text DEFAULT NULL,
  `purpose` varchar(200) NOT NULL,
  `cdate` date DEFAULT NULL,
  `approval` varchar(12) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `frontlogin`
--

CREATE TABLE `frontlogin` (
  `id` int(11) NOT NULL,
  `usname` varchar(200) NOT NULL,
  `pass` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `frontlogin`
--

INSERT INTO `frontlogin` (`id`, `usname`, `pass`) VALUES
(1, 'jurick', 'jurick');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `id` int(10) UNSIGNED NOT NULL,
  `usname` varchar(30) DEFAULT NULL,
  `pass` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id`, `usname`, `pass`) VALUES
(4, 'emelisa', 'emelisa'),
(5, 'frontdesk', 'frontdesk'),
(6, 'frontdesk', 'frontdesk');

-- --------------------------------------------------------

--
-- Table structure for table `newsletterlog`
--

CREATE TABLE `newsletterlog` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(52) DEFAULT NULL,
  `subject` varchar(100) DEFAULT NULL,
  `news` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `newsletterlog`
--

INSERT INTO `newsletterlog` (`id`, `title`, `subject`, `news`) VALUES
(1, 'asd', 'Send me an Email', 'asd'),
(2, 'PRICE INFLATION', 'Boos ASAP', 'good news we are lowering our room prices');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `id` int(11) DEFAULT NULL,
  `title` varchar(5) DEFAULT NULL,
  `fname` varchar(30) DEFAULT NULL,
  `lname` varchar(30) DEFAULT NULL,
  `troom` varchar(30) DEFAULT NULL,
  `tbed` varchar(30) DEFAULT NULL,
  `nroom` int(11) DEFAULT NULL,
  `cin` date DEFAULT NULL,
  `cout` date DEFAULT NULL,
  `ttot` double(8,2) DEFAULT NULL,
  `fintot` double(8,2) DEFAULT NULL,
  `mepr` double(8,2) DEFAULT NULL,
  `meal` varchar(30) DEFAULT NULL,
  `btot` double(8,2) DEFAULT NULL,
  `noofdays` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`id`, `title`, `fname`, `lname`, `troom`, `tbed`, `nroom`, `cin`, `cout`, `ttot`, `fintot`, `mepr`, `meal`, `btot`, `noofdays`) VALUES
(2, 'Dr.', 'janobe', 'janobe', 'Superior Room', 'Single', 1, '2020-10-10', '2020-10-11', 320.00, 323.20, 0.00, 'Room only', 3.20, 1),
(3, 'Miss.', 'Emelisa', 'Rafols', 'Single Room', 'Single', 1, '2021-05-13', '2021-05-15', 300.00, 315.00, 12.00, 'Full Board', 3.00, 2),
(4, 'Dr.', 'John Paul', 'Vistal', 'Deluxe Room', 'Double', 1, '2021-05-13', '2021-05-14', 220.00, 242.00, 17.60, 'Full Board', 4.40, 1),
(5, 'Dr.', 'Cgris', 'RAy', 'Superior Room', 'Quad', 1, '2021-05-15', '2021-05-22', 2240.00, 2508.80, 179.20, 'Breakfast', 89.60, 7),
(6, 'Miss.', 'loyla', 'Dejito', 'Deluxe Room', 'Triple', 1, '2021-05-15', '2021-05-22', 1540.00, 1678.60, 92.40, 'Breakfast', 46.20, 7),
(7, 'Miss.', 'Jessa', 'Ortiz', 'Guest House', 'Double', 1, '2021-05-28', '2021-05-29', 180.00, 190.80, 7.20, 'Breakfast', 3.60, 1),
(10, 'Dr.', 'John Paul', 'vistal', 'Superior Room', 'Double', 1, '2021-05-13', '2021-05-14', 320.00, 339.20, 12.80, 'Breakfast', 6.40, 1),
(11, 'Miss.', 'Emelisa', 'Rafols', 'Guest House', 'Triple', 1, '2021-05-13', '2021-05-15', 360.00, 403.20, 32.40, 'Half Board', 10.80, 2),
(14, 'Miss.', 'wael', 'hie', 'Deluxe Room', '', 1, '2021-05-29', '2021-05-29', 0.00, 0.00, 0.00, 'Breakfast', 0.00, 0),
(15, 'Dr.', 'su ', 'tanghon', 'Deluxe Room', '', 1, '2021-05-27', '2021-05-28', 220.00, 220.00, 0.00, 'Room only', 0.00, 1);

-- --------------------------------------------------------

--
-- Table structure for table `room`
--

CREATE TABLE `room` (
  `id` int(10) UNSIGNED NOT NULL,
  `type` varchar(15) DEFAULT NULL,
  `bedding` varchar(10) DEFAULT NULL,
  `place` varchar(10) DEFAULT NULL,
  `cusid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `room`
--

INSERT INTO `room` (`id`, `type`, `bedding`, `place`, `cusid`) VALUES
(2, 'Superior Room', 'Double', 'NotFree', 10),
(3, 'Superior Room', 'Triple', 'Free', NULL),
(4, 'Single Room', 'Quad', 'Free', NULL),
(5, 'Superior Room', 'Quad', 'Free', 0),
(6, 'Deluxe Room', 'Single', 'Free', NULL),
(7, 'Deluxe Room', 'Double', 'Free', 0),
(8, 'Deluxe Room', 'Triple', 'Free', 0),
(9, 'Deluxe Room', 'Quad', 'Free', NULL),
(10, 'Guest House', 'Single', 'Free', NULL),
(11, 'Guest House', 'Double', 'NotFree', 7),
(12, 'Guest House', 'Quad', 'Free', NULL),
(13, 'Single Room', 'Single', 'NotFree', 3),
(14, 'Single Room', 'Double', 'Free', NULL),
(15, 'Single Room', 'Triple', 'Free', NULL),
(16, 'Superior Room', 'Single', 'Free', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `roombook`
--

CREATE TABLE `roombook` (
  `id` int(10) UNSIGNED NOT NULL,
  `Title` varchar(5) DEFAULT NULL,
  `FName` text DEFAULT NULL,
  `LName` text DEFAULT NULL,
  `Email` varchar(50) DEFAULT NULL,
  `National` varchar(30) DEFAULT NULL,
  `Country` varchar(30) DEFAULT NULL,
  `Phone` text DEFAULT NULL,
  `TRoom` varchar(20) DEFAULT NULL,
  `NRoom` varchar(2) DEFAULT NULL,
  `Meal` varchar(15) DEFAULT NULL,
  `cin` date DEFAULT NULL,
  `cout` date DEFAULT NULL,
  `stat` varchar(15) DEFAULT NULL,
  `nodays` int(11) DEFAULT NULL,
  `pay` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `roombook`
--

INSERT INTO `roombook` (`id`, `Title`, `FName`, `LName`, `Email`, `National`, `Country`, `Phone`, `TRoom`, `NRoom`, `Meal`, `cin`, `cout`, `stat`, `nodays`, `pay`) VALUES
(10, 'Dr.', 'John Paul', 'vistal', 'vistal@gmail.com', 'Filipino', 'Belarus', '09875987456', 'Superior Room', '1', 'Breakfast', '2021-05-13', '2021-05-14', 'Conform', 1, 'GCASH'),
(11, 'Miss.', 'Emelisa', 'Rafols', 'emelisarafols@gmail.com', 'Filipino', 'Afghanistan', '09587985698', 'Guest House', '1', 'Half Board', '2021-05-13', '2021-05-15', 'Conform', 2, 'BDO'),
(12, 'Miss.', 'jessa', 'Ortiz', 'jessa@gmail.com', 'Non Filipino', 'Antigua and Barbuda', '09548965875', 'Deluxe Room', '1', 'Breakfast', '2021-05-14', '2021-05-15', 'Rejected', 1, 'MASTER CARD'),
(13, 'Dr.', 'wael', 'hie', 'hie@gmail.com', 'Non Filipino', 'Belarus', '09876543212', 'Superior Room', '1', 'Breakfast', '2021-05-26', '2021-05-27', 'Rejected', 1, 'VISA'),
(14, 'Miss.', 'wael', 'hie', 'emelisas@gmail.com', 'Filipino', 'Algeria', '09876543212', 'Deluxe Room', '1', 'Breakfast', '2021-05-29', '2021-05-29', 'Conform', 0, 'VISA'),
(15, 'Dr.', 'su ', 'tanghon', 'tanghon@gmail.com', 'Filipino', 'Philippines', '09876543212', 'Deluxe Room', '1', 'Room only', '2021-05-27', '2021-05-28', 'Conform', 1, 'MASTER CARD'),
(16, 'Miss.', 'ruby', 'hern', 'hern@gmail.com', 'Non Filipino', 'Belgium', '09876543212', 'Superior Room', '1', 'Room only', '2021-05-26', '2021-05-27', 'Rejected', 1, 'GCASH'),
(17, 'Miss.', 'angelica', 'manlapaz', 'angelica@gmail.com', 'Non Filipino', 'Antigua and Barbuda', '09876765432', 'Guest House', '1', 'Half Board', '2021-05-26', '2021-05-28', 'Rejected', 2, 'GCASH');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `frontlogin`
--
ALTER TABLE `frontlogin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `newsletterlog`
--
ALTER TABLE `newsletterlog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `room`
--
ALTER TABLE `room`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roombook`
--
ALTER TABLE `roombook`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `frontlogin`
--
ALTER TABLE `frontlogin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `newsletterlog`
--
ALTER TABLE `newsletterlog`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `room`
--
ALTER TABLE `room`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `roombook`
--
ALTER TABLE `roombook`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
