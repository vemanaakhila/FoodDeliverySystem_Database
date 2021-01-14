CREATE DATABASE  IF NOT EXISTS `FoodDeliverySystem` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `FoodDeliverySystem`;
-- MySQL dump 10.13  Distrib 8.0.17, for macos10.14 (x86_64)
--
-- Host: 127.0.0.1    Database: FoodDeliverySystem
-- ------------------------------------------------------
-- Server version	8.0.17

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
-- Table structure for table `ItemRestaurantMapping`
--

DROP TABLE IF EXISTS `ItemRestaurantMapping`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ItemRestaurantMapping` (
  `ItemRestaurantMappingId` int(11) NOT NULL AUTO_INCREMENT,
  `RestaurantId` int(11) NOT NULL,
  `ItemId` int(11) NOT NULL,
  PRIMARY KEY (`ItemRestaurantMappingId`),
  KEY `FK_IRM_Restaurant_idx` (`RestaurantId`),
  KEY `FK_IRM_ItemMaster_idx` (`ItemId`),
  CONSTRAINT `FK_IRM_ItemMaster` FOREIGN KEY (`ItemId`) REFERENCES `itemmaster` (`ItemId`),
  CONSTRAINT `FK_IRM_Restaurant` FOREIGN KEY (`RestaurantId`) REFERENCES `restaurant` (`RestaurantId`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ItemRestaurantMapping`
--

LOCK TABLES `ItemRestaurantMapping` WRITE;
/*!40000 ALTER TABLE `ItemRestaurantMapping` DISABLE KEYS */;
INSERT INTO `ItemRestaurantMapping` VALUES (1,13,27),(2,13,16),(3,15,63),(4,14,9),(5,17,93),(6,12,68),(7,20,6),(8,20,28),(9,15,7),(10,9,32),(11,8,88),(12,9,78),(13,2,42),(14,17,67),(15,16,28),(16,10,85),(17,9,61),(18,15,89),(19,6,44),(20,2,83),(21,14,26),(22,12,92),(23,17,89),(24,10,2),(25,2,47),(26,3,24),(27,8,62),(28,3,99),(29,8,94),(30,9,34),(31,17,85),(32,13,7),(33,3,99),(34,15,87),(35,11,73),(36,8,36),(37,4,86),(38,11,33),(39,6,54),(40,13,7),(41,3,20),(42,2,75),(43,17,30),(44,7,72),(45,11,88),(46,10,3),(47,17,95),(48,8,64),(49,20,92),(50,18,97),(51,13,39),(52,12,8),(53,2,88),(54,14,15),(55,11,89),(56,7,76),(57,11,37),(58,16,91),(59,6,34),(60,10,17),(61,20,100),(62,20,6),(63,7,43),(64,17,94),(65,6,2),(66,20,83),(67,19,30),(68,13,51),(69,1,89),(70,4,89),(71,16,53),(72,3,34),(73,20,84),(74,17,20),(75,6,10),(76,13,47),(77,14,40),(78,10,66),(79,17,53),(80,20,73),(81,17,1),(82,9,55),(83,15,67),(84,16,92),(85,3,46),(86,10,28),(87,17,76),(88,2,90),(89,16,65),(90,20,11),(91,3,5),(92,1,69),(93,12,31),(94,5,59),(95,6,9),(96,2,95),(97,12,18),(98,14,98),(99,14,21),(100,20,40);
/*!40000 ALTER TABLE `ItemRestaurantMapping` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-12-08 23:23:53
