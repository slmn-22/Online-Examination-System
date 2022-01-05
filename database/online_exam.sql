-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 05, 2021 at 08:24 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `online_exam`
--

-- --------------------------------------------------------

--
-- Table structure for table `mst_admin`
--

CREATE TABLE `mst_admin` (
  `id` int(11) NOT NULL,
  `loginid` varchar(50) NOT NULL,
  `pass` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mst_admin`
--

INSERT INTO `mst_admin` (`id`, `loginid`, `pass`) VALUES
(1, 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `mst_question`
--

CREATE TABLE `mst_question` (
  `que_id` int(5) NOT NULL,
  `test_id` int(5) DEFAULT NULL,
  `que_desc` varchar(150) DEFAULT NULL,
  `ans1` varchar(75) DEFAULT NULL,
  `ans2` varchar(75) DEFAULT NULL,
  `ans3` varchar(75) DEFAULT NULL,
  `ans4` varchar(75) DEFAULT NULL,
  `true_ans` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mst_question`
--

INSERT INTO `mst_question` (`que_id`, `test_id`, `que_desc`, `ans1`, `ans2`, `ans3`, `ans4`, `true_ans`) VALUES
(41, 8, 'what is correct mask for A class IP???', '255.0.0.0', '255.255.255.0', '255.255.0.0', 'none of these', 255255),
(42, 8, 'which is not a private IP??', '192.168.1.100', '172.168.16.2', '10.0.0.0.1', '11.11.11.11', 192168),
(43, 8, 'How long is an IPv6 address?', '32 bits', '128 bytes', '64 bits', '128 bits', 128),
(44, 12, '				Which of the following is not a Java features?				', 'Dynamic', 'Architecture Neutral', 'Use of pointers', 'Object-oriented', 3),
(45, 12, '				Which of the following is a valid long literal?				', 'ABH8097', 'L990023', '904423', '0xnf029L', 4),
(46, 12, '		Which of the following creates a List of 3 visible items and multiple selections abled?		', 'new List(false, 3)', 'new List(3, true)', 'new List(true, 3)', 'new List(3, false)', 4),
(47, 12, 'Which method of the Class.class is used to determine the name of a class represented by the class object as a String?', 'getClass()', 'intern()', 'getName()', 'toString()', 3);

-- --------------------------------------------------------

--
-- Table structure for table `mst_result`
--

CREATE TABLE `mst_result` (
  `login` varchar(20) DEFAULT NULL,
  `test_id` int(5) DEFAULT NULL,
  `test_date` date DEFAULT NULL,
  `score` int(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mst_result`
--

INSERT INTO `mst_result` (`login`, `test_id`, `test_date`, `score`) VALUES

('17301113', 12, '0000-00-00', 3),
('sujat', 12, '0000-00-00', 2);

-- --------------------------------------------------------

--
-- Table structure for table `mst_subject`
--

CREATE TABLE `mst_subject` (
  `sub_id` int(5) NOT NULL,
  `sub_name` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mst_subject`
--

INSERT INTO `mst_subject` (`sub_id`, `sub_name`) VALUES
(1, 'Networking'),
(5, 'Computer Fundamental'),
(8, 'Basic Of programming'),
(9, 'python');

-- --------------------------------------------------------

--
-- Table structure for table `mst_test`
--

CREATE TABLE `mst_test` (
  `test_id` int(5) NOT NULL,
  `sub_id` int(5) DEFAULT NULL,
  `test_name` varchar(30) DEFAULT NULL,
  `total_que` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mst_test`
--

INSERT INTO `mst_test` (`test_id`, `sub_id`, `test_name`, `total_que`) VALUES
(8, 1, 'Networking Basic test', '3'),
(12, 8, 'JAVA', '3'),
(13, 9, 'quiz 1', '2');

-- --------------------------------------------------------

--
-- Table structure for table `mst_user`
--

CREATE TABLE `mst_user` (
  `user_id` int(5) NOT NULL,
  `login` varchar(20) DEFAULT NULL,
  `pass` varchar(20) DEFAULT NULL,
  `username` varchar(30) DEFAULT NULL,
  `address` varchar(50) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  `phone` int(10) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mst_user`
--

INSERT INTO `mst_user` (`user_id`, `login`, `pass`, `username`, `address`, `city`, `phone`, `email`) VALUES
(15, '17301113', '17301113leo', 'saikat hossain', 'asasasas', 'Dhaka', 2147483647, 'abrar@gmail.com'),
(16, 'abrar', '1234', 'Abrar Bin Shahid', 'Badda', 'dhaka', 1969468389, 'abrarfahim859@gmail.com'),
(17, 'Sujat', '1234', 'Sujat Mazumder', 'Badda', 'dhaka', 1882020492, 'sujat@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `mst_useranswer`
--

CREATE TABLE `mst_useranswer` (
  `sess_id` varchar(80) DEFAULT NULL,
  `test_id` int(11) DEFAULT NULL,
  `que_des` varchar(200) DEFAULT NULL,
  `ans1` varchar(50) DEFAULT NULL,
  `ans2` varchar(50) DEFAULT NULL,
  `ans3` varchar(50) DEFAULT NULL,
  `ans4` varchar(50) DEFAULT NULL,
  `true_ans` int(11) DEFAULT NULL,
  `your_ans` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mst_useranswer`
--

INSERT INTO `mst_useranswer` (`sess_id`, `test_id`, `que_des`, `ans1`, `ans2`, `ans3`, `ans4`, `true_ans`, `your_ans`) VALUES
('2b8e3337837b82112def8d3e2f42f26e', 8, 'What  Default Data Type ?', 'String', 'Variant', 'Integer', 'Boolear', 2, 1),
('2b8e3337837b82112def8d3e2f42f26e', 8, 'What is Default Form Border Style ?', 'Fixed Single', 'None', 'Sizeable', 'Fixed Diaglog', 3, 3),
('2b8e3337837b82112def8d3e2f42f26e', 8, 'Which is not type of Control ?', 'text', 'lable', 'checkbox', 'option button', 1, 3),
('idjir9pcq2d07764us8rdiq9n5', 11, 'how to use date( ) in mysql ?', 'now( )', 'today( )', 'date( )', 'time( )', 0, 1),
('idjir9pcq2d07764us8rdiq9n5', 11, 'how to use date( ) in mysql ?', 'now( )', 'today( )', 'date( )', 'time( )', 0, 1),
('idjir9pcq2d07764us8rdiq9n5', 11, 'how to use date( ) in mysql ?', 'now( )', 'today( )', 'date( )', 'time( )', 0, 2),
('idjir9pcq2d07764us8rdiq9n5', 11, 'how to use date( ) in mysql ?', 'now( )', 'today( )', 'date( )', 'time( )', 0, 3),
('idjir9pcq2d07764us8rdiq9n5', 11, 'how to use date( ) in mysql ?', 'now( )', 'today( )', 'date( )', 'time( )', 0, 4),
('idjir9pcq2d07764us8rdiq9n5', 11, 'how to use date( ) in mysql ?', 'now( )', 'today( )', 'date( )', 'time( )', 0, 4),
('idjir9pcq2d07764us8rdiq9n5', 11, 'how to use date( ) in mysql ?', 'now( )', 'today( )', 'date( )', 'time( )', 0, 3),
('idjir9pcq2d07764us8rdiq9n5', 11, 'how to use date( ) in mysql ?', 'now( )', 'today( )', 'date( )', 'time( )', 0, 2),
('idjir9pcq2d07764us8rdiq9n5', 11, 'how to use date( ) in mysql ?', 'now( )', 'today( )', 'date( )', 'time( )', 0, 2),
('idjir9pcq2d07764us8rdiq9n5', 11, 'how to use date( ) in mysql ?', 'now( )', 'today( )', 'date( )', 'time( )', 0, 1),
('idjir9pcq2d07764us8rdiq9n5', 11, 'how to use date( ) in mysql ?', 'now( )', 'today( )', 'date( )', 'time( )', 0, 1),
('od03n7g1re0s0mvbkl7alh0k8e', 9, 'Which of the follwing contexts are available in the add watch window?', 'Project', 'Module', 'Procedure', 'All', 4, 2),
('od03n7g1re0s0mvbkl7alh0k8e', 9, 'Which window will allow you to halt the execution of your code when a variable changes?', 'The call stack window', 'The immedite window', 'The locals window', 'The watch window', 4, 2),
('od03n7g1re0s0mvbkl7alh0k8e', 9, 'How can you print the object name associated with the last VB  error to the Immediate window?', 'Debug.Print Err.Number', 'Debug.Print Err.Source', 'Debug.Print Err.Description', 'Debug.Print Err.LastDLLError', 2, 4),
('od03n7g1re0s0mvbkl7alh0k8e', 9, 'Which of the follwing contexts are available in the add watch window?', 'Project', 'Module', 'Procedure', 'All', 4, 1),
('od03n7g1re0s0mvbkl7alh0k8e', 9, 'Which window will allow you to halt the execution of your code when a variable changes?', 'The call stack window', 'The immedite window', 'The locals window', 'The watch window', 4, 1),
('od03n7g1re0s0mvbkl7alh0k8e', 9, 'How can you print the object name associated with the last VB  error to the Immediate window?', 'Debug.Print Err.Number', 'Debug.Print Err.Source', 'Debug.Print Err.Description', 'Debug.Print Err.LastDLLError', 2, 3),
('od03n7g1re0s0mvbkl7alh0k8e', 9, 'How can you print the object name associated with the last VB  error to the Immediate window?', 'Debug.Print Err.Number', 'Debug.Print Err.Source', 'Debug.Print Err.Description', 'Debug.Print Err.LastDLLError', 2, 2),
('od03n7g1re0s0mvbkl7alh0k8e', 9, 'What function does the TabStop property on a command button perform?', 'It determines whether the button can get the focus', 'If set to False it disables the Tabindex property.', 'It determines the order in which the button will r', 'It determines if the access key swquence can be us', 1, 1),
('od03n7g1re0s0mvbkl7alh0k8e', 8, 'what is correct mask for A class IP???', '255.0.0.0', '255.255.255.0', '255.255.0.0', 'none of these', 255255, 1),
('od03n7g1re0s0mvbkl7alh0k8e', 8, 'which is not a private IP??', '192.168.1.100', '172.168.16.2', '10.0.0.0.1', '11.11.11.11', 192168, 2),
('od03n7g1re0s0mvbkl7alh0k8e', 8, 'How long is an IPv6 address?', '32 bits', '128 bytes', '64 bits', '128 bits', 128, 4),
('od03n7g1re0s0mvbkl7alh0k8e', 8, 'what is correct mask for A class IP???', '255.0.0.0', '255.255.255.0', '255.255.0.0', 'none of these', 255255, 1),
('od03n7g1re0s0mvbkl7alh0k8e', 8, 'which is not a private IP??', '192.168.1.100', '172.168.16.2', '10.0.0.0.1', '11.11.11.11', 192168, 2),
('od03n7g1re0s0mvbkl7alh0k8e', 8, 'How long is an IPv6 address?', '32 bits', '128 bytes', '64 bits', '128 bits', 128, 4),
('od03n7g1re0s0mvbkl7alh0k8e', 8, 'what is correct mask for A class IP???', '255.0.0.0', '255.255.255.0', '255.255.0.0', 'none of these', 255255, 1),
('od03n7g1re0s0mvbkl7alh0k8e', 8, 'which is not a private IP??', '192.168.1.100', '172.168.16.2', '10.0.0.0.1', '11.11.11.11', 192168, 2),
('od03n7g1re0s0mvbkl7alh0k8e', 8, 'How long is an IPv6 address?', '32 bits', '128 bytes', '64 bits', '128 bits', 128, 4),
('od03n7g1re0s0mvbkl7alh0k8e', 12, '				Which of the following is not a Java features?				', 'Dynamic', 'Architecture Neutral', 'Use of pointers', 'Object-oriented', 3, 3),
('od03n7g1re0s0mvbkl7alh0k8e', 12, '				Which of the following is a valid long literal?				', 'ABH8097', 'L990023', '904423', '0xnf029L', 4, 4),
('od03n7g1re0s0mvbkl7alh0k8e', 12, '		Which of the following creates a List of 3 visible items and multiple selections abled?		', 'new List(false, 3)', 'new List(3, true)', 'new List(true, 3)', 'new List(3, false)', 4, 2),
('od03n7g1re0s0mvbkl7alh0k8e', 12, 'Which method of the Class.class is used to determine the name of a class represented by the class object as a String?', 'getClass()', 'intern()', 'getName()', 'toString()', 3, 3),
('od03n7g1re0s0mvbkl7alh0k8e', 8, 'what is correct mask for A class IP???', '255.0.0.0', '255.255.255.0', '255.255.0.0', 'none of these', 255255, 4),
('od03n7g1re0s0mvbkl7alh0k8e', 8, 'which is not a private IP??', '192.168.1.100', '172.168.16.2', '10.0.0.0.1', '11.11.11.11', 192168, 3),
('od03n7g1re0s0mvbkl7alh0k8e', 8, 'How long is an IPv6 address?', '32 bits', '128 bytes', '64 bits', '128 bits', 128, 4),
('gka0s61thglv97i24r302kq93n', 8, 'what is correct mask for A class IP???', '255.0.0.0', '255.255.255.0', '255.255.0.0', 'none of these', 255255, 2),
('gka0s61thglv97i24r302kq93n', 8, 'which is not a private IP??', '192.168.1.100', '172.168.16.2', '10.0.0.0.1', '11.11.11.11', 192168, 1),
('gka0s61thglv97i24r302kq93n', 8, 'How long is an IPv6 address?', '32 bits', '128 bytes', '64 bits', '128 bits', 128, 2),
('gka0s61thglv97i24r302kq93n', 8, 'what is correct mask for A class IP???', '255.0.0.0', '255.255.255.0', '255.255.0.0', 'none of these', 255255, 1),
('gka0s61thglv97i24r302kq93n', 12, '				Which of the following is not a Java features?				', 'Dynamic', 'Architecture Neutral', 'Use of pointers', 'Object-oriented', 3, 3),
('gka0s61thglv97i24r302kq93n', 12, '				Which of the following is a valid long literal?				', 'ABH8097', 'L990023', '904423', '0xnf029L', 4, 3),
('gka0s61thglv97i24r302kq93n', 12, '		Which of the following creates a List of 3 visible items and multiple selections abled?		', 'new List(false, 3)', 'new List(3, true)', 'new List(true, 3)', 'new List(3, false)', 4, 3),
('gka0s61thglv97i24r302kq93n', 12, 'Which method of the Class.class is used to determine the name of a class represented by the class object as a String?', 'getClass()', 'intern()', 'getName()', 'toString()', 3, 3),
('gka0s61thglv97i24r302kq93n', 8, 'what is correct mask for A class IP???', '255.0.0.0', '255.255.255.0', '255.255.0.0', 'none of these', 255255, 1),
('gka0s61thglv97i24r302kq93n', 8, 'which is not a private IP??', '192.168.1.100', '172.168.16.2', '10.0.0.0.1', '11.11.11.11', 192168, 1),
('gka0s61thglv97i24r302kq93n', 8, 'How long is an IPv6 address?', '32 bits', '128 bytes', '64 bits', '128 bits', 128, 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `mst_admin`
--
ALTER TABLE `mst_admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mst_question`
--
ALTER TABLE `mst_question`
  ADD PRIMARY KEY (`que_id`);

--
-- Indexes for table `mst_subject`
--
ALTER TABLE `mst_subject`
  ADD PRIMARY KEY (`sub_id`);

--
-- Indexes for table `mst_test`
--
ALTER TABLE `mst_test`
  ADD PRIMARY KEY (`test_id`);

--
-- Indexes for table `mst_user`
--
ALTER TABLE `mst_user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `mst_admin`
--
ALTER TABLE `mst_admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `mst_question`
--
ALTER TABLE `mst_question`
  MODIFY `que_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `mst_subject`
--
ALTER TABLE `mst_subject`
  MODIFY `sub_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `mst_test`
--
ALTER TABLE `mst_test`
  MODIFY `test_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `mst_user`
--
ALTER TABLE `mst_user`
  MODIFY `user_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
