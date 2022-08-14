-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 14, 2022 at 04:46 AM
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
-- Database: `peluqueriacanina`
--

-- --------------------------------------------------------

--
-- Table structure for table `dueno`
--

CREATE TABLE `dueno` (
  `dni` int(11) NOT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `apellido` varchar(50) DEFAULT NULL,
  `telefono` varchar(15) DEFAULT NULL,
  `direccion` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `dueno`
--

INSERT INTO `dueno` (`dni`, `nombre`, `apellido`, `telefono`, `direccion`) VALUES
(40380407, 'sofia', 'lopez', '1138617563', 'laprida221');

-- --------------------------------------------------------

--
-- Table structure for table `historial`
--

CREATE TABLE `historial` (
  `id_historial` char(5) NOT NULL,
  `fecha` date DEFAULT NULL,
  `perro` char(5) DEFAULT NULL,
  `descripcion` text DEFAULT NULL,
  `monto` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `historial`
--

INSERT INTO `historial` (`id_historial`, `fecha`, `perro`, `descripcion`, `monto`) VALUES
('J2022', '2022-07-05', 's407', 'se aplicaron vacunas', 1600);

-- --------------------------------------------------------

--
-- Table structure for table `perro`
--

CREATE TABLE `perro` (
  `id_perro` char(5) NOT NULL,
  `nombre` varchar(20) DEFAULT NULL,
  `fecha_nac` date DEFAULT NULL,
  `sexo` char(2) DEFAULT NULL,
  `dni_dueno` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `perro`
--

INSERT INTO `perro` (`id_perro`, `nombre`, `fecha_nac`, `sexo`, `dni_dueno`) VALUES
('s407', 'ruby', '2016-11-16', 'F', 40380407);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `dueno`
--
ALTER TABLE `dueno`
  ADD PRIMARY KEY (`dni`);

--
-- Indexes for table `historial`
--
ALTER TABLE `historial`
  ADD PRIMARY KEY (`id_historial`),
  ADD KEY `perro` (`perro`);

--
-- Indexes for table `perro`
--
ALTER TABLE `perro`
  ADD PRIMARY KEY (`id_perro`),
  ADD KEY `dni_dueno` (`dni_dueno`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `historial`
--
ALTER TABLE `historial`
  ADD CONSTRAINT `historial_ibfk_1` FOREIGN KEY (`perro`) REFERENCES `perro` (`id_perro`);

--
-- Constraints for table `perro`
--
ALTER TABLE `perro`
  ADD CONSTRAINT `perro_ibfk_1` FOREIGN KEY (`dni_dueno`) REFERENCES `dueno` (`dni`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
