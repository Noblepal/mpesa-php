-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Aug 31, 2020 at 02:59 PM
-- Server version: 10.3.16-MariaDB
-- PHP Version: 7.1.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pesa`
--

-- --------------------------------------------------------

--
-- Table structure for table `mpesa_callback`
--

CREATE TABLE `mpesa_callback` (
  `id` int(11) NOT NULL,
  `response` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mpesa_callback`
--

INSERT INTO `mpesa_callback` (`id`, `response`) VALUES
(1, '{\n            \"MerchantRequestID\":\"20313-90622860-1\",\n            \"CheckoutRequestID\":\"ws_CO_310820201520426435\",\n            \"ResponseCode\": \"0\",\n            \"ResponseDescription\":\"Success. Request accepted for processing\",\n            \"CustomerMessage\":\"Success. Request accepted for processing\"\n        }\n        ');

-- --------------------------------------------------------

--
-- Table structure for table `mpesa_payments`
--

CREATE TABLE `mpesa_payments` (
  `id` int(11) NOT NULL,
  `TransactionType` varchar(40) NOT NULL,
  `TransID` varchar(40) NOT NULL,
  `TransTime` varchar(40) NOT NULL,
  `TransAmount` double(10,6) NOT NULL,
  `BusinessShortCode` varchar(15) NOT NULL,
  `BillRefNumber` varchar(40) NOT NULL,
  `InvoiceNumber` varchar(40) NOT NULL,
  `ThirdPartyTransID` varchar(40) NOT NULL,
  `MSISDN` varchar(20) NOT NULL,
  `FirstName` varchar(60) NOT NULL,
  `MiddleName` varchar(60) NOT NULL,
  `LastName` varchar(60) NOT NULL,
  `OrgAccountBalance` double(10,6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `mpesa_callback`
--
ALTER TABLE `mpesa_callback`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mpesa_payments`
--
ALTER TABLE `mpesa_payments`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `mpesa_callback`
--
ALTER TABLE `mpesa_callback`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `mpesa_payments`
--
ALTER TABLE `mpesa_payments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
