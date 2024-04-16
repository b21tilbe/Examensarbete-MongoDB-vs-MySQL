-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Värd: 127.0.0.1
-- Tid vid skapande: 14 apr 2024 kl 20:10
-- Serverversion: 10.4.32-MariaDB
-- PHP-version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Databas: `database1`
--

-- --------------------------------------------------------

--
-- Tabellstruktur `historik`
--

CREATE TABLE `historik` (
  `username` varchar(30) NOT NULL,
  `programName` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumpning av Data i tabell `historik`
--

INSERT INTO `historik` (`username`, `programName`) VALUES
('Oliwer', 'Strength'),
('Tilda', 'Powerlifting'),
('Oliwer', 'Strength'),
('Oliwer', 'Endurance'),
('Tilda', 'Strength'),
('Tilda', 'Strength'),
('Tilda', 'Strength'),
('Tilda', 'Strength'),
('Tilda', 'Endurance'),
('Oliwer', 'Endurance'),
('Oliwer', 'Powerlifting'),
('Oliwer', 'Strength'),
('Oliwer', 'Strength'),
('Oliwer', 'Powerlifting'),
('Oliwer', 'Strength'),
('Oliwer', 'Powerlifting'),
('Oliwer', 'Endurance'),
('Oliwer', 'Powerlifting'),
('Oliwer', 'Endurance'),
(' < ? php echo $username; ? > ', 'Endurance'),
('Oliwer', 'Strength'),
('Oliwer', 'Strength'),
('Angelina', 'Powerlifting'),
('Tilda', 'Strength'),
('Tilda', 'Endurance'),
('Tilda', 'Strength'),
('Tilda', 'Powerlifting'),
('Tilda', 'Strength'),
('Oliwer', 'Strength'),
('Elsa', 'Strength'),
('Elsa', 'Powerlifting'),
('Greger', 'Strength'),
('Greger', 'Endurance'),
('Greger', 'Strength');

-- --------------------------------------------------------

--
-- Tabellstruktur `login`
--

CREATE TABLE `login` (
  `username` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumpning av Data i tabell `login`
--

INSERT INTO `login` (`username`, `password`) VALUES
('Angelina', 'Blomma123'),
('Elsa', 'Elsa'),
('Greger', 'Greger'),
('Luke', 'Luke'),
('Oliwer', 'Oliwer'),
('tilda', 'admin');

-- --------------------------------------------------------

--
-- Tabellstruktur `träningskategori`
--

CREATE TABLE `träningskategori` (
  `KategoriNamn` varchar(30) NOT NULL,
  `minRep` int(11) NOT NULL,
  `maxRep` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Tabellstruktur `träningsprogram`
--

CREATE TABLE `träningsprogram` (
  `Program-ID` int(11) NOT NULL,
  `username` varchar(30) NOT NULL,
  `KategoriNamn` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Tabellstruktur `träningsövning`
--

CREATE TABLE `träningsövning` (
  `ÖvningsNamn` varchar(30) NOT NULL,
  `Typ` varchar(30) NOT NULL,
  `Muskelgrupp` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumpning av Data i tabell `träningsövning`
--

INSERT INTO `träningsövning` (`ÖvningsNamn`, `Typ`, `Muskelgrupp`) VALUES
('21:an', 'isolated', 'Arms'),
('abduction', 'isolated', 'Legs'),
('adduction', 'isolated', 'Legs'),
('Arnold press', 'compound', 'Shoulders'),
('Around the world', 'compound', 'Shoulders'),
('Back extension', 'isolated', 'Back'),
('Barbell shoulder press', 'isolated', 'Shoulders'),
('BB rows', 'isolated', 'Back'),
('BB upright row', 'isolated', 'Shoulders'),
('Bench Press', 'compound', 'Chest'),
('Bicep Curls', 'isolated', 'Arms'),
('Bulgarian split-sqauts', 'compound', 'Legs'),
('Cable flyes', 'isolated', 'Chest'),
('Cable rows', 'isolated', 'Back'),
('Cable upright row', 'isolated', 'Shoulders'),
('Calf Raise', 'isolated', 'Legs'),
('Crossrack cable pull', 'isolated', 'Back'),
('DB butterflies', 'isolated', 'Shoulders'),
('DB chestpress', 'compound', 'Chest'),
('DB curls', 'isolated', 'Arms'),
('DB flyes', 'isolated', 'Chest'),
('DB pull over', 'isolated', 'Chest'),
('DB rows', 'isolated', 'Back'),
('DB shoulder press', 'compound', 'Shoulders'),
('DB upright row', 'isolated', 'Shoulders'),
('Deadlifts', 'compound', 'Legs'),
('Dips', 'compound', 'Arms'),
('Eccentric leg-curls', 'isolated', 'Legs'),
('EZ-bar curls', 'compound', 'Arms'),
('EZ-bar front raise', 'isolated', 'Shoulders'),
('Front lateral raise', 'isolated', 'Shoulders'),
('goblet squats', 'compound', 'Legs'),
('Hammercurls', 'isolated', 'Arms'),
('Hip thrusts', 'compound', 'Legs'),
('Incline DB bench curls', 'compound', 'Arms'),
('Incline front raise', 'isolated', 'Shoulders'),
('Jump Squats', 'compound', 'Legs'),
('Kickbacks', 'isolated', 'Legs'),
('Landmine press', 'compound', 'Chest'),
('Leg extension', 'isolated', 'Legs'),
('Leg Raises', 'isolated', 'Legs'),
('Legpress', 'compound', 'Legs'),
('Lunges', 'compound', 'Legs'),
('Lying leg-curls', 'isolated', 'Legs'),
('Military press', 'compound', 'Shoulders'),
('Mountain Climbers', 'isolated', 'Legs'),
('Overhead extension', 'compound', 'Arms'),
('Paralell front raise', 'isolated', 'Shoulders'),
('Plate press up', 'isolated', 'Chest'),
('Pull-ups', 'compound', 'Back'),
('Push-ups', 'compound', 'Arms'),
('Reversed cable flyes', 'isolated', 'Shoulders'),
('Rope curls', 'isolated', 'Arms'),
('Rope face-pull', 'isolated', 'Shoulders'),
('Seated calf raise', 'isolated', 'Legs'),
('Shoulder Press', 'compound', 'Shoulders'),
('Side lateral raise', 'isolated', 'Shoulders'),
('Skull crushers', 'compound', 'Arms'),
('Smith sumo-squats', 'compound', 'Legs'),
('Spidercurls', 'compound', 'Arms'),
('Spinning wheel', 'compound', 'Shoulders'),
('Squats', 'compound', 'Legs'),
('Step-ups', 'compound', 'Legs'),
('Stiffed leg deadlifts', 'isolated', 'Legs'),
('Straight arm pulldown', 'isolated', 'Back'),
('Sumo deadlift', 'compound', 'Back'),
('T-bar row', 'compound', 'Back'),
('Tricep extension', 'isolated', 'Arms'),
('Underarm cable rows', 'compound', 'Back'),
('V-pulldown', 'compound', 'Back'),
('Walking lunges', 'compound', 'Legs'),
('Wide lat pulldown', 'compound', 'Back');

-- --------------------------------------------------------

--
-- Tabellstruktur `övningsrelation`
--

CREATE TABLE `övningsrelation` (
  `ÖvningsRelations-ID` int(11) NOT NULL,
  `Program-ID` int(11) NOT NULL,
  `ÖvningsNamn` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Index för dumpade tabeller
--

--
-- Index för tabell `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`username`);

--
-- Index för tabell `träningskategori`
--
ALTER TABLE `träningskategori`
  ADD PRIMARY KEY (`KategoriNamn`);

--
-- Index för tabell `träningsprogram`
--
ALTER TABLE `träningsprogram`
  ADD PRIMARY KEY (`Program-ID`),
  ADD KEY `KategoriNam` (`KategoriNamn`),
  ADD KEY `username` (`username`);

--
-- Index för tabell `träningsövning`
--
ALTER TABLE `träningsövning`
  ADD PRIMARY KEY (`ÖvningsNamn`);

--
-- Index för tabell `övningsrelation`
--
ALTER TABLE `övningsrelation`
  ADD PRIMARY KEY (`ÖvningsRelations-ID`),
  ADD KEY `Program-ID` (`Program-ID`),
  ADD KEY `ÖvningsNamn` (`ÖvningsNamn`);

--
-- Restriktioner för dumpade tabeller
--

--
-- Restriktioner för tabell `historik`
--
ALTER TABLE `historik`
  ADD CONSTRAINT `historik_ibfk_1` FOREIGN KEY (`username`) REFERENCES `login` (`username`);

--
-- Restriktioner för tabell `träningsprogram`
--
ALTER TABLE `träningsprogram`
  ADD CONSTRAINT `träningsprogram_ibfk_1` FOREIGN KEY (`KategoriNamn`) REFERENCES `träningskategori` (`KategoriNamn`),
  ADD CONSTRAINT `träningsprogram_ibfk_2` FOREIGN KEY (`username`) REFERENCES `login` (`username`);

--
-- Restriktioner för tabell `övningsrelation`
--
ALTER TABLE `övningsrelation`
  ADD CONSTRAINT `övningsrelation_ibfk_1` FOREIGN KEY (`Program-ID`) REFERENCES `träningsprogram` (`Program-ID`),
  ADD CONSTRAINT `övningsrelation_ibfk_2` FOREIGN KEY (`ÖvningsNamn`) REFERENCES `träningsövning` (`ÖvningsNamn`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;