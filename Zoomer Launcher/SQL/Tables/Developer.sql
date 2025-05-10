-- phpMyAdmin SQL Dump
-- version 4.9.5deb2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: May 10, 2025 at 09:59 PM
-- Server version: 8.0.42-0ubuntu0.20.04.1
-- PHP Version: 7.4.3-4ubuntu2.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `zoomerlauncher`
--

-- --------------------------------------------------------

--
-- Table structure for table `Developer`
--

CREATE TABLE `Developer` (
  `user_id` char(8) NOT NULL,
  `country` varchar(64) DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL,
  `contact_email` varchar(255) DEFAULT NULL
) ;

--
-- Dumping data for table `Developer`
--

INSERT INTO `Developer` (`user_id`, `country`, `website`, `contact_email`) VALUES
('U0000026', 'USA', 'https://pixelstudios.com', 'dev@pixelstudios.com'),
('U0000027', 'Canada', 'https://icebergdevs.ca', 'support@icebergdevs.ca'),
('U0000028', 'Japan', 'https://ninjadev.jp', 'team@ninjadev.jp'),
('U0000029', 'Germany', 'https://byteblitz.de', 'hello@byteblitz.de'),
('U0000030', 'India', 'https://techspark.in', 'contact@techspark.in');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Developer`
--
ALTER TABLE `Developer`
  ADD UNIQUE KEY `user_id` (`user_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
