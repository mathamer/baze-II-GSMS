CREATE DATABASE  IF NOT EXISTS `gameshop` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `gameshop`;
-- MySQL dump 10.13  Distrib 8.0.18, for Win64 (x86_64)
--
-- Host: 192.168.1.4    Database: gameshop
-- ------------------------------------------------------
-- Server version	8.0.18

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
-- Table structure for table `vracene_igre`
--

DROP TABLE IF EXISTS `vracene_igre`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vracene_igre` (
  `ProizvodID` int(11) NOT NULL,
  `RacunID` int(11) NOT NULL,
  `PoslovnicaID` int(11) NOT NULL,
  `Platforma` varchar(50) NOT NULL,
  KEY `str_ProizvodID_VraceneIgre` (`ProizvodID`),
  KEY `str_poslovnicaid_vracene_igre` (`PoslovnicaID`),
  CONSTRAINT `str_ProizvodID_VraceneIgre` FOREIGN KEY (`ProizvodID`) REFERENCES `proizvod` (`ID`),
  CONSTRAINT `str_poslovnicaid_vracene_igre` FOREIGN KEY (`PoslovnicaID`) REFERENCES `poslovnica` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vracene_igre`
--

LOCK TABLES `vracene_igre` WRITE;
/*!40000 ALTER TABLE `vracene_igre` DISABLE KEYS */;
INSERT INTO `vracene_igre` VALUES (115,1,2,'PS 4'),(48,2,1,'PS 4'),(241,3,1,'PS 4'),(343,5,5,'Nintendo Switch'),(128,7,1,'PS 4'),(342,8,4,'Nintendo Switch'),(29,9,3,'PS 4'),(229,10,4,'Xbox One'),(42,12,5,'Xbox One'),(19,13,1,'Xbox One'),(69,14,2,'PS 4'),(310,17,1,'Xbox One'),(134,18,4,'PS 4'),(47,19,3,'Xbox One'),(196,24,2,'Xbox One'),(188,25,4,'Xbox One'),(262,26,4,'PS 4'),(13,27,5,'PS 4'),(101,28,5,'Xbox One'),(308,29,4,'Xbox One'),(207,30,2,'Xbox One'),(241,32,5,'PS 4'),(146,33,5,'PS 4'),(194,34,1,'PS 4'),(248,35,4,'PS 4'),(94,36,1,'PS 4'),(298,37,4,'Xbox One'),(233,39,4,'Nintendo Switch'),(93,40,3,'PS 4'),(166,42,4,'Xbox One'),(27,43,1,'PS 4'),(89,44,1,'PS 4'),(243,46,4,'Xbox One'),(321,53,5,'Xbox One'),(261,55,2,'Xbox One'),(247,56,1,'PS 4'),(80,57,2,'PS 4'),(171,59,3,'Xbox One'),(17,60,4,'Xbox One'),(327,62,4,'Nintendo Switch'),(293,63,4,'PS 4'),(261,64,1,'Xbox One'),(184,69,1,'Xbox One'),(39,72,4,'PS 4'),(83,73,5,'Xbox One'),(70,74,3,'PS 4'),(341,75,1,'Nintendo Switch'),(215,78,1,'PS 4'),(80,79,5,'PS 4'),(28,81,4,'PS 4'),(141,82,5,'PS 4'),(33,83,1,'PS 4'),(102,84,5,'Xbox One'),(98,85,1,'PS 4'),(11,86,1,'Xbox One'),(170,88,5,'PS 4'),(334,89,1,'Nintendo Switch'),(96,93,3,'PS 4'),(231,94,3,'PS 4'),(227,95,1,'Xbox One'),(53,96,2,'PS 4'),(338,98,1,'Nintendo Switch'),(95,99,5,'PS 4'),(194,106,5,'PS 4'),(191,107,1,'Xbox One'),(225,108,4,'Xbox One'),(45,111,3,'PS 4'),(58,113,1,'PS 4'),(25,114,5,'PS 4'),(76,115,1,'PS 4'),(221,117,4,'PS 4'),(66,120,4,'PS 4'),(89,123,1,'PS 4'),(104,125,3,'PS 4'),(46,126,5,'PS 4'),(166,128,3,'Xbox One'),(60,129,4,'PS 4'),(32,131,1,'PS 4'),(253,132,1,'PS 4'),(304,133,2,'PS 4'),(41,134,4,'PS 4'),(204,136,4,'Xbox One'),(250,137,5,'PS 4'),(99,138,4,'PS 4'),(65,139,4,'PS 4'),(100,140,3,'Xbox One'),(22,141,1,'PS 4'),(339,144,1,'Nintendo Switch'),(252,145,3,'PS 4'),(205,146,3,'PS 4'),(130,148,5,'PS 4'),(121,150,1,'PS 4'),(318,151,4,'Xbox One'),(84,152,1,'PS 4'),(43,153,5,'PS 4'),(254,155,3,'Xbox One'),(95,156,1,'PS 4'),(14,157,5,'Xbox One'),(271,160,3,'PS 4'),(243,161,1,'Xbox One'),(285,162,2,'Xbox One'),(85,163,1,'Xbox One'),(161,164,1,'PS 4'),(95,165,1,'PS 4'),(147,166,1,'Xbox One'),(149,167,1,'Xbox One'),(252,168,3,'PS 4'),(338,172,1,'Nintendo Switch'),(170,173,1,'PS 4'),(255,174,1,'PS 4'),(81,175,3,'Xbox One'),(227,176,1,'Xbox One'),(131,177,4,'PS 4'),(23,178,5,'Xbox One'),(6,181,4,'PS 4'),(228,182,4,'Xbox One'),(104,183,1,'PS 4'),(158,185,5,'PS 4'),(117,188,4,'PS 4'),(103,189,1,'Xbox One'),(33,190,4,'PS 4'),(326,194,4,'Nintendo Switch'),(67,195,4,'PS 4'),(35,196,1,'PS 4'),(157,197,4,'PS 4'),(331,198,3,'Nintendo Switch'),(250,199,4,'PS 4'),(179,200,4,'PS 4'),(284,201,5,'Xbox One'),(298,202,2,'Xbox One'),(79,203,4,'PS 4'),(76,204,4,'PS 4'),(157,205,2,'PS 4'),(198,207,2,'PS 4'),(230,208,1,'Xbox One'),(335,209,5,'Nintendo Switch'),(297,210,1,'PS 4'),(74,212,1,'PS 4'),(43,213,3,'PS 4'),(60,214,1,'PS 4'),(183,215,1,'Xbox One'),(228,216,1,'Xbox One'),(325,220,2,'Nintendo Switch'),(327,221,5,'Nintendo Switch'),(340,222,5,'Nintendo Switch'),(190,223,1,'Xbox One'),(276,224,5,'PS 4'),(313,225,5,'Xbox One'),(312,227,5,'Xbox One'),(275,228,1,'PS 4'),(100,231,4,'Xbox One'),(173,232,1,'PS 4'),(150,235,4,'PS 4'),(98,237,3,'PS 4'),(202,243,5,'PS 4'),(268,244,1,'PS 4'),(285,246,4,'Xbox One'),(247,247,1,'PS 4'),(244,249,3,'PS 4'),(42,251,4,'Xbox One'),(338,253,3,'Nintendo Switch'),(310,254,4,'Xbox One'),(25,255,1,'PS 4'),(37,258,4,'Xbox One'),(119,259,4,'PS 4'),(48,261,2,'PS 4'),(95,262,5,'PS 4'),(161,263,1,'PS 4'),(255,264,3,'PS 4'),(245,269,1,'Xbox One'),(142,271,5,'PS 4'),(328,272,1,'Nintendo Switch'),(285,274,2,'Xbox One'),(235,275,2,'PS 4'),(226,276,4,'Xbox One'),(107,277,3,'Xbox One'),(158,278,5,'PS 4'),(25,279,1,'PS 4'),(342,280,5,'Nintendo Switch'),(329,281,5,'Nintendo Switch'),(25,282,5,'PS 4'),(76,283,3,'PS 4'),(56,284,3,'Xbox One'),(2,288,2,'Xbox One'),(261,290,2,'Xbox One'),(169,291,2,'PS 4'),(122,294,4,'Xbox One'),(99,296,2,'PS 4'),(282,297,1,'Xbox One'),(296,298,4,'Nintendo Switch'),(78,300,3,'Xbox One'),(93,302,5,'PS 4'),(204,303,1,'Xbox One'),(117,305,5,'PS 4'),(190,306,1,'Xbox One'),(233,307,3,'Nintendo Switch'),(125,308,4,'PS 4'),(254,309,4,'Xbox One'),(153,310,3,'PS 4'),(115,311,1,'PS 4'),(166,313,5,'Xbox One'),(304,314,2,'PS 4'),(235,315,4,'PS 4'),(146,317,4,'PS 4'),(244,319,4,'PS 4'),(114,321,4,'PS 4'),(179,322,5,'PS 4'),(19,324,3,'Xbox One'),(97,325,1,'PS 4'),(158,326,5,'PS 4'),(95,328,5,'PS 4'),(40,329,1,'PS 4'),(102,331,5,'Xbox One'),(98,332,3,'PS 4'),(131,333,1,'PS 4'),(331,334,1,'Nintendo Switch'),(106,337,4,'PS 4'),(72,339,2,'PS 4'),(60,342,2,'PS 4'),(182,344,1,'PS 4'),(35,345,4,'PS 4'),(271,346,4,'PS 4'),(117,348,1,'PS 4'),(103,349,5,'Xbox One'),(178,351,2,'PS 4'),(38,352,4,'PS 4'),(263,353,3,'PS 4'),(70,354,2,'PS 4'),(306,355,5,'PS 4'),(295,357,1,'Xbox One'),(313,358,3,'Xbox One'),(314,359,4,'Xbox One'),(180,360,3,'PS 4'),(119,361,1,'PS 4'),(328,362,4,'Nintendo Switch'),(160,364,3,'PS 4'),(104,366,2,'PS 4'),(25,368,3,'PS 4'),(9,370,3,'Xbox One'),(224,371,4,'PS 4'),(328,373,3,'Nintendo Switch'),(260,374,1,'Xbox One'),(228,375,2,'Xbox One'),(320,376,1,'Xbox One'),(89,377,4,'PS 4'),(308,378,1,'Xbox One'),(299,379,4,'PS 4'),(306,381,1,'PS 4'),(324,382,1,'Nintendo Switch'),(258,383,4,'Xbox One'),(11,384,3,'Xbox One'),(124,385,3,'PS 4'),(8,386,2,'PS 4'),(21,388,4,'Xbox One'),(254,389,4,'Xbox One'),(250,390,1,'PS 4'),(61,391,3,'PS 4'),(229,392,5,'Xbox One'),(3,393,4,'Xbox One'),(330,396,2,'Nintendo Switch'),(129,398,4,'PS 4'),(121,399,1,'PS 4'),(122,401,5,'Xbox One'),(63,402,3,'PS 4'),(101,403,4,'Xbox One'),(159,404,4,'Xbox One'),(112,405,3,'Xbox One'),(42,406,5,'Xbox One'),(196,407,1,'Xbox One'),(5,410,4,'PS 4'),(256,411,4,'PS 4'),(337,412,5,'Nintendo Switch'),(21,413,5,'Xbox One'),(340,414,3,'Nintendo Switch'),(122,415,1,'Xbox One'),(135,418,1,'Xbox One'),(324,419,1,'Nintendo Switch'),(43,426,2,'PS 4'),(283,427,3,'PS 4'),(99,428,4,'PS 4'),(306,429,5,'PS 4'),(234,430,1,'PS 4'),(315,431,1,'Xbox One'),(46,433,2,'PS 4'),(85,434,3,'Xbox One'),(158,435,1,'PS 4'),(288,438,3,'PS 4'),(42,439,5,'Xbox One'),(53,442,5,'PS 4'),(37,444,3,'Xbox One'),(293,445,5,'PS 4'),(103,447,4,'Xbox One'),(308,448,5,'Xbox One'),(334,449,3,'Nintendo Switch'),(284,450,5,'Xbox One'),(206,451,3,'Xbox One'),(75,452,4,'PS 4'),(335,453,1,'Nintendo Switch'),(297,456,4,'PS 4'),(235,458,4,'PS 4'),(249,459,3,'PS 4'),(7,460,1,'Xbox One'),(107,462,1,'Xbox One'),(49,463,1,'PS 4'),(29,464,3,'PS 4'),(41,465,4,'PS 4'),(22,472,3,'PS 4'),(80,473,3,'PS 4'),(128,474,5,'PS 4'),(131,475,4,'PS 4'),(332,476,1,'Nintendo Switch'),(50,477,5,'Xbox One'),(238,478,2,'Xbox One'),(259,483,2,'PS 4'),(112,485,3,'Xbox One'),(262,486,1,'PS 4'),(204,491,2,'Xbox One'),(23,492,4,'Xbox One'),(335,493,2,'Nintendo Switch'),(184,494,1,'Xbox One'),(39,495,4,'PS 4'),(187,496,2,'Xbox One'),(122,497,3,'Xbox One'),(149,498,3,'Xbox One'),(317,499,2,'Xbox One'),(88,67,5,'PS 4'),(150,119,4,'PS 4'),(89,142,3,'PS 4'),(88,67,5,'PS 4'),(317,499,2,'Xbox One'),(317,4,4,'Xbox'),(317,2,2,'Xbox One');
/*!40000 ALTER TABLE `vracene_igre` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`marko`@`%`*/ /*!50003 TRIGGER `Update_Stanja_Vraceno` AFTER INSERT ON `vracene_igre` FOR EACH ROW BEGIN
    IF (new.Platforma="PS 4") THEN
        update stanje_poslovnica_ps4
        set Kolicina=Kolicina+1
        where new.ProizvodID=stanje_poslovnica_ps4.ProizvodID AND new.PoslovnicaID=stanje_poslovnica_ps4.SifraPoslPS4;
    ELSEIF (new.Platforma="Xbox One") THEN
        update stanje_poslovnica_xbox
        set Kolicina=Kolicina+1
        where new.ProizvodID=stanje_poslovnica_xbox.ProizvodID AND new.PoslovnicaID=stanje_poslovnica_xbox.SifraPoslXBOX;
    ELSEIF (new.Platforma="Nintendo Switch") THEN
        update stanje_poslovnica_nintendo
        set Kolicina=Kolicina+1
        where new.ProizvodID=stanje_poslovnica_nintendo.ProizvodID AND new.PoslovnicaID=stanje_poslovnica_nintendo.SifraPoslNINTENDO;
    END IF;
END */;;
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

-- Dump completed on 2020-01-10 22:42:01
