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
-- Table structure for table `ZUser`
--

CREATE TABLE `ZUser` (
  `user_id` char(8) NOT NULL,
  `name` varchar(64) NOT NULL,
  `email` varchar(255) NOT NULL,
  `join_date` date NOT NULL
) ;

--
-- Dumping data for table `ZUser`
--

INSERT INTO `ZUser` (`user_id`, `name`, `email`, `join_date`) VALUES
('U0000001', 'John Smith', 'johnsmith@gmail.com', '2022-03-15'),
('U0000002', 'Emily White', 'emilywhite@gmail.com', '2023-01-20'),
('U0000003', 'Michael Brown', 'michael.b@gmail.com', '2021-07-30'),
('U0000004', 'Sarah Johnson', 'sarah.j@gmail.com', '2022-12-01'),
('U0000005', 'Daniel Rodriguez', 'danielr@gmail.com', '2023-06-05'),
('U0000006', 'Lisa Carter', 'lisac@gmail.com', '2022-08-09'),
('U0000007', 'Robert Lee', 'robertl@gmail.com', '2023-02-17'),
('U0000008', 'Natalie Green', 'natalieg@gmail.com', '2023-04-22'),
('U0000009', 'Brandon King', 'brandonk@gmail.com', '2021-09-13'),
('U0000010', 'Angela Moore', 'angelam@gmail.com', '2023-05-26'),
('U0000011', 'Chris Martinez', 'chrism@gmail.com', '2021-11-04'),
('U0000012', 'Jessica Wilson', 'jessicaw@gmail.com', '2023-07-10'),
('U0000013', 'Kevin Thompson', 'kevint@gmail.com', '2022-02-23'),
('U0000014', 'Victoria Lopez', 'victorial@gmail.com', '2023-03-14'),
('U0000015', 'Ryan Mitchell', 'ryanm@gmail.com', '2022-10-12'),
('U0000016', 'Amanda Davis', 'amandad@gmail.com', '2023-09-01'),
('U0000017', 'David Harris', 'davidh@gmail.com', '2021-06-21'),
('U0000018', 'Laura Gonzalez', 'laurag@gmail.com', '2022-04-11'),
('U0000019', 'Andrew Perez', 'andrewp@gmail.com', '2023-01-03'),
('U0000020', 'Ashley Taylor', 'ashleyt@gmail.com', '2023-08-08'),
('U0000021', 'Tech Guru', 'contact@gameguru.com', '2022-06-15'),
('U0000022', 'PlayZone RPG Master', 'contact@theplayzone.net', '2023-02-10'),
('U0000023', 'Indie Insights', 'support@indieinsights.org', '2021-11-05'),
('U0000024', 'FPS Reviews', 'support@fpsreviews.tv', '2024-04-22'),
('U0000025', 'GameWise Hub', 'contactus@gamewisehub.com', '2021-08-30'),
('U0000026', 'Pixel Studios', 'biz@pixelstudios.com', '2020-01-07'),
('U0000027', 'Iceberg Devs', 'business@icebergdevs.ca', '2019-05-16'),
('U0000028', 'Ninjadev', 'zoomerlauncher@ninjadev.jp', '2020-12-11'),
('U0000029', 'Byteblitz', 'zoomy@byteblitz.de', '2020-02-10'),
('U0000030', 'Techspark', 'biz@techspark.in', '2020-04-19'),
('U0000031', 'MegaPub', 'biz@megapub.com', '2020-03-10'),
('U0000032', 'Launch Games', 'business@launchgames.co', '2019-07-18'),
('U0000033', 'Firehawk Media', 'business@firehawkmedia.com', '2020-10-25'),
('U0000034', 'Skyline Entertainment', 'zoomerlauncher@skylineentertainment.net', '2020-01-12'),
('U0000035', 'ArcadeWorks', 'zoomerlauncher@arcadeworks.com', '2020-08-07');

--
-- Triggers `ZUser`
--
DELIMITER $$
CREATE TRIGGER `user_join_not_future` BEFORE INSERT ON `ZUser` FOR EACH ROW BEGIN
  IF NEW.join_date > CURDATE() THEN
    SIGNAL SQLSTATE '45000'
    SET MESSAGE_TEXT = 'Join date is invalid (future date).';
  END IF;
END
$$
DELIMITER ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ZUser`
--
ALTER TABLE `ZUser`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `email` (`email`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
