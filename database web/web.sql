-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 02, 2021 at 10:39 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `web`
--

-- --------------------------------------------------------

--
-- Table structure for table `addpatient`
--

CREATE TABLE `addpatient` (
  `EPN` varchar(100) COLLATE utf8_bin NOT NULL,
  `EPC` varchar(100) COLLATE utf8_bin NOT NULL,
  `EPE` varchar(100) COLLATE utf8_bin NOT NULL,
  `EPA` varchar(100) COLLATE utf8_bin NOT NULL,
  `EPAGE` varchar(100) COLLATE utf8_bin NOT NULL,
  `EPMH` varchar(100) COLLATE utf8_bin NOT NULL,
  `PN` varchar(12) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `adminlog`
--

CREATE TABLE `adminlog` (
  `usname` varchar(100) COLLATE utf8_bin NOT NULL,
  `paswd` varchar(100) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `adminlog`
--

INSERT INTO `adminlog` (`usname`, `paswd`) VALUES
('[value-1]', '[value-2]'),
('[value-1]', '[value-2]'),
('[value-1]', '[value-2]'),
('aaaaa', 'aaaaa'),
('aaaaa', 'aaaaa'),
('m', 'm');

-- --------------------------------------------------------

--
-- Table structure for table `drlogin`
--

CREATE TABLE `drlogin` (
  `Username` varchar(100) COLLATE utf8_bin NOT NULL,
  `Pass` varchar(100) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `drlogin`
--

INSERT INTO `drlogin` (`Username`, `Pass`) VALUES
('ahmed99', 'zz'),
('ahmed99', 'zz'),
('samer.ahmed67890@gmail.com', '28121999'),
('samer.ahmed67890@gmail.com', '28121999'),
('', ''),
('samer.ahmed67890@gmail.com', '28121999'),
('', ''),
('samer.ahmed67890@gmail.com', '28121999'),
('ss', 'ss');

-- --------------------------------------------------------

--
-- Table structure for table `signin`
--

CREATE TABLE `signin` (
  `user name` varchar(80) NOT NULL,
  `password` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `first_name` varchar(40) NOT NULL,
  `last_name` varchar(40) NOT NULL,
  `email` varchar(40) NOT NULL,
  `password` varchar(40) NOT NULL,
  `confirm_password` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`first_name`, `last_name`, `email`, `password`, `confirm_password`) VALUES
('aa', 'bb', 'aa@yahoo.com', 'zz', 'zz'),
('Ahmedss', 'samiraa', 'aasasd@yahoo.com', '111', '111'),
('azz', 'az', 'ahmed@yahoo.com', 'ahmed', 'ahmed'),
('mojj', 'ali', 'ali@gmail.com', 'zxzx', 'xzxz'),
('aya ', 'shereif', 'aya@yahoo.com', '1111', '1111'),
('ahlVHL', 'DSCG', 'same7S890@gmail.com', 'aaa', 'aaa'),
('Ahmed', 'samir', 'samer.ahmed67890@gmail.com', '28121999', '28121999'),
('ss', 'iop', 'sas90@gmail.com', 'aaaa', 'aaaa');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD UNIQUE KEY `email` (`email`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
