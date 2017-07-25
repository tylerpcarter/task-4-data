-- MySQL dump 10.13  Distrib 5.5.57, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: survey
-- ------------------------------------------------------
-- Server version	5.5.57-0ubuntu0.14.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `tableSurveyQuestions`
--

DROP TABLE IF EXISTS `tableSurveyQuestions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tableSurveyQuestions` (
  `ID` varchar(255) NOT NULL DEFAULT '',
  `Date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `HomeCapital` varchar(255) DEFAULT NULL,
  `BAC_Limit` varchar(255) DEFAULT NULL,
  `Fav_Superhero` varchar(255) DEFAULT NULL,
  `First_VidGame` decimal(5,2) DEFAULT NULL,
  `GermsElimByHandSanitizer` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tableSurveyQuestions`
--

LOCK TABLES `tableSurveyQuestions` WRITE;
/*!40000 ALTER TABLE `tableSurveyQuestions` DISABLE KEYS */;
INSERT INTO `tableSurveyQuestions` VALUES ('21413cCdD224','2017-07-25 19:52:50','Cape Town','.08','Incredible Hulk',0.00,'99.9999%'),('2c3dc3D1aAA3','2017-07-25 16:38:47','a','b','c',0.00,'e'),('44AD114c2aCb','2017-07-25 19:50:02','Stockholm','.08%','Superman',0.00,'99.999%'),('aa4bcA3D1BCB','2017-07-25 19:51:55','Beijing','.08','Flash',0.00,'99.99999'),('cAd233BcCabA','2017-07-25 19:50:47','Brasilia','.08','Green Lantern',0.00,'99.99'),('Cdd2c3dcD313','2017-07-25 19:49:24','WASHINGTONDC','.08%','Batman',0.00,'99.9%');
/*!40000 ALTER TABLE `tableSurveyQuestions` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-07-25 15:54:54
