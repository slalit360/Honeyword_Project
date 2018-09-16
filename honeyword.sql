-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 07, 2016 at 08:14 AM
-- Server version: 5.5.27
-- PHP Version: 5.4.7

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `honeyword`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE IF NOT EXISTS `admin` (
  `adminid` int(10) NOT NULL,
  `uname` varchar(20) NOT NULL,
  `pass` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`adminid`, `uname`, `pass`) VALUES
(1, 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `hacker`
--

DROP TABLE IF EXISTS `hacker`;
CREATE TABLE IF NOT EXISTS `hacker` (
  `id` int(10) NOT NULL,
  `pass` varchar(50) NOT NULL,
  `sd1` varchar(100) NOT NULL,
  `sid2` varchar(100) DEFAULT NULL,
  `sid3` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `hackerlogin`
--

DROP TABLE IF EXISTS `hackerlogin`;
CREATE TABLE IF NOT EXISTS `hackerlogin` (
  `hid` int(10) NOT NULL,
  `uname` varchar(20) NOT NULL,
  `pass` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hackerlogin`
--

INSERT INTO `hackerlogin` (`hid`, `uname`, `pass`) VALUES
(1, 'hacker', 'hacker');

-- --------------------------------------------------------

--
-- Table structure for table `honeytracker`
--

DROP TABLE IF EXISTS `honeytracker`;
CREATE TABLE IF NOT EXISTS `honeytracker` (
  `hid` int(20) NOT NULL,
  `uname` varchar(20) NOT NULL,
  `pass` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `honeytracker`
--

INSERT INTO `honeytracker` (`hid`, `uname`, `pass`) VALUES
(1, 'h1', 'h1');

-- --------------------------------------------------------

--
-- Table structure for table `honeyword`
--

DROP TABLE IF EXISTS `honeyword`;
CREATE TABLE IF NOT EXISTS `honeyword` (
  `idd` int(20) NOT NULL,
  `hn` varchar(50) NOT NULL,
  `f` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `reg`
--

DROP TABLE IF EXISTS `reg`;
CREATE TABLE IF NOT EXISTS `reg` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `fname` varchar(20) NOT NULL,
  `lname` varchar(20) NOT NULL,
  `dob` varchar(20) NOT NULL,
  `gender` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `contno` varchar(20) NOT NULL,
  `add` varchar(50) NOT NULL,
  `bldgroup` varchar(20) NOT NULL,
  `uname` varchar(20) NOT NULL,
  `pass` varchar(20) NOT NULL,
  `flag` varchar(10) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=30 ;

--
-- Dumping data for table `reg`
--

INSERT INTO `reg` (`id`, `fname`, `lname`, `dob`, `gender`, `email`, `contno`, `add`, `bldgroup`, `uname`, `pass`, `flag`) VALUES
(28, 'kiran', 'kk', '02/11/2016', 'Male', 'swapnil.srccode@gmail.com', '8888888888888', 'aa', 'a', 'aaa', 'aaa', '0'),
(29, 'jj', 'jj', 'jj', 'Male', 'i', 'iii', 'ii', 'ii', 'ii', 'ii', '0');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
