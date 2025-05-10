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
-- Table structure for table `Gamer`
--

CREATE TABLE `Gamer` (
  `user_id` char(8) NOT NULL,
  `gamer_id` varchar(18) NOT NULL,
  `bio` varchar(4242) DEFAULT NULL,
  `birth_date` date NOT NULL,
  `verified_account` bit(1) NOT NULL
) ;

--
-- Dumping data for table `Gamer`
--

INSERT INTO `Gamer` (`user_id`, `gamer_id`, `bio`, `birth_date`, `verified_account`) VALUES
('U0000001', 'johnnygamer', 'Casual RPG lover.', '2000-05-14', b'1'),
('U0000002', 'emzplays', 'Survival games are life!', '1999-11-02', b'1'),
('U0000003', 'brownie99', 'Sniper in FPS.', '1998-07-30', b'0'),
('U0000004', 'sarahluvsart', 'Indie game fan.', '2002-04-10', b'1'),
('U0000005', 'dantheman', 'MMO wizard!', '1997-12-25', b'1'),
('U0000006', 'lisacool', 'Games + coffee = perfect day.', '2001-08-01', b'0'),
('U0000007', 'robobob', 'Retro gamer since 90s.', '1989-10-18', b'1'),
('U0000008', 'nattygreen', 'Builder. Creator. Dreamer.', '2004-03-05', b'1'),
('U0000009', 'kingbk', 'Speedrunner in training.', '1995-06-12', b'1'),
('U0000010', 'moore4more', 'VR enthusiast.', '1996-02-09', b'1'),
('U0000011', 'chrismagic', 'Fantasy RPG explorer.', '2003-12-22', b'0'),
('U0000012', 'jessiworld', 'Gaming since GameBoy.', '2001-09-11', b'1'),
('U0000013', 'kevinplayz', 'Shooter games are my jam.', '1999-01-17', b'1'),
('U0000014', 'vickygamer', 'Puzzle pro.', '1997-10-05', b'0'),
('U0000015', 'ryrygames', 'Co-op > solo.', '2000-07-28', b'1'),
('U0000016', 'amandamouse', 'Platformers all day.', '2002-03-09', b'1'),
('U0000017', 'davehackz', 'Coding and gaming.', '1998-06-06', b'0'),
('U0000018', 'laurabuilder', 'Minecraft forever.', '1996-01-19', b'1'),
('U0000019', 'andyplayz', 'Lets GO!', '2003-05-30', b'1'),
('U0000020', 'ashleystar', 'I play it all.', '1995-08-08', b'1');

--
-- Triggers `Gamer`
--
DELIMITER $$
CREATE TRIGGER `gamer_min_age` BEFORE INSERT ON `Gamer` FOR EACH ROW BEGIN
  IF TIMESTAMPDIFF(YEAR, NEW.birth_date, CURDATE()) < 13 THEN
    SIGNAL SQLSTATE '45000'
    SET MESSAGE_TEXT = 'Must be 13 or older to register.';
  END IF;
END
$$
DELIMITER ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Gamer`
--
ALTER TABLE `Gamer`
  ADD UNIQUE KEY `user_id` (`user_id`),
  ADD UNIQUE KEY `gamer_id` (`gamer_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
