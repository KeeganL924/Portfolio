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

--
-- Indexes for dumped tables
--

--
-- Indexes for table `PaymentMethod`
--
ALTER TABLE `PaymentMethod`
  ADD UNIQUE KEY `unique_payment_same` (`user_id`,`card_number`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
