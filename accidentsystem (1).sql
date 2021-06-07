-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 09, 2020 at 01:23 AM
-- Server version: 10.1.34-MariaDB
-- PHP Version: 7.2.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `accidentsystem`
--

-- --------------------------------------------------------

--
-- Table structure for table `accidentcase`
--

CREATE TABLE `accidentcase` (
  `caseId` int(11) NOT NULL,
  `timeStamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `type` varchar(20) NOT NULL,
  `vehicleType` varchar(20) NOT NULL,
  `vehicleNumber` varchar(8) NOT NULL,
  `user` int(11) NOT NULL,
  `lang` decimal(12,10) NOT NULL,
  `lat` decimal(12,10) NOT NULL,
  `status` varchar(20) NOT NULL DEFAULT 'NOT_SLOVED',
  `flag` varchar(12) NOT NULL,
  `approvel` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `accidentcase`
--

INSERT INTO `accidentcase` (`caseId`, `timeStamp`, `type`, `vehicleType`, `vehicleNumber`, `user`, `lang`, `lat`, `status`, `flag`, `approvel`) VALUES
(1, '0000-00-00 00:00:00', 'COLOMBO', 'CAR', 'ABD-2555', 0, '6.8194480000', '81.0418450000', 'NOT_SLOVED', 'NOT_SERIOUS', 'WAITIING'),
(2, '0000-00-00 00:00:00', 'GALLE', 'BIKE', 'ABD-2555', 1, '7.1869190000', '79.8681180000', 'SLOVED', 'NOT_SERIOUS', 'APPROVED'),
(3, '0000-00-00 00:00:00', 'KANDY', 'VAN', 'ABD-2555', 1, '7.2920760000', '80.6392570000', 'SLOVED', 'SERIOUS', 'NOT_APPROVED'),
(4, '0000-00-00 00:00:00', 'COLOMBO', 'BUS', 'ABD-2555', 1, '6.5776850000', '81.0523410000', 'NOT_SLOVED', 'SERIOUS', 'APPROVED'),
(5, '0000-00-00 00:00:00', 'KANDY', 'BIKE', 'ABD-2555', 1, '5.9848750000', '80.5978320000', 'NOT_SLOVED', 'NOT_SERIOUS', 'NOT_APPROVED'),
(8, '2019-11-06 18:30:00', 'COLOMBO', 'BUS', 'ABD-2555', 1, '6.8254858000', '80.0296140000', 'NOT_SLOVED', 'NOT_SERIOUS', 'APPROVED'),
(9, '2019-12-06 18:30:00', 'GALLE', 'TUK', 'ABD-2555', 1, '6.8254858000', '80.0296140000', 'NOT_SLOVED', 'NOT_SERIOUS', 'APPROVED'),
(10, '2019-12-06 18:30:00', 'JAFFNA', 'BIKE', 'gjk2345', 1, '6.8254860000', '80.0293592000', 'NOT_SLOVED', 'SERIOUS', 'APPROVED'),
(11, '2019-11-07 18:30:00', 'COLOMBO', 'CAR', 'AB-8964', 1, '6.9209737400', '79.9090576200', 'NOT_SLOVED', 'WAITIING', 'WAITIING'),
(12, '2019-11-08 18:30:00', 'COLOMBO', 'CAR', 'AB-8964', 1, '6.9209897400', '79.9090676200', 'NOT_SLOVED', 'WAITIING', 'WAITIING'),
(13, '2019-10-08 18:41:57', 'COLOMBO', 'CAR', 'CB-8894', 1, '6.8528046200', '79.9269104000', 'NOT_SLOVED', 'WAITIING', 'WAITIING'),
(14, '2019-09-08 18:30:00', 'COLOMBO', 'CAR', 'VB-8964', 1, '6.8446236700', '80.0381469700', 'NOT_SLOVED', 'WAITIING', 'WAITIING'),
(15, '2019-11-08 18:30:00', 'COLOMBO', 'CAR', 'AS-8964', 1, '6.9264268500', '80.1425170900', 'NOT_SLOVED', 'WAITIING', 'WAITIING'),
(16, '2019-11-08 18:30:00', 'GALLE', 'CAR', 'AQ-8964', 1, '6.0094592400', '80.3155517600', 'NOT_SLOVED', 'WAITIING', 'WAITIING'),
(17, '2019-12-08 18:30:00', 'HAMBANTHOTA', 'CAR', 'ABC8964', 1, '6.1733236500', '81.1010742200', 'SLOVED', 'SERIOUS', 'APPROVED'),
(18, '2020-01-08 18:41:57', 'COLOMBO', 'BIKE', 'AB-8964', 1, '6.9209737400', '79.9090576200', 'NOT_SLOVED', 'WAITIING', 'WAITIING'),
(19, '2020-01-08 18:41:57', 'KANDY', 'BUS', 'AB-8864', 1, '7.2643943300', '80.6671142600', 'NOT_SLOVED', 'WAITIING', 'WAITIING'),
(20, '2020-01-08 18:41:57', 'COLOMBO', 'VAN', 'ABP8964', 1, '7.2099003100', '80.4034423800', 'NOT_SLOVED', 'WAITIING', 'WAITIING'),
(21, '2020-01-08 18:41:57', 'ANURADHAPURA', 'BUS', 'AB-8964', 1, '8.7004991300', '80.3430175800', 'NOT_SLOVED', 'WAITIING', 'WAITIING'),
(22, '2020-01-08 18:41:57', 'AMPARA', 'VAN', 'AB-8964', 1, '7.1335976900', '81.0791015600', 'NOT_SLOVED', 'WAITIING', 'WAITIING'),
(23, '2020-01-08 18:41:57', 'GAMPAHA', 'CAR', 'AB-8964', 1, '7.1117946000', '80.0463867200', 'NOT_SLOVED', 'WAITIING', 'WAITIING'),
(24, '2020-01-08 18:41:57', 'RATHNAPURA', 'BUS', 'AB-8964', 1, '6.4463177500', '80.3100585900', 'NOT_SLOVED', 'WAITIING', 'WAITIING'),
(25, '2020-01-08 18:41:57', 'COLOMBO', 'BIKE', 'ACD8964', 1, '6.9209737400', '79.9090576200', 'NOT_SLOVED', 'WAITIING', 'WAITIING'),
(26, '2020-01-08 18:41:57', 'KALUTHARA', 'BIKE', 'AB-8964', 1, '6.4244835500', '80.0244140600', 'NOT_SLOVED', 'WAITIING', 'WAITIING'),
(27, '2020-01-08 18:41:57', 'NUWARA ELIYA', 'BIKE', 'AB-8964', 1, '6.7846257600', '80.6835937500', 'NOT_SLOVED', 'WAITIING', 'WAITIING'),
(28, '2020-01-08 18:41:57', 'BADULLA', 'CAR', 'AB-8964', 1, '6.9209737400', '81.2109375000', 'NOT_SLOVED', '', ''),
(29, '2020-01-08 18:41:57', 'COLOMBO', 'BUS', 'BBH8964', 1, '6.1405547800', '80.7165527300', 'NOT_SLOVED', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `uId` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `role` enum('DRIVER','POLICE','RDA','INSURENCE') NOT NULL,
  `nic` varchar(12) NOT NULL,
  `insuranceID` int(11) NOT NULL,
  `insuranceCompany` varchar(50) NOT NULL,
  `vehicleNo` varchar(8) NOT NULL,
  `contactNo` int(11) NOT NULL,
  `email` varchar(70) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`uId`, `name`, `role`, `nic`, `insuranceID`, `insuranceCompany`, `vehicleNo`, `contactNo`, `email`, `password`) VALUES
(1, 'Rushan Thasindu Jayasundara', 'DRIVER', '199716900992', 0, '0', 'ABX-4567', 719505180, 'rushanthasindu10@gmail.com', 'rushan'),
(4, 'Rushan Jayasundara', 'DRIVER', '971690992v', 12312312, '0', 'ABX-4568', 719505189, 'rushanthasindu0@gmail.com', 'rushan'),
(5, 'Rushan', 'POLICE', '6456451654', 0, '0', '', 546464, 'rushan@slpd.lk', 'rushan'),
(7, 'RUshan', 'INSURENCE', '123456', 0, 'AIA', '1', 12345, 'rushan@aia.com', 'rushan'),
(19, 'Rushan Jayasundara', 'RDA', '923255', 0, '', '', 719505180, 'rushan@rda.com', 'rushan'),
(26, 'Rushan', '', '2345678', 0, '', '', 1234567, 'rushan@slic.com', ''),
(30, '23456yui', '', '23456789', 0, '', '', 23456789, '23456@g34.com', '12345678'),
(38, 'Rushan Jayasundara', 'DRIVER', '', 12312312, 'CriTS', 'ABX-4567', 719505180, 'rushanj@gmail.com', '123');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accidentcase`
--
ALTER TABLE `accidentcase`
  ADD PRIMARY KEY (`caseId`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`uId`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `nic` (`nic`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accidentcase`
--
ALTER TABLE `accidentcase`
  MODIFY `caseId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `uId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
