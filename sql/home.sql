-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: home
-- ------------------------------------------------------
-- Server version	5.7.17-log

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
-- Table structure for table `homesafe`
--

DROP TABLE IF EXISTS `homesafe`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `homesafe` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `smoke` int(11) DEFAULT NULL,
  `human` int(11) DEFAULT NULL,
  `temperature` int(11) DEFAULT NULL,
  `pm25` int(11) DEFAULT NULL,
  `update_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `homesafe`
--

LOCK TABLES `homesafe` WRITE;
/*!40000 ALTER TABLE `homesafe` DISABLE KEYS */;
INSERT INTO `homesafe` VALUES (10,0,0,19,14,'2018-01-29 15:15:16'),(11,0,0,19,14,'2018-01-29 15:15:17'),(12,0,0,19,14,'2018-01-29 15:15:18'),(13,0,0,19,14,'2018-01-29 15:15:18'),(14,0,0,19,14,'2018-01-29 15:15:20'),(15,0,0,19,14,'2018-01-29 15:15:21'),(26,0,1,18,14,'2018-01-29 15:20:01'),(27,0,0,18,14,'2018-01-29 15:20:09'),(28,0,0,19,13,'2018-01-29 15:21:38'),(29,0,0,19,12,'2018-01-29 15:21:45'),(30,0,0,19,16,'2018-01-29 15:46:03'),(31,0,0,19,13,'2018-01-29 15:46:10'),(32,0,0,19,12,'2018-01-29 15:46:17'),(33,0,0,19,12,'2018-01-29 15:46:24'),(34,0,0,19,12,'2018-01-29 15:46:30'),(35,0,0,19,11,'2018-01-29 15:46:36'),(36,0,0,19,12,'2018-01-29 15:46:42'),(37,0,0,19,12,'2018-01-29 15:46:48'),(38,0,0,19,12,'2018-01-29 15:46:56'),(39,0,0,19,12,'2018-01-29 15:47:01'),(40,0,0,19,11,'2018-01-29 15:47:26'),(41,0,0,19,11,'2018-01-29 15:47:31'),(42,0,0,19,12,'2018-01-29 15:47:39'),(43,0,0,19,12,'2018-01-29 15:47:45'),(44,0,0,19,12,'2018-01-29 15:47:52');
/*!40000 ALTER TABLE `homesafe` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-01-29 16:04:53
