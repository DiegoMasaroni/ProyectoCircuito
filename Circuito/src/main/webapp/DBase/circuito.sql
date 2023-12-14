-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 14-12-2023 a las 14:06:01
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
  `tipoEstadia` varchar(60) NOT NULL,
  `totalPagar` decimal(12,2) NOT NULL,
  `activo` int(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `cupones`
--

INSERT INTO `cupones` (`PK_nroCupon`, `nombre`, `apellido`, `mail`, `cantidad`, `tipoEstadia`, `totalPagar`, `activo`) VALUES
(112, 'ss', 'ss', 'diegoelcarlos@gmail.com', 2, '2-Viernes, Sábados o Domingo (Sin descuento)', '7000.00', 1),
(113, 'ss', 'ss', 'diegoelcarlos@gmail.com', 2, '3-Vie y S�b o S�b y Dom (20%)', '11200.00', 1),
(114, 'xx', 'xx', 'diegomasaroni@gmail.com', 1, '1-Lunes a Jueves (50%)', '1750.00', 1),
(115, 'dd', 'dd', 'diegoelcarlos@gmail.com', 1, '1-Lunes a Jueves (50%)', '1750.00', 1),
(116, 'gg', 'gg', 'diegoelcarlos@gmail.com', 1, '2-Viernes, S�bados o Domingo (Sin descuento%)', '3500.00', 0);

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
(1, '50', 'el 50 % de descuento'),
(2, '0', 'Sin descuento'),
(3, '20', '20 % de descuento');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `usuario` varchar(60) NOT NULL,
  `contrasenia` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `usuario`, `contrasenia`) VALUES
(1, 'diego', 'diego123');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cupones`
--
ALTER TABLE `cupones`
  ADD PRIMARY KEY (`PK_nroCupon`);

--
-- Indices de la tabla `tiposestadia`
--
ALTER TABLE `tiposestadia`
  ADD PRIMARY KEY (`PK_tipoEstadia`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `usuario` (`usuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `cupones`
--
ALTER TABLE `cupones`
  MODIFY `PK_nroCupon` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=117;

--
-- AUTO_INCREMENT de la tabla `tiposestadia`
--
ALTER TABLE `tiposestadia`
  MODIFY `PK_tipoEstadia` tinyint(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
