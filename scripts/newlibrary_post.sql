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
-- Table structure for table `post`
--

DROP TABLE IF EXISTS `post`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `post` (
  `idPost` int NOT NULL AUTO_INCREMENT,
  `PostName` varchar(45) NOT NULL,
  `Demand` varchar(255) DEFAULT NULL,
  `Duties` varchar(255) DEFAULT NULL,
  `Oklad` int DEFAULT NULL,
  PRIMARY KEY (`idPost`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post`
--

LOCK TABLES `post` WRITE;
/*!40000 ALTER TABLE `post` DISABLE KEYS */;
INSERT INTO `post` VALUES (1,'Главный библиотекарь','Лицо, имеющее высшее профессиональное образование и стаж работы.','Ведет самостоятельный участок работы по направлениям деятельности библиотеки.',20000),(2,'Библиотекарь','Библиотекарь должен иметь высшеее образование','Библиотекарь выполняет работу по формированию, обработке и',10000),(3,'Библиограф','Библиограф должен иметь среднее профессиональное образование.','Ведет работы по организации справочно - библиографического аппарата библиотеки.',18000),(4,'Редактор','Редактор должен иметь высшее профессиональное образование.','Осуществляет редактирование выпускаемой редакционно-издательским отделом научной и методической литературы.',20000),(5,'Помощник директора библиотеки','Лицо, имеющее высшее профессиональное образование.','Обеспечивает информационную и организационно-техническую поддержку деятельности директора библиотеки.',25000),(6,'Директор','Лицо, имеющее высшее профессиональное образование и стаж работы.','Руководит научно-производственной, хозяйственной и финансово-экономической деятельностью библиотеки.',30000),(7,'Администратор баз данных','Лицо, имеющее высшее техническое образование.','Лицо, отвечающее за выработку требований к базе данных, её проектирование, реализацию, эффективное использование и сопровождение, включая управление учётными записями пользователей БД и защиту от несанкционированного доступа',NULL);
/*!40000 ALTER TABLE `post` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-05-03 13:23:39
