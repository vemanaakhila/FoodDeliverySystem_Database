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
-- Table structure for table `Driver`
--

DROP TABLE IF EXISTS `Driver`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Driver` (
  `DriverId` int(11) NOT NULL AUTO_INCREMENT,
  `Rating` double DEFAULT NULL,
  `HiringDate` datetime DEFAULT NULL,
  `IsAuthorized` bit(1) DEFAULT NULL,
  `LicenseNumber` varchar(50) DEFAULT NULL,
  `StudentId` int(11) NOT NULL,
  PRIMARY KEY (`DriverId`),
  KEY `FK_Driver_Student_idx` (`StudentId`),
  CONSTRAINT `FK_Driver_Student` FOREIGN KEY (`StudentId`) REFERENCES `student` (`StudentId`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Driver`
--

LOCK TABLES `Driver` WRITE;
/*!40000 ALTER TABLE `Driver` DISABLE KEYS */;
INSERT INTO `Driver` VALUES (1,8,'2020-03-15 19:41:06',_binary '\0','S4S8 0X0',1),(2,4,'2019-03-03 12:59:04',_binary '\0','E9J3 9J9',2),(3,3,'2019-12-30 19:27:07',_binary '\0','D3J1 1J2',3),(4,6,'2019-05-04 14:51:30',_binary '','G8O3 1O2',4),(5,4,'2020-09-07 09:06:59',_binary '\0','T0X7 0J0',5),(6,3,'2020-07-11 23:59:38',_binary '\0','X4M4 8O6',6),(7,6,'2019-05-15 17:24:25',_binary '\0','F9Z7 2B0',7),(8,4,'2019-03-20 04:09:02',_binary '','F6K4 6Q1',8),(9,9,'2020-02-16 12:14:16',_binary '\0','K9O1 9V1',9),(10,4,'2020-01-24 19:28:52',_binary '','B3P6 1I3',10),(11,10,'2019-12-22 00:11:05',_binary '','C2N5 2T1',11),(12,4,'2020-05-30 14:08:10',_binary '','G0C4 3P0',12),(13,5,'2018-11-27 16:17:31',_binary '\0','G5J4 8B9',13),(14,8,'2020-07-19 05:49:55',_binary '','I6T2 6L8',14),(15,3,'2019-02-03 02:02:06',_binary '','N9I4 8Z3',15),(16,5,'2019-11-16 22:01:32',_binary '','Q6Z0 6V3',16),(17,3,'2020-03-26 16:32:15',_binary '','Z2O8 8G8',17),(18,6,'2018-11-27 05:14:15',_binary '\0','R1B8 2E7',18),(19,10,'2019-04-14 21:53:36',_binary '\0','I9B5 2K0',19),(20,7,'2019-04-11 17:44:26',_binary '','E3I9 6U3',20),(21,9,'2020-11-18 20:15:17',_binary '','T7I5 8E5',21),(22,7,'2020-11-03 04:31:31',_binary '\0','L5W8 1T6',22),(23,9,'2019-03-18 02:28:26',_binary '\0','V6G1 9W3',23),(24,8,'2020-04-17 06:13:56',_binary '\0','O9J6 0R8',24),(25,6,'2020-10-17 21:39:13',_binary '\0','X5K8 8W9',25),(26,3,'2019-10-26 00:49:17',_binary '','G8U4 6N4',26),(27,6,'2020-06-18 17:27:25',_binary '\0','B8H4 0N2',27),(28,6,'2019-07-22 07:19:52',_binary '\0','A8Y0 0I4',28),(29,7,'2019-03-29 21:13:05',_binary '\0','I9G3 2Y2',29),(30,3,'2020-03-12 18:29:18',_binary '\0','V8R2 8Z8',30);
/*!40000 ALTER TABLE `Driver` ENABLE KEYS */;
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
