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
-- Table structure for table `issuedbooks`
--

DROP TABLE IF EXISTS `issuedbooks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `issuedbooks` (
  `idIssued` int NOT NULL AUTO_INCREMENT,
  `idBooks` int NOT NULL,
  `id_library_card` int NOT NULL,
  `idStaff` int NOT NULL,
  `issuedDate` date DEFAULT NULL,
  `returnDate` date DEFAULT NULL,
  `returnDateReal` date DEFAULT NULL,
  PRIMARY KEY (`idIssued`),
  KEY `idStaff_idx` (`idStaff`),
  KEY `id_library_card_idx` (`id_library_card`),
  KEY `idBooks` (`idBooks`),
  CONSTRAINT `id_library_card` FOREIGN KEY (`id_library_card`) REFERENCES `library_card` (`id_library_card`),
  CONSTRAINT `idBooks` FOREIGN KEY (`idBooks`) REFERENCES `books` (`idBooks`),
  CONSTRAINT `idStaff` FOREIGN KEY (`idStaff`) REFERENCES `staff` (`idStaff`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `issuedbooks`
--

LOCK TABLES `issuedbooks` WRITE;
/*!40000 ALTER TABLE `issuedbooks` DISABLE KEYS */;
INSERT INTO `issuedbooks` VALUES (1,20,5,1,'2019-06-01','2019-06-12','2019-06-11'),(2,7,1,2,'2019-09-17','2019-10-10','2019-10-18'),(3,3,6,6,'2019-11-19','2019-11-27','2019-11-27'),(4,14,7,2,'2019-12-22','2020-01-05','2019-12-28'),(5,19,9,7,'2020-02-20','2020-03-05','2020-03-15'),(6,9,3,4,'2020-03-13','2020-03-28','2020-04-01'),(7,5,5,5,'2020-04-11','2020-04-24','2020-04-20'),(8,12,1,2,'2020-04-04','2020-04-20','2020-04-17'),(9,2,2,10,'2020-04-23','2020-05-01','2020-05-02'),(10,17,10,11,'2020-05-12','2020-05-27','2020-05-23'),(11,8,15,4,'2020-03-11','2020-04-29','2020-04-13'),(12,6,12,6,'2020-07-12','2020-08-21','2020-07-25'),(13,1,4,7,'2020-04-26','2020-05-10','2020-08-05'),(14,16,6,4,'2020-05-12','2020-05-20','2020-05-19'),(15,10,8,2,'2020-06-11','2020-06-29','2020-06-23'),(16,4,9,7,'2020-08-21','2020-09-15','2020-09-11'),(17,7,3,3,'2020-09-01','2020-09-23','2020-09-20'),(18,3,1,1,'2020-09-05','2020-09-27',NULL),(19,5,4,5,'2021-03-06','2021-03-20',NULL),(20,9,2,3,'2021-04-06','2021-04-20',NULL),(21,1,8,1,'2021-04-06','2021-04-20',NULL),(22,13,10,7,'2021-04-06','2021-04-20',NULL),(23,11,9,5,'2021-04-06','2021-04-20','2021-04-21'),(24,2,1,6,'2021-04-06','2021-04-20','2020-04-10');
/*!40000 ALTER TABLE `issuedbooks` ENABLE KEYS */;
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
