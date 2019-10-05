-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Oct 05, 2019 at 07:40 AM
-- Server version: 10.4.7-MariaDB
-- PHP Version: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `chapter_3`
--

-- --------------------------------------------------------

--
-- Table structure for table `clown_info`
--

CREATE TABLE `clown_info` (
  `id` int(11) NOT NULL,
  `name` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_seen` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `appearance` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `activities` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `clown_info`
--

INSERT INTO `clown_info` (`id`, `name`, `last_seen`, `appearance`, `activities`) VALUES
(2, 'Elsie', 'Cherry Hill Senior Center', 'F, red hair, green dress, huge feet', 'balloons, little car'),
(3, 'Pickles', 'Jack Green\'s party', 'M, orange hair, blue suit, huge feet', 'mime'),
(7, 'Scooter', 'Oakland Hospital', 'M, blue hair, red suit, huge nose', 'balloons'),
(9, 'Babe', 'Earl\'s Autos', 'F, all pink and sparkly', 'balancing, little car'),
(12, 'Zippo', 'Millstone Mall', 'F, orange suit, baggy pants', 'singing'),
(13, 'Snuggles', 'Ball-Mart', 'F, yellow shirt, baggy blue pants', 'umbrellas'),
(14, 'Bonzo', 'Dickson Park', 'M, in drag, polka dotted dress', 'singing, dancing'),
(15, 'Sniffles', 'Tracy\'s', 'M, greeen and purple suit, pointy nose', 'climbing in tiny car'),
(16, 'Mr. Habo', 'Pary for Eric Gray', 'M, cigar, black hair, tiny hat', 'violin'),
(17, 'Clarabelle', 'Belmont Senior Center', 'F, pink hair, huge flower, blue dress', 'dancing');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `clown_info`
--
ALTER TABLE `clown_info`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `clown_info`
--
ALTER TABLE `clown_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
