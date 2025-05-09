-- phpMyAdmin SQL Dump
-- version 4.9.5deb2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: May 09, 2025 at 04:04 PM
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

-- --------------------------------------------------------

--
-- Table structure for table `DLC`
--

CREATE TABLE `DLC` (
  `game_id` char(8) NOT NULL,
  `dlc_id` char(8) NOT NULL,
  `name` varchar(64) NOT NULL,
  `description` varchar(4242) DEFAULT NULL,
  `price` int NOT NULL,
  `install_size` int NOT NULL
) ;

--
-- Dumping data for table `DLC`
--

INSERT INTO `DLC` (`game_id`, `dlc_id`, `name`, `description`, `price`, `install_size`) VALUES
('G0000001', 'D0000000', 'Echoes of Darkness', 'New regions and quests hidden deep in forgotten lands.', 1299, 3200),
('G0000001', 'D0000001', 'Whispering Vaults', 'Unlock mysterious vaults filled with rare loot and lore.', 799, 1500),
('G0000002', 'D0000002', 'Night Skirmishes', 'Battle enemy squadrons under the cover of night.', 1499, 2700),
('G0000002', 'D0000003', 'Ace Training Missions', 'Improve your dogfighting skills in elite training sims.', 999, 1800),
('G0000003', 'D0000004', 'Downtown Logic Pack', 'Challenging puzzles set in the city center.', 699, 1200),
('G0000004', 'D0000005', 'Twisted Dreams', 'Survive surreal horror maps with new enemies.', 1999, 4600),
('G0000004', 'D0000006', 'Blood Moon Mode', 'A hardcore survival challenge under a red moon.', 1299, 3100),
('G0000005', 'D0000007', 'Castle Siege Pack', 'New levels where attackers bring siege weapons.', 499, 800),
('G0000006', 'D0000008', 'Nebula Ops', 'Stealth missions in asteroid fields.', 999, 2100),
('G0000006', 'D0000009', 'Cosmic Armory', 'New weapons and equipment for your crew.', 1299, 1700),
('G0000007', 'D0000010', 'Orchard Season', 'Plant fruit trees and host harvest festivals.', 799, 900),
('G0000007', 'D0000011', 'Pioneer Tools', 'Advanced tools to automate your farming.', 1299, 1600),
('G0000008', 'D0000012', 'Green Energy Expansion', 'Add solar and wind infrastructure to your city.', 1199, 2200),
('G0000009', 'D0000013', 'Arcane Trials', 'A magical arena mode to test your skills.', 1499, 2500),
('G0000010', 'D0000014', 'Jungle Maze', 'Navigate new maze levels filled with traps.', 999, 1300),
('G0000011', 'D0000015', 'Coral Frontier', 'Explore new biomes and find rare sea creatures.', 1399, 2400),
('G0000012', 'D0000016', 'Turbo Boost Pack', 'Enhanced cars and nitro tracks.', 1199, 2000),
('G0000013', 'D0000017', 'Undead Invasion', 'Face waves of zombies in new apocalypse zones.', 1499, 3000),
('G0000014', 'D0000018', 'Pressure Cooker Mode', 'Time-based challenges in a hectic kitchen.', 799, 1100),
('G0000015', 'D0000019', 'Cursed Crypts', 'Ancient ruins filled with traps and treasures.', 1299, 1900),
('G0000016', 'D0000020', 'Specimen Files', 'Discover backstories of past experiments.', 999, 1400),
('G0000017', 'D0000021', 'Mountain Rails', 'Build across steep cliffs and icy peaks.', 899, 1500),
('G0000018', 'D0000022', 'Gladiator Champions', 'Unlock elite characters and arenas.', 1999, 4700),
('G0000018', 'D0000023', 'Warlord Weapons Pack', 'Exclusive weapons for top-tier competitors.', 999, 1800),
('G0000019', 'D0000024', 'Moonlit Glade', 'A dreamy night-time adventure with puzzles.', 699, 900),
('G0000020', 'D0000025', 'Firewall Run', 'New levels with advanced hacking puzzles.', 1199, 2200),
('G0000020', 'D0000026', 'Synth Skins', 'Cyber-themed cosmetic skins and soundtracks.', 599, 1000);

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

-- --------------------------------------------------------

--
-- Table structure for table `PaymentMethod`
--

CREATE TABLE `PaymentMethod` (
  `user_id` char(8) NOT NULL,
  `cardholder_name` varchar(64) NOT NULL,
  `card_number` char(16) NOT NULL,
  `expiration` char(4) NOT NULL,
  `CVV` char(3) NOT NULL,
  `billing_address` varchar(255) NOT NULL,
  `is_default_method` bit(1) NOT NULL
) ;

--
-- Dumping data for table `PaymentMethod`
--

INSERT INTO `PaymentMethod` (`user_id`, `cardholder_name`, `card_number`, `expiration`, `CVV`, `billing_address`, `is_default_method`) VALUES
('U0000001', 'John Smith', '3858201244411258', '0529', '882', '567 Aspen Ct, San Diego, CA', b'1'),
('U0000001', 'John Smith', '6407634202585647', '0525', '079', '345 Elm St, Boston, MA', b'0'),
('U0000001', 'John Smith', '9559041883897393', '0528', '452', '456 Oak Ave, Denver, CO', b'0'),
('U0000002', 'Emily White', '1140535402929506', '0527', '941', '101 Birch Blvd, Seattle, WA', b'0'),
('U0000002', 'Emily White', '6573045464169239', '0527', '792', '890 Spruce Way, Portland, OR', b'0'),
('U0000002', 'Emily White', '8237019499187394', '0525', '452', '234 Cedar Dr, Miami, FL', b'1'),
('U0000003', 'Michael Brown', '3491998637952710', '0526', '419', '101 Birch Blvd, Seattle, WA', b'0'),
('U0000003', 'Michael Brown', '5002174246201589', '0525', '093', '789 Pine Rd, Austin, TX', b'1'),
('U0000003', 'Michael Brown', '7494689420998080', '0527', '186', '123 Maple St, Springfield, IL', b'0'),
('U0000004', 'Sarah Johnson', '8124729503916966', '0529', '047', '101 Birch Blvd, Seattle, WA', b'1'),
('U0000005', 'Daniel Rodriguez', '0681903052671463', '0527', '341', '456 Oak Ave, Denver, CO', b'1'),
('U0000006', 'Lisa Carter', '2327690078259122', '0526', '895', '101 Birch Blvd, Seattle, WA', b'0'),
('U0000006', 'Lisa Carter', '3602620980867788', '0526', '098', '101 Birch Blvd, Seattle, WA', b'0'),
('U0000006', 'Lisa Carter', '6155400494847927', '0529', '509', '678 Redwood Ln, Chicago, IL', b'1'),
('U0000007', 'Robert Lee', '3721538495838302', '0526', '102', '345 Elm St, Boston, MA', b'1'),
('U0000008', 'Natalie Green', '3143063515850197', '0528', '770', '567 Aspen Ct, San Diego, CA', b'1'),
('U0000008', 'Natalie Green', '3436222388781214', '0529', '274', '678 Redwood Ln, Chicago, IL', b'0'),
('U0000008', 'Natalie Green', '3877847285776673', '0529', '954', '123 Maple St, Springfield, IL', b'0'),
('U0000009', 'Brandon King', '0922877139631941', '0529', '960', '567 Aspen Ct, San Diego, CA', b'0'),
('U0000009', 'Brandon King', '8520417677565863', '0527', '193', '123 Maple St, Springfield, IL', b'1'),
('U0000010', 'Angela Moore', '0605134452203589', '0528', '472', '123 Maple St, Springfield, IL', b'0'),
('U0000010', 'Angela Moore', '1804068947304877', '0528', '573', '890 Spruce Way, Portland, OR', b'1'),
('U0000010', 'Angela Moore', '3017907124605691', '0529', '106', '112 Willow Pl, Atlanta, GA', b'0'),
('U0000011', 'Chris Martinez', '1565682629610960', '0529', '008', '234 Cedar Dr, Miami, FL', b'1'),
('U0000013', 'Kevin Thompson', '2639936599250809', '0525', '221', '567 Aspen Ct, San Diego, CA', b'0'),
('U0000013', 'Kevin Thompson', '9912109741294429', '0526', '971', '890 Spruce Way, Portland, OR', b'1'),
('U0000014', 'Victoria Lopez', '5154138279172642', '0529', '918', '567 Aspen Ct, San Diego, CA', b'0'),
('U0000014', 'Victoria Lopez', '9827605539100618', '0526', '473', '890 Spruce Way, Portland, OR', b'1'),
('U0000015', 'Ryan Mitchell', '4654193596675607', '0526', '453', '456 Oak Ave, Denver, CO', b'0'),
('U0000015', 'Ryan Mitchell', '7635921082633296', '0525', '137', '234 Cedar Dr, Miami, FL', b'0'),
('U0000015', 'Ryan Mitchell', '8291712123114338', '0526', '848', '678 Redwood Ln, Chicago, IL', b'1'),
('U0000018', 'Laura Gonzalez', '0657105325188221', '0526', '893', '234 Cedar Dr, Miami, FL', b'1'),
('U0000018', 'Laura Gonzalez', '3059931958961548', '0526', '245', '890 Spruce Way, Portland, OR', b'0'),
('U0000020', 'Ashley Taylor', '4792267883814821', '0526', '608', '345 Elm St, Boston, MA', b'1');

--
-- Triggers `PaymentMethod`
--
DELIMITER $$
CREATE TRIGGER `CardExpirationFormatInsert` BEFORE INSERT ON `PaymentMethod` FOR EACH ROW BEGIN 
    DECLARE exp_month INTEGER;
    SET exp_month = CAST(SUBSTRING(NEW.expiration, 1, 2) AS UNSIGNED);

    IF NOT (exp_month BETWEEN 1 AND 12) THEN
        SIGNAL SQLSTATE "45000"
            SET MESSAGE_TEXT = "Card Expiration must be in valid MMYY formatting.";
    END IF;
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `CardExpirationFormatUpdate` BEFORE UPDATE ON `PaymentMethod` FOR EACH ROW BEGIN 
    DECLARE exp_month INTEGER;
    SET exp_month = CAST(SUBSTRING(NEW.expiration, 1, 2) AS UNSIGNED);

    IF NOT (exp_month BETWEEN 1 AND 12) THEN
        SIGNAL SQLSTATE "45000" 
            SET MESSAGE_TEXT = "Card Expiration must be in valid MMYY formatting.";
    END IF;
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `limit_default_payment_method` BEFORE INSERT ON `PaymentMethod` FOR EACH ROW BEGIN 
  IF NEW.is_default_method = 1 AND (SELECT SUM(is_default_method) FROM PaymentMethod WHERE PaymentMethod.user_id = NEW.user_id) > 0 THEN
    SIGNAL SQLSTATE '45000'
    SET MESSAGE_TEXT = 'User may not have more than one default payment method';
   END IF;
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `limit_default_payment_method_update` BEFORE UPDATE ON `PaymentMethod` FOR EACH ROW BEGIN 
  IF NEW.is_default_method = 1 AND (SELECT SUM(is_default_method) FROM PaymentMethod WHERE PaymentMethod.user_id = NEW.user_id) > 0 THEN
    SIGNAL SQLSTATE '45000'
    SET MESSAGE_TEXT = 'User may not have more than one default payment method';
  END IF;
END
$$
DELIMITER ;

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

-- --------------------------------------------------------

--
-- Table structure for table `RDevelops`
--

CREATE TABLE `RDevelops` (
  `user_id` char(8) NOT NULL,
  `game_id` char(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `RDevelops`
--

INSERT INTO `RDevelops` (`user_id`, `game_id`) VALUES
('U0000026', 'G0000001'),
('U0000027', 'G0000001'),
('U0000027', 'G0000002'),
('U0000030', 'G0000003'),
('U0000028', 'G0000003'),
('U0000027', 'G0000004'),
('U0000029', 'G0000004'),
('U0000027', 'G0000005'),
('U0000028', 'G0000005'),
('U0000030', 'G0000006'),
('U0000028', 'G0000007'),
('U0000030', 'G0000008'),
('U0000026', 'G0000008'),
('U0000027', 'G0000009'),
('U0000026', 'G0000010'),
('U0000029', 'G0000011'),
('U0000027', 'G0000012'),
('U0000028', 'G0000013'),
('U0000029', 'G0000013'),
('U0000028', 'G0000014'),
('U0000026', 'G0000015'),
('U0000028', 'G0000016'),
('U0000026', 'G0000017'),
('U0000028', 'G0000018'),
('U0000026', 'G0000018'),
('U0000029', 'G0000019'),
('U0000027', 'G0000019'),
('U0000026', 'G0000020');

-- --------------------------------------------------------

--
-- Table structure for table `RDLCInCart`
--

CREATE TABLE `RDLCInCart` (
  `user_id` char(8) NOT NULL,
  `dlc_id` char(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `RDLCInCart`
--

INSERT INTO `RDLCInCart` (`user_id`, `dlc_id`) VALUES
('U0000002', 'D0000020'),
('U0000003', 'D0000000'),
('U0000003', 'D0000025'),
('U0000003', 'D0000003'),
('U0000004', 'D0000012'),
('U0000004', 'D0000008'),
('U0000004', 'D0000005'),
('U0000006', 'D0000016'),
('U0000006', 'D0000018'),
('U0000006', 'D0000022'),
('U0000008', 'D0000006'),
('U0000008', 'D0000013'),
('U0000008', 'D0000021'),
('U0000009', 'D0000024'),
('U0000010', 'D0000019'),
('U0000010', 'D0000017'),
('U0000011', 'D0000010'),
('U0000011', 'D0000023'),
('U0000011', 'D0000025'),
('U0000012', 'D0000007'),
('U0000012', 'D0000000'),
('U0000012', 'D0000003'),
('U0000014', 'D0000022'),
('U0000014', 'D0000007'),
('U0000014', 'D0000010'),
('U0000015', 'D0000020'),
('U0000015', 'D0000013'),
('U0000016', 'D0000020'),
('U0000017', 'D0000007'),
('U0000017', 'D0000013'),
('U0000017', 'D0000010'),
('U0000018', 'D0000019'),
('U0000018', 'D0000002'),
('U0000019', 'D0000016'),
('U0000020', 'D0000019'),
('U0000020', 'D0000014');

-- --------------------------------------------------------

--
-- Table structure for table `Review`
--

CREATE TABLE `Review` (
  `user_id` char(8) NOT NULL,
  `game_id` char(8) NOT NULL,
  `rating` int NOT NULL,
  `description` varchar(4242) DEFAULT NULL,
  `review_date` date NOT NULL,
  `review_url` varchar(255) NOT NULL
) ;

--
-- Dumping data for table `Review`
--

INSERT INTO `Review` (`user_id`, `game_id`, `rating`, `description`, `review_date`, `review_url`) VALUES
('U0000002', 'G0000001', 5, 'A bit repetitive but okay.', '2024-04-26', 'https://www.zlauncher.com/review/R0000001'),
('U0000004', 'G0000011', 2, 'Too many bugs to enjoy.', '2024-11-16', 'https://www.zlauncher.com/review/R0000005'),
('U0000005', 'G0000005', 3, 'Fantastic experience overall.', '2024-05-06', 'https://www.zlauncher.com/review/R0000006'),
('U0000007', 'G0000005', 1, 'Not worth the price.', '2024-08-17', 'https://www.zlauncher.com/review/R0000008'),
('U0000008', 'G0000003', 4, 'Pretty decent gameplay.', '2024-06-14', 'https://www.zlauncher.com/review/R0000009'),
('U0000008', 'G0000013', 3, 'Fantastic experience overall.', '2024-08-06', 'https://www.zlauncher.com/review/R0000011'),
('U0000008', 'G0000018', 4, 'Great soundtrack and visuals!', '2024-12-16', 'https://www.zlauncher.com/review/R0000010'),
('U0000009', 'G0000002', 1, 'Not worth the price.', '2025-03-02', 'https://www.zlauncher.com/review/R0000013'),
('U0000009', 'G0000004', 3, 'Highly recommend this game!', '2025-04-16', 'https://www.zlauncher.com/review/R0000014'),
('U0000009', 'G0000008', 1, 'Not bad, but could be better.', '2025-01-10', 'https://www.zlauncher.com/review/R0000012'),
('U0000010', 'G0000020', 4, 'Too many bugs to enjoy.', '2024-12-26', 'https://www.zlauncher.com/review/R0000015'),
('U0000012', 'G0000004', 2, 'Pretty decent gameplay.', '2025-03-28', 'https://www.zlauncher.com/review/R0000017'),
('U0000013', 'G0000001', 4, 'Excellent mechanics and fun!', '2024-10-02', 'https://www.zlauncher.com/review/R0000019'),
('U0000013', 'G0000004', 3, 'Too many bugs to enjoy.', '2025-02-10', 'https://www.zlauncher.com/review/R0000018'),
('U0000015', 'G0000006', 3, 'Not worth the price.', '2025-03-15', 'https://www.zlauncher.com/review/R0000022'),
('U0000015', 'G0000020', 5, 'Loved the graphics and story!', '2025-02-28', 'https://www.zlauncher.com/review/R0000023'),
('U0000016', 'G0000007', 2, 'Not bad, but could be better.', '2024-11-09', 'https://www.zlauncher.com/review/R0000024'),
('U0000019', 'G0000014', 5, 'Great soundtrack and visuals!', '2024-05-19', 'https://www.zlauncher.com/review/R0000027'),
('U0000020', 'G0000003', 1, 'A bit repetitive but okay.', '2024-06-29', 'https://www.zlauncher.com/review/R0000028'),
('U0000021', 'G0000003', 3, 'Offers a competent experience with some notable flaws.', '2025-04-26', 'https://zlauncher.com/review/R0000030'),
('U0000021', 'G0000007', 2, 'Struggles with polish and design, but shows occasional promise.', '2024-02-11', 'https://zlauncher.com/review/R0000029'),
('U0000021', 'G0000010', 3, 'Offers a competent experience with some notable flaws.', '2024-06-10', 'https://zlauncher.com/review/R0000033'),
('U0000021', 'G0000016', 5, 'Outstanding execution across all aspects of the game.', '2025-04-15', 'https://zlauncher.com/review/R0000032'),
('U0000021', 'G0000020', 3, 'Offers a competent experience with some notable flaws.', '2025-01-25', 'https://zlauncher.com/review/R0000031'),
('U0000022', 'G0000002', 4, 'Delivers strong mechanics and enjoyable content with minor issues.', '2025-03-09', 'https://zlauncher.com/review/R0000034'),
('U0000022', 'G0000009', 1, 'Fails to meet basic expectations in performance and gameplay.', '2024-09-22', 'https://zlauncher.com/review/R0000037'),
('U0000022', 'G0000011', 1, 'Fails to meet basic expectations in performance and gameplay.', '2024-06-15', 'https://zlauncher.com/review/R0000036'),
('U0000022', 'G0000017', 5, 'Outstanding execution across all aspects of the game.', '2024-10-25', 'https://zlauncher.com/review/R0000035'),
('U0000023', 'G0000001', 4, 'Delivers strong mechanics and enjoyable content with minor issues.', '2025-04-15', 'https://zlauncher.com/review/R0000041'),
('U0000023', 'G0000002', 4, 'Delivers strong mechanics and enjoyable content with minor issues.', '2024-07-10', 'https://zlauncher.com/review/R0000040'),
('U0000023', 'G0000004', 2, 'Struggles with polish and design, but shows occasional promise.', '2025-01-19', 'https://zlauncher.com/review/R0000039'),
('U0000023', 'G0000008', 2, 'Struggles with polish and design, but shows occasional promise.', '2024-10-19', 'https://zlauncher.com/review/R0000038'),
('U0000023', 'G0000011', 5, 'Outstanding execution across all aspects of the game.', '2024-02-28', 'https://zlauncher.com/review/R0000042'),
('U0000024', 'G0000002', 4, 'Delivers strong mechanics and enjoyable content with minor issues.', '2024-10-09', 'https://zlauncher.com/review/R0000046'),
('U0000024', 'G0000003', 2, 'Struggles with polish and design, but shows occasional promise.', '2024-08-10', 'https://zlauncher.com/review/R0000043'),
('U0000024', 'G0000004', 3, 'Offers a competent experience with some notable flaws.', '2024-07-19', 'https://zlauncher.com/review/R0000045'),
('U0000024', 'G0000006', 3, 'Offers a competent experience with some notable flaws.', '2024-08-03', 'https://zlauncher.com/review/R0000044'),
('U0000024', 'G0000010', 1, 'Fails to meet basic expectations in performance and gameplay.', '2025-01-10', 'https://zlauncher.com/review/R0000047'),
('U0000025', 'G0000013', 5, 'Outstanding execution across all aspects of the game.', '2024-03-18', 'https://zlauncher.com/review/R0000049'),
('U0000025', 'G0000015', 5, 'Outstanding execution across all aspects of the game.', '2024-06-03', 'https://zlauncher.com/review/R0000048');

--
-- Triggers `Review`
--
DELIMITER $$
CREATE TRIGGER `review_requires_ownership` BEFORE INSERT ON `Review` FOR EACH ROW BEGIN
  DECLARE gamer_owns_game INT;

  IF EXISTS (SELECT 1 FROM Gamer WHERE user_id = NEW.user_id) THEN
    SELECT COUNT(*)
    INTO gamer_owns_game
    FROM Transaction T
    JOIN RTPurchasesG R ON T.transaction_id = R.transaction_id
    WHERE T.user_id = NEW.user_id AND R.game_id = NEW.game_id;

    IF gamer_owns_game = 0 THEN
      SIGNAL SQLSTATE '45000'
      SET MESSAGE_TEXT = 'Gamer cannot review a game they do not own.';
    END IF;
  END IF;
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `review_user_type_check` BEFORE INSERT ON `Review` FOR EACH ROW BEGIN
  IF NEW.user_id NOT IN ((SELECT user_id FROM Gamer) UNION (SELECT user_id FROM Proviewer)) THEN
    SIGNAL SQLSTATE '45000'
    SET MESSAGE_TEXT = 'Only Gamers and Proviewers can leave reviews on games.';
  END IF;
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `review_verified_user_only` BEFORE INSERT ON `Review` FOR EACH ROW BEGIN
  DECLARE verified_status BIT;
  IF NEW.user_id IN (SELECT G.user_id FROM Gamer as G) THEN
    SELECT verified_account INTO verified_status
    FROM Gamer
    WHERE user_id = NEW.user_id;

    IF verified_status IS NULL OR verified_status = 0 THEN
      SIGNAL SQLSTATE '45000'
      SET MESSAGE_TEXT = 'Only verified users can review games.';
    END IF;
  END IF;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `RFriend`
--

CREATE TABLE `RFriend` (
  `friend_1` char(8) NOT NULL,
  `friend_2` char(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `RFriend`
--

INSERT INTO `RFriend` (`friend_1`, `friend_2`) VALUES
('U0000001', 'U0000015'),
('U0000002', 'U0000010'),
('U0000002', 'U0000006'),
('U0000003', 'U0000008'),
('U0000004', 'U0000011'),
('U0000004', 'U0000015'),
('U0000004', 'U0000006'),
('U0000004', 'U0000001'),
('U0000005', 'U0000013'),
('U0000006', 'U0000008'),
('U0000006', 'U0000013'),
('U0000007', 'U0000019'),
('U0000007', 'U0000016'),
('U0000007', 'U0000015'),
('U0000010', 'U0000001'),
('U0000010', 'U0000005'),
('U0000010', 'U0000004'),
('U0000011', 'U0000001'),
('U0000011', 'U0000019'),
('U0000011', 'U0000016'),
('U0000011', 'U0000020'),
('U0000012', 'U0000006'),
('U0000012', 'U0000019'),
('U0000012', 'U0000009'),
('U0000012', 'U0000001'),
('U0000012', 'U0000008'),
('U0000014', 'U0000015'),
('U0000014', 'U0000018'),
('U0000014', 'U0000013'),
('U0000014', 'U0000009'),
('U0000014', 'U0000006');

--
-- Triggers `RFriend`
--
DELIMITER $$
CREATE TRIGGER `friend_limit_check` BEFORE INSERT ON `RFriend` FOR EACH ROW BEGIN
  DECLARE friend_total INT;
  SELECT COUNT(*) INTO friend_total FROM RFriend WHERE friend_1 = NEW.friend_1;
  IF friend_total >= 250 THEN
    SIGNAL SQLSTATE '45000'
    SET MESSAGE_TEXT = 'Friend limit (250) reached.';
  END IF;
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `friend_self_check` BEFORE INSERT ON `RFriend` FOR EACH ROW BEGIN
  IF NEW.friend_1 = NEW.friend_2 THEN
    SIGNAL SQLSTATE '45000'
    SET MESSAGE_TEXT = 'Cannot add yourself as a friend.';
  END IF;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `RGameInCart`
--

CREATE TABLE `RGameInCart` (
  `user_id` char(8) NOT NULL,
  `game_id` char(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `RGameInCart`
--

INSERT INTO `RGameInCart` (`user_id`, `game_id`) VALUES
('U0000001', 'G0000019'),
('U0000002', 'G0000008'),
('U0000003', 'G0000020'),
('U0000004', 'G0000001'),
('U0000004', 'G0000010'),
('U0000005', 'G0000007'),
('U0000005', 'G0000013'),
('U0000005', 'G0000015'),
('U0000007', 'G0000013'),
('U0000008', 'G0000011'),
('U0000008', 'G0000007'),
('U0000008', 'G0000016'),
('U0000009', 'G0000009'),
('U0000010', 'G0000013'),
('U0000010', 'G0000011'),
('U0000010', 'G0000006'),
('U0000011', 'G0000014'),
('U0000011', 'G0000016'),
('U0000011', 'G0000019'),
('U0000012', 'G0000018'),
('U0000012', 'G0000019'),
('U0000013', 'G0000018'),
('U0000015', 'G0000003'),
('U0000015', 'G0000008'),
('U0000015', 'G0000001'),
('U0000016', 'G0000010'),
('U0000016', 'G0000020'),
('U0000017', 'G0000018'),
('U0000017', 'G0000009'),
('U0000017', 'G0000012'),
('U0000018', 'G0000006'),
('U0000018', 'G0000015'),
('U0000019', 'G0000012'),
('U0000020', 'G0000004'),
('U0000020', 'G0000006');

--
-- Triggers `RGameInCart`
--
DELIMITER $$
CREATE TRIGGER `already_owned_check` BEFORE INSERT ON `RGameInCart` FOR EACH ROW BEGIN
  IF EXISTS (
    SELECT 1
    FROM RTPurchasesG p
    JOIN Transaction t ON p.transaction_id = t.transaction_id
    WHERE p.game_id = NEW.game_id AND t.user_id = NEW.user_id
  ) THEN
    SIGNAL SQLSTATE '45000'
    SET MESSAGE_TEXT = 'You already own this game.';
  END IF;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `RTPurchasesD`
--

CREATE TABLE `RTPurchasesD` (
  `dlc_id` char(8) NOT NULL,
  `transaction_id` char(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `RTPurchasesD`
--

INSERT INTO `RTPurchasesD` (`dlc_id`, `transaction_id`) VALUES
('D0000011', 'T0000001'),
('D0000015', 'T0000002'),
('D0000023', 'T0000002'),
('D0000004', 'T0000002'),
('D0000018', 'T0000003'),
('D0000022', 'T0000003'),
('D0000014', 'T0000003'),
('D0000013', 'T0000003'),
('D0000006', 'T0000004'),
('D0000017', 'T0000005'),
('D0000026', 'T0000005'),
('D0000023', 'T0000005'),
('D0000004', 'T0000005'),
('D0000012', 'T0000005'),
('D0000023', 'T0000006'),
('D0000017', 'T0000007'),
('D0000016', 'T0000007'),
('D0000016', 'T0000008'),
('D0000017', 'T0000008'),
('D0000007', 'T0000008'),
('D0000025', 'T0000008'),
('D0000002', 'T0000008'),
('D0000013', 'T0000009'),
('D0000015', 'T0000009'),
('D0000020', 'T0000009'),
('D0000001', 'T0000010'),
('D0000003', 'T0000010'),
('D0000021', 'T0000011'),
('D0000023', 'T0000012'),
('D0000002', 'T0000012'),
('D0000008', 'T0000013'),
('D0000002', 'T0000013'),
('D0000026', 'T0000013'),
('D0000006', 'T0000013'),
('D0000012', 'T0000013'),
('D0000016', 'T0000014'),
('D0000000', 'T0000014'),
('D0000023', 'T0000014'),
('D0000008', 'T0000015'),
('D0000007', 'T0000015'),
('D0000016', 'T0000015'),
('D0000019', 'T0000015'),
('D0000021', 'T0000015'),
('D0000012', 'T0000016'),
('D0000023', 'T0000016'),
('D0000004', 'T0000018'),
('D0000018', 'T0000018'),
('D0000011', 'T0000018'),
('D0000009', 'T0000018'),
('D0000007', 'T0000018'),
('D0000006', 'T0000019'),
('D0000024', 'T0000019'),
('D0000020', 'T0000019'),
('D0000004', 'T0000019'),
('D0000012', 'T0000019'),
('D0000001', 'T0000020');

-- --------------------------------------------------------

--
-- Table structure for table `RTPurchasesG`
--

CREATE TABLE `RTPurchasesG` (
  `game_id` char(8) NOT NULL,
  `transaction_id` char(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `RTPurchasesG`
--

INSERT INTO `RTPurchasesG` (`game_id`, `transaction_id`) VALUES
('G0000001', 'T0000002'),
('G0000018', 'T0000002'),
('G0000013', 'T0000002'),
('G0000016', 'T0000003'),
('G0000002', 'T0000003'),
('G0000005', 'T0000003'),
('G0000003', 'T0000003'),
('G0000016', 'T0000004'),
('G0000003', 'T0000004'),
('G0000011', 'T0000004'),
('G0000010', 'T0000005'),
('G0000005', 'T0000005'),
('G0000011', 'T0000006'),
('G0000010', 'T0000006'),
('G0000016', 'T0000007'),
('G0000005', 'T0000007'),
('G0000015', 'T0000008'),
('G0000003', 'T0000008'),
('G0000018', 'T0000008'),
('G0000013', 'T0000008'),
('G0000013', 'T0000009'),
('G0000005', 'T0000009'),
('G0000008', 'T0000009'),
('G0000002', 'T0000009'),
('G0000004', 'T0000009'),
('G0000003', 'T0000010'),
('G0000001', 'T0000010'),
('G0000014', 'T0000010'),
('G0000015', 'T0000010'),
('G0000020', 'T0000010'),
('G0000007', 'T0000011'),
('G0000009', 'T0000011'),
('G0000014', 'T0000012'),
('G0000004', 'T0000012'),
('G0000007', 'T0000012'),
('G0000004', 'T0000013'),
('G0000003', 'T0000013'),
('G0000001', 'T0000013'),
('G0000006', 'T0000013'),
('G0000016', 'T0000014'),
('G0000005', 'T0000014'),
('G0000012', 'T0000014'),
('G0000020', 'T0000015'),
('G0000006', 'T0000015'),
('G0000018', 'T0000015'),
('G0000007', 'T0000016'),
('G0000019', 'T0000017'),
('G0000008', 'T0000017'),
('G0000005', 'T0000017'),
('G0000002', 'T0000017'),
('G0000015', 'T0000017'),
('G0000002', 'T0000019'),
('G0000010', 'T0000019'),
('G0000006', 'T0000019'),
('G0000014', 'T0000019'),
('G0000003', 'T0000020'),
('G0000011', 'T0000020');

-- --------------------------------------------------------

--
-- Table structure for table `RWishes`
--

CREATE TABLE `RWishes` (
  `user_id` char(8) NOT NULL,
  `game_id` char(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `RWishes`
--

INSERT INTO `RWishes` (`user_id`, `game_id`) VALUES
('U0000002', 'G0000010'),
('U0000002', 'G0000006'),
('U0000002', 'G0000003'),
('U0000003', 'G0000008'),
('U0000003', 'G0000004'),
('U0000004', 'G0000020'),
('U0000004', 'G0000018'),
('U0000004', 'G0000014'),
('U0000005', 'G0000007'),
('U0000005', 'G0000014'),
('U0000005', 'G0000004'),
('U0000008', 'G0000009'),
('U0000009', 'G0000017'),
('U0000010', 'G0000011'),
('U0000011', 'G0000010'),
('U0000011', 'G0000011'),
('U0000012', 'G0000020'),
('U0000012', 'G0000015'),
('U0000013', 'G0000011'),
('U0000014', 'G0000009'),
('U0000014', 'G0000015'),
('U0000014', 'G0000011'),
('U0000015', 'G0000014'),
('U0000017', 'G0000013'),
('U0000017', 'G0000003'),
('U0000017', 'G0000007'),
('U0000019', 'G0000008');

-- --------------------------------------------------------

--
-- Table structure for table `Transaction`
--

CREATE TABLE `Transaction` (
  `transaction_id` char(8) NOT NULL,
  `user_id` char(8) NOT NULL,
  `transaction_date` date NOT NULL,
  `total` int NOT NULL
) ;

--
-- Dumping data for table `Transaction`
--

INSERT INTO `Transaction` (`transaction_id`, `user_id`, `transaction_date`, `total`) VALUES
('T0000001', 'U0000001', '2024-10-23', 1299),
('T0000002', 'U0000002', '2024-04-20', 10194),
('T0000003', 'U0000003', '2024-09-07', 12792),
('T0000004', 'U0000004', '2025-03-31', 6696),
('T0000005', 'U0000005', '2024-01-24', 7593),
('T0000006', 'U0000006', '2025-02-23', 4497),
('T0000007', 'U0000007', '2024-05-30', 5696),
('T0000008', 'U0000008', '2024-05-14', 14291),
('T0000009', 'U0000009', '2025-04-11', 14792),
('T0000010', 'U0000010', '2024-06-20', 10493),
('T0000011', 'U0000011', '2024-09-19', 5697),
('T0000012', 'U0000012', '2025-01-03', 8095),
('T0000013', 'U0000013', '2024-09-14', 13591),
('T0000014', 'U0000014', '2024-06-09', 8494),
('T0000015', 'U0000015', '2025-02-21', 11992),
('T0000016', 'U0000016', '2024-01-31', 3997),
('T0000017', 'U0000017', '2024-07-25', 9595),
('T0000018', 'U0000018', '2024-11-25', 4595),
('T0000019', 'U0000019', '2024-02-02', 12791),
('T0000020', 'U0000020', '2024-01-21', 4197);

--
-- Triggers `Transaction`
--
DELIMITER $$
CREATE TRIGGER `transaction_item_check` AFTER INSERT ON `Transaction` FOR EACH ROW BEGIN
  IF NOT EXISTS (
    SELECT 1 FROM RTPurchasesG WHERE transaction_id = NEW.transaction_id
  ) AND NOT EXISTS (
    SELECT 1 FROM RTPurchasesD WHERE transaction_id = NEW.transaction_id
  ) THEN
    SIGNAL SQLSTATE '45000'
    SET MESSAGE_TEXT = 'Transaction must have at least one item.';
  END IF;
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `validate_transaction_total` BEFORE INSERT ON `Transaction` FOR EACH ROW BEGIN
  DECLARE expected_total INT;

  SELECT IFNULL(SUM(G.price), 0)
  INTO expected_total
  FROM RTPurchasesG RG
  JOIN Game G ON RG.game_id = G.game_id
  WHERE RG.transaction_id = NEW.transaction_id;
  SELECT expected_total + IFNULL(SUM(D.price), 0)
  INTO expected_total
  FROM RTPurchasesD RD JOIN DLC D ON RD.dlc_id = D.dlc_id
  WHERE RD.transaction_id = NEW.transaction_id;

  IF NEW.total != expected_total THEN
    SIGNAL SQLSTATE '45000'
    SET MESSAGE_TEXT = 'Transaction total does not match sum of game and DLC prices.';
  END IF;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Stand-in structure for view `view_developer_game_map`
-- (See below for the actual view)
--
CREATE TABLE `view_developer_game_map` (
`developer_id` char(8)
,`developer_name` varchar(64)
,`game_id` char(8)
,`game_name` varchar(64)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `view_dlc_parent_game`
-- (See below for the actual view)
--
CREATE TABLE `view_dlc_parent_game` (
`dlc_id` char(8)
,`dlc_name` varchar(64)
,`game_name` varchar(64)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `view_friend_of_friends`
-- (See below for the actual view)
--
CREATE TABLE `view_friend_of_friends` (
`direct_friend_id` char(8)
,`friends_friend_id` char(8)
,`gamer_id` char(8)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `view_gamer_cart`
-- (See below for the actual view)
--
CREATE TABLE `view_gamer_cart` (
`game_name` varchar(64)
,`user_id` char(8)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `view_gamer_friends`
-- (See below for the actual view)
--
CREATE TABLE `view_gamer_friends` (
`friend` char(8)
,`gamer` char(8)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `view_gamer_library`
-- (See below for the actual view)
--
CREATE TABLE `view_gamer_library` (
`game_id` char(8)
,`name` varchar(64)
,`transaction_date` date
,`user_id` char(8)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `view_gamer_reviews`
-- (See below for the actual view)
--
CREATE TABLE `view_gamer_reviews` (
`game_name` varchar(64)
,`rating` int
,`review_date` date
,`user_id` char(8)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `view_gamer_wishlist`
-- (See below for the actual view)
--
CREATE TABLE `view_gamer_wishlist` (
`game_name` varchar(64)
,`user_id` char(8)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `view_game_reviews`
-- (See below for the actual view)
--
CREATE TABLE `view_game_reviews` (
`description` varchar(4242)
,`game_name` varchar(64)
,`rating` int
,`review_date` date
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `view_proviewer_reviews`
-- (See below for the actual view)
--
CREATE TABLE `view_proviewer_reviews` (
`game` varchar(64)
,`name` varchar(64)
,`rating` int
,`user_id` char(8)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `view_publisher_games`
-- (See below for the actual view)
--
CREATE TABLE `view_publisher_games` (
`game_id` char(8)
,`game_name` varchar(64)
,`publisher_id` char(8)
,`publisher_name` varchar(64)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `view_top_rated_games`
-- (See below for the actual view)
--
CREATE TABLE `view_top_rated_games` (
`avg_rating` decimal(14,4)
,`game_id` char(8)
,`name` varchar(64)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `view_transaction_history`
-- (See below for the actual view)
--
CREATE TABLE `view_transaction_history` (
`total` int
,`transaction_date` date
,`transaction_id` char(8)
,`user_id` char(8)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `view_user_payment_methods`
-- (See below for the actual view)
--
CREATE TABLE `view_user_payment_methods` (
`card_number` char(16)
,`cardholder_name` varchar(64)
,`is_default_method` bit(1)
,`user_id` char(8)
);

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

-- --------------------------------------------------------

--
-- Structure for view `view_developer_game_map`
--
DROP TABLE IF EXISTS `view_developer_game_map`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_developer_game_map`  AS  select `d`.`user_id` AS `developer_id`,`z`.`name` AS `developer_name`,`g`.`game_id` AS `game_id`,`g`.`name` AS `game_name` from ((`RDevelops` `d` join `ZUser` `z` on((`d`.`user_id` = `z`.`user_id`))) join `Game` `g` on((`d`.`game_id` = `g`.`game_id`))) ;

-- --------------------------------------------------------

--
-- Structure for view `view_dlc_parent_game`
--
DROP TABLE IF EXISTS `view_dlc_parent_game`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_dlc_parent_game`  AS  select `d`.`dlc_id` AS `dlc_id`,`d`.`name` AS `dlc_name`,`g`.`name` AS `game_name` from (`DLC` `d` join `Game` `g` on((`d`.`game_id` = `g`.`game_id`))) ;

-- --------------------------------------------------------

--
-- Structure for view `view_friend_of_friends`
--
DROP TABLE IF EXISTS `view_friend_of_friends`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_friend_of_friends`  AS  select `f1`.`friend_1` AS `gamer_id`,`f1`.`friend_2` AS `direct_friend_id`,`f2`.`friend_2` AS `friends_friend_id` from (`RFriend` `f1` join `RFriend` `f2` on((`f1`.`friend_2` = `f2`.`friend_1`))) where (`f2`.`friend_2` <> `f1`.`friend_1`) ;

-- --------------------------------------------------------

--
-- Structure for view `view_gamer_cart`
--
DROP TABLE IF EXISTS `view_gamer_cart`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_gamer_cart`  AS  select `c`.`user_id` AS `user_id`,`g`.`name` AS `game_name` from (`RGameInCart` `c` join `Game` `g` on((`c`.`game_id` = `g`.`game_id`))) ;

-- --------------------------------------------------------

--
-- Structure for view `view_gamer_friends`
--
DROP TABLE IF EXISTS `view_gamer_friends`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_gamer_friends`  AS  select `f`.`friend_1` AS `gamer`,`f`.`friend_2` AS `friend` from `RFriend` `f` ;

-- --------------------------------------------------------

--
-- Structure for view `view_gamer_library`
--
DROP TABLE IF EXISTS `view_gamer_library`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_gamer_library`  AS  select `t`.`user_id` AS `user_id`,`g`.`game_id` AS `game_id`,`g`.`name` AS `name`,`t`.`transaction_date` AS `transaction_date` from ((`Transaction` `t` join `RTPurchasesG` `p` on((`t`.`transaction_id` = `p`.`transaction_id`))) join `Game` `g` on((`g`.`game_id` = `p`.`game_id`))) ;

-- --------------------------------------------------------

--
-- Structure for view `view_gamer_reviews`
--
DROP TABLE IF EXISTS `view_gamer_reviews`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_gamer_reviews`  AS  select `r`.`user_id` AS `user_id`,`g`.`name` AS `game_name`,`r`.`rating` AS `rating`,`r`.`review_date` AS `review_date` from ((`Review` `r` join `Game` `g` on((`r`.`game_id` = `g`.`game_id`))) join `Gamer` `gm` on((`r`.`user_id` = `gm`.`user_id`))) ;

-- --------------------------------------------------------

--
-- Structure for view `view_gamer_wishlist`
--
DROP TABLE IF EXISTS `view_gamer_wishlist`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_gamer_wishlist`  AS  select `w`.`user_id` AS `user_id`,`g`.`name` AS `game_name` from (`RWishes` `w` join `Game` `g` on((`w`.`game_id` = `g`.`game_id`))) ;

-- --------------------------------------------------------

--
-- Structure for view `view_game_reviews`
--
DROP TABLE IF EXISTS `view_game_reviews`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_game_reviews`  AS  select `g`.`name` AS `game_name`,`r`.`rating` AS `rating`,`r`.`description` AS `description`,`r`.`review_date` AS `review_date` from (`Review` `r` join `Game` `g` on((`r`.`game_id` = `g`.`game_id`))) ;

-- --------------------------------------------------------

--
-- Structure for view `view_proviewer_reviews`
--
DROP TABLE IF EXISTS `view_proviewer_reviews`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_proviewer_reviews`  AS  select `p`.`user_id` AS `user_id`,`z`.`name` AS `name`,`g`.`name` AS `game`,`r`.`rating` AS `rating` from (((`Review` `r` join `Proviewer` `p` on((`r`.`user_id` = `p`.`user_id`))) join `ZUser` `z` on((`z`.`user_id` = `p`.`user_id`))) join `Game` `g` on((`g`.`game_id` = `r`.`game_id`))) ;

-- --------------------------------------------------------

--
-- Structure for view `view_publisher_games`
--
DROP TABLE IF EXISTS `view_publisher_games`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_publisher_games`  AS  select `p`.`user_id` AS `publisher_id`,`z`.`name` AS `publisher_name`,`g`.`game_id` AS `game_id`,`g`.`name` AS `game_name` from ((`Game` `g` join `Publisher` `p` on((`g`.`publisher_id` = `p`.`user_id`))) join `ZUser` `z` on((`p`.`user_id` = `z`.`user_id`))) ;

-- --------------------------------------------------------

--
-- Structure for view `view_top_rated_games`
--
DROP TABLE IF EXISTS `view_top_rated_games`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_top_rated_games`  AS  select `g`.`game_id` AS `game_id`,`g`.`name` AS `name`,avg(`r`.`rating`) AS `avg_rating` from (`Game` `g` join `Review` `r` on((`g`.`game_id` = `r`.`game_id`))) group by `g`.`game_id`,`g`.`name` order by `avg_rating` desc ;

-- --------------------------------------------------------

--
-- Structure for view `view_transaction_history`
--
DROP TABLE IF EXISTS `view_transaction_history`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_transaction_history`  AS  select `t`.`transaction_id` AS `transaction_id`,`t`.`user_id` AS `user_id`,`t`.`transaction_date` AS `transaction_date`,`t`.`total` AS `total` from `Transaction` `t` ;

-- --------------------------------------------------------

--
-- Structure for view `view_user_payment_methods`
--
DROP TABLE IF EXISTS `view_user_payment_methods`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_user_payment_methods`  AS  select `PaymentMethod`.`user_id` AS `user_id`,`PaymentMethod`.`cardholder_name` AS `cardholder_name`,`PaymentMethod`.`card_number` AS `card_number`,`PaymentMethod`.`is_default_method` AS `is_default_method` from `PaymentMethod` ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Developer`
--
ALTER TABLE `Developer`
  ADD UNIQUE KEY `user_id` (`user_id`);

--
-- Indexes for table `DLC`
--
ALTER TABLE `DLC`
  ADD UNIQUE KEY `dlc_id` (`dlc_id`);

--
-- Indexes for table `Game`
--
ALTER TABLE `Game`
  ADD PRIMARY KEY (`game_id`);

--
-- Indexes for table `Gamer`
--
ALTER TABLE `Gamer`
  ADD UNIQUE KEY `user_id` (`user_id`),
  ADD UNIQUE KEY `gamer_id` (`gamer_id`);

--
-- Indexes for table `MVGenreMap`
--
ALTER TABLE `MVGenreMap`
  ADD PRIMARY KEY (`game_id`,`genre_type`);

--
-- Indexes for table `PaymentMethod`
--
ALTER TABLE `PaymentMethod`
  ADD UNIQUE KEY `unique_payment_same` (`user_id`,`card_number`);

--
-- Indexes for table `Proviewer`
--
ALTER TABLE `Proviewer`
  ADD UNIQUE KEY `user_id` (`user_id`);

--
-- Indexes for table `Publisher`
--
ALTER TABLE `Publisher`
  ADD UNIQUE KEY `user_id` (`user_id`);

--
-- Indexes for table `Review`
--
ALTER TABLE `Review`
  ADD UNIQUE KEY `unique_one_review` (`user_id`,`game_id`);

--
-- Indexes for table `Transaction`
--
ALTER TABLE `Transaction`
  ADD PRIMARY KEY (`transaction_id`);

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
