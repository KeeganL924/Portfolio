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

--
-- Indexes for dumped tables
--

--
-- Indexes for table `DLC`
--
ALTER TABLE `DLC`
  ADD UNIQUE KEY `dlc_id` (`dlc_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
