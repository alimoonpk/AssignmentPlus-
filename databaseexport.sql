-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jul 13, 2021 at 08:18 AM
-- Server version: 10.3.28-MariaDB-log-cll-lve
-- PHP Version: 7.3.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blacunln_ccnu1`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `email` varchar(50) NOT NULL,
  `password` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`email`, `password`) VALUES
('admin@admin.com', '123456');

-- --------------------------------------------------------

--
-- Table structure for table `answer`
--

CREATE TABLE `answer` (
  `qid` text NOT NULL,
  `ansid` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `answer`
--

INSERT INTO `answer` (`qid`, `ansid`) VALUES
('60e7d5bf94e1e', '60e7d5bf97486'),
('60e7d5bf9f543', '60e7d5bfa0dae'),
('60e7e29b8aca5', '60e7e29b8e4ee'),
('60e7e29b99ee5', '60e7e29b9d8e8'),
('60e7e2a549b5e', '60e7e2a54d220'),
('60e7e2a556a55', '60e7e2a55a097'),
('60e7ec168b18f', '60e7ec168cb5f'),
('60e7ec169979a', '60e7ec169c03f'),
('60e7ec16a8883', '60e7ec16aa80d'),
('60e7f36c42392', '60e7f36c42e19'),
('60e7f36c4b8fb', '60e7f36c4e723'),
('60e7f36c5eec5', '60e7f36c62372'),
('60e7f36c7965f', '60e7f36c7eae0'),
('60e7f36c8b431', '60e7f36c8c021');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `id` text NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `subject` varchar(500) NOT NULL,
  `feedback` varchar(500) NOT NULL,
  `date` date NOT NULL,
  `time` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`id`, `name`, `email`, `subject`, `feedback`, `date`, `time`) VALUES
('60e51ffd76ba3', 'Ali', 'ali@gmail.com', 'Moon', 'Good work', '2021-07-06', '11:31:09pm');

-- --------------------------------------------------------

--
-- Table structure for table `history`
--

CREATE TABLE `history` (
  `email` varchar(50) NOT NULL,
  `eid` text NOT NULL,
  `score` int(11) NOT NULL,
  `level` int(11) NOT NULL,
  `sahi` int(11) NOT NULL,
  `wrong` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `history`
--

INSERT INTO `history` (`email`, `eid`, `score`, `level`, `sahi`, `wrong`, `date`) VALUES
('ali@gmail.com', '60e7d4681438e', 4, 2, 2, 0, '2021-07-12 10:42:39'),
('ali@gmail.com', '60e7e0c324a05', 3, 3, 3, 0, '2021-07-12 10:44:12'),
('ali@gmail.com', '60e7f1fea4b25', 5, 5, 5, 0, '2021-07-12 10:47:08'),
('megha@gmail.com', '60e7e0c324a05', 3, 3, 3, 0, '2021-07-12 10:48:24'),
('megha@gmail.com', '60e7d4681438e', 4, 2, 2, 0, '2021-07-12 10:48:42'),
('shirley@gmail.com', '60e7d4681438e', 4, 2, 2, 0, '2021-07-12 10:49:10'),
('vien@gmail.com', '60e7f01ca0d2c', 3, 3, 3, 0, '2021-07-12 10:50:17'),
('sujith@gmail.com', '60e7e9991af1c', 3, 3, 3, 0, '2021-07-12 10:51:39');

-- --------------------------------------------------------

--
-- Table structure for table `options`
--

CREATE TABLE `options` (
  `qid` varchar(50) NOT NULL,
  `option` varchar(5000) NOT NULL,
  `optionid` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `options`
--

INSERT INTO `options` (`qid`, `option`, `optionid`) VALUES
('60e7d5bf94e1e', ' Progressive Web Application', '60e7d5bf97486'),
('60e7d5bf94e1e', 'progressive  web service ', '60e7d5bf97487'),
('60e7d5bf94e1e', 'programmed web browser app', '60e7d5bf97488'),
('60e7d5bf94e1e', 'productive web services ', '60e7d5bf97489'),
('60e7d5bf9f543', 'java', '60e7d5bfa0dae'),
('60e7d5bf9f543', 'c++', '60e7d5bfa0daf'),
('60e7d5bf9f543', 'Html', '60e7d5bfa0db0'),
('60e7d5bf9f543', 'python', '60e7d5bfa0db1'),
('60e7e29b8aca5', 'auto', '60e7e29b8e4ea'),
('60e7e29b8aca5', 'register ', '60e7e29b8e4ec'),
('60e7e29b8aca5', 'static ', '60e7e29b8e4ed'),
('60e7e29b8aca5', 'mutable', '60e7e29b8e4ee'),
('60e7e29b99ee5', ' By only providing all the functions as virtual functions in the class.', '60e7e29b9d8e8'),
('60e7e29b99ee5', 'Defining the class following with the keyword virtual', '60e7e29b9d8eb'),
('60e7e29b99ee5', ' Defining the class following with the keyword interface', '60e7e29b9d8ec'),
('60e7e29b99ee5', 'Defining the class following with the keyword abstract', '60e7e29b9d8ed'),
('60e7e2a549b5e', 'auto', '60e7e2a54d21a'),
('60e7e2a549b5e', 'register ', '60e7e2a54d21e'),
('60e7e2a549b5e', 'static ', '60e7e2a54d21f'),
('60e7e2a549b5e', 'mutable', '60e7e2a54d220'),
('60e7e2a556a55', ' By only providing all the functions as virtual functions in the class.', '60e7e2a55a097'),
('60e7e2a556a55', 'Defining the class following with the keyword virtual', '60e7e2a55a099'),
('60e7e2a556a55', ' Defining the class following with the keyword interface', '60e7e2a55a09a'),
('60e7e2a556a55', 'Defining the class following with the keyword abstract', '60e7e2a55a09b'),
('60e7ec168b18f', 'print.py(\"Hello World\")', '60e7ec168cb5c'),
('60e7ec168b18f', 'print.(\"Hello World\")v', '60e7ec168cb5d'),
('60e7ec168b18f', 'p;(\"Hello World\")', '60e7ec168cb5e'),
('60e7ec168b18f', 'print(\"Hello World\")', '60e7ec168cb5f'),
('60e7ec169979a', 'regex', '60e7ec169c03c'),
('60e7ec169979a', 'pyre', '60e7ec169c03d'),
('60e7ec169979a', 'pyregex', '60e7ec169c03e'),
('60e7ec169979a', 're', '60e7ec169c03f'),
('60e7ec16a8883', 'method ', '60e7ec16aa80b'),
('60e7ec16a8883', 'a constructor ', '60e7ec16aa80c'),
('60e7ec16a8883', 'explanation ', '60e7ec16aa80d'),
('60e7ec16a8883', 'A class ', '60e7ec16aa80e'),
('60e7f36c42392', 'Faster than others', '60e7f36c42e18'),
('60e7f36c42392', 'Platform independent', '60e7f36c42e19'),
('60e7f36c42392', 'Not reusable', '60e7f36c42e1a'),
('60e7f36c42392', 'Not scalable', '60e7f36c42e1b'),
('60e7f36c4b8fb', 'C programming language', '60e7f36c4e71e'),
('60e7f36c4b8fb', 'PERRL', '60e7f36c4e721'),
('60e7f36c4b8fb', 'COBOL', '60e7f36c4e722'),
('60e7f36c4b8fb', 'Oak programming language', '60e7f36c4e723'),
('60e7f36c5eec5', 'debug a java program', '60e7f36c6236e'),
('60e7f36c5eec5', 'compile a java program', '60e7f36c62372'),
('60e7f36c5eec5', 'interpret a java program', '60e7f36c62373'),
('60e7f36c5eec5', 'execute a java program', '60e7f36c62374'),
('60e7f36c7965f', '2.1', '60e7f36c7ead9'),
('60e7f36c7965f', '2.2', '60e7f36c7eade'),
('60e7f36c7965f', '2.5', '60e7f36c7eadf'),
('60e7f36c7965f', '2.3', '60e7f36c7eae0'),
('60e7f36c8b431', 'java.awt.ActionEvent', '60e7f36c8c01e'),
('60e7f36c8b431', ' java.awt.AWTEvent ', '60e7f36c8c021'),
('60e7f36c8b431', ' java.awt.event.AWTEvent ', '60e7f36c8c022'),
('60e7f36c8b431', 'java.awt.event.Event', '60e7f36c8c023');

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `eid` text NOT NULL,
  `qid` text NOT NULL,
  `qns` text NOT NULL,
  `choice` int(10) NOT NULL,
  `sn` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`eid`, `qid`, `qns`, `choice`, `sn`) VALUES
('60e7d4681438e', '60e7d5bf94e1e', 'What does PWA app stand for?', 4, 1),
('60e7d4681438e', '60e7d5bf9f543', 'In 1999, the \"web application\" concept was introduced in which language ?', 4, 2),
('60e7e0c324a05', '60e7e29b8aca5', ' Which is the storage specifier used to modify the member variable even though the class object is a constant object?', 4, 1),
('60e7e0c324a05', '60e7e29b99ee5', 'How can we make an class act as an interface in C++?', 4, 2),
('60e7e0c324a05', '60e7e29baa76a', 'What is a correct syntax to output \"Hello World\" in C++?', 4, 3),
('60e7e0c324a05', '60e7e2a549b5e', ' Which is the storage specifier used to modify the member variable even though the class object is a constant object?', 4, 1),
('60e7e0c324a05', '60e7e2a556a55', 'How can we make an class act as an interface in C++?', 4, 2),
('60e7e0c324a05', '60e7e2a5606b9', 'What is a correct syntax to output \"Hello World\" in C++?', 4, 3),
('60e7e9991af1c', '60e7ec168b18f', 'What is a correct syntax to output \"Hello World\" in Python?', 4, 1),
('60e7e9991af1c', '60e7ec169979a', 'Name the python module which supports regular expressions.', 4, 2),
('60e7e9991af1c', '60e7ec16a8883', 'Which among them is used to create an object?', 4, 3),
('60e7f1fea4b25', '60e7f36c42392', ' Java programs are', 4, 1),
('60e7f1fea4b25', '60e7f36c4b8fb', 'Java has its origin in', 4, 2),
('60e7f1fea4b25', '60e7f36c5eec5', 'The command javac is used to', 4, 3),
('60e7f1fea4b25', '60e7f36c7965f', ' Filters were officially introduced in the Servlet â€¦â€¦â€¦â€¦â€¦â€¦ specification.', 4, 4),
('60e7f1fea4b25', '60e7f36c8b431', 'Which is the root class of all AWT events', 4, 5);

-- --------------------------------------------------------

--
-- Table structure for table `quiz`
--

CREATE TABLE `quiz` (
  `eid` text NOT NULL,
  `title` varchar(100) NOT NULL,
  `sahi` int(11) NOT NULL,
  `wrong` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `time` bigint(20) NOT NULL,
  `intro` text NOT NULL,
  `tag` varchar(100) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `quiz`
--

INSERT INTO `quiz` (`eid`, `title`, `sahi`, `wrong`, `total`, `time`, `intro`, `tag`, `date`) VALUES
('60e7d4681438e', 'Web Application ', 2, 1, 2, 5, '', 'web application ', '2021-07-09 04:45:28'),
('60e7e0c324a05', 'C++', 1, 0, 3, 5, '', '', '2021-07-09 05:38:11'),
('60e7e9991af1c', 'Python', 1, 0, 3, 5, '', '', '2021-07-09 06:15:53'),
('60e7f01ca0d2c', 'Basic Python', 1, 0, 3, 5, '', '', '2021-07-09 06:43:40'),
('60e7f1fea4b25', 'Java', 1, 0, 5, 5, '', '', '2021-07-09 06:51:42');

-- --------------------------------------------------------

--
-- Table structure for table `rank`
--

CREATE TABLE `rank` (
  `email` varchar(50) NOT NULL,
  `score` int(11) NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `rank`
--

INSERT INTO `rank` (`email`, `score`, `time`) VALUES
('ali@gmail.com', 12, '2021-07-12 10:47:08'),
('megha@gmail.com', 7, '2021-07-12 10:48:42'),
('shirley@gmail.com', 4, '2021-07-12 10:49:10'),
('vien@gmail.com', 3, '2021-07-12 10:50:17'),
('sujith@gmail.com', 3, '2021-07-12 10:51:39');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `name` varchar(50) NOT NULL,
  `gender` varchar(5) NOT NULL,
  `college` varchar(100) NOT NULL,
  `email` varchar(50) NOT NULL,
  `mob` bigint(20) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`name`, `gender`, `college`, `email`, `mob`, `password`) VALUES
('Ali Moon', 'M', 'University of Wollongong', 'ali@gmail.com', 480249585, 'e10adc3949ba59abbe56e057f20f883e'),
('Kathryn', 'F', 'UOW', 'cvn015@uowmail.edu.au', 61428054212, 'e10adc3949ba59abbe56e057f20f883e'),
('MeghaÂ mohan', 'F', 'RMIT', 'megha@gmail.com', 52415895, 'e10adc3949ba59abbe56e057f20f883e'),
('Shirley Shihui', 'F', 'UOW', 'shirley@gmail.com', 661145874, 'e10adc3949ba59abbe56e057f20f883e'),
('Ss', 'F', 'u', 'starrysky.su123@gmail.com', 1234567, 'e10adc3949ba59abbe56e057f20f883e'),
('Shirley', 'F', 'u', 'starrysky.su@yahoo.com', 1234567, 'e10adc3949ba59abbe56e057f20f883e'),
('Sujith Sundar', 'M', 'UNSW', 'sujith@gmail.com', 24574854, 'e10adc3949ba59abbe56e057f20f883e'),
('Vien Nguyen', 'F', 'CCNU', 'vien@gmail.com', 552264181, 'e10adc3949ba59abbe56e057f20f883e');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `rank`
--
ALTER TABLE `rank`
  ADD PRIMARY KEY (`time`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`email`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
