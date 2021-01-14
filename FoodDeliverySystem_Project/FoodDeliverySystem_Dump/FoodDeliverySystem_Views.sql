-- MySQL dump 10.13  Distrib 8.0.17, for Win64 (x86_64)
--
-- Host: localhost    Database: fooddeliverysystem
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
-- Temporary view structure for view `personorderitems`
--

DROP TABLE IF EXISTS `personorderitems`;
/*!50001 DROP VIEW IF EXISTS `personorderitems`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `personorderitems` AS SELECT 
 1 AS `PersonName`,
 1 AS `PhnNum`,
 1 AS `ItemOrderedName`,
 1 AS `NutritionValue`,
 1 AS `Calories`,
 1 AS `ProteinContent`*/;
SET character_set_client = @saved_cs_client;

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
-- Final view structure for view `personorderitems`
--

/*!50001 DROP VIEW IF EXISTS `personorderitems`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `personorderitems` AS select `personitem`.`Name` AS `PersonName`,`personitem`.`PhnNum` AS `PhnNum`,`tm`.`Name` AS `ItemOrderedName`,`tm`.`NutritionValue` AS `NutritionValue`,`tm`.`Calories` AS `Calories`,`tm`.`Proteins` AS `ProteinContent` from (`itemmaster` `tm` join (select `personorder`.`Name` AS `Name`,`personorder`.`ContactNumber` AS `PhnNum`,`personorder`.`OrderId` AS `OrderId`,`i`.`ItemRestaurantMappingId` AS `Itmr` from (`itemrestaurantmapping` `i` join (select `p`.`Name` AS `Name`,`p`.`PersonId` AS `PersonId`,`p`.`ContactNumber` AS `ContactNumber`,`o`.`OrderId` AS `OrderId` from (`person` `p` join `orders` `o` on((`p`.`PersonId` = `o`.`OrderId`))) group by `p`.`PersonId` order by `p`.`Name`) `personorder` on((`i`.`ItemRestaurantMappingId` = `personorder`.`OrderId`)))) `personitem` on((`tm`.`ItemId` = `personitem`.`Itmr`))) where (`tm`.`NutritionValue` > 50) group by `tm`.`NutritionValue` order by `tm`.`NutritionValue` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

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
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-12-09  0:09:55
