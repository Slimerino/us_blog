-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jan 06, 2019 at 08:34 AM
-- Server version: 5.6.34-log
-- PHP Version: 7.2.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `store`
--

-- --------------------------------------------------------

--
-- Table structure for table `sb_blog`
--

CREATE TABLE `sb_blog` (
  `id` int(11) NOT NULL,
  `author` varchar(2555) NOT NULL,
  `message` varchar(2555) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sb_blog`
--

INSERT INTO `sb_blog` (`id`, `author`, `message`) VALUES
(1, 'Slimey', 'test'),
(2, 'The', 'test');

-- --------------------------------------------------------

--
-- Table structure for table `sb_comments`
--

CREATE TABLE `sb_comments` (
  `id` int(11) NOT NULL,
  `author` varchar(2555) NOT NULL,
  `comment` varchar(25555) NOT NULL,
  `blogid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sb_comments`
--

INSERT INTO `sb_comments` (`id`, `author`, `comment`, `blogid`) VALUES
(1, 'Slimey', 'test', 1),
(2, 'The', 'Test', 1),
(3, 'The', 'test', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `sb_blog`
--
ALTER TABLE `sb_blog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sb_comments`
--
ALTER TABLE `sb_comments`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `sb_blog`
--
ALTER TABLE `sb_blog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `sb_comments`
--
ALTER TABLE `sb_comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
