-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Sep 25, 2024 at 07:17 AM
-- Server version: 10.11.8-MariaDB-cll-lve
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `u948335622_nebatech_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(60) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `photo` varchar(150) NOT NULL,
  `created_on` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `firstname`, `lastname`, `photo`, `created_on`) VALUES
(1, 'imabdulhafiz', '$2y$10$xaJZasri0vVbzD9OFltFLOEItNUXHKOadfemgSV.qoaHcfxFDxh..', 'Abdul-Hafiz', 'Yussif', 'abdulhafiz.PNG', '2024-09-14');

-- --------------------------------------------------------

--
-- Table structure for table `candidates`
--

CREATE TABLE `candidates` (
  `id` int(11) NOT NULL,
  `position_id` int(11) NOT NULL,
  `firstname` varchar(30) NOT NULL,
  `lastname` varchar(30) NOT NULL,
  `photo` varchar(150) NOT NULL,
  `platform` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `candidates`
--

INSERT INTO `candidates` (`id`, `position_id`, `firstname`, `lastname`, `photo`, `platform`) VALUES
(19, 11, 'Abass Nabila', 'Alhassan', 'WhatsApp Image 2024-09-19 at 14.22.48.jpeg', ''),
(20, 11, 'Florence', 'Obri Manu', 'WhatsApp Image 2024-09-25 at 03.07.31.jpeg', ''),
(21, 12, 'Kamil ', 'Awal', '', ''),
(22, 12, 'Amina', 'Zakaria', '', ''),
(23, 13, 'Samiha', 'Musah', 'WhatsApp Image 2024-09-19 at 14.23.06.jpeg', ''),
(24, 13, 'Asana', 'Issahaku', 'WhatsApp Image 2024-09-25 at 03.09.17.jpeg', ''),
(25, 14, 'Abdul-Wadud', 'Neindow', '', ''),
(26, 14, 'Saeed', 'Ibrahim', '', ''),
(27, 15, 'Salina', 'Farraty', '', ''),
(28, 16, 'David', 'Abanga', 'WhatsApp Image 2024-09-19 at 14.29.09.jpeg', ''),
(29, 16, 'Damba ', 'Ibrahim', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `positions`
--

CREATE TABLE `positions` (
  `id` int(11) NOT NULL,
  `description` varchar(50) NOT NULL,
  `max_vote` int(11) NOT NULL,
  `priority` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `positions`
--

INSERT INTO `positions` (`id`, `description`, `max_vote`, `priority`) VALUES
(11, 'President', 1, 1),
(12, 'Secretary', 1, 2),
(13, 'Finance', 1, 3),
(14, 'Treasurer', 1, 4),
(15, 'WOCOM', 1, 5),
(16, 'PRO', 1, 6);

-- --------------------------------------------------------

--
-- Table structure for table `voters`
--

CREATE TABLE `voters` (
  `id` int(11) NOT NULL,
  `voters_id` varchar(15) NOT NULL,
  `password` varchar(60) NOT NULL,
  `firstname` varchar(30) NOT NULL,
  `lastname` varchar(30) NOT NULL,
  `photo` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `voters`
--

INSERT INTO `voters` (`id`, `voters_id`, `password`, `firstname`, `lastname`, `photo`) VALUES
(3, 'wAQeWFx9nIVOchJ', '$2y$10$pulL9.SeC5W2bnfC1yYinuhn2G6yO0K1q2EAzkJeGQX/FajtqEngS', 'Adam', 'Adani', ''),
(4, 'w9RvfBs4QMXgjdh', '$2y$10$yJQRFqL60bB/nsPm8rO4AO3MgDMNpTsoSt6Q/.nGdP5yci/YA5RhG', 'Barikisu', 'Bawa', ''),
(5, 'XhgcQzYGf7CebLA', '$2y$10$qnLzQfiNDPxrmI.xRejOaeth11HfzmjVwQeaQMCWdokSg.adxyEY2', 'Yussif', 'Hamza', ''),
(6, 'DFvNQ1H6uG2cE7I', '$2y$10$fj34GUAkZERtQtgGTKjx1uaKJwW/WVLFmemPZIheLW1dLHUBJPJ1K', 'Karim', 'Zakaria', ''),
(7, 'NIqhn7rjdLV4GoH', '$2y$10$MKSLfL/FpD74PAJ3NbWn2ueqZO2Ygs9oHFRHOpTNYKjIsJRZgUUCy', 'Kofi', 'Adams', ''),
(8, 'ra8mYchgSTxX7iL', '$2y$10$/TjFLFtQ1rB5DiauTljDUOPq.zcx1.yMkPTIpJPw3lOkNPt0PW3ee', 'Mohammed', 'Amina', '');

-- --------------------------------------------------------

--
-- Table structure for table `votes`
--

CREATE TABLE `votes` (
  `id` int(11) NOT NULL,
  `voters_id` int(11) NOT NULL,
  `candidate_id` int(11) NOT NULL,
  `position_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `votes`
--

INSERT INTO `votes` (`id`, `voters_id`, `candidate_id`, `position_id`) VALUES
(82, 3, 19, 11),
(83, 3, 22, 12),
(84, 3, 23, 13),
(85, 3, 26, 14),
(86, 3, 27, 15),
(87, 3, 28, 16),
(88, 7, 19, 11),
(89, 7, 22, 12),
(90, 7, 23, 13),
(91, 7, 25, 14),
(92, 7, 27, 15),
(93, 7, 28, 16),
(94, 5, 19, 11),
(95, 5, 21, 12),
(96, 5, 24, 13),
(97, 5, 25, 14),
(98, 5, 27, 15),
(99, 5, 29, 16),
(100, 4, 19, 11),
(101, 4, 22, 12),
(102, 4, 24, 13),
(103, 4, 26, 14),
(104, 4, 27, 15),
(105, 4, 29, 16),
(106, 8, 19, 11),
(107, 8, 22, 12),
(108, 8, 23, 13),
(109, 8, 25, 14),
(110, 8, 27, 15),
(111, 8, 29, 16);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `candidates`
--
ALTER TABLE `candidates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `positions`
--
ALTER TABLE `positions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `voters`
--
ALTER TABLE `voters`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `votes`
--
ALTER TABLE `votes`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `candidates`
--
ALTER TABLE `candidates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `positions`
--
ALTER TABLE `positions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `voters`
--
ALTER TABLE `voters`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `votes`
--
ALTER TABLE `votes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=112;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
