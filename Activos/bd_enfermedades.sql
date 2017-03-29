-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 16-03-2017 a las 21:40:34
-- Versión del servidor: 10.1.9-MariaDB
-- Versión de PHP: 5.6.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `bd_enfermedades`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_enfermedades`
--

CREATE TABLE `tb_enfermedades` (
  `id_enfermedad` int(11) NOT NULL,
  `enfermedad` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tb_enfermedades`
--

INSERT INTO `tb_enfermedades` (`id_enfermedad`, `enfermedad`) VALUES
(1, 'coronavirus'),
(2, 'urolitiasis'),
(3, 'toxoplasmosis'),
(4, 'leptospirosis'),
(5, 'epilepsia'),
(6, 'Prvovirosis'),
(7, 'piometra'),
(8, 'pododermetitis'),
(9, 'otitis'),
(10, 'fiebre');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_resultado`
--

CREATE TABLE `tb_resultado` (
  `id_resultado` int(50) NOT NULL,
  `id_enfermedad` int(20) DEFAULT NULL,
  `id_signo` int(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tb_resultado`
--

INSERT INTO `tb_resultado` (`id_resultado`, `id_enfermedad`, `id_signo`) VALUES
(1, 1, 1),
(2, 2, 2),
(3, 3, 3),
(4, 4, 4),
(5, 5, 5),
(6, 6, 6),
(7, 7, 7),
(8, 8, 8),
(9, 9, 9),
(10, 10, 10),
(11, 10, 11),
(100, 9, 9);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_signos_sintomas`
--

CREATE TABLE `tb_signos_sintomas` (
  `id_signo` int(20) NOT NULL,
  `signos_sintomas` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tb_signos_sintomas`
--

INSERT INTO `tb_signos_sintomas` (`id_signo`, `signos_sintomas`) VALUES
(1, 'Anorexia'),
(2, 'Perdida de apetito'),
(3, 'infeccion mortal'),
(4, 'Problemas respiratorios'),
(5, 'Salivacion'),
(6, 'Diarrea'),
(7, 'Falta de apetito'),
(8, 'Inflamacion articular'),
(9, 'Anemia'),
(10, 'Bacteria Intestinal '),
(11, 'Peladuras');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `tb_enfermedades`
--
ALTER TABLE `tb_enfermedades`
  ADD PRIMARY KEY (`id_enfermedad`);

--
-- Indices de la tabla `tb_resultado`
--
ALTER TABLE `tb_resultado`
  ADD PRIMARY KEY (`id_resultado`),
  ADD KEY `id_enfermedades` (`id_enfermedad`),
  ADD KEY `id_signo` (`id_signo`);

--
-- Indices de la tabla `tb_signos_sintomas`
--
ALTER TABLE `tb_signos_sintomas`
  ADD PRIMARY KEY (`id_signo`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `tb_resultado`
--
ALTER TABLE `tb_resultado`
  MODIFY `id_resultado` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `tb_resultado`
--
ALTER TABLE `tb_resultado`
  ADD CONSTRAINT `tb_resultado_ibfk_1` FOREIGN KEY (`id_enfermedad`) REFERENCES `tb_enfermedades` (`id_enfermedad`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tb_resultado_ibfk_2` FOREIGN KEY (`id_signo`) REFERENCES `tb_signos_sintomas` (`id_signo`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
