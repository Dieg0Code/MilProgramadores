-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 11-12-2018 a las 12:42:01
-- Versión del servidor: 10.1.19-MariaDB
-- Versión de PHP: 5.6.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `faladeuda`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `boleta`
--

CREATE TABLE `boleta` (
  `num_bol` int(11) NOT NULL,
  `cod_cli` int(6) NOT NULL,
  `pre_tot` int(10) NOT NULL,
  `fecha` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `boleta`
--

INSERT INTO `boleta` (`num_bol`, `cod_cli`, `pre_tot`, `fecha`) VALUES
(2, 3, 20000, '03/03/2018'),
(3, 4, 30000, '04/04/2018'),
(4, 5, 40000, '06/05/2018'),
(5, 6, 50000, '07/06/2018'),
(6, 1, 60000, '01/02/2018'),
(7, 3, 70000, '03/03/2018'),
(8, 4, 80000, '04/04/2018'),
(9, 5, 90000, '06/05/2018'),
(10, 6, 100000, '07/06/2018'),
(11, 1, 110000, '01/02/2018'),
(12, 3, 120000, '03/03/2018'),
(13, 4, 130000, '04/04/2018'),
(14, 5, 10000, '06/05/2018'),
(15, 6, 20000, '07/06/2018'),
(16, 1, 30000, '07/06/2018'),
(17, 3, 40000, '01/02/2018'),
(18, 4, 50000, '03/03/2018'),
(19, 1, 60000, '04/04/2018'),
(20, 3, 70000, '06/05/2018'),
(21, 4, 80000, '07/06/2018'),
(22, 5, 90000, '01/02/2018'),
(23, 6, 100000, '03/03/2018'),
(24, 1, 110000, '04/04/2018'),
(25, 3, 120000, '06/05/2018'),
(26, 4, 130000, '07/06/2018'),
(27, 1, 50000, '01/02/2018'),
(28, 3, 60000, '03/03/2018'),
(29, 4, 70000, '04/04/2018'),
(30, 5, 80000, '06/05/2018'),
(31, 6, 90000, '07/06/2018'),
(32, 1, 100000, '06/05/2018'),
(33, 3, 110000, '07/06/2018');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

CREATE TABLE `cliente` (
  `cod_cli` int(11) NOT NULL,
  `nom_cli` varchar(30) NOT NULL,
  `ape_cli` varchar(30) NOT NULL,
  `sexo_cli` varchar(1) NOT NULL,
  `rut_cli` varchar(8) NOT NULL,
  `tel_cli` varchar(9) NOT NULL,
  `email_cli` varchar(30) NOT NULL,
  `dir_cli` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `cliente`
--

INSERT INTO `cliente` (`cod_cli`, `nom_cli`, `ape_cli`, `sexo_cli`, `rut_cli`, `tel_cli`, `email_cli`, `dir_cli`) VALUES
(1, 'Carlos', 'Cinco', 'M', '7987342', '973266329', 'carloscinco@hotmail.com', 'Dos de Abril 2753'),
(2, 'Claudia', 'Bermudez', 'F', '9887332', '968733542', 'cbermudez@gmail.com', 'Tesla 32'),
(3, 'Carlos', 'Dominguez', 'M', '7984534', '973234543', 'dominguez_c@hotmail.com', 'Dos de Abril 2753'),
(4, 'Stephanie', 'Joos', 'F', '9887432', '968345677', 'sjoss@gmail.com', 'Tesla 32'),
(5, 'Klaus', 'Shultze', 'M', '7987342', '973266329', 'kshultze@hotmail.com', 'Dos de Abril 2753'),
(6, 'Janis', 'Joplin', 'F', '9987632', '987633542', 'jjoplin@gmail.com', 'Tesla 32');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detallefactura`
--

CREATE TABLE `detallefactura` (
  `num_fac` int(11) NOT NULL,
  `cod_pro` int(11) NOT NULL,
  `cant_pro` varchar(3) NOT NULL,
  `pre_tot` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `detallefactura`
--

INSERT INTO `detallefactura` (`num_fac`, `cod_pro`, `cant_pro`, `pre_tot`) VALUES
(1, 1, '1', 25000),
(2, 2, '2', 25000),
(3, 3, '3', 30000),
(4, 4, '4', 34000),
(5, 5, '5', 24750),
(6, 6, '1', 7850),
(7, 7, '2', 23980),
(8, 8, '3', 37500),
(9, 9, '4', 75960),
(10, 10, '5', 12500),
(11, 11, '4', 7400),
(12, 12, '5', 75000),
(13, 13, '1', 9000),
(14, 14, '4', 71920),
(15, 15, '5', 64950),
(16, 16, '4', 27960),
(17, 17, '5', 29950),
(18, 18, '1', 12990),
(19, 19, '7', 14000),
(20, 20, '4', 10000),
(21, 21, '6', 4200),
(22, 22, '7', 153300),
(23, 23, '4', 100000),
(24, 24, '5', 135000),
(25, 25, '1', 23990),
(26, 26, '7', 139300),
(27, 27, '4', 40000),
(28, 28, '5', 45000),
(29, 29, '4', 74000),
(30, 30, '5', 29950),
(31, 31, '1', 15000);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `factura`
--

CREATE TABLE `factura` (
  `num_fac` int(11) NOT NULL,
  `cod_cli` int(11) NOT NULL,
  `neto` int(10) NOT NULL,
  `iva` int(40) NOT NULL,
  `total` int(20) NOT NULL,
  `fec_fac` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `factura`
--

INSERT INTO `factura` (`num_fac`, `cod_cli`, `neto`, `iva`, `total`, `fec_fac`) VALUES
(1, 1, 100000, 119000, 219000, '2018-02-01'),
(2, 2, 200000, 238000, 438000, '2018-03-01'),
(3, 3, 300000, 357000, 657000, '2018-04-01'),
(4, 4, 400000, 476000, 876000, '2018-05-01'),
(5, 5, 500000, 595000, 1095000, '2018-06-01'),
(6, 6, 600000, 714000, 1314000, '2018-02-01'),
(7, 6, 200000, 238000, 438000, '2018-03-01'),
(8, 5, 300000, 357000, 657000, '2018-04-01'),
(9, 4, 400000, 476000, 876000, '2018-05-01'),
(10, 3, 500000, 595000, 1095000, '2018-06-01'),
(11, 2, 600000, 714000, 1314000, '2018-02-01'),
(12, 1, 500000, 595000, 1095000, '2018-06-01'),
(13, 2, 600000, 714000, 1314000, '2018-02-01'),
(14, 3, 200000, 238000, 438000, '2018-03-01'),
(15, 4, 300000, 357000, 657000, '2018-04-01'),
(16, 5, 400000, 476000, 876000, '2018-05-01'),
(17, 6, 500000, 595000, 1095000, '2018-06-01');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--

CREATE TABLE `producto` (
  `cod_pro` int(11) NOT NULL,
  `descripcion` varchar(30) NOT NULL,
  `precio` int(10) NOT NULL,
  `Stock` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `producto`
--

INSERT INTO `producto` (`cod_pro`, `descripcion`, `precio`, `Stock`) VALUES
(1, 'AMALIE ELIXIR FULL SYNTHETIC S', 25000, 100),
(2, 'CASTROL EDGE USA 5W-30 6 QUART', 12500, 90),
(3, 'CASTROL EDGE 0W-30 946', 10000, 54),
(4, 'LIQUI MOLY TOURING HIGH TECH 1', 8500, 40),
(5, 'HYUNDAI XTEER G7000 10W-40', 4950, 40),
(6, 'MOBIL SUPER S 2000 10W-40 GASO', 7850, 60),
(7, 'ROYAL PURPLE 5W-30 HIGH PERFOR', 11990, 87),
(8, 'VALVOLINE SYNPOWER SAE 5W-40', 12500, 60),
(9, 'YPF ELAION F10 SAE 15W-40', 18990, 18),
(10, 'Filtro Aceite Navara New', 2500, 100),
(11, 'Filtro Aceite Motorcraft 1990', 1850, 150),
(12, 'Filtro De Aceite Np300 Diesel ', 15000, 70),
(13, 'Filtro Aceite Motorcraft Fl-91', 9000, 69),
(14, 'Filtro De Aceite Bmw Hengst 61', 17980, 35),
(15, 'ADITIVO AUMENTADOR DE OCTANAJE', 12990, 20),
(16, 'ADITIVO ROYAL PURPLE MAX-CLEAN', 6990, 54),
(17, 'HIGH PERFORMANCE valvoline 80W', 5990, 34),
(18, 'SYNPOWER FS 75W90 valvoline GE', 12990, 25),
(19, 'AGUA DESTILADA BOSQUE VERDE 5 ', 2000, 200),
(20, 'AGUA DESTILADA TRIBUNO 5 LTS', 2500, 90),
(21, 'AGUA DESTILADA TRIBUNO 1 LT', 700, 100),
(22, 'CAMBIO PASTILLAS FRENO NISSAN ', 21900, 35),
(23, 'CAMBIO PASTILLAS FRENO TOYOTA ', 25000, 20),
(24, 'CAMBIO PASTILLAS FRENO CHEVROL', 27000, 54),
(25, 'CAMBIO PASTILLAS FRENO SUZUKI ', 23990, 34),
(26, 'CAMBIO PASTILLAS RENO SUZUKI M', 19900, 25),
(27, 'LAVADO DE CARROCERIA', 10000, 200),
(28, 'LIMPIEZA DE INYECTORES', 9000, 90),
(29, 'CAMBIO DE BUJIAS', 18500, 100),
(30, 'FILTRO DE AIRE', 5990, 90),
(31, 'LAVADO DE TAPIZ', 15000, 100);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `boleta`
--
ALTER TABLE `boleta`
  ADD PRIMARY KEY (`num_bol`),
  ADD UNIQUE KEY `num_bol` (`num_bol`),
  ADD KEY `cod_cli` (`cod_cli`);

--
-- Indices de la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`cod_cli`),
  ADD KEY `cod_cli` (`cod_cli`);

--
-- Indices de la tabla `detallefactura`
--
ALTER TABLE `detallefactura`
  ADD KEY `num_fac` (`num_fac`),
  ADD KEY `cod_pro` (`cod_pro`);

--
-- Indices de la tabla `factura`
--
ALTER TABLE `factura`
  ADD PRIMARY KEY (`num_fac`),
  ADD KEY `cod_cli` (`cod_cli`);

--
-- Indices de la tabla `producto`
--
ALTER TABLE `producto`
  ADD PRIMARY KEY (`cod_pro`,`descripcion`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `boleta`
--
ALTER TABLE `boleta`
  MODIFY `num_bol` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;
--
-- AUTO_INCREMENT de la tabla `detallefactura`
--
ALTER TABLE `detallefactura`
  MODIFY `num_fac` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
--
-- AUTO_INCREMENT de la tabla `factura`
--
ALTER TABLE `factura`
  MODIFY `num_fac` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT de la tabla `producto`
--
ALTER TABLE `producto`
  MODIFY `cod_pro` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
