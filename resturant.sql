-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 20, 2020 at 07:29 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.2.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `resturant`
--

-- --------------------------------------------------------

--
-- Table structure for table `booktable`
--

CREATE TABLE `booktable` (
  `slno` int(50) NOT NULL,
  `name` text NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone` varchar(12) NOT NULL,
  `date` date NOT NULL,
  `time` time(6) NOT NULL,
  `people` int(5) NOT NULL,
  `msg` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `booktable`
--

INSERT INTO `booktable` (`slno`, `name`, `email`, `phone`, `date`, `time`, `people`, `msg`) VALUES
(1, 'Prasad SR', 'prasad@gmail.com', '8778877865', '2020-10-22', '16:47:00.000000', 5, 'please reserve one table'),
(2, 'Rizwan shaikh', 'taufiquea008@gmail.com', '9036470079', '2020-10-23', '16:58:00.000000', 6, ''),
(3, 'shabir', 'shabi@gml.com', '6565654567', '2020-10-24', '18:00:00.000000', 4, 'plz reserve'),
(4, 'shabir', 'shabi@gml.com', '6565654567', '2020-10-24', '18:00:00.000000', 4, 'hello');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `slno` int(12) NOT NULL,
  `name` text NOT NULL,
  `phone_num` varchar(13) NOT NULL,
  `subject` text NOT NULL,
  `msg` text NOT NULL,
  `date` datetime(6) DEFAULT NULL,
  `email` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`slno`, `name`, `phone_num`, `subject`, `msg`, `date`, `email`) VALUES
(1, 'Prasad SR', '8778877865', 'Whats the todays special', 'hello', '2020-10-17 21:48:40.334233', 'prasad@gmail.com'),
(2, 'asad', '9036470079', 'Regarding booking of table', 'plz check the table is available on this day', '2020-10-17 21:50:24.114854', 'khala@xdyz'),
(3, 'taufique', '9036470079', 'Request for table booking', 'hello', '2020-10-17 21:56:18.671896', 'tfk@1234'),
(4, 'taufique', '9036470079', 'Request for table booking', 'hello', '2020-10-17 21:57:17.910970', 'tfk@1234'),
(5, 'taufique', '9036470079', 'Request for table booking', 'hello', '2020-10-17 21:58:31.975864', 'tfk@1234'),
(6, 'anam', '9482994005', 'table availability', 'hello taufique', '2020-10-17 22:02:37.572359', 'anam@gmail.com'),
(7, 'altaf', '9845984576', 'hello', 'dagfdfhfg bvdbdfb', '2020-10-18 11:33:28.477950', 'altaf@gmail.com'),
(8, 'Prasad SR', '877887756', 'test message for mail', 'hello', '2020-10-18 14:57:14.833791', 'prasad@gmail.com'),
(9, 'ibrahim', '9036470079', 'Enquiry on menu', 'please bring the menu', '2020-10-18 15:30:39.538973', 'ibrahim@gmail.com'),
(10, 'Prasad SR', '8778877865', 'Whats the todays special', 'hfhdfhf', '2020-10-18 15:33:37.738087', 'prasad@gmail.com'),
(11, 'Prasad SR', '8778877865', 'Whats the todays special', 'wegterh', '2020-10-18 15:58:55.283498', 'prasad@gmail.com'),
(12, 'Rizwan shaikh', '9036470079', 'test message for mail', 'hello', '2020-10-18 16:00:22.059809', 'taufiquea008@gmail.c');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `booktable`
--
ALTER TABLE `booktable`
  ADD PRIMARY KEY (`slno`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`slno`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `booktable`
--
ALTER TABLE `booktable`
  MODIFY `slno` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `slno` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
