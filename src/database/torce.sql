-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 21-01-2022 a las 21:24:56
-- Versión del servidor: 10.4.21-MariaDB
-- Versión de PHP: 7.4.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `torce`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `ID` int(4) NOT NULL,
  `Name` char(16) NOT NULL,
  `LastName` char(16) NOT NULL,
  `Email` varchar(64) NOT NULL,
  `Password` varchar(16) NOT NULL,
  `ProfilePic` mediumblob DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`ID`, `Name`, `LastName`, `Email`, `Password`, `ProfilePic`) VALUES
(1, 'Elvis Patricio', 'Almánzar', 'elvisp12353@gmail.com', '0', NULL),
(2, 'Elvis Patricio', 'Almánzar', 'elvisp12353@gmail.com', '0', NULL),
(3, 'Elvis Patricio', 'Almánzar', 'elvisp12353@gmail.com', 'leonardo26', NULL),
(4, 'Elvis Patricio', 'Almánzar', 'elvisp12353@gmail.com', 'leonardo26', NULL),
(5, 'Elvis Patricio', 'Almánzar', 'elvisp12353@gmail.com', 'leonardo26', NULL),
(6, 'Elvis Patricio', 'Almánzar', 'elvisp12353@gmail.com', 'leonardo26', NULL),
(7, 'Elvis Patricio', 'Almánzar', 'elvisp12353@gmail.com', 'leonardo26', NULL),
(8, 'Elvis Patricio', 'Almánzar', 'elvisp12353@gmail.com', 'leonardo26', NULL);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `ID` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
