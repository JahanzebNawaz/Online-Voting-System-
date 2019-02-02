-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 26, 2017 at 08:45 AM
-- Server version: 5.7.14
-- PHP Version: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `online voting system`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `admin_pass` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `candidate`
--

CREATE TABLE `candidate` (
  `candi_id` int(11) NOT NULL COMMENT 'candidate id',
  `candi_name` int(11) NOT NULL COMMENT 'candidate name'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `district head`
--

CREATE TABLE `district head` (
  `head_name` int(11) NOT NULL,
  `dist_name` int(11) NOT NULL,
  `teh_name` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `party`
--

CREATE TABLE `party` (
  `party_name` int(11) NOT NULL COMMENT 'Party Symbol',
  `party_symbol` int(11) NOT NULL COMMENT 'Party Symbol',
  `party_votes` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `party head`
--

CREATE TABLE `party head` (
  `party_head` int(11) NOT NULL COMMENT 'Name of Head',
  `party_symbol` int(11) NOT NULL COMMENT 'Symbol of Party'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `person`
--

CREATE TABLE `person` (
  `voter_id` int(11) NOT NULL COMMENT 'ID of Voter',
  `name` varchar(11) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Name of Voter',
  `fname` varchar(11) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Name of Father',
  `mname` varchar(11) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Name of Mother',
  `gender` int(11) NOT NULL COMMENT 'Gender Male/Female',
  `dob` date NOT NULL COMMENT 'Date of Birth',
  `age` int(11) NOT NULL COMMENT 'Age',
  `nic` int(11) NOT NULL COMMENT 'CNIC',
  `country` varchar(15) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Pakistan' COMMENT 'Country',
  `province` int(11) NOT NULL COMMENT 'Province',
  `city` int(11) NOT NULL COMMENT 'City',
  `address` int(11) NOT NULL COMMENT 'Address',
  `mob_no` int(12) NOT NULL COMMENT 'Mobile No',
  `account_id` varchar(15) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Account Name',
  `account_pass` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Password of Account'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `province head`
--

CREATE TABLE `province head` (
  `province_name` int(11) NOT NULL,
  `head_name` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `result`
--

CREATE TABLE `result` (
  `party_name` int(11) NOT NULL,
  `party_votes` int(11) NOT NULL,
  `party_head` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `voter`
--

CREATE TABLE `voter` (
  `voter_id` int(11) NOT NULL COMMENT 'votes id',
  `candi_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `votes`
--

CREATE TABLE `votes` (
  `party_name` int(11) NOT NULL,
  `candi_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `votes category`
--

CREATE TABLE `votes category` (
  `vote_id` int(11) NOT NULL COMMENT 'vote id',
  `name` int(11) NOT NULL COMMENT 'Vote Type Name'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD UNIQUE KEY `admin_id` (`admin_id`);

--
-- Indexes for table `candidate`
--
ALTER TABLE `candidate`
  ADD PRIMARY KEY (`candi_id`);

--
-- Indexes for table `party`
--
ALTER TABLE `party`
  ADD PRIMARY KEY (`party_name`,`party_symbol`);

--
-- Indexes for table `party head`
--
ALTER TABLE `party head`
  ADD PRIMARY KEY (`party_head`,`party_symbol`);

--
-- Indexes for table `person`
--
ALTER TABLE `person`
  ADD PRIMARY KEY (`voter_id`),
  ADD UNIQUE KEY `nic` (`nic`),
  ADD UNIQUE KEY `account_id` (`account_id`);

--
-- Indexes for table `province head`
--
ALTER TABLE `province head`
  ADD PRIMARY KEY (`province_name`,`head_name`);

--
-- Indexes for table `result`
--
ALTER TABLE `result`
  ADD PRIMARY KEY (`party_head`);

--
-- Indexes for table `voter`
--
ALTER TABLE `voter`
  ADD PRIMARY KEY (`voter_id`,`candi_id`);

--
-- Indexes for table `votes`
--
ALTER TABLE `votes`
  ADD PRIMARY KEY (`party_name`,`candi_id`);

--
-- Indexes for table `votes category`
--
ALTER TABLE `votes category`
  ADD PRIMARY KEY (`vote_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `person`
--
ALTER TABLE `person`
  MODIFY `voter_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID of Voter';
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
