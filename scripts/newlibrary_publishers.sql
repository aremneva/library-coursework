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
-- Table structure for table `publishers`
--

DROP TABLE IF EXISTS `publishers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `publishers` (
  `idPub` int NOT NULL AUTO_INCREMENT,
  `namePub` varchar(60) DEFAULT NULL,
  `city` varchar(60) DEFAULT NULL,
  `adress` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`idPub`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `publishers`
--

LOCK TABLES `publishers` WRITE;
/*!40000 ALTER TABLE `publishers` DISABLE KEYS */;
INSERT INTO `publishers` VALUES (1,'ЭКСМО','Москва','Соболева ул., д. 7'),(2,'АСТ','Москва','Ленина пр., д. 49'),(3,'РОСМЭН','Санкт-Петербург','Магнитогорская ул., д. 11, лит. М'),(4,'АЛЬФА-КНИГА','Москва','Вадковский пер., д. 18А'),(5,'ЦЕНТРПОЛИГРАФ','Москва','Каширское шоссе, д. 1, стр. 2'),(6,'АЗБУКА – АТТИКУС','Москва','Дербеневская набережная, д. 11, Бизнес Центр'),(7,'РИПОЛ-КЛАССИК','Москва','Варшавское шоссе, д. 12 А, стр. 1, комн. 309'),(8,'ЗАХАРОВ',NULL,'ул. Зорге, д. 1'),(9,'ВЕЧЕ','Москва','Пресненская наб., д.6'),(10,'АЛГОРИТМ','Москва','ул. Шереметьевская, д. 47'),(11,'Альпина Паблишер','Москва','125565, Москва, а/я 4'),(12,'Аванта +','Москва','1-я ул.Энтузиастов, д.15'),(13,'АКВИЛЕГИЯ-М','Москва','ул. Павловская, д. 7.'),(14,'Арка','Санкт-Петербург','Нижегородская ул., 29-33'),(15,'Белый Город','Москва','Столовый пер., дом 4, офис 9'),(16,'Вита Нова','Санкт-Петербург','ул. Алтуфьевское шоссе, 48 корп. 1'),(17,'ДЕТГИЗ-Лицей','Санкт-Петербург','Малая Семёновская, 9к3'),(18,'Литера','Санкт-Петербург','123060, Россия, г. Москва, а/я 28'),(19,'Русич','Смоленск','1905 года ул., д. 8'),(20,'Сократ','Екатеринбург','Рязанский пр-кт, д.86/1, стр.3, оф.219'),(21,'Вира-М','Санкт-Петербург','Набережная реки Мойки, д. 45, пом. 214'),(22,'Равновесие','Москва','Верхняя Первомайская ул., д. 49А'),(23,'Бука','Москва','Огородный пер., д. 23'),(24,'ЭНАС','Москва','Набережная реки Фонтанки, д. 78'),(25,'Центр «Нарния» ','Москва','Новоселов ул., д. 8, лит. В, а/я 94');
/*!40000 ALTER TABLE `publishers` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-05-03 13:23:37
