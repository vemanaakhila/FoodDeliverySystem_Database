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
-- Temporary view structure for view `studentdrivers`
--

DROP TABLE IF EXISTS `studentdrivers`;
/*!50001 DROP VIEW IF EXISTS `studentdrivers`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `studentdrivers` AS SELECT 
 1 AS `StudentDriverName`,
 1 AS `GradYear`,
 1 AS `ContactNumber`,
 1 AS `PersonId`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `studentdrivers`
--

/*!50001 DROP VIEW IF EXISTS `studentdrivers`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `studentdrivers` AS select `p`.`Name` AS `StudentDriverName`,`studiv`.`GradYear` AS `GradYear`,`p`.`ContactNumber` AS `ContactNumber`,`p`.`PersonId` AS `PersonId` from (`person` `p` join (select `s`.`GraduationYear` AS `GradYear`,`s`.`StudentId` AS `StuId`,`d`.`HiringDate` AS `HiringDate`,`d`.`Rating` AS `Rating`,`d`.`DriverId` AS `DriverId` from (`student` `s` join `driver` `d` on((`s`.`StudentId` = `d`.`DriverId`))) group by `s`.`StudentId`,`d`.`DriverId`) `studiv` on((`studiv`.`StuId` = `p`.`PersonId`))) where (`studiv`.`GradYear` = '2017') order by `studiv`.`StuId` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Dumping events for database 'FoodDeliverySystem'
--

--
-- Dumping routines for database 'FoodDeliverySystem'
--
/*!50003 DROP PROCEDURE IF EXISTS `usp_getOrderDetails` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `usp_getOrderDetails`(OrderId int)
BEGIN
	select P.Name,P.ContactNumber,P.Address,
 (Select Name from Person where PersonId=O.DriverId)  as 'Delivery Person'
 ,O.OrderId,O.DeliveryCharges,O.DeliveryTime,O.TotalPrice,R.Name as 'Restaurant Name', IM.Name as 'Item Name' from FoodDeliverySystem.Order o
    Join Person P on P.PersonId=O.PersonId
    Join Driver D on D.DriverId=O.DriverId
    join OrderItems OI on OI.orderId=o.OrderId
    Join ItemRestaurantMapping IRM on IRM.ItemRestaurantMappingId=OI.ItemRestaurantMappingId
    Join Restaurant R on R.RestaurantId=IRM.RestaurantId
    Join ItemMaster IM on IM.ItemId =IRM.ItemId
    where O.OrderId=OrderId;
    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `usp_getPersonDetailsByName` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `usp_getPersonDetailsByName`(PersonName varchar(100))
BEGIN

	select P.Name, P.Address, P.Gender, P.Email, P.ContactNumber from person as P
    where Name=PersonName;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `usp_getTopTenOrderedItems` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `usp_getTopTenOrderedItems`()
BEGIN
 select R.Name,R.PhoneNumber, IM.Name,IM.Calories,IM.Proteins,IM.NutritionValue,count(IRM.ItemRestaurantMappingId) as count from FoodDeliverySystem.OrderItems as O
join ItemRestaurantMapping as IRM on IRM.ItemRestaurantMappingId=O.ItemRestaurantMappingId
join Restaurant as R on R.RestaurantId=IRM.RestaurantId
join ItemMaster as IM on IM.ItemId= IRM.ItemId
group by R.Name,R.PhoneNumber,IM.Name,IM.Calories,IM.Proteins,IM.NutritionValue
order by count desc
limit 10;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-12-08 23:23:53
