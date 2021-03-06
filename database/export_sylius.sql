-- --------------------------------------------------------
-- Host:                         192.168.1.10
-- Versión del servidor:         5.7.20-0ubuntu0.16.04.1 - (Ubuntu)
-- SO del servidor:              Linux
-- HeidiSQL Versión:             9.4.0.5125
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Volcando estructura de base de datos para yezzstore
CREATE DATABASE IF NOT EXISTS `yezzstore` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `yezzstore`;

-- Volcando estructura para tabla yezzstore.sylius_address
DROP TABLE IF EXISTS `sylius_address`;
CREATE TABLE IF NOT EXISTS `sylius_address` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) DEFAULT NULL,
  `first_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phone_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `street` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `company` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `postcode` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `country_code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `province_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `province_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_B97FF0589395C3F3` (`customer_id`),
  CONSTRAINT `FK_B97FF0589395C3F3` FOREIGN KEY (`customer_id`) REFERENCES `sylius_customer` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Volcando datos para la tabla yezzstore.sylius_address: ~22 rows (aproximadamente)
DELETE FROM `sylius_address`;
/*!40000 ALTER TABLE `sylius_address` DISABLE KEYS */;
INSERT INTO `sylius_address` (`id`, `customer_id`, `first_name`, `last_name`, `phone_number`, `street`, `company`, `city`, `postcode`, `created_at`, `updated_at`, `country_code`, `province_code`, `province_name`) VALUES
	(3, 22, 'JULIO', 'HERNANDEZ', '847-320-5796', '2632 Dovetail Drive', NULL, 'Bensenville', '60106', '2018-01-17 18:18:50', '2018-01-17 18:18:51', 'US', NULL, 'Illinois'),
	(5, NULL, 'JULIO', 'HERNANDEZ', '847-320-5796', '2632 Dovetail Drive', NULL, 'Bensenville', '60106', '2018-01-17 18:18:50', '2018-01-17 18:18:51', 'US', NULL, 'Illinois'),
	(6, NULL, 'JULIO', 'HERNANDEZ', '847-320-5796', '2632 Dovetail Drive', NULL, 'Bensenville', '60106', '2018-01-18 15:40:33', '2018-01-18 15:40:33', 'US', NULL, 'Illinois'),
	(7, NULL, 'JULIO', 'HERNANDEZ', '847-320-5796', '2632 Dovetail Drive', NULL, 'Bensenville', '60106', '2018-01-17 18:18:50', '2018-01-17 18:18:51', 'US', NULL, 'Illinois'),
	(8, NULL, 'JULIO', 'HERNANDEZ', '847-320-5796', '2632 Dovetail Drive', NULL, 'Bensenville', '60106', '2018-01-18 19:43:29', '2018-01-18 19:43:31', 'US', NULL, 'Illinois'),
	(10, NULL, 'JULIO', 'HERNANDEZ', '847-320-5796', '2632 Dovetail Drive', NULL, 'Bensenville', '60106', '2018-01-17 18:18:50', '2018-01-17 18:18:51', 'US', NULL, 'Illinois'),
	(11, NULL, 'JULIO', 'HERNANDEZ', '847-320-5796', '2632 Dovetail Drive', NULL, 'Bensenville', '60106', '2018-01-22 16:06:24', '2018-01-22 16:06:24', 'US', NULL, 'Illinois'),
	(12, NULL, 'JOYCE', 'PENA', '4244323883', 'URBANIZACION EL REMANSO, LOTE 22A, CASA NUMERO 4', NULL, 'MIAMI', '33036', '2018-01-22 17:47:24', '2018-01-22 17:47:25', 'US', NULL, 'FLORIDA'),
	(13, NULL, 'JOYCE', 'PENA', '4244323883', 'URBANIZACION EL REMANSO, LOTE 22A, CASA NUMERO 4', NULL, 'MIAMI', '33036', '2018-01-22 17:47:24', '2018-01-22 17:47:25', 'US', NULL, 'FLORIDA'),
	(14, NULL, 'JULIO', 'HERNANDEZ', '847-320-5796', '2632 Dovetail Drive', NULL, 'Bensenville', '60106', '2018-01-17 18:18:50', '2018-01-17 18:18:51', 'US', NULL, 'Illinois'),
	(15, NULL, 'JULIO', 'HERNANDEZ', '847-320-5796', '2632 Dovetail Drive', NULL, 'Bensenville', '60106', '2018-01-22 18:46:33', '2018-01-22 18:46:33', 'US', NULL, 'Illinois'),
	(16, NULL, 'JULIO', 'HERNANDEZ', '8473205796', '2632 Dovetail Drive', NULL, 'Bensenville', '60106', '2018-01-29 16:36:56', '2018-01-29 16:36:56', 'US', NULL, 'Illinois'),
	(17, NULL, 'JULIO', 'HERNANDEZ', '8473205796', '2632 Dovetail Drive', NULL, 'Bensenville', '60106', '2018-01-29 16:36:56', '2018-01-29 16:36:56', 'US', NULL, 'Illinois'),
	(18, 22, 'JULIO', 'HERNANDEZ', '8473205796', '2632 Dovetail Drive', NULL, 'Bensenville', '60106', '2018-01-29 16:36:56', '2018-01-29 16:36:56', 'US', NULL, 'Illinois'),
	(19, NULL, 'JULIO', 'HERNANDEZ', '847-320-5796', '2632 Dovetail Drive', NULL, 'Bensenville', '60106', '2018-01-17 18:18:50', '2018-01-17 18:18:51', 'US', NULL, 'Illinois'),
	(20, NULL, 'JULIO', 'HERNANDEZ', '847-320-5796', '2632 Dovetail Drive', NULL, 'Bensenville', '60106', '2018-01-31 13:58:51', '2018-01-31 13:58:54', 'US', NULL, 'Illinois'),
	(21, NULL, 'JULIO', 'HERNANDEZ', '8473205796', '2632 Dovetail Drive', NULL, 'Bensenville', '60106', '2018-01-29 16:36:56', '2018-01-29 16:36:56', 'US', NULL, 'Illinois'),
	(22, NULL, 'JULIO', 'HERNANDEZ', '8473205796', '2632 Dovetail Drive', NULL, 'Bensenville', '60106', '2018-01-31 14:45:04', '2018-01-31 14:45:04', 'US', NULL, 'Illinois'),
	(23, NULL, 'JULIO', 'HERNANDEZ', '8473205796', '2632 Dovetail Drive', NULL, 'Bensenville', '60106', '2018-01-29 16:36:56', '2018-01-29 16:36:56', 'US', NULL, 'Illinois'),
	(24, NULL, 'JULIO', 'HERNANDEZ', '8473205796', '2632 Dovetail Drive', NULL, 'Bensenville', '60106', '2018-02-06 13:46:45', '2018-02-06 13:46:46', 'US', NULL, 'Illinois'),
	(25, NULL, 'JULIO', 'HERNANDEZ', '8473205796', '2632 Dovetail Drive', NULL, 'Bensenville', '60106', '2018-01-29 16:36:56', '2018-01-29 16:36:56', 'US', NULL, 'Illinois'),
	(26, NULL, 'JULIO', 'HERNANDEZ', '8473205796', '2632 Dovetail Drive', NULL, 'Bensenville', '60106', '2018-02-06 14:44:57', '2018-02-06 14:44:58', 'US', NULL, 'Illinois');
/*!40000 ALTER TABLE `sylius_address` ENABLE KEYS */;

-- Volcando estructura para tabla yezzstore.sylius_address_log_entries
DROP TABLE IF EXISTS `sylius_address_log_entries`;
CREATE TABLE IF NOT EXISTS `sylius_address_log_entries` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `logged_at` datetime NOT NULL,
  `object_id` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `object_class` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `version` int(11) NOT NULL,
  `data` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:array)',
  `username` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Volcando datos para la tabla yezzstore.sylius_address_log_entries: ~18 rows (aproximadamente)
DELETE FROM `sylius_address_log_entries`;
/*!40000 ALTER TABLE `sylius_address_log_entries` DISABLE KEYS */;
INSERT INTO `sylius_address_log_entries` (`id`, `action`, `logged_at`, `object_id`, `object_class`, `version`, `data`, `username`) VALUES
	(3, 'create', '2018-01-17 18:23:51', '3', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:"firstName";s:5:"JULIO";s:8:"lastName";s:9:"HERNANDEZ";s:11:"phoneNumber";s:12:"847-320-5796";s:6:"street";s:19:"2632 Dovetail Drive";s:7:"company";N;s:4:"city";s:11:"Bensenville";s:8:"postcode";s:5:"60106";s:11:"countryCode";s:2:"US";s:12:"provinceCode";N;s:12:"provinceName";s:8:"Illinois";}', 'juliohernandezs@gmail.com'),
	(4, 'create', '2018-01-18 14:01:46', '4', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:"firstName";s:5:"JULIO";s:8:"lastName";s:9:"HERNANDEZ";s:11:"phoneNumber";s:12:"847-320-5796";s:6:"street";s:19:"2632 Dovetail Drive";s:7:"company";N;s:4:"city";s:11:"Bensenville";s:8:"postcode";s:5:"60106";s:11:"countryCode";s:2:"US";s:12:"provinceCode";N;s:12:"provinceName";s:8:"Illinois";}', 'juliohernandezs@gmail.com'),
	(5, 'remove', '2018-01-18 14:03:33', '4', 'Sylius\\Component\\Core\\Model\\Address', 2, 'N;', 'juliohernandezs@gmail.com'),
	(6, 'create', '2018-01-18 15:28:21', '5', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:"firstName";s:5:"JULIO";s:8:"lastName";s:9:"HERNANDEZ";s:11:"phoneNumber";s:12:"847-320-5796";s:6:"street";s:19:"2632 Dovetail Drive";s:7:"company";N;s:4:"city";s:11:"Bensenville";s:8:"postcode";s:5:"60106";s:11:"countryCode";s:2:"US";s:12:"provinceCode";N;s:12:"provinceName";s:8:"Illinois";}', 'juliohernandezs@gmail.com'),
	(7, 'create', '2018-01-18 15:40:33', '6', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:"firstName";s:5:"JULIO";s:8:"lastName";s:9:"HERNANDEZ";s:11:"phoneNumber";s:12:"847-320-5796";s:6:"street";s:19:"2632 Dovetail Drive";s:7:"company";N;s:4:"city";s:11:"Bensenville";s:8:"postcode";s:5:"60106";s:11:"countryCode";s:2:"US";s:12:"provinceCode";N;s:12:"provinceName";s:8:"Illinois";}', 'juliohernandezs@gmail.com'),
	(8, 'create', '2018-01-18 19:02:00', '7', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:"firstName";s:5:"JULIO";s:8:"lastName";s:9:"HERNANDEZ";s:11:"phoneNumber";s:12:"847-320-5796";s:6:"street";s:19:"2632 Dovetail Drive";s:7:"company";N;s:4:"city";s:11:"Bensenville";s:8:"postcode";s:5:"60106";s:11:"countryCode";s:2:"US";s:12:"provinceCode";N;s:12:"provinceName";s:8:"Illinois";}', 'juliohernandezs@gmail.com'),
	(9, 'create', '2018-01-18 19:43:31', '8', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:"firstName";s:5:"JULIO";s:8:"lastName";s:9:"HERNANDEZ";s:11:"phoneNumber";s:12:"847-320-5796";s:6:"street";s:19:"2632 Dovetail Drive";s:7:"company";N;s:4:"city";s:11:"Bensenville";s:8:"postcode";s:5:"60106";s:11:"countryCode";s:2:"US";s:12:"provinceCode";N;s:12:"provinceName";s:8:"Illinois";}', 'juliohernandezs@gmail.com'),
	(10, 'create', '2018-01-19 19:18:59', '9', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:"firstName";s:5:"JULIO";s:8:"lastName";s:9:"HERNANDEZ";s:11:"phoneNumber";s:12:"847-320-5796";s:6:"street";s:19:"2632 Dovetail Drive";s:7:"company";N;s:4:"city";s:11:"Bensenville";s:8:"postcode";s:5:"60106";s:11:"countryCode";s:2:"US";s:12:"provinceCode";N;s:12:"provinceName";s:8:"Illinois";}', 'juliohernandezs@gmail.com'),
	(11, 'remove', '2018-01-22 15:41:10', '9', 'Sylius\\Component\\Core\\Model\\Address', 2, 'N;', 'juliohernandezs@gmail.com'),
	(12, 'create', '2018-01-22 16:06:12', '10', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:"firstName";s:5:"JULIO";s:8:"lastName";s:9:"HERNANDEZ";s:11:"phoneNumber";s:12:"847-320-5796";s:6:"street";s:19:"2632 Dovetail Drive";s:7:"company";N;s:4:"city";s:11:"Bensenville";s:8:"postcode";s:5:"60106";s:11:"countryCode";s:2:"US";s:12:"provinceCode";N;s:12:"provinceName";s:8:"Illinois";}', 'juliohernandezs@gmail.com'),
	(13, 'create', '2018-01-22 16:06:24', '11', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:"firstName";s:5:"JULIO";s:8:"lastName";s:9:"HERNANDEZ";s:11:"phoneNumber";s:12:"847-320-5796";s:6:"street";s:19:"2632 Dovetail Drive";s:7:"company";N;s:4:"city";s:11:"Bensenville";s:8:"postcode";s:5:"60106";s:11:"countryCode";s:2:"US";s:12:"provinceCode";N;s:12:"provinceName";s:8:"Illinois";}', 'juliohernandezs@gmail.com'),
	(14, 'create', '2018-01-22 17:47:25', '12', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:"firstName";s:5:"JOYCE";s:8:"lastName";s:4:"PENA";s:11:"phoneNumber";s:10:"4244323883";s:6:"street";s:48:"URBANIZACION EL REMANSO, LOTE 22A, CASA NUMERO 4";s:7:"company";N;s:4:"city";s:5:"MIAMI";s:8:"postcode";s:5:"33036";s:11:"countryCode";s:2:"US";s:12:"provinceCode";N;s:12:"provinceName";s:7:"FLORIDA";}', NULL),
	(15, 'create', '2018-01-22 17:47:25', '13', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:"firstName";s:5:"JOYCE";s:8:"lastName";s:4:"PENA";s:11:"phoneNumber";s:10:"4244323883";s:6:"street";s:48:"URBANIZACION EL REMANSO, LOTE 22A, CASA NUMERO 4";s:7:"company";N;s:4:"city";s:5:"MIAMI";s:8:"postcode";s:5:"33036";s:11:"countryCode";s:2:"US";s:12:"provinceCode";N;s:12:"provinceName";s:7:"FLORIDA";}', NULL),
	(16, 'create', '2018-01-22 18:37:26', '14', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:"firstName";s:5:"JULIO";s:8:"lastName";s:9:"HERNANDEZ";s:11:"phoneNumber";s:12:"847-320-5796";s:6:"street";s:19:"2632 Dovetail Drive";s:7:"company";N;s:4:"city";s:11:"Bensenville";s:8:"postcode";s:5:"60106";s:11:"countryCode";s:2:"US";s:12:"provinceCode";N;s:12:"provinceName";s:8:"Illinois";}', NULL),
	(17, 'create', '2018-01-22 18:46:33', '15', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:"firstName";s:5:"JULIO";s:8:"lastName";s:9:"HERNANDEZ";s:11:"phoneNumber";s:12:"847-320-5796";s:6:"street";s:19:"2632 Dovetail Drive";s:7:"company";N;s:4:"city";s:11:"Bensenville";s:8:"postcode";s:5:"60106";s:11:"countryCode";s:2:"US";s:12:"provinceCode";N;s:12:"provinceName";s:8:"Illinois";}', 'juliohernandezs@gmail.com'),
	(18, 'create', '2018-01-29 16:36:56', '16', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:"firstName";s:5:"JULIO";s:8:"lastName";s:9:"HERNANDEZ";s:11:"phoneNumber";s:10:"8473205796";s:6:"street";s:19:"2632 Dovetail Drive";s:7:"company";N;s:4:"city";s:11:"Bensenville";s:8:"postcode";s:5:"60106";s:11:"countryCode";s:2:"US";s:12:"provinceCode";N;s:12:"provinceName";s:8:"Illinois";}', 'juliohernandezs@gmail.com'),
	(19, 'create', '2018-01-29 16:36:56', '17', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:"firstName";s:5:"JULIO";s:8:"lastName";s:9:"HERNANDEZ";s:11:"phoneNumber";s:10:"8473205796";s:6:"street";s:19:"2632 Dovetail Drive";s:7:"company";N;s:4:"city";s:11:"Bensenville";s:8:"postcode";s:5:"60106";s:11:"countryCode";s:2:"US";s:12:"provinceCode";N;s:12:"provinceName";s:8:"Illinois";}', 'juliohernandezs@gmail.com'),
	(20, 'create', '2018-01-29 16:37:32', '18', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:"firstName";s:5:"JULIO";s:8:"lastName";s:9:"HERNANDEZ";s:11:"phoneNumber";s:10:"8473205796";s:6:"street";s:19:"2632 Dovetail Drive";s:7:"company";N;s:4:"city";s:11:"Bensenville";s:8:"postcode";s:5:"60106";s:11:"countryCode";s:2:"US";s:12:"provinceCode";N;s:12:"provinceName";s:8:"Illinois";}', 'juliohernandezs@gmail.com'),
	(21, 'create', '2018-01-29 16:50:40', '19', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:"firstName";s:5:"JULIO";s:8:"lastName";s:9:"HERNANDEZ";s:11:"phoneNumber";s:12:"847-320-5796";s:6:"street";s:19:"2632 Dovetail Drive";s:7:"company";N;s:4:"city";s:11:"Bensenville";s:8:"postcode";s:5:"60106";s:11:"countryCode";s:2:"US";s:12:"provinceCode";N;s:12:"provinceName";s:8:"Illinois";}', 'juliohernandezs@gmail.com'),
	(22, 'create', '2018-01-31 13:58:54', '20', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:"firstName";s:5:"JULIO";s:8:"lastName";s:9:"HERNANDEZ";s:11:"phoneNumber";s:12:"847-320-5796";s:6:"street";s:19:"2632 Dovetail Drive";s:7:"company";N;s:4:"city";s:11:"Bensenville";s:8:"postcode";s:5:"60106";s:11:"countryCode";s:2:"US";s:12:"provinceCode";N;s:12:"provinceName";s:8:"Illinois";}', 'juliohernandezs@gmail.com'),
	(23, 'create', '2018-01-31 14:44:54', '21', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:"firstName";s:5:"JULIO";s:8:"lastName";s:9:"HERNANDEZ";s:11:"phoneNumber";s:10:"8473205796";s:6:"street";s:19:"2632 Dovetail Drive";s:7:"company";N;s:4:"city";s:11:"Bensenville";s:8:"postcode";s:5:"60106";s:11:"countryCode";s:2:"US";s:12:"provinceCode";N;s:12:"provinceName";s:8:"Illinois";}', 'juliohernandezs@gmail.com'),
	(24, 'create', '2018-01-31 14:45:04', '22', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:"firstName";s:5:"JULIO";s:8:"lastName";s:9:"HERNANDEZ";s:11:"phoneNumber";s:10:"8473205796";s:6:"street";s:19:"2632 Dovetail Drive";s:7:"company";N;s:4:"city";s:11:"Bensenville";s:8:"postcode";s:5:"60106";s:11:"countryCode";s:2:"US";s:12:"provinceCode";N;s:12:"provinceName";s:8:"Illinois";}', 'juliohernandezs@gmail.com'),
	(25, 'create', '2018-02-06 13:43:37', '23', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:"firstName";s:5:"JULIO";s:8:"lastName";s:9:"HERNANDEZ";s:11:"phoneNumber";s:10:"8473205796";s:6:"street";s:19:"2632 Dovetail Drive";s:7:"company";N;s:4:"city";s:11:"Bensenville";s:8:"postcode";s:5:"60106";s:11:"countryCode";s:2:"US";s:12:"provinceCode";N;s:12:"provinceName";s:8:"Illinois";}', 'juliohernandezs@gmail.com'),
	(26, 'create', '2018-02-06 13:46:46', '24', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:"firstName";s:5:"JULIO";s:8:"lastName";s:9:"HERNANDEZ";s:11:"phoneNumber";s:10:"8473205796";s:6:"street";s:19:"2632 Dovetail Drive";s:7:"company";N;s:4:"city";s:11:"Bensenville";s:8:"postcode";s:5:"60106";s:11:"countryCode";s:2:"US";s:12:"provinceCode";N;s:12:"provinceName";s:8:"Illinois";}', 'juliohernandezs@gmail.com'),
	(27, 'create', '2018-02-06 14:43:52', '25', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:"firstName";s:5:"JULIO";s:8:"lastName";s:9:"HERNANDEZ";s:11:"phoneNumber";s:10:"8473205796";s:6:"street";s:19:"2632 Dovetail Drive";s:7:"company";N;s:4:"city";s:11:"Bensenville";s:8:"postcode";s:5:"60106";s:11:"countryCode";s:2:"US";s:12:"provinceCode";N;s:12:"provinceName";s:8:"Illinois";}', 'juliohernandezs@gmail.com'),
	(28, 'create', '2018-02-06 14:44:58', '26', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:"firstName";s:5:"JULIO";s:8:"lastName";s:9:"HERNANDEZ";s:11:"phoneNumber";s:10:"8473205796";s:6:"street";s:19:"2632 Dovetail Drive";s:7:"company";N;s:4:"city";s:11:"Bensenville";s:8:"postcode";s:5:"60106";s:11:"countryCode";s:2:"US";s:12:"provinceCode";N;s:12:"provinceName";s:8:"Illinois";}', 'juliohernandezs@gmail.com');
/*!40000 ALTER TABLE `sylius_address_log_entries` ENABLE KEYS */;

-- Volcando estructura para tabla yezzstore.sylius_adjustment
DROP TABLE IF EXISTS `sylius_adjustment`;
CREATE TABLE IF NOT EXISTS `sylius_adjustment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) DEFAULT NULL,
  `order_item_id` int(11) DEFAULT NULL,
  `order_item_unit_id` int(11) DEFAULT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `label` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `amount` int(11) NOT NULL,
  `is_neutral` tinyint(1) NOT NULL,
  `is_locked` tinyint(1) NOT NULL,
  `origin_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_ACA6E0F28D9F6D38` (`order_id`),
  KEY `IDX_ACA6E0F2E415FB15` (`order_item_id`),
  KEY `IDX_ACA6E0F2F720C233` (`order_item_unit_id`),
  CONSTRAINT `FK_ACA6E0F28D9F6D38` FOREIGN KEY (`order_id`) REFERENCES `sylius_order` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_ACA6E0F2E415FB15` FOREIGN KEY (`order_item_id`) REFERENCES `sylius_order_item` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_ACA6E0F2F720C233` FOREIGN KEY (`order_item_unit_id`) REFERENCES `sylius_order_item_unit` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Volcando datos para la tabla yezzstore.sylius_adjustment: ~0 rows (aproximadamente)
DELETE FROM `sylius_adjustment`;
/*!40000 ALTER TABLE `sylius_adjustment` DISABLE KEYS */;
/*!40000 ALTER TABLE `sylius_adjustment` ENABLE KEYS */;

-- Volcando estructura para tabla yezzstore.sylius_admin_api_access_token
DROP TABLE IF EXISTS `sylius_admin_api_access_token`;
CREATE TABLE IF NOT EXISTS `sylius_admin_api_access_token` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `client_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `expires_at` int(11) DEFAULT NULL,
  `scope` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_2AA4915D5F37A13B` (`token`),
  KEY `IDX_2AA4915D19EB6921` (`client_id`),
  KEY `IDX_2AA4915DA76ED395` (`user_id`),
  CONSTRAINT `FK_2AA4915D19EB6921` FOREIGN KEY (`client_id`) REFERENCES `sylius_admin_api_client` (`id`),
  CONSTRAINT `FK_2AA4915DA76ED395` FOREIGN KEY (`user_id`) REFERENCES `sylius_admin_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Volcando datos para la tabla yezzstore.sylius_admin_api_access_token: ~0 rows (aproximadamente)
DELETE FROM `sylius_admin_api_access_token`;
/*!40000 ALTER TABLE `sylius_admin_api_access_token` DISABLE KEYS */;
/*!40000 ALTER TABLE `sylius_admin_api_access_token` ENABLE KEYS */;

-- Volcando estructura para tabla yezzstore.sylius_admin_api_auth_code
DROP TABLE IF EXISTS `sylius_admin_api_auth_code`;
CREATE TABLE IF NOT EXISTS `sylius_admin_api_auth_code` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `client_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `redirect_uri` longtext COLLATE utf8_unicode_ci NOT NULL,
  `expires_at` int(11) DEFAULT NULL,
  `scope` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_E366D8485F37A13B` (`token`),
  KEY `IDX_E366D84819EB6921` (`client_id`),
  KEY `IDX_E366D848A76ED395` (`user_id`),
  CONSTRAINT `FK_E366D84819EB6921` FOREIGN KEY (`client_id`) REFERENCES `sylius_admin_api_client` (`id`),
  CONSTRAINT `FK_E366D848A76ED395` FOREIGN KEY (`user_id`) REFERENCES `sylius_admin_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Volcando datos para la tabla yezzstore.sylius_admin_api_auth_code: ~0 rows (aproximadamente)
DELETE FROM `sylius_admin_api_auth_code`;
/*!40000 ALTER TABLE `sylius_admin_api_auth_code` DISABLE KEYS */;
/*!40000 ALTER TABLE `sylius_admin_api_auth_code` ENABLE KEYS */;

-- Volcando estructura para tabla yezzstore.sylius_admin_api_client
DROP TABLE IF EXISTS `sylius_admin_api_client`;
CREATE TABLE IF NOT EXISTS `sylius_admin_api_client` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `random_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `redirect_uris` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:array)',
  `secret` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `allowed_grant_types` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:array)',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Volcando datos para la tabla yezzstore.sylius_admin_api_client: ~0 rows (aproximadamente)
DELETE FROM `sylius_admin_api_client`;
/*!40000 ALTER TABLE `sylius_admin_api_client` DISABLE KEYS */;
/*!40000 ALTER TABLE `sylius_admin_api_client` ENABLE KEYS */;

-- Volcando estructura para tabla yezzstore.sylius_admin_api_refresh_token
DROP TABLE IF EXISTS `sylius_admin_api_refresh_token`;
CREATE TABLE IF NOT EXISTS `sylius_admin_api_refresh_token` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `client_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `expires_at` int(11) DEFAULT NULL,
  `scope` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_9160E3FA5F37A13B` (`token`),
  KEY `IDX_9160E3FA19EB6921` (`client_id`),
  KEY `IDX_9160E3FAA76ED395` (`user_id`),
  CONSTRAINT `FK_9160E3FA19EB6921` FOREIGN KEY (`client_id`) REFERENCES `sylius_admin_api_client` (`id`),
  CONSTRAINT `FK_9160E3FAA76ED395` FOREIGN KEY (`user_id`) REFERENCES `sylius_admin_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Volcando datos para la tabla yezzstore.sylius_admin_api_refresh_token: ~0 rows (aproximadamente)
DELETE FROM `sylius_admin_api_refresh_token`;
/*!40000 ALTER TABLE `sylius_admin_api_refresh_token` DISABLE KEYS */;
/*!40000 ALTER TABLE `sylius_admin_api_refresh_token` ENABLE KEYS */;

-- Volcando estructura para tabla yezzstore.sylius_admin_user
DROP TABLE IF EXISTS `sylius_admin_user`;
CREATE TABLE IF NOT EXISTS `sylius_admin_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `username_canonical` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `enabled` tinyint(1) NOT NULL,
  `salt` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `last_login` datetime DEFAULT NULL,
  `password_reset_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password_requested_at` datetime DEFAULT NULL,
  `email_verification_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `verified_at` datetime DEFAULT NULL,
  `locked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  `credentials_expire_at` datetime DEFAULT NULL,
  `roles` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:array)',
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email_canonical` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `first_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `locale_code` varchar(12) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Volcando datos para la tabla yezzstore.sylius_admin_user: ~2 rows (aproximadamente)
DELETE FROM `sylius_admin_user`;
/*!40000 ALTER TABLE `sylius_admin_user` DISABLE KEYS */;
INSERT INTO `sylius_admin_user` (`id`, `username`, `username_canonical`, `enabled`, `salt`, `password`, `last_login`, `password_reset_token`, `password_requested_at`, `email_verification_token`, `verified_at`, `locked`, `expires_at`, `credentials_expire_at`, `roles`, `email`, `email_canonical`, `created_at`, `updated_at`, `first_name`, `last_name`, `locale_code`) VALUES
	(1, 'admin', 'admin', 1, '8egeg9yhivc4080og0w84cgw0so0wow', 'c0QCgTZYOjD2RneHHYqlO0zOdaH97P0eL0FICjX4meSZSxrJXSm6zR2C376WJR3phrr1jxu1lsjsvbco1lJnIQ==', '2018-01-22 17:17:24', NULL, NULL, NULL, NULL, 0, NULL, NULL, 'a:1:{i:0;s:26:"ROLE_ADMINISTRATION_ACCESS";}', 'jhernandez@yezzcorp.com', 'jhernandez@yezzcorp.com', '2018-01-16 18:26:05', '2018-01-22 17:17:24', 'Julio', 'Hernandez', 'es_ES'),
	(2, 'api', 'api', 1, 'hizjo3bbi00kgogck88cgkc0gc048c0', 'Mp4kYSbRGavEnf/Zjqfy372PiQsECi7WYkZVshAcoFNeEqSzrDKQ2Knrp/jVMft41jHFQ/dJ1OmGg6/L59YO0g==', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'a:2:{i:0;s:26:"ROLE_ADMINISTRATION_ACCESS";i:1;s:15:"ROLE_API_ACCESS";}', 'api@example.com', 'api@example.com', '2018-01-16 18:26:05', '2018-01-16 18:26:05', 'Luke', 'Brushwood', 'en_US');
/*!40000 ALTER TABLE `sylius_admin_user` ENABLE KEYS */;

-- Volcando estructura para tabla yezzstore.sylius_channel
DROP TABLE IF EXISTS `sylius_channel`;
CREATE TABLE IF NOT EXISTS `sylius_channel` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `default_locale_id` int(11) NOT NULL,
  `base_currency_id` int(11) NOT NULL,
  `default_tax_zone_id` int(11) DEFAULT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `color` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8_unicode_ci,
  `enabled` tinyint(1) NOT NULL,
  `hostname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `theme_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tax_calculation_strategy` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `contact_email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `skipping_shipping_step_allowed` tinyint(1) NOT NULL,
  `account_verification_required` tinyint(1) NOT NULL,
  `skipping_payment_step_allowed` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_16C8119E77153098` (`code`),
  KEY `IDX_16C8119E743BF776` (`default_locale_id`),
  KEY `IDX_16C8119E3101778E` (`base_currency_id`),
  KEY `IDX_16C8119EA978C17` (`default_tax_zone_id`),
  KEY `IDX_16C8119EE551C011` (`hostname`),
  CONSTRAINT `FK_16C8119E3101778E` FOREIGN KEY (`base_currency_id`) REFERENCES `sylius_currency` (`id`),
  CONSTRAINT `FK_16C8119E743BF776` FOREIGN KEY (`default_locale_id`) REFERENCES `sylius_locale` (`id`),
  CONSTRAINT `FK_16C8119EA978C17` FOREIGN KEY (`default_tax_zone_id`) REFERENCES `sylius_zone` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Volcando datos para la tabla yezzstore.sylius_channel: ~1 rows (aproximadamente)
DELETE FROM `sylius_channel`;
/*!40000 ALTER TABLE `sylius_channel` DISABLE KEYS */;
INSERT INTO `sylius_channel` (`id`, `default_locale_id`, `base_currency_id`, `default_tax_zone_id`, `code`, `name`, `color`, `description`, `enabled`, `hostname`, `created_at`, `updated_at`, `theme_name`, `tax_calculation_strategy`, `contact_email`, `skipping_shipping_step_allowed`, `account_verification_required`, `skipping_payment_step_allowed`) VALUES
	(1, 1, 1, 1, 'US_WEB', 'US Web Store', 'DarkGray', NULL, 1, 'yezzstore.test', '2018-01-16 18:26:05', '2018-01-17 18:36:33', NULL, 'order_items_based', 'jhernandez@yezzcorp.com', 1, 0, 0);
/*!40000 ALTER TABLE `sylius_channel` ENABLE KEYS */;

-- Volcando estructura para tabla yezzstore.sylius_channel_currencies
DROP TABLE IF EXISTS `sylius_channel_currencies`;
CREATE TABLE IF NOT EXISTS `sylius_channel_currencies` (
  `channel_id` int(11) NOT NULL,
  `currency_id` int(11) NOT NULL,
  PRIMARY KEY (`channel_id`,`currency_id`),
  KEY `IDX_AE491F9372F5A1AA` (`channel_id`),
  KEY `IDX_AE491F9338248176` (`currency_id`),
  CONSTRAINT `FK_AE491F9338248176` FOREIGN KEY (`currency_id`) REFERENCES `sylius_currency` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_AE491F9372F5A1AA` FOREIGN KEY (`channel_id`) REFERENCES `sylius_channel` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Volcando datos para la tabla yezzstore.sylius_channel_currencies: ~0 rows (aproximadamente)
DELETE FROM `sylius_channel_currencies`;
/*!40000 ALTER TABLE `sylius_channel_currencies` DISABLE KEYS */;
INSERT INTO `sylius_channel_currencies` (`channel_id`, `currency_id`) VALUES
	(1, 1);
/*!40000 ALTER TABLE `sylius_channel_currencies` ENABLE KEYS */;

-- Volcando estructura para tabla yezzstore.sylius_channel_locales
DROP TABLE IF EXISTS `sylius_channel_locales`;
CREATE TABLE IF NOT EXISTS `sylius_channel_locales` (
  `channel_id` int(11) NOT NULL,
  `locale_id` int(11) NOT NULL,
  PRIMARY KEY (`channel_id`,`locale_id`),
  KEY `IDX_786B7A8472F5A1AA` (`channel_id`),
  KEY `IDX_786B7A84E559DFD1` (`locale_id`),
  CONSTRAINT `FK_786B7A8472F5A1AA` FOREIGN KEY (`channel_id`) REFERENCES `sylius_channel` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_786B7A84E559DFD1` FOREIGN KEY (`locale_id`) REFERENCES `sylius_locale` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Volcando datos para la tabla yezzstore.sylius_channel_locales: ~2 rows (aproximadamente)
DELETE FROM `sylius_channel_locales`;
/*!40000 ALTER TABLE `sylius_channel_locales` DISABLE KEYS */;
INSERT INTO `sylius_channel_locales` (`channel_id`, `locale_id`) VALUES
	(1, 1),
	(1, 3);
/*!40000 ALTER TABLE `sylius_channel_locales` ENABLE KEYS */;

-- Volcando estructura para tabla yezzstore.sylius_channel_pricing
DROP TABLE IF EXISTS `sylius_channel_pricing`;
CREATE TABLE IF NOT EXISTS `sylius_channel_pricing` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_variant_id` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `channel_code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `original_price` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `product_variant_channel_idx` (`product_variant_id`,`channel_code`),
  KEY `IDX_7801820CA80EF684` (`product_variant_id`),
  CONSTRAINT `FK_7801820CA80EF684` FOREIGN KEY (`product_variant_id`) REFERENCES `sylius_product_variant` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=347 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Volcando datos para la tabla yezzstore.sylius_channel_pricing: ~12 rows (aproximadamente)
DELETE FROM `sylius_channel_pricing`;
/*!40000 ALTER TABLE `sylius_channel_pricing` DISABLE KEYS */;
INSERT INTO `sylius_channel_pricing` (`id`, `product_variant_id`, `price`, `channel_code`, `original_price`) VALUES
	(333, 333, 3900, 'US_WEB', 3000),
	(334, 334, 3950, 'US_WEB', 3050),
	(335, 335, 3800, 'US_WEB', 2900),
	(336, 336, 3700, 'US_WEB', 2800),
	(337, 337, 5400, 'US_WEB', 3500),
	(338, 338, 3500, 'US_WEB', 3300),
	(339, 339, 3000, 'US_WEB', 3000),
	(340, 340, 3000, 'US_WEB', 3000),
	(341, 341, 3000, 'US_WEB', 3000),
	(342, 342, 3000, 'US_WEB', 3000),
	(343, 343, 3000, 'US_WEB', 3000),
	(344, 344, 3000, 'US_WEB', 3000),
	(345, 345, 4790, 'US_WEB', 4500),
	(346, 346, 4790, 'US_WEB', 4500);
/*!40000 ALTER TABLE `sylius_channel_pricing` ENABLE KEYS */;

-- Volcando estructura para tabla yezzstore.sylius_country
DROP TABLE IF EXISTS `sylius_country`;
CREATE TABLE IF NOT EXISTS `sylius_country` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(2) COLLATE utf8_unicode_ci NOT NULL,
  `enabled` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_E74256BF77153098` (`code`),
  KEY `IDX_E74256BF77153098` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Volcando datos para la tabla yezzstore.sylius_country: ~0 rows (aproximadamente)
DELETE FROM `sylius_country`;
/*!40000 ALTER TABLE `sylius_country` DISABLE KEYS */;
INSERT INTO `sylius_country` (`id`, `code`, `enabled`) VALUES
	(1, 'US', 1);
/*!40000 ALTER TABLE `sylius_country` ENABLE KEYS */;

-- Volcando estructura para tabla yezzstore.sylius_currency
DROP TABLE IF EXISTS `sylius_currency`;
CREATE TABLE IF NOT EXISTS `sylius_currency` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(3) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_96EDD3D077153098` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Volcando datos para la tabla yezzstore.sylius_currency: ~0 rows (aproximadamente)
DELETE FROM `sylius_currency`;
/*!40000 ALTER TABLE `sylius_currency` DISABLE KEYS */;
INSERT INTO `sylius_currency` (`id`, `code`, `created_at`, `updated_at`) VALUES
	(1, 'USD', '2018-01-16 18:26:04', '2018-01-16 18:26:04');
/*!40000 ALTER TABLE `sylius_currency` ENABLE KEYS */;

-- Volcando estructura para tabla yezzstore.sylius_customer
DROP TABLE IF EXISTS `sylius_customer`;
CREATE TABLE IF NOT EXISTS `sylius_customer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_group_id` int(11) DEFAULT NULL,
  `default_address_id` int(11) DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email_canonical` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `first_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `birthday` datetime DEFAULT NULL,
  `gender` varchar(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'u',
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `phone_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `subscribed_to_newsletter` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_7E82D5E6E7927C74` (`email`),
  UNIQUE KEY `UNIQ_7E82D5E6A0D96FBF` (`email_canonical`),
  UNIQUE KEY `UNIQ_7E82D5E6BD94FB16` (`default_address_id`),
  KEY `IDX_7E82D5E6D2919A68` (`customer_group_id`),
  CONSTRAINT `FK_7E82D5E6BD94FB16` FOREIGN KEY (`default_address_id`) REFERENCES `sylius_address` (`id`) ON DELETE SET NULL,
  CONSTRAINT `FK_7E82D5E6D2919A68` FOREIGN KEY (`customer_group_id`) REFERENCES `sylius_customer_group` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Volcando datos para la tabla yezzstore.sylius_customer: ~2 rows (aproximadamente)
DELETE FROM `sylius_customer`;
/*!40000 ALTER TABLE `sylius_customer` DISABLE KEYS */;
INSERT INTO `sylius_customer` (`id`, `customer_group_id`, `default_address_id`, `email`, `email_canonical`, `first_name`, `last_name`, `birthday`, `gender`, `created_at`, `updated_at`, `phone_number`, `subscribed_to_newsletter`) VALUES
	(1, 1, NULL, 'shop@example.com', 'shop@example.com', 'John', 'Doe', NULL, 'u', '2018-01-16 18:26:05', '2018-01-16 18:26:05', NULL, 0),
	(22, 1, 18, 'juliohernandezs@gmail.com', 'juliohernandezs@gmail.com', 'Julio Cesar', 'Hernandez', '1982-07-08 00:00:00', 'm', '2018-01-16 18:41:33', '2018-01-29 19:23:14', '04244323883', 1),
	(23, NULL, NULL, 'julioserpone@yahoo.com', 'julioserpone@yahoo.com', NULL, NULL, NULL, 'u', '2018-01-22 17:47:24', '2018-01-22 17:47:25', NULL, 0);
/*!40000 ALTER TABLE `sylius_customer` ENABLE KEYS */;

-- Volcando estructura para tabla yezzstore.sylius_customer_group
DROP TABLE IF EXISTS `sylius_customer_group`;
CREATE TABLE IF NOT EXISTS `sylius_customer_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_7FCF9B0577153098` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Volcando datos para la tabla yezzstore.sylius_customer_group: ~2 rows (aproximadamente)
DELETE FROM `sylius_customer_group`;
/*!40000 ALTER TABLE `sylius_customer_group` DISABLE KEYS */;
INSERT INTO `sylius_customer_group` (`id`, `code`, `name`) VALUES
	(1, 'retail', 'Retail'),
	(2, 'wholesale', 'Wholesale');
/*!40000 ALTER TABLE `sylius_customer_group` ENABLE KEYS */;

-- Volcando estructura para tabla yezzstore.sylius_exchange_rate
DROP TABLE IF EXISTS `sylius_exchange_rate`;
CREATE TABLE IF NOT EXISTS `sylius_exchange_rate` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `source_currency` int(11) NOT NULL,
  `target_currency` int(11) NOT NULL,
  `ratio` decimal(10,5) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_5F52B852A76BEEDB3FD5856` (`source_currency`,`target_currency`),
  KEY `IDX_5F52B852A76BEED` (`source_currency`),
  KEY `IDX_5F52B85B3FD5856` (`target_currency`),
  CONSTRAINT `FK_5F52B852A76BEED` FOREIGN KEY (`source_currency`) REFERENCES `sylius_currency` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_5F52B85B3FD5856` FOREIGN KEY (`target_currency`) REFERENCES `sylius_currency` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Volcando datos para la tabla yezzstore.sylius_exchange_rate: ~0 rows (aproximadamente)
DELETE FROM `sylius_exchange_rate`;
/*!40000 ALTER TABLE `sylius_exchange_rate` DISABLE KEYS */;
/*!40000 ALTER TABLE `sylius_exchange_rate` ENABLE KEYS */;

-- Volcando estructura para tabla yezzstore.sylius_gateway_config
DROP TABLE IF EXISTS `sylius_gateway_config`;
CREATE TABLE IF NOT EXISTS `sylius_gateway_config` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `config` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:json_array)',
  `gateway_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `factory_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Volcando datos para la tabla yezzstore.sylius_gateway_config: ~2 rows (aproximadamente)
DELETE FROM `sylius_gateway_config`;
/*!40000 ALTER TABLE `sylius_gateway_config` DISABLE KEYS */;
INSERT INTO `sylius_gateway_config` (`id`, `config`, `gateway_name`, `factory_name`) VALUES
	(1, '[]', 'Offline', 'offline'),
	(2, '[]', 'Offline', 'offline'),
	(3, '{"publishable_key":"pk_test_yYsNYTek8hRIboo6WtT5iUrS","secret_key":"sk_test_VKit9VYBoxhhcoF0U1j4pEhs"}', 'stripe', 'stripe_checkout'),
	(4, '{"username":"paypal_us-facilitator_api1.sayyezz.com","password":"HCVCNCPXHZ5YMA9L","signature":"AviJQ1kAHsh8Z4yfLqRSQJL7qwBuAK-FQog7FPy97IuFCSitzFyuOnyQ","sandbox":true}', 'paypal_express', 'paypal_express_checkout');
/*!40000 ALTER TABLE `sylius_gateway_config` ENABLE KEYS */;

-- Volcando estructura para tabla yezzstore.sylius_locale
DROP TABLE IF EXISTS `sylius_locale`;
CREATE TABLE IF NOT EXISTS `sylius_locale` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(12) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_7BA1286477153098` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Volcando datos para la tabla yezzstore.sylius_locale: ~2 rows (aproximadamente)
DELETE FROM `sylius_locale`;
/*!40000 ALTER TABLE `sylius_locale` DISABLE KEYS */;
INSERT INTO `sylius_locale` (`id`, `code`, `created_at`, `updated_at`) VALUES
	(1, 'en_US', '2018-01-16 18:26:04', '2018-01-16 18:26:04'),
	(3, 'es_ES', '2018-01-17 17:57:54', '2018-01-17 17:57:54');
/*!40000 ALTER TABLE `sylius_locale` ENABLE KEYS */;

-- Volcando estructura para tabla yezzstore.sylius_migrations
DROP TABLE IF EXISTS `sylius_migrations`;
CREATE TABLE IF NOT EXISTS `sylius_migrations` (
  `version` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Volcando datos para la tabla yezzstore.sylius_migrations: ~39 rows (aproximadamente)
DELETE FROM `sylius_migrations`;
/*!40000 ALTER TABLE `sylius_migrations` DISABLE KEYS */;
INSERT INTO `sylius_migrations` (`version`) VALUES
	('20161202011555'),
	('20161209095131'),
	('20161214153137'),
	('20161215103325'),
	('20161219160441'),
	('20161220092422'),
	('20161221133514'),
	('20161223091334'),
	('20161223164558'),
	('20170103120334'),
	('20170109143010'),
	('20170110120125'),
	('20170116215417'),
	('20170117075436'),
	('20170120164250'),
	('20170124221955'),
	('20170201094058'),
	('20170206122839'),
	('20170206141520'),
	('20170208102345'),
	('20170208103250'),
	('20170214095710'),
	('20170214104908'),
	('20170215143031'),
	('20170217141621'),
	('20170220150813'),
	('20170223071604'),
	('20170301135010'),
	('20170303170201'),
	('20170313125424'),
	('20170321131352'),
	('20170327135945'),
	('20170401200415'),
	('20170518123056'),
	('20170711151342'),
	('20170824124122'),
	('20170913125128'),
	('20171003103916'),
	('20180102140039');
/*!40000 ALTER TABLE `sylius_migrations` ENABLE KEYS */;

-- Volcando estructura para tabla yezzstore.sylius_order
DROP TABLE IF EXISTS `sylius_order`;
CREATE TABLE IF NOT EXISTS `sylius_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `shipping_address_id` int(11) DEFAULT NULL,
  `billing_address_id` int(11) DEFAULT NULL,
  `channel_id` int(11) DEFAULT NULL,
  `promotion_coupon_id` int(11) DEFAULT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `notes` longtext COLLATE utf8_unicode_ci,
  `state` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `checkout_completed_at` datetime DEFAULT NULL,
  `items_total` int(11) NOT NULL,
  `adjustments_total` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `currency_code` varchar(3) COLLATE utf8_unicode_ci NOT NULL,
  `locale_code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `checkout_state` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `payment_state` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `shipping_state` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token_value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `customer_ip` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_6196A1F996901F54` (`number`),
  UNIQUE KEY `UNIQ_6196A1F94D4CFF2B` (`shipping_address_id`),
  UNIQUE KEY `UNIQ_6196A1F979D0C0E4` (`billing_address_id`),
  KEY `IDX_6196A1F972F5A1AA` (`channel_id`),
  KEY `IDX_6196A1F917B24436` (`promotion_coupon_id`),
  KEY `IDX_6196A1F99395C3F3` (`customer_id`),
  CONSTRAINT `FK_6196A1F917B24436` FOREIGN KEY (`promotion_coupon_id`) REFERENCES `sylius_promotion_coupon` (`id`),
  CONSTRAINT `FK_6196A1F94D4CFF2B` FOREIGN KEY (`shipping_address_id`) REFERENCES `sylius_address` (`id`),
  CONSTRAINT `FK_6196A1F972F5A1AA` FOREIGN KEY (`channel_id`) REFERENCES `sylius_channel` (`id`),
  CONSTRAINT `FK_6196A1F979D0C0E4` FOREIGN KEY (`billing_address_id`) REFERENCES `sylius_address` (`id`),
  CONSTRAINT `FK_6196A1F99395C3F3` FOREIGN KEY (`customer_id`) REFERENCES `sylius_customer` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Volcando datos para la tabla yezzstore.sylius_order: ~9 rows (aproximadamente)
DELETE FROM `sylius_order`;
/*!40000 ALTER TABLE `sylius_order` DISABLE KEYS */;
INSERT INTO `sylius_order` (`id`, `shipping_address_id`, `billing_address_id`, `channel_id`, `promotion_coupon_id`, `customer_id`, `number`, `notes`, `state`, `checkout_completed_at`, `items_total`, `adjustments_total`, `total`, `created_at`, `updated_at`, `currency_code`, `locale_code`, `checkout_state`, `payment_state`, `shipping_state`, `token_value`, `customer_ip`) VALUES
	(1, 7, 8, 1, NULL, 22, '000000003', NULL, 'fulfilled', '2018-01-19 19:04:10', 3900, 0, 3900, '2018-01-18 19:01:59', '2018-01-22 15:34:45', 'USD', 'es_ES', 'completed', 'paid', 'shipped', 'LyNDKCBR36', '::1'),
	(4, 10, 11, 1, NULL, 22, '000000004', NULL, 'fulfilled', '2018-01-22 16:08:14', 5400, 0, 5400, '2018-01-22 16:06:12', '2018-01-22 18:38:11', 'USD', 'en_US', 'completed', 'paid', 'shipped', 'Sqc31AfdCm', '::1'),
	(5, 12, 13, 1, NULL, 23, '000000005', NULL, 'cancelled', '2018-01-22 17:47:59', 3900, 0, 3900, '2018-01-22 17:40:57', '2018-01-22 18:45:06', 'USD', 'es_ES', 'completed', 'cancelled', 'shipped', 'gwMsMqSmGB', '::1'),
	(6, 14, 15, 1, NULL, 22, '000000006', NULL, 'fulfilled', '2018-01-22 18:48:31', 5400, 0, 5400, '2018-01-22 18:37:26', '2018-01-25 17:19:50', 'USD', 'es_ES', 'completed', 'paid', 'shipped', 'A-SQWMTvhX', '::1'),
	(7, 16, 17, 1, NULL, 22, '000000007', NULL, 'fulfilled', '2018-01-29 16:37:32', 3900, 0, 3900, '2018-01-29 16:29:52', '2018-01-29 16:39:31', 'USD', 'en_US', 'completed', 'paid', 'shipped', 'lfKmytdAUD', '::1'),
	(8, 19, 20, 1, NULL, 22, '000000008', NULL, 'fulfilled', '2018-01-31 14:17:07', 3950, 0, 3950, '2018-01-29 16:50:40', '2018-01-31 14:18:53', 'USD', 'en_US', 'completed', 'paid', 'shipped', '3t8v5Vi_3l', '::1'),
	(9, 21, 22, 1, NULL, 22, '000000009', NULL, 'fulfilled', '2018-01-31 14:45:15', 3800, 0, 3800, '2018-01-31 14:44:54', '2018-01-31 14:51:07', 'USD', 'en_US', 'completed', 'paid', 'shipped', 'GkBdXAalp_', '::1'),
	(10, 23, 24, 1, NULL, 22, '000000010', NULL, 'fulfilled', '2018-02-06 13:46:59', 4790, 0, 4790, '2018-02-06 13:43:35', '2018-02-06 13:51:33', 'USD', 'en_US', 'completed', 'paid', 'shipped', 'sk7SEqfJcf', '::1'),
	(12, 25, 26, 1, NULL, 22, '000000011', NULL, 'fulfilled', '2018-02-06 14:45:20', 4790, 0, 4790, '2018-02-06 14:43:52', '2018-02-06 15:12:39', 'USD', 'en_US', 'completed', 'paid', 'shipped', 'FuLAIxeMsa', '::1');
/*!40000 ALTER TABLE `sylius_order` ENABLE KEYS */;

-- Volcando estructura para tabla yezzstore.sylius_order_item
DROP TABLE IF EXISTS `sylius_order_item`;
CREATE TABLE IF NOT EXISTS `sylius_order_item` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `variant_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `unit_price` int(11) NOT NULL,
  `units_total` int(11) NOT NULL,
  `adjustments_total` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `is_immutable` tinyint(1) NOT NULL,
  `product_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `variant_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_77B587ED8D9F6D38` (`order_id`),
  KEY `IDX_77B587ED3B69A9AF` (`variant_id`),
  CONSTRAINT `FK_77B587ED3B69A9AF` FOREIGN KEY (`variant_id`) REFERENCES `sylius_product_variant` (`id`),
  CONSTRAINT `FK_77B587ED8D9F6D38` FOREIGN KEY (`order_id`) REFERENCES `sylius_order` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Volcando datos para la tabla yezzstore.sylius_order_item: ~8 rows (aproximadamente)
DELETE FROM `sylius_order_item`;
/*!40000 ALTER TABLE `sylius_order_item` DISABLE KEYS */;
INSERT INTO `sylius_order_item` (`id`, `order_id`, `variant_id`, `quantity`, `unit_price`, `units_total`, `adjustments_total`, `total`, `is_immutable`, `product_name`, `variant_name`) VALUES
	(9, 1, 333, 1, 3900, 3900, 0, 3900, 0, 'Yezz 4E4', 'Yezz 4E4'),
	(11, 4, 337, 1, 5400, 5400, 0, 5400, 0, 'Yezz 5.5M', NULL),
	(12, 5, 333, 1, 3900, 3900, 0, 3900, 0, 'Yezz 4E4', 'Yezz 4E4'),
	(13, 6, 337, 1, 5400, 5400, 0, 5400, 0, 'Yezz 5.5M', NULL),
	(14, 7, 333, 1, 3900, 3900, 0, 3900, 0, 'Yezz 4E4', 'Yezz 4E4'),
	(15, 8, 334, 1, 3950, 3950, 0, 3950, 0, 'Yezz 4E4', 'Yezz 4E4'),
	(16, 9, 335, 1, 3800, 3800, 0, 3800, 0, 'Yezz 4E4', 'Yezz 4E4'),
	(18, 10, 345, 1, 4790, 4790, 0, 4790, 0, 'Yezz 5E LTE', 'Yezz 5E LTE'),
	(20, 12, 346, 1, 4790, 4790, 0, 4790, 0, 'Yezz 5E LTE', 'Yezz 5E LTE');
/*!40000 ALTER TABLE `sylius_order_item` ENABLE KEYS */;

-- Volcando estructura para tabla yezzstore.sylius_order_item_unit
DROP TABLE IF EXISTS `sylius_order_item_unit`;
CREATE TABLE IF NOT EXISTS `sylius_order_item_unit` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_item_id` int(11) NOT NULL,
  `shipment_id` int(11) DEFAULT NULL,
  `adjustments_total` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_82BF226EE415FB15` (`order_item_id`),
  KEY `IDX_82BF226E7BE036FC` (`shipment_id`),
  CONSTRAINT `FK_82BF226E7BE036FC` FOREIGN KEY (`shipment_id`) REFERENCES `sylius_shipment` (`id`) ON DELETE SET NULL,
  CONSTRAINT `FK_82BF226EE415FB15` FOREIGN KEY (`order_item_id`) REFERENCES `sylius_order_item` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=184 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Volcando datos para la tabla yezzstore.sylius_order_item_unit: ~8 rows (aproximadamente)
DELETE FROM `sylius_order_item_unit`;
/*!40000 ALTER TABLE `sylius_order_item_unit` DISABLE KEYS */;
INSERT INTO `sylius_order_item_unit` (`id`, `order_item_id`, `shipment_id`, `adjustments_total`, `created_at`, `updated_at`) VALUES
	(167, 9, NULL, 0, '2018-01-19 19:03:04', '2018-01-19 19:03:04'),
	(174, 11, NULL, 0, '2018-01-22 16:06:12', '2018-01-22 16:06:12'),
	(175, 12, NULL, 0, '2018-01-22 17:40:58', '2018-01-22 17:40:58'),
	(176, 13, NULL, 0, '2018-01-22 18:46:12', '2018-01-22 18:46:12'),
	(177, 14, NULL, 0, '2018-01-29 16:29:52', '2018-01-29 16:29:54'),
	(178, 15, NULL, 0, '2018-01-29 16:50:40', '2018-01-29 16:50:40'),
	(179, 16, NULL, 0, '2018-01-31 14:44:54', '2018-01-31 14:44:54'),
	(181, 18, NULL, 0, '2018-02-06 13:46:00', '2018-02-06 13:46:01'),
	(183, 20, NULL, 0, '2018-02-06 14:43:52', '2018-02-06 14:43:52');
/*!40000 ALTER TABLE `sylius_order_item_unit` ENABLE KEYS */;

-- Volcando estructura para tabla yezzstore.sylius_order_sequence
DROP TABLE IF EXISTS `sylius_order_sequence`;
CREATE TABLE IF NOT EXISTS `sylius_order_sequence` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idx` int(11) NOT NULL,
  `version` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Volcando datos para la tabla yezzstore.sylius_order_sequence: ~0 rows (aproximadamente)
DELETE FROM `sylius_order_sequence`;
/*!40000 ALTER TABLE `sylius_order_sequence` DISABLE KEYS */;
INSERT INTO `sylius_order_sequence` (`id`, `idx`, `version`) VALUES
	(1, 11, 11);
/*!40000 ALTER TABLE `sylius_order_sequence` ENABLE KEYS */;

-- Volcando estructura para tabla yezzstore.sylius_payment
DROP TABLE IF EXISTS `sylius_payment`;
CREATE TABLE IF NOT EXISTS `sylius_payment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `method_id` int(11) DEFAULT NULL,
  `order_id` int(11) NOT NULL,
  `currency_code` varchar(3) COLLATE utf8_unicode_ci NOT NULL,
  `amount` int(11) NOT NULL,
  `state` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `details` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:json_array)',
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_D9191BD419883967` (`method_id`),
  KEY `IDX_D9191BD48D9F6D38` (`order_id`),
  CONSTRAINT `FK_D9191BD419883967` FOREIGN KEY (`method_id`) REFERENCES `sylius_payment_method` (`id`),
  CONSTRAINT `FK_D9191BD48D9F6D38` FOREIGN KEY (`order_id`) REFERENCES `sylius_order` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Volcando datos para la tabla yezzstore.sylius_payment: ~11 rows (aproximadamente)
DELETE FROM `sylius_payment`;
/*!40000 ALTER TABLE `sylius_payment` DISABLE KEYS */;
INSERT INTO `sylius_payment` (`id`, `method_id`, `order_id`, `currency_code`, `amount`, `state`, `details`, `created_at`, `updated_at`) VALUES
	(8, 3, 1, 'USD', 3900, 'completed', '{"amount":3900,"currency":"usd","description":"Payment contains 1 item for a total of 39","card":"tok_1Bn7JkLUl7ss7KjuMVIYnp1n","id":"ch_1Bn7JoLUl7ss7KjuUDtG5zCP","object":"charge","amount_refunded":0,"application":null,"application_fee":null,"balance_transaction":"txn_1Bn7JoLUl7ss7KjuPeWi4rrE","captured":true,"created":1516635284,"customer":null,"destination":null,"dispute":null,"failure_code":null,"failure_message":null,"fraud_details":[],"invoice":null,"livemode":false,"metadata":[],"on_behalf_of":null,"order":null,"outcome":{"network_status":"approved_by_network","reason":null,"risk_level":"normal","seller_message":"Payment complete.","type":"authorized"},"paid":true,"receipt_email":null,"receipt_number":null,"refunded":false,"refunds":{"object":"list","data":[],"has_more":false,"total_count":0,"url":"\\/v1\\/charges\\/ch_1Bn7JoLUl7ss7KjuUDtG5zCP\\/refunds"},"review":null,"shipping":null,"source":{"id":"card_1Bn7JjLUl7ss7KjuuJeiYhh9","object":"card","address_city":null,"address_country":null,"address_line1":null,"address_line1_check":null,"address_line2":null,"address_state":null,"address_zip":null,"address_zip_check":null,"brand":"Visa","country":"US","customer":null,"cvc_check":"pass","dynamic_last4":null,"exp_month":10,"exp_year":2023,"fingerprint":"uoE9PSmF1K2QvwQ6","funding":"credit","last4":"4242","metadata":[],"name":"juliohernandezs@gmail.com","tokenization_method":null},"source_transfer":null,"statement_descriptor":null,"status":"succeeded","transfer_group":null}', '2018-01-19 19:03:04', '2018-01-22 15:34:45'),
	(10, 4, 4, 'USD', 5400, 'failed', '{"PAYMENTREQUEST_0_INVNUM":"4-10","PAYMENTREQUEST_0_CURRENCYCODE":"USD","PAYMENTREQUEST_0_AMT":54,"PAYMENTREQUEST_0_ITEMAMT":54,"L_PAYMENTREQUEST_0_NAME0":"Yezz 5.5M","L_PAYMENTREQUEST_0_AMT0":54,"L_PAYMENTREQUEST_0_QTY0":1,"PAYMENTREQUEST_0_PAYMENTACTION":"Sale","AUTHORIZE_TOKEN_USERACTION":"commit","RETURNURL":"http:\\/\\/yezzstore.test\\/payment\\/capture\\/BbTtbT-YDkPCSEkd2KpnXh5wHGMWwGWMq_hg5nVAaFk","CANCELURL":"http:\\/\\/yezzstore.test\\/payment\\/capture\\/BbTtbT-YDkPCSEkd2KpnXh5wHGMWwGWMq_hg5nVAaFk?cancelled=1","PAYMENTREQUEST_0_NOTIFYURL":"http:\\/\\/yezzstore.test\\/payment\\/notify\\/mMv6YCuTCQizZXLzpiY1SxXaoFTwjazcHkCn6UP34o4","TIMESTAMP":"2018-01-22T16:10:19Z","CORRELATIONID":"fd7cce79f240","ACK":"Failure","VERSION":"65.1","BUILD":"42877378","L_ERRORCODE0":"10002","L_SHORTMESSAGE0":"Security error","L_LONGMESSAGE0":"Security header is not valid","L_SEVERITYCODE0":"Error"}', '2018-01-22 16:06:12', '2018-01-22 16:10:20'),
	(11, 3, 4, 'USD', 5400, 'completed', '{"amount":5400,"currency":"usd","description":"Payment contains 1 item for a total of 54","card":"tok_1BnABGLUl7ss7Kju4gNtCAHo","id":"ch_1BnABKLUl7ss7KjuSEV7LU2T","object":"charge","amount_refunded":0,"application":null,"application_fee":null,"balance_transaction":"txn_1BnABKLUl7ss7KjuvAmirARl","captured":true,"created":1516646290,"customer":null,"destination":null,"dispute":null,"failure_code":null,"failure_message":null,"fraud_details":[],"invoice":null,"livemode":false,"metadata":[],"on_behalf_of":null,"order":null,"outcome":{"network_status":"approved_by_network","reason":null,"risk_level":"normal","seller_message":"Payment complete.","type":"authorized"},"paid":true,"receipt_email":null,"receipt_number":null,"refunded":false,"refunds":{"object":"list","data":[],"has_more":false,"total_count":0,"url":"\\/v1\\/charges\\/ch_1BnABKLUl7ss7KjuSEV7LU2T\\/refunds"},"review":null,"shipping":null,"source":{"id":"card_1BnABGLUl7ss7KjuBrk3UsVw","object":"card","address_city":null,"address_country":null,"address_line1":null,"address_line1_check":null,"address_line2":null,"address_state":null,"address_zip":null,"address_zip_check":null,"brand":"Visa","country":"US","customer":null,"cvc_check":"pass","dynamic_last4":null,"exp_month":10,"exp_year":2021,"fingerprint":"uoE9PSmF1K2QvwQ6","funding":"credit","last4":"4242","metadata":[],"name":"juliohernandezs@gmail.com","tokenization_method":null},"source_transfer":null,"statement_descriptor":null,"status":"succeeded","transfer_group":null}', '2018-01-22 16:10:20', '2018-01-22 18:38:11'),
	(12, 3, 5, 'USD', 3900, 'cancelled', '[]', '2018-01-22 17:40:58', '2018-01-22 18:45:06'),
	(13, 4, 6, 'USD', 5400, 'failed', '{"PAYMENTREQUEST_0_INVNUM":"6-13","PAYMENTREQUEST_0_CURRENCYCODE":"USD","PAYMENTREQUEST_0_AMT":54,"PAYMENTREQUEST_0_ITEMAMT":54,"L_PAYMENTREQUEST_0_NAME0":"Yezz 5.5M","L_PAYMENTREQUEST_0_AMT0":54,"L_PAYMENTREQUEST_0_QTY0":1,"PAYMENTREQUEST_0_PAYMENTACTION":"Sale","AUTHORIZE_TOKEN_USERACTION":"commit","RETURNURL":"http:\\/\\/yezzstore.test\\/payment\\/capture\\/PjdPC3Hr-G5hIvzrbbKRTgK3G7BDlULt8W0jnEQa4jM","CANCELURL":"http:\\/\\/yezzstore.test\\/payment\\/capture\\/PjdPC3Hr-G5hIvzrbbKRTgK3G7BDlULt8W0jnEQa4jM?cancelled=1","PAYMENTREQUEST_0_NOTIFYURL":"http:\\/\\/yezzstore.test\\/payment\\/notify\\/1xvh-ERtn6HbEkK4qktgcjFJ2vV9csnWslOUTf0KG_k","TIMESTAMP":"2018-01-22T19:01:57Z","CORRELATIONID":"2f603bd9a52c5","ACK":"Failure","VERSION":"65.1","BUILD":"42877378","L_ERRORCODE0":"10002","L_SHORTMESSAGE0":"Security error","L_LONGMESSAGE0":"Security header is not valid","L_SEVERITYCODE0":"Error"}', '2018-01-22 18:46:12', '2018-01-22 19:01:58'),
	(14, 3, 6, 'USD', 5400, 'completed', '{"amount":5400,"currency":"usd","description":"Payment contains 1 item for a total of 54","card":"tok_1BoEO4LUl7ss7KjuPeESqZdS","id":"ch_1BoEO8LUl7ss7KjuzlX6Q5sc","object":"charge","amount_refunded":0,"application":null,"application_fee":null,"balance_transaction":"txn_1BoEO9LUl7ss7KjuFqpaVQth","captured":true,"created":1516900788,"customer":null,"destination":null,"dispute":null,"failure_code":null,"failure_message":null,"fraud_details":[],"invoice":null,"livemode":false,"metadata":[],"on_behalf_of":null,"order":null,"outcome":{"network_status":"approved_by_network","reason":null,"risk_level":"normal","seller_message":"Payment complete.","type":"authorized"},"paid":true,"receipt_email":null,"receipt_number":null,"refunded":false,"refunds":{"object":"list","data":[],"has_more":false,"total_count":0,"url":"\\/v1\\/charges\\/ch_1BoEO8LUl7ss7KjuzlX6Q5sc\\/refunds"},"review":null,"shipping":null,"source":{"id":"card_1BoEO4LUl7ss7KjuHTC2YROV","object":"card","address_city":null,"address_country":null,"address_line1":null,"address_line1_check":null,"address_line2":null,"address_state":null,"address_zip":null,"address_zip_check":null,"brand":"Visa","country":"US","customer":null,"cvc_check":"pass","dynamic_last4":null,"exp_month":10,"exp_year":2023,"fingerprint":"uoE9PSmF1K2QvwQ6","funding":"credit","last4":"4242","metadata":[],"name":"juliohernandezs@gmail.com","tokenization_method":null},"source_transfer":null,"statement_descriptor":null,"status":"succeeded","transfer_group":null}', '2018-01-22 19:01:58', '2018-01-25 17:19:50'),
	(15, 3, 7, 'USD', 3900, 'completed', '{"amount":3900,"currency":"usd","description":"Payment contains 1 item for a total of 39","card":"tok_1BpffFLUl7ss7KjuzpXqiyxh","id":"ch_1BpffJLUl7ss7KjuFDn72A01","object":"charge","amount_refunded":0,"application":null,"application_fee":null,"balance_transaction":"txn_1BpffKLUl7ss7Kju8T0Ti9sd","captured":true,"created":1517243969,"customer":null,"destination":null,"dispute":null,"failure_code":null,"failure_message":null,"fraud_details":[],"invoice":null,"livemode":false,"metadata":[],"on_behalf_of":null,"order":null,"outcome":{"network_status":"approved_by_network","reason":null,"risk_level":"normal","seller_message":"Payment complete.","type":"authorized"},"paid":true,"receipt_email":null,"receipt_number":null,"refunded":false,"refunds":{"object":"list","data":[],"has_more":false,"total_count":0,"url":"\\/v1\\/charges\\/ch_1BpffJLUl7ss7KjuFDn72A01\\/refunds"},"review":null,"shipping":null,"source":{"id":"card_1BpffFLUl7ss7KjuwYSsLPyl","object":"card","address_city":null,"address_country":null,"address_line1":null,"address_line1_check":null,"address_line2":null,"address_state":null,"address_zip":null,"address_zip_check":null,"brand":"Visa","country":"US","customer":null,"cvc_check":"pass","dynamic_last4":null,"exp_month":1,"exp_year":2021,"fingerprint":"uoE9PSmF1K2QvwQ6","funding":"credit","last4":"4242","metadata":[],"name":"juliohernandezs@gmail.com","tokenization_method":null},"source_transfer":null,"statement_descriptor":null,"status":"succeeded","transfer_group":null}', '2018-01-29 16:29:54', '2018-01-29 16:39:31'),
	(16, 3, 8, 'USD', 3950, 'completed', '{"amount":3950,"currency":"usd","description":"Payment contains 1 item for a total of 39.5","card":"tok_1BqMQ7LUl7ss7KjuRxguCjDn","id":"ch_1BqMQGLUl7ss7Kjuvt4XZkCb","object":"charge","amount_refunded":0,"application":null,"application_fee":null,"balance_transaction":"txn_1BqMQGLUl7ss7KjueEWhwa5n","captured":true,"created":1517408328,"customer":null,"destination":null,"dispute":null,"failure_code":null,"failure_message":null,"fraud_details":[],"invoice":null,"livemode":false,"metadata":[],"on_behalf_of":null,"order":null,"outcome":{"network_status":"approved_by_network","reason":null,"risk_level":"normal","seller_message":"Payment complete.","type":"authorized"},"paid":true,"receipt_email":null,"receipt_number":null,"refunded":false,"refunds":{"object":"list","data":[],"has_more":false,"total_count":0,"url":"\\/v1\\/charges\\/ch_1BqMQGLUl7ss7Kjuvt4XZkCb\\/refunds"},"review":null,"shipping":null,"source":{"id":"card_1BqMQ7LUl7ss7Kju2z7qrBby","object":"card","address_city":null,"address_country":null,"address_line1":null,"address_line1_check":null,"address_line2":null,"address_state":null,"address_zip":null,"address_zip_check":null,"brand":"Visa","country":"US","customer":null,"cvc_check":"pass","dynamic_last4":null,"exp_month":12,"exp_year":2019,"fingerprint":"uoE9PSmF1K2QvwQ6","funding":"credit","last4":"4242","metadata":[],"name":"juliohernandezs@gmail.com","tokenization_method":null},"source_transfer":null,"statement_descriptor":null,"status":"succeeded","transfer_group":null}', '2018-01-29 16:50:40', '2018-01-31 14:18:53'),
	(17, 4, 9, 'USD', 3800, 'completed', '{"PAYMENTREQUEST_0_INVNUM":"9-17","PAYMENTREQUEST_0_CURRENCYCODE":"USD","PAYMENTREQUEST_0_AMT":"38.00","PAYMENTREQUEST_0_ITEMAMT":"38.00","L_PAYMENTREQUEST_0_NAME0":"Yezz 4E4","L_PAYMENTREQUEST_0_AMT0":"38.00","L_PAYMENTREQUEST_0_QTY0":"1","PAYMENTREQUEST_0_PAYMENTACTION":"Sale","AUTHORIZE_TOKEN_USERACTION":"commit","RETURNURL":"http:\\/\\/yezzstore.test\\/payment\\/capture\\/ri5Ccr5y2nam58i1OSjhrz6lDN4ced5xx-GmH42DpSw","CANCELURL":"http:\\/\\/yezzstore.test\\/payment\\/capture\\/ri5Ccr5y2nam58i1OSjhrz6lDN4ced5xx-GmH42DpSw?cancelled=1","PAYMENTREQUEST_0_NOTIFYURL":"http:\\/\\/yezzstore.test\\/payment\\/notify\\/qIYJmdpkCFhcN3CQDA-TylXtpFlUuGXNPKalB1T86sQ","TOKEN":"EC-6T7552325M0808716","TIMESTAMP":"2018-01-31T14:50:52Z","CORRELATIONID":"cea1a58467209","ACK":"Success","VERSION":"65.1","BUILD":"43109726","BILLINGAGREEMENTACCEPTEDSTATUS":"0","CHECKOUTSTATUS":"PaymentActionCompleted","CURRENCYCODE":"USD","AMT":"38.00","ITEMAMT":"38.00","SHIPPINGAMT":"0.00","HANDLINGAMT":"0.00","TAXAMT":"0.00","INVNUM":"9-17","NOTIFYURL":"http:\\/\\/yezzstore.test\\/payment\\/notify\\/qIYJmdpkCFhcN3CQDA-TylXtpFlUuGXNPKalB1T86sQ","INSURANCEAMT":"0.00","SHIPDISCAMT":"0.00","L_NAME0":"Yezz 4E4","L_QTY0":"1","L_TAXAMT0":"0.00","L_AMT0":"38.00","L_ITEMWEIGHTVALUE0":"   0.00000","L_ITEMLENGTHVALUE0":"   0.00000","L_ITEMWIDTHVALUE0":"   0.00000","L_ITEMHEIGHTVALUE0":"   0.00000","PAYMENTREQUEST_0_SHIPPINGAMT":"0.00","PAYMENTREQUEST_0_HANDLINGAMT":"0.00","PAYMENTREQUEST_0_TAXAMT":"0.00","PAYMENTREQUEST_0_INSURANCEAMT":"0.00","PAYMENTREQUEST_0_SHIPDISCAMT":"0.00","PAYMENTREQUEST_0_INSURANCEOPTIONOFFERED":"false","L_PAYMENTREQUEST_0_TAXAMT0":"0.00","L_PAYMENTREQUEST_0_ITEMWEIGHTVALUE0":"   0.00000","L_PAYMENTREQUEST_0_ITEMLENGTHVALUE0":"   0.00000","L_PAYMENTREQUEST_0_ITEMWIDTHVALUE0":"   0.00000","L_PAYMENTREQUEST_0_ITEMHEIGHTVALUE0":"   0.00000","PAYMENTREQUESTINFO_0_ERRORCODE":"0","EMAIL":"paypal_us-buyer@sayyezz.com","PAYERID":"AAFAHM9HXMRCU","PAYERSTATUS":"verified","FIRSTNAME":"test","LASTNAME":"buyer","COUNTRYCODE":"US","SHIPTONAME":"test buyer","SHIPTOSTREET":"1 Main St","SHIPTOCITY":"San Jose","SHIPTOSTATE":"CA","SHIPTOZIP":"95131","SHIPTOCOUNTRYCODE":"US","SHIPTOCOUNTRYNAME":"United States","ADDRESSSTATUS":"Confirmed","INSURANCEOPTIONOFFERED":"false","PAYMENTREQUEST_0_SELLERPAYPALACCOUNTID":"paypal_us-facilitator@sayyezz.com","PAYMENTREQUEST_0_SHIPTONAME":"test buyer","PAYMENTREQUEST_0_SHIPTOSTREET":"1 Main St","PAYMENTREQUEST_0_SHIPTOCITY":"San Jose","PAYMENTREQUEST_0_SHIPTOSTATE":"CA","PAYMENTREQUEST_0_SHIPTOZIP":"95131","PAYMENTREQUEST_0_SHIPTOCOUNTRYCODE":"US","PAYMENTREQUEST_0_SHIPTOCOUNTRYNAME":"United States","PAYMENTREQUEST_0_ADDRESSSTATUS":"Confirmed","SUCCESSPAGEREDIRECTREQUESTED":"false","INSURANCEOPTIONSELECTED":"false","SHIPPINGOPTIONISDEFAULT":"false","PAYMENTINFO_0_TRANSACTIONID":"17B509326X671822N","PAYMENTINFO_0_TRANSACTIONTYPE":"cart","PAYMENTINFO_0_PAYMENTTYPE":"instant","PAYMENTINFO_0_ORDERTIME":"2018-01-31T14:50:36Z","PAYMENTINFO_0_AMT":"38.00","PAYMENTINFO_0_FEEAMT":"1.40","PAYMENTINFO_0_TAXAMT":"0.00","PAYMENTINFO_0_CURRENCYCODE":"USD","PAYMENTINFO_0_PAYMENTSTATUS":"Completed","PAYMENTINFO_0_PENDINGREASON":"None","PAYMENTINFO_0_REASONCODE":"None","PAYMENTINFO_0_PROTECTIONELIGIBILITY":"Eligible","PAYMENTINFO_0_PROTECTIONELIGIBILITYTYPE":"ItemNotReceivedEligible,UnauthorizedPaymentEligible","PAYMENTINFO_0_SELLERPAYPALACCOUNTID":"paypal_us-facilitator@sayyezz.com","PAYMENTINFO_0_ERRORCODE":"0","PAYMENTINFO_0_ACK":"Success","TRANSACTIONID":"17B509326X671822N","PAYMENTREQUEST_0_TRANSACTIONID":"17B509326X671822N","PAYMENTREQUESTINFO_0_TRANSACTIONID":"17B509326X671822N","PAYMENTREQUEST_0_TRANSACTIONTYPE":"cart","PAYMENTREQUEST_0_PAYMENTTYPE":"instant","PAYMENTREQUEST_0_ORDERTIME":"2018-01-31T14:50:36Z","PAYMENTREQUEST_0_FEEAMT":"1.40","PAYMENTREQUEST_0_PAYMENTSTATUS":"Completed","PAYMENTREQUEST_0_PENDINGREASON":"None","PAYMENTREQUEST_0_REASONCODE":"None"}', '2018-01-31 14:44:54', '2018-01-31 14:51:07'),
	(19, 4, 10, 'USD', 4790, 'completed', '{"PAYMENTREQUEST_0_INVNUM":"10-19","PAYMENTREQUEST_0_CURRENCYCODE":"USD","PAYMENTREQUEST_0_AMT":"47.90","PAYMENTREQUEST_0_ITEMAMT":"47.90","L_PAYMENTREQUEST_0_NAME0":"Yezz 5E LTE","L_PAYMENTREQUEST_0_AMT0":"47.90","L_PAYMENTREQUEST_0_QTY0":"1","PAYMENTREQUEST_0_PAYMENTACTION":"Sale","AUTHORIZE_TOKEN_USERACTION":"commit","RETURNURL":"http:\\/\\/yezzstore.test\\/payment\\/capture\\/biZMTzIFTQd8mZrvj36iTAlubbMfGuHSq7H_ihkcC8Q","CANCELURL":"http:\\/\\/yezzstore.test\\/payment\\/capture\\/biZMTzIFTQd8mZrvj36iTAlubbMfGuHSq7H_ihkcC8Q?cancelled=1","PAYMENTREQUEST_0_NOTIFYURL":"http:\\/\\/yezzstore.test\\/payment\\/notify\\/EjPY_z2gz0SzDWUDTxAVKLjkZAkYfFAnk39aSWFgV9o","TOKEN":"EC-226496183J4371721","TIMESTAMP":"2018-02-06T13:51:32Z","CORRELATIONID":"8437bb141d7","ACK":"Success","VERSION":"65.1","BUILD":"43477490","BILLINGAGREEMENTACCEPTEDSTATUS":"0","CHECKOUTSTATUS":"PaymentActionCompleted","CURRENCYCODE":"USD","AMT":"47.90","ITEMAMT":"47.90","SHIPPINGAMT":"0.00","HANDLINGAMT":"0.00","TAXAMT":"0.00","INVNUM":"10-19","NOTIFYURL":"http:\\/\\/yezzstore.test\\/payment\\/notify\\/EjPY_z2gz0SzDWUDTxAVKLjkZAkYfFAnk39aSWFgV9o","INSURANCEAMT":"0.00","SHIPDISCAMT":"0.00","L_NAME0":"Yezz 5E LTE","L_QTY0":"1","L_TAXAMT0":"0.00","L_AMT0":"47.90","L_ITEMWEIGHTVALUE0":"   0.00000","L_ITEMLENGTHVALUE0":"   0.00000","L_ITEMWIDTHVALUE0":"   0.00000","L_ITEMHEIGHTVALUE0":"   0.00000","PAYMENTREQUEST_0_SHIPPINGAMT":"0.00","PAYMENTREQUEST_0_HANDLINGAMT":"0.00","PAYMENTREQUEST_0_TAXAMT":"0.00","PAYMENTREQUEST_0_INSURANCEAMT":"0.00","PAYMENTREQUEST_0_SHIPDISCAMT":"0.00","PAYMENTREQUEST_0_INSURANCEOPTIONOFFERED":"false","L_PAYMENTREQUEST_0_TAXAMT0":"0.00","L_PAYMENTREQUEST_0_ITEMWEIGHTVALUE0":"   0.00000","L_PAYMENTREQUEST_0_ITEMLENGTHVALUE0":"   0.00000","L_PAYMENTREQUEST_0_ITEMWIDTHVALUE0":"   0.00000","L_PAYMENTREQUEST_0_ITEMHEIGHTVALUE0":"   0.00000","PAYMENTREQUESTINFO_0_ERRORCODE":"0","EMAIL":"paypal_us-buyer@sayyezz.com","PAYERID":"AAFAHM9HXMRCU","PAYERSTATUS":"verified","FIRSTNAME":"test","LASTNAME":"buyer","COUNTRYCODE":"US","SHIPTONAME":"test buyer","SHIPTOSTREET":"1 Main St","SHIPTOCITY":"San Jose","SHIPTOSTATE":"CA","SHIPTOZIP":"95131","SHIPTOCOUNTRYCODE":"US","SHIPTOCOUNTRYNAME":"United States","ADDRESSSTATUS":"Confirmed","INSURANCEOPTIONOFFERED":"false","PAYMENTREQUEST_0_SELLERPAYPALACCOUNTID":"paypal_us-facilitator@sayyezz.com","PAYMENTREQUEST_0_SHIPTONAME":"test buyer","PAYMENTREQUEST_0_SHIPTOSTREET":"1 Main St","PAYMENTREQUEST_0_SHIPTOCITY":"San Jose","PAYMENTREQUEST_0_SHIPTOSTATE":"CA","PAYMENTREQUEST_0_SHIPTOZIP":"95131","PAYMENTREQUEST_0_SHIPTOCOUNTRYCODE":"US","PAYMENTREQUEST_0_SHIPTOCOUNTRYNAME":"United States","PAYMENTREQUEST_0_ADDRESSSTATUS":"Confirmed","SUCCESSPAGEREDIRECTREQUESTED":"false","INSURANCEOPTIONSELECTED":"false","SHIPPINGOPTIONISDEFAULT":"false","PAYMENTINFO_0_TRANSACTIONID":"6M395005SE8512056","PAYMENTINFO_0_TRANSACTIONTYPE":"cart","PAYMENTINFO_0_PAYMENTTYPE":"instant","PAYMENTINFO_0_ORDERTIME":"2018-02-06T13:51:30Z","PAYMENTINFO_0_AMT":"47.90","PAYMENTINFO_0_FEEAMT":"1.69","PAYMENTINFO_0_TAXAMT":"0.00","PAYMENTINFO_0_CURRENCYCODE":"USD","PAYMENTINFO_0_PAYMENTSTATUS":"Completed","PAYMENTINFO_0_PENDINGREASON":"None","PAYMENTINFO_0_REASONCODE":"None","PAYMENTINFO_0_PROTECTIONELIGIBILITY":"Eligible","PAYMENTINFO_0_PROTECTIONELIGIBILITYTYPE":"ItemNotReceivedEligible,UnauthorizedPaymentEligible","PAYMENTINFO_0_SELLERPAYPALACCOUNTID":"paypal_us-facilitator@sayyezz.com","PAYMENTINFO_0_ERRORCODE":"0","PAYMENTINFO_0_ACK":"Success","TRANSACTIONID":"6M395005SE8512056","PAYMENTREQUEST_0_TRANSACTIONID":"6M395005SE8512056","PAYMENTREQUESTINFO_0_TRANSACTIONID":"6M395005SE8512056","PAYMENTREQUEST_0_TRANSACTIONTYPE":"cart","PAYMENTREQUEST_0_PAYMENTTYPE":"instant","PAYMENTREQUEST_0_ORDERTIME":"2018-02-06T13:51:30Z","PAYMENTREQUEST_0_FEEAMT":"1.69","PAYMENTREQUEST_0_PAYMENTSTATUS":"Completed","PAYMENTREQUEST_0_PENDINGREASON":"None","PAYMENTREQUEST_0_REASONCODE":"None"}', '2018-02-06 13:46:01', '2018-02-06 13:51:33'),
	(21, 4, 12, 'USD', 4790, 'cancelled', '{"PAYMENTREQUEST_0_INVNUM":"12-21","PAYMENTREQUEST_0_CURRENCYCODE":"USD","PAYMENTREQUEST_0_AMT":"47.90","PAYMENTREQUEST_0_ITEMAMT":"47.90","L_PAYMENTREQUEST_0_NAME0":"Yezz 5E LTE","L_PAYMENTREQUEST_0_AMT0":"47.90","L_PAYMENTREQUEST_0_QTY0":"1","PAYMENTREQUEST_0_PAYMENTACTION":"Sale","AUTHORIZE_TOKEN_USERACTION":"commit","RETURNURL":"http:\\/\\/yezzstore.test\\/payment\\/capture\\/Xv0QXfUWnaZywJlCNksw-fNN3OWTy__O64_evdIG4Us","CANCELURL":"http:\\/\\/yezzstore.test\\/payment\\/capture\\/Xv0QXfUWnaZywJlCNksw-fNN3OWTy__O64_evdIG4Us?cancelled=1","PAYMENTREQUEST_0_NOTIFYURL":"http:\\/\\/yezzstore.test\\/payment\\/notify\\/YYh5RdnBDimnm7TIvcQe5IuHtIbwIZHtD64HsUBntsg","TOKEN":"EC-6AT80191WX1242435","TIMESTAMP":"2018-02-06T14:45:35Z","CORRELATIONID":"ebc4258659755","ACK":"Success","VERSION":"65.1","BUILD":"43477490","BILLINGAGREEMENTACCEPTEDSTATUS":"0","CHECKOUTSTATUS":"PaymentActionNotInitiated","CURRENCYCODE":"USD","AMT":"47.90","ITEMAMT":"47.90","SHIPPINGAMT":"0.00","HANDLINGAMT":"0.00","TAXAMT":"0.00","INVNUM":"12-21","NOTIFYURL":"http:\\/\\/yezzstore.test\\/payment\\/notify\\/YYh5RdnBDimnm7TIvcQe5IuHtIbwIZHtD64HsUBntsg","INSURANCEAMT":"0.00","SHIPDISCAMT":"0.00","L_NAME0":"Yezz 5E LTE","L_QTY0":"1","L_TAXAMT0":"0.00","L_AMT0":"47.90","L_ITEMWEIGHTVALUE0":"   0.00000","L_ITEMLENGTHVALUE0":"   0.00000","L_ITEMWIDTHVALUE0":"   0.00000","L_ITEMHEIGHTVALUE0":"   0.00000","PAYMENTREQUEST_0_SHIPPINGAMT":"0.00","PAYMENTREQUEST_0_HANDLINGAMT":"0.00","PAYMENTREQUEST_0_TAXAMT":"0.00","PAYMENTREQUEST_0_INSURANCEAMT":"0.00","PAYMENTREQUEST_0_SHIPDISCAMT":"0.00","PAYMENTREQUEST_0_INSURANCEOPTIONOFFERED":"false","L_PAYMENTREQUEST_0_TAXAMT0":"0.00","L_PAYMENTREQUEST_0_ITEMWEIGHTVALUE0":"   0.00000","L_PAYMENTREQUEST_0_ITEMLENGTHVALUE0":"   0.00000","L_PAYMENTREQUEST_0_ITEMWIDTHVALUE0":"   0.00000","L_PAYMENTREQUEST_0_ITEMHEIGHTVALUE0":"   0.00000","PAYMENTREQUESTINFO_0_ERRORCODE":"0","CANCELLED":true}', '2018-02-06 14:43:52', '2018-02-06 14:47:02'),
	(22, 4, 12, 'USD', 4790, 'cancelled', '{"PAYMENTREQUEST_0_INVNUM":"12-22","PAYMENTREQUEST_0_CURRENCYCODE":"USD","PAYMENTREQUEST_0_AMT":"47.90","PAYMENTREQUEST_0_ITEMAMT":"47.90","L_PAYMENTREQUEST_0_NAME0":"Yezz 5E LTE","L_PAYMENTREQUEST_0_AMT0":"47.90","L_PAYMENTREQUEST_0_QTY0":"1","PAYMENTREQUEST_0_PAYMENTACTION":"Sale","AUTHORIZE_TOKEN_USERACTION":"commit","RETURNURL":"http:\\/\\/yezzstore.test\\/payment\\/capture\\/1hdqUHsJdYB15UY5MHP6ul7tZ8ZYAE3ksDqdlZY8s50","CANCELURL":"http:\\/\\/yezzstore.test\\/payment\\/capture\\/1hdqUHsJdYB15UY5MHP6ul7tZ8ZYAE3ksDqdlZY8s50?cancelled=1","PAYMENTREQUEST_0_NOTIFYURL":"http:\\/\\/yezzstore.test\\/payment\\/notify\\/NQrMXV4FM41ZkNwhaG6jkMnVyQS0AtcMLPtPq1k8WCA","TOKEN":"EC-4H974083KW0457346","TIMESTAMP":"2018-02-06T14:47:13Z","CORRELATIONID":"1c9ec4d5e285b","ACK":"Success","VERSION":"65.1","BUILD":"43477490","BILLINGAGREEMENTACCEPTEDSTATUS":"0","CHECKOUTSTATUS":"PaymentActionNotInitiated","CURRENCYCODE":"USD","AMT":"47.90","ITEMAMT":"47.90","SHIPPINGAMT":"0.00","HANDLINGAMT":"0.00","TAXAMT":"0.00","INVNUM":"12-22","NOTIFYURL":"http:\\/\\/yezzstore.test\\/payment\\/notify\\/NQrMXV4FM41ZkNwhaG6jkMnVyQS0AtcMLPtPq1k8WCA","INSURANCEAMT":"0.00","SHIPDISCAMT":"0.00","L_NAME0":"Yezz 5E LTE","L_QTY0":"1","L_TAXAMT0":"0.00","L_AMT0":"47.90","L_ITEMWEIGHTVALUE0":"   0.00000","L_ITEMLENGTHVALUE0":"   0.00000","L_ITEMWIDTHVALUE0":"   0.00000","L_ITEMHEIGHTVALUE0":"   0.00000","PAYMENTREQUEST_0_SHIPPINGAMT":"0.00","PAYMENTREQUEST_0_HANDLINGAMT":"0.00","PAYMENTREQUEST_0_TAXAMT":"0.00","PAYMENTREQUEST_0_INSURANCEAMT":"0.00","PAYMENTREQUEST_0_SHIPDISCAMT":"0.00","PAYMENTREQUEST_0_INSURANCEOPTIONOFFERED":"false","L_PAYMENTREQUEST_0_TAXAMT0":"0.00","L_PAYMENTREQUEST_0_ITEMWEIGHTVALUE0":"   0.00000","L_PAYMENTREQUEST_0_ITEMLENGTHVALUE0":"   0.00000","L_PAYMENTREQUEST_0_ITEMWIDTHVALUE0":"   0.00000","L_PAYMENTREQUEST_0_ITEMHEIGHTVALUE0":"   0.00000","PAYMENTREQUESTINFO_0_ERRORCODE":"0","CANCELLED":true}', '2018-02-06 14:47:02', '2018-02-06 14:49:10'),
	(23, 4, 12, 'USD', 4790, 'completed', '{"PAYMENTREQUEST_0_INVNUM":"12-23","PAYMENTREQUEST_0_CURRENCYCODE":"USD","PAYMENTREQUEST_0_AMT":"47.90","PAYMENTREQUEST_0_ITEMAMT":"47.90","L_PAYMENTREQUEST_0_NAME0":"Yezz 5E LTE","L_PAYMENTREQUEST_0_AMT0":"47.90","L_PAYMENTREQUEST_0_QTY0":"1","PAYMENTREQUEST_0_PAYMENTACTION":"Sale","AUTHORIZE_TOKEN_USERACTION":"commit","RETURNURL":"http:\\/\\/yezzstore.test\\/payment\\/capture\\/_9YgBsltIui6iDph3ULOcXO2L3tp6aOT_KV0neq97-Y","CANCELURL":"http:\\/\\/yezzstore.test\\/payment\\/capture\\/_9YgBsltIui6iDph3ULOcXO2L3tp6aOT_KV0neq97-Y?cancelled=1","PAYMENTREQUEST_0_NOTIFYURL":"http:\\/\\/yezzstore.test\\/payment\\/notify\\/uHHRhONFrV0EMi3kK5ospM8iRu0J0qu4eP5s6wBxgp0","TOKEN":"EC-6SR485815Y666621S","TIMESTAMP":"2018-02-06T15:12:37Z","CORRELATIONID":"f73fc299aad6e","ACK":"Success","VERSION":"65.1","BUILD":"43477490","BILLINGAGREEMENTACCEPTEDSTATUS":"0","CHECKOUTSTATUS":"PaymentActionCompleted","CURRENCYCODE":"USD","AMT":"47.90","ITEMAMT":"47.90","SHIPPINGAMT":"0.00","HANDLINGAMT":"0.00","TAXAMT":"0.00","INVNUM":"12-23","NOTIFYURL":"http:\\/\\/yezzstore.test\\/payment\\/notify\\/uHHRhONFrV0EMi3kK5ospM8iRu0J0qu4eP5s6wBxgp0","INSURANCEAMT":"0.00","SHIPDISCAMT":"0.00","L_NAME0":"Yezz 5E LTE","L_QTY0":"1","L_TAXAMT0":"0.00","L_AMT0":"47.90","L_ITEMWEIGHTVALUE0":"   0.00000","L_ITEMLENGTHVALUE0":"   0.00000","L_ITEMWIDTHVALUE0":"   0.00000","L_ITEMHEIGHTVALUE0":"   0.00000","PAYMENTREQUEST_0_SHIPPINGAMT":"0.00","PAYMENTREQUEST_0_HANDLINGAMT":"0.00","PAYMENTREQUEST_0_TAXAMT":"0.00","PAYMENTREQUEST_0_INSURANCEAMT":"0.00","PAYMENTREQUEST_0_SHIPDISCAMT":"0.00","PAYMENTREQUEST_0_INSURANCEOPTIONOFFERED":"false","L_PAYMENTREQUEST_0_TAXAMT0":"0.00","L_PAYMENTREQUEST_0_ITEMWEIGHTVALUE0":"   0.00000","L_PAYMENTREQUEST_0_ITEMLENGTHVALUE0":"   0.00000","L_PAYMENTREQUEST_0_ITEMWIDTHVALUE0":"   0.00000","L_PAYMENTREQUEST_0_ITEMHEIGHTVALUE0":"   0.00000","PAYMENTREQUESTINFO_0_ERRORCODE":"0","EMAIL":"paypal_us-buyer@sayyezz.com","PAYERID":"AAFAHM9HXMRCU","PAYERSTATUS":"verified","FIRSTNAME":"test","LASTNAME":"buyer","COUNTRYCODE":"US","SHIPTONAME":"test buyer","SHIPTOSTREET":"1 Main St","SHIPTOCITY":"San Jose","SHIPTOSTATE":"CA","SHIPTOZIP":"95131","SHIPTOCOUNTRYCODE":"US","SHIPTOCOUNTRYNAME":"United States","ADDRESSSTATUS":"Confirmed","INSURANCEOPTIONOFFERED":"false","PAYMENTREQUEST_0_SELLERPAYPALACCOUNTID":"paypal_us-facilitator@sayyezz.com","PAYMENTREQUEST_0_SHIPTONAME":"test buyer","PAYMENTREQUEST_0_SHIPTOSTREET":"1 Main St","PAYMENTREQUEST_0_SHIPTOCITY":"San Jose","PAYMENTREQUEST_0_SHIPTOSTATE":"CA","PAYMENTREQUEST_0_SHIPTOZIP":"95131","PAYMENTREQUEST_0_SHIPTOCOUNTRYCODE":"US","PAYMENTREQUEST_0_SHIPTOCOUNTRYNAME":"United States","PAYMENTREQUEST_0_ADDRESSSTATUS":"Confirmed","SUCCESSPAGEREDIRECTREQUESTED":"false","INSURANCEOPTIONSELECTED":"false","SHIPPINGOPTIONISDEFAULT":"false","PAYMENTINFO_0_TRANSACTIONID":"75U2671804475343Y","PAYMENTINFO_0_TRANSACTIONTYPE":"cart","PAYMENTINFO_0_PAYMENTTYPE":"instant","PAYMENTINFO_0_ORDERTIME":"2018-02-06T15:12:36Z","PAYMENTINFO_0_AMT":"47.90","PAYMENTINFO_0_FEEAMT":"1.69","PAYMENTINFO_0_TAXAMT":"0.00","PAYMENTINFO_0_CURRENCYCODE":"USD","PAYMENTINFO_0_PAYMENTSTATUS":"Completed","PAYMENTINFO_0_PENDINGREASON":"None","PAYMENTINFO_0_REASONCODE":"None","PAYMENTINFO_0_PROTECTIONELIGIBILITY":"Eligible","PAYMENTINFO_0_PROTECTIONELIGIBILITYTYPE":"ItemNotReceivedEligible,UnauthorizedPaymentEligible","PAYMENTINFO_0_SELLERPAYPALACCOUNTID":"paypal_us-facilitator@sayyezz.com","PAYMENTINFO_0_ERRORCODE":"0","PAYMENTINFO_0_ACK":"Success","TRANSACTIONID":"75U2671804475343Y","PAYMENTREQUEST_0_TRANSACTIONID":"75U2671804475343Y","PAYMENTREQUESTINFO_0_TRANSACTIONID":"75U2671804475343Y","PAYMENTREQUEST_0_TRANSACTIONTYPE":"cart","PAYMENTREQUEST_0_PAYMENTTYPE":"instant","PAYMENTREQUEST_0_ORDERTIME":"2018-02-06T15:12:36Z","PAYMENTREQUEST_0_FEEAMT":"1.69","PAYMENTREQUEST_0_PAYMENTSTATUS":"Completed","PAYMENTREQUEST_0_PENDINGREASON":"None","PAYMENTREQUEST_0_REASONCODE":"None"}', '2018-02-06 14:49:10', '2018-02-06 15:12:39');
/*!40000 ALTER TABLE `sylius_payment` ENABLE KEYS */;

-- Volcando estructura para tabla yezzstore.sylius_payment_method
DROP TABLE IF EXISTS `sylius_payment_method`;
CREATE TABLE IF NOT EXISTS `sylius_payment_method` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `environment` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_enabled` tinyint(1) NOT NULL,
  `position` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `gateway_config_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_A75B0B0D77153098` (`code`),
  KEY `IDX_A75B0B0DF23D6140` (`gateway_config_id`),
  CONSTRAINT `FK_A75B0B0DF23D6140` FOREIGN KEY (`gateway_config_id`) REFERENCES `sylius_gateway_config` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Volcando datos para la tabla yezzstore.sylius_payment_method: ~2 rows (aproximadamente)
DELETE FROM `sylius_payment_method`;
/*!40000 ALTER TABLE `sylius_payment_method` DISABLE KEYS */;
INSERT INTO `sylius_payment_method` (`id`, `code`, `environment`, `is_enabled`, `position`, `created_at`, `updated_at`, `gateway_config_id`) VALUES
	(1, 'cash_on_delivery', NULL, 0, 1, '2018-01-16 18:26:05', '2018-01-22 15:39:53', 1),
	(2, 'bank_transfer', NULL, 1, 3, '2018-01-16 18:26:05', '2018-01-16 18:26:05', 2),
	(3, 'Stripe', NULL, 1, 0, '2018-01-17 18:16:10', '2018-01-17 18:16:11', 3),
	(4, 'paypal-express', NULL, 1, 2, '2018-01-22 16:04:49', '2018-01-22 16:04:50', 4);
/*!40000 ALTER TABLE `sylius_payment_method` ENABLE KEYS */;

-- Volcando estructura para tabla yezzstore.sylius_payment_method_channels
DROP TABLE IF EXISTS `sylius_payment_method_channels`;
CREATE TABLE IF NOT EXISTS `sylius_payment_method_channels` (
  `payment_method_id` int(11) NOT NULL,
  `channel_id` int(11) NOT NULL,
  PRIMARY KEY (`payment_method_id`,`channel_id`),
  KEY `IDX_543AC0CC5AA1164F` (`payment_method_id`),
  KEY `IDX_543AC0CC72F5A1AA` (`channel_id`),
  CONSTRAINT `FK_543AC0CC5AA1164F` FOREIGN KEY (`payment_method_id`) REFERENCES `sylius_payment_method` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_543AC0CC72F5A1AA` FOREIGN KEY (`channel_id`) REFERENCES `sylius_channel` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Volcando datos para la tabla yezzstore.sylius_payment_method_channels: ~2 rows (aproximadamente)
DELETE FROM `sylius_payment_method_channels`;
/*!40000 ALTER TABLE `sylius_payment_method_channels` DISABLE KEYS */;
INSERT INTO `sylius_payment_method_channels` (`payment_method_id`, `channel_id`) VALUES
	(1, 1),
	(2, 1),
	(3, 1),
	(4, 1);
/*!40000 ALTER TABLE `sylius_payment_method_channels` ENABLE KEYS */;

-- Volcando estructura para tabla yezzstore.sylius_payment_method_translation
DROP TABLE IF EXISTS `sylius_payment_method_translation`;
CREATE TABLE IF NOT EXISTS `sylius_payment_method_translation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `translatable_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci,
  `instructions` longtext COLLATE utf8_unicode_ci,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `sylius_payment_method_translation_uniq_trans` (`translatable_id`,`locale`),
  KEY `IDX_966BE3A12C2AC5D3` (`translatable_id`),
  CONSTRAINT `FK_966BE3A12C2AC5D3` FOREIGN KEY (`translatable_id`) REFERENCES `sylius_payment_method` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Volcando datos para la tabla yezzstore.sylius_payment_method_translation: ~7 rows (aproximadamente)
DELETE FROM `sylius_payment_method_translation`;
/*!40000 ALTER TABLE `sylius_payment_method_translation` DISABLE KEYS */;
INSERT INTO `sylius_payment_method_translation` (`id`, `translatable_id`, `name`, `description`, `instructions`, `locale`) VALUES
	(1, 1, 'Cash on delivery', 'Molestias possimus iure est temporibus aperiam.', NULL, 'en_US'),
	(2, 2, 'Bank transfer', 'Bank Transfer (Short Description)', NULL, 'en_US'),
	(3, 3, 'Stripe Payment', 'Pay with Stripe', NULL, 'en_US'),
	(4, 3, 'Pago Stripe', 'Pagar mediante Stripe', NULL, 'es_ES'),
	(5, 2, 'Transferencia Bancaria', 'Transferencia Bancaria (Descripcion corta)', NULL, 'es_ES'),
	(6, 4, 'Paypal', 'Pay with Paypal Express', NULL, 'en_US'),
	(7, 4, 'Paypal', 'Pagar con Paypal Express', NULL, 'es_ES');
/*!40000 ALTER TABLE `sylius_payment_method_translation` ENABLE KEYS */;

-- Volcando estructura para tabla yezzstore.sylius_payment_security_token
DROP TABLE IF EXISTS `sylius_payment_security_token`;
CREATE TABLE IF NOT EXISTS `sylius_payment_security_token` (
  `hash` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `details` longtext COLLATE utf8_unicode_ci COMMENT '(DC2Type:object)',
  `after_url` longtext COLLATE utf8_unicode_ci,
  `target_url` longtext COLLATE utf8_unicode_ci NOT NULL,
  `gateway_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`hash`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Volcando datos para la tabla yezzstore.sylius_payment_security_token: ~37 rows (aproximadamente)
DELETE FROM `sylius_payment_security_token`;
/*!40000 ALTER TABLE `sylius_payment_security_token` DISABLE KEYS */;
INSERT INTO `sylius_payment_security_token` (`hash`, `details`, `after_url`, `target_url`, `gateway_name`) VALUES
	('-qZbR4eOtkIWchd6WU4RVMzP2bM346pcx8AlPk9fB0w', 'C:25:"Payum\\Core\\Model\\Identity":61:{a:2:{i:0;i:8;i:1;s:35:"Sylius\\Component\\Core\\Model\\Payment";}}', 'http://yezzstore.test/en_US/order/after-pay?payum_token=8Ap0rl62PHsLbcdiwITktJaoPQil96vgm51uwIdLEMw', 'http://yezzstore.test/payment/capture/-qZbR4eOtkIWchd6WU4RVMzP2bM346pcx8AlPk9fB0w', 'stripe'),
	('-t1J6ceViwk1JZtN9ESs8uAbOA2qdEjDvqCJJCNdM_A', 'C:25:"Payum\\Core\\Model\\Identity":61:{a:2:{i:0;i:8;i:1;s:35:"Sylius\\Component\\Core\\Model\\Payment";}}', NULL, 'http://localhost/yezzstore/web/en_US/order/after-pay?payum_token=-t1J6ceViwk1JZtN9ESs8uAbOA2qdEjDvqCJJCNdM_A', 'stripe'),
	('16Wq28_A5ct0Lx0r31OspamQ-0oe4N-_Hii-4fLLFgE', 'C:25:"Payum\\Core\\Model\\Identity":62:{a:2:{i:0;i:14;i:1;s:35:"Sylius\\Component\\Core\\Model\\Payment";}}', NULL, 'http://yezzstore.test/es_ES/order/after-pay?payum_token=16Wq28_A5ct0Lx0r31OspamQ-0oe4N-_Hii-4fLLFgE', 'stripe'),
	('1xvh-ERtn6HbEkK4qktgcjFJ2vV9csnWslOUTf0KG_k', 'C:25:"Payum\\Core\\Model\\Identity":62:{a:2:{i:0;i:13;i:1;s:35:"Sylius\\Component\\Core\\Model\\Payment";}}', NULL, 'http://yezzstore.test/payment/notify/1xvh-ERtn6HbEkK4qktgcjFJ2vV9csnWslOUTf0KG_k', 'paypal_express'),
	('2K2R9IhcloBi0GsJkgh6EVI4ss3Viq_gfeoiOyaHZ80', 'C:25:"Payum\\Core\\Model\\Identity":61:{a:2:{i:0;i:8;i:1;s:35:"Sylius\\Component\\Core\\Model\\Payment";}}', NULL, 'http://localhost/yezzstore/web/en_US/order/after-pay?payum_token=2K2R9IhcloBi0GsJkgh6EVI4ss3Viq_gfeoiOyaHZ80', 'stripe'),
	('38bTPw7jHliB-MEfMdML36K6t-gKZTK5ZqLxPisuv6Y', 'C:25:"Payum\\Core\\Model\\Identity":61:{a:2:{i:0;i:8;i:1;s:35:"Sylius\\Component\\Core\\Model\\Payment";}}', NULL, 'http://yezzstore.test/en_US/order/after-pay?payum_token=38bTPw7jHliB-MEfMdML36K6t-gKZTK5ZqLxPisuv6Y', 'stripe'),
	('7NCj82oa_acNJODAjUoInrpOR--vsjE_JG7FGpTyN0c', 'C:25:"Payum\\Core\\Model\\Identity":61:{a:2:{i:0;i:8;i:1;s:35:"Sylius\\Component\\Core\\Model\\Payment";}}', NULL, 'http://yezzstore.test/en_US/order/after-pay?payum_token=7NCj82oa_acNJODAjUoInrpOR--vsjE_JG7FGpTyN0c', 'stripe'),
	('8Ap0rl62PHsLbcdiwITktJaoPQil96vgm51uwIdLEMw', 'C:25:"Payum\\Core\\Model\\Identity":61:{a:2:{i:0;i:8;i:1;s:35:"Sylius\\Component\\Core\\Model\\Payment";}}', NULL, 'http://yezzstore.test/en_US/order/after-pay?payum_token=8Ap0rl62PHsLbcdiwITktJaoPQil96vgm51uwIdLEMw', 'stripe'),
	('C5jSRmXgzIEASNzUJR5DmFSs01LjXZ-wz0XwFu_Rcr0', 'C:25:"Payum\\Core\\Model\\Identity":61:{a:2:{i:0;i:8;i:1;s:35:"Sylius\\Component\\Core\\Model\\Payment";}}', 'http://yezzstore.test/en_US/order/after-pay?payum_token=Ui3W9tcZsf0YZIAPFGFI6nk8qvEIozg4Sj3IWtE6JgY', 'http://yezzstore.test/payment/capture/C5jSRmXgzIEASNzUJR5DmFSs01LjXZ-wz0XwFu_Rcr0', 'stripe'),
	('dyfsNdC8j1xpyU0l8Zj-Me7Zyq8J6fS0Xt6qa8kU77Y', 'C:25:"Payum\\Core\\Model\\Identity":61:{a:2:{i:0;i:8;i:1;s:35:"Sylius\\Component\\Core\\Model\\Payment";}}', NULL, 'http://yezzstore.test/en_US/order/after-pay?payum_token=dyfsNdC8j1xpyU0l8Zj-Me7Zyq8J6fS0Xt6qa8kU77Y', 'stripe'),
	('E5KHzSUoab0Li0pypcoi3SxBTrAwWXs1gQcvOlajFEk', 'C:25:"Payum\\Core\\Model\\Identity":61:{a:2:{i:0;i:8;i:1;s:35:"Sylius\\Component\\Core\\Model\\Payment";}}', 'http://yezzstore.test/en_US/order/after-pay?payum_token=38bTPw7jHliB-MEfMdML36K6t-gKZTK5ZqLxPisuv6Y', 'http://yezzstore.test/payment/capture/E5KHzSUoab0Li0pypcoi3SxBTrAwWXs1gQcvOlajFEk', 'stripe'),
	('EjPY_z2gz0SzDWUDTxAVKLjkZAkYfFAnk39aSWFgV9o', 'C:25:"Payum\\Core\\Model\\Identity":62:{a:2:{i:0;i:19;i:1;s:35:"Sylius\\Component\\Core\\Model\\Payment";}}', NULL, 'http://yezzstore.test/payment/notify/EjPY_z2gz0SzDWUDTxAVKLjkZAkYfFAnk39aSWFgV9o', 'paypal_express'),
	('EY-V8ogRCyVguuWdkHEPO1GcT57P-2zUMsgmvTPQMds', 'C:25:"Payum\\Core\\Model\\Identity":61:{a:2:{i:0;i:8;i:1;s:35:"Sylius\\Component\\Core\\Model\\Payment";}}', 'http://localhost/yezzstore/web/en_US/order/after-pay?payum_token=UvOQ1yZZv-3NSk3FzwNUXG1hFygV7xjLRThcPWICa2k', 'http://localhost/yezzstore/web/payment/capture/EY-V8ogRCyVguuWdkHEPO1GcT57P-2zUMsgmvTPQMds', 'stripe'),
	('GA42xNR437BFW2cPFlsZilDLdmj9Nb61ZXxcJUZg-8I', 'C:25:"Payum\\Core\\Model\\Identity":61:{a:2:{i:0;i:2;i:1;s:35:"Sylius\\Component\\Core\\Model\\Payment";}}', NULL, 'http://yezzstore.test/en_US/order/after-pay?payum_token=GA42xNR437BFW2cPFlsZilDLdmj9Nb61ZXxcJUZg-8I', 'stripe'),
	('jMBHVGw7gdCwt8Uf6A89R469kHqigCJgdkfmUYM28zc', 'C:25:"Payum\\Core\\Model\\Identity":61:{a:2:{i:0;i:8;i:1;s:35:"Sylius\\Component\\Core\\Model\\Payment";}}', 'http://yezzstore.test/en_US/order/after-pay?payum_token=dyfsNdC8j1xpyU0l8Zj-Me7Zyq8J6fS0Xt6qa8kU77Y', 'http://yezzstore.test/payment/capture/jMBHVGw7gdCwt8Uf6A89R469kHqigCJgdkfmUYM28zc', 'stripe'),
	('KpNe-wWU74kO5310Y-w31RzYmh3T4EUxfCgjWC4sx3I', 'C:25:"Payum\\Core\\Model\\Identity":61:{a:2:{i:0;i:8;i:1;s:35:"Sylius\\Component\\Core\\Model\\Payment";}}', 'http://localhost/yezzstore/web/en_US/order/after-pay?payum_token=-t1J6ceViwk1JZtN9ESs8uAbOA2qdEjDvqCJJCNdM_A', 'http://localhost/yezzstore/web/payment/capture/KpNe-wWU74kO5310Y-w31RzYmh3T4EUxfCgjWC4sx3I', 'stripe'),
	('kYFkWq3flOI7vZQAentQIenyOgvBc-IvhmUGSHz54C0', 'C:25:"Payum\\Core\\Model\\Identity":61:{a:2:{i:0;i:8;i:1;s:35:"Sylius\\Component\\Core\\Model\\Payment";}}', 'http://yezzstore.test/en_US/order/after-pay?payum_token=NPny1nbJaIk7-3hLfvyJYhe6e7aewGxJLJuPBtN9d40', 'http://yezzstore.test/payment/capture/kYFkWq3flOI7vZQAentQIenyOgvBc-IvhmUGSHz54C0', 'stripe'),
	('mMv6YCuTCQizZXLzpiY1SxXaoFTwjazcHkCn6UP34o4', 'C:25:"Payum\\Core\\Model\\Identity":62:{a:2:{i:0;i:10;i:1;s:35:"Sylius\\Component\\Core\\Model\\Payment";}}', NULL, 'http://yezzstore.test/payment/notify/mMv6YCuTCQizZXLzpiY1SxXaoFTwjazcHkCn6UP34o4', 'paypal_express'),
	('nFTnH0csXbOZiwe3n4WY6QQQ9v3ekh2Nc72MdHV2C2s', 'C:25:"Payum\\Core\\Model\\Identity":61:{a:2:{i:0;i:8;i:1;s:35:"Sylius\\Component\\Core\\Model\\Payment";}}', NULL, 'http://yezzstore.test/en_US/order/after-pay?payum_token=nFTnH0csXbOZiwe3n4WY6QQQ9v3ekh2Nc72MdHV2C2s', 'stripe'),
	('Nh-Mh1X5T352_ELYsZySK_T3eAQZmuMMbDzRY3KZbrY', 'C:25:"Payum\\Core\\Model\\Identity":62:{a:2:{i:0;i:14;i:1;s:35:"Sylius\\Component\\Core\\Model\\Payment";}}', 'http://yezzstore.test/es_ES/order/after-pay?payum_token=16Wq28_A5ct0Lx0r31OspamQ-0oe4N-_Hii-4fLLFgE', 'http://yezzstore.test/payment/capture/Nh-Mh1X5T352_ELYsZySK_T3eAQZmuMMbDzRY3KZbrY', 'stripe'),
	('NPny1nbJaIk7-3hLfvyJYhe6e7aewGxJLJuPBtN9d40', 'C:25:"Payum\\Core\\Model\\Identity":61:{a:2:{i:0;i:8;i:1;s:35:"Sylius\\Component\\Core\\Model\\Payment";}}', NULL, 'http://yezzstore.test/en_US/order/after-pay?payum_token=NPny1nbJaIk7-3hLfvyJYhe6e7aewGxJLJuPBtN9d40', 'stripe'),
	('NQrMXV4FM41ZkNwhaG6jkMnVyQS0AtcMLPtPq1k8WCA', 'C:25:"Payum\\Core\\Model\\Identity":62:{a:2:{i:0;i:22;i:1;s:35:"Sylius\\Component\\Core\\Model\\Payment";}}', NULL, 'http://yezzstore.test/payment/notify/NQrMXV4FM41ZkNwhaG6jkMnVyQS0AtcMLPtPq1k8WCA', 'paypal_express'),
	('nVbIt7QDRMcS-3-7dEXuLjm4MQhUG0-_rZQsoT-9daI', 'C:25:"Payum\\Core\\Model\\Identity":61:{a:2:{i:0;i:8;i:1;s:35:"Sylius\\Component\\Core\\Model\\Payment";}}', NULL, 'http://yezzstore.test/es_ES/order/after-pay?payum_token=nVbIt7QDRMcS-3-7dEXuLjm4MQhUG0-_rZQsoT-9daI', 'Offline'),
	('OUTPUpdEAS6HW_0oxszRRk9q1E1leKfkIzcHALOupBY', 'C:25:"Payum\\Core\\Model\\Identity":61:{a:2:{i:0;i:8;i:1;s:35:"Sylius\\Component\\Core\\Model\\Payment";}}', 'http://yezzstore.test/en_US/order/after-pay?payum_token=nFTnH0csXbOZiwe3n4WY6QQQ9v3ekh2Nc72MdHV2C2s', 'http://yezzstore.test/payment/capture/OUTPUpdEAS6HW_0oxszRRk9q1E1leKfkIzcHALOupBY', 'stripe'),
	('P7o0knyfTZ9XkYsyprZddhFxC2UqmnXsniPMaOyp7TY', 'C:25:"Payum\\Core\\Model\\Identity":61:{a:2:{i:0;i:8;i:1;s:35:"Sylius\\Component\\Core\\Model\\Payment";}}', NULL, 'http://yezzstore.test/es_ES/order/after-pay?payum_token=P7o0knyfTZ9XkYsyprZddhFxC2UqmnXsniPMaOyp7TY', 'stripe'),
	('qBzNVQJvPHiCSYDlnYxqjWcfXT3yhR4zTfs1FbiblYw', 'C:25:"Payum\\Core\\Model\\Identity":61:{a:2:{i:0;i:2;i:1;s:35:"Sylius\\Component\\Core\\Model\\Payment";}}', 'http://yezzstore.test/es_ES/order/after-pay?payum_token=vUq_XEzZs_YjbUfIvUh2TSeuCgREp63FY-AFaoBIub0', 'http://yezzstore.test/payment/capture/qBzNVQJvPHiCSYDlnYxqjWcfXT3yhR4zTfs1FbiblYw', 'stripe'),
	('qIYJmdpkCFhcN3CQDA-TylXtpFlUuGXNPKalB1T86sQ', 'C:25:"Payum\\Core\\Model\\Identity":62:{a:2:{i:0;i:17;i:1;s:35:"Sylius\\Component\\Core\\Model\\Payment";}}', NULL, 'http://yezzstore.test/payment/notify/qIYJmdpkCFhcN3CQDA-TylXtpFlUuGXNPKalB1T86sQ', 'paypal_express'),
	('qnGu8GKbdYD2JehCzUYHTrVQxGSsjOoXbA2lUqUHmRw', 'C:25:"Payum\\Core\\Model\\Identity":61:{a:2:{i:0;i:8;i:1;s:35:"Sylius\\Component\\Core\\Model\\Payment";}}', 'http://localhost/yezzstore/web/en_US/order/after-pay?payum_token=2K2R9IhcloBi0GsJkgh6EVI4ss3Viq_gfeoiOyaHZ80', 'http://localhost/yezzstore/web/payment/capture/qnGu8GKbdYD2JehCzUYHTrVQxGSsjOoXbA2lUqUHmRw', 'stripe'),
	('r-ibkH1LwPnZjS8TBw3VO6rOiWWEgke55L1_0-oDu40', 'C:25:"Payum\\Core\\Model\\Identity":61:{a:2:{i:0;i:8;i:1;s:35:"Sylius\\Component\\Core\\Model\\Payment";}}', 'http://yezzstore.test/es_ES/order/after-pay?payum_token=nVbIt7QDRMcS-3-7dEXuLjm4MQhUG0-_rZQsoT-9daI', 'http://yezzstore.test/payment/capture/r-ibkH1LwPnZjS8TBw3VO6rOiWWEgke55L1_0-oDu40', 'Offline'),
	('SO6Jpk77aI7AEEwAjFWMqpPTm2lAPdqPiD2YvLmF7HM', 'C:25:"Payum\\Core\\Model\\Identity":61:{a:2:{i:0;i:8;i:1;s:35:"Sylius\\Component\\Core\\Model\\Payment";}}', 'http://yezzstore.test/es_ES/order/after-pay?payum_token=P7o0knyfTZ9XkYsyprZddhFxC2UqmnXsniPMaOyp7TY', 'http://yezzstore.test/payment/capture/SO6Jpk77aI7AEEwAjFWMqpPTm2lAPdqPiD2YvLmF7HM', 'stripe'),
	('tXRMmYbMS3IHKDxu8ZLDSlCXjqLRWKRWZvBcxTMtQ1E', 'C:25:"Payum\\Core\\Model\\Identity":61:{a:2:{i:0;i:2;i:1;s:35:"Sylius\\Component\\Core\\Model\\Payment";}}', 'http://yezzstore.test/en_US/order/after-pay?payum_token=GA42xNR437BFW2cPFlsZilDLdmj9Nb61ZXxcJUZg-8I', 'http://yezzstore.test/payment/capture/tXRMmYbMS3IHKDxu8ZLDSlCXjqLRWKRWZvBcxTMtQ1E', 'stripe'),
	('uHHRhONFrV0EMi3kK5ospM8iRu0J0qu4eP5s6wBxgp0', 'C:25:"Payum\\Core\\Model\\Identity":62:{a:2:{i:0;i:23;i:1;s:35:"Sylius\\Component\\Core\\Model\\Payment";}}', NULL, 'http://yezzstore.test/payment/notify/uHHRhONFrV0EMi3kK5ospM8iRu0J0qu4eP5s6wBxgp0', 'paypal_express'),
	('Ui3W9tcZsf0YZIAPFGFI6nk8qvEIozg4Sj3IWtE6JgY', 'C:25:"Payum\\Core\\Model\\Identity":61:{a:2:{i:0;i:8;i:1;s:35:"Sylius\\Component\\Core\\Model\\Payment";}}', NULL, 'http://yezzstore.test/en_US/order/after-pay?payum_token=Ui3W9tcZsf0YZIAPFGFI6nk8qvEIozg4Sj3IWtE6JgY', 'stripe'),
	('UvOQ1yZZv-3NSk3FzwNUXG1hFygV7xjLRThcPWICa2k', 'C:25:"Payum\\Core\\Model\\Identity":61:{a:2:{i:0;i:8;i:1;s:35:"Sylius\\Component\\Core\\Model\\Payment";}}', NULL, 'http://localhost/yezzstore/web/en_US/order/after-pay?payum_token=UvOQ1yZZv-3NSk3FzwNUXG1hFygV7xjLRThcPWICa2k', 'stripe'),
	('VKJQ7MOAC8Sjo7QCDvG1dPWDLWXPFqU-k1lkC2JMa1w', 'C:25:"Payum\\Core\\Model\\Identity":61:{a:2:{i:0;i:8;i:1;s:35:"Sylius\\Component\\Core\\Model\\Payment";}}', 'http://yezzstore.test/en_US/order/after-pay?payum_token=7NCj82oa_acNJODAjUoInrpOR--vsjE_JG7FGpTyN0c', 'http://yezzstore.test/payment/capture/VKJQ7MOAC8Sjo7QCDvG1dPWDLWXPFqU-k1lkC2JMa1w', 'stripe'),
	('vUq_XEzZs_YjbUfIvUh2TSeuCgREp63FY-AFaoBIub0', 'C:25:"Payum\\Core\\Model\\Identity":61:{a:2:{i:0;i:2;i:1;s:35:"Sylius\\Component\\Core\\Model\\Payment";}}', NULL, 'http://yezzstore.test/es_ES/order/after-pay?payum_token=vUq_XEzZs_YjbUfIvUh2TSeuCgREp63FY-AFaoBIub0', 'stripe'),
	('YYh5RdnBDimnm7TIvcQe5IuHtIbwIZHtD64HsUBntsg', 'C:25:"Payum\\Core\\Model\\Identity":62:{a:2:{i:0;i:21;i:1;s:35:"Sylius\\Component\\Core\\Model\\Payment";}}', NULL, 'http://yezzstore.test/payment/notify/YYh5RdnBDimnm7TIvcQe5IuHtIbwIZHtD64HsUBntsg', 'paypal_express');
/*!40000 ALTER TABLE `sylius_payment_security_token` ENABLE KEYS */;

-- Volcando estructura para tabla yezzstore.sylius_product
DROP TABLE IF EXISTS `sylius_product`;
CREATE TABLE IF NOT EXISTS `sylius_product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `main_taxon_id` int(11) DEFAULT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `enabled` tinyint(1) NOT NULL,
  `variant_selection_method` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `average_rating` double NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_677B9B7477153098` (`code`),
  KEY `IDX_677B9B74731E505` (`main_taxon_id`),
  CONSTRAINT `FK_677B9B74731E505` FOREIGN KEY (`main_taxon_id`) REFERENCES `sylius_taxon` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=68 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Volcando datos para la tabla yezzstore.sylius_product: ~4 rows (aproximadamente)
DELETE FROM `sylius_product`;
/*!40000 ALTER TABLE `sylius_product` DISABLE KEYS */;
INSERT INTO `sylius_product` (`id`, `main_taxon_id`, `code`, `created_at`, `updated_at`, `enabled`, `variant_selection_method`, `average_rating`) VALUES
	(64, 5, 'yezz-4e4', '2018-01-18 18:39:13', '2018-02-06 13:07:13', 1, 'choice', 4),
	(65, 5, 'yezz-5-5m', '2018-01-22 15:48:41', '2018-01-22 15:50:28', 1, 'choice', 0),
	(66, 5, 'yezz-5e4', '2018-02-02 19:30:52', '2018-02-02 19:32:48', 1, 'choice', 0),
	(67, 5, 'yezz-5e-lte', '2018-02-06 13:13:50', '2018-02-06 14:12:20', 1, 'choice', 0);
/*!40000 ALTER TABLE `sylius_product` ENABLE KEYS */;

-- Volcando estructura para tabla yezzstore.sylius_product_association
DROP TABLE IF EXISTS `sylius_product_association`;
CREATE TABLE IF NOT EXISTS `sylius_product_association` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `association_type_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `product_association_idx` (`product_id`,`association_type_id`),
  KEY `IDX_48E9CDABB1E1C39` (`association_type_id`),
  KEY `IDX_48E9CDAB4584665A` (`product_id`),
  CONSTRAINT `FK_48E9CDAB4584665A` FOREIGN KEY (`product_id`) REFERENCES `sylius_product` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_48E9CDABB1E1C39` FOREIGN KEY (`association_type_id`) REFERENCES `sylius_product_association_type` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Volcando datos para la tabla yezzstore.sylius_product_association: ~3 rows (aproximadamente)
DELETE FROM `sylius_product_association`;
/*!40000 ALTER TABLE `sylius_product_association` DISABLE KEYS */;
INSERT INTO `sylius_product_association` (`id`, `association_type_id`, `product_id`, `created_at`, `updated_at`) VALUES
	(1, 1, 64, '2018-01-22 17:28:55', '2018-02-06 13:07:13'),
	(2, 1, 66, '2018-02-02 19:33:40', '2018-02-02 19:33:40');
/*!40000 ALTER TABLE `sylius_product_association` ENABLE KEYS */;

-- Volcando estructura para tabla yezzstore.sylius_product_association_product
DROP TABLE IF EXISTS `sylius_product_association_product`;
CREATE TABLE IF NOT EXISTS `sylius_product_association_product` (
  `association_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  PRIMARY KEY (`association_id`,`product_id`),
  KEY `IDX_A427B983EFB9C8A5` (`association_id`),
  KEY `IDX_A427B9834584665A` (`product_id`),
  CONSTRAINT `FK_A427B9834584665A` FOREIGN KEY (`product_id`) REFERENCES `sylius_product` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_A427B983EFB9C8A5` FOREIGN KEY (`association_id`) REFERENCES `sylius_product_association` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Volcando datos para la tabla yezzstore.sylius_product_association_product: ~3 rows (aproximadamente)
DELETE FROM `sylius_product_association_product`;
/*!40000 ALTER TABLE `sylius_product_association_product` DISABLE KEYS */;
INSERT INTO `sylius_product_association_product` (`association_id`, `product_id`) VALUES
	(1, 66),
	(2, 64);
/*!40000 ALTER TABLE `sylius_product_association_product` ENABLE KEYS */;

-- Volcando estructura para tabla yezzstore.sylius_product_association_type
DROP TABLE IF EXISTS `sylius_product_association_type`;
CREATE TABLE IF NOT EXISTS `sylius_product_association_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_CCB8914C77153098` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Volcando datos para la tabla yezzstore.sylius_product_association_type: ~0 rows (aproximadamente)
DELETE FROM `sylius_product_association_type`;
/*!40000 ALTER TABLE `sylius_product_association_type` DISABLE KEYS */;
INSERT INTO `sylius_product_association_type` (`id`, `code`, `created_at`, `updated_at`) VALUES
	(1, 'similar_products', '2018-01-16 18:26:09', '2018-01-16 18:26:09');
/*!40000 ALTER TABLE `sylius_product_association_type` ENABLE KEYS */;

-- Volcando estructura para tabla yezzstore.sylius_product_association_type_translation
DROP TABLE IF EXISTS `sylius_product_association_type_translation`;
CREATE TABLE IF NOT EXISTS `sylius_product_association_type_translation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `translatable_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `sylius_product_association_type_translation_uniq_trans` (`translatable_id`,`locale`),
  KEY `IDX_4F618E52C2AC5D3` (`translatable_id`),
  CONSTRAINT `FK_4F618E52C2AC5D3` FOREIGN KEY (`translatable_id`) REFERENCES `sylius_product_association_type` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Volcando datos para la tabla yezzstore.sylius_product_association_type_translation: ~0 rows (aproximadamente)
DELETE FROM `sylius_product_association_type_translation`;
/*!40000 ALTER TABLE `sylius_product_association_type_translation` DISABLE KEYS */;
INSERT INTO `sylius_product_association_type_translation` (`id`, `translatable_id`, `name`, `locale`) VALUES
	(1, 1, 'Similar products', 'en_US'),
	(2, 1, 'Productos Similares', 'es_ES');
/*!40000 ALTER TABLE `sylius_product_association_type_translation` ENABLE KEYS */;

-- Volcando estructura para tabla yezzstore.sylius_product_attribute
DROP TABLE IF EXISTS `sylius_product_attribute`;
CREATE TABLE IF NOT EXISTS `sylius_product_attribute` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `storage_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `configuration` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:array)',
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `position` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_BFAF484A77153098` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Volcando datos para la tabla yezzstore.sylius_product_attribute: ~4 rows (aproximadamente)
DELETE FROM `sylius_product_attribute`;
/*!40000 ALTER TABLE `sylius_product_attribute` DISABLE KEYS */;
INSERT INTO `sylius_product_attribute` (`id`, `code`, `type`, `storage_type`, `configuration`, `created_at`, `updated_at`, `position`) VALUES
	(11, 'color', 'select', 'json', 'a:4:{s:7:"choices";a:7:{s:36:"740eaa0c-fc54-11e7-8ad4-1078d2435567";a:2:{s:5:"en_US";s:5:"Black";s:5:"es_ES";s:5:"Negro";}s:36:"13c01b46-fc5d-11e7-b21b-1078d2435567";a:2:{s:5:"en_US";s:4:"Pink";s:5:"es_ES";s:6:"Rosado";}s:36:"431da516-fc80-11e7-9573-1078d2435567";a:2:{s:5:"en_US";s:5:"White";s:5:"es_ES";s:6:"Blanco";}s:36:"432011ca-fc80-11e7-9d6b-1078d2435567";a:2:{s:5:"en_US";s:4:"Blue";s:5:"es_ES";s:4:"Azul";}s:36:"43201b84-fc80-11e7-94d2-1078d2435567";a:2:{s:5:"en_US";s:6:"Silver";s:5:"es_ES";s:8:"Plateado";}s:36:"432024a8-fc80-11e7-a0f1-1078d2435567";a:2:{s:5:"en_US";s:9:"Gun Metal";s:5:"es_ES";s:9:"Gun Metal";}s:36:"510abbaa-0b3f-11e8-962d-1078d2435567";a:2:{s:5:"en_US";s:4:"Gray";s:5:"es_ES";s:4:"Gris";}}s:8:"multiple";b:1;s:3:"min";N;s:3:"max";N;}', '2018-01-18 13:35:30', '2018-02-06 13:12:08', 1),
	(12, 'chipset', 'text', 'text', 'a:2:{s:3:"min";N;s:3:"max";N;}', '2018-01-18 19:30:37', '2018-01-18 19:36:07', 0),
	(13, 'front-camera', 'select', 'json', 'a:4:{s:7:"choices";a:2:{s:36:"8262e7d0-fc86-11e7-985d-1078d2435567";a:2:{s:5:"en_US";s:3:"2MP";s:5:"es_ES";s:3:"2MP";}s:36:"82630d14-fc86-11e7-88d5-1078d2435567";a:2:{s:5:"en_US";s:3:"5MP";s:5:"es_ES";s:3:"5MP";}}s:8:"multiple";b:0;s:3:"min";N;s:3:"max";N;}', '2018-01-18 19:33:49', '2018-01-18 19:34:03', 2),
	(14, 'rear-camera', 'select', 'json', 'a:4:{s:7:"choices";a:4:{s:36:"5eae675a-fc87-11e7-aded-1078d2435567";a:2:{s:5:"en_US";s:3:"VGA";s:5:"es_ES";s:3:"VGA";}s:36:"5eae7d58-fc87-11e7-a599-1078d2435567";a:2:{s:5:"en_US";s:3:"5MP";s:5:"es_ES";s:3:"5MP";}s:36:"5eae8262-fc87-11e7-b4fb-1078d2435567";a:2:{s:5:"en_US";s:3:"8MP";s:5:"es_ES";s:3:"8MP";}s:36:"5eae8776-fc87-11e7-b13f-1078d2435567";a:2:{s:5:"en_US";s:4:"13MP";s:5:"es_ES";s:4:"13MP";}}s:8:"multiple";b:0;s:3:"min";N;s:3:"max";N;}', '2018-01-18 19:39:59', '2018-01-18 19:40:23', 3),
	(15, 'carriers', 'select', 'json', 'a:4:{s:7:"choices";a:8:{s:36:"da858074-fd46-11e7-81ab-1078d2435567";a:1:{s:5:"en_US";s:8:"Movistar";}s:36:"da87549e-fd46-11e7-8a0c-1078d2435567";a:1:{s:5:"en_US";s:8:"Movilnet";}s:36:"da875bf6-fd46-11e7-8f78-1078d2435567";a:1:{s:5:"en_US";s:7:"Digitel";}s:36:"da8761be-fd46-11e7-b101-1078d2435567";a:1:{s:5:"en_US";s:8:"T-Mobile";}s:36:"da8766dc-fd46-11e7-93d0-1078d2435567";a:1:{s:5:"en_US";s:4:"AT&T";}s:36:"da876f74-fd46-11e7-917e-1078d2435567";a:1:{s:5:"en_US";s:7:"Verizon";}s:36:"da877a6e-fd46-11e7-b162-1078d2435567";a:1:{s:5:"en_US";s:5:"Claro";}s:36:"da878086-fd46-11e7-822c-1078d2435567";a:1:{s:5:"en_US";s:6:"Telcel";}}s:8:"multiple";b:1;s:3:"min";N;s:3:"max";N;}', '2018-01-19 18:30:40', '2018-01-19 18:30:41', 5);
/*!40000 ALTER TABLE `sylius_product_attribute` ENABLE KEYS */;

-- Volcando estructura para tabla yezzstore.sylius_product_attribute_translation
DROP TABLE IF EXISTS `sylius_product_attribute_translation`;
CREATE TABLE IF NOT EXISTS `sylius_product_attribute_translation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `translatable_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `sylius_product_attribute_translation_uniq_trans` (`translatable_id`,`locale`),
  KEY `IDX_93850EBA2C2AC5D3` (`translatable_id`),
  CONSTRAINT `FK_93850EBA2C2AC5D3` FOREIGN KEY (`translatable_id`) REFERENCES `sylius_product_attribute` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Volcando datos para la tabla yezzstore.sylius_product_attribute_translation: ~8 rows (aproximadamente)
DELETE FROM `sylius_product_attribute_translation`;
/*!40000 ALTER TABLE `sylius_product_attribute_translation` DISABLE KEYS */;
INSERT INTO `sylius_product_attribute_translation` (`id`, `translatable_id`, `name`, `locale`) VALUES
	(11, 11, 'Color', 'en_US'),
	(12, 11, 'Color', 'es_ES'),
	(13, 12, 'Chipset', 'en_US'),
	(14, 12, 'Chipset', 'es_ES'),
	(15, 13, 'Front Camera', 'en_US'),
	(16, 13, 'Cámara Frontal', 'es_ES'),
	(17, 14, 'Rear Camera', 'en_US'),
	(18, 14, 'Cámara Trasera', 'es_ES'),
	(19, 15, 'Carriers', 'en_US'),
	(20, 15, 'Operadoras', 'es_ES');
/*!40000 ALTER TABLE `sylius_product_attribute_translation` ENABLE KEYS */;

-- Volcando estructura para tabla yezzstore.sylius_product_attribute_value
DROP TABLE IF EXISTS `sylius_product_attribute_value`;
CREATE TABLE IF NOT EXISTS `sylius_product_attribute_value` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `attribute_id` int(11) NOT NULL,
  `text_value` longtext COLLATE utf8_unicode_ci,
  `boolean_value` tinyint(1) DEFAULT NULL,
  `integer_value` int(11) DEFAULT NULL,
  `float_value` double DEFAULT NULL,
  `datetime_value` datetime DEFAULT NULL,
  `date_value` date DEFAULT NULL,
  `json_value` longtext COLLATE utf8_unicode_ci COMMENT '(DC2Type:json_array)',
  `locale_code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_8A053E544584665A` (`product_id`),
  KEY `IDX_8A053E54B6E62EFA` (`attribute_id`),
  CONSTRAINT `FK_8A053E544584665A` FOREIGN KEY (`product_id`) REFERENCES `sylius_product` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_8A053E54B6E62EFA` FOREIGN KEY (`attribute_id`) REFERENCES `sylius_product_attribute` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=199 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Volcando datos para la tabla yezzstore.sylius_product_attribute_value: ~31 rows (aproximadamente)
DELETE FROM `sylius_product_attribute_value`;
/*!40000 ALTER TABLE `sylius_product_attribute_value` DISABLE KEYS */;
INSERT INTO `sylius_product_attribute_value` (`id`, `product_id`, `attribute_id`, `text_value`, `boolean_value`, `integer_value`, `float_value`, `datetime_value`, `date_value`, `json_value`, `locale_code`) VALUES
	(164, 64, 11, NULL, NULL, NULL, NULL, NULL, NULL, '["740eaa0c-fc54-11e7-8ad4-1078d2435567","432011ca-fc80-11e7-9d6b-1078d2435567","13c01b46-fc5d-11e7-b21b-1078d2435567","431da516-fc80-11e7-9573-1078d2435567"]', 'en_US'),
	(165, 64, 11, NULL, NULL, NULL, NULL, NULL, NULL, '[]', 'es_ES'),
	(166, 64, 13, NULL, NULL, NULL, NULL, NULL, NULL, '["8262e7d0-fc86-11e7-985d-1078d2435567"]', 'en_US'),
	(167, 64, 14, NULL, NULL, NULL, NULL, NULL, NULL, '["5eae7d58-fc87-11e7-a599-1078d2435567"]', 'en_US'),
	(168, 64, 15, NULL, NULL, NULL, NULL, NULL, NULL, '["da8766dc-fd46-11e7-93d0-1078d2435567","da877a6e-fd46-11e7-b162-1078d2435567","da87549e-fd46-11e7-8a0c-1078d2435567","da858074-fd46-11e7-81ab-1078d2435567","da8761be-fd46-11e7-b101-1078d2435567","da876f74-fd46-11e7-917e-1078d2435567"]', 'en_US'),
	(169, 64, 13, NULL, NULL, NULL, NULL, NULL, NULL, '[]', 'es_ES'),
	(170, 64, 14, NULL, NULL, NULL, NULL, NULL, NULL, '[]', 'es_ES'),
	(171, 64, 15, NULL, NULL, NULL, NULL, NULL, NULL, '[]', 'es_ES'),
	(172, 65, 11, NULL, NULL, NULL, NULL, NULL, NULL, '["740eaa0c-fc54-11e7-8ad4-1078d2435567"]', 'en_US'),
	(173, 65, 12, 'Mediatek MT6580A', NULL, NULL, NULL, NULL, NULL, NULL, 'en_US'),
	(174, 65, 13, NULL, NULL, NULL, NULL, NULL, NULL, '["82630d14-fc86-11e7-88d5-1078d2435567"]', 'en_US'),
	(175, 65, 14, NULL, NULL, NULL, NULL, NULL, NULL, '["5eae8776-fc87-11e7-b13f-1078d2435567"]', 'en_US'),
	(176, 65, 15, NULL, NULL, NULL, NULL, NULL, NULL, '["da8766dc-fd46-11e7-93d0-1078d2435567","da877a6e-fd46-11e7-b162-1078d2435567","da87549e-fd46-11e7-8a0c-1078d2435567","da858074-fd46-11e7-81ab-1078d2435567","da876f74-fd46-11e7-917e-1078d2435567"]', 'en_US'),
	(177, 65, 11, NULL, NULL, NULL, NULL, NULL, NULL, '["740eaa0c-fc54-11e7-8ad4-1078d2435567"]', 'es_ES'),
	(178, 65, 13, NULL, NULL, NULL, NULL, NULL, NULL, '[]', 'es_ES'),
	(179, 65, 14, NULL, NULL, NULL, NULL, NULL, NULL, '[]', 'es_ES'),
	(180, 65, 15, NULL, NULL, NULL, NULL, NULL, NULL, '[]', 'es_ES'),
	(181, 66, 11, NULL, NULL, NULL, NULL, NULL, NULL, '["740eaa0c-fc54-11e7-8ad4-1078d2435567","432024a8-fc80-11e7-a0f1-1078d2435567","13c01b46-fc5d-11e7-b21b-1078d2435567","43201b84-fc80-11e7-94d2-1078d2435567","431da516-fc80-11e7-9573-1078d2435567"]', 'en_US'),
	(182, 66, 12, 'Mediatek MT6580M', NULL, NULL, NULL, NULL, NULL, NULL, 'en_US'),
	(183, 66, 13, NULL, NULL, NULL, NULL, NULL, NULL, '["8262e7d0-fc86-11e7-985d-1078d2435567"]', 'en_US'),
	(184, 66, 14, NULL, NULL, NULL, NULL, NULL, NULL, '["5eae7d58-fc87-11e7-a599-1078d2435567"]', 'en_US'),
	(185, 66, 15, NULL, NULL, NULL, NULL, NULL, NULL, '["da87549e-fd46-11e7-8a0c-1078d2435567","da858074-fd46-11e7-81ab-1078d2435567"]', 'en_US'),
	(186, 66, 11, NULL, NULL, NULL, NULL, NULL, NULL, '[]', 'es_ES'),
	(187, 66, 13, NULL, NULL, NULL, NULL, NULL, NULL, '[]', 'es_ES'),
	(188, 66, 14, NULL, NULL, NULL, NULL, NULL, NULL, '[]', 'es_ES'),
	(189, 66, 15, NULL, NULL, NULL, NULL, NULL, NULL, '[]', 'es_ES'),
	(190, 67, 12, 'MediaTek MT6735M', NULL, NULL, NULL, NULL, NULL, NULL, 'en_US'),
	(191, 67, 13, NULL, NULL, NULL, NULL, NULL, NULL, '["82630d14-fc86-11e7-88d5-1078d2435567"]', 'en_US'),
	(192, 67, 14, NULL, NULL, NULL, NULL, NULL, NULL, '["5eae8262-fc87-11e7-b4fb-1078d2435567"]', 'en_US'),
	(193, 67, 15, NULL, NULL, NULL, NULL, NULL, NULL, '["da87549e-fd46-11e7-8a0c-1078d2435567","da858074-fd46-11e7-81ab-1078d2435567"]', 'en_US'),
	(194, 67, 11, NULL, NULL, NULL, NULL, NULL, NULL, '["740eaa0c-fc54-11e7-8ad4-1078d2435567","510abbaa-0b3f-11e8-962d-1078d2435567"]', 'en_US'),
	(195, 67, 13, NULL, NULL, NULL, NULL, NULL, NULL, '[]', 'es_ES'),
	(196, 67, 14, NULL, NULL, NULL, NULL, NULL, NULL, '[]', 'es_ES'),
	(197, 67, 15, NULL, NULL, NULL, NULL, NULL, NULL, '[]', 'es_ES'),
	(198, 67, 11, NULL, NULL, NULL, NULL, NULL, NULL, '[]', 'es_ES');
/*!40000 ALTER TABLE `sylius_product_attribute_value` ENABLE KEYS */;

-- Volcando estructura para tabla yezzstore.sylius_product_channels
DROP TABLE IF EXISTS `sylius_product_channels`;
CREATE TABLE IF NOT EXISTS `sylius_product_channels` (
  `product_id` int(11) NOT NULL,
  `channel_id` int(11) NOT NULL,
  PRIMARY KEY (`product_id`,`channel_id`),
  KEY `IDX_F9EF269B4584665A` (`product_id`),
  KEY `IDX_F9EF269B72F5A1AA` (`channel_id`),
  CONSTRAINT `FK_F9EF269B4584665A` FOREIGN KEY (`product_id`) REFERENCES `sylius_product` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_F9EF269B72F5A1AA` FOREIGN KEY (`channel_id`) REFERENCES `sylius_channel` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Volcando datos para la tabla yezzstore.sylius_product_channels: ~4 rows (aproximadamente)
DELETE FROM `sylius_product_channels`;
/*!40000 ALTER TABLE `sylius_product_channels` DISABLE KEYS */;
INSERT INTO `sylius_product_channels` (`product_id`, `channel_id`) VALUES
	(64, 1),
	(65, 1),
	(66, 1),
	(67, 1);
/*!40000 ALTER TABLE `sylius_product_channels` ENABLE KEYS */;

-- Volcando estructura para tabla yezzstore.sylius_product_image
DROP TABLE IF EXISTS `sylius_product_image`;
CREATE TABLE IF NOT EXISTS `sylius_product_image` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `owner_id` int(11) NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `path` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_88C64B2D7E3C61F9` (`owner_id`),
  CONSTRAINT `FK_88C64B2D7E3C61F9` FOREIGN KEY (`owner_id`) REFERENCES `sylius_product` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=169 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Volcando datos para la tabla yezzstore.sylius_product_image: ~19 rows (aproximadamente)
DELETE FROM `sylius_product_image`;
/*!40000 ALTER TABLE `sylius_product_image` DISABLE KEYS */;
INSERT INTO `sylius_product_image` (`id`, `owner_id`, `type`, `path`) VALUES
	(147, 64, 'yezz4e4-black-front', '65/7d/ccac3211eb49dd5da5b107c2166d.png'),
	(148, 64, 'yezz4e4-black-back', '4c/a5/1f77d24ac707a02334b358f29465.png'),
	(149, 64, 'yezz4e4-gray-front', '77/eb/7aed853525a0608edcef65a38430.png'),
	(150, 64, 'yezz4e4-gray-back', '32/f7/6ba003693e33a650d19b0dfc2cc1.png'),
	(151, 64, 'yezz4e4-blue-front', 'c8/b6/c3482b50410582d0e212e1f112d2.png'),
	(152, 64, 'yezz4e4-blue-back', '1a/5d/303e622e6ee3fd212a81fb24e757.png'),
	(153, 64, 'yezz4e4-pink-front', 'a6/da/856b15fe7ab96d3ca1446c5397b4.png'),
	(154, 64, 'yezz4e4-pink-back', '5a/a7/ac666238549a956f5a7f59dc8dfb.png'),
	(155, 64, 'yezz4e4-white-front', '7a/c1/1f86bc59787468f7c7d9c033d570.png'),
	(156, 64, 'yezz4e4-white-back', '7e/bb/23fdb926cdd48cb8c851022502c3.png'),
	(157, 65, 'yezz5-5m-black-front', '59/8a/7421d437f8d3bd74b342dbe55b20.png'),
	(158, 66, 'yezz5e4-black-front', '0b/e5/7ae52905bf6c0c75a5216735482f.png'),
	(159, 66, 'yezz5e4-black-back', '5c/fa/cd3edb85169c151500832a26255c.png'),
	(161, 67, 'yezz5e-lte-black-front', 'fb/91/6316ad97d6ec39a56cf780ac4bd7.png'),
	(162, 67, 'yezz5e-lte-black-back', '58/88/26bff29897bbafce92ae44158fe0.png'),
	(163, 67, 'yezz5e-lte-gray-front', '65/fa/6b9e55c84fb77086bbdad43f8aa1.png'),
	(164, 67, 'yezz5e-lte-gray-back', '4c/9e/bc96f46b6e4bb184bdffce413c14.png'),
	(165, 67, 'yezz5e-lte-black-full', '5b/69/d4b145febce7d58f4fff08369de6.jpeg'),
	(166, 67, 'yezz5e-lte-gray-full', '93/8b/37e333836914937294d87eba06b4.jpeg'),
	(167, 67, 'yezz5e-lte-protector', '53/5d/acb27ddcb6ae80d962f5b26076ac.jpeg'),
	(168, 67, 'yezz5e-lte-box', 'c0/90/bd0fec1516691feb9d5ddbd10a13.png');
/*!40000 ALTER TABLE `sylius_product_image` ENABLE KEYS */;

-- Volcando estructura para tabla yezzstore.sylius_product_image_product_variants
DROP TABLE IF EXISTS `sylius_product_image_product_variants`;
CREATE TABLE IF NOT EXISTS `sylius_product_image_product_variants` (
  `image_id` int(11) NOT NULL,
  `variant_id` int(11) NOT NULL,
  PRIMARY KEY (`image_id`,`variant_id`),
  KEY `IDX_8FFDAE8D3DA5256D` (`image_id`),
  KEY `IDX_8FFDAE8D3B69A9AF` (`variant_id`),
  CONSTRAINT `FK_8FFDAE8D3B69A9AF` FOREIGN KEY (`variant_id`) REFERENCES `sylius_product_variant` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_8FFDAE8D3DA5256D` FOREIGN KEY (`image_id`) REFERENCES `sylius_product_image` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Volcando datos para la tabla yezzstore.sylius_product_image_product_variants: ~19 rows (aproximadamente)
DELETE FROM `sylius_product_image_product_variants`;
/*!40000 ALTER TABLE `sylius_product_image_product_variants` DISABLE KEYS */;
INSERT INTO `sylius_product_image_product_variants` (`image_id`, `variant_id`) VALUES
	(147, 333),
	(148, 333),
	(149, 338),
	(150, 338),
	(151, 336),
	(152, 336),
	(153, 335),
	(154, 335),
	(155, 334),
	(156, 334),
	(161, 345),
	(162, 345),
	(163, 346),
	(164, 346),
	(165, 345),
	(166, 345),
	(167, 345),
	(167, 346),
	(168, 345),
	(168, 346);
/*!40000 ALTER TABLE `sylius_product_image_product_variants` ENABLE KEYS */;

-- Volcando estructura para tabla yezzstore.sylius_product_option
DROP TABLE IF EXISTS `sylius_product_option`;
CREATE TABLE IF NOT EXISTS `sylius_product_option` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `position` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_E4C0EBEF77153098` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Volcando datos para la tabla yezzstore.sylius_product_option: ~1 rows (aproximadamente)
DELETE FROM `sylius_product_option`;
/*!40000 ALTER TABLE `sylius_product_option` DISABLE KEYS */;
INSERT INTO `sylius_product_option` (`id`, `code`, `created_at`, `updated_at`, `position`) VALUES
	(1, 'cellphone_color', '2018-01-16 18:26:05', '2018-01-16 18:26:05', 0);
/*!40000 ALTER TABLE `sylius_product_option` ENABLE KEYS */;

-- Volcando estructura para tabla yezzstore.sylius_product_options
DROP TABLE IF EXISTS `sylius_product_options`;
CREATE TABLE IF NOT EXISTS `sylius_product_options` (
  `product_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  PRIMARY KEY (`product_id`,`option_id`),
  KEY `IDX_2B5FF0094584665A` (`product_id`),
  KEY `IDX_2B5FF009A7C41D6F` (`option_id`),
  CONSTRAINT `FK_2B5FF0094584665A` FOREIGN KEY (`product_id`) REFERENCES `sylius_product` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_2B5FF009A7C41D6F` FOREIGN KEY (`option_id`) REFERENCES `sylius_product_option` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Volcando datos para la tabla yezzstore.sylius_product_options: ~3 rows (aproximadamente)
DELETE FROM `sylius_product_options`;
/*!40000 ALTER TABLE `sylius_product_options` DISABLE KEYS */;
INSERT INTO `sylius_product_options` (`product_id`, `option_id`) VALUES
	(64, 1),
	(66, 1),
	(67, 1);
/*!40000 ALTER TABLE `sylius_product_options` ENABLE KEYS */;

-- Volcando estructura para tabla yezzstore.sylius_product_option_translation
DROP TABLE IF EXISTS `sylius_product_option_translation`;
CREATE TABLE IF NOT EXISTS `sylius_product_option_translation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `translatable_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `sylius_product_option_translation_uniq_trans` (`translatable_id`,`locale`),
  KEY `IDX_CBA491AD2C2AC5D3` (`translatable_id`),
  CONSTRAINT `FK_CBA491AD2C2AC5D3` FOREIGN KEY (`translatable_id`) REFERENCES `sylius_product_option` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Volcando datos para la tabla yezzstore.sylius_product_option_translation: ~3 rows (aproximadamente)
DELETE FROM `sylius_product_option_translation`;
/*!40000 ALTER TABLE `sylius_product_option_translation` DISABLE KEYS */;
INSERT INTO `sylius_product_option_translation` (`id`, `translatable_id`, `name`, `locale`) VALUES
	(1, 1, 'Color', 'en_US'),
	(5, 1, 'Color', 'es_ES');
/*!40000 ALTER TABLE `sylius_product_option_translation` ENABLE KEYS */;

-- Volcando estructura para tabla yezzstore.sylius_product_option_value
DROP TABLE IF EXISTS `sylius_product_option_value`;
CREATE TABLE IF NOT EXISTS `sylius_product_option_value` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `option_id` int(11) NOT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_F7FF7D4B77153098` (`code`),
  KEY `IDX_F7FF7D4BA7C41D6F` (`option_id`),
  CONSTRAINT `FK_F7FF7D4BA7C41D6F` FOREIGN KEY (`option_id`) REFERENCES `sylius_product_option` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Volcando datos para la tabla yezzstore.sylius_product_option_value: ~8 rows (aproximadamente)
DELETE FROM `sylius_product_option_value`;
/*!40000 ALTER TABLE `sylius_product_option_value` DISABLE KEYS */;
INSERT INTO `sylius_product_option_value` (`id`, `option_id`, `code`) VALUES
	(1, 1, 'color-black'),
	(2, 1, 'color-white'),
	(3, 1, 'color-gray'),
	(15, 1, 'color-silver'),
	(16, 1, 'color-gunmetal'),
	(17, 1, 'color-pink'),
	(18, 1, 'color-blue'),
	(19, 1, 'color-red');
/*!40000 ALTER TABLE `sylius_product_option_value` ENABLE KEYS */;

-- Volcando estructura para tabla yezzstore.sylius_product_option_value_translation
DROP TABLE IF EXISTS `sylius_product_option_value_translation`;
CREATE TABLE IF NOT EXISTS `sylius_product_option_value_translation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `translatable_id` int(11) NOT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `sylius_product_option_value_translation_uniq_trans` (`translatable_id`,`locale`),
  KEY `IDX_8D4382DC2C2AC5D3` (`translatable_id`),
  CONSTRAINT `FK_8D4382DC2C2AC5D3` FOREIGN KEY (`translatable_id`) REFERENCES `sylius_product_option_value` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Volcando datos para la tabla yezzstore.sylius_product_option_value_translation: ~16 rows (aproximadamente)
DELETE FROM `sylius_product_option_value_translation`;
/*!40000 ALTER TABLE `sylius_product_option_value_translation` DISABLE KEYS */;
INSERT INTO `sylius_product_option_value_translation` (`id`, `translatable_id`, `value`, `locale`) VALUES
	(1, 1, 'Black', 'en_US'),
	(2, 2, 'White', 'en_US'),
	(3, 3, 'Gray', 'en_US'),
	(15, 15, 'Silver', 'en_US'),
	(16, 15, 'Plateado', 'es_ES'),
	(17, 16, 'Gun Metal', 'en_US'),
	(18, 16, 'Gun Metal', 'es_ES'),
	(19, 17, 'Pink', 'en_US'),
	(20, 17, 'Rosado', 'es_ES'),
	(21, 18, 'Blue', 'en_US'),
	(22, 18, 'Azul', 'es_ES'),
	(23, 19, 'Red', 'en_US'),
	(24, 19, 'Rojo', 'es_ES'),
	(25, 1, 'Negro', 'es_ES'),
	(26, 2, 'Blanco', 'es_ES'),
	(27, 3, 'Gris', 'es_ES');
/*!40000 ALTER TABLE `sylius_product_option_value_translation` ENABLE KEYS */;

-- Volcando estructura para tabla yezzstore.sylius_product_review
DROP TABLE IF EXISTS `sylius_product_review`;
CREATE TABLE IF NOT EXISTS `sylius_product_review` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `author_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `rating` int(11) NOT NULL,
  `comment` longtext COLLATE utf8_unicode_ci,
  `status` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_C7056A994584665A` (`product_id`),
  KEY `IDX_C7056A99F675F31B` (`author_id`),
  CONSTRAINT `FK_C7056A994584665A` FOREIGN KEY (`product_id`) REFERENCES `sylius_product` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_C7056A99F675F31B` FOREIGN KEY (`author_id`) REFERENCES `sylius_customer` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Volcando datos para la tabla yezzstore.sylius_product_review: ~0 rows (aproximadamente)
DELETE FROM `sylius_product_review`;
/*!40000 ALTER TABLE `sylius_product_review` DISABLE KEYS */;
INSERT INTO `sylius_product_review` (`id`, `product_id`, `author_id`, `title`, `rating`, `comment`, `status`, `created_at`, `updated_at`) VALUES
	(42, 64, 22, 'Great Product', 4, 'YEAH! SHOP', 'accepted', '2018-01-19 18:10:37', '2018-01-19 18:13:46');
/*!40000 ALTER TABLE `sylius_product_review` ENABLE KEYS */;

-- Volcando estructura para tabla yezzstore.sylius_product_taxon
DROP TABLE IF EXISTS `sylius_product_taxon`;
CREATE TABLE IF NOT EXISTS `sylius_product_taxon` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `taxon_id` int(11) NOT NULL,
  `position` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `product_taxon_idx` (`product_id`,`taxon_id`),
  KEY `IDX_169C6CD94584665A` (`product_id`),
  KEY `IDX_169C6CD9DE13F470` (`taxon_id`),
  CONSTRAINT `FK_169C6CD94584665A` FOREIGN KEY (`product_id`) REFERENCES `sylius_product` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_169C6CD9DE13F470` FOREIGN KEY (`taxon_id`) REFERENCES `sylius_taxon` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=96 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Volcando datos para la tabla yezzstore.sylius_product_taxon: ~9 rows (aproximadamente)
DELETE FROM `sylius_product_taxon`;
/*!40000 ALTER TABLE `sylius_product_taxon` DISABLE KEYS */;
INSERT INTO `sylius_product_taxon` (`id`, `product_id`, `taxon_id`, `position`) VALUES
	(85, 64, 1, 0),
	(86, 64, 5, 0),
	(87, 64, 7, 0),
	(88, 65, 1, 1),
	(89, 65, 5, 1),
	(90, 65, 7, 1),
	(91, 66, 1, 2),
	(92, 66, 5, 2),
	(93, 66, 7, 2),
	(94, 67, 5, 3),
	(95, 67, 7, 3);
/*!40000 ALTER TABLE `sylius_product_taxon` ENABLE KEYS */;

-- Volcando estructura para tabla yezzstore.sylius_product_translation
DROP TABLE IF EXISTS `sylius_product_translation`;
CREATE TABLE IF NOT EXISTS `sylius_product_translation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `translatable_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci,
  `meta_keywords` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `short_description` longtext COLLATE utf8_unicode_ci,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `sylius_product_translation_uniq_trans` (`translatable_id`,`locale`),
  UNIQUE KEY `UNIQ_105A9084180C698989D9B62` (`locale`,`slug`),
  KEY `IDX_105A9082C2AC5D3` (`translatable_id`),
  CONSTRAINT `FK_105A9082C2AC5D3` FOREIGN KEY (`translatable_id`) REFERENCES `sylius_product` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=75 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Volcando datos para la tabla yezzstore.sylius_product_translation: ~8 rows (aproximadamente)
DELETE FROM `sylius_product_translation`;
/*!40000 ALTER TABLE `sylius_product_translation` DISABLE KEYS */;
INSERT INTO `sylius_product_translation` (`id`, `translatable_id`, `name`, `slug`, `description`, `meta_keywords`, `meta_description`, `short_description`, `locale`) VALUES
	(67, 64, 'Yezz 4E4', 'yezz-4e4', 'Discover the power of the Quad-Core 1.2 GHz ARM Cortex-A7 processor that offers high performance with low energy consumption for most apps. With Android OS v6.0 Marshmallow you are able to manage and monitor the 512MB of RAM memory and 4GB of ROM memory expandable up to 64GB of your YEZZ 4E. Enjoy sharp graphics and images with the incredible 4-inch FWVGA screen with 480x854 resolution. Capture every moment with the YEZZ 4E’s 5MP and 2MP cameras. Manage the 1400 mAh battery so it can work more efficiently and effortless. The YEZZ 4E will make you stand out with elegant and stylish metallic colors: pink, white, blue and black.', NULL, NULL, '- Processor: Quad-Core 1.2 GHz ARM Cortex-A7\r\n- Cameras: 5MP (Primary) 2MP (Front camera)\r\n- Memory: 512MB (RAM) 4GB (ROM) expandable up to 64GB\r\n- Loaded with the Android OS v6.0 Marshmallow + 1400 mAh\r\n- Networks: 2G (850/900/1800/1900) 3G (850/1900) – Factory Unlocked Dual SIM smartphone. Compatible with: AT&T, T-Mobile, Cricket, MetroPCS, Straight Talk and other GSM operators.', 'en_US'),
	(68, 64, 'Yezz 4E4', 'yezz-4e4', 'Yezz 4E4', NULL, NULL, 'Yezz 4E4 Descripcion Corta', 'es_ES'),
	(69, 65, 'Yezz 5.5M', 'yezz-5-5m', 'The YEZZ 5.5M comes with a Quad-core 1.3GHz Cortez A7 processor that offers high performance for processing large blocks of data simultaneously. The 1GB (RAM) and 8GB (ROM) expandable up to 64GB memories will give you the storage you are looking for. The Android OS v7.0 Nougat comes installed with new features such as data saving and shared screen for apps. The best features of the YEZZ 5.5M are its cameras and display. With 13MP and 5MP cameras, your best moments will be registered for ever. The 5.5 inch display, with HD IPS resolution and 2.5D curved bezel glass of the YEZZ 5.5M offers extraordinary possibilities in terms of multimedia content visualization. The powerful 3000 mAh battery will be your best ally. Comes in black to add elegance to your style.', NULL, NULL, '•	Cameras: 13MP (Primary) 5MP (Front camera).\r\n•	5.5 inch display, with HD IPS resolution and 2.5D curved bezel glass.\r\n•	Memory: 1GB (RAM) + 8GB (ROM) expandable up to 64GB\r\n•	Android OS v7.0 Nougat + 3000 mAh battery.\r\n•	Networks: 2G (850/900/1800/1900) 3G (850/1900) – Factory Unlocked Dual SIM smartphone. Compatible with: AT&T, T-Mobile, Cricket, MetroPCS, Straight Talk and other GSM operators.', 'en_US'),
	(70, 65, 'Yezz 5.5M', 'yezz-5-5m', 'YEZZ 5.5M - Descripcion', NULL, NULL, 'YEZZ 5.5M - Descripcion Corta', 'es_ES'),
	(71, 66, 'Yezz 5E4', 'yezz-5e4', 'Yezz 5E4 Description', NULL, NULL, 'Yezz 5E4 Short Description', 'en_US'),
	(72, 66, 'Yezz 5E4', 'yezz-5e4', 'Yezz 5E4 Descripción', NULL, NULL, 'Yezz 5E4 Descripción corta', 'es_ES'),
	(73, 67, 'Yezz 5E LTE', 'yezz-5e-lte', 'With the 1.0 GHz Quad-Core processor you get an outstanding performance in terms of battery efficiency, reducing power consumption while still maintaining seamless visualization of multimedia content. Nothing will stop you with the 1GB (RAM) and 8GB (ROM) memory expandable up to 64GB that the YEZZ 5E LTE offers you. The Android OS v6.0 Marshmallow will make your life easier with newly added features. Immortalize your experiences with the rear 8MP camera and front 5MP camera of the YEZZ 5E LTE. Share and display your favorite multimedia content on the 5-inch FWVGA screen. Enjoy without worries with the 2000 mAh battery. Available in black and silver for eccentric personalities.', NULL, NULL, '- Connection speed 4G LTE \r\n- Memory: 1GB (RAM) and 8GB (ROM) memory expandable up to 64GB.\r\n- Cameras: 8MP (Primary) 5MP (Front camera).\r\n- Loaded with the Android OS v6.0 Marshmallow + 2000 mAh battery.\r\n- Networks: 3G (850/1900) 4G (B4/B7/B17) – Factory Unlocked Dual SIM smartphone. Compatible Carriers: AT&T, T-Mobile, Cricket, MetroPCS, Straight Talk and other GSM carriers. NOT Compatible: this phone will NOT work with CDMA Carriers like Verizon, Sprint, Virgin or Boost Mobile.', 'en_US'),
	(74, 67, 'Yezz 5E LTE', 'yezz-5e-lte', 'Yezz 5E LTE Descripción', NULL, NULL, 'Yezz 5E LTE Descripción corta', 'es_ES');
/*!40000 ALTER TABLE `sylius_product_translation` ENABLE KEYS */;

-- Volcando estructura para tabla yezzstore.sylius_product_variant
DROP TABLE IF EXISTS `sylius_product_variant`;
CREATE TABLE IF NOT EXISTS `sylius_product_variant` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `tax_category_id` int(11) DEFAULT NULL,
  `shipping_category_id` int(11) DEFAULT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `on_hold` int(11) NOT NULL,
  `on_hand` int(11) NOT NULL,
  `tracked` tinyint(1) NOT NULL,
  `width` double DEFAULT NULL,
  `height` double DEFAULT NULL,
  `depth` double DEFAULT NULL,
  `weight` double DEFAULT NULL,
  `position` int(11) NOT NULL,
  `shipping_required` tinyint(1) NOT NULL,
  `version` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_A29B52377153098` (`code`),
  KEY `IDX_A29B5234584665A` (`product_id`),
  KEY `IDX_A29B5239DF894ED` (`tax_category_id`),
  KEY `IDX_A29B5239E2D1A41` (`shipping_category_id`),
  CONSTRAINT `FK_A29B5234584665A` FOREIGN KEY (`product_id`) REFERENCES `sylius_product` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_A29B5239DF894ED` FOREIGN KEY (`tax_category_id`) REFERENCES `sylius_tax_category` (`id`) ON DELETE SET NULL,
  CONSTRAINT `FK_A29B5239E2D1A41` FOREIGN KEY (`shipping_category_id`) REFERENCES `sylius_shipping_category` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=347 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Volcando datos para la tabla yezzstore.sylius_product_variant: ~12 rows (aproximadamente)
DELETE FROM `sylius_product_variant`;
/*!40000 ALTER TABLE `sylius_product_variant` DISABLE KEYS */;
INSERT INTO `sylius_product_variant` (`id`, `product_id`, `tax_category_id`, `shipping_category_id`, `code`, `created_at`, `updated_at`, `on_hold`, `on_hand`, `tracked`, `width`, `height`, `depth`, `weight`, `position`, `shipping_required`, `version`) VALUES
	(333, 64, NULL, NULL, 'yezz-4e4-black', '2018-01-18 18:44:53', '2018-01-29 16:39:31', 0, 4998, 1, NULL, NULL, NULL, NULL, 0, 0, 8),
	(334, 64, NULL, NULL, 'yezz-4e4-white', '2018-01-18 18:44:53', '2018-01-31 14:18:53', 0, 149, 1, NULL, NULL, NULL, NULL, 1, 0, 5),
	(335, 64, NULL, NULL, 'yezz-4e4-pink', '2018-01-18 18:44:53', '2018-01-31 14:51:07', 0, 499, 1, NULL, NULL, NULL, NULL, 2, 0, 4),
	(336, 64, NULL, NULL, 'yezz-4e4-blue', '2018-01-18 18:44:53', '2018-01-18 21:25:42', 0, 0, 1, NULL, NULL, NULL, NULL, 3, 1, 3),
	(337, 65, NULL, NULL, 'yezz-5-5m', '2018-01-22 15:48:41', '2018-01-25 17:19:50', 0, 3498, 1, NULL, NULL, NULL, NULL, 0, 0, 5),
	(338, 64, NULL, NULL, 'yezz-4e4-gray', '2018-02-01 19:40:33', '2018-02-01 19:41:00', 0, 1000, 1, NULL, NULL, NULL, NULL, 4, 1, 2),
	(339, 66, NULL, NULL, 'yezz-5e4-black', '2018-02-02 19:38:31', '2018-02-06 13:43:51', 0, 500, 1, NULL, NULL, NULL, NULL, 0, 0, 3),
	(340, 66, NULL, NULL, 'yezz-5e4-white', '2018-02-02 19:38:31', '2018-02-02 19:39:16', 0, 500, 1, NULL, NULL, NULL, NULL, 1, 1, 2),
	(341, 66, NULL, NULL, 'yezz-5e4-gray', '2018-02-02 19:38:31', '2018-02-02 19:39:31', 0, 500, 1, NULL, NULL, NULL, NULL, 2, 1, 2),
	(342, 66, NULL, NULL, 'yezz-5e4-silver', '2018-02-02 19:38:31', '2018-02-02 19:39:44', 0, 500, 1, NULL, NULL, NULL, NULL, 3, 1, 2),
	(343, 66, NULL, NULL, 'yezz-5e4-gun-metal', '2018-02-02 19:38:31', '2018-02-02 19:39:55', 0, 500, 1, NULL, NULL, NULL, NULL, 4, 1, 2),
	(344, 66, NULL, NULL, 'yezz-5e4-pink', '2018-02-02 19:38:31', '2018-02-02 19:40:06', 0, 500, 1, NULL, NULL, NULL, NULL, 5, 1, 2),
	(345, 67, NULL, NULL, 'yezz-5e-lte-black', '2018-02-06 13:16:45', '2018-02-06 13:51:33', 0, 999, 1, NULL, NULL, NULL, NULL, 0, 0, 5),
	(346, 67, NULL, NULL, 'yezz-5e-lte-gray', '2018-02-06 13:16:45', '2018-02-06 15:12:39', 0, 999, 1, NULL, NULL, NULL, NULL, 1, 0, 5);
/*!40000 ALTER TABLE `sylius_product_variant` ENABLE KEYS */;

-- Volcando estructura para tabla yezzstore.sylius_product_variant_option_value
DROP TABLE IF EXISTS `sylius_product_variant_option_value`;
CREATE TABLE IF NOT EXISTS `sylius_product_variant_option_value` (
  `variant_id` int(11) NOT NULL,
  `option_value_id` int(11) NOT NULL,
  PRIMARY KEY (`variant_id`,`option_value_id`),
  KEY `IDX_76CDAFA13B69A9AF` (`variant_id`),
  KEY `IDX_76CDAFA1D957CA06` (`option_value_id`),
  CONSTRAINT `FK_76CDAFA13B69A9AF` FOREIGN KEY (`variant_id`) REFERENCES `sylius_product_variant` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_76CDAFA1D957CA06` FOREIGN KEY (`option_value_id`) REFERENCES `sylius_product_option_value` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Volcando datos para la tabla yezzstore.sylius_product_variant_option_value: ~11 rows (aproximadamente)
DELETE FROM `sylius_product_variant_option_value`;
/*!40000 ALTER TABLE `sylius_product_variant_option_value` DISABLE KEYS */;
INSERT INTO `sylius_product_variant_option_value` (`variant_id`, `option_value_id`) VALUES
	(333, 1),
	(334, 2),
	(335, 17),
	(336, 18),
	(338, 3),
	(339, 1),
	(340, 2),
	(341, 3),
	(342, 15),
	(343, 16),
	(344, 17),
	(345, 1),
	(346, 3);
/*!40000 ALTER TABLE `sylius_product_variant_option_value` ENABLE KEYS */;

-- Volcando estructura para tabla yezzstore.sylius_product_variant_translation
DROP TABLE IF EXISTS `sylius_product_variant_translation`;
CREATE TABLE IF NOT EXISTS `sylius_product_variant_translation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `translatable_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `sylius_product_variant_translation_uniq_trans` (`translatable_id`,`locale`),
  KEY `IDX_8DC18EDC2C2AC5D3` (`translatable_id`),
  CONSTRAINT `FK_8DC18EDC2C2AC5D3` FOREIGN KEY (`translatable_id`) REFERENCES `sylius_product_variant` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=355 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Volcando datos para la tabla yezzstore.sylius_product_variant_translation: ~21 rows (aproximadamente)
DELETE FROM `sylius_product_variant_translation`;
/*!40000 ALTER TABLE `sylius_product_variant_translation` DISABLE KEYS */;
INSERT INTO `sylius_product_variant_translation` (`id`, `translatable_id`, `name`, `locale`) VALUES
	(334, 333, 'Yezz 4E4', 'en_US'),
	(335, 334, 'Yezz 4E4', 'en_US'),
	(336, 335, 'Yezz 4E4', 'en_US'),
	(337, 336, 'Yezz 4E4', 'en_US'),
	(338, 333, 'Yezz 4E4', 'es_ES'),
	(339, 334, 'Yezz 4E4', 'es_ES'),
	(340, 335, 'Yezz 4E4', 'es_ES'),
	(341, 336, 'Yezz 4E4', 'es_ES'),
	(342, 337, NULL, 'en_US'),
	(343, 338, 'Yezz 4E4', 'en_US'),
	(344, 338, 'Yezz 4E4', 'es_ES'),
	(345, 339, 'Yezz 5E4', 'en_US'),
	(346, 340, 'Yezz 5E4', 'en_US'),
	(347, 341, 'Yezz 5E4', 'en_US'),
	(348, 342, 'Yezz 5E4', 'en_US'),
	(349, 343, 'Yezz 5E4', 'en_US'),
	(350, 344, 'Yezz 5E4', 'en_US'),
	(351, 345, 'Yezz 5E LTE', 'en_US'),
	(352, 346, 'Yezz 5E LTE', 'en_US'),
	(353, 346, 'Yezz 5E LTE', 'es_ES'),
	(354, 345, 'Yezz 5E LTE', 'es_ES');
/*!40000 ALTER TABLE `sylius_product_variant_translation` ENABLE KEYS */;

-- Volcando estructura para tabla yezzstore.sylius_promotion
DROP TABLE IF EXISTS `sylius_promotion`;
CREATE TABLE IF NOT EXISTS `sylius_promotion` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `priority` int(11) NOT NULL,
  `exclusive` tinyint(1) NOT NULL,
  `usage_limit` int(11) DEFAULT NULL,
  `used` int(11) NOT NULL,
  `coupon_based` tinyint(1) NOT NULL,
  `starts_at` datetime DEFAULT NULL,
  `ends_at` datetime DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_F157396377153098` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Volcando datos para la tabla yezzstore.sylius_promotion: ~1 rows (aproximadamente)
DELETE FROM `sylius_promotion`;
/*!40000 ALTER TABLE `sylius_promotion` DISABLE KEYS */;
INSERT INTO `sylius_promotion` (`id`, `code`, `name`, `description`, `priority`, `exclusive`, `usage_limit`, `used`, `coupon_based`, `starts_at`, `ends_at`, `created_at`, `updated_at`) VALUES
	(3, 'YEZZ4E4-PROMO', 'Promocion 4E4', NULL, 0, 0, 5, 1, 1, '2018-01-19 12:00:00', '2018-01-20 15:30:00', '2018-01-18 15:29:54', '2018-01-19 19:18:37');
/*!40000 ALTER TABLE `sylius_promotion` ENABLE KEYS */;

-- Volcando estructura para tabla yezzstore.sylius_promotion_action
DROP TABLE IF EXISTS `sylius_promotion_action`;
CREATE TABLE IF NOT EXISTS `sylius_promotion_action` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `promotion_id` int(11) DEFAULT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `configuration` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:array)',
  PRIMARY KEY (`id`),
  KEY `IDX_933D0915139DF194` (`promotion_id`),
  CONSTRAINT `FK_933D0915139DF194` FOREIGN KEY (`promotion_id`) REFERENCES `sylius_promotion` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Volcando datos para la tabla yezzstore.sylius_promotion_action: ~2 rows (aproximadamente)
DELETE FROM `sylius_promotion_action`;
/*!40000 ALTER TABLE `sylius_promotion_action` DISABLE KEYS */;
INSERT INTO `sylius_promotion_action` (`id`, `promotion_id`, `type`, `configuration`) VALUES
	(4, 3, 'order_percentage_discount', 'a:2:{s:6:"US_WEB";a:2:{s:6:"amount";i:1000;s:7:"filters";a:3:{s:18:"price_range_filter";a:2:{s:3:"min";N;s:3:"max";N;}s:13:"taxons_filter";a:1:{s:6:"taxons";a:0:{}}s:15:"products_filter";a:1:{s:8:"products";a:1:{i:0;s:8:"yezz-4e4";}}}}s:10:"percentage";d:0.1;}');
/*!40000 ALTER TABLE `sylius_promotion_action` ENABLE KEYS */;

-- Volcando estructura para tabla yezzstore.sylius_promotion_channels
DROP TABLE IF EXISTS `sylius_promotion_channels`;
CREATE TABLE IF NOT EXISTS `sylius_promotion_channels` (
  `promotion_id` int(11) NOT NULL,
  `channel_id` int(11) NOT NULL,
  PRIMARY KEY (`promotion_id`,`channel_id`),
  KEY `IDX_1A044F64139DF194` (`promotion_id`),
  KEY `IDX_1A044F6472F5A1AA` (`channel_id`),
  CONSTRAINT `FK_1A044F64139DF194` FOREIGN KEY (`promotion_id`) REFERENCES `sylius_promotion` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_1A044F6472F5A1AA` FOREIGN KEY (`channel_id`) REFERENCES `sylius_channel` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Volcando datos para la tabla yezzstore.sylius_promotion_channels: ~2 rows (aproximadamente)
DELETE FROM `sylius_promotion_channels`;
/*!40000 ALTER TABLE `sylius_promotion_channels` DISABLE KEYS */;
INSERT INTO `sylius_promotion_channels` (`promotion_id`, `channel_id`) VALUES
	(3, 1);
/*!40000 ALTER TABLE `sylius_promotion_channels` ENABLE KEYS */;

-- Volcando estructura para tabla yezzstore.sylius_promotion_coupon
DROP TABLE IF EXISTS `sylius_promotion_coupon`;
CREATE TABLE IF NOT EXISTS `sylius_promotion_coupon` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `promotion_id` int(11) DEFAULT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `usage_limit` int(11) DEFAULT NULL,
  `used` int(11) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `per_customer_usage_limit` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_B04EBA8577153098` (`code`),
  KEY `IDX_B04EBA85139DF194` (`promotion_id`),
  CONSTRAINT `FK_B04EBA85139DF194` FOREIGN KEY (`promotion_id`) REFERENCES `sylius_promotion` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Volcando datos para la tabla yezzstore.sylius_promotion_coupon: ~9 rows (aproximadamente)
DELETE FROM `sylius_promotion_coupon`;
/*!40000 ALTER TABLE `sylius_promotion_coupon` DISABLE KEYS */;
INSERT INTO `sylius_promotion_coupon` (`id`, `promotion_id`, `code`, `usage_limit`, `used`, `expires_at`, `created_at`, `updated_at`, `per_customer_usage_limit`) VALUES
	(1, 3, '2F091', 1, 0, '2018-01-31 00:00:00', '2018-01-18 15:30:46', '2018-01-18 15:42:49', 1),
	(2, 3, 'F98F2', 1, 0, '2018-01-31 00:00:00', '2018-01-18 15:30:46', '2018-01-18 15:42:55', 1),
	(3, 3, '28904', 1, 0, '2018-01-31 00:00:00', '2018-01-18 15:30:46', '2018-01-18 15:43:01', 1),
	(4, 3, 'AFFD3', 1, 0, '2018-01-31 00:00:00', '2018-01-18 15:30:46', '2018-01-18 15:43:07', 1),
	(5, 3, 'DEE57', 1, 0, '2018-01-31 00:00:00', '2018-01-18 15:30:46', '2018-01-18 15:43:13', 1),
	(6, 3, '3444CC', 1, 0, '2018-01-25 00:00:00', '2018-01-22 17:40:14', '2018-01-22 17:43:54', 1),
	(7, 3, '19E3C1', 1, 0, '2018-01-25 00:00:00', '2018-01-22 17:40:14', '2018-01-22 17:40:14', NULL),
	(8, 3, 'F6BF52', 1, 0, '2018-01-25 00:00:00', '2018-01-22 17:40:14', '2018-01-22 17:40:14', NULL),
	(9, 3, '56C09A', 1, 0, '2018-01-25 00:00:00', '2018-01-22 17:40:14', '2018-01-22 17:40:14', NULL);
/*!40000 ALTER TABLE `sylius_promotion_coupon` ENABLE KEYS */;

-- Volcando estructura para tabla yezzstore.sylius_promotion_order
DROP TABLE IF EXISTS `sylius_promotion_order`;
CREATE TABLE IF NOT EXISTS `sylius_promotion_order` (
  `order_id` int(11) NOT NULL,
  `promotion_id` int(11) NOT NULL,
  PRIMARY KEY (`order_id`,`promotion_id`),
  KEY `IDX_BF9CF6FB8D9F6D38` (`order_id`),
  KEY `IDX_BF9CF6FB139DF194` (`promotion_id`),
  CONSTRAINT `FK_BF9CF6FB139DF194` FOREIGN KEY (`promotion_id`) REFERENCES `sylius_promotion` (`id`),
  CONSTRAINT `FK_BF9CF6FB8D9F6D38` FOREIGN KEY (`order_id`) REFERENCES `sylius_order` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Volcando datos para la tabla yezzstore.sylius_promotion_order: ~1 rows (aproximadamente)
DELETE FROM `sylius_promotion_order`;
/*!40000 ALTER TABLE `sylius_promotion_order` DISABLE KEYS */;
/*!40000 ALTER TABLE `sylius_promotion_order` ENABLE KEYS */;

-- Volcando estructura para tabla yezzstore.sylius_promotion_rule
DROP TABLE IF EXISTS `sylius_promotion_rule`;
CREATE TABLE IF NOT EXISTS `sylius_promotion_rule` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `promotion_id` int(11) DEFAULT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `configuration` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:array)',
  PRIMARY KEY (`id`),
  KEY `IDX_2C188EA8139DF194` (`promotion_id`),
  CONSTRAINT `FK_2C188EA8139DF194` FOREIGN KEY (`promotion_id`) REFERENCES `sylius_promotion` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Volcando datos para la tabla yezzstore.sylius_promotion_rule: ~2 rows (aproximadamente)
DELETE FROM `sylius_promotion_rule`;
/*!40000 ALTER TABLE `sylius_promotion_rule` DISABLE KEYS */;
INSERT INTO `sylius_promotion_rule` (`id`, `promotion_id`, `type`, `configuration`) VALUES
	(7, 3, 'cart_quantity', 'a:1:{s:5:"count";i:3;}');
/*!40000 ALTER TABLE `sylius_promotion_rule` ENABLE KEYS */;

-- Volcando estructura para tabla yezzstore.sylius_province
DROP TABLE IF EXISTS `sylius_province`;
CREATE TABLE IF NOT EXISTS `sylius_province` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `country_id` int(11) NOT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `abbreviation` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_B5618FE477153098` (`code`),
  UNIQUE KEY `UNIQ_B5618FE4F92F3E705E237E06` (`country_id`,`name`),
  KEY `IDX_B5618FE4F92F3E70` (`country_id`),
  CONSTRAINT `FK_B5618FE4F92F3E70` FOREIGN KEY (`country_id`) REFERENCES `sylius_country` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Volcando datos para la tabla yezzstore.sylius_province: ~0 rows (aproximadamente)
DELETE FROM `sylius_province`;
/*!40000 ALTER TABLE `sylius_province` DISABLE KEYS */;
/*!40000 ALTER TABLE `sylius_province` ENABLE KEYS */;

-- Volcando estructura para tabla yezzstore.sylius_shipment
DROP TABLE IF EXISTS `sylius_shipment`;
CREATE TABLE IF NOT EXISTS `sylius_shipment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `method_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `state` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tracking` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_FD707B3319883967` (`method_id`),
  KEY `IDX_FD707B338D9F6D38` (`order_id`),
  CONSTRAINT `FK_FD707B3319883967` FOREIGN KEY (`method_id`) REFERENCES `sylius_shipping_method` (`id`),
  CONSTRAINT `FK_FD707B338D9F6D38` FOREIGN KEY (`order_id`) REFERENCES `sylius_order` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Volcando datos para la tabla yezzstore.sylius_shipment: ~0 rows (aproximadamente)
DELETE FROM `sylius_shipment`;
/*!40000 ALTER TABLE `sylius_shipment` DISABLE KEYS */;
/*!40000 ALTER TABLE `sylius_shipment` ENABLE KEYS */;

-- Volcando estructura para tabla yezzstore.sylius_shipping_category
DROP TABLE IF EXISTS `sylius_shipping_category`;
CREATE TABLE IF NOT EXISTS `sylius_shipping_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_B1D6465277153098` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Volcando datos para la tabla yezzstore.sylius_shipping_category: ~0 rows (aproximadamente)
DELETE FROM `sylius_shipping_category`;
/*!40000 ALTER TABLE `sylius_shipping_category` DISABLE KEYS */;
/*!40000 ALTER TABLE `sylius_shipping_category` ENABLE KEYS */;

-- Volcando estructura para tabla yezzstore.sylius_shipping_method
DROP TABLE IF EXISTS `sylius_shipping_method`;
CREATE TABLE IF NOT EXISTS `sylius_shipping_method` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category_id` int(11) DEFAULT NULL,
  `zone_id` int(11) NOT NULL,
  `tax_category_id` int(11) DEFAULT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `configuration` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:array)',
  `category_requirement` int(11) NOT NULL,
  `calculator` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `is_enabled` tinyint(1) NOT NULL,
  `position` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `archived_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_5FB0EE1177153098` (`code`),
  KEY `IDX_5FB0EE1112469DE2` (`category_id`),
  KEY `IDX_5FB0EE119F2C3FAB` (`zone_id`),
  KEY `IDX_5FB0EE119DF894ED` (`tax_category_id`),
  CONSTRAINT `FK_5FB0EE1112469DE2` FOREIGN KEY (`category_id`) REFERENCES `sylius_shipping_category` (`id`),
  CONSTRAINT `FK_5FB0EE119DF894ED` FOREIGN KEY (`tax_category_id`) REFERENCES `sylius_tax_category` (`id`) ON DELETE SET NULL,
  CONSTRAINT `FK_5FB0EE119F2C3FAB` FOREIGN KEY (`zone_id`) REFERENCES `sylius_zone` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Volcando datos para la tabla yezzstore.sylius_shipping_method: ~2 rows (aproximadamente)
DELETE FROM `sylius_shipping_method`;
/*!40000 ALTER TABLE `sylius_shipping_method` DISABLE KEYS */;
INSERT INTO `sylius_shipping_method` (`id`, `category_id`, `zone_id`, `tax_category_id`, `code`, `configuration`, `category_requirement`, `calculator`, `is_enabled`, `position`, `created_at`, `updated_at`, `archived_at`) VALUES
	(1, NULL, 1, NULL, 'ups', 'a:1:{s:6:"US_WEB";a:1:{s:6:"amount";i:3231;}}', 1, 'flat_rate', 1, 0, '2018-01-16 18:26:05', '2018-01-16 18:26:05', NULL),
	(2, NULL, 1, NULL, 'dhl_express', 'a:1:{s:6:"US_WEB";a:1:{s:6:"amount";i:9300;}}', 1, 'flat_rate', 1, 1, '2018-01-16 18:26:05', '2018-01-16 18:26:05', NULL),
	(3, NULL, 1, NULL, 'fedex', 'a:1:{s:6:"US_WEB";a:1:{s:6:"amount";i:9824;}}', 1, 'flat_rate', 1, 2, '2018-01-16 18:26:05', '2018-01-16 18:26:05', NULL),
	(4, NULL, 1, NULL, 'withdraw_personally_in_store', 'a:1:{s:6:"US_WEB";a:1:{s:6:"amount";i:0;}}', 1, 'flat_rate', 1, 3, '2018-01-17 18:22:21', '2018-01-17 18:22:22', NULL);
/*!40000 ALTER TABLE `sylius_shipping_method` ENABLE KEYS */;

-- Volcando estructura para tabla yezzstore.sylius_shipping_method_channels
DROP TABLE IF EXISTS `sylius_shipping_method_channels`;
CREATE TABLE IF NOT EXISTS `sylius_shipping_method_channels` (
  `shipping_method_id` int(11) NOT NULL,
  `channel_id` int(11) NOT NULL,
  PRIMARY KEY (`shipping_method_id`,`channel_id`),
  KEY `IDX_2D9833355F7D6850` (`shipping_method_id`),
  KEY `IDX_2D98333572F5A1AA` (`channel_id`),
  CONSTRAINT `FK_2D9833355F7D6850` FOREIGN KEY (`shipping_method_id`) REFERENCES `sylius_shipping_method` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_2D98333572F5A1AA` FOREIGN KEY (`channel_id`) REFERENCES `sylius_channel` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Volcando datos para la tabla yezzstore.sylius_shipping_method_channels: ~2 rows (aproximadamente)
DELETE FROM `sylius_shipping_method_channels`;
/*!40000 ALTER TABLE `sylius_shipping_method_channels` DISABLE KEYS */;
INSERT INTO `sylius_shipping_method_channels` (`shipping_method_id`, `channel_id`) VALUES
	(1, 1),
	(2, 1),
	(3, 1),
	(4, 1);
/*!40000 ALTER TABLE `sylius_shipping_method_channels` ENABLE KEYS */;

-- Volcando estructura para tabla yezzstore.sylius_shipping_method_translation
DROP TABLE IF EXISTS `sylius_shipping_method_translation`;
CREATE TABLE IF NOT EXISTS `sylius_shipping_method_translation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `translatable_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `sylius_shipping_method_translation_uniq_trans` (`translatable_id`,`locale`),
  KEY `IDX_2B37DB3D2C2AC5D3` (`translatable_id`),
  CONSTRAINT `FK_2B37DB3D2C2AC5D3` FOREIGN KEY (`translatable_id`) REFERENCES `sylius_shipping_method` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Volcando datos para la tabla yezzstore.sylius_shipping_method_translation: ~5 rows (aproximadamente)
DELETE FROM `sylius_shipping_method_translation`;
/*!40000 ALTER TABLE `sylius_shipping_method_translation` DISABLE KEYS */;
INSERT INTO `sylius_shipping_method_translation` (`id`, `translatable_id`, `name`, `description`, `locale`) VALUES
	(1, 1, 'UPS', 'Natus et eos delectus ea recusandae.', 'en_US'),
	(2, 2, 'DHL Express', 'Incidunt temporibus doloremque incidunt sit.', 'en_US'),
	(3, 3, 'FedEx', 'Nisi ex praesentium quaerat molestiae provident rerum dolores.', 'en_US'),
	(4, 4, 'Withdraw personally in store', NULL, 'en_US'),
	(5, 4, 'Retirar personalmente en tienda', NULL, 'es_ES');
/*!40000 ALTER TABLE `sylius_shipping_method_translation` ENABLE KEYS */;

-- Volcando estructura para tabla yezzstore.sylius_shop_user
DROP TABLE IF EXISTS `sylius_shop_user`;
CREATE TABLE IF NOT EXISTS `sylius_shop_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `username_canonical` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `enabled` tinyint(1) NOT NULL,
  `salt` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `last_login` datetime DEFAULT NULL,
  `password_reset_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password_requested_at` datetime DEFAULT NULL,
  `email_verification_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `verified_at` datetime DEFAULT NULL,
  `locked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  `credentials_expire_at` datetime DEFAULT NULL,
  `roles` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:array)',
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email_canonical` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_7C2B74809395C3F3` (`customer_id`),
  CONSTRAINT `FK_7C2B74809395C3F3` FOREIGN KEY (`customer_id`) REFERENCES `sylius_customer` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Volcando datos para la tabla yezzstore.sylius_shop_user: ~2 rows (aproximadamente)
DELETE FROM `sylius_shop_user`;
/*!40000 ALTER TABLE `sylius_shop_user` DISABLE KEYS */;
INSERT INTO `sylius_shop_user` (`id`, `customer_id`, `username`, `username_canonical`, `enabled`, `salt`, `password`, `last_login`, `password_reset_token`, `password_requested_at`, `email_verification_token`, `verified_at`, `locked`, `expires_at`, `credentials_expire_at`, `roles`, `email`, `email_canonical`, `created_at`, `updated_at`) VALUES
	(1, 1, 'shop@example.com', 'shop@example.com', 1, 'modfilvz90gkogccswc00w4ckscw0s4', 'RhZ8BvZccgWSDlbQx1R2IWt9O1/6CNwMu3A5mpCoH+KtgYQr5G3gP8zJxKbiC0kSyinYOEfwJhZbdbGhIEM6lA==', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'a:1:{i:0;s:9:"ROLE_USER";}', NULL, NULL, '2018-01-16 18:26:05', '2018-01-16 18:26:05'),
	(22, 22, 'juliohernandezs@gmail.com', 'juliohernandezs@gmail.com', 1, 'ql89y2h6eqs08w4gwckss8800s0cw0w', 'ERD3jsvzvWCy/SQ1eJscysfqEOdemkBlKEJ8fOvJRjzwegXCM924oFQrvTjepyc3Llz92ZETKKGDu1l2YlckcQ==', '2018-02-06 14:43:12', NULL, NULL, NULL, '2018-01-31 13:58:21', 0, NULL, NULL, 'a:1:{i:0;s:9:"ROLE_USER";}', NULL, NULL, '2018-01-16 18:41:33', '2018-02-06 14:43:12');
/*!40000 ALTER TABLE `sylius_shop_user` ENABLE KEYS */;

-- Volcando estructura para tabla yezzstore.sylius_taxon
DROP TABLE IF EXISTS `sylius_taxon`;
CREATE TABLE IF NOT EXISTS `sylius_taxon` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tree_root` int(11) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tree_left` int(11) NOT NULL,
  `tree_right` int(11) NOT NULL,
  `tree_level` int(11) NOT NULL,
  `position` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_CFD811CA77153098` (`code`),
  KEY `IDX_CFD811CAA977936C` (`tree_root`),
  KEY `IDX_CFD811CA727ACA70` (`parent_id`),
  CONSTRAINT `FK_CFD811CA727ACA70` FOREIGN KEY (`parent_id`) REFERENCES `sylius_taxon` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_CFD811CAA977936C` FOREIGN KEY (`tree_root`) REFERENCES `sylius_taxon` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Volcando datos para la tabla yezzstore.sylius_taxon: ~5 rows (aproximadamente)
DELETE FROM `sylius_taxon`;
/*!40000 ALTER TABLE `sylius_taxon` DISABLE KEYS */;
INSERT INTO `sylius_taxon` (`id`, `tree_root`, `parent_id`, `code`, `tree_left`, `tree_right`, `tree_level`, `position`, `created_at`, `updated_at`) VALUES
	(1, 1, NULL, 'category', 1, 8, 0, 0, '2018-01-16 18:26:05', '2018-01-16 18:26:05'),
	(5, 1, 1, 'cellphones', 2, 7, 1, 0, '2018-01-16 18:26:08', '2018-01-16 18:26:08'),
	(6, 1, 5, 'feature_phones', 3, 4, 2, 0, '2018-01-16 18:26:08', '2018-01-16 18:26:08'),
	(7, 1, 5, 'smartphones', 5, 6, 2, 1, '2018-01-16 18:26:08', '2018-01-16 18:26:08');
/*!40000 ALTER TABLE `sylius_taxon` ENABLE KEYS */;

-- Volcando estructura para tabla yezzstore.sylius_taxon_image
DROP TABLE IF EXISTS `sylius_taxon_image`;
CREATE TABLE IF NOT EXISTS `sylius_taxon_image` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `owner_id` int(11) NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `path` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_DBE52B287E3C61F9` (`owner_id`),
  CONSTRAINT `FK_DBE52B287E3C61F9` FOREIGN KEY (`owner_id`) REFERENCES `sylius_taxon` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Volcando datos para la tabla yezzstore.sylius_taxon_image: ~0 rows (aproximadamente)
DELETE FROM `sylius_taxon_image`;
/*!40000 ALTER TABLE `sylius_taxon_image` DISABLE KEYS */;
/*!40000 ALTER TABLE `sylius_taxon_image` ENABLE KEYS */;

-- Volcando estructura para tabla yezzstore.sylius_taxon_translation
DROP TABLE IF EXISTS `sylius_taxon_translation`;
CREATE TABLE IF NOT EXISTS `sylius_taxon_translation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `translatable_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `slug_uidx` (`locale`,`slug`),
  UNIQUE KEY `sylius_taxon_translation_uniq_trans` (`translatable_id`,`locale`),
  KEY `IDX_1487DFCF2C2AC5D3` (`translatable_id`),
  CONSTRAINT `FK_1487DFCF2C2AC5D3` FOREIGN KEY (`translatable_id`) REFERENCES `sylius_taxon` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Volcando datos para la tabla yezzstore.sylius_taxon_translation: ~8 rows (aproximadamente)
DELETE FROM `sylius_taxon_translation`;
/*!40000 ALTER TABLE `sylius_taxon_translation` DISABLE KEYS */;
INSERT INTO `sylius_taxon_translation` (`id`, `translatable_id`, `name`, `slug`, `description`, `locale`) VALUES
	(1, 1, 'Category', 'category', 'Category', 'en_US'),
	(5, 5, 'Cellphones', 'cellphones', 'Teléfonos celulares inteligentes', 'en_US'),
	(6, 6, 'Feature Phones', 'cellphones/feature-phone', 'Low-end mobile phones or limited features with respect to smart phones. They allow you to call or send text messages, take pictures, manage multimedia files, radio, and other functions.', 'en_US'),
	(7, 7, 'Smartphones', 'cellphones/smartphone', 'Mobile phones with touch screen, large data capacity, multiple smart applications, Camera, Radio, Internet via WiFi or 3G or 4G networks, and many more features', 'en_US'),
	(8, 5, 'Celulares', 'telefonos', 'Teléfonos celulares inteligentes', 'es_ES'),
	(9, 6, 'Teléfono Básico', 'telefonos/telefono-basico', 'Teléfonos móviles de baja gama o de características limitadas respecto a los teléfonos inteligentes. Te permiten llamar o enviar mensajes de texto, tomar fotografías, manejo archivos multimedia, radio, y otras funciones más.', 'es_ES'),
	(10, 1, 'Categoria', 'categoria', 'Categoria', 'es_ES'),
	(11, 7, 'Smartphones', 'telefonos/telefono-inteligente', 'Teléfonos móviles con pantalla táctil, gran capacidad de datos, multiples aplicaciones inteligentes, Cámara, Radio, Internet via WiFi o redes 3G o 4G, y muchas mas funcionalidades', 'es_ES');
/*!40000 ALTER TABLE `sylius_taxon_translation` ENABLE KEYS */;

-- Volcando estructura para tabla yezzstore.sylius_tax_category
DROP TABLE IF EXISTS `sylius_tax_category`;
CREATE TABLE IF NOT EXISTS `sylius_tax_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_221EB0BE77153098` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Volcando datos para la tabla yezzstore.sylius_tax_category: ~1 rows (aproximadamente)
DELETE FROM `sylius_tax_category`;
/*!40000 ALTER TABLE `sylius_tax_category` DISABLE KEYS */;
INSERT INTO `sylius_tax_category` (`id`, `code`, `name`, `description`, `created_at`, `updated_at`) VALUES
	(1, 'tax-regular', 'Tax Regular', NULL, '2018-01-22 17:49:08', '2018-01-22 17:49:08');
/*!40000 ALTER TABLE `sylius_tax_category` ENABLE KEYS */;

-- Volcando estructura para tabla yezzstore.sylius_tax_rate
DROP TABLE IF EXISTS `sylius_tax_rate`;
CREATE TABLE IF NOT EXISTS `sylius_tax_rate` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category_id` int(11) NOT NULL,
  `zone_id` int(11) NOT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `amount` decimal(10,5) NOT NULL,
  `included_in_price` tinyint(1) NOT NULL,
  `calculator` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_3CD86B2E77153098` (`code`),
  KEY `IDX_3CD86B2E12469DE2` (`category_id`),
  KEY `IDX_3CD86B2E9F2C3FAB` (`zone_id`),
  CONSTRAINT `FK_3CD86B2E12469DE2` FOREIGN KEY (`category_id`) REFERENCES `sylius_tax_category` (`id`),
  CONSTRAINT `FK_3CD86B2E9F2C3FAB` FOREIGN KEY (`zone_id`) REFERENCES `sylius_zone` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Volcando datos para la tabla yezzstore.sylius_tax_rate: ~1 rows (aproximadamente)
DELETE FROM `sylius_tax_rate`;
/*!40000 ALTER TABLE `sylius_tax_rate` DISABLE KEYS */;
/*!40000 ALTER TABLE `sylius_tax_rate` ENABLE KEYS */;

-- Volcando estructura para tabla yezzstore.sylius_user_oauth
DROP TABLE IF EXISTS `sylius_user_oauth`;
CREATE TABLE IF NOT EXISTS `sylius_user_oauth` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `identifier` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `access_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `refresh_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_provider` (`user_id`,`provider`),
  KEY `IDX_C3471B78A76ED395` (`user_id`),
  CONSTRAINT `FK_C3471B78A76ED395` FOREIGN KEY (`user_id`) REFERENCES `sylius_shop_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Volcando datos para la tabla yezzstore.sylius_user_oauth: ~0 rows (aproximadamente)
DELETE FROM `sylius_user_oauth`;
/*!40000 ALTER TABLE `sylius_user_oauth` DISABLE KEYS */;
/*!40000 ALTER TABLE `sylius_user_oauth` ENABLE KEYS */;

-- Volcando estructura para tabla yezzstore.sylius_zone
DROP TABLE IF EXISTS `sylius_zone`;
CREATE TABLE IF NOT EXISTS `sylius_zone` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(8) COLLATE utf8_unicode_ci NOT NULL,
  `scope` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_7BE2258E77153098` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Volcando datos para la tabla yezzstore.sylius_zone: ~0 rows (aproximadamente)
DELETE FROM `sylius_zone`;
/*!40000 ALTER TABLE `sylius_zone` DISABLE KEYS */;
INSERT INTO `sylius_zone` (`id`, `code`, `name`, `type`, `scope`) VALUES
	(1, 'US', 'United States of America', 'country', 'all');
/*!40000 ALTER TABLE `sylius_zone` ENABLE KEYS */;

-- Volcando estructura para tabla yezzstore.sylius_zone_member
DROP TABLE IF EXISTS `sylius_zone_member`;
CREATE TABLE IF NOT EXISTS `sylius_zone_member` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `belongs_to` int(11) DEFAULT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_E8B5ABF34B0E929B77153098` (`belongs_to`,`code`),
  KEY `IDX_E8B5ABF34B0E929B` (`belongs_to`),
  CONSTRAINT `FK_E8B5ABF34B0E929B` FOREIGN KEY (`belongs_to`) REFERENCES `sylius_zone` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Volcando datos para la tabla yezzstore.sylius_zone_member: ~0 rows (aproximadamente)
DELETE FROM `sylius_zone_member`;
/*!40000 ALTER TABLE `sylius_zone_member` DISABLE KEYS */;
INSERT INTO `sylius_zone_member` (`id`, `belongs_to`, `code`) VALUES
	(1, 1, 'US');
/*!40000 ALTER TABLE `sylius_zone_member` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
