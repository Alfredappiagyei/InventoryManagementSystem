-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 18, 2023 at 12:33 AM
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
-- Database: `trackwise`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `category` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `category`, `status`) VALUES
(4, 'Beverages', 'Engaged'),
(5, 'Bread/Bakery', 'Engaged'),
(6, 'Canned/Jarred Goods', 'Engaged'),
(7, 'Dairy Products', 'Engaged'),
(8, 'Dry/Baking Goods', 'Engaged'),
(9, 'Frozen Products', 'Engaged'),
(10, 'Meat', 'Engaged'),
(11, 'Farm Produce', 'Engaged'),
(12, 'Home Cleaners', 'Engaged'),
(13, 'Paper Goods', 'Engaged'),
(14, 'Home Care', 'Engaged');

-- --------------------------------------------------------

--
-- Table structure for table `goods`
--

CREATE TABLE `goods` (
  `id` int(11) NOT NULL,
  `goodName` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `date` varchar(255) NOT NULL,
  `cat_id` int(255) NOT NULL,
  `vendor_id` int(255) NOT NULL,
  `cost_price` int(100) NOT NULL,
  `retail_price` int(100) NOT NULL,
  `qty` int(100) NOT NULL,
  `up_code` int(11) NOT NULL,
  `status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `goods`
--

INSERT INTO `goods` (`id`, `goodName`, `description`, `date`, `cat_id`, `vendor_id`, `cost_price`, `retail_price`, `qty`, `up_code`, `status`) VALUES
(5, 'beans', 'beans is good', '02/02', 11, 0, 749879, 688, 5619, 111, 'Engaged'),
(7, 'cheeses', 'cheeses njice', '02/04/2022', 7, 8, 12000, 15000, 3780, 222, 'Engaged'),
(8, 'vegetables', 'frozen vegetables ', '23/04/2023', 9, 7, 2000, 6000, 198, 333, 'Engaged'),
(9, 'lunch meat', 'lunch meat,', '12/02/2021', 10, 8, 30000, 60000, 12, 444, 'Engaged');

-- --------------------------------------------------------

--
-- Table structure for table `issued_good`
--

CREATE TABLE `issued_good` (
  `id` int(11) NOT NULL,
  `issues_id` int(11) NOT NULL,
  `good_id` int(11) NOT NULL,
  `sell_price` int(30) NOT NULL,
  `qty` int(15) NOT NULL,
  `total` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `issued_good`
--

INSERT INTO `issued_good` (`id`, `issues_id`, `good_id`, `sell_price`, `qty`, `total`) VALUES
(5, 27, 111, 688, 2, 1376),
(6, 27, 222, 15000, 3, 1376),
(7, 28, 111, 688, 100, 68800),
(8, 28, 222, 15000, 200, 68800),
(9, 29, 111, 688, 2, 1376),
(10, 29, 222, 15000, 3, 1376),
(11, 30, 111, 688, 2, 1376),
(12, 30, 222, 15000, 2, 1376),
(13, 31, 111, 688, 2, 1376),
(25, 39, 111, 688, 2, 1376),
(26, 39, 222, 15000, 2, 1376),
(27, 40, 111, 688, 4, 2752),
(28, 41, 111, 688, 3, 2064),
(29, 41, 222, 15000, 2, 2064),
(30, 42, 111, 688, 4, 2752),
(31, 43, 111, 688, 2, 1376),
(32, 44, 111, 688, 4, 2752);

-- --------------------------------------------------------

--
-- Table structure for table `issues`
--

CREATE TABLE `issues` (
  `id` int(11) NOT NULL,
  `date` varchar(255) NOT NULL,
  `subtotal` int(15) NOT NULL,
  `pay` int(15) NOT NULL,
  `balance` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `issues`
--

INSERT INTO `issues` (`id`, `date`, `subtotal`, `pay`, `balance`) VALUES
(22, '2023/07/11', 32064, 33000, 936),
(23, '2023/07/11', 46376, 50000, 3624),
(24, '2023/07/11', 46376, 50000, 3624),
(25, '2023/07/11', 42000, 50000, 8000),
(26, '2023/07/11', 75000, 76000, 1000),
(27, '2023/07/11', 46376, 50000, 3624),
(28, '2023/07/11', 3068800, 4000000, 931200),
(29, '2023/07/12', 46376, 50000, 3624),
(30, '2023/07/14', 31376, 32000, 624),
(39, '2023/07/15', 31376, 32000, 624),
(40, '2023/07/15', 2752, 3000, 248),
(41, '2023/07/15', 32064, 40000, 7936),
(42, '2023/07/15', 2752, 3000, 248),
(43, '2023/07/15', 1376, 2000, 624),
(44, '2023/07/15', 2752, 3000, 248);

-- --------------------------------------------------------

--
-- Table structure for table `vendors`
--

CREATE TABLE `vendors` (
  `id` int(11) NOT NULL,
  `vendor` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `vendors`
--

INSERT INTO `vendors` (`id`, `vendor`, `status`) VALUES
(3, 'sonny', 'Engaged'),
(4, 'samsong', 'Engaged'),
(5, 'Amazon', 'Engaged'),
(6, 'Ebay', 'Engaged'),
(7, 'Shopright', 'Engaged'),
(8, 'Wallmat', 'Engaged');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `goods`
--
ALTER TABLE `goods`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `issued_good`
--
ALTER TABLE `issued_good`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `issues`
--
ALTER TABLE `issues`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vendors`
--
ALTER TABLE `vendors`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `goods`
--
ALTER TABLE `goods`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `issued_good`
--
ALTER TABLE `issued_good`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `issues`
--
ALTER TABLE `issues`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `vendors`
--
ALTER TABLE `vendors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
