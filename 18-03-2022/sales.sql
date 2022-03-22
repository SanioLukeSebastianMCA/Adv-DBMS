-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 20, 2022 at 04:28 PM
-- Server version: 10.3.16-MariaDB
-- PHP Version: 7.1.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sales`
--

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `cust_id` int(11) NOT NULL,
  `f_name` varchar(200) DEFAULT NULL,
  `l_name` varchar(200) DEFAULT NULL,
  `gender` varchar(200) DEFAULT NULL,
  `store_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`cust_id`, `f_name`, `l_name`, `gender`, `store_id`) VALUES
(1, 'Ram', 'Lalith', 'Male', 1),
(2, 'Govind', 'Damu', 'Male', 1),
(3, 'Sarah', 'Winter', 'Female', 2),
(4, 'Cathy', 'hegede', 'Female', 2),
(5, 'Tina', 'Varghese', 'Female', 1),
(6, 'Veena', 'Nair', 'Female', 3),
(7, 'Finny', 'Sabu', 'Male', 3),
(8, 'Jemi', 'Leela', 'Female', 2),
(9, 'Kavita', 'Shankar', 'Female', 1),
(10, 'Elwin', 'Anthony', 'Male', 1);

-- --------------------------------------------------------

--
-- Table structure for table `item`
--

CREATE TABLE `item` (
  `item_id` int(11) NOT NULL,
  `description` varchar(200) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `store_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `item`
--

INSERT INTO `item` (`item_id`, `description`, `price`, `store_id`) VALUES
(1, 'Basmati Rice', 45, 3),
(2, 'Milk', 25, 2),
(3, 'Broomstick', 20, 1),
(4, 'Walnuts', 89, 1),
(5, 'Curd', 24, 2),
(6, 'Cup Ice-cream', 60, 2),
(7, 'Salt', 32, 1),
(8, 'Moong Dal', 35, 3),
(9, 'Sugar', 61, 3),
(10, 'Dish wash', 56, 1);

-- --------------------------------------------------------

--
-- Table structure for table `purchase`
--

CREATE TABLE `purchase` (
  `purchase_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `item_qty` int(11) DEFAULT NULL,
  `pdate` varchar(200) DEFAULT NULL,
  `cust_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `purchase`
--

INSERT INTO `purchase` (`purchase_id`, `item_id`, `item_qty`, `pdate`, `cust_id`, `store_id`) VALUES
(1, 2, 3, '2020-05-10', 2, 1),
(2, 1, 4, '2020-05-10', 1, 1),
(3, 3, 6, '2020-05-10', 4, 2),
(4, 1, 8, '2020-05-10', 7, 3),
(5, 4, 5, '2020-05-10', 3, 2),
(6, 2, 4, '2020-05-11', 2, 1),
(7, 2, 6, '2020-05-10', 3, 2),
(8, 2, 10, '2020-05-10', 1, 1),
(9, 1, 6, '2020-05-10', 5, 1),
(10, 1, 7, '2020-05-11', 4, 1);

-- --------------------------------------------------------

--
-- Table structure for table `store`
--

CREATE TABLE `store` (
  `store_id` int(11) NOT NULL,
  `address` varchar(200) DEFAULT NULL,
  `manager` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `store`
--

INSERT INTO `store` (`store_id`, `address`, `manager`) VALUES
(1, 'Geeti Stores, Below Sreelakshmi Apartment, Myhouse Colony, Bandra', 'Suresh M'),
(2, 'Dinesh Dairies, near boating society, roha', 'Dinesh Patel'),
(3, 'Rinu Grocery Store, Opp. St. Thomas School, Dadar', 'Rinumol Francis');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`cust_id`),
  ADD KEY `store_id` (`store_id`);

--
-- Indexes for table `item`
--
ALTER TABLE `item`
  ADD PRIMARY KEY (`item_id`),
  ADD KEY `store_id` (`store_id`);

--
-- Indexes for table `purchase`
--
ALTER TABLE `purchase`
  ADD PRIMARY KEY (`purchase_id`),
  ADD KEY `item_id` (`item_id`),
  ADD KEY `cust_id` (`cust_id`),
  ADD KEY `store_id` (`store_id`);

--
-- Indexes for table `store`
--
ALTER TABLE `store`
  ADD PRIMARY KEY (`store_id`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `customer`
--
ALTER TABLE `customer`
  ADD CONSTRAINT `customer_ibfk_1` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`);

--
-- Constraints for table `item`
--
ALTER TABLE `item`
  ADD CONSTRAINT `item_ibfk_1` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`);

--
-- Constraints for table `purchase`
--
ALTER TABLE `purchase`
  ADD CONSTRAINT `purchase_ibfk_1` FOREIGN KEY (`item_id`) REFERENCES `item` (`item_id`),
  ADD CONSTRAINT `purchase_ibfk_2` FOREIGN KEY (`cust_id`) REFERENCES `customer` (`cust_id`),
  ADD CONSTRAINT `purchase_ibfk_3` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
