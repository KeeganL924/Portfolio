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
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
