-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 31, 2021 at 12:52 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `nodejs-login`
--

-- --------------------------------------------------------

--
-- Table structure for table `addposts`
--

CREATE TABLE `addposts` (
  `id` int(11) NOT NULL,
  `Title` varchar(300) NOT NULL,
  `Category` varchar(200) NOT NULL,
  `Date` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `addposts`
--

INSERT INTO `addposts` (`id`, `Title`, `Category`, `Date`) VALUES
(1, 'Z3X', 'Software', 20210129),
(6, 'iPhone', 'Hardware', 20210129),
(7, 'Phone', 'Repair', 20210129),
(8, 'Tule', 'Hardware', 0),
(9, 'Samsung S20 FE', 'Fixing', 0),
(10, 'Hardware', 'Music', 0);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `Title` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `Title`) VALUES
(1, 'TULE JARE'),
(2, 'SOFTWARE ENGINEERING');

-- --------------------------------------------------------

--
-- Table structure for table `realcategory`
--

CREATE TABLE `realcategory` (
  `id` int(11) NOT NULL,
  `Title` text NOT NULL,
  `Date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `realcategory`
--

INSERT INTO `realcategory` (`id`, `Title`, `Date`) VALUES
(27, 'Software', '0000-00-00'),
(28, 'Hardware', '0000-00-00'),
(29, 'Events', '0000-00-00'),
(30, 'Specification', '0000-00-00'),
(31, 'iphone', '0000-00-00'),
(32, 'z3x', '0000-00-00'),
(33, 'Davido', '0000-00-00'),
(34, 'so', '0000-00-00'),
(35, 'Charger', '0000-00-00'),
(49, 'z3x', '0000-00-00'),
(50, 'Samsung S20 FE', '0000-00-00'),
(54, 'Samsung s21', '0000-00-00'),
(55, 'Samsung S20 FE', '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `tb_book`
--

CREATE TABLE `tb_book` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_book`
--

INSERT INTO `tb_book` (`id`, `name`, `price`) VALUES
(2, 'Beans', 500);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`) VALUES
(1, 'Seni', 'senioladokun44@gmail.com', '$2a$08$DWaA66ATMIm8S7RayAwWBuZLuftMdoV9i/lUYaNkdmm/gA7vFeTqi');

-- --------------------------------------------------------

--
-- Table structure for table `userz`
--

CREATE TABLE `userz` (
  `id` int(11) NOT NULL,
  `Name` varchar(10) NOT NULL,
  `Email` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `addposts`
--
ALTER TABLE `addposts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `realcategory`
--
ALTER TABLE `realcategory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_book`
--
ALTER TABLE `tb_book`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `userz`
--
ALTER TABLE `userz`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `addposts`
--
ALTER TABLE `addposts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `realcategory`
--
ALTER TABLE `realcategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `tb_book`
--
ALTER TABLE `tb_book`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `userz`
--
ALTER TABLE `userz`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
