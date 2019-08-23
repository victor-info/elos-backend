-- --------------------------------------------------------
-- Servidor:                     localhost
-- Versão do servidor:           5.7.24 - MySQL Community Server (GPL)
-- OS do Servidor:               Win64
-- HeidiSQL Versão:              9.5.0.5332
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Copiando estrutura do banco de dados para apielos
CREATE DATABASE IF NOT EXISTS `apielos` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;
USE `apielos`;

-- Copiando estrutura para tabela apielos.api
CREATE TABLE IF NOT EXISTS `api` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Copiando dados para a tabela apielos.api: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `api` DISABLE KEYS */;
/*!40000 ALTER TABLE `api` ENABLE KEYS */;

-- Copiando estrutura para tabela apielos.tags
CREATE TABLE IF NOT EXISTS `tags` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(191) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `title` (`title`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Copiando dados para a tabela apielos.tags: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `tags` DISABLE KEYS */;
/*!40000 ALTER TABLE `tags` ENABLE KEYS */;

-- Copiando estrutura para tabela apielos.tools
CREATE TABLE IF NOT EXISTS `tools` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `slug` varchar(191) DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `published` tinyint(1) DEFAULT '0',
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_key` (`user_id`),
  CONSTRAINT `tools_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4;

-- Copiando dados para a tabela apielos.tools: ~19 rows (aproximadamente)
/*!40000 ALTER TABLE `tools` DISABLE KEYS */;
INSERT INTO `tools` (`id`, `user_id`, `title`, `slug`, `link`, `description`, `published`, `created`, `modified`) VALUES
	(8, NULL, NULL, NULL, NULL, NULL, 0, '2019-08-23 21:06:04', '2019-08-23 21:06:04'),
	(9, NULL, NULL, NULL, NULL, NULL, 0, '2019-08-23 21:08:49', '2019-08-23 21:08:49'),
	(10, NULL, 'gweqfgqwdwqd', NULL, NULL, NULL, 0, '2019-08-23 21:19:02', '2019-08-23 21:19:02'),
	(11, NULL, 'gweqfgqwdwqd', NULL, 'dqwdqwdqw', 'dwqdqwd', 0, '2019-08-23 21:19:38', '2019-08-23 21:19:38'),
	(12, NULL, '1', NULL, '2', '3', 0, '2019-08-23 21:20:16', '2019-08-23 21:20:16'),
	(13, NULL, '1', NULL, '2', '4', 0, '2019-08-23 21:20:28', '2019-08-23 21:20:28'),
	(14, NULL, '1', NULL, '2', '4', 0, '2019-08-23 21:26:18', '2019-08-23 21:26:18'),
	(15, NULL, 'fqdwdwqd', NULL, 'qwdqwdwq', 'dqwdwqdq', 0, '2019-08-23 21:33:51', '2019-08-23 21:33:51'),
	(16, NULL, 'cqwcwqwcqw', NULL, 'cqwcqwcqw', 'cwqcqw', 0, '2019-08-23 21:37:25', '2019-08-23 21:37:25'),
	(17, NULL, 'dwqdwq', NULL, 'dqwdqwd', 'wqdqwd', 0, '2019-08-23 21:39:07', '2019-08-23 21:39:07'),
	(18, NULL, 'dqwdwq', NULL, 'qwdqwdwqd', 'qwdqwdqwd', 0, '2019-08-23 21:48:19', '2019-08-23 21:48:19'),
	(19, NULL, 'dwqdwqd', NULL, 'fqwdwqd', 'gwerfwefcqw', 0, '2019-08-23 21:49:23', '2019-08-23 21:49:23'),
	(20, NULL, 'dwqdwqd', NULL, 'dwqdwqd', 'wqdwqdqw', 0, '2019-08-23 21:49:37', '2019-08-23 21:49:37'),
	(21, NULL, 'dwqdwqd', NULL, 'dwqdwqd', 'wqdwqdqw', 0, '2019-08-23 21:49:40', '2019-08-23 21:49:40'),
	(22, NULL, 'gqwedwqd', NULL, 'qwfwqdwq', 'fqwdqw', 0, '2019-08-23 21:52:20', '2019-08-23 21:52:20'),
	(23, NULL, 'dwqdqwdwq', NULL, 'dwqdwqdqw', 'dwqdqwd', 0, '2019-08-23 21:55:46', '2019-08-23 21:55:46'),
	(24, NULL, 'gweffwqedf', NULL, 'wqdwqdqw', 'dqwdqwdwq', 0, '2019-08-23 21:56:37', '2019-08-23 21:56:37'),
	(25, NULL, 'dwqdwqd', NULL, 'gfwqdwq', 'dwqdwq', 0, '2019-08-23 21:59:35', '2019-08-23 21:59:35'),
	(26, NULL, 'fwqdwqdwq', NULL, 'fwqdwqd', 'gerfgserwf', 0, '2019-08-23 22:00:11', '2019-08-23 22:00:11');
/*!40000 ALTER TABLE `tools` ENABLE KEYS */;

-- Copiando estrutura para tabela apielos.tools_tags
CREATE TABLE IF NOT EXISTS `tools_tags` (
  `tool_id` int(11) NOT NULL,
  `tag_id` int(11) NOT NULL,
  PRIMARY KEY (`tool_id`,`tag_id`),
  KEY `tag_key` (`tag_id`),
  CONSTRAINT `tools_tags_ibfk_1` FOREIGN KEY (`tag_id`) REFERENCES `tags` (`id`),
  CONSTRAINT `tools_tags_ibfk_2` FOREIGN KEY (`tool_id`) REFERENCES `tools` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Copiando dados para a tabela apielos.tools_tags: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `tools_tags` DISABLE KEYS */;
/*!40000 ALTER TABLE `tools_tags` ENABLE KEYS */;

-- Copiando estrutura para tabela apielos.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Copiando dados para a tabela apielos.users: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
