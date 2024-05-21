-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 29, 2022 at 10:55 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `vehicleinfo`
--

-- --------------------------------------------------------

--
-- Table structure for table `vehicle_information`
--

CREATE TABLE `vehicle_information` (
  `NAME` varchar(20) DEFAULT NULL,
  `username` varchar(20) DEFAULT NULL,
  `fathername` varchar(20) DEFAULT NULL,
  `PASSWORD` varchar(10) DEFAULT NULL,
  `vehiclenumber` varchar(20) NOT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  `phone_number` varchar(20) DEFAULT NULL,
  `relatives_number` varchar(20) DEFAULT NULL,
  `house_number` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `vehicle_information`
--

INSERT INTO `vehicle_information` (`NAME`, `username`, `fathername`, `PASSWORD`, `vehiclenumber`, `gender`, `address`, `phone_number`, `relatives_number`, `house_number`) VALUES
('hara', 'HARASEKHAR', 'Hara father', '123', '2002', 'male', 'guntur', '123456789', '+9541547', '524238927'),
('SHALEM', 'ASD', 'DSA', '258', 'adfwghdbsnc', 'male', 'guntur', '1478523690', '0369852147', '0123654789'),
('sai', 'sai', 'vikram', '123', 'AP07T1245', 'MALE', 'ONOLE', '1234567890', '0987654321', '1234567890'),
('sai', 'sai', 'ss', '123', 'Ap12A1234', 'male', 'asfaesg', '7896541230', '1478523690', '0369852147'),
('asw', 'qwes', 'ytr', '147', 'AP20A1234', 'female', 'poiuy', '1598753642', '2587413690', '0147852369'),
('prasad', 'shiva', 'prasad', '789', 'AP39A4434', 'male', 'guntur', '7411258965', '1478523698', '1236547890'),
('harish', 'harish', 'hh', '159', 'AP39A4443', 'mail', 'guntur', '7896541230', '1236547890', '1236547890'),
('HARA', 'hara', 'sahu', '159', 'AP39A4444', 'male', 'guntur', '7530129852', '4656987123', '1478523690'),
('mani', 'mani', 'mm', '456', 'AP39A4446', 'male', 'guntur', '7896541230', '1236547890', '1478523690'),
('manju', 'manju', 'mh', '789', 'AP39A4448', 'male', 'guntur', '7530129852', '1478523698', '1236547890'),
('toff', 'toff', 'ti', '456', 'AP49A8521', 'male', 'old guntur', '7530129855', '4656987124', '1478523699'),
('HARASEKHAR', 'hara', 'hara father', '123', 'iahi', 'male', 'guntur', '12324689', '654849616', '6519846184'),
('90', '90', '50', '123', 'qaiudhcaskj', 'male', 'SIDHAIOJD', '1213055454', '123065851', '1485225485'),
('daf', 'erqgvq', 'gf', '147', 'sdfvWV', 'male', 'F', '2455155', '35685653', '6864326');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `vehicle_information`
--
ALTER TABLE `vehicle_information`
  ADD PRIMARY KEY (`vehiclenumber`),
  ADD UNIQUE KEY `vehiclenumber_2` (`vehiclenumber`),
  ADD UNIQUE KEY `phone_number` (`phone_number`,`relatives_number`,`house_number`),
  ADD KEY `vehiclenumber` (`vehiclenumber`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
