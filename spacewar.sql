-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 03, 2018 at 08:23 AM
-- Server version: 10.1.24-MariaDB
-- PHP Version: 7.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `spacewar`
--

-- --------------------------------------------------------

--
-- Table structure for table `level`
--

CREATE TABLE `level` (
  `uid` int(2) NOT NULL,
  `ans1` varchar(200) NOT NULL,
  `ans2` varchar(200) NOT NULL,
  `ans3` varchar(200) NOT NULL,
  `ans4` varchar(200) NOT NULL,
  `puzzle` int(10) NOT NULL DEFAULT '500'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `level`
--

INSERT INTO `level` (`uid`, `ans1`, `ans2`, `ans3`, `ans4`, `puzzle`) VALUES
(1, 'abcd', 'b', 'defg', 'a', 500);

-- --------------------------------------------------------

--
-- Table structure for table `register`
--

CREATE TABLE `register` (
  `uid` int(3) NOT NULL,
  `name1` varchar(20) NOT NULL,
  `name2` varchar(20) NOT NULL,
  `tname` varchar(20) NOT NULL,
  `course` varchar(6) NOT NULL,
  `branch` varchar(10) NOT NULL,
  `year` varchar(5) NOT NULL,
  `clg` varchar(30) NOT NULL,
  `cntct` varchar(13) NOT NULL,
  `email` varchar(40) NOT NULL,
  `pass` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `register`
--

INSERT INTO `register` (`uid`, `name1`, `name2`, `tname`, `course`, `branch`, `year`, `clg`, `cntct`, `email`, `pass`) VALUES
(32, 'anjali', 'malik', 'ghj', 'gjj', 'gh', 'null', 'ijnn', '9865543234', 'anjalimalik383@gmail.com', 'anjalimalik'),
(33, 'hbnm', 'bbm', 'mm', 'mbm', 'mnbm', 'null', 'bm', '8470989289', 'anjalimalik83960@gmail.com', 'anjalimalik'),
(34, 'hhj', 'jbjbj', 'jbjb', 'jbjbj', 'jbjb', 'null', 'jbjb', '9865543234', 'aa@g.c', 'anjalimalik'),
(35, 'hhj', 'jbjbj', 'jbjb', 'jbjbj', 'jbjb', 'null', 'jbjb', '9865543234', 'aa@g.c', 'anjalimalik');

-- --------------------------------------------------------

--
-- Table structure for table `score`
--

CREATE TABLE `score` (
  `id` int(3) NOT NULL,
  `email` varchar(50) NOT NULL,
  `team` varchar(50) NOT NULL,
  `lvl1` int(3) NOT NULL DEFAULT '0',
  `lvl2` int(3) NOT NULL DEFAULT '0',
  `lvl3` int(3) NOT NULL DEFAULT '0',
  `lvl4` int(4) NOT NULL DEFAULT '0',
  `puzzle` int(3) NOT NULL DEFAULT '0',
  `total` int(3) NOT NULL DEFAULT '0',
  `on1` varchar(2) NOT NULL DEFAULT 'n',
  `on2` varchar(2) NOT NULL DEFAULT 'n',
  `on3` varchar(2) NOT NULL DEFAULT 'n',
  `on4` varchar(2) NOT NULL DEFAULT 'n',
  `time` int(10) NOT NULL DEFAULT '3600000'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `score`
--

INSERT INTO `score` (`id`, `email`, `team`, `lvl1`, `lvl2`, `lvl3`, `lvl4`, `puzzle`, `total`, `on1`, `on2`, `on3`, `on4`, `time`) VALUES
(1, 'anjalimalik383@gmail.com', 'ghj', 100, 100, 100, 100, 500, 700, 'y', 'y', 'y', 'y', 60000),
(2, 'anjalimalik83960@gmail.com', 'mm', 100, 100, 100, 100, 0, 1900, 'y', 'y', 'y', 'y', 120000),
(3, 'aa@g.c', 'jbjb', 100, 100, 100, 100, 500, 3200, 'y', 'y', 'y', 'y', 50000);

-- --------------------------------------------------------

--
-- Table structure for table `timer`
--

CREATE TABLE `timer` (
  `id` int(3) NOT NULL,
  `email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `level`
--
ALTER TABLE `level`
  ADD PRIMARY KEY (`uid`);

--
-- Indexes for table `register`
--
ALTER TABLE `register`
  ADD PRIMARY KEY (`uid`);

--
-- Indexes for table `score`
--
ALTER TABLE `score`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `timer`
--
ALTER TABLE `timer`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `level`
--
ALTER TABLE `level`
  MODIFY `uid` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `register`
--
ALTER TABLE `register`
  MODIFY `uid` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;
--
-- AUTO_INCREMENT for table `score`
--
ALTER TABLE `score`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `timer`
--
ALTER TABLE `timer`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
