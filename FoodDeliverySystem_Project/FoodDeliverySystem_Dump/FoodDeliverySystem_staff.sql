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
-- Table structure for table `staff`
--

DROP TABLE IF EXISTS `staff`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `staff` (
  `Position` bit(1) DEFAULT NULL,
  `IsAdmin` bit(1) DEFAULT NULL,
  `PersonId` int(11) NOT NULL,
  KEY `FK_Staff_Person_idx` (`PersonId`),
  CONSTRAINT `FK_Staff_Person` FOREIGN KEY (`PersonId`) REFERENCES `person` (`PersonId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `staff`
--

LOCK TABLES `staff` WRITE;
/*!40000 ALTER TABLE `staff` DISABLE KEYS */;
INSERT INTO `staff` VALUES (_binary '\0',_binary '\0',51),(_binary '\0',_binary '\0',52),(_binary '\0',_binary '',53),(_binary '\0',_binary '',54),(_binary '\0',_binary '\0',55),(_binary '\0',_binary '\0',56),(_binary '\0',_binary '',57),(_binary '\0',_binary '\0',58),(_binary '\0',_binary '\0',59),(_binary '',_binary '',60),(_binary '',_binary '\0',61),(_binary '\0',_binary '',62),(_binary '\0',_binary '\0',63),(_binary '\0',_binary '\0',64),(_binary '',_binary '',65),(_binary '\0',_binary '',66),(_binary '',_binary '\0',67),(_binary '\0',_binary '',68),(_binary '\0',_binary '',69),(_binary '\0',_binary '',70),(_binary '',_binary '',71),(_binary '',_binary '',72),(_binary '\0',_binary '',73),(_binary '\0',_binary '',74),(_binary '\0',_binary '\0',75),(_binary '',_binary '',76),(_binary '',_binary '',77),(_binary '',_binary '',78),(_binary '\0',_binary '\0',79),(_binary '\0',_binary '\0',80);
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

-- Dump completed on 2019-12-08 23:23:52
