-- MySQL dump 10.13  Distrib 8.0.42, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: inventario_ips_cha
-- ------------------------------------------------------
-- Server version	8.0.42

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
-- Table structure for table `stock`
--

DROP TABLE IF EXISTS `stock`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stock` (
  `id_stock` int NOT NULL AUTO_INCREMENT,
  `id_producto` int DEFAULT NULL,
  `id_bodega` int DEFAULT NULL,
  `cantidad` int NOT NULL,
  PRIMARY KEY (`id_stock`),
  UNIQUE KEY `id_producto` (`id_producto`,`id_bodega`),
  KEY `id_bodega` (`id_bodega`),
  CONSTRAINT `stock_ibfk_1` FOREIGN KEY (`id_producto`) REFERENCES `producto` (`id_producto`),
  CONSTRAINT `stock_ibfk_2` FOREIGN KEY (`id_bodega`) REFERENCES `bodega` (`id_bodega`)
) ENGINE=InnoDB AUTO_INCREMENT=70 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stock`
--

LOCK TABLES `stock` WRITE;
/*!40000 ALTER TABLE `stock` DISABLE KEYS */;
INSERT INTO `stock` VALUES (1,2,1,0),(2,3,1,16),(3,4,1,0),(4,5,1,0),(5,6,1,0),(6,7,1,8),(7,8,1,0),(8,9,1,33),(9,10,1,0),(10,11,1,0),(11,12,1,63),(12,13,1,13),(13,14,1,0),(14,15,1,0),(15,16,1,0),(16,17,1,3),(17,18,1,0),(18,19,1,0),(19,20,1,1),(20,21,1,0),(21,22,1,65),(22,23,1,0),(23,24,1,0),(24,25,1,0),(25,26,1,0),(26,27,1,0),(27,28,1,0),(28,29,1,53),(29,30,1,0),(30,31,1,0),(31,32,1,0),(32,33,1,0),(33,34,1,2),(34,35,1,0),(35,36,1,0),(36,37,1,0),(37,38,1,0),(38,39,1,0),(39,40,1,62),(40,41,1,0),(41,42,1,0),(42,43,1,0),(43,44,1,0),(44,45,1,0),(45,46,1,8),(46,47,1,9),(47,48,1,8),(48,49,1,60),(49,50,1,0),(50,51,1,0),(51,52,1,2),(52,53,1,2),(53,54,1,4),(54,55,1,12),(55,56,1,1),(56,57,1,1),(57,58,1,54),(58,59,1,0),(59,60,1,0),(60,61,1,0),(61,62,1,0),(62,63,1,0),(63,64,1,0),(64,65,1,27),(65,66,1,7),(66,67,1,0),(67,68,1,5),(68,69,1,0),(69,70,1,0);
/*!40000 ALTER TABLE `stock` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-06-06  2:04:03
