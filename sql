SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `id17182381_productosrb`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria`
--

CREATE TABLE `categoria` (
  `id_categoria` bigint(20) UNSIGNED NOT NULL,
  `nombre_categoria` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `nombre_producto` varchar(20) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `categoria`
--

INSERT INTO `categoria` (`id_categoria`, `nombre_categoria`, `nombre_producto`) VALUES
(1, '', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--

CREATE TABLE `producto` (
  `id_producto` bigint(20) UNSIGNED NOT NULL,
  `nombre_producto` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `descripcion_producto` text COLLATE utf8_unicode_ci NOT NULL,
  `precio` float NOT NULL,
  `nombre_tienda` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `nombre_categoria` varchar(20) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tienda`
--

CREATE TABLE `tienda` (
  `id_tienda` bigint(20) UNSIGNED NOT NULL,
  `nombre_tienda` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `descripcion_tienda` text COLLATE utf8_unicode_ci NOT NULL,
  `ciudad` varchar(12) COLLATE utf8_unicode_ci NOT NULL,
  `pais` varchar(12) COLLATE utf8_unicode_ci NOT NULL,
  `nombre_producto` varchar(20) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`id_categoria`),
  ADD KEY `nombre_categoria` (`nombre_categoria`),
  ADD KEY `nombre_producto` (`nombre_producto`);

--
-- Indices de la tabla `producto`
--
ALTER TABLE `producto`
  ADD PRIMARY KEY (`id_producto`),
  ADD KEY `nombre_producto` (`nombre_producto`),
  ADD KEY `nombre_tienda` (`nombre_tienda`),
  ADD KEY `nombre_categoria` (`nombre_categoria`);

--
-- Indices de la tabla `tienda`
--
ALTER TABLE `tienda`
  ADD PRIMARY KEY (`id_tienda`),
  ADD KEY `nombre_tienda` (`nombre_tienda`),
  ADD KEY `nombre_producto` (`nombre_producto`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categoria`
--
ALTER TABLE `categoria`
  MODIFY `id_categoria` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `producto`
--
ALTER TABLE `producto`
  MODIFY `id_producto` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tienda`
--
ALTER TABLE `tienda`
  MODIFY `id_tienda` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--
-- Filtros para la tabla `categoria`
--

ALTER TABLE `categoria`
  ADD CONSTRAINT `categoria_ibfk_1` FOREIGN KEY (`nombre_producto`) REFERENCES `producto` (`nombre_producto`) ON UPDATE CASCADE;


--
-- Filtros para la tabla `producto`
--

ALTER TABLE `producto`
  ADD CONSTRAINT `producto_ibfk_1` FOREIGN KEY (`nombre_tienda`) REFERENCES `producto` (`nombre_tienda`) ON UPDATE CASCADE;
  ADD CONSTRAINT `producto_ibfk_2` FOREIGN KEY (`nombre_categoria`) REFERENCES `categoria` (`nombre_categoria`) ON UPDATE CASCADE;

--

-- Filtros para la tabla `tienda`
--
ALTER TABLE `tienda`
  ADD CONSTRAINT `tienda_ibfk_1` FOREIGN KEY (`nombre_producto`) REFERENCES `producto` (`nombre_producto`) ON UPDATE CASCADE,
  
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */
