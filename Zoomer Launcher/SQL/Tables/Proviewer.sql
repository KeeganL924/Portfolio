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
-- Table structure for table `Proviewer`
--

CREATE TABLE `Proviewer` (
  `user_id` char(8) NOT NULL,
  `website` varchar(255) NOT NULL,
  `description` varchar(4242) DEFAULT NULL,
  `youtube_channel_id` char(24) DEFAULT NULL
) ;

--
-- Dumping data for table `Proviewer`
--

INSERT INTO `Proviewer` (`user_id`, `website`, `description`, `youtube_channel_id`) VALUES
('U0000021', 'https://gameguru.com', 'Tech-focused pro reviewer.', '8lG58E2tgRa00SAb9ekLX2Sv'),
('U0000022', 'https://theplayzone.net', 'Deep dives into RPGs.', 'lI3u_CqDy-zFhBClePGDj-xG'),
('U0000023', 'https://indieinsights.org', 'Exploring indie greatness.', 'P8tDkDX5dKAda5Nb1zX2h50-'),
('U0000024', 'https://fpsreviews.tv', 'Shooter mechanics analyst.', 'xe-9hO_VFYCKFoPDJewQF5rz'),
('U0000025', 'https://gamewisehub.com', 'Balanced reviews & tips.', 'e-xsY_27omnycWUoOkXR3v6S');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Proviewer`
--
ALTER TABLE `Proviewer`
  ADD UNIQUE KEY `user_id` (`user_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
