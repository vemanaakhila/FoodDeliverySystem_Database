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
-- Table structure for table `ItemMaster`
--

DROP TABLE IF EXISTS `ItemMaster`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ItemMaster` (
  `ItemId` int(11) NOT NULL AUTO_INCREMENT,
  `NutritionValue` double DEFAULT NULL,
  `Calories` double DEFAULT NULL,
  `Proteins` double DEFAULT NULL,
  `Name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ItemId`),
  UNIQUE KEY `ItemId_UNIQUE` (`ItemId`)
) ENGINE=InnoDB AUTO_INCREMENT=104 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ItemMaster`
--

LOCK TABLES `ItemMaster` WRITE;
/*!40000 ALTER TABLE `ItemMaster` DISABLE KEYS */;
INSERT INTO `ItemMaster` VALUES (1,48,429,3,'pies'),(2,79,879,28,'pies'),(3,45,434,14,'cereals'),(4,80,868,6,'idli'),(5,53,587,13,'stews'),(6,32,488,18,'sandwiches'),(7,62,681,1,'dosa'),(8,49,436,28,'stews'),(9,68,107,22,'seafood'),(10,51,267,24,'dosa'),(11,68,152,28,'sandwiches'),(12,43,646,20,'noodles'),(13,92,757,7,'soups'),(14,65,505,19,'seafood'),(15,31,606,4,'noodles'),(16,47,918,26,'poha'),(17,62,784,14,'cereals'),(18,93,156,20,'noodles'),(19,86,724,22,'stews'),(20,71,501,5,'dosa'),(21,96,455,25,'pasta'),(22,85,634,20,'upma'),(23,51,274,11,'poha'),(24,64,974,30,'dosa'),(25,59,443,24,'stews'),(26,90,972,19,'idli'),(27,46,758,17,'desserts'),(28,43,646,8,'poha'),(29,49,925,20,'idli'),(30,74,342,11,'stews'),(31,95,200,11,'stews'),(32,87,994,9,'stews'),(33,78,741,11,'salads'),(34,100,341,27,'warp'),(35,48,967,7,'warp'),(36,49,133,5,'pasta'),(37,86,394,22,'dosa'),(38,89,449,21,'warp'),(39,34,703,27,'noodles'),(40,85,337,17,'upma'),(41,86,987,27,'noodles'),(42,34,521,6,'noodles'),(43,98,610,14,'upma'),(44,88,574,7,'cereals'),(45,35,178,27,'poha'),(46,85,967,29,'noodles'),(47,98,954,12,'poha'),(48,61,937,8,'sandwiches'),(49,73,912,9,'sandwiches'),(50,99,392,5,'sandwich'),(51,43,648,23,'upma'),(52,64,834,3,'upma'),(53,37,749,3,'desserts'),(54,39,568,25,'desserts'),(55,63,292,20,'noodles'),(56,79,279,9,'salads'),(57,41,134,3,'sandwiches'),(58,63,963,8,'idli'),(59,68,285,22,'sandwich'),(60,63,246,29,'poha'),(61,72,432,7,'salads'),(62,72,487,11,'poha'),(63,100,335,13,'seafood'),(64,46,188,14,'pasta'),(65,92,803,3,'sandwich'),(66,64,764,29,'stews'),(67,36,208,13,'pies'),(68,55,467,13,'sandwiches'),(69,62,196,1,'pasta'),(70,82,922,17,'stews'),(71,44,158,28,'sandwich'),(72,79,647,25,'pasta'),(73,98,960,7,'idli'),(74,67,383,4,'upma'),(75,39,336,26,'seafood'),(76,56,348,18,'desserts'),(77,52,398,5,'soups'),(78,63,594,16,'soups'),(79,88,663,19,'cereals'),(80,38,212,26,'upma'),(81,45,333,17,'stews'),(82,98,488,17,'idli'),(83,67,711,27,'pasta'),(84,97,829,19,'noodles'),(85,69,884,28,'dosa'),(86,71,703,25,'pasta'),(87,54,129,4,'sandwiches'),(88,65,962,12,'salads'),(89,62,648,10,'pasta'),(90,76,385,12,'sandwich'),(91,46,335,30,'sandwiches'),(92,68,261,8,'sandwich'),(93,87,628,5,'upma'),(94,65,284,28,'poha'),(95,53,582,25,'upma'),(96,61,542,30,'stews'),(97,40,559,9,'sandwich'),(98,59,993,25,'pies'),(99,93,879,5,'sandwiches'),(100,64,510,16,'stews'),(101,50,500,70,'Pizza'),(102,150,750,70,'Burger'),(103,150,750,70,'Burger');
/*!40000 ALTER TABLE `ItemMaster` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-12-08 23:23:51
