-- Table structure for table `Developer`
--

CREATE TABLE `Developer` (
  `user_id` char(8) NOT NULL,
  `country` varchar(64) DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL,
  `contact_email` varchar(255) DEFAULT NULL
) ;

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
-- Table structure for table `Gamer`
--

CREATE TABLE `Gamer` (
  `user_id` char(8) NOT NULL,
  `gamer_id` varchar(18) NOT NULL,
  `bio` varchar(4242) DEFAULT NULL,
  `birth_date` date NOT NULL,
  `verified_account` bit(1) NOT NULL
) ;

---- Table structure for table `MVGenreMap`
--

CREATE TABLE `MVGenreMap` (
  `game_id` char(8) NOT NULL,
  `genre_type` varchar(16) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

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
-- Table structure for table `Proviewer`
--

CREATE TABLE `Proviewer` (
  `user_id` char(8) NOT NULL,
  `website` varchar(255) NOT NULL,
  `description` varchar(4242) DEFAULT NULL,
  `youtube_channel_id` char(24) DEFAULT NULL
) ;

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
-- Table structure for table `RDevelops`
--

CREATE TABLE `RDevelops` (
  `user_id` char(8) NOT NULL,
  `game_id` char(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `RDLCInCart`
--

CREATE TABLE `RDLCInCart` (
  `user_id` char(8) NOT NULL,
  `dlc_id` char(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

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
-- Table structure for table `RFriend`
--

CREATE TABLE `RFriend` (
  `friend_1` char(8) NOT NULL,
  `friend_2` char(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `RGameInCart`
--

CREATE TABLE `RGameInCart` (
  `user_id` char(8) NOT NULL,
  `game_id` char(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `RTPurchasesD`
--

CREATE TABLE `RTPurchasesD` (
  `dlc_id` char(8) NOT NULL,
  `transaction_id` char(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `RTPurchasesG`
--

CREATE TABLE `RTPurchasesG` (
  `game_id` char(8) NOT NULL,
  `transaction_id` char(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

---- Table structure for table `RWishes`
CREATE TABLE `RWishes` (
  `user_id` char(8) NOT NULL,
  `game_id` char(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

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

