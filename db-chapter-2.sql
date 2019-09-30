-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Sep 30, 2019 at 06:26 PM
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
-- Database: `easy_drinks`
--

-- --------------------------------------------------------

--
-- Table structure for table `black_book`
--

CREATE TABLE `black_book` (
  `id` int(11) NOT NULL,
  `date_name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rating` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `black_book`
--

INSERT INTO `black_book` (`id`, `date_name`, `rating`) VALUES
(1, 'Alex', 'innovative'),
(2, 'James', 'boring'),
(3, 'Ian', 'fabulous'),
(4, 'Boris', 'ho hum'),
(5, 'Melvin', 'plebian'),
(6, 'Eric', 'pathetic'),
(7, 'Anthony', 'delightful'),
(8, 'Sammy', 'pretty good');

-- --------------------------------------------------------

--
-- Table structure for table `doughnut_ratings`
--

CREATE TABLE `doughnut_ratings` (
  `id` int(20) NOT NULL,
  `location` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `time` time NOT NULL,
  `date` date NOT NULL,
  `type` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rating` set('1','2','3','4','5','6','7','8','9','10') COLLATE utf8mb4_unicode_ci NOT NULL,
  `comments` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `doughnut_ratings`
--

INSERT INTO `doughnut_ratings` (`id`, `location`, `time`, `date`, `type`, `rating`, `comments`) VALUES
(1, 'Starbuzz Coffee', '07:43:00', '2019-04-23', 'cinnamon glazed', '6', 'too much spice'),
(2, 'Duncan\'s Donuts', '08:46:00', '2019-08-25', 'plain glazed', '5', 'greasy'),
(3, 'Duncan\'s Donuts', '07:58:00', '2019-04-26', 'jelly', '6', 'stale but tasty'),
(4, 'Starbuzz Coffee', '10:35:00', '2019-04-24', 'plain glazed', '7', 'warm, but not hot'),
(5, 'Krispy King', '09:39:00', '2019-09-26', 'jelly', '6', 'not enough jelly'),
(6, 'Starbuzz Coffee', '07:48:00', '2019-04-23', 'rocky road ', '10', 'marshmallows!'),
(7, 'Krispy King', '08:56:00', '2019-11-25', 'plain glazed', '8', 'maple syrup glaze');

-- --------------------------------------------------------

--
-- Table structure for table `drink_info`
--

CREATE TABLE `drink_info` (
  `id` int(11) NOT NULL,
  `drink_name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cost` float NOT NULL,
  `carbs` float NOT NULL,
  `color` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ice` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `calories` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `drink_info`
--

INSERT INTO `drink_info` (`id`, `drink_name`, `cost`, `carbs`, `color`, `ice`, `calories`) VALUES
(1, 'Blackthorn', 3, 8.4, 'yellow', 'Y', 33),
(2, 'Blue Moon', 2.5, 3.2, 'blue', 'Y', 12),
(3, 'Oh My Gosh', 3.5, 8.6, 'orange', 'Y', 35),
(4, 'Lime Fizz', 2.5, 5.4, 'green', 'Y', 24),
(5, 'Kiss on the Lips', 5.5, 42.5, 'purple', 'Y', 171),
(6, 'Hot Gold', 3.2, 32.1, 'orange', 'N', 135),
(7, 'Lone  Tree', 3.6, 4.2, 'red', 'Y', 17),
(8, 'Greyhound', 4, 14, 'yellow', 'Y', 50),
(9, 'Indian Summer', 2.8, 7.2, 'brown', 'N', 30),
(10, 'Bull Frog', 2.6, 21.5, 'tan', 'Y', 80),
(11, 'Soda and It', 3.8, 4.7, 'red', 'N', 19);

-- --------------------------------------------------------

--
-- Table structure for table `easy_drinks`
--

CREATE TABLE `easy_drinks` (
  `drink_name` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `main` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount1` float NOT NULL,
  `second` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount2` float NOT NULL,
  `directions` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `easy_drinks`
--

INSERT INTO `easy_drinks` (`drink_name`, `main`, `amount1`, `second`, `amount2`, `directions`, `id`) VALUES
('Blackthorn', 'tonic water', 1.5, 'pineapple juice', 1, 'stir with ice, strain into cocktail glass with lemon twist', 2),
('Blue Moon', 'soda', 1.5, 'blueberry juice', 0.75, 'stir with ice, strain into cocktail glass with lemon twist', 3),
('Oh my Gosh', 'peach nectar', 1, 'pineapple juice', 1, 'stir with ice, strain into shot glass', 4),
('Lime Fizz', 'Sprite', 1.5, 'lime juice', 0.75, 'stir with ice, strain into cocktail glass', 5),
('Kiss on the lips', 'cherry juice', 2, 'apricot nectar', 7, 'serve over ice with straw', 6),
('Hot Gold', 'peach nectar', 3, 'orange juice', 6, 'pour hot orange juice in mug and add peach nectar', 7),
('Lone Tree', 'soda', 1.5, 'cherry juice', 0.75, 'stir with ice, strain into cocktail glass', 8),
('Greyhound', 'soda', 1.5, 'grapefruit juice', 5, 'serve over ice, stir well', 9),
('Indian Summer', 'apple juice', 2, 'hot tea', 6, 'add juice to mug and top off with hot tea', 10),
('Bull Frog', 'iced tea', 1.5, 'lemonade', 5, 'serve over ice with lime slice', 11),
('Soda and It', 'soda', 2, 'grape juice', 1, 'shake in cocktail glass, no ice', 12);

-- --------------------------------------------------------

--
-- Table structure for table `my_contacts`
--

CREATE TABLE `my_contacts` (
  `id` int(11) NOT NULL,
  `last_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `first_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `my_contacts`
--

INSERT INTO `my_contacts` (`id`, `last_name`, `first_name`, `email`, `gender`, `location`) VALUES
(1, 'Anderson', 'Jillion', 'jill_anderson@breakneckpizza.com', 'F', 'Palo Alto, CA'),
(2, 'Joffe', 'Kevin', 'joffe@simuduck.com', 'M', 'San Jose, CA'),
(3, 'Newsome', 'Amanda', 'aman2luv@breakneckpizza.com', 'F', 'San Fran, CA'),
(4, 'Garcia', 'Ed', 'ed99@b0tt0msup.com', 'M', 'San Mateo, CA'),
(5, 'Roundtree', 'Jo-Ann', 'jojoround@breakneckpizza.com', 'F', 'San Fran, CA'),
(6, 'Briggs', 'Chris', 'cbriggs@boards-r-us.com', 'M', 'Austin, TX'),
(7, 'Harte', 'Lloyd', 'hovercraft@breakneckpizza.com', 'M', 'San Jose, CA'),
(8, 'Toth', 'Anne', 'Anne_Toth@leapinlimos.com', 'F', 'San Fran, CA'),
(9, 'Wiley', 'Andrew', 'wileyandrew@objectville.net', 'M', 'NYC, NY'),
(10, 'Palumbo', 'Tom', 'palofmine@mightygumball.net', 'M', 'Princeton, NJ'),
(11, 'Ryan', 'Alanna', 'angrypirate@breakneckpizza.com', 'F', 'San Fran, CA');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `black_book`
--
ALTER TABLE `black_book`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doughnut_ratings`
--
ALTER TABLE `doughnut_ratings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `drink_info`
--
ALTER TABLE `drink_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `easy_drinks`
--
ALTER TABLE `easy_drinks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `my_contacts`
--
ALTER TABLE `my_contacts`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `black_book`
--
ALTER TABLE `black_book`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `doughnut_ratings`
--
ALTER TABLE `doughnut_ratings`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `drink_info`
--
ALTER TABLE `drink_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `easy_drinks`
--
ALTER TABLE `easy_drinks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `my_contacts`
--
ALTER TABLE `my_contacts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
