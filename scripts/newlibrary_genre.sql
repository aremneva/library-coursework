-- MySQL dump 10.13  Distrib 8.0.23, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: newlibrary
-- ------------------------------------------------------
-- Server version	8.0.23

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `genre`
--

DROP TABLE IF EXISTS `genre`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `genre` (
  `idGenre` int NOT NULL AUTO_INCREMENT,
  `nameGen` varchar(60) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`idGenre`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `genre`
--

LOCK TABLES `genre` WRITE;
/*!40000 ALTER TABLE `genre` DISABLE KEYS */;
INSERT INTO `genre` VALUES (1,'Авангардная литература','Характеризуется нарушением канонов и языковыми и сюжетными экспериментами.'),(2,'Боевик','Ориентирован преимущественно на мужскую аудиторию. Основа сюжета — драки, погони.'),(3,'Детектив','Основная сюжетная линия — раскрытие преступления.'),(4,'Комедия','вид драмы, в котором характеры, ситуации и действия представлены в смешных формах или проникнуты комическим.'),(5,'Трагедия','произведение, в основу которого положен непримиримый жизненный конфликт, ведущий к страданиям и гибели героев.'),(6,'Драма','пьеса с острым конфликтом, который, в отличие от трагического, не столь возвышен, более приземлен, обычен и так или иначе разрешим.'),(7,'Исторический роман','Время действия — прошлое. Сюжет, как правило, привязан к значимым историческим событиям.'),(8,'Любовный роман','Герои обретают любовь.'),(9,'Мистика','Основа сюжета — сверхъестественные события.'),(10,'Приключения','Герои ввязываются в авантюру и/или отправляются в рискованное путешествие.'),(11,'Триллер/ужасы','Героям грозит смертельная опасность, от которой они пытаются избавиться.'),(12,'Фантастика','Сюжет закручивается в гипотетическом будущем или в параллельном мире. Одна из разновидностей фантастики — альтернативная история.'),(13,'Фэнтези/сказки','Основными признаками жанра являются сказочные миры, волшебство, невиданные существа, говорящие животные и пр. Часто основывается на фольк...'),(14,'Роман','Большое повествовательное художественное произведение со сложным сюжетом.');
/*!40000 ALTER TABLE `genre` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-05-03 13:23:40
