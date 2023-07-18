-- --------------------------------------------------------
-- Máy chủ:                      127.0.0.1
-- Server version:               10.4.25-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win64
-- HeidiSQL Phiên bản:           12.1.0.6537
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

-- Dumping structure for table ticket_management_system.tickets
CREATE TABLE IF NOT EXISTS `tickets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `time` datetime NOT NULL,
  `price` double(12,2) NOT NULL,
  `type` varchar(100) NOT NULL,
  `detail` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table ticket_management_system.tickets: ~5 rows (approximately)
INSERT INTO `tickets` (`id`, `time`, `price`, `type`, `detail`) VALUES
	(1, '2023-07-17 14:30:00', 50.00, 'General Admission', 'Event: Music Festival'),
	(2, '2023-08-05 10:00:00', 20.00, 'Student', 'Event: Museum Exhibition, Student ID: 1234'),
	(3, '2023-09-02 19:00:00', 150.00, 'VIP', 'Event: Theatre Play, Seat: A2'),
	(4, '2023-10-12 18:00:00', 75.00, 'Senior Citizen', 'Event: Symphony Orchestra, Seat: B5'),
	(5, '2023-08-05 14:30:00', 20.00, 'Student', 'Event: Museum Exhibition, Student ID: 1224');

-- Dumping structure for table ticket_management_system.users
CREATE TABLE IF NOT EXISTS `users` (
  `username` varchar(100) NOT NULL,
  `password` char(68) NOT NULL,
  `enabled` tinyint(1) NOT NULL DEFAULT 1,
  `isAdmin` tinyint(4) NOT NULL DEFAULT 0,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table ticket_management_system.users: ~7 rows (approximately)
INSERT INTO `users` (`username`, `password`, `enabled`, `isAdmin`) VALUES
	('admin', '$2a$10$L/MZY0GLh3jSIZGTVpRMnOHJCR/qt8Q0ZaZ23ZaHm/C6NnMizAdOq', 1, 1),
	('concac', '$2a$10$fhfHMH4TcS69xY2GRvE.F.b3VhliL4cnGemzMk0INN9KrD456gPBW', 1, 0),
	('haidzz', '$2a$10$nlizPF/5E2XKzUvbUOgM9OMpJkU..yfMXBGtLlfj5iXpsktFT0Bdm', 1, 1),
	('membertest', '$2a$10$qNB.hgFYWym87CQpRV1GI.NmrjxaU41lPQ6UkSjxM.GH6em5loJfW', 1, 1),
	('user', '$2a$10$nlizPF/5E2XKzUvbUOgM9OMpJkU..yfMXBGtLlfj5iXpsktFT0Bdm', 1, 0),
	('user1', '$2a$10$nlizPF/5E2XKzUvbUOgM9OMpJkU..yfMXBGtLlfj5iXpsktFT0Bdm', 1, 0),
	('usouso', '$2a$10$KsUQk.S3p4b95k0PeFRhSOZ1fJqEMz.XvBzXiWj2kfQxyeC3eY906', 1, 0);

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
