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
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
