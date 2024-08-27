-- phpMyAdmin SQL Dump
-- version 4.9.5deb2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 02, 2023 at 04:35 PM
-- Server version: 10.3.38-MariaDB-0ubuntu0.20.04.1
-- PHP Version: 7.4.3-4ubuntu2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `jrletter_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `backgroundTable`
--

CREATE TABLE `backgroundTable` (
  `backID` int(11) NOT NULL,
  `backgroundName` varchar(255) NOT NULL,
  `backgroundDescription` varchar(255) NOT NULL,
  `skillNegativeID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `backgroundTable`
--

INSERT INTO `backgroundTable` (`backID`, `backgroundName`, `backgroundDescription`, `skillNegativeID`) VALUES
(300, 'Time Traveler', 'Sent through a time portal that sent him from the 19th century to the 22nd century makes him a bit technologically inept ', 58),
(301, 'Future Spartan', 'Lone survivor of a future fleet of lost Spartans that focused on melee combat', 55),
(302, 'Primitive Ancestor', 'A king from a domain of ancestor to modern crocodiles makes him smart, but not enough to understand modern weaponry', 56),
(303, 'Modern Support', 'Spy training means knowing many modern forms of combat, rather than more primitive weaponry', 57);

-- --------------------------------------------------------

--
-- Table structure for table `carryTable`
--

CREATE TABLE `carryTable` (
  `carryID` int(11) NOT NULL,
  `carryAmount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `carryTable`
--

INSERT INTO `carryTable` (`carryID`, `carryAmount`) VALUES
(400, 75),
(401, 125),
(402, 175),
(403, 225);

-- --------------------------------------------------------

--
-- Table structure for table `charactorTable`
--

CREATE TABLE `charactorTable` (
  `charID` int(11) NOT NULL,
  `playerID` int(11) NOT NULL,
  `levelAmount` int(11) NOT NULL,
  `classID` int(11) NOT NULL,
  `specialID` int(11) NOT NULL,
  `backID` int(11) NOT NULL,
  `carryID` int(11) NOT NULL,
  `gameID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `charactorTable`
--

INSERT INTO `charactorTable` (`charID`, `playerID`, `levelAmount`, `classID`, `specialID`, `backID`, `carryID`, `gameID`) VALUES
(1000, 1, 20, 100, 200, 300, 400, 500),
(1001, 2, 35, 101, 201, 301, 401, 501),
(1002, 3, 25, 102, 202, 302, 403, 503),
(1003, 3, 25, 103, 203, 303, 402, 502);

-- --------------------------------------------------------

--
-- Table structure for table `charBase`
--

CREATE TABLE `charBase` (
  `charID` int(11) NOT NULL,
  `charName` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `charBase`
--

INSERT INTO `charBase` (`charID`, `charName`) VALUES
(1000, 'Sheriff Tumble'),
(1001, 'Commander Shepard'),
(1002, 'The Lizard King'),
(1003, 'Sir Alfred');

-- --------------------------------------------------------

--
-- Table structure for table `classTable`
--

CREATE TABLE `classTable` (
  `classID` int(11) NOT NULL,
  `className` varchar(255) NOT NULL,
  `strengthID` int(11) NOT NULL,
  `manaID` int(11) NOT NULL,
  `speedID` int(11) NOT NULL,
  `skillPositiveID` int(11) NOT NULL,
  `skillNegativeID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `classTable`
--

INSERT INTO `classTable` (`classID`, `className`, `strengthID`, `manaID`, `speedID`, `skillPositiveID`, `skillNegativeID`) VALUES
(100, 'Sheriff', 12, 20, 31, 45, 58),
(101, 'Captain', 11, 22, 31, 46, 57),
(102, 'Knight', 11, 22, 30, 46, 55),
(103, 'Spy', 10, 23, 31, 45, 58);

-- --------------------------------------------------------

--
-- Table structure for table `creatorTable`
--

CREATE TABLE `creatorTable` (
  `creatorID` int(11) NOT NULL,
  `creatorName` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `creatorTable`
--

INSERT INTO `creatorTable` (`creatorID`, `creatorName`) VALUES
(600, 'Joel'),
(601, 'Simon'),
(602, 'Smitty'),
(603, 'Andrew');

-- --------------------------------------------------------

--
-- Stand-in structure for view `differenceBetween`
-- (See below for the actual view)
--
CREATE TABLE `differenceBetween` (
`skillName` varchar(255)
,`skillID` int(11)
,`positiveAmountPercent` int(11)
,`negativeAmountPercent` int(11)
,`differenceBetween` bigint(12)
);

-- --------------------------------------------------------

--
-- Table structure for table `gameTable`
--

CREATE TABLE `gameTable` (
  `gameID` int(11) NOT NULL,
  `gameName` varchar(255) DEFAULT NULL,
  `creatorID` int(11) NOT NULL,
  `playerID` int(11) NOT NULL,
  `ruleID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `gameTable`
--

INSERT INTO `gameTable` (`gameID`, `gameName`, `creatorID`, `playerID`, `ruleID`) VALUES
(500, 'Return of Vecna', 600, 1, 1010),
(501, 'The Kings Gambit', 601, 2, 1011),
(502, 'Knights of the Old Republic', 602, 3, 1012),
(503, 'The Ghost Warship', 603, 1, 1013);

-- --------------------------------------------------------

--
-- Stand-in structure for view `greatestGapForSpeed`
-- (See below for the actual view)
--
CREATE TABLE `greatestGapForSpeed` (
`greatestAmount` int(11)
,`leastAmount` int(11)
,`gapBetween` bigint(12)
);

-- --------------------------------------------------------

--
-- Table structure for table `manaTable`
--

CREATE TABLE `manaTable` (
  `manaID` int(11) NOT NULL,
  `leastAmount` int(11) NOT NULL,
  `greatestAmount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `manaTable`
--

INSERT INTO `manaTable` (`manaID`, `leastAmount`, `greatestAmount`) VALUES
(20, 22, 135),
(21, 93, 134),
(22, 34, 75),
(23, 65, 125);

-- --------------------------------------------------------

--
-- Table structure for table `negativeTable`
--

CREATE TABLE `negativeTable` (
  `skillNegativeID` int(11) NOT NULL,
  `skillID` int(11) NOT NULL,
  `negativeAmountPercent` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `negativeTable`
--

INSERT INTO `negativeTable` (`skillNegativeID`, `skillID`, `negativeAmountPercent`) VALUES
(55, 40, 7),
(56, 41, 12),
(57, 42, 5),
(58, 43, 13),
(59, 44, 3);

-- --------------------------------------------------------

--
-- Table structure for table `playersFormer`
--

CREATE TABLE `playersFormer` (
  `playerID` int(11) NOT NULL,
  `playerName` varchar(255) NOT NULL,
  `totalPlayTimeHours` int(11) NOT NULL,
  `leftDate` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `playersFormer`
--

INSERT INTO `playersFormer` (`playerID`, `playerName`, `totalPlayTimeHours`, `leftDate`) VALUES
(5, 'Eli', 36, '2023-04-26 12:48:30'),
(6, 'Matthew', 56, '2023-04-26 12:48:27'),
(8, 'Kyle', 34, '2023-04-27 13:35:07');

-- --------------------------------------------------------

--
-- Table structure for table `playerTable`
--

CREATE TABLE `playerTable` (
  `playerID` int(11) NOT NULL,
  `playerName` varchar(255) NOT NULL,
  `totalPlayTimeHours` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `playerTable`
--

INSERT INTO `playerTable` (`playerID`, `playerName`, `totalPlayTimeHours`) VALUES
(1, 'Jimmy', 15),
(2, 'Seth', 27),
(3, 'Andrew', 45),
(4, 'Samuel', 25),
(7, 'Jake', 12);

--
-- Triggers `playerTable`
--
DELIMITER $$
CREATE TRIGGER `playerBeforeDelete` BEFORE DELETE ON `playerTable` FOR EACH ROW BEGIN
	INSERT INTO playersFormer
    SET
    playerID = OLD.playerID,
    playerName = OLD.playerName,
    totalPlayTImeHours = OLD.totalPlayTimeHours,
    leftDate = NOW();
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `positiveTable`
--

CREATE TABLE `positiveTable` (
  `skillPositiveID` int(11) NOT NULL,
  `skillID` int(11) NOT NULL,
  `positiveAmountPercent` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `positiveTable`
--

INSERT INTO `positiveTable` (`skillPositiveID`, `skillID`, `positiveAmountPercent`) VALUES
(45, 40, 4),
(46, 41, 12),
(47, 42, 8),
(48, 43, 6),
(49, 44, 7);

-- --------------------------------------------------------

--
-- Table structure for table `ruleTable`
--

CREATE TABLE `ruleTable` (
  `ruleID` int(11) NOT NULL,
  `useOfCards` tinyint(1) NOT NULL,
  `useOfDice` tinyint(1) NOT NULL,
  `useOfBoard` tinyint(1) NOT NULL,
  `useOfSpinner` tinyint(1) NOT NULL,
  `numOfPlayers` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ruleTable`
--

INSERT INTO `ruleTable` (`ruleID`, `useOfCards`, `useOfDice`, `useOfBoard`, `useOfSpinner`, `numOfPlayers`) VALUES
(1010, 1, 0, 1, 0, 4),
(1011, 0, 1, 1, 1, 5),
(1012, 1, 0, 0, 0, 5),
(1013, 1, 0, 0, 1, 4);

-- --------------------------------------------------------

--
-- Table structure for table `skillTable`
--

CREATE TABLE `skillTable` (
  `skillID` int(11) NOT NULL,
  `skillName` varchar(255) NOT NULL,
  `skillDescription` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `skillTable`
--

INSERT INTO `skillTable` (`skillID`, `skillName`, `skillDescription`) VALUES
(40, 'Gunslinger', 'Better/Worse damage with guns'),
(41, 'Sharp Edge', 'Better/Worse damage with swords'),
(42, 'Increased ammo', 'Better/Worse ammo capacity'),
(43, 'Faster Flight', 'Better/Worse flight speed'),
(44, 'Critical Chance', 'Better/Worse chance to hit a critical');

-- --------------------------------------------------------

--
-- Table structure for table `specialityTable`
--

CREATE TABLE `specialityTable` (
  `specialID` int(11) NOT NULL,
  `specialityName` varchar(255) NOT NULL,
  `traitID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `specialityTable`
--

INSERT INTO `specialityTable` (`specialID`, `specialityName`, `traitID`) VALUES
(200, 'Police Officer', 60),
(201, 'Army Captain', 61),
(202, 'King', 62),
(203, 'MI6 Spy', 63);

-- --------------------------------------------------------

--
-- Table structure for table `speedTable`
--

CREATE TABLE `speedTable` (
  `speedID` int(11) NOT NULL,
  `leastAmount` int(11) NOT NULL,
  `greatestAmount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `speedTable`
--

INSERT INTO `speedTable` (`speedID`, `leastAmount`, `greatestAmount`) VALUES
(30, 43, 89),
(31, 94, 134),
(32, 61, 82),
(33, 107, 131);

-- --------------------------------------------------------

--
-- Table structure for table `strengthTable`
--

CREATE TABLE `strengthTable` (
  `strengthID` int(11) NOT NULL,
  `leastAmount` int(11) NOT NULL,
  `greatestAmount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `strengthTable`
--

INSERT INTO `strengthTable` (`strengthID`, `leastAmount`, `greatestAmount`) VALUES
(10, 10, 94),
(11, 119, 168),
(12, 55, 82),
(13, 103, 130);

-- --------------------------------------------------------

--
-- Table structure for table `traitTable`
--

CREATE TABLE `traitTable` (
  `traitID` int(11) NOT NULL,
  `traitName` varchar(255) NOT NULL,
  `skillPositiveID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `traitTable`
--

INSERT INTO `traitTable` (`traitID`, `traitName`, `skillPositiveID`) VALUES
(60, 'Western Lawman', 45),
(61, 'Spaceship Capitan', 46),
(62, 'Leader of Lizards', 46),
(63, 'British Spy', 47);

-- --------------------------------------------------------

--
-- Structure for view `differenceBetween`
--
DROP TABLE IF EXISTS `differenceBetween`;

CREATE ALGORITHM=UNDEFINED DEFINER=`jrletter`@`localhost` SQL SECURITY DEFINER VIEW `differenceBetween`  AS  select `a`.`skillName` AS `skillName`,`a`.`skillID` AS `skillID`,`b`.`positiveAmountPercent` AS `positiveAmountPercent`,`c`.`negativeAmountPercent` AS `negativeAmountPercent`,`b`.`positiveAmountPercent` - `c`.`negativeAmountPercent` AS `differenceBetween` from ((`skillTable` `a` join `positiveTable` `b` on(`a`.`skillID` = `b`.`skillID`)) join `negativeTable` `c` on(`a`.`skillID` = `c`.`skillID`)) ;

-- --------------------------------------------------------

--
-- Structure for view `greatestGapForSpeed`
--
DROP TABLE IF EXISTS `greatestGapForSpeed`;

CREATE ALGORITHM=UNDEFINED DEFINER=`jrletter`@`localhost` SQL SECURITY DEFINER VIEW `greatestGapForSpeed`  AS  select `speedTable`.`greatestAmount` AS `greatestAmount`,`speedTable`.`leastAmount` AS `leastAmount`,`speedTable`.`greatestAmount` - `speedTable`.`leastAmount` AS `gapBetween` from `speedTable` ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `backgroundTable`
--
ALTER TABLE `backgroundTable`
  ADD PRIMARY KEY (`backID`),
  ADD KEY `fk_nega_back` (`skillNegativeID`);

--
-- Indexes for table `carryTable`
--
ALTER TABLE `carryTable`
  ADD PRIMARY KEY (`carryID`);

--
-- Indexes for table `charactorTable`
--
ALTER TABLE `charactorTable`
  ADD PRIMARY KEY (`charID`),
  ADD KEY `fk_player_id` (`playerID`),
  ADD KEY `fk_special_id` (`specialID`),
  ADD KEY `fk_game_char` (`gameID`),
  ADD KEY `fk_char_carry` (`carryID`),
  ADD KEY `fk_back_char` (`backID`),
  ADD KEY `fk_class_char` (`classID`);

--
-- Indexes for table `charBase`
--
ALTER TABLE `charBase`
  ADD KEY `fk_char_id` (`charID`);

--
-- Indexes for table `classTable`
--
ALTER TABLE `classTable`
  ADD PRIMARY KEY (`classID`),
  ADD KEY `fk_class_strength` (`strengthID`),
  ADD KEY `fk_class_mana` (`manaID`),
  ADD KEY `fk_class_speed` (`speedID`),
  ADD KEY `fk_class_positive` (`skillPositiveID`),
  ADD KEY `fk_class_negative` (`skillNegativeID`);

--
-- Indexes for table `creatorTable`
--
ALTER TABLE `creatorTable`
  ADD PRIMARY KEY (`creatorID`);

--
-- Indexes for table `gameTable`
--
ALTER TABLE `gameTable`
  ADD PRIMARY KEY (`gameID`),
  ADD KEY `fk_creator_id` (`creatorID`),
  ADD KEY `fk_player_game_id` (`playerID`),
  ADD KEY `fk_rule_gmae` (`ruleID`);

--
-- Indexes for table `manaTable`
--
ALTER TABLE `manaTable`
  ADD PRIMARY KEY (`manaID`);

--
-- Indexes for table `negativeTable`
--
ALTER TABLE `negativeTable`
  ADD PRIMARY KEY (`skillNegativeID`),
  ADD KEY `fk_negative_skill` (`skillID`);

--
-- Indexes for table `playersFormer`
--
ALTER TABLE `playersFormer`
  ADD PRIMARY KEY (`playerID`);

--
-- Indexes for table `playerTable`
--
ALTER TABLE `playerTable`
  ADD PRIMARY KEY (`playerID`);

--
-- Indexes for table `positiveTable`
--
ALTER TABLE `positiveTable`
  ADD PRIMARY KEY (`skillPositiveID`),
  ADD KEY `fk_positive_skill` (`skillID`);

--
-- Indexes for table `ruleTable`
--
ALTER TABLE `ruleTable`
  ADD PRIMARY KEY (`ruleID`);

--
-- Indexes for table `skillTable`
--
ALTER TABLE `skillTable`
  ADD PRIMARY KEY (`skillID`);

--
-- Indexes for table `specialityTable`
--
ALTER TABLE `specialityTable`
  ADD PRIMARY KEY (`specialID`),
  ADD KEY `fk_special_trait` (`traitID`);

--
-- Indexes for table `speedTable`
--
ALTER TABLE `speedTable`
  ADD PRIMARY KEY (`speedID`);

--
-- Indexes for table `strengthTable`
--
ALTER TABLE `strengthTable`
  ADD PRIMARY KEY (`strengthID`);

--
-- Indexes for table `traitTable`
--
ALTER TABLE `traitTable`
  ADD PRIMARY KEY (`traitID`),
  ADD KEY `fk_pos_trait` (`skillPositiveID`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `backgroundTable`
--
ALTER TABLE `backgroundTable`
  ADD CONSTRAINT `fk_nega_back` FOREIGN KEY (`skillNegativeID`) REFERENCES `negativeTable` (`skillNegativeID`);

--
-- Constraints for table `charactorTable`
--
ALTER TABLE `charactorTable`
  ADD CONSTRAINT `fk_back_char` FOREIGN KEY (`backID`) REFERENCES `backgroundTable` (`backID`),
  ADD CONSTRAINT `fk_char_carry` FOREIGN KEY (`carryID`) REFERENCES `carryTable` (`carryID`),
  ADD CONSTRAINT `fk_class_char` FOREIGN KEY (`classID`) REFERENCES `classTable` (`classID`),
  ADD CONSTRAINT `fk_game_char` FOREIGN KEY (`gameID`) REFERENCES `gameTable` (`gameID`),
  ADD CONSTRAINT `fk_player_id` FOREIGN KEY (`playerID`) REFERENCES `playerTable` (`playerID`),
  ADD CONSTRAINT `fk_special_id` FOREIGN KEY (`specialID`) REFERENCES `specialityTable` (`specialID`);

--
-- Constraints for table `charBase`
--
ALTER TABLE `charBase`
  ADD CONSTRAINT `fk_char_id` FOREIGN KEY (`charID`) REFERENCES `charactorTable` (`charID`) ON UPDATE CASCADE;

--
-- Constraints for table `classTable`
--
ALTER TABLE `classTable`
  ADD CONSTRAINT `fk_class_mana` FOREIGN KEY (`manaID`) REFERENCES `manaTable` (`manaID`),
  ADD CONSTRAINT `fk_class_negative` FOREIGN KEY (`skillNegativeID`) REFERENCES `negativeTable` (`skillNegativeID`),
  ADD CONSTRAINT `fk_class_positive` FOREIGN KEY (`skillPositiveID`) REFERENCES `positiveTable` (`skillPositiveID`),
  ADD CONSTRAINT `fk_class_speed` FOREIGN KEY (`speedID`) REFERENCES `speedTable` (`speedID`),
  ADD CONSTRAINT `fk_class_strength` FOREIGN KEY (`strengthID`) REFERENCES `strengthTable` (`strengthID`);

--
-- Constraints for table `gameTable`
--
ALTER TABLE `gameTable`
  ADD CONSTRAINT `fk_creator_id` FOREIGN KEY (`creatorID`) REFERENCES `creatorTable` (`creatorID`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_player_game_id` FOREIGN KEY (`playerID`) REFERENCES `playerTable` (`playerID`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_rule_gmae` FOREIGN KEY (`ruleID`) REFERENCES `ruleTable` (`ruleID`);

--
-- Constraints for table `negativeTable`
--
ALTER TABLE `negativeTable`
  ADD CONSTRAINT `fk_negative_skill` FOREIGN KEY (`skillID`) REFERENCES `skillTable` (`skillID`);

--
-- Constraints for table `positiveTable`
--
ALTER TABLE `positiveTable`
  ADD CONSTRAINT `fk_positive_skill` FOREIGN KEY (`skillID`) REFERENCES `skillTable` (`skillID`);

--
-- Constraints for table `specialityTable`
--
ALTER TABLE `specialityTable`
  ADD CONSTRAINT `fk_special_trait` FOREIGN KEY (`traitID`) REFERENCES `traitTable` (`traitID`);

--
-- Constraints for table `traitTable`
--
ALTER TABLE `traitTable`
  ADD CONSTRAINT `fk_pos_trait` FOREIGN KEY (`skillPositiveID`) REFERENCES `positiveTable` (`skillPositiveID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
