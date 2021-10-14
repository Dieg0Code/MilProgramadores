-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 06-12-2018 a las 17:10:57
-- Versión del servidor: 10.1.19-MariaDB
-- Versión de PHP: 5.6.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `el_colegio`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alumno`
--

CREATE TABLE `alumno` (
  `Idalumno` int(10) NOT NULL,
  `Apellidos` varchar(50) NOT NULL,
  `Nombres` varchar(50) NOT NULL,
  `Fechanacimiento` varchar(10) NOT NULL,
  `Sexo` varchar(20) NOT NULL,
  `Direccion` varchar(50) NOT NULL,
  `Telefono` varchar(50) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Password` varchar(50) NOT NULL,
  `Grado` varchar(1) NOT NULL,
  `Seccion` varchar(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `alumno`
--

INSERT INTO `alumno` (`Idalumno`, `Apellidos`, `Nombres`, `Fechanacimiento`, `Sexo`, `Direccion`, `Telefono`, `Email`, `Password`, `Grado`, `Seccion`) VALUES
(3, 'Mundaca Manay', 'Jose Hugo', 'Tue May 12', 'Masculino', 'Jose Galvez 1368', '996354121', 'carlos_Ad_6@hotmail.com', '123456', '5', 'F'),
(6, 'Diaz Mendoza', 'Luis Alberto', 'Thu Dec 15', 'Masculino', 'Jose Galvez 1368', '973436105', 'pad2@hotmail.com', 'luisito', '5', 'F'),
(5, 'Flores Sanchez', 'Noemi Stefany', 'Fri Jan 07', 'Masculino', '28 Octubre', '123456789', 'Noemi123@hotmail.com', '123456', '1', 'A'),
(7, 'Villa M', 'Jose Hugo', 'Tue May 12', 'Masculino', 'Jose Galvez 1368', '996354121', 'villa@hotmail.com', '123456', '5', 'F'),
(8, 'Hendrix J', 'Luis Alberto', 'Thu Dec 15', 'Masculino', 'Jose Galvez 1368', '973436105', 'hendrix@hotmail.com', 'luisito', '5', 'F'),
(9, 'Plat R', 'Noemi Stefany', 'Fri Jan 07', 'Masculino', '28 Octubre', '123456789', 'plat@hotmail.com', '123456', '1', 'A'),
(10, 'Harrison', 'George', 'Tue May 12', 'Masculino', 'Jose Galvez 1368', '996354121', 'Harrison@hotmail.com', '123456', '5', 'F'),
(11, 'Starky', 'Richard', 'Thu Dec 15', 'Masculino', 'Jose Galvez 1368', '973436105', 'starky@hotmail.com', 'luisito', '5', 'F'),
(12, 'Mcartney', 'Pablo', 'Fri Jan 07', 'Masculino', '28 Octubre', '123456789', 'mcartney@hotmail.com', '123456', '1', 'A'),
(13, 'Barbera', 'Hanna', 'Tue May 12', 'Femenino', 'Jose Galvez 1368', '996354121', 'Barbera@hotmail.com', '123456', '5', 'F'),
(14, 'Kidman', 'Nicole', 'Thu Dec 15', 'Femenino', 'Jose Galvez 1368', '973436105', 'Kidman@hotmail.com', 'luisito', '5', 'F'),
(15, 'Mcartney', 'Linda', 'Fri Jan 07', 'Femenino', '28 Octubre', '123456789', 'LMcartney@hotmail.com', '123456', '1', 'A'),
(16, 'Jones', 'Hanna', 'Tue May 12', 'Femenino', 'Jose Galvez 1368', '996354121', 'Barbera@hotmail.com', '123456', '5', 'F'),
(17, 'Kirk', 'Nicole', 'Thu Dec 15', 'Femenino', 'Jose Galvez 1368', '973436105', 'Kidman@hotmail.com', 'luisito', '5', 'F'),
(18, 'Mclane', 'Linda', 'Fri Jan 07', 'Femenino', '28 Octubre', '123456789', 'LMcartney@hotmail.com', '123456', '1', 'A');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `curso`
--

CREATE TABLE `curso` (
  `Idcurso` int(10) NOT NULL,
  `Nombrecurso` varchar(50) NOT NULL,
  `Idprofesor` varchar(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `curso`
--

INSERT INTO `curso` (`Idcurso`, `Nombrecurso`, `Idprofesor`) VALUES
(1, 'Matematica', '2'),
(7, 'Literatura', '10'),
(11, 'Comunicacion II', '3'),
(9, 'Estadstica I', '12'),
(10, 'Estadistica II', '3');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `curso_alumno`
--

CREATE TABLE `curso_alumno` (
  `Idalumno` int(11) NOT NULL,
  `Idcurso` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `curso_alumno`
--

INSERT INTO `curso_alumno` (`Idalumno`, `Idcurso`) VALUES
(3, 1),
(6, 1),
(6, 3),
(3, 3),
(5, 1),
(5, 3),
(3, 7),
(5, 7),
(5, 9),
(6, 9),
(11, 7),
(12, 7),
(13, 9),
(14, 9),
(18, 1),
(17, 1),
(14, 10),
(9, 10),
(17, 10),
(10, 10);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `profesor`
--

CREATE TABLE `profesor` (
  `Idprofesor` int(10) NOT NULL,
  `Apellidos` varchar(50) NOT NULL,
  `Nombres` varchar(50) NOT NULL,
  `Dni` varchar(50) NOT NULL,
  `Direccion` varchar(50) NOT NULL,
  `Telefono` varchar(50) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Password` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `profesor`
--

INSERT INTO `profesor` (`Idprofesor`, `Apellidos`, `Nombres`, `Dni`, `Direccion`, `Telefono`, `Email`, `Password`) VALUES
(3, 'Torres Fernandez', 'Jenrry', '88456321', 'Los Pinos # 458', '019856321', 'jenrry147@hotmail.com', 'gastelo'),
(2, 'Díaz Perez', 'Jose', '47859632', 'Los Rosales # 1340', '987563214', 'checarlitos', 'checarlitos'),
(1, 'Maluenda', 'Carlos', '7987443-2', 'Carlos Valdovinos 123', '1231', 'cmaluenda@cole.com', '12345'),
(10, 'Benavides', 'Gonzalo', '7987443-2', 'Carlos Valdovinos 123', '1231', 'cmaluenda@cole.com', '12345'),
(12, 'Bermudez', 'Jose', '987654-2', 'Los muerdagos 321', '5435678', 'jbermudez@elcole.com', '');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `alumno`
--
ALTER TABLE `alumno`
  ADD PRIMARY KEY (`Idalumno`);

--
-- Indices de la tabla `curso`
--
ALTER TABLE `curso`
  ADD PRIMARY KEY (`Idcurso`);

--
-- Indices de la tabla `profesor`
--
ALTER TABLE `profesor`
  ADD PRIMARY KEY (`Idprofesor`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `profesor`
--
ALTER TABLE `profesor`
  MODIFY `Idprofesor` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
