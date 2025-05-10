-- phpMyAdmin SQL Dump
-- version 4.9.5deb2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: May 10, 2025 at 10:05 PM
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
-- Table structure for table `Publisher`
--

CREATE TABLE `Publisher` (
  `user_id` char(8) NOT NULL,
  `website` varchar(255) DEFAULT NULL,
  `date_founded` date DEFAULT NULL,
  `contact_email` varchar(255) DEFAULT NULL
) ;

--
-- Dumping data for table `Publisher`
--

INSERT INTO `Publisher` (`user_id`, `website`, `date_founded`, `contact_email`) VALUES
('U0000031', 'https://megapub.com', '2001-05-20', 'info@megapub.com'),
('U0000032', 'https://launchgames.co', '2003-11-01', 'publish@launchgames.co'),
('U0000033', 'https://firehawkmedia.com', '1998-08-12', 'admin@firehawkmedia.com'),
('U0000034', 'https://skylineentertainment.net', '2005-06-30', 'games@skylineentertainment.net'),
('U0000035', 'https://arcadeworks.com', '2010-03-15', 'arcade@arcadeworks.com');

--
-- Triggers `Publisher`
--
DELIMITER $$
CREATE TRIGGER `publisher_date_check` BEFORE INSERT ON `Publisher` FOR EACH ROW BEGIN
  IF NEW.date_founded > CURDATE() THEN
    SIGNAL SQLSTATE '45000'
    SET MESSAGE_TEXT = 'Publisher founding date must be in the past.';
  END IF;
END
$$
DELIMITER ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Publisher`
--
ALTER TABLE `Publisher`
  ADD UNIQUE KEY `user_id` (`user_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
