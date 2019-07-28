-- phpMyAdmin SQL Dump
-- version 4.8.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 27, 2019 at 06:37 PM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 7.0.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `talight`
--
CREATE DATABASE IF NOT EXISTS `talight` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `talight`;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `user` varchar(100) NOT NULL,
  `details` varchar(5000) NOT NULL,
  `price` varchar(50) NOT NULL,
  `paid` varchar(30) NOT NULL DEFAULT 'no'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user`, `details`, `price`, `paid`) VALUES
(4, 'user', 'Bajaj RE SP Head Light manufactured 3000*2\r\n', '6000', 'no'),
(5, 'user', 'Bajaj RE Brake Pad imported 1500*10\r\n', '15000', 'cancelled'),
(6, 'user', 'Bajaj RE SP Head Light imported 3500*2\r\n', '7000', 'cancelled');

-- --------------------------------------------------------

--
-- Table structure for table `spareparts`
--

DROP TABLE IF EXISTS `spareparts`;
CREATE TABLE `spareparts` (
  `id` int(11) NOT NULL,
  `model` varchar(100) NOT NULL,
  `part` varchar(100) NOT NULL,
  `type` varchar(50) NOT NULL,
  `price` varchar(50) NOT NULL,
  `instock` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `spareparts`
--

INSERT INTO `spareparts` (`id`, `model`, `part`, `type`, `price`, `instock`) VALUES
(3, 'suthura', 'Head Light', 'manufactured', '3000', 6),
(4, 'Piaggio Ape', 'Head Light', 'manufactured', '3000', 4),
(5, 'Bajaj RE SP', 'Head Light', 'imported', '3500', 3),
(7, 'jcb', 'horn', 'imported', '4444', 34),
(8, 'bmw', 'tire', 'imported', '555', 23),
(9, 'sssus', 'sss', 'imported', '4444', 34),
(11, 'bajaj', 'nice', 'imported', '2233', 12),
(12, 'susuzi', 'suthura', 'manufactured', '234', 23),
(14, 'eranda', 'head', 'imported', '333', 2);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `first` varchar(100) NOT NULL,
  `last` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `phone` varchar(10) NOT NULL,
  `password` varchar(50) NOT NULL,
  `usertype` varchar(20) NOT NULL DEFAULT 'member'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first`, `last`, `username`, `phone`, `password`, `usertype`) VALUES
(1, 'user', 'user', 'user', 'user', 'ee11cbb19052e40b07aac0ca060c23ee', 'member'),
(2, 'sudesh', 'fernando', 'sss', '0762162374', '9f6e6800cfae7749eb6c486619254b9c', 'manager');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `spareparts`
--
ALTER TABLE `spareparts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `spareparts`
--
ALTER TABLE `spareparts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
