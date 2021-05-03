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
-- Table structure for table `books`
--

DROP TABLE IF EXISTS `books`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `books` (
  `idBooks` int NOT NULL AUTO_INCREMENT,
  `author` varchar(45) DEFAULT NULL,
  `idGen` int NOT NULL,
  `idPub` int NOT NULL,
  `nameBook` varchar(60) DEFAULT NULL,
  `year` int DEFAULT NULL,
  `id_storage` int DEFAULT NULL,
  PRIMARY KEY (`idBooks`),
  KEY `idGen_idx` (`idGen`),
  KEY `idPub_idx` (`idPub`),
  KEY `id_storage_idx` (`id_storage`),
  CONSTRAINT `id_storage` FOREIGN KEY (`id_storage`) REFERENCES `storage` (`id_storage`),
  CONSTRAINT `idGen` FOREIGN KEY (`idGen`) REFERENCES `genre` (`idGenre`),
  CONSTRAINT `idPub` FOREIGN KEY (`idPub`) REFERENCES `publishers` (`idPub`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `books`
--

LOCK TABLES `books` WRITE;
/*!40000 ALTER TABLE `books` DISABLE KEYS */;
INSERT INTO `books` VALUES (1,'Л. Толстой',8,1,'Анна Каренина',1878,NULL),(2,'Р. Брэдбери',12,4,'451° по Фаренгейту',1953,1),(3,'Дж. Оруэлл',12,3,'1984',1949,NULL),(4,'Р. Эллисон',12,1,'Человек-невидимка',1952,3),(5,'Дж. Свифт',13,2,'Путешествия ГулливерПутешествия Гулливер',1726,NULL),(6,'С. Кинг',11,3,'Зеленая миля',1999,2),(7,'Н. Гоголь',14,5,'Мертвые души',1842,1),(8,'Ф. Достоевский',14,7,'Братья Карамазовы',1880,5),(9,'А. Грин',13,12,'Алые паруса',1923,NULL),(10,'И. Ефремов',7,21,'Таис Афинская',1973,4),(11,'Д. Фонвизин',4,15,'Недоросль',1783,1),(12,'Д. Киз',6,3,'Цветы для Элджернона',1959,6),(13,'С. Кинг',9,9,'Сияние',1977,NULL),(14,'Ж. Диккер',3,15,'Правда о деле Гарри Квеберта',2012,8),(15,'Д. Дефо',10,11,'Робинзон Крузо',1719,9),(16,'Л. Кэрролл',13,21,'Алиса в Стране чудес',1865,1),(17,'М. Шолохов',6,6,'Судьба человека',1957,11),(18,'Ф. Достоевский',6,2,'Преступление и наказание',1866,11),(19,'У. Шекспир',5,7,'Гамлет',1600,12),(20,'М. Булгаков',8,4,'Мастер и Маргарита',1966,12),(22,'Мигель де Сервантес',14,3,'Дон Кихот',1605,NULL);
/*!40000 ALTER TABLE `books` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-05-03 13:23:38
