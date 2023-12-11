-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 17-11-2023 a las 22:43:12
-- Versión del servidor: 10.4.11-MariaDB
-- Versión de PHP: 7.4.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `circuito`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cupones`
--

CREATE TABLE `cupones` (
  `PK_nroCupon` int(11) NOT NULL,
  `nombre` varchar(40) NOT NULL,
  `apellido` varchar(40) NOT NULL,
  `mail` varchar(60) NOT NULL,
  `cantidad` tinyint(1) NOT NULL,
  `FK_tipoEstadia` tinyint(1) NOT NULL,
  `totalPagar` decimal(12,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tiposestadia`
--

CREATE TABLE `tiposestadia` (
  `PK_tipoEstadia` tinyint(11) NOT NULL,
  `porcentDescuento` decimal(5,0) NOT NULL,
  `detalle` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tiposestadia`
--

INSERT INTO `tiposestadia` (`PK_tipoEstadia`, `porcentDescuento`, `detalle`) VALUES
(1, '10', 'el 10 % de descuento'),
(2, '25', 'el 25 % de descuento');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cupones`
--
ALTER TABLE `cupones`
  ADD PRIMARY KEY (`PK_nroCupon`),
  ADD KEY `tipoEstadia` (`FK_tipoEstadia`);

--
-- Indices de la tabla `tiposestadia`
--
ALTER TABLE `tiposestadia`
  ADD PRIMARY KEY (`PK_tipoEstadia`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `cupones`
--
ALTER TABLE `cupones`
  MODIFY `PK_nroCupon` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tiposestadia`
--
ALTER TABLE `tiposestadia`
  MODIFY `PK_tipoEstadia` tinyint(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `cupones`
--
ALTER TABLE `cupones`
  ADD CONSTRAINT `tipoEstadia` FOREIGN KEY (`FK_tipoEstadia`) REFERENCES `tiposestadia` (`PK_tipoEstadia`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
