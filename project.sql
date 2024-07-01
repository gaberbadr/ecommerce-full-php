-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 01, 2024 at 05:54 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project`
--

-- --------------------------------------------------------

--
-- Table structure for table `address`
--

CREATE TABLE `address` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `city` varchar(100) NOT NULL,
  `country` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `address`
--

INSERT INTO `address` (`id`, `name`, `address`, `city`, `country`) VALUES
(19, 'Gaber Badr', 'منوف', 'المنوفيه', 'egypt'),
(20, 'Gaber Badr', 'منوف', 'المنوفيه', 'egypt'),
(21, 'Gaber Badr', 'منوف', 'المنوفيه', 'egypt'),
(23, 'Gaber Badr', 'منوف', 'المنوفيه', 'egypt'),
(24, 'Gaber Badr', 'منوف', 'المنوفيه', 'egypt'),
(25, 'Gaber Badr', 'منوف', 'المنوفيه', 'egypt');

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `email` varchar(100) NOT NULL,
  `password` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`email`, `password`) VALUES
('gaberemadbadr@gmail.com', '0000');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(10) NOT NULL,
  `img` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `size` varchar(50) NOT NULL,
  `total` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `img`, `name`, `price`, `quantity`, `size`, `total`) VALUES
(23, 'img/best1.jpg', 'black t-shirt', 200, 4, 'medium', 800),
(24, 'img/f7.jpg', 'Trouser-gabarden', 300, 1, 'medium', 250),
(19, 'img/f7.jpg', 'Trouser-gabarden', 300, 3, 'medium', 750),
(25, 'img/best1.jpg', 'black t-shirt', 200, 5, 'medium', 1000),
(19, 'img/best1.jpg', 'black t-shirt', 200, 1, 'medium', 200);

-- --------------------------------------------------------

--
-- Table structure for table `coupon`
--

CREATE TABLE `coupon` (
  `code` varchar(100) NOT NULL,
  `percent` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `coupon`
--

INSERT INTO `coupon` (`code`, `percent`) VALUES
('gaber', 10);

-- --------------------------------------------------------

--
-- Table structure for table `prod`
--

CREATE TABLE `prod` (
  `id` int(11) NOT NULL,
  `prand` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` int(11) NOT NULL,
  `img` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `prod`
--

INSERT INTO `prod` (`id`, `prand`, `name`, `price`, `img`) VALUES
(18, 'dice', 'black t-shirt', 200, 'img/best1.jpg'),
(19, 'zara', 'Trouser-gabarden', 300, 'img/f7.jpg'),
(21, 'h&m', 'plosa', 250, 'img/f8.jpg'),
(22, 'lacosta', 'summer t-shirt', 600, 'img/f6.jpg'),
(23, 'adids', 'polu', 200, 'img/f5.jpg'),
(24, 'zara', 'Trouser-gens', 350, 'img/n6.jpg'),
(25, 'zara', 't-shirt', 250, 'img/f4.jpg'),
(26, 'adids', 't-shirt', 200, 'img/f2.jpg'),
(28, 'zara', 'gaber3', 500, 'img/ban3.jpg'),
(29, 'zara', 't-shirt', 200, 'img/ban3 (2).jpg'),
(30, 'zara', 'gaber', 2000, 'img/ban4.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`) VALUES
(19, 'aaaa', 'aaaa@gmail.com', 'aaaa'),
(20, 'bbbb', 'bbbb@gmail.com', 'bbbb'),
(21, 'hazem', 'gaberemadbader@gmail.com', '123321'),
(22, 'hazem', '01019806684', '123321'),
(23, 'zaza', 'zaza@gmail.com', '123123'),
(24, 'gad', '01027424799', 'qatm01027424799'),
(25, 'elsdody', 'elsdody@gmail.com', '123321');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `address`
--
ALTER TABLE `address`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coupon`
--
ALTER TABLE `coupon`
  ADD PRIMARY KEY (`code`);

--
-- Indexes for table `prod`
--
ALTER TABLE `prod`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `address`
--
ALTER TABLE `address`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `prod`
--
ALTER TABLE `prod`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
