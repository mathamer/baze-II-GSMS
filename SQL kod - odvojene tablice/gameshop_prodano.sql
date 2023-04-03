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
-- Table structure for table `prodano`
--

DROP TABLE IF EXISTS `prodano`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `prodano` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ProizvodID` int(11) NOT NULL,
  `RacunID` int(11) NOT NULL,
  `Kolicina` int(11) NOT NULL,
  `cijena` varchar(10) NOT NULL,
  `Platforma` varchar(50) NOT NULL,
  `PoslovnicaID` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `str_RacunID_Prodano` (`RacunID`),
  KEY `str_ProizvodID_Prodano` (`ProizvodID`),
  KEY `str_PoslovnicaID_Prodano` (`PoslovnicaID`),
  CONSTRAINT `str_PoslovnicaID_Prodano` FOREIGN KEY (`PoslovnicaID`) REFERENCES `poslovnica` (`ID`),
  CONSTRAINT `str_ProizvodID_Prodano` FOREIGN KEY (`ProizvodID`) REFERENCES `proizvod` (`ID`),
  CONSTRAINT `str_RacunID_Prodano` FOREIGN KEY (`RacunID`) REFERENCES `racun` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=263 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prodano`
--

LOCK TABLES `prodano` WRITE;
/*!40000 ALTER TABLE `prodano` DISABLE KEYS */;
INSERT INTO `prodano` VALUES (1,343,4,1,'90 kn','Nintendo Switch',1),(3,302,11,1,'55 kn','PS 4',5),(4,174,15,1,'45 kn','PS 4',3),(5,113,16,1,'80 kn','PS 4',1),(6,296,20,1,'60 kn','Nintendo Switch',1),(7,256,21,1,'50 kn','PS 4',4),(8,265,22,1,'70 kn','PS 4',1),(10,26,31,1,'90 kn','PS 4',1),(11,230,38,1,'60 kn','Xbox One',4),(12,8,41,1,'80 kn','PS 4',1),(13,265,45,1,'70 kn','PS 4',1),(14,187,47,1,'60 kn','Xbox One',2),(15,94,48,1,'70 kn','PS 4',1),(16,286,49,1,'60 kn','Xbox One',5),(17,3,50,1,'70 kn','Xbox One',4),(18,212,51,1,'55 kn','PS 4',1),(19,238,52,1,'60 kn','Xbox One',1),(20,26,54,1,'90 kn','PS 4',1),(21,232,58,1,'55 kn','Xbox One',3),(22,313,61,1,'80 kn','Xbox One',1),(23,252,65,1,'50 kn','PS 4',1),(24,28,66,1,'60 kn','PS 4',1),(25,175,68,1,'60 kn','PS 4',3),(26,105,70,1,'50 kn','PS 4',2),(27,259,71,1,'60 kn','PS 4',4),(28,113,76,1,'80 kn','PS 4',1),(29,300,77,1,'60 kn','Xbox One',1),(30,186,80,1,'60 kn','Xbox One',3),(31,318,87,1,'60 kn','Xbox One',1),(32,299,90,1,'50 kn','PS 4',1),(33,143,91,1,'65 kn','PS 4',1),(34,212,97,1,'55 kn','PS 4',1),(35,169,100,1,'70 kn','PS 4',3),(36,182,101,1,'50 kn','PS 4',3),(37,84,102,1,'50 kn','PS 4',1),(38,219,103,1,'60 kn','PS 4',5),(39,208,104,1,'70 kn','Xbox One',4),(40,186,105,1,'60 kn','Xbox One',3),(41,288,109,1,'55 kn','PS 4',3),(42,96,110,1,'60 kn','PS 4',3),(43,127,112,1,'55 kn','PS 4',5),(44,265,116,1,'70 kn','PS 4',1),(45,255,121,1,'55 kn','PS 4',5),(46,75,122,1,'60 kn','PS 4',3),(47,337,124,1,'90 kn','Nintendo Switch',1),(48,127,127,1,'55 kn','PS 4',5),(49,77,130,1,'75 kn','PS 4',1),(50,144,135,1,'65 kn','Xbox One',2),(51,186,147,1,'60 kn','Xbox One',3),(52,97,149,1,'55 kn','PS 4',4),(53,131,154,1,'75 kn','PS 4',3),(54,222,158,1,'50 kn','PS 4',1),(55,219,159,1,'60 kn','PS 4',5),(56,131,170,1,'75 kn','PS 4',3),(57,296,171,1,'60 kn','Nintendo Switch',1),(58,329,179,1,'100 kn','Nintendo Switch',5),(59,277,180,1,'80 kn','PS 4',4),(60,33,184,1,'80 kn','PS 4',1),(61,259,186,1,'60 kn','PS 4',4),(62,279,187,1,'60 kn','PS 4',1),(63,177,191,1,'50 kn','PS 4',4),(64,34,192,1,'80 kn','PS 4',1),(65,343,193,1,'90 kn','Nintendo Switch',1),(66,277,211,1,'80 kn','PS 4',4),(67,317,217,1,'60 kn','Xbox One',1),(68,12,219,1,'70 kn','PS 4',4),(69,124,226,1,'50 kn','PS 4',1),(70,146,229,1,'50 kn','PS 4',5),(71,99,230,1,'65 kn','PS 4',4),(72,12,233,1,'70 kn','PS 4',4),(73,76,234,1,'60 kn','PS 4',1),(74,137,236,1,'65 kn','PS 4',5),(75,292,238,1,'50 kn','PS 4',5),(76,291,239,1,'50 kn','PS 4',3),(77,13,245,1,'60 kn','PS 4',5),(78,317,248,1,'60 kn','Xbox One',1),(79,237,250,1,'60 kn','PS 4',5),(80,106,252,1,'70 kn','PS 4',5),(81,296,256,1,'60 kn','Nintendo Switch',1),(82,232,257,1,'55 kn','Xbox One',3),(83,311,260,1,'90 kn','Xbox One',2),(84,238,265,1,'60 kn','Xbox One',1),(85,286,266,1,'60 kn','Xbox One',5),(86,178,267,1,'50 kn','PS 4',3),(87,59,268,1,'70','PS 4',3),(88,139,273,1,'100 kn','PS 4',5),(89,202,285,1,'60 kn','PS 4',5),(90,139,286,1,'100 kn','PS 4',5),(91,321,287,1,'75 kn','Xbox One',5),(92,112,289,1,'60 kn','Xbox One',1),(93,281,295,1,'50 kn','PS 4',1),(94,104,299,1,'80 kn','PS 4',3),(95,296,301,1,'60 kn','Nintendo Switch',1),(96,288,304,1,'55 kn','PS 4',3),(97,231,312,1,'60 kn','PS 4',3),(98,182,316,1,'50 kn','PS 4',3),(99,262,318,1,'80 kn','PS 4',4),(100,159,320,1,'70 kn','Xbox One',5),(101,146,323,1,'50 kn','PS 4',5),(102,182,327,1,'50 kn','PS 4',3),(103,44,330,1,'90 kn','Xbox One',3),(104,337,335,1,'90 kn','Nintendo Switch',1),(105,150,336,1,'45 kn','PS 4',4),(106,59,338,1,'70','PS 4',3),(107,239,340,1,'75 kn','PS 4',1),(108,266,341,1,'50 kn','PS 4',1),(109,318,347,1,'60 kn','Xbox One',1),(110,49,350,1,'70 kn','PS 4',1),(111,139,356,1,'100 kn','PS 4',5),(112,105,363,1,'50 kn','PS 4',2),(113,125,365,1,'60 kn','PS 4',4),(114,239,367,1,'75 kn','PS 4',1),(115,129,369,1,'60 kn','PS 4',2),(116,255,372,1,'55 kn','PS 4',5),(117,278,380,1,'70 kn','PS 4',1),(118,35,387,1,'65 kn','PS 4',1),(119,286,394,1,'60 kn','Xbox One',5),(120,123,395,1,'80 kn','PS 4',5),(121,31,397,1,'60 kn','PS 4',2),(122,75,400,1,'60 kn','PS 4',3),(123,182,408,1,'50 kn','PS 4',3),(124,277,409,1,'80 kn','PS 4',4),(125,257,420,1,'80 kn','PS 4',4),(126,61,421,1,'55 kn','PS 4',3),(127,214,422,1,'75 kn','PS 4',4),(128,289,423,1,'75 kn','PS 4',4),(129,64,424,1,'70 kn','PS 4',4),(130,252,425,1,'50 kn','PS 4',1),(131,110,432,1,'55 kn','PS 4',3),(132,80,436,1,'65 kn','PS 4',2),(133,275,437,1,'65 kn','PS 4',1),(134,264,440,1,'50 kn','PS 4',4),(135,123,443,1,'80 kn','PS 4',5),(136,64,446,1,'70 kn','PS 4',4),(137,23,454,1,'100 kn','Xbox One',5),(138,34,455,1,'80 kn','PS 4',1),(139,169,457,1,'70 kn','PS 4',3),(140,315,461,1,'60 kn','Xbox One',1),(141,24,468,1,'80 kn','PS 4',1),(142,318,469,1,'60 kn','Xbox One',1),(143,248,470,1,'60 kn','PS 4',4),(144,217,471,1,'60 kn','PS 4',4),(145,55,479,1,'80 kn','Xbox One',2),(146,57,480,1,'60 kn','PS 4',3),(147,87,481,1,'55 kn','PS 4',2),(148,238,482,1,'60 kn','Xbox One',1),(149,216,484,1,'60 kn','PS 4',3),(150,231,488,1,'60 kn','PS 4',3),(151,156,489,1,'65 kn','PS 4',4),(152,279,500,1,'60 kn','PS 4',1),(256,182,6,1,'50kn','PS 4',3),(260,10,23,1,'120 kn','PS 4',1),(261,142,503,1,'50 kn','PS 4',NULL),(262,317,504,2,'60 kn','PS4',2);
/*!40000 ALTER TABLE `prodano` ENABLE KEYS */;
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
/*!50003 CREATE*/ /*!50017 DEFINER=`marko`@`%`*/ /*!50003 TRIGGER `Update_Stanja_Prodano` AFTER INSERT ON `prodano` FOR EACH ROW BEGIN
    IF (new.Platforma="PS 4") THEN
        update stanje_poslovnica_ps4
        set Kolicina=Kolicina-(new.Kolicina)
        where new.ProizvodID=stanje_poslovnica_ps4.ProizvodID AND new.PoslovnicaID=stanje_poslovnica_ps4.SifraPoslPS4;
    ELSEIF (new.Platforma="Xbox One") THEN
        update stanje_poslovnica_xbox
        set Kolicina=Kolicina-(new.Kolicina)
        where new.ProizvodID=stanje_poslovnica_xbox.ProizvodID AND new.PoslovnicaID=stanje_poslovnica_xbox.SifraPoslXBOX;
    ELSEIF (new.Platforma="Nintendo Switch") THEN
        update stanje_poslovnica_nintendo
        set Kolicina=Kolicina-(new.Kolicina)
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

-- Dump completed on 2020-01-10 22:42:02
