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
-- Table structure for table `narudzbenice`
--

DROP TABLE IF EXISTS `narudzbenice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `narudzbenice` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ProizvodID` int(11) NOT NULL,
  `PoslovnicaID` int(11) NOT NULL,
  `Platforma` varchar(20) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `str_ProizvodID_Narudzbenice` (`ProizvodID`),
  CONSTRAINT `str_ProizvodID_Narudzbenice` FOREIGN KEY (`ProizvodID`) REFERENCES `proizvod` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=496 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `narudzbenice`
--

LOCK TABLES `narudzbenice` WRITE;
/*!40000 ALTER TABLE `narudzbenice` DISABLE KEYS */;
INSERT INTO `narudzbenice` VALUES (1,2,1,'PS 4'),(2,3,1,'PS 4'),(3,17,1,'PS 4'),(4,28,1,'PS 4'),(5,32,1,'PS 4'),(6,35,1,'PS 4'),(7,39,1,'PS 4'),(8,44,1,'PS 4'),(9,51,1,'PS 4'),(10,56,1,'PS 4'),(11,65,1,'PS 4'),(12,69,1,'PS 4'),(13,73,1,'PS 4'),(14,78,1,'PS 4'),(15,86,1,'PS 4'),(16,93,1,'PS 4'),(17,105,1,'PS 4'),(18,109,1,'PS 4'),(19,117,1,'PS 4'),(20,136,1,'PS 4'),(21,138,1,'PS 4'),(22,142,1,'PS 4'),(23,152,1,'PS 4'),(24,161,1,'PS 4'),(25,167,1,'PS 4'),(26,181,1,'PS 4'),(27,193,1,'PS 4'),(28,201,1,'PS 4'),(29,206,1,'PS 4'),(30,216,1,'PS 4'),(31,223,1,'PS 4'),(32,233,1,'PS 4'),(33,240,1,'PS 4'),(34,246,1,'PS 4'),(35,255,1,'PS 4'),(36,263,1,'PS 4'),(37,270,1,'PS 4'),(38,275,1,'PS 4'),(39,282,1,'PS 4'),(40,294,1,'PS 4'),(41,5,3,'PS 4'),(42,7,5,'PS 4'),(43,8,3,'PS 4'),(44,8,5,'PS 4'),(45,10,5,'PS 4'),(46,12,3,'PS 4'),(47,13,5,'PS 4'),(48,14,3,'PS 4'),(49,14,5,'PS 4'),(50,15,3,'PS 4'),(51,16,3,'PS 4'),(52,18,3,'PS 4'),(53,18,5,'PS 4'),(54,22,5,'PS 4'),(55,26,3,'PS 4'),(56,26,5,'PS 4'),(57,28,2,'PS 4'),(58,28,5,'PS 4'),(59,31,4,'PS 4'),(60,32,2,'PS 4'),(61,32,4,'PS 4'),(62,34,5,'PS 4'),(63,35,2,'PS 4'),(64,35,5,'PS 4'),(65,38,2,'PS 4'),(66,39,2,'PS 4'),(67,43,3,'PS 4'),(68,44,3,'PS 4'),(69,44,5,'PS 4'),(70,48,2,'PS 4'),(71,51,3,'PS 4'),(72,56,3,'PS 4'),(73,56,5,'PS 4'),(74,58,5,'PS 4'),(75,59,5,'PS 4'),(76,61,4,'PS 4'),(77,65,4,'PS 4'),(78,73,2,'PS 4'),(79,73,4,'PS 4'),(80,74,4,'PS 4'),(81,78,4,'PS 4'),(82,80,2,'PS 4'),(83,80,4,'PS 4'),(84,86,5,'PS 4'),(85,93,4,'PS 4'),(86,103,2,'PS 4'),(87,105,4,'PS 4'),(88,109,2,'PS 4'),(89,112,5,'PS 4'),(90,116,4,'PS 4'),(91,117,4,'PS 4'),(92,123,2,'PS 4'),(93,126,2,'PS 4'),(94,126,4,'PS 4'),(95,129,4,'PS 4'),(96,133,4,'PS 4'),(97,138,3,'PS 4'),(98,142,2,'PS 4'),(99,152,4,'PS 4'),(100,167,2,'PS 4'),(101,167,3,'PS 4'),(102,167,4,'PS 4'),(103,181,3,'PS 4'),(104,182,3,'PS 4'),(105,185,4,'PS 4'),(106,185,5,'PS 4'),(107,193,5,'PS 4'),(108,198,4,'PS 4'),(109,198,5,'PS 4'),(110,200,4,'PS 4'),(111,201,4,'PS 4'),(112,206,3,'PS 4'),(113,211,3,'PS 4'),(114,211,5,'PS 4'),(115,216,4,'PS 4'),(116,220,4,'PS 4'),(117,227,4,'PS 4'),(118,233,4,'PS 4'),(119,240,3,'PS 4'),(120,245,2,'PS 4'),(121,246,5,'PS 4'),(122,248,2,'PS 4'),(123,255,3,'PS 4'),(124,257,2,'PS 4'),(125,257,4,'PS 4'),(126,263,3,'PS 4'),(127,270,3,'PS 4'),(128,279,2,'PS 4'),(129,279,3,'PS 4'),(130,282,3,'PS 4'),(131,286,2,'PS 4'),(132,294,3,'PS 4'),(133,302,2,'PS 4'),(134,302,3,'PS 4'),(135,302,4,'PS 4'),(256,309,1,'Xbox One'),(257,10,1,'Xbox One'),(258,17,1,'Xbox One'),(259,28,1,'Xbox One'),(260,32,1,'Xbox One'),(261,44,1,'Xbox One'),(262,51,1,'Xbox One'),(263,56,1,'Xbox One'),(264,65,1,'Xbox One'),(265,78,1,'Xbox One'),(266,105,1,'Xbox One'),(267,109,1,'Xbox One'),(268,316,1,'Xbox One'),(269,117,1,'Xbox One'),(270,138,1,'Xbox One'),(271,152,1,'Xbox One'),(272,167,1,'Xbox One'),(273,181,1,'Xbox One'),(274,193,1,'Xbox One'),(275,206,1,'Xbox One'),(276,216,1,'Xbox One'),(277,223,1,'Xbox One'),(278,240,1,'Xbox One'),(279,93,1,'Xbox One'),(280,270,1,'Xbox One'),(281,275,1,'Xbox One'),(282,282,1,'Xbox One'),(283,294,1,'Xbox One'),(284,2,4,'Xbox One'),(285,5,3,'Xbox One'),(286,7,5,'Xbox One'),(287,8,3,'Xbox One'),(288,8,5,'Xbox One'),(289,9,3,'Xbox One'),(290,10,3,'Xbox One'),(291,10,5,'Xbox One'),(292,12,3,'Xbox One'),(293,13,5,'Xbox One'),(294,14,3,'Xbox One'),(295,14,5,'Xbox One'),(296,15,3,'Xbox One'),(297,16,3,'Xbox One'),(298,18,3,'Xbox One'),(299,18,5,'Xbox One'),(300,19,3,'Xbox One'),(301,19,5,'Xbox One'),(302,22,5,'Xbox One'),(303,26,3,'Xbox One'),(304,26,5,'Xbox One'),(305,28,2,'Xbox One'),(306,28,5,'Xbox One'),(307,31,4,'Xbox One'),(308,32,2,'Xbox One'),(309,32,4,'Xbox One'),(310,34,5,'Xbox One'),(311,43,3,'Xbox One'),(312,44,3,'Xbox One'),(313,44,5,'Xbox One'),(314,48,2,'Xbox One'),(315,51,3,'Xbox One'),(316,56,3,'Xbox One'),(317,56,5,'Xbox One'),(318,58,5,'Xbox One'),(319,59,5,'Xbox One'),(320,61,4,'Xbox One'),(321,65,4,'Xbox One'),(322,78,4,'Xbox One'),(323,80,2,'Xbox One'),(324,80,4,'Xbox One'),(325,93,4,'Xbox One'),(326,103,2,'Xbox One'),(327,105,4,'Xbox One'),(328,109,2,'Xbox One'),(329,112,5,'Xbox One'),(330,117,4,'Xbox One'),(331,126,2,'Xbox One'),(332,126,4,'Xbox One'),(333,133,4,'Xbox One'),(334,138,3,'Xbox One'),(335,152,4,'Xbox One'),(336,167,2,'Xbox One'),(337,167,3,'Xbox One'),(338,167,4,'Xbox One'),(339,181,3,'Xbox One'),(340,182,3,'Xbox One'),(341,185,4,'Xbox One'),(342,185,5,'Xbox One'),(343,193,5,'Xbox One'),(344,198,4,'Xbox One'),(345,198,5,'Xbox One'),(346,201,4,'Xbox One'),(347,206,3,'Xbox One'),(348,211,3,'Xbox One'),(349,211,5,'Xbox One'),(350,216,4,'Xbox One'),(351,220,4,'Xbox One'),(352,227,4,'Xbox One'),(353,240,3,'Xbox One'),(354,245,2,'Xbox One'),(355,248,2,'Xbox One'),(356,270,3,'Xbox One'),(357,279,2,'Xbox One'),(358,279,3,'Xbox One'),(359,282,3,'Xbox One'),(360,286,2,'Xbox One'),(361,294,3,'Xbox One'),(362,302,2,'Xbox One'),(363,302,3,'Xbox One'),(364,302,4,'Xbox One'),(365,309,4,'Xbox One'),(366,316,3,'Xbox One'),(367,321,2,'Xbox One'),(383,206,1,'PS 4'),(384,206,1,'PS 4'),(385,206,1,'PS 4'),(386,206,1,'PS 4'),(387,206,1,'PS 4'),(388,233,1,'PS 4'),(389,233,1,'PS 4'),(390,233,1,'PS 4'),(391,233,1,'PS 4'),(392,233,1,'PS 4'),(393,240,1,'PS 4'),(394,240,1,'PS 4'),(395,240,1,'PS 4'),(396,240,1,'PS 4'),(397,240,1,'PS 4'),(398,255,1,'PS 4'),(399,255,1,'PS 4'),(400,255,1,'PS 4'),(401,255,1,'PS 4'),(402,255,1,'PS 4'),(403,263,1,'PS 4'),(404,263,1,'PS 4'),(405,263,1,'PS 4'),(406,263,1,'PS 4'),(407,263,1,'PS 4'),(408,282,1,'PS 4'),(409,282,1,'PS 4'),(410,282,1,'PS 4'),(411,282,1,'PS 4'),(412,282,1,'PS 4'),(413,294,1,'PS 4'),(414,294,1,'PS 4'),(415,294,1,'PS 4'),(416,294,1,'PS 4'),(417,294,1,'PS 4'),(418,206,1,'Nintendo Switch'),(419,233,1,'Nintendo Switch'),(420,240,1,'Nintendo Switch'),(421,255,1,'Nintendo Switch'),(422,263,1,'Nintendo Switch'),(423,282,1,'Nintendo Switch'),(424,294,1,'Nintendo Switch'),(425,323,1,'Nintendo Switch'),(426,330,1,'Nintendo Switch'),(427,333,1,'Nintendo Switch'),(428,336,1,'Nintendo Switch'),(429,342,1,'Nintendo Switch'),(430,210,1,'Nintendo Switch'),(431,307,1,'Nintendo Switch'),(432,229,1,'Nintendo Switch'),(433,37,1,'Nintendo Switch'),(434,56,1,'Nintendo Switch'),(435,206,1,'Nintendo Switch'),(436,210,1,'Nintendo Switch'),(437,229,1,'Nintendo Switch'),(438,233,1,'Nintendo Switch'),(439,240,1,'Nintendo Switch'),(440,255,1,'Nintendo Switch'),(441,263,1,'Nintendo Switch'),(442,282,1,'Nintendo Switch'),(443,294,1,'Nintendo Switch'),(444,307,1,'Nintendo Switch'),(445,323,1,'Nintendo Switch'),(446,330,1,'Nintendo Switch'),(447,333,1,'Nintendo Switch'),(448,336,1,'Nintendo Switch'),(449,342,1,'Nintendo Switch'),(450,1,4,'Nintendo Switch'),(451,1,5,'Nintendo Switch'),(452,3,2,'Nintendo Switch'),(453,3,4,'Nintendo Switch'),(454,3,5,'Nintendo Switch'),(455,11,3,'Nintendo Switch'),(456,11,5,'Nintendo Switch'),(457,17,2,'Nintendo Switch'),(458,18,5,'Nintendo Switch'),(459,19,3,'Nintendo Switch'),(460,20,4,'Nintendo Switch'),(461,37,4,'Nintendo Switch'),(462,50,2,'Nintendo Switch'),(463,50,4,'Nintendo Switch'),(464,55,5,'Nintendo Switch'),(465,56,4,'Nintendo Switch'),(466,107,2,'Nintendo Switch'),(467,107,5,'Nintendo Switch'),(468,112,4,'Nintendo Switch'),(469,116,3,'Nintendo Switch'),(470,124,5,'Nintendo Switch'),(471,149,2,'Nintendo Switch'),(472,155,4,'Nintendo Switch'),(473,196,4,'Nintendo Switch'),(474,200,4,'Nintendo Switch'),(475,206,3,'Nintendo Switch'),(476,220,4,'Nintendo Switch'),(477,227,4,'Nintendo Switch'),(478,233,4,'Nintendo Switch'),(479,240,3,'Nintendo Switch'),(480,245,2,'Nintendo Switch'),(481,255,3,'Nintendo Switch'),(482,263,3,'Nintendo Switch'),(483,282,3,'Nintendo Switch'),(484,286,2,'Nintendo Switch'),(485,294,3,'Nintendo Switch'),(486,323,3,'Nintendo Switch'),(487,330,4,'Nintendo Switch'),(488,340,4,'Nintendo Switch'),(489,342,2,'Nintendo Switch');
/*!40000 ALTER TABLE `narudzbenice` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-01-10 22:42:02
