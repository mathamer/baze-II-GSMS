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
-- Temporary view structure for view `lista_proizvoda_posudba`
--

DROP TABLE IF EXISTS `lista_proizvoda_posudba`;
/*!50001 DROP VIEW IF EXISTS `lista_proizvoda_posudba`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `lista_proizvoda_posudba` AS SELECT 
 1 AS `ProizvodID`,
 1 AS `Naziv`,
 1 AS `Zanr`,
 1 AS `Izdavac`,
 1 AS `Platforma`,
 1 AS `Cijena_Kupnje`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `place_poslodavaca`
--

DROP TABLE IF EXISTS `place_poslodavaca`;
/*!50001 DROP VIEW IF EXISTS `place_poslodavaca`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `place_poslodavaca` AS SELECT 
 1 AS `Ime`,
 1 AS `Placa`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `lista_proizvoda_kupnja`
--

DROP TABLE IF EXISTS `lista_proizvoda_kupnja`;
/*!50001 DROP VIEW IF EXISTS `lista_proizvoda_kupnja`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `lista_proizvoda_kupnja` AS SELECT 
 1 AS `ProizvodID`,
 1 AS `Naziv`,
 1 AS `Zanr`,
 1 AS `Izdavac`,
 1 AS `Platforma`,
 1 AS `Cijena`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `place_zaposlenika`
--

DROP TABLE IF EXISTS `place_zaposlenika`;
/*!50001 DROP VIEW IF EXISTS `place_zaposlenika`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `place_zaposlenika` AS SELECT 
 1 AS `Ime zaposlenika`,
 1 AS `Placa_zaposlenika`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `lista_kupaca`
--

DROP TABLE IF EXISTS `lista_kupaca`;
/*!50001 DROP VIEW IF EXISTS `lista_kupaca`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `lista_kupaca` AS SELECT 
 1 AS `KupacID`,
 1 AS `Ime`,
 1 AS `Adresa`,
 1 AS `Postanski broj i grad`,
 1 AS `Telefon`,
 1 AS `Država`,
 1 AS `Racun_Br`,
 1 AS `Zaposlenik`,
 1 AS `Ime zaposlenika`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `prodaja_po_poslovnicama`
--

DROP TABLE IF EXISTS `prodaja_po_poslovnicama`;
/*!50001 DROP VIEW IF EXISTS `prodaja_po_poslovnicama`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `prodaja_po_poslovnicama` AS SELECT 
 1 AS `PoslovnicaID`,
 1 AS `Grad`,
 1 AS `PoslovodaID`,
 1 AS `Ime poslovode`,
 1 AS `Ukupno prodano`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `posudeno_po_poslovnicama`
--

DROP TABLE IF EXISTS `posudeno_po_poslovnicama`;
/*!50001 DROP VIEW IF EXISTS `posudeno_po_poslovnicama`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `posudeno_po_poslovnicama` AS SELECT 
 1 AS `PoslovnicaID`,
 1 AS `Grad`,
 1 AS `PoslovodaID`,
 1 AS `Ime poslovode`,
 1 AS `Ukupno posudeno`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `korisnicko_ime_i_lozinka_poslodavci`
--

DROP TABLE IF EXISTS `korisnicko_ime_i_lozinka_poslodavci`;
/*!50001 DROP VIEW IF EXISTS `korisnicko_ime_i_lozinka_poslodavci`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `korisnicko_ime_i_lozinka_poslodavci` AS SELECT 
 1 AS `Korisnicko_ime`,
 1 AS `sifra`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `lista_zaposlenika`
--

DROP TABLE IF EXISTS `lista_zaposlenika`;
/*!50001 DROP VIEW IF EXISTS `lista_zaposlenika`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `lista_zaposlenika` AS SELECT 
 1 AS `ID`,
 1 AS `Ime`,
 1 AS `Adresa`,
 1 AS `Grad`,
 1 AS `Poslovnica`,
 1 AS `Poslovoda`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `korisnicko_ime_i_lozinka_zaposlenici`
--

DROP TABLE IF EXISTS `korisnicko_ime_i_lozinka_zaposlenici`;
/*!50001 DROP VIEW IF EXISTS `korisnicko_ime_i_lozinka_zaposlenici`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `korisnicko_ime_i_lozinka_zaposlenici` AS SELECT 
 1 AS `Korisnicko_ime`,
 1 AS `Sifra`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `lista_proizvoda_posudba`
--

/*!50001 DROP VIEW IF EXISTS `lista_proizvoda_posudba`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`marko`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `lista_proizvoda_posudba` AS select `proizvod`.`ID` AS `ProizvodID`,`proizvod`.`Naziv` AS `Naziv`,`proizvod`.`Zanr` AS `Zanr`,`proizvod`.`Izdavac` AS `Izdavac`,`proizvod`.`Platforma` AS `Platforma`,`proizvod`.`Cijena_za_kupnju` AS `Cijena_Kupnje` from `proizvod` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `place_poslodavaca`
--

/*!50001 DROP VIEW IF EXISTS `place_poslodavaca`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`matija`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `place_poslodavaca` AS select concat(`poslovoda`.`Ime`,' ',`poslovoda`.`Prezime`) AS `Ime`,`poslovoda`.`Placa` AS `Placa` from `poslovoda` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `lista_proizvoda_kupnja`
--

/*!50001 DROP VIEW IF EXISTS `lista_proizvoda_kupnja`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`marko`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `lista_proizvoda_kupnja` AS select `proizvod`.`ID` AS `ProizvodID`,`proizvod`.`Naziv` AS `Naziv`,`proizvod`.`Zanr` AS `Zanr`,`proizvod`.`Izdavac` AS `Izdavac`,`proizvod`.`Platforma` AS `Platforma`,`proizvod`.`Cijena_za_kupnju` AS `Cijena` from `proizvod` where (not((`proizvod`.`Cijena_za_kupnju` like '%x%'))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `place_zaposlenika`
--

/*!50001 DROP VIEW IF EXISTS `place_zaposlenika`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`luka`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `place_zaposlenika` AS select concat(`zaposlenik`.`Ime`,' ',`zaposlenik`.`Prezime`) AS `Ime zaposlenika`,`zaposlenik`.`Placa` AS `Placa_zaposlenika` from `zaposlenik` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `lista_kupaca`
--

/*!50001 DROP VIEW IF EXISTS `lista_kupaca`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`marko`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `lista_kupaca` AS select `kupac`.`KupacID` AS `KupacID`,concat(`kupac`.`Ime`,' ',`kupac`.`Prezime`) AS `Ime`,`adresa`.`Adresa` AS `Adresa`,`adresa`.`Grad` AS `Postanski broj i grad`,`adresa`.`Broj_telefona` AS `Telefon`,`adresa`.`Drzava` AS `Država`,`racun`.`ID` AS `Racun_Br`,`zaposlenik`.`ID` AS `Zaposlenik`,concat(`zaposlenik`.`Ime`,' ',`zaposlenik`.`Prezime`) AS `Ime zaposlenika` from (((`kupac` join `adresa` on((`kupac`.`KupacID` = `adresa`.`KupacID`))) left join `zaposlenik` on((`kupac`.`ZaposlenikID` = `zaposlenik`.`ID`))) join `racun` on((`kupac`.`KupacID` = `racun`.`KupacID`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `prodaja_po_poslovnicama`
--

/*!50001 DROP VIEW IF EXISTS `prodaja_po_poslovnicama`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`marko`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `prodaja_po_poslovnicama` AS select `poslovnica`.`ID` AS `PoslovnicaID`,`poslovnica`.`Grad` AS `Grad`,`poslovoda`.`sifra` AS `PoslovodaID`,concat(`poslovoda`.`Ime`,' ',`poslovoda`.`Prezime`) AS `Ime poslovode`,sum(`prodano`.`cijena`) AS `Ukupno prodano` from ((`poslovnica` join `prodano` on((`prodano`.`PoslovnicaID` = `poslovnica`.`ID`))) join `poslovoda` on((`poslovnica`.`ID` = `poslovoda`.`PoslovnicaID`))) group by `poslovnica`.`ID` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `posudeno_po_poslovnicama`
--

/*!50001 DROP VIEW IF EXISTS `posudeno_po_poslovnicama`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`marko`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `posudeno_po_poslovnicama` AS select `poslovnica`.`ID` AS `PoslovnicaID`,`poslovnica`.`Grad` AS `Grad`,`poslovoda`.`sifra` AS `PoslovodaID`,concat(`poslovoda`.`Ime`,' ',`poslovoda`.`Prezime`) AS `Ime poslovode`,count(`posudeno`.`ID`) AS `Ukupno posudeno` from ((`poslovnica` join `posudeno` on((`posudeno`.`poslovnicaid` = `poslovnica`.`ID`))) join `poslovoda` on((`poslovnica`.`ID` = `poslovoda`.`PoslovnicaID`))) group by `poslovnica`.`ID` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `korisnicko_ime_i_lozinka_poslodavci`
--

/*!50001 DROP VIEW IF EXISTS `korisnicko_ime_i_lozinka_poslodavci`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`matija`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `korisnicko_ime_i_lozinka_poslodavci` AS select `poslovoda`.`Korisnicko_ime` AS `Korisnicko_ime`,`poslovoda`.`sifra` AS `sifra` from `poslovoda` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `lista_zaposlenika`
--

/*!50001 DROP VIEW IF EXISTS `lista_zaposlenika`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`marko`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `lista_zaposlenika` AS select `zaposlenik`.`ID` AS `ID`,concat(`zaposlenik`.`Ime`,' ',`zaposlenik`.`Prezime`) AS `Ime`,`zaposlenik`.`Adresa` AS `Adresa`,`zaposlenik`.`Grad_Stanovanja` AS `Grad`,`poslovnica`.`ID` AS `Poslovnica`,`poslovoda`.`sifra` AS `Poslovoda` from ((`zaposlenik` join `poslovnica` on((`zaposlenik`.`PoslovnicaID` = `poslovnica`.`ID`))) join `poslovoda` on((`zaposlenik`.`PoslovodaSifra` = `poslovoda`.`sifra`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `korisnicko_ime_i_lozinka_zaposlenici`
--

/*!50001 DROP VIEW IF EXISTS `korisnicko_ime_i_lozinka_zaposlenici`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`matija`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `korisnicko_ime_i_lozinka_zaposlenici` AS select `zaposlenik`.`Korisnicko_ime` AS `Korisnicko_ime`,`zaposlenik`.`Sifra` AS `Sifra` from `zaposlenik` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Dumping events for database 'gameshop'
--

--
-- Dumping routines for database 'gameshop'
--
/*!50003 DROP FUNCTION IF EXISTS `broj_aktivnih_kupaca` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`mateo`@`%` FUNCTION `broj_aktivnih_kupaca`(
aktivni INTEGER
) RETURNS int(11)
    DETERMINISTIC
begin
declare k_zbroj INTEGER;
SELECT count(*) INTO k_zbroj FROM kupac AS k
WHERE k.aktivan = 'D';
RETURN k_zbroj;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `broj_dostupnih_proizvoda_nintendo` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`mateo`@`%` FUNCTION `broj_dostupnih_proizvoda_nintendo`(
dostupnost char
) RETURNS int(11)
    DETERMINISTIC
begin
 declare broj integer;
  select count(*) into broj from stanje_poslovnica_nintendo as n where n.dostupnost = 'Da';
RETURN broj;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `broj_dostupnih_proizvoda_ps4` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`mateo`@`%` FUNCTION `broj_dostupnih_proizvoda_ps4`(
dostupnost char
) RETURNS int(11)
    DETERMINISTIC
begin
 declare broj integer;
  select count(*) into broj from stanje_poslovnica_ps4 as p where p.dostupnost = 'Da';
RETURN broj;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `broj_dostupnih_proizvoda_xbox` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`mateo`@`%` FUNCTION `broj_dostupnih_proizvoda_xbox`(
dostupnost char
) RETURNS int(11)
    DETERMINISTIC
begin
 declare broj integer;
  select count(*) into broj from stanje_poslovnica_xbox as x where x.dostupnost = 'Da';
RETURN broj;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `broj_proizvoda_nintendo` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`mateo`@`%` FUNCTION `broj_proizvoda_nintendo`(
kolicina INTEGER
) RETURNS int(11)
    DETERMINISTIC
begin
 declare suma integer;
    select sum(kolicina) into suma from stanje_poslovnica_nintendo;
RETURN suma;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `broj_proizvoda_ps4` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`mateo`@`%` FUNCTION `broj_proizvoda_ps4`(
kolicina INTEGER
) RETURNS int(11)
    DETERMINISTIC
begin
 declare suma integer;
    select sum(kolicina) into suma from stanje_poslovnica_ps4;
RETURN suma;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `broj_proizvoda_xbox` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`mateo`@`%` FUNCTION `broj_proizvoda_xbox`(
kolicina INTEGER
) RETURNS int(11)
    DETERMINISTIC
begin
 declare suma integer;
    select sum(kolicina) into suma from stanje_poslovnica_xbox;
RETURN suma;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `broj_visaka_proizvoda_nintendo` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`mateo`@`%` FUNCTION `broj_visaka_proizvoda_nintendo`(
kolicina INTEGER
) RETURNS int(11)
    DETERMINISTIC
begin
 declare visak integer;
  select count(*) into visak from stanje_poslovnica_nintendo as n where n.kolicina > 10;
RETURN visak;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `broj_visaka_proizvoda_ps4` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`mateo`@`%` FUNCTION `broj_visaka_proizvoda_ps4`(
kolicina INTEGER
) RETURNS int(11)
    DETERMINISTIC
begin
 declare visak integer;
  select count(*) into visak from stanje_poslovnica_ps4 as p where p.kolicina > 10;
RETURN visak;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `broj_visaka_proizvoda_xbox` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`mateo`@`%` FUNCTION `broj_visaka_proizvoda_xbox`(
kolicina INTEGER
) RETURNS int(11)
    DETERMINISTIC
begin
 declare visak integer;
  select count(*) into visak from stanje_poslovnica_xbox as x where x.kolicina > 10;
RETURN visak;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `ukupan_promet` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`mateo`@`%` FUNCTION `ukupan_promet`(
cijena INTEGER
) RETURNS int(11)
    DETERMINISTIC
begin
 declare promet integer;
  select sum(cijena) into promet from prodano;
RETURN promet;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Igre_Koje_Nisu_Vracene` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`marko`@`%` PROCEDURE `Igre_Koje_Nisu_Vracene`(
    OUT ProizvodID int,
    OUT Platforma varchar(50),
    OUT PoslovnicaID int,
    OUT RacunID int)
BEGIN
    SELECT  posudeno.proizvodid, posudeno.platforma, posudeno.poslovnicaid, posudeno.racunid
        FROM  posudeno
        NATURAL LEFT JOIN vracene_igre
        WHERE vracene_igre.racunid IS NULL;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Mjesecne_Rezije` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`marko`@`%` PROCEDURE `Mjesecne_Rezije`(
    IN PoslovnicaVar int,
    IN MjesecVar varchar(10),
    IN GodinaVar varchar(10),
    OUT UkupniTroskovi int)
BEGIN
    select PoslovnicaID, Mjesec, Godina,  (Najamnina+Voda+Struja+Internet+Telefon+Plin) AS 'Ukupni troskovi'
    from rezije 
    where PoslovnicaVar=PoslovnicaID AND MjesecVar=Mjesec AND GodinaVar=Godina;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Poslovoda_Podredeni` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`matija`@`%` PROCEDURE `Poslovoda_Podredeni`(
    IN PoslovodaID int,
    OUT PoslovodaIme varchar(50),
    OUT BrojZaposlenika int)
BEGIN
SELECT Poslovoda.Ime, COUNT(Zaposlenik.ID)
FROM zaposlenik JOIN poslovoda
ON zaposlenik.poslovodasifra=poslovoda.sifra
where poslovoda.id=poslovodaid;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Prodane_Igre_U_Mjesecu` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`matija`@`%` PROCEDURE `Prodane_Igre_U_Mjesecu`(
    IN Mjesec varchar(10),
    OUT ProizvodID int,
    OUT ProizvodNaziv varchar(100))
BEGIN
    IF (Mjesec LIKE '%-01-%') THEN
        select prodano.ProizvodID, proizvod.Naziv, racun.datum_placanja
        from prodano
        inner join proizvod on proizvod.id=prodano.proizvodid
        inner join racun on racun.id=prodano.racunid
        where datum_placanja LIKE '%-01-%';
    ELSEIF (Mjesec LIKE '%-02-%') THEN
        select prodano.ProizvodID, proizvod.Naziv, racun.datum_placanja
        from prodano
        inner join proizvod on proizvod.id=prodano.proizvodid
        inner join racun on racun.id=prodano.racunid
        where datum_placanja LIKE '%-02-%';
    ELSEIF (Mjesec LIKE '%-03-%') THEN
        select prodano.ProizvodID, proizvod.Naziv, racun.datum_placanja
        from prodano
        inner join proizvod on proizvod.id=prodano.proizvodid
        inner join racun on racun.id=prodano.racunid
        where datum_placanja LIKE '%-03-%';
    ELSEIF (Mjesec LIKE '%-04-%') THEN
        select prodano.ProizvodID, proizvod.Naziv, racun.datum_placanja
        from prodano
        inner join proizvod on proizvod.id=prodano.proizvodid
        inner join racun on racun.id=prodano.racunid
        where datum_placanja LIKE '%-04-%';
    ELSEIF (Mjesec LIKE '%-05-%') THEN
        select prodano.ProizvodID, proizvod.Naziv, racun.datum_placanja
        from prodano
        inner join proizvod on proizvod.id=prodano.proizvodid
        inner join racun on racun.id=prodano.racunid
        where datum_placanja LIKE '%-05-%';
    ELSEIF (Mjesec LIKE '%-06-%') THEN
        select prodano.ProizvodID, proizvod.Naziv, racun.datum_placanja
        from prodano
        inner join proizvod on proizvod.id=prodano.proizvodid
        inner join racun on racun.id=prodano.racunid
        where datum_placanja LIKE '%-06-%';
    ELSEIF (Mjesec LIKE '%-07-%') THEN
        select prodano.ProizvodID, proizvod.Naziv, racun.datum_placanja
        from prodano
        inner join proizvod on proizvod.id=prodano.proizvodid
        inner join racun on racun.id=prodano.racunid
        where datum_placanja LIKE '%-07-%';
    ELSEIF (Mjesec LIKE '%-08-%') THEN
        select prodano.ProizvodID, proizvod.Naziv, racun.datum_placanja
        from prodano
        inner join proizvod on proizvod.id=prodano.proizvodid
        inner join racun on racun.id=prodano.racunid
        where datum_placanja LIKE '%-08-%';
    ELSEIF (Mjesec LIKE '%-09-%') THEN
        select prodano.ProizvodID, proizvod.Naziv, racun.datum_placanja
        from prodano
        inner join proizvod on proizvod.id=prodano.proizvodid
        inner join racun on racun.id=prodano.racunid
        where datum_placanja LIKE '%-09-%';
    ELSEIF (Mjesec LIKE '%-10-%') THEN
        select prodano.ProizvodID, proizvod.Naziv, racun.datum_placanja
        from prodano
        inner join proizvod on proizvod.id=prodano.proizvodid
        inner join racun on racun.id=prodano.racunid
        where datum_placanja LIKE '%-10-%';
    ELSEIF (Mjesec LIKE '%-11-%') THEN
        select prodano.ProizvodID, proizvod.Naziv, racun.datum_placanja
        from prodano
        inner join proizvod on proizvod.id=prodano.proizvodid
        inner join racun on racun.id=prodano.racunid
        where datum_placanja LIKE '%-11-%';
    ELSEIF (Mjesec LIKE '%-12-%') THEN
        select prodano.ProizvodID, proizvod.Naziv, racun.datum_placanja
        from prodano
        inner join proizvod on proizvod.id=prodano.proizvodid
        inner join racun on racun.id=prodano.racunid
        where datum_placanja LIKE '%-12-%';
    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Promet_Zaposlenika` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`marko`@`%` PROCEDURE `Promet_Zaposlenika`(
    IN ZaposlenikID int,
    OUT UkupniPromet int)
BEGIN 
    select sum(prodano.cijena) AS 'Ukupni prihod' , zaposlenik.id, CONCAT(Zaposlenik.Ime, ' ', Zaposlenik.Prezime) AS 'Ime zaposlenika'
    from prodano
    inner join racun on racun.id=prodano.racunid
    inner join zaposlenik on zaposlenik.id=racun.zaposlenikid
    where ZaposlenikID=Zaposlenik.ID;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Provjera_Stanja` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`marko`@`%` PROCEDURE `Provjera_Stanja`(
    IN ZeljenaTablica varchar(50),
    OUT ProizvodIDVar int,
    OUT PoslovnicaIDVar int,
    OUT KolicinaVar int)
BEGIN
    IF (ZeljenaTablica="stanje_poslovnica_ps4") THEN
        select ProizvodID, SifraPoslPS4, Kolicina
        from stanje_poslovnica_ps4
        where kolicina<1;
    ELSEIF (ZeljenaTablica="stanje_poslovnica_xbox") THEN
        select ProizvodID, SifraPoslXbox, Kolicina
        from stanje_poslovnica_xbox
        where kolicina<1;
    ELSEIF (ZeljenaTablica="stanje_poslovnica_nintendo") THEN
        select ProizvodID, SifraPoslNintendo, Kolicina
        from stanje_poslovnica_nintendo
        where kolicina<1;
    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Ubacivanje_Kupca` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`marko`@`%` PROCEDURE `Ubacivanje_Kupca`(
    IN ZaposlenikID int,
    IN Ime varchar(255),
    IN Prezime varchar(255),
    IN email varchar(255),
    IN Aktivan char(1),
    IN Datum_Dolaska date)
BEGIN
    insert into Kupac (ZaposlenikID, Ime, Prezime, Email, Aktivan, Datum_dolaska)
        values (ZaposlenikID, Ime, Prezime, email, Aktivan, Datum_Dolaska);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Ubacivanje_Racuna` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`marko`@`%` PROCEDURE `Ubacivanje_Racuna`(
    IN KupacID int,
    IN ZaposlenikID int,
    IN ProizvodID int,
    IN PoslovnicaID int,
    IN Platforma varchar(50),
    IN Cijena varchar(10),
    IN Kolicina int,
    IN Posudeno_Prodano varchar(10),
    IN Datum_placanja date)
BEGIN
    insert into Racun (KupacID, ZaposlenikID, ProizvodID, PoslovnicaID, Platforma, Cijena, Kolicina, Posudeno_Prodano, Datum_Placanja)
        values (KupacID, ZaposlenikID, ProizvodID, PoslovnicaID, Platforma, Cijena, Kolicina, Posudeno_Prodano, Datum_Placanja);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Vracanje_Igre` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`luka`@`%` PROCEDURE `Vracanje_Igre`(
IN ProizvodID int,
IN PoslovnicaID int, 
IN RacunID int,
IN Platforma varchar(50))
BEGIN
  insert into vracene_igre(ProizvodId, PoslovnicaId, RacunID, Platforma)
Values(ProizvodID, PoslovnicaID, RacunID, Platforma);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ZalihaProizvoda` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`marko`@`%` PROCEDURE `ZalihaProizvoda`(
    IN proizvod_id int,
    IN poslovnica_id int,
    IN platforma varchar(50),
    OUT stanje_proizvoda int)
BEGIN
  IF (platforma="PS 4") THEN
    select kolicina
    from stanje_poslovnica_ps4
    inner join poslovnica on stanje_poslovnica_ps4.sifraposlps4=poslovnica.id
    where proizvodid=proizvod_id AND poslovnica_id=poslovnica.id;
 SELECT FOUND_ROWS() INTO stanje_proizvoda;
 ELSEIF (platforma="Xbox One") THEN
    select kolicina
    from stanje_poslovnica_xbox
    inner join poslovnica on stanje_poslovnica_xbox.sifraposlxbox=poslovnica.id
    where proizvodid=proizvod_id AND poslovnica_id=poslovnica.id;
 SELECT FOUND_ROWS() INTO stanje_proizvoda;
 ELSEIF (platforma="Nintendo Switch") THEN
    select kolicina
    from stanje_poslovnica_nintendo
    inner join poslovnica on stanje_poslovnica_nintendo.sifraposlnintendo=poslovnica.id
    where proizvodid=proizvod_id AND poslovnica_id=poslovnica.id;
 SELECT FOUND_ROWS() INTO stanje_proizvoda;
 END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Zaposlenik_Informacije` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`marko`@`%` PROCEDURE `Zaposlenik_Informacije`(
    IN ZaposlenikID int,
    OUT PoslovodaSifra int,
    OUT PoslovodaIme varchar(255),
    OUT PoslovnicaGrad varchar(255),
    OUT ImeZaposlenika varchar(255),
    OUT Email varchar(255),
    OUT Grad_stanovanja varchar(255))
BEGIN
    select zaposlenik.poslovodasifra, CONCAT(poslovoda.ime,' ', poslovoda.prezime) AS 'Poslovoda ime', poslovnica.grad, CONCAT(Zaposlenik.Ime, ' ', Zaposlenik.Prezime) AS 'Zaposlenik ime', zaposlenik.email,
    zaposlenik.grad_stanovanja
    from zaposlenik
    inner join poslovoda on poslovoda.sifra=zaposlenik.poslovodasifra
    inner join poslovnica on poslovnica.id=zaposlenik.poslovnicaid
    where zaposlenik.id=ZaposlenikID;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Zaposlenik_Rent` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`marko`@`%` PROCEDURE `Zaposlenik_Rent`(
    IN ZaposlenikID int,
    OUT UkupnoPosudeno int,
    OUT ZaposlenikIDVar int,
    OUT ZaposlenikIme varchar(255))
BEGIN 
    select count(posudeno.id) AS 'Ukupno posudeno' , zaposlenik.id, CONCAT(Zaposlenik.Ime, ' ', Zaposlenik.Prezime) AS 'Ime zaposlenika'
    from posudeno
    inner join racun on racun.id=posudeno.racunid
    inner join zaposlenik on zaposlenik.id=racun.zaposlenikid
    where ZaposlenikID=Zaposlenik.ID;
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

-- Dump completed on 2020-01-10 22:42:02
