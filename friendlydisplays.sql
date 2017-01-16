-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 16-01-2017 a las 03:00:58
-- Versión del servidor: 10.1.16-MariaDB
-- Versión de PHP: 7.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `friendlydisplays`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `locations`
--

CREATE TABLE `locations` (
  `id` int(11) NOT NULL,
  `latitude` double NOT NULL,
  `lenght` double NOT NULL,
  `active` char(1) NOT NULL,
  `description` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `locations`
--

INSERT INTO `locations` (`id`, `latitude`, `lenght`, `active`, `description`) VALUES
(1, 36.66, -122.22, 'A', 'Pasillo Lacteos'),
(2, -26.3, 36.9, 'A', 'Pasillo Caballeros'),
(3, 132, 66, 'A', 'Pasillo Mascotas'),
(4, -56, -156, 'A', 'Pasillo Mujeres'),
(5, -56, -156, 'A', 'Pasillo Mujeres');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sensoractivity`
--

CREATE TABLE `sensoractivity` (
  `id` int(11) NOT NULL,
  `time` datetime NOT NULL,
  `id_arduino` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `sensoractivity`
--

INSERT INTO `sensoractivity` (`id`, `time`, `id_arduino`) VALUES
(270, '2016-11-11 19:31:20', 1),
(271, '2016-11-11 19:31:21', 1),
(272, '2016-11-11 19:31:22', 1),
(273, '2016-11-11 19:31:23', 1),
(274, '2016-11-11 19:31:25', 1),
(275, '2016-11-11 19:31:26', 1),
(276, '2016-11-11 19:31:27', 1),
(277, '2016-11-11 19:31:28', 1),
(278, '2016-11-11 19:31:29', 1),
(279, '2016-11-11 19:31:30', 1),
(280, '2016-11-11 16:31:20', 1),
(281, '2016-11-11 15:31:20', 1),
(282, '2016-11-11 12:31:20', 0),
(283, '2016-11-11 12:21:20', 0),
(284, '2016-11-11 12:20:20', 1),
(285, '2016-11-11 12:10:20', 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `locations`
--
ALTER TABLE `locations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `sensoractivity`
--
ALTER TABLE `sensoractivity`
  ADD PRIMARY KEY (`id`),
  ADD KEY `activity` (`id_arduino`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `locations`
--
ALTER TABLE `locations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT de la tabla `sensoractivity`
--
ALTER TABLE `sensoractivity`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=286;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
