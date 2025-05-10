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

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Review`
--
ALTER TABLE `Review`
  ADD UNIQUE KEY `unique_one_review` (`user_id`,`game_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
