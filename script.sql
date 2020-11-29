-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versión del servidor:         10.4.14-MariaDB - mariadb.org binary distribution
-- SO del servidor:              Win64
-- HeidiSQL Versión:             11.0.0.5919
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Volcando estructura de base de datos para nucleo_familiar
DROP DATABASE IF EXISTS `nucleo_familiar`;
CREATE DATABASE IF NOT EXISTS `nucleo_familiar` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;
USE `nucleo_familiar`;

-- Volcando estructura para tabla nucleo_familiar.nucleo
DROP TABLE IF EXISTS `nucleo`;
CREATE TABLE IF NOT EXISTS `nucleo` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `apellidos` varchar(255) NOT NULL,
  `codigo_familia` int(11) NOT NULL,
  `documento` varchar(255) DEFAULT NULL,
  `fecha_creacion` datetime DEFAULT NULL,
  `nombres` varchar(255) NOT NULL,
  `parentesco` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

-- Volcando datos para la tabla nucleo_familiar.nucleo: ~1 rows (aproximadamente)
DELETE FROM `nucleo`;
/*!40000 ALTER TABLE `nucleo` DISABLE KEYS */;
INSERT INTO `nucleo` (`id`, `apellidos`, `codigo_familia`, `documento`, `fecha_creacion`, `nombres`, `parentesco`) VALUES
	(1, 'Ochoa', 0, '123546', '2020-11-29 18:27:41', 'Camilo Andres', 'tio');
/*!40000 ALTER TABLE `nucleo` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
