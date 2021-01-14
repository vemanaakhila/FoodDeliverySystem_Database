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
-- Table structure for table `Restaurant`
--

DROP TABLE IF EXISTS `Restaurant`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Restaurant` (
  `RestaurantId` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(45) DEFAULT NULL,
  `Address` varchar(45) DEFAULT NULL,
  `PhoneNumber` varchar(45) DEFAULT NULL,
  `RestaurantTiming` datetime DEFAULT NULL,
  `Website` varchar(255) DEFAULT NULL,
  `IsAuthorized` bit(1) DEFAULT NULL,
  PRIMARY KEY (`RestaurantId`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Restaurant`
--

LOCK TABLES `Restaurant` WRITE;
/*!40000 ALTER TABLE `Restaurant` DISABLE KEYS */;
INSERT INTO `Restaurant` VALUES (1,'Consectetuer Cursus Et Incorporated','8833 Euismod Ave','1-293-403-9511','2020-05-09 01:47:38','congue.In@orciUt.net',_binary '\0'),(2,'Ligula Nullam Enim LLC','421-2460 Lacus. St.','1-702-219-7735','2019-10-20 14:19:25','hendrerit@posuerevulputatelacus.co.uk',_binary '\0'),(3,'Nunc Ullamcorper Eu Incorporated','Ap #717-172 Phasellus Av.','1-735-699-2624','2019-06-01 03:32:55','turpis@nonummyac.ca',_binary '\0'),(4,'Ullamcorper Magna LLC','746 Aliquam St.','1-862-123-6313','2020-01-17 17:32:20','commodo@cursusdiamat.edu',_binary ''),(5,'Sem PC','P.O. Box 409, 2755 Cras St.','1-617-661-5189','2019-09-15 00:09:20','eu@diam.co.uk',_binary ''),(6,'Diam Sed Corp.','2822 Non, Rd.','1-717-113-3645','2020-11-18 10:52:02','vitae.purus.gravida@semper.com',_binary ''),(7,'Metus PC','401-1344 Aliquam Ave','1-118-888-0579','2020-07-05 09:43:48','eget.dictum.placerat@facilisisnon.edu',_binary '\0'),(8,'Augue Associates','802-8744 Risus. Road','1-442-498-4229','2019-05-20 13:58:26','posuere.enim.nisl@odioNam.edu',_binary ''),(9,'Dignissim Maecenas Ornare LLP','3664 Eu Rd.','1-730-462-9169','2020-09-03 18:50:22','placerat.eget.venenatis@condimentumDonec.edu',_binary '\0'),(10,'Nunc Company','657-3685 Ligula. Road','1-291-431-6979','2020-10-18 07:39:39','pellentesque.eget@hendrerit.co.uk',_binary ''),(11,'Semper Tellus Industries','P.O. Box 316, 7504 Cursus Street','1-520-955-3126','2019-05-26 15:12:08','Aliquam.erat@adlitora.net',_binary '\0'),(12,'Sodales Elit Incorporated','Ap #472-9232 Tempor, St.','1-822-393-8039','2020-10-01 22:13:14','dapibus.rutrum.justo@augueeu.com',_binary '\0'),(13,'Metus In Consulting','P.O. Box 287, 2854 Nec, Rd.','1-491-780-0463','2019-10-11 04:08:41','vel@inhendreritconsectetuer.ca',_binary '\0'),(14,'Erat Volutpat Nulla Associates','P.O. Box 651, 5894 Et Road','1-205-521-3355','2020-06-20 11:40:39','in.tempus@tempor.co.uk',_binary '\0'),(15,'Nec Foundation','Ap #659-9902 Dignissim St.','1-526-823-7201','2019-06-13 09:14:40','Donec@egestasSed.ca',_binary ''),(16,'Conubia Nostra Per Limited','266-9010 Amet St.','1-123-605-9046','2019-04-06 05:14:35','consequat.nec.mollis@ornaresagittis.org',_binary ''),(17,'A Malesuada Inc.','Ap #131-6952 Nam Street','1-501-385-3730','2019-06-15 18:29:53','diam.dictum@magnis.org',_binary '\0'),(18,'Rhoncus Id Ltd','P.O. Box 309, 5126 Ante. Avenue','1-467-504-1566','2020-09-22 19:29:57','risus@luctus.co.uk',_binary '\0'),(19,'Rhoncus Proin Incorporated','7980 Praesent Road','1-917-566-7777','2019-07-07 17:20:19','lectus@leoelementumsem.co.uk',_binary '\0'),(20,'Malesuada Augue Inc.','Ap #777-6860 Ornare Street','1-854-242-9295','2019-12-24 20:08:44','Suspendisse.aliquet.sem@dictum.net',_binary '\0');
/*!40000 ALTER TABLE `Restaurant` ENABLE KEYS */;
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
