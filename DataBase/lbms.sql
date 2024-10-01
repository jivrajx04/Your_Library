 Server: localhost -  Database: lbms
-- phpMyAdmin SQL Dump
-- version 2.11.5
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: May 21, 2023 at 12:01 AM
-- Server version: 5.0.51
-- PHP Version: 5.2.5

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";

--
-- Database: `lbms`
--

-- --------------------------------------------------------

--
-- Table structure for table `book_details`
--

CREATE TABLE `book_details` (
  `book_name` varchar(50) NOT NULL,
  `b_category` varchar(30) NOT NULL,
  `b_author` varchar(50) NOT NULL,
  `b_publisher` varchar(50) NOT NULL,
  `b_pages` int(20) NOT NULL,
  `b_qty` int(20) NOT NULL,
  `b_edition` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `book_details`
--

INSERT INTO `book_details` (`book_name`, `b_category`, `b_author`, `b_publisher`, `b_pages`, `b_qty`, `b_edition`) VALUES
('MYSQL', 'Education', 'abc', 'xyz', 500, 10, 2014),
('MH-MCA', 'Entrance book', 'abc', 'xyz', 400, 2, 5),
('PLSQL', 'Educational', 'abc', 'xyz', 900, 10, 2016),
('CORE JAVA', 'BCA', 'xyz', 'abc', 345, 10, 2019);

-- --------------------------------------------------------

--
-- Table structure for table `issue_details`
--

CREATE TABLE `issue_details` (
  `s_name` varchar(50) NOT NULL,
  `s_rollno` int(11) NOT NULL,
  `s_class` varchar(10) NOT NULL,
  `book_name` varchar(50) NOT NULL,
  `b_author` varchar(30) NOT NULL,
  `issue_date` varchar(30) NOT NULL,
  `retuurn_date` varchar(30) NOT NULL,
  `returned` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `issue_details`
--

INSERT INTO `issue_details` (`s_name`, `s_rollno`, `s_class`, `book_name`, `b_author`, `issue_date`, `retuurn_date`, `returned`) VALUES
('Jivraj ', 39, 'TYBCA', 'MYSQL', 'abc', '1May2023', '8May2023', 'Returned'),
('Jivraj ', 39, 'TYBCA', 'MH-MCA', 'abc', '7 May 2023', '8May2023', 'Returned'),
('Jivraj ', 39, 'TYBCA', 'MH-MCA', 'abc', '7 May 2023', '13June2023', 'Not Returned'),
('jayesh', 47, 'TYBCA', 'MH-MCA', 'abc', '7 May 2023', '1January2015', 'Returned'),
('anish', 21, 'TYBCA', 'MH-MCA', 'abc', '7 May 2023', '10May2023', 'Returned'),
('Jivraj ', 39, 'TYBCA', 'MYSQL', 'abc', '7 May 2023', '8May2015', 'Not Returned'),
('jayesh', 47, 'TYBCA', 'MYSQL', 'abc', '7 May 2023', '1January2015', 'Returned'),
('Sumit Kumbhar', 344, 'TYBCA', 'CORE JAVA', 'xyz', '21 May 2023', '24May2023', 'Returned');

-- --------------------------------------------------------

--
-- Table structure for table `report`
--

CREATE TABLE `report` (
  `total_students` int(30) NOT NULL,
  `total_books` int(30) NOT NULL,
  `t_issuedbooks` int(30) NOT NULL,
  `t_returnedbooks` int(30) NOT NULL,
  `t_availablebooks` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `report`
--

INSERT INTO `report` (`total_students`, `total_books`, `t_issuedbooks`, `t_returnedbooks`, `t_availablebooks`) VALUES
(4, 32, 4, 6, 27);

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `s_name` varchar(50) NOT NULL,
  `s_class` varchar(10) NOT NULL,
  `s_rollno` int(10) NOT NULL,
  `s_gender` varchar(10) NOT NULL,
  `s_phno` int(10) NOT NULL,
  `s_email` varchar(40) NOT NULL,
  PRIMARY KEY  (`s_rollno`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`s_name`, `s_class`, `s_rollno`, `s_gender`, `s_phno`, `s_email`) VALUES
('anish', 'TYBCA', 21, 'Male', 1234567898, 'ani@gmail.com'),
('Jivraj ', 'TYBCA', 39, 'Male', 1234567890, 'raj@gmail.com'),
('jayesh', 'TYBCA', 47, 'Male', 1234512345, 'jay@gmail.com'),
('Sumit Kumbhar', 'TYBCA', 344, 'Male', 1234567890, 'sam@gmail.com');

