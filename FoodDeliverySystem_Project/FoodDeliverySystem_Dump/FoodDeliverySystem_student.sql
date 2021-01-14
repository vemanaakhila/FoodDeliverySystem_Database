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
-- Table structure for table `student`
--

DROP TABLE IF EXISTS `student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `student` (
  `StudentId` int(11) NOT NULL AUTO_INCREMENT,
  `GraduationYear` int(11) DEFAULT NULL,
  `Major` varchar(45) DEFAULT NULL,
  `Type` bit(1) DEFAULT NULL,
  `PersonId` int(11) NOT NULL,
  PRIMARY KEY (`StudentId`),
  KEY `FK_Student_Person_idx` (`PersonId`),
  CONSTRAINT `FK_Student_Person` FOREIGN KEY (`PersonId`) REFERENCES `person` (`PersonId`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student`
--

LOCK TABLES `student` WRITE;
/*!40000 ALTER TABLE `student` DISABLE KEYS */;
INSERT INTO `student` VALUES (1,2017,NULL,_binary '',1),(2,2020,NULL,_binary '\0',2),(3,2013,NULL,_binary '\0',3),(4,2014,NULL,_binary '\0',4),(5,2000,NULL,_binary '',5),(6,2007,NULL,_binary '',6),(7,2017,NULL,_binary '',7),(8,2008,NULL,_binary '',8),(9,2017,NULL,_binary '',9),(10,2013,NULL,_binary '\0',10),(11,2015,NULL,_binary '\0',11),(12,2009,NULL,_binary '',12),(13,2005,NULL,_binary '\0',13),(14,2017,NULL,_binary '',14),(15,2004,NULL,_binary '',15),(16,2010,NULL,_binary '',16),(17,2000,NULL,_binary '',17),(18,2020,NULL,_binary '\0',18),(19,2005,NULL,_binary '\0',19),(20,2005,NULL,_binary '\0',20),(21,2003,NULL,_binary '\0',21),(22,2010,NULL,_binary '\0',22),(23,2005,NULL,_binary '\0',23),(24,2001,NULL,_binary '',24),(25,2009,NULL,_binary '',25),(26,2018,NULL,_binary '',26),(27,2002,NULL,_binary '',27),(28,2010,NULL,_binary '',28),(29,2010,NULL,_binary '',29),(30,2017,NULL,_binary '\0',30),(31,2005,NULL,_binary '',31),(32,2009,NULL,_binary '',32),(33,2006,NULL,_binary '\0',33),(34,2019,NULL,_binary '\0',34),(35,2012,NULL,_binary '',35),(36,2010,NULL,_binary '',36),(37,2003,NULL,_binary '',37),(38,2014,NULL,_binary '',38),(39,2005,NULL,_binary '\0',39),(40,2010,NULL,_binary '\0',40),(41,2002,NULL,_binary '\0',41),(42,2011,NULL,_binary '',42),(43,2019,NULL,_binary '\0',43),(44,2008,NULL,_binary '',44),(45,2017,NULL,_binary '',45),(46,2009,NULL,_binary '\0',46),(47,2013,NULL,_binary '',47),(48,2018,NULL,_binary '',48),(49,2015,NULL,_binary '',49),(50,2004,NULL,_binary '',50);
/*!40000 ALTER TABLE `student` ENABLE KEYS */;
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
