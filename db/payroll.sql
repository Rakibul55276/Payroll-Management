-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 02, 2018 at 09:34 AM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 7.1.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `payroll`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `system_admin` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(30) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `photo` varchar(200) NOT NULL,
  `created_on` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `system_admin`
--

INSERT INTO `system_admin` (`id`, `username`, `password`, `firstname`, `lastname`, `photo`, `created_on`) VALUES
(1, 'saif', 'admin', 'Saif', 'Uddin', '', '2018-12-01');

-- --------------------------------------------------------

--
-- Table structure for table `attendance`
--

CREATE TABLE `attendance` (
  `id` int(11) NOT NULL,
  `employee_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `time_in` time NOT NULL,
  `status` int(1) NOT NULL,
  `time_out` time NOT NULL,
  `num_hr` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `attendance`
--

INSERT INTO `attendance` (`id`, `employee_id`, `date`, `time_in`, `status`, `time_out`, `num_hr`) VALUES
(13, 1, '2018-12-04', '08:00:00', 1, '09:00:00', 1),
(14, 1, '2018-12-05', '08:00:00', 1, '09:00:00', 1),
(15, 1, '2018-12-06', '08:00:00', 1, '09:00:00', 1),
(16, 1, '2018-12-07', '08:00:00', 1, '09:00:00', 1),
(17, 1, '2018-12-08', '08:00:00', 1, '09:00:00', 1),
(18, 1, '2018-12-09', '08:00:00', 1, '09:00:00', 1),
(74, 1, '2018-12-10', '08:00:00', 1, '09:44:23', 1),
(75, 3, '2018-12-04', '11:00:00', 1, '12:00:00', 1),
(76, 4, '2018-12-04', '12:00:00', 1, '01:00:00', 1),
(77, 4, '2018-12-05', '12:00:00', 1, '01:00:00', 1),
(78, 4, '2018-12-06', '12:00:00', 1, '01:00:00', 1),
(79, 4, '2018-12-07', '12:30:00', 1, '01:00:00', 1),
(80, 4, '2018-12-08', '12:00:00', 1, '01:00:00', 1),
(81, 2, '2018-12-09', '09:00:00', 1, '10:00:00', 1),
(82, 2, '2018-12-10', '09:00:00', 1, '10:00:00', 1),
(83, 2, '2018-12-11', '09:00:00', 1, '10:00:00', 1),
(84, 2, '2018-12-12', '09:00:00', 1, '10:00:00', 1),
(85, 3, '2018-12-12', '11:00:00', 1, '12:00:00', 1),
(86, 5, '2018-12-09', '01:00:00', 1, '02:00:00', 1),
(87, 5, '2018-12-10', '01:00:00', 1, '02:00:00', 1),
(88, 5, '2018-12-11', '01:00:00', 1, '02:00:00', 1),
(89, 5, '2018-12-12', '01:00:00', 1, '02:00:00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `cashadvance`
--

CREATE TABLE `cashadvance` (
  `id` int(11) NOT NULL,
  `date_advance` date NOT NULL,
  `employee_id` varchar(15) NOT NULL,
  `amount` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cashadvance`
--

INSERT INTO `cashadvance` (`id`, `date_advance`, `employee_id`, `amount`) VALUES
(2, '2018-12-04', '1', 0),
(3, '2018-12-04', '1', 0);

-- --------------------------------------------------------

--
-- Table structure for table `deductions`
--

CREATE TABLE `deductions` (
  `id` int(11) NOT NULL,
  `description` varchar(100) NOT NULL,
  `amount` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `deductions`
--

INSERT INTO `deductions` (`id`, `description`, `amount`) VALUES
(1, 'absent', 0),
(2, 'advance', 0),
(3, 'PhilHealth', 0);

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `id` int(5) NOT NULL,
  `employee_id` varchar(15) NOT NULL,
  `employee_password` varchar(30) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `address` text NOT NULL,
  `birthdate` date NOT NULL,
  `contact_info` varchar(100) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `position_id` int(11) NOT NULL,
  `schedule_id` int(11) NOT NULL,
  `photo` varchar(200) NOT NULL,
  `created_on` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`id`, `employee_id`, `employee_password`, `firstname`, `lastname`, `address`, `birthdate`, `contact_info`, `gender`, `position_id`, `schedule_id`, `photo`, `created_on`) VALUES
(1, '54398', 'password', 'Saifuddin', 'Tipu', 'FSKTM, UNIMAS', '1993-12-26', '0149934252', 'Male', 2, 1, '', '2018-12-04'),
(2, '55276', 'password', 'Rakibul', 'Islam', 'FSKTM, UNIMAS', '1992-05-02', '0128485987', 'Male', 1, 2, '', '2018-12-04'),
(3, '55270', 'password', 'Mortuza', 'Minhaz', 'FSKTM, UNIMAS', '1995-10-02', '0142238976', 'Male', 1, 3, '', '2018-12-04'),
(4, '55261', 'password', 'Abu', 'Zafor', 'FSKTM, UNIMAS', '1995-11-12', '0104383190', 'Male', 1, 5, '', '2018-12-04'),
(5, '55272', 'password', 'Shekhanul', 'Islam', 'FSKTM, UNIMAS', '1994-09-22', '01112012660', 'Male', 1, 6, '', '2018-12-04');

-- --------------------------------------------------------

--
-- Table structure for table `overtime`
--

CREATE TABLE `overtime` (
  `id` int(11) NOT NULL,
  `employee_id` varchar(15) NOT NULL,
  `hours` double NOT NULL,
  `rate` double NOT NULL,
  `date_overtime` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `position`
--

CREATE TABLE `position` (
  `id` int(11) NOT NULL,
  `description` varchar(150) NOT NULL,
  `rate` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `position`
--

INSERT INTO `position` (`id`, `description`, `rate`) VALUES
(1, 'Kiosk Assistant', 3),
(2, 'Kiosk Supervisor', 5);

-- --------------------------------------------------------

--
-- Table structure for table `schedules`
--

CREATE TABLE `schedules` (
  `id` int(11) NOT NULL,
  `time_in` time NOT NULL,
  `time_out` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `schedules`
--

INSERT INTO `schedules` (`id`, `time_in`, `time_out`) VALUES
(1, '08:00:00', '09:00:00'),
(2, '09:00:00', '10:00:00'),
(3, '10:00:00', '11:00:00'),
(4, '11:00:00', '12:00:00'),
(5, '12:00:00', '01:00:00'),
(6, '01:00:00', '02:00:00'),
(7, '02:00:00', '03:00:00'),
(8, '03:00:00', '04:00:00'),
(9, '04:00:00', '05:00:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `system_admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `attendance`
--
ALTER TABLE `attendance`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cashadvance`
--
ALTER TABLE `cashadvance`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `deductions`
--
ALTER TABLE `deductions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `overtime`
--
ALTER TABLE `overtime`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `position`
--
ALTER TABLE `position`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `schedules`
--
ALTER TABLE `schedules`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `system_admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `attendance`
--
ALTER TABLE `attendance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=90;

--
-- AUTO_INCREMENT for table `cashadvance`
--
ALTER TABLE `cashadvance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `deductions`
--
ALTER TABLE `deductions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `overtime`
--
ALTER TABLE `overtime`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `position`
--
ALTER TABLE `position`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `schedules`
--
ALTER TABLE `schedules`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
