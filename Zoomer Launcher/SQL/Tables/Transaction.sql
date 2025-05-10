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

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Transaction`
--
ALTER TABLE `Transaction`
  ADD PRIMARY KEY (`transaction_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
