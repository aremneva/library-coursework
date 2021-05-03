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
-- Table structure for table `staff`
--

DROP TABLE IF EXISTS `staff`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `staff` (
  `idStaff` int NOT NULL AUTO_INCREMENT,
  `idPost` int NOT NULL,
  `Familia` varchar(45) DEFAULT NULL,
  `Imya` varchar(45) DEFAULT NULL,
  `Otchestvo` varchar(45) DEFAULT NULL,
  `Vozrast` int DEFAULT NULL,
  `Pol` varchar(5) DEFAULT NULL,
  `Adress` varchar(150) DEFAULT NULL,
  `Phone` varchar(45) DEFAULT NULL,
  `Pasport` int DEFAULT NULL,
  `coef` float DEFAULT NULL,
  `id_login` int DEFAULT NULL,
  PRIMARY KEY (`idStaff`),
  KEY `idPost_idx` (`idPost`),
  KEY `id_login_idx` (`id_login`),
  CONSTRAINT `id_login` FOREIGN KEY (`id_login`) REFERENCES `login` (`id_login`),
  CONSTRAINT `idPost` FOREIGN KEY (`idPost`) REFERENCES `post` (`idPost`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `staff`
--

LOCK TABLES `staff` WRITE;
/*!40000 ALTER TABLE `staff` DISABLE KEYS */;
INSERT INTO `staff` VALUES (1,7,'Рустамов','Альфредо','Ильич',21,'М','ул. Рождественский б-р, дом 162, квартира 536','+7 (988) 332-82-81',46323644,1.2,7),(2,2,'Тюрина','Джилл','Богдановна',34,'Ж','ул. Трехсвятительский М. пер, дом 169, квартира 880','+7 (930) 780-38-07',23515643,1,8),(3,2,'Щербаков','Варий','Кириллович',41,'М','ул. Песчаная пл, дом 194, квартира 284','+7 (940) 878-32-03',75345745,1.1,9),(4,1,'Соколович','Арисхан','Алексеевич',22,'М','ул. Санаторий Заельцовский Бор п, дом 161, квартира 174','+7 (950) 121-54-80',45763575,1,NULL),(5,4,'Кудрявцев','Флэг','Петрович',26,'М','ул. Симферопольская, дом 145, квартира 568','+7 (957) 833-92-62',47473765,1.2,NULL),(6,4,'Воронина','Джини','Ярославовна',28,'Ж','ул. Танкистов 3-й пер, дом 186, квартира 911','+7 (947) 257-14-41',76966786,1.1,NULL),(7,2,'Москаленко','Щило','Сергеевич',37,'М','ул. Двинцев, дом 153, квартира 578','+7 (971) 107-15-25',97865754,1.6,NULL),(8,6,'Давыдова','Соли','Анатольевна',35,'Ж','ул. Серебряническая наб, дом 60, квартира 182','+7 (902) 914-47-35',45879697,1,NULL),(9,4,'Лютова','Фрея','Васильевна',32,'Ж','ул. Солнечногорский проезд, дом 16, квартира 489','+7 (934) 594-01-26',58549765,1,NULL),(10,3,'Баженова','Лизел','Федоровна',33,'Ж','ул. Барышиха, дом 183, квартира 896','+7 (964) 897-61-00',47879663,1,NULL),(11,3,'Макаров','Азуболу','Валентинович',47,'М','ул. Гостиничная, дом 80, квартира 38','+7 (920) 846-40-50',35654879,1,NULL),(12,5,'Филиппов','Микдам','Евгеньевич',45,'М','ул. Почтовый 1-й пер, дом 135, квартира 825','+7 (970) 625-21-55',48769468,1,NULL);
/*!40000 ALTER TABLE `staff` ENABLE KEYS */;
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
