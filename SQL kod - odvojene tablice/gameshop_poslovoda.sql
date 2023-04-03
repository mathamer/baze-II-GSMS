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
-- Table structure for table `poslovoda`
--

DROP TABLE IF EXISTS `poslovoda`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `poslovoda` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `sifra` int(11) NOT NULL,
  `PoslovnicaID` int(11) NOT NULL,
  `Adresa` varchar(50) NOT NULL,
  `Ime` varchar(30) NOT NULL,
  `Prezime` varchar(30) NOT NULL,
  `Placa` varchar(10) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Korisnicko_ime` varchar(16) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `str_PoslovnicaID_Poslovoda` (`PoslovnicaID`),
  KEY `sifra` (`sifra`),
  CONSTRAINT `str_PoslovnicaID_Poslovoda` FOREIGN KEY (`PoslovnicaID`) REFERENCES `poslovnica` (`ID`),
  CONSTRAINT `poslovoda_chk_1` CHECK ((`Placa` >= 5000))
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `poslovoda`
--

LOCK TABLES `poslovoda` WRITE;
/*!40000 ALTER TABLE `poslovoda` DISABLE KEYS */;
INSERT INTO `poslovoda` VALUES (1,1310,1,'Črnomerec 112','Petar','Horvat','7890kn','petar.horvat32@gmail.com','phorvat'),(2,2143,2,'Ul. Woodrowa Wilsona 65','Marko','Milicevic','7710kn','markmilicevic01@gmail.com','mmilicevic'),(3,2125,3,'Stinice 25','Luka','Tendar','7950kn','luka.tendar@gmail.com','ltendar'),(4,4135,4,'Flavijevska ul. 30','Tadijan','Pokar','8199kn','tadijan.pokar@gmail.com','tpokar'),(5,6812,5,'Ul. Ivana Žorža 17B','Tomislav','Tadek','7680kn','ttadek3@hotmail.com','ttadek'),(6,6999,5,'Brace_Bozic_12','Armin','Juracic','7220kn','Ajura@gmail.com','Ajuram');
/*!40000 ALTER TABLE `poslovoda` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-01-10 22:42:01
