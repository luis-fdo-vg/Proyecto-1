-- phpMyAdmin SQL Dump
-- version 4.3.11
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 30-06-2015 a las 23:39:43
-- Versión del servidor: 5.6.24
-- Versión de PHP: 5.6.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `proyectoconsultas`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alumngrupe`
--

CREATE TABLE IF NOT EXISTS `alumngrupe` (
  `id_alumno` int(10) unsigned NOT NULL,
  `id_grupos` int(10) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `alumngrupe`
--

INSERT INTO `alumngrupe` (`id_alumno`, `id_grupos`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 2),
(7, 2),
(8, 2),
(9, 2),
(10, 2),
(11, 3),
(12, 3),
(13, 3),
(14, 3),
(15, 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alumnos`
--

CREATE TABLE IF NOT EXISTS `alumnos` (
  `id_alumno` int(10) unsigned NOT NULL,
  `nombre_alumno` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `carrera_alumno` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `alumnos`
--

INSERT INTO `alumnos` (`id_alumno`, `nombre_alumno`, `carrera_alumno`, `created_at`, `updated_at`) VALUES
(1, 'Edgar Quezada', 'Ing. Sistemas', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 'Jose Perez', 'Ing. Sistemas', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 'Fernando Valenzuela', 'Ing. Sistemas', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 'Guillermo Diaz', 'Ing. Sistemas', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 'Jorge Perez', 'Ing. Sistemas', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, 'Esteban Gomez', 'Ing. Sistemas', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, 'Arturo Benitez', 'Ing. Sistemas', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(8, 'Angel Mora', 'Ing. Sistemas', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(9, 'Noe Gutierrez', 'Ing. Sistemas', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(10, 'Javier Moreno', 'Ing. Sistemas', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(11, 'Erika Domiguez', 'Ing. Sistemas', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(12, 'Carlos Lopez', 'Ing. Sistemas', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(13, 'Ramon Solis', 'Ing. Sistemas', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(14, 'Fernando Rivera', 'Ing. Sistemas', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(15, 'Manuel Burgos', 'Ing. Sistemas', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `grupos`
--

CREATE TABLE IF NOT EXISTS `grupos` (
  `id_grupos` int(10) unsigned NOT NULL,
  `id_materias` int(10) unsigned NOT NULL,
  `id_maestros` int(10) unsigned NOT NULL,
  `nombre_aula` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `grupos`
--

INSERT INTO `grupos` (`id_grupos`, `id_materias`, `id_maestros`, `nombre_aula`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'B4', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 2, 2, 'C2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 3, 3, 'SSA', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `maestros`
--

CREATE TABLE IF NOT EXISTS `maestros` (
  `id_maestros` int(10) unsigned NOT NULL,
  `nombre` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `maestros`
--

INSERT INTO `maestros` (`id_maestros`, `nombre`, `created_at`, `updated_at`) VALUES
(1, 'Luis Carlos Santillan', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 'Martin Nevarez', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 'Javier Mosqueda', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `materias`
--

CREATE TABLE IF NOT EXISTS `materias` (
  `id_materias` int(10) unsigned NOT NULL,
  `nombre` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `materias`
--

INSERT INTO `materias` (`id_materias`, `nombre`, `created_at`, `updated_at`) VALUES
(1, 'Ing. Web', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 'Conmutacion y Enrutamiento', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 'Calculo Vectorial', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE IF NOT EXISTS `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2014_10_12_000000_create_users_table', 1),
('2014_10_12_100000_create_password_resets_table', 1),
('2015_06_30_000000_create_alumnos_table', 2),
('2015_06_30_100000_create_maestros_table', 3),
('2015_06_30_210004_create_materias_table', 4),
('2015_06_30_210546_create_grupos_table', 5),
('2015_06_30_211508_create_alumngrupe_table', 6);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `alumngrupe`
--
ALTER TABLE `alumngrupe`
  ADD PRIMARY KEY (`id_alumno`,`id_grupos`), ADD KEY `alumngrupe_id_grupos_foreign` (`id_grupos`);

--
-- Indices de la tabla `alumnos`
--
ALTER TABLE `alumnos`
  ADD PRIMARY KEY (`id_alumno`);

--
-- Indices de la tabla `grupos`
--
ALTER TABLE `grupos`
  ADD PRIMARY KEY (`id_grupos`), ADD KEY `grupos_id_materias_foreign` (`id_materias`), ADD KEY `grupos_id_maestros_foreign` (`id_maestros`);

--
-- Indices de la tabla `maestros`
--
ALTER TABLE `maestros`
  ADD PRIMARY KEY (`id_maestros`);

--
-- Indices de la tabla `materias`
--
ALTER TABLE `materias`
  ADD PRIMARY KEY (`id_materias`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `alumnos`
--
ALTER TABLE `alumnos`
  MODIFY `id_alumno` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT de la tabla `grupos`
--
ALTER TABLE `grupos`
  MODIFY `id_grupos` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `maestros`
--
ALTER TABLE `maestros`
  MODIFY `id_maestros` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `materias`
--
ALTER TABLE `materias`
  MODIFY `id_materias` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `alumngrupe`
--
ALTER TABLE `alumngrupe`
ADD CONSTRAINT `alumngrupe_id_alumno_foreign` FOREIGN KEY (`id_alumno`) REFERENCES `alumnos` (`id_alumno`),
ADD CONSTRAINT `alumngrupe_id_grupos_foreign` FOREIGN KEY (`id_grupos`) REFERENCES `grupos` (`id_grupos`);

--
-- Filtros para la tabla `grupos`
--
ALTER TABLE `grupos`
ADD CONSTRAINT `grupos_id_maestros_foreign` FOREIGN KEY (`id_maestros`) REFERENCES `maestros` (`id_maestros`),
ADD CONSTRAINT `grupos_id_materias_foreign` FOREIGN KEY (`id_materias`) REFERENCES `materias` (`id_materias`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
