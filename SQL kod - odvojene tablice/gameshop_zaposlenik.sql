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
-- Table structure for table `zaposlenik`
--

DROP TABLE IF EXISTS `zaposlenik`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `zaposlenik` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `PoslovodaSifra` int(11) NOT NULL,
  `PoslovnicaID` int(11) NOT NULL,
  `Grad_Stanovanja` varchar(20) NOT NULL,
  `Adresa` varchar(50) NOT NULL,
  `Ime` varchar(30) NOT NULL,
  `Prezime` varchar(30) NOT NULL,
  `Placa` varchar(10) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Korisnicko_ime` varchar(16) NOT NULL,
  `Sifra` varchar(40) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `str_PoslovnicaID_Zaposlenik` (`PoslovnicaID`),
  KEY `Sifra` (`Sifra`),
  KEY `str_PoslovodaSIFRA_Zaposlenik` (`PoslovodaSifra`),
  CONSTRAINT `str_PoslovnicaID_Zaposlenik` FOREIGN KEY (`PoslovnicaID`) REFERENCES `poslovnica` (`ID`),
  CONSTRAINT `str_PoslovodaSIFRA_Zaposlenik` FOREIGN KEY (`PoslovodaSifra`) REFERENCES `poslovoda` (`sifra`),
  CONSTRAINT `zaposlenik_chk_1` CHECK ((`Placa` >= 3500))
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zaposlenik`
--

LOCK TABLES `zaposlenik` WRITE;
/*!40000 ALTER TABLE `zaposlenik` DISABLE KEYS */;
INSERT INTO `zaposlenik` VALUES (1,1310,1,'Virovitica','Ulica 30. svibnja 87','Jakov','Mlakar','5232kn','jakov.mlakar@gmail.com','Jmlakar2','crnikruh2'),(2,1310,1,'Varaždin','Draž-planina 65','Robert','Knežević','5198kn','roberknez@hotmail.com','Rknez12','messi322'),(3,1310,1,'Oroslavje','Ulica Stjepana Brodarića 60','Tamara','Dragović','4642kn','tamara.dragovic2@gmail.com','tamdrag8','douglas2'),(4,1310,1,'Dugo Selo','Nova ulica 42','Gabrijel','Horvatinčić','5779kn','gabrijelhorvat@gmail.com','gabiho','gabrica320'),(5,1310,1,'Zagreb','Velebitska ulica 70','Antonija','Bogdanović','5510kn','antonijabogdanovic@hotmail.com','AntonijaB','velebit01'),(6,2143,2,'Vukovar','Ulica Đure Đakovića 34','Vid','Kasun','5099kn','vid.kasun@gmail.comm','vidk9','Koeis8292'),(7,2143,2,'Vinkovci','Vijenac Nikole Tesle 19','Viktor','Janković','5188kn','vikjankovic@gmail.com','vikjanko93','Zeus$1'),(8,2125,3,'Split','Ulica hrvatskih branitelja 90','Fran','Vincetić','5566kn','franevincet@hotmail.com','franvi','bacvice'),(9,2125,3,'Split','Ulica bijelog lopoča 35','Bartol','Vlašić','4924kn','bartol.vlasic@yahoo.com','bartolv','splico1'),(10,2125,3,'Split','Srednja ulica 70','Jure','Kasun','4574kn','jure.kasun@gmail.com','jureKasun','jure01'),(11,4135,4,'Pula','Ulica dr. Kamila Firingera 74','Antonio','Petrović','5805kn','toncekpetr012@gmailcom','antonio1','testc8796'),(12,4135,4,'Pula','Glavna ulica 63','Matija','Novaković','5241kn','matij81@yahoo.com','matija2','tito0902'),(13,4135,4,'Rovinj','Ulica Petra Petrovića Njegoša 99','Stipe','Brož','5313kn','stipan201@gmail.com','stipe11','petarpre02'),(14,4135,4,'Pazin','Slavonska ulica 31','Stjepan','Košar','5881kn','stjepan.kosar@hotmail.com','stjepan0291','stjepko2'),(15,6812,5,'Rijeka','Ulica Ivana Mažuranića 65','Mario','Nikolić','4986kn','mario.nikolic@gmail.com','mario22','supermario1'),(16,6812,5,'Crikvenica','Ulica Petra Preradovića 89','Danijel','Grgić','5418kn','danigrgic@hotmail.com','daijel0102','danci22'),(17,6812,5,'Lovran','Ulica Branka Gavelle 91','Patrik','Ivanović','5986kn','patrik.ivanovic@gmail.com','pivan','pivanovic002'),(18,6812,5,'Porec','Kastelska_12','Marko','Kacic','5920kn','mkacic@gmail.com','mkacic2','jeste2020');
/*!40000 ALTER TABLE `zaposlenik` ENABLE KEYS */;
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
