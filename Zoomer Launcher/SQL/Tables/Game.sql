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
-- Table structure for table `Game`
--

CREATE TABLE `Game` (
  `game_id` char(8) NOT NULL,
  `name` varchar(64) NOT NULL,
  `description` varchar(4242) DEFAULT NULL,
  `release_date` date NOT NULL,
  `price` int NOT NULL,
  `install_size` int NOT NULL,
  `age_rating` char(1) NOT NULL,
  `last_update_date` date NOT NULL,
  `rec_os` varchar(16) NOT NULL,
  `rec_cpu` varchar(8) NOT NULL,
  `rec_ram_speed` int NOT NULL,
  `rec_ram_quantity` int NOT NULL,
  `rec_free_disk` int NOT NULL,
  `publisher_id` char(8) DEFAULT NULL
) ;

--
-- Dumping data for table `Game`
--

INSERT INTO `Game` (`game_id`, `name`, `description`, `release_date`, `price`, `install_size`, `age_rating`, `last_update_date`, `rec_os`, `rec_cpu`, `rec_ram_speed`, `rec_ram_quantity`, `rec_free_disk`, `publisher_id`) VALUES
('G0000001', 'Shadow Quest', 'Explore the shadows of forgotten lands.', '2023-12-01', 1999, 22000, 'T', '2022-12-01', 'Windows', 'Intel', 3200, 8192, 30000, 'U0000031'),
('G0000002', 'Sky Battles', 'Dogfight in the skies.', '2022-01-20', 2999, 18000, 'T', '2022-10-11', 'Windows', 'AMD', 3000, 8192, 25000, 'U0000032'),
('G0000003', 'Puzzle Town', 'Solve city-based logic puzzles.', '2023-02-15', 1499, 12000, 'E', '2023-07-01', 'Mac', 'Intel', 2666, 4096, 15000, 'U0000032'),
('G0000004', 'Nightmare Alley', 'Survive the darkness.', '2020-10-30', 2499, 25000, 'M', '2021-11-05', 'Windows', 'AMD', 3200, 16384, 40000, 'U0000031'),
('G0000005', 'Tower Defense X', 'Defend your castle from waves.', '2021-09-12', 999, 9000, 'E', '2023-01-08', 'Linux', 'Intel', 2400, 4096, 12000, 'U0000031'),
('G0000006', 'Galactic Raiders', 'Team-based space missions.', '2022-06-24', 1999, 28000, 'T', '2023-03-10', 'Windows', 'AMD', 3200, 8192, 35000, NULL),
('G0000007', 'Farm Life', 'Build your perfect farm.', '2023-03-01', 1799, 10000, 'E', '2023-03-15', 'Mac', 'Intel', 2666, 4096, 15000, 'U0000032'),
('G0000008', 'City Builder Pro', 'Modern city planning game.', '2022-11-21', 2299, 22000, 'E', '2023-04-01', 'Windows', 'AMD', 3000, 8192, 25000, 'U0000031'),
('G0000009', 'Magic Duel', 'Wizard vs. wizard action.', '2021-05-14', 2999, 27000, 'T', '2023-02-20', 'Windows', 'Intel', 3200, 8192, 35000, NULL),
('G0000010', 'Island Runner', 'Escape the island!', '2023-01-05', 1599, 15000, 'E', '2023-03-03', 'Linux', 'AMD', 2400, 4096, 18000, NULL),
('G0000011', 'Deep Dive', 'Explore the deep sea.', '2022-08-08', 1899, 20000, 'T', '2023-01-01', 'Windows', 'Intel', 3000, 8192, 25000, 'U0000031'),
('G0000012', 'Fast Wheels 5', 'High-speed arcade racer.', '2020-09-09', 1999, 23000, 'E', '2022-12-12', 'Windows', 'AMD', 2666, 8192, 30000, 'U0000032'),
('G0000013', 'Zombie Rush', 'Survive the apocalypse.', '2023-04-01', 2099, 27000, 'M', '2023-04-15', 'Windows', 'Intel', 3200, 8192, 35000, 'U0000033'),
('G0000014', 'Cooking Hero', 'Cook under pressure.', '2021-11-25', 1299, 11000, 'E', '2022-01-10', 'Mac', 'AMD', 2400, 4096, 15000, 'U0000033'),
('G0000015', 'Dungeon Blaster', 'Blast through dungeons.', '2022-03-15', 1799, 21000, 'T', '2022-09-01', 'Windows', 'Intel', 3000, 8192, 30000, 'U0000033'),
('G0000016', 'Alien Lab', 'You are the experiment.', '2023-06-20', 1999, 24000, 'T', '2023-07-01', 'Windows', 'AMD', 3200, 8192, 35000, 'U0000035'),
('G0000017', 'Train Tycoon', 'Build a railway empire.', '2022-04-18', 1599, 18000, 'E', '2022-10-01', 'Linux', 'Intel', 2666, 4096, 20000, NULL),
('G0000018', 'Battle Arena', 'Arena-style multiplayer.', '2021-02-02', 2999, 26000, 'M', '2023-02-11', 'Windows', 'AMD', 3200, 16384, 40000, 'U0000035'),
('G0000019', 'Hidden Forest', 'A journey through enchanted woods.', '2023-03-10', 1499, 16000, 'E', '2023-04-01', 'Mac', 'Intel', 2400, 8192, 20000, NULL),
('G0000020', 'Cyber Runner', 'Run. Hack. Escape.', '2022-07-01', 2099, 27000, 'T', '2023-01-20', 'Windows', 'AMD', 3200, 8192, 35000, 'U0000035');

--
-- Triggers `Game`
--
DELIMITER $$
CREATE TRIGGER `check_diskspace` BEFORE INSERT ON `Game` FOR EACH ROW BEGIN
  IF NEW.rec_free_disk < NEW.install_size THEN
    SIGNAL SQLSTATE '45000'
    SET MESSAGE_TEXT = 'Reccomended disk space must be greater than or equal to install size.';
  END IF;
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `game_release_not_future` BEFORE INSERT ON `Game` FOR EACH ROW BEGIN
  IF NEW.release_date > CURDATE() THEN
    SIGNAL SQLSTATE '45000'
    SET MESSAGE_TEXT = 'Release date cannot be in the future.';
  END IF;
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `lastupdate_not_backwards` BEFORE UPDATE ON `Game` FOR EACH ROW BEGIN
  IF NEW.last_update_date < OLD.last_update_date THEN
    SIGNAL SQLSTATE '45000'
    SET MESSAGE_TEXT = "Last update cannot be before latest update.";
  END IF;
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `lastupdate_not_future_insert` BEFORE INSERT ON `Game` FOR EACH ROW BEGIN
  IF NEW.last_update_date > CURDATE() THEN
    SIGNAL SQLSTATE '45000'
    SET MESSAGE_TEXT = 'Last update date cannot be in the future.';
  END IF;
END
$$
DELIMITER ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Game`
--
ALTER TABLE `Game`
  ADD PRIMARY KEY (`game_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
