-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 04, 2023 at 09:38 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `students`
--

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `stud_id` int(11) NOT NULL,
  `stud_num` int(11) DEFAULT NULL,
  `stud_name` varchar(100) DEFAULT NULL,
  `stud_surname` varchar(100) DEFAULT NULL,
  `stud_password` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`stud_id`, `stud_num`, `stud_name`, `stud_surname`, `stud_password`) VALUES
(120045, 214858536, 'Jessicah', 'Alba', 'jess@123'),
(178879, 219656211, 'Thubile', 'Mashasha', 'thubile@123'),
(210575, 221452302, 'Joel', 'Ortiz', 'joel@123'),
(333001, 220666818, 'Sibusiso', 'Pana', 'sbu@123'),
(555666, 214777886, 'Ursula', 'Van-Niekerk', 'sula@123'),
(700701, 219236650, 'Thando', 'Fredricks', 'thando@123'),
(776114, 216889211, 'Bongo', 'Siwahla', 'bongz@123'),
(888424, 216355212, 'Micah', 'Green', 'micah@123'),
(900236, 215023984, 'Edward', 'Dinale', 'eddie@123'),
(909009, 215898311, 'Randy', 'Bavuma', 'randy@123');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`stud_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `stud_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3330022;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
