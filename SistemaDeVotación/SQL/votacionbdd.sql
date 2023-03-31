-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 31-03-2023 a las 03:18:33
-- Versión del servidor: 10.4.27-MariaDB
-- Versión de PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `votacionbdd`
--

create database votacionbdd;
use votacionbdd;
-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `candidato`
--

CREATE TABLE `candidato` (
  `Ca_id` int(11) NOT NULL,
  `Ca_nombre` varchar(20) NOT NULL,
  `comuna_Co_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `candidato`
--

INSERT INTO `candidato` (`Ca_id`, `Ca_nombre`, `comuna_Co_id`) VALUES
(2, 'juan', 16),
(3, 'Juan Roman', 1),
(4, 'Antonio Olguin', 1),
(5, 'Aaron Casanga', 2),
(6, 'Marcelo Sagasti', 2),
(7, 'Andres Duran', 3),
(8, 'Ignacio Fernandez', 3),
(9, 'Joshua Hidalgo', 4),
(10, 'Felipe Pizarro', 4),
(11, 'Elizabeth Duran', 5),
(12, 'Juana Duran', 5),
(13, 'Carlos Crovetto', 6),
(14, 'Cristian Ezquivel', 6),
(15, 'Hernan cantillano', 7),
(16, 'Rodrigo Perez', 7),
(17, 'Gabriela Soto', 8),
(18, 'Esteban Paredes', 8),
(19, 'Nicolas Gamora', 9),
(20, 'Viquendi Solar', 9),
(21, 'Julia Reveco', 10),
(22, 'Bastian Mulhauser', 10),
(23, 'Edgar Balmaceda', 11),
(24, 'Sebastian Vega', 11),
(25, 'Donald Cato', 12),
(26, 'Nicolas Gonzales', 12),
(27, 'Fernando Masu', 13),
(28, 'Camila Alejandra', 13),
(29, 'Andres Ignacio', 14),
(30, 'Angelica Maria', 14),
(31, 'Cesar Isaac', 15),
(32, 'Claudio Rodrigo', 15),
(33, 'Cristal Evelyn', 16),
(34, 'Debora Viviana', 16),
(35, 'Enrique Mauricio', 17),
(36, 'Hilda Rosa', 17),
(37, 'Jenifer Ivonne', 18),
(38, 'Jorge Antonio', 18),
(39, 'Luis Eugenio', 19),
(40, 'Marisol Mercedes', 19),
(41, 'Pamela Liliana', 20),
(42, 'Camilo Torres', 20),
(43, 'Huerta Acevedo', 21),
(44, 'Max Araya', 21),
(45, 'Andres Arias', 22),
(46, 'Felipe Cid', 22),
(47, 'Carlos Villegas', 23),
(48, 'Ana Luisa', 23),
(49, 'Coty Becerra', 24),
(50, 'Mario Brante', 24),
(51, 'Galicia Edith', 25),
(52, 'Jorge Enriquez', 25),
(53, 'Javier Galicia', 26),
(54, 'Iris Elisa', 26),
(55, 'Osvaldo Perez', 27),
(56, 'Luis Pato', 27),
(57, 'Yasna Soledad', 28),
(58, 'Mario Daniel', 28),
(59, 'Min Jun', 29),
(60, 'Abarza Mario', 29),
(61, 'Juan Lopez', 30),
(62, 'Maria Jose', 30),
(63, 'Katy Eurolo', 31),
(64, 'Carlos Alvarez', 31),
(65, 'Mario Arias', 32),
(66, 'Luis Barraza', 32),
(67, 'Aguilar Antonio', 33),
(68, 'Lin Araya', 33),
(69, 'Aro Vargas', 34),
(70, 'Bagnara Baez', 34),
(71, 'Alejandro Bou', 35),
(72, 'Manuel Yañez', 35),
(73, 'Antonio Burgos', 36),
(74, 'Alejandro Castro', 36),
(75, 'Marco Belen', 37),
(76, 'Andre Rivas', 37),
(77, 'Damian Duran', 38),
(78, 'Juan Bautista', 38),
(79, 'Leo Roman', 39),
(80, 'Yerko Perez', 39),
(81, 'Guillermo Cea', 40),
(82, 'Nelson Mirio', 40),
(83, 'Gino Ruz', 41),
(84, 'Jack Black', 41),
(85, 'Johny Deep', 42),
(86, 'Thomas Riz', 42),
(87, 'Monica Santa', 43),
(88, 'Rachel Luz', 43),
(89, 'Samuel Red', 44),
(90, 'Karen Cat', 44),
(91, 'Kyle Gass', 45),
(92, 'Leon blue', 45),
(93, 'Hector Briones', 46),
(94, 'Joel Cid', 46),
(95, 'Marco Jose', 47),
(96, 'Max Estay', 47),
(97, 'Jaime Aranza', 48),
(98, 'Teresa Amanda', 48),
(99, 'Carolina Andrea', 49),
(100, 'Enrique Dam', 49),
(101, 'Ale Roma', 50),
(102, 'Hugo Luis', 50),
(103, 'Noemi Alicia', 51),
(104, 'Pedro Pilar', 52),
(105, 'Telma Ines', 53),
(106, 'Ismael Riveros', 53),
(107, 'Ana Alarcon', 54),
(108, 'Sergio Gaete', 54),
(109, 'Eva Lagos', 55),
(110, 'Mauro Ruz', 55),
(111, 'Tannia Paz', 56),
(112, 'Kou Huang', 56),
(113, 'Leighton Valdes', 57),
(114, 'Cid Roa', 57),
(115, 'Aban Flores', 58),
(116, 'Manuel Abufon', 58),
(117, 'Camilo Aceveda', 59),
(118, 'Hernan Saavedra', 59),
(119, 'Rivera Acuña', 60),
(120, 'Miranda Agrada', 60),
(121, 'Vargas Aguilera', 61),
(122, 'Renata Hasbun', 61),
(123, 'Da Silva', 62),
(124, 'Spira Watson', 62),
(125, 'Adaros Smith', 63),
(126, 'Carmela Cornejo', 63),
(127, 'Angel Ayuso', 64),
(128, 'Candia Alvarez', 64),
(129, 'Daniel Arancibia', 65),
(130, 'Ruiz Santos', 65),
(131, 'Quispe Borquez', 66),
(132, 'Renata Vera', 66);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comuna`
--

CREATE TABLE `comuna` (
  `Co_id` int(11) NOT NULL,
  `Co_Comuna` varchar(15) NOT NULL,
  `region_Re_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `comuna`
--

INSERT INTO `comuna` (`Co_id`, `Co_Comuna`, `region_Re_id`) VALUES
(1, 'Camarones', 15),
(2, 'Arica', 15),
(3, 'Putre', 15),
(4, 'General Lagos', 15),
(5, 'Huara', 1),
(6, 'Alto Hospicio', 1),
(7, 'Iquique', 1),
(8, 'Camiña', 1),
(9, 'Colchane', 1),
(10, 'Antofagasta', 2),
(11, 'Mejillones', 2),
(12, 'Sierra Gorda', 2),
(13, 'Taltal', 2),
(14, 'Copiapó', 3),
(15, 'Tierra Amarilla', 3),
(16, 'Alto del Carmen', 3),
(17, 'Freirina', 3),
(18, 'La Serena', 4),
(19, 'Paihuaco', 4),
(20, 'Vicuña', 4),
(21, 'Combarbalá', 4),
(22, 'Quilpué', 5),
(23, 'Quintero', 5),
(24, 'Valparaíso', 5),
(25, 'Villa Alemana', 5),
(26, 'Viña del Mar', 5),
(27, 'Buin', 13),
(28, 'Maipú', 13),
(29, 'Providencia', 13),
(30, 'Pudahuel', 13),
(31, 'Quilicura', 13),
(32, 'Renca', 13),
(33, 'Santiago', 13),
(34, 'Vitacura', 13),
(35, 'Rancagua', 6),
(36, 'Rengo', 6),
(37, 'Requínoa', 6),
(38, 'Litueche', 6),
(39, 'Talca', 7),
(40, 'Maule', 7),
(41, 'San Rafael', 7),
(42, 'Curico', 7),
(43, 'Arauco', 8),
(44, 'Concepción', 8),
(45, 'Contulmo', 8),
(46, 'Los Álamos', 8),
(47, 'Temuco', 9),
(48, 'Villarrica', 9),
(49, 'Angol', 9),
(50, 'Purén', 9),
(51, 'Valdivia', 14),
(52, 'Los Lagos', 14),
(53, 'Panguipulli', 14),
(54, 'La Union', 14),
(55, 'Puerto Montt', 10),
(56, 'Puerto Varas', 10),
(57, 'Osorno', 10),
(58, 'Puero Octay', 10),
(59, 'Coyhaique', 11),
(60, 'Aysen', 11),
(61, 'Lago verde', 11),
(62, 'Tortel', 11),
(63, 'Punta Arenas', 12),
(64, 'Natales', 12),
(65, 'Porvenir', 12),
(66, 'San Gregorio', 12);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `region`
--

CREATE TABLE `region` (
  `Re_id` int(11) NOT NULL,
  `Re_region` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `region`
--

INSERT INTO `region` (`Re_id`, `Re_region`) VALUES
(1, 'I Región'),
(2, 'II Región'),
(3, 'III Región'),
(4, 'IV Región'),
(5, 'V Región'),
(6, 'VI Región'),
(7, 'VII Región'),
(8, 'VIII Región'),
(9, 'IX Región'),
(10, 'X Región'),
(11, 'XI Región'),
(12, 'XII Región'),
(13, 'RM Región'),
(14, 'XIV Región'),
(15, 'XV Región');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `votante`
--

CREATE TABLE `votante` (
  `Vo_id` int(11) NOT NULL,
  `Vo_rut` varchar(10) NOT NULL,
  `Vo_nombreApellido` varchar(30) NOT NULL,
  `Vo_alias` varchar(20) NOT NULL,
  `Vo_email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `voto`
--

CREATE TABLE `voto` (
  `Vo_id` int(11) NOT NULL,
  `votante_Vo_id` int(11) NOT NULL,
  `candidato_Ca_id` int(11) NOT NULL,
  `Vo_tipo` varchar(18) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `candidato`
--
ALTER TABLE `candidato`
  ADD PRIMARY KEY (`Ca_id`),
  ADD KEY `fk_candidato_comuna1_idx` (`comuna_Co_id`);

--
-- Indices de la tabla `comuna`
--
ALTER TABLE `comuna`
  ADD PRIMARY KEY (`Co_id`),
  ADD KEY `fk_comuna_region1_idx` (`region_Re_id`);

--
-- Indices de la tabla `region`
--
ALTER TABLE `region`
  ADD PRIMARY KEY (`Re_id`);

--
-- Indices de la tabla `votante`
--
ALTER TABLE `votante`
  ADD PRIMARY KEY (`Vo_id`);

--
-- Indices de la tabla `voto`
--
ALTER TABLE `voto`
  ADD PRIMARY KEY (`Vo_id`),
  ADD KEY `fk_table1_votante1_idx` (`votante_Vo_id`),
  ADD KEY `fk_table1_candidato1_idx` (`candidato_Ca_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `candidato`
--
ALTER TABLE `candidato`
  MODIFY `Ca_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=133;

--
-- AUTO_INCREMENT de la tabla `comuna`
--
ALTER TABLE `comuna`
  MODIFY `Co_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT de la tabla `region`
--
ALTER TABLE `region`
  MODIFY `Re_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `votante`
--
ALTER TABLE `votante`
  MODIFY `Vo_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `voto`
--
ALTER TABLE `voto`
  MODIFY `Vo_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `candidato`
--
ALTER TABLE `candidato`
  ADD CONSTRAINT `fk_candidato_comuna1` FOREIGN KEY (`comuna_Co_id`) REFERENCES `comuna` (`Co_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `comuna`
--
ALTER TABLE `comuna`
  ADD CONSTRAINT `fk_comuna_region1` FOREIGN KEY (`region_Re_id`) REFERENCES `region` (`Re_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `voto`
--
ALTER TABLE `voto`
  ADD CONSTRAINT `fk_table1_candidato1` FOREIGN KEY (`candidato_Ca_id`) REFERENCES `candidato` (`Ca_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_table1_votante1` FOREIGN KEY (`votante_Vo_id`) REFERENCES `votante` (`Vo_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
