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
-- Table structure for table `login`
--

DROP TABLE IF EXISTS `login`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `login` (
  `id_login` int NOT NULL AUTO_INCREMENT,
  `login` varchar(45) NOT NULL,
  `password` varchar(255) NOT NULL,
  `access` varchar(45) NOT NULL,
  PRIMARY KEY (`id_login`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `login`
--

LOCK TABLES `login` WRITE;
/*!40000 ALTER TABLE `login` DISABLE KEYS */;
INSERT INTO `login` VALUES (1,'user1','ece9a941ffb615fc7233b2fec9b7255d67affeb2','user'),(2,'user2','11962e25c8348cfa42c215578a2ade82c90d5e9e','user'),(3,'isUly','32e566bfd4a37c948bccc736cf25878b0cef1ea4','user'),(4,'odaxo','0cbac5d5bccbc2d35443a0690e2dde839b544591','user'),(5,'jodyr','74ac749b9e11bb4913252636040c4d45f0844b7e','user'),(6,'rlvEW','6433212f37990f1d0b3084d9a281fd8c7e15132d','user'),(7,'admin','247c3b319b57ed86cdff11d5efe48b098dc7d543','admin'),(8,'sylav','91e3307758fc63347b8c7da0f6ac13596434c2b3','librarian'),(9,'modeg','dafe03c20c879fcc6014f58d09a011032f2a5caf','librarian'),(10,'elyt','feba94234099062aa6a82d8dc59bc2062c0f6cb2','librarian'),(11,'YsiDU','a218841f314d5a90ce08565e2c2a032ace61e5bc','librarian'),(12,'wgji','7e240de74fb1ed08fa08d38063f6a6a91462a815','user'),(13,'qwerty','b1b3773a05c0ed0176787a4f1574ff0075f7521e','user'),(14,'fkjwe','afc97ea131fd7e2695a98ef34013608f97f34e1d','user'),(15,'new','c2a6b03f190dfb2b4aa91f8af8d477a9bc3401dc','user'),(16,'jerk','3b4f3367054b005bf971f96026b4a55003189565','user'),(17,'','da39a3ee5e6b4b0d3255bfef95601890afd80709','user'),(18,'afsge','da39a3ee5e6b4b0d3255bfef95601890afd80709','user'),(19,'aeg','40bd001563085fc35165329ea1ff5c5ecbdbbeef','user'),(20,'wer','da39a3ee5e6b4b0d3255bfef95601890afd80709','user'),(21,'qw','3fb4379ccc26c7b7bde966b1735cc2a6d8ac1bc1','user'),(22,'Настя','5670b4358ae287fe8e74c2ff6f6293f905409077','user');
/*!40000 ALTER TABLE `login` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-05-03 13:23:36
