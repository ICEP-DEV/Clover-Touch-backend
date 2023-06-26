-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 26, 2023 at 01:38 PM
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
-- Database: `clevertouchdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `smartnote`
--

CREATE TABLE `smartnote` (
  `notes_id` int(11) NOT NULL,
  `notes_title` varchar(100) DEFAULT NULL,
  `notes_description` varchar(10000) DEFAULT NULL,
  `notes_date_stamp` date DEFAULT NULL,
  `stud_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `smartnote`
--

INSERT INTO `smartnote` (`notes_id`, `notes_title`, `notes_description`, `notes_date_stamp`, `stud_id`) VALUES
(1, 'chapter 1', NULL, '2023-06-26', 1),
(2, 'chapter 1', 'my notes', '2023-06-26', 1);

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
(1, 215478963, 'Dineo', 'Maleka', 'zxc123'),
(2, 215365984, 'James', 'Nkuna', 'zxc123');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `smartnote`
--
ALTER TABLE `smartnote`
  ADD PRIMARY KEY (`notes_id`),
  ADD KEY `stud_notes` (`stud_id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`stud_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `smartnote`
--
ALTER TABLE `smartnote`
  MODIFY `notes_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `stud_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `smartnote`
--
ALTER TABLE `smartnote`
  ADD CONSTRAINT `stud_notes` FOREIGN KEY (`stud_id`) REFERENCES `student` (`stud_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
