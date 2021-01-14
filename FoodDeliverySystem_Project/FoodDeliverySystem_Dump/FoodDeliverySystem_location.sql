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
-- Table structure for table `location`
--

DROP TABLE IF EXISTS `location`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `location` (
  `LocationId` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(45) DEFAULT NULL,
  `Address` varchar(45) DEFAULT NULL,
  `Longitude` double DEFAULT NULL,
  `Latitude` double DEFAULT NULL,
  PRIMARY KEY (`LocationId`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `location`
--

LOCK TABLES `location` WRITE;
/*!40000 ALTER TABLE `location` DISABLE KEYS */;
INSERT INTO `location` VALUES (1,'Bio Informatics','P.O. Box 510, 9363 Eget, Avenue',-142.66404,-78.52003),(2,' Student Health Center','Ap #286-9999 Ultricies Avenue',-121.27315,70.96468),(3,' Student Health Center','750-9827 Lorem, Street',-118.85575,3.57356),(4,'Student Union','694-8353 Quam, Road',177.16694,-10.1485),(5,'Atkins Library','P.O. Box 130, 6007 Etiam Ave',-78.36369,-73.06866),(6,'Atkins Library','Ap #532-191 Interdum. Rd.',-36.46483,43.89319),(7,' Student Health Center','P.O. Box 535, 2068 At, St.',112.41956,46.79288),(8,'Bio Informatics','3341 Pede. St.',-176.40433,1.82899),(9,'Rowe Arts','988-4526 Euismod Road',-51.77369,83.81374),(10,'Rowe Arts','869-512 Quis, Road',173.32053,-76.64633),(11,'Atkins Library','P.O. Box 581, 6361 Aliquam Avenue',157.05786,28.14244),(12,' Student Health Center','P.O. Box 998, 541 Donec Rd.',61.08496,61.63403),(13,'Bio Informatics','P.O. Box 604, 9731 Aliquet Street',-82.6261,-0.22082),(14,'Student Union','1813 Pede Rd.',-95.33102,-87.67193),(15,' Student Health Center','901-3502 Dui. St.',-119.458,2.79024),(16,'Atkins Library','Ap #845-5364 Sit Rd.',-100.8666,-35.03671),(17,'Rowe Arts','P.O. Box 640, 2628 Ante. Ave',111.30719,9.75948),(18,'Bio Informatics','Ap #528-3056 Enim. Street',-66.14569,16.12081),(19,'Atkins Library','P.O. Box 687, 3444 At Road',59.85665,73.24017),(20,' Student Health Center','Ap #111-6753 Mauris Road',-45.52569,-42.44909);
/*!40000 ALTER TABLE `location` ENABLE KEYS */;
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
