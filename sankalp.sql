-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 14, 2021 at 01:27 PM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 8.0.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sankalp`
--

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `sno` int(11) NOT NULL,
  `sender` varchar(30) NOT NULL,
  `receiver` varchar(30) NOT NULL,
  `balance` int(30) NOT NULL,
  `datetime` timestamp(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transaction`
--

INSERT INTO `transaction` (`sno`, `sender`, `receiver`, `balance`, `datetime`) VALUES
(1, 'swarak', 'Sankalp Chake', 500, '2021-05-16 09:58:06.184733'),
(4, 'Rahul Verma', 'Sankalp Chake', 1000, '2021-05-16 12:15:07.408331'),
(5, 'Sankalp Chake', 'Dheeman Mamgain', 20, '2021-05-16 12:15:29.268267'),
(6, 'Anne Teak', 'Mohan Lal', 400, '2021-05-16 12:54:16.085475'),
(7, 'Mohan Lal', 'Sankalp Chake', 6000, '2021-05-16 12:54:37.479592'),
(8, 'Sankalp Chake', 'Vishal Rao', 1000, '2021-05-16 12:58:13.788323'),
(19, 'Sankalp Chake', 'Piyush Singh', 4500, '2021-05-16 15:39:53.667170');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `balance` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `balance`) VALUES
(1, 'Sankalp Chake', 'sankalpchake67@gmail.com', 26580),
(3, 'Anne Teak', 'tromp.bradly@yahoo.com', 25100),
(4, 'Dheeman Mamgain', 'yschumm@gmail.com', 420),
(6, 'Rahul Verma', 'verma.rahul@yahoo.com', 6000),
(7, 'Mohan Lal', 'mohanlal@cse.com', 1400),
(13, 'shyam lal', 'lalshyam@yy.com', 6000),
(16, 'Piyush Singh', 'Psingh@gmail.com', 10500);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `transaction`
--
ALTER TABLE `transaction`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
