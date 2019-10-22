-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 22, 2019 at 07:32 AM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.3.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `net_banking`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `uname` char(25) DEFAULT NULL,
  `pwd` char(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `uname`, `pwd`) VALUES
(1, 'admin', 'password123');

-- --------------------------------------------------------

--
-- Table structure for table `beneficiary1`
--

CREATE TABLE `beneficiary1` (
  `benef_id` int(11) NOT NULL,
  `benef_cust_id` int(11) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `phone_no` varchar(20) DEFAULT NULL,
  `account_no` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `beneficiary1`
--

INSERT INTO `beneficiary1` (`benef_id`, `benef_cust_id`, `email`, `phone_no`, `account_no`) VALUES
(1, 4, 'jon.snow@gmail.com', '+1 8918332797', 1233556739);

-- --------------------------------------------------------

--
-- Table structure for table `beneficiary3`
--

CREATE TABLE `beneficiary3` (
  `benef_id` int(11) NOT NULL,
  `benef_cust_id` int(11) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `phone_no` varchar(20) DEFAULT NULL,
  `account_no` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `beneficiary5`
--

CREATE TABLE `beneficiary5` (
  `benef_id` int(11) NOT NULL,
  `benef_cust_id` int(11) DEFAULT NULL,
  `email` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone_no` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `account_no` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `beneficiary5`
--

INSERT INTO `beneficiary5` (`benef_id`, `benef_cust_id`, `email`, `phone_no`, `account_no`) VALUES
(1, 3, 'kenilshah@gmail.com', '+91 123456778', 1111111111);

-- --------------------------------------------------------

--
-- Table structure for table `beneficiary6`
--

CREATE TABLE `beneficiary6` (
  `benef_id` int(11) NOT NULL,
  `benef_cust_id` int(11) DEFAULT NULL,
  `email` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone_no` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `account_no` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `beneficiary6`
--

INSERT INTO `beneficiary6` (`benef_id`, `benef_cust_id`, `email`, `phone_no`, `account_no`) VALUES
(1, 3, 'kenilshah@gmail.com', '+91 123456778', 1111111111);

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `cust_id` int(11) NOT NULL,
  `first_name` varchar(30) DEFAULT NULL,
  `last_name` varchar(30) DEFAULT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `aadhar_no` int(11) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `phone_no` varchar(20) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `branch` varchar(30) DEFAULT NULL,
  `account_no` int(11) DEFAULT NULL,
  `pin` int(4) DEFAULT NULL,
  `uname` varchar(30) DEFAULT NULL,
  `pwd` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`cust_id`, `first_name`, `last_name`, `gender`, `dob`, `aadhar_no`, `email`, `phone_no`, `address`, `branch`, `account_no`, `pin`, `uname`, `pwd`) VALUES
(1, 'Hriday', 'Purohit', 'male', '2000-03-17', 123456789, 'hridaypurohit@gmail.com', '+91 9833366146', '401,Gorai Jaldarshan Plot 67, Gorai 2', 'Mumbai', 1122334455, 1234, 'hriday', 'hriday123'),
(3, 'Kenil', 'Shah', 'male', '1999-12-22', 125656765, 'kenilshah@gmail.com', '+91 123456778', 'Charkop, Kandivali', 'Mumbai', 1111111111, 1234, 'kenil', 'kenil123'),
(5, 'Chinmay', 'Patil', 'male', '1999-07-02', 2147483647, 'chinpats@gmail.com', '2888231', 'Boisar', 'delhi', 2147483647, 1234, 'chinmay', 'chinmay123'),
(6, 'Dhyey', 'Parikh', 'male', '1999-04-08', 111111111, 'dhyey@gmail.com', '9833366143', 'Borivali', 'mumbai', 123456789, 1234, 'dhyeyp', 'dhyey123');

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(40) DEFAULT NULL,
  `created` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `title`, `created`) VALUES
(1, 'Hello World !', '2017-09-06 15:45:25'),
(2, 'The First News !', '2017-09-06 15:45:55'),
(3, 'Increasing Interest Rates !', '2017-09-06 15:46:21'),
(4, 'GST on banking', '2017-11-19 16:39:35'),
(5, 'Yes Bank', '2019-10-21 09:18:22'),
(6, 'RBL Bank', '2019-10-21 09:18:38'),
(7, 'Interest Rate', '2019-10-21 09:18:50'),
(8, 'GST', '2019-10-21 09:19:00'),
(9, 'PMC Bank', '2019-10-21 22:17:06');

-- --------------------------------------------------------

--
-- Table structure for table `news_body`
--

CREATE TABLE `news_body` (
  `id` int(10) UNSIGNED NOT NULL,
  `body` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `news_body`
--

INSERT INTO `news_body` (`id`, `body`) VALUES
(5, 'YES Bank share was the top Sensex and Nifty gainer today amid a report that industrialists Sunil Mittal and Sunil Munjal have shown their interest in acquiring stake in the private sector lender. However, later a Bharti spokesperson strongly denied such rumours. YES Bank too in a clarification denied the rumour and said as a policy, the bank would not comment on the matter.\r\n\r\nReports emerged on Wednesday, Mittal and Munjal would be buying stake in their private capacity, which could be up to five percent. Another five percent may be sold to private equity investors.'),
(6, 'Select financial names have been singled out by bears in Tuesday’s trade and RBL BankNSE 1.74 % happens to be on such name. The lender\'s stock that tanked as much as 22 per cent to hit a new record low of Rs 255.60 on BSE.\r\n\r\nThe scrip has now wiped off more than 60 per cent of investors’ wealth since May 2019.\r\n\r\nIn an exclusive interaction with ETNOW, Vishwavir Ahuja, MD and CEO, RBL Bank said the selling is looking highly speculative and misplaced.\r\n\r\n'),
(7, 'This is to inform that as of today interest rates will increase by 4.6% on loans and decrease by 5.8% on deposits. Effective immediately. '),
(8, 'This is to inform that GST shall be applied on all usages of :\r\n1. Credit Cards\r\n2. Debit Cards\r\n3. Internet Banking\r\nat a nominal (nationally applied) rate of 18%.\r\n'),
(9, 'Hi');

-- --------------------------------------------------------

--
-- Table structure for table `passbook1`
--

CREATE TABLE `passbook1` (
  `trans_id` int(11) NOT NULL,
  `trans_date` datetime DEFAULT NULL,
  `remarks` varchar(255) DEFAULT NULL,
  `debit` int(11) DEFAULT NULL,
  `credit` int(11) DEFAULT NULL,
  `balance` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `passbook1`
--

INSERT INTO `passbook1` (`trans_id`, `trans_date`, `remarks`, `debit`, `credit`, `balance`) VALUES
(1, '2019-10-19 22:18:36', 'Opening Balance', 0, 10000, 10000),
(2, '2019-10-19 18:49:26', 'Received from: Kenil Shah, AC/No: 1111111111', 0, 20000, 30000),
(3, '2019-10-19 21:02:32', 'Sent to: Jon Snow, AC/No: 1133557736', 10000, 0, 20000),
(4, '2019-10-19 20:11:33', 'Received from: Kenil Shah, AC/No: 1111111111', 0, 69000, 89000),
(5, '2019-10-19 17:00:35', 'Cash Deposit', 0, 2000000, 2089000),
(6, '2019-10-19 17:01:09', 'Sent to: Jon Snow, AC/No: 1233556739', 15000, 0, 2074000),
(7, '2019-10-19 17:02:29', 'Cash to Self', 25000, 0, 2049000),
(8, '2019-10-19 17:03:45', 'Sent to: Kenil Shah, AC/No: 1111111111', 50000, 0, 1999000),
(9, '2019-10-19 18:52:08', 'Received from: Kenil Shah, AC/No: 1111111111', 0, 6123, 2005123),
(10, '2019-10-22 00:27:42', 'Sent to: Jon Snow, AC/No: 1233556739', 100, 0, 2005023),
(11, '2019-10-22 03:34:03', 'Cash Deposit', 0, 1000000, 3005023);

-- --------------------------------------------------------

--
-- Table structure for table `passbook3`
--

CREATE TABLE `passbook3` (
  `trans_id` int(11) NOT NULL,
  `trans_date` datetime DEFAULT NULL,
  `remarks` varchar(255) DEFAULT NULL,
  `debit` int(11) DEFAULT NULL,
  `credit` int(11) DEFAULT NULL,
  `balance` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `passbook3`
--

INSERT INTO `passbook3` (`trans_id`, `trans_date`, `remarks`, `debit`, `credit`, `balance`) VALUES
(1, '2019-10-19 18:23:03', 'Opening Balance', 0, 50000, 50000),
(2, '2019-10-19 18:42:41', 'Cash Deposit', 0, 123456, 173456),
(3, '2019-10-19 18:42:52', 'Cash to Self', 5698, 0, 167758),
(4, '2019-10-19 18:43:05', 'Cash to Self', 9658, 0, 158100),
(5, '2019-10-19 18:43:23', 'Cash to Self', 1569, 0, 156531),
(6, '2019-10-19 18:43:32', 'Cash to Self', 12369, 0, 144162),
(7, '2019-10-19 18:43:53', 'Cash to Self', 100000, 0, 44162),
(8, '2019-10-19 18:44:14', 'Cash Deposit', 0, 200000, 244162),
(9, '2019-10-19 19:27:10', 'Cash to Self', 10000, 0, 234162),
(10, '2019-10-22 10:56:18', 'Received from: Dhyey Parikh, AC/No: 123456789', 0, 10000, 244162);

-- --------------------------------------------------------

--
-- Table structure for table `passbook5`
--

CREATE TABLE `passbook5` (
  `trans_id` int(11) NOT NULL,
  `trans_date` datetime DEFAULT NULL,
  `remarks` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `debit` int(11) DEFAULT NULL,
  `credit` int(11) DEFAULT NULL,
  `balance` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `passbook5`
--

INSERT INTO `passbook5` (`trans_id`, `trans_date`, `remarks`, `debit`, `credit`, `balance`) VALUES
(1, '2019-10-21 09:06:48', 'Opening Balance', 0, 1000000, 1000000);

-- --------------------------------------------------------

--
-- Table structure for table `passbook6`
--

CREATE TABLE `passbook6` (
  `trans_id` int(11) NOT NULL,
  `trans_date` datetime DEFAULT NULL,
  `remarks` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `debit` int(11) DEFAULT NULL,
  `credit` int(11) DEFAULT NULL,
  `balance` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `passbook6`
--

INSERT INTO `passbook6` (`trans_id`, `trans_date`, `remarks`, `debit`, `credit`, `balance`) VALUES
(1, '2019-10-22 10:52:10', 'Opening Balance', 0, 100000, 100000),
(2, '2019-10-22 10:56:18', 'Sent to: Kenil Shah, AC/No: 1111111111', 10000, 0, 90000);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `beneficiary1`
--
ALTER TABLE `beneficiary1`
  ADD PRIMARY KEY (`benef_id`),
  ADD UNIQUE KEY `benef_cust_id` (`benef_cust_id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `phone_no` (`phone_no`),
  ADD UNIQUE KEY `account_no` (`account_no`);

--
-- Indexes for table `beneficiary3`
--
ALTER TABLE `beneficiary3`
  ADD PRIMARY KEY (`benef_id`),
  ADD UNIQUE KEY `benef_cust_id` (`benef_cust_id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `phone_no` (`phone_no`),
  ADD UNIQUE KEY `account_no` (`account_no`);

--
-- Indexes for table `beneficiary5`
--
ALTER TABLE `beneficiary5`
  ADD PRIMARY KEY (`benef_id`),
  ADD UNIQUE KEY `benef_cust_id` (`benef_cust_id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `phone_no` (`phone_no`),
  ADD UNIQUE KEY `account_no` (`account_no`);

--
-- Indexes for table `beneficiary6`
--
ALTER TABLE `beneficiary6`
  ADD PRIMARY KEY (`benef_id`),
  ADD UNIQUE KEY `benef_cust_id` (`benef_cust_id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `phone_no` (`phone_no`),
  ADD UNIQUE KEY `account_no` (`account_no`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`cust_id`),
  ADD UNIQUE KEY `aadhar_no` (`aadhar_no`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `phone_no` (`phone_no`),
  ADD UNIQUE KEY `account_no` (`account_no`),
  ADD UNIQUE KEY `uname` (`uname`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `news_body`
--
ALTER TABLE `news_body`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `passbook1`
--
ALTER TABLE `passbook1`
  ADD PRIMARY KEY (`trans_id`);

--
-- Indexes for table `passbook3`
--
ALTER TABLE `passbook3`
  ADD PRIMARY KEY (`trans_id`);

--
-- Indexes for table `passbook5`
--
ALTER TABLE `passbook5`
  ADD PRIMARY KEY (`trans_id`);

--
-- Indexes for table `passbook6`
--
ALTER TABLE `passbook6`
  ADD PRIMARY KEY (`trans_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `beneficiary1`
--
ALTER TABLE `beneficiary1`
  MODIFY `benef_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `beneficiary3`
--
ALTER TABLE `beneficiary3`
  MODIFY `benef_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `beneficiary5`
--
ALTER TABLE `beneficiary5`
  MODIFY `benef_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `beneficiary6`
--
ALTER TABLE `beneficiary6`
  MODIFY `benef_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `cust_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `news_body`
--
ALTER TABLE `news_body`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `passbook1`
--
ALTER TABLE `passbook1`
  MODIFY `trans_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `passbook3`
--
ALTER TABLE `passbook3`
  MODIFY `trans_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `passbook5`
--
ALTER TABLE `passbook5`
  MODIFY `trans_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `passbook6`
--
ALTER TABLE `passbook6`
  MODIFY `trans_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
