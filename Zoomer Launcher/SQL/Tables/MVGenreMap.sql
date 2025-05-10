-- phpMyAdmin SQL Dump
-- version 4.9.5deb2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: May 10, 2025 at 10:04 PM
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
-- Table structure for table `MVGenreMap`
--

CREATE TABLE `MVGenreMap` (
  `game_id` char(8) NOT NULL,
  `genre_type` varchar(16) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `MVGenreMap`
--

INSERT INTO `MVGenreMap` (`game_id`, `genre_type`) VALUES
('G0000001', 'Adventure'),
('G0000001', 'Fantasy'),
('G0000001', 'RPG'),
('G0000002', 'Action'),
('G0000002', 'Multiplayer'),
('G0000003', 'Casual'),
('G0000003', 'Puzzle'),
('G0000004', 'Horror'),
('G0000004', 'Survival'),
('G0000005', 'Strategy'),
('G0000005', 'Tower Defense'),
('G0000006', 'Co-op'),
('G0000006', 'Sci-Fi'),
('G0000006', 'Shooter'),
('G0000007', 'Farming'),
('G0000007', 'Simulation'),
('G0000008', 'City Builder'),
('G0000008', 'Simulation'),
('G0000008', 'Strategy'),
('G0000009', 'Fantasy'),
('G0000009', 'Fighting'),
('G0000009', 'Multiplayer'),
('G0000010', 'Action'),
('G0000010', 'Runner'),
('G0000010', 'Survival'),
('G0000011', 'Adventure'),
('G0000011', 'Exploration'),
('G0000011', 'Simulation'),
('G0000012', 'Arcade'),
('G0000012', 'Racing'),
('G0000012', 'Sports'),
('G0000013', 'Action'),
('G0000013', 'Horror'),
('G0000013', 'Shooter'),
('G0000014', 'Casual'),
('G0000014', 'Simulation'),
('G0000014', 'Time Management'),
('G0000015', 'Action'),
('G0000015', 'Dungeon Crawler'),
('G0000015', 'Fantasy'),
('G0000016', 'Adventure'),
('G0000016', 'Sci-Fi'),
('G0000016', 'Thriller'),
('G0000017', 'Simulation'),
('G0000017', 'Strategy'),
('G0000017', 'Tycoon'),
('G0000018', 'Action'),
('G0000018', 'Fighting'),
('G0000018', 'Multiplayer'),
('G0000019', 'Adventure'),
('G0000019', 'Exploration'),
('G0000019', 'Fantasy'),
('G0000020', 'Action'),
('G0000020', 'Runner'),
('G0000020', 'Sci-Fi');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `MVGenreMap`
--
ALTER TABLE `MVGenreMap`
  ADD PRIMARY KEY (`game_id`,`genre_type`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
