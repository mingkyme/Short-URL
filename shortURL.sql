-- --------------------------------------------------------
-- 호스트:                          mingky.me
-- 서버 버전:                        10.3.25-MariaDB-0ubuntu0.20.04.1 - Ubuntu 20.04
-- 서버 OS:                        debian-linux-gnu
-- HeidiSQL 버전:                  11.0.0.5919
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- url 데이터베이스 구조 내보내기
DROP DATABASE IF EXISTS `url`;
CREATE DATABASE IF NOT EXISTS `url` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `url`;

-- 테이블 url.url 구조 내보내기
DROP TABLE IF EXISTS `url`;
CREATE TABLE IF NOT EXISTS `url` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `url` varchar(10) DEFAULT NULL,
  `data` text DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- 테이블 데이터 url.url:~0 rows (대략적) 내보내기
DELETE FROM `url`;
/*!40000 ALTER TABLE `url` DISABLE KEYS */;
INSERT INTO `url` (`id`, `url`, `data`) VALUES
	(1, 'rlaalsrl', 'https://www.mingky.me/');
/*!40000 ALTER TABLE `url` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
