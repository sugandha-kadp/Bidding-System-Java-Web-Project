-- MySQL dump 10.13  Distrib 8.0.26, for Win64 (x86_64)
--
-- Host: localhost    Database: bidding
-- ------------------------------------------------------
-- Server version	8.0.26

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
-- Table structure for table `payment`
--

DROP TABLE IF EXISTS `payment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payment` (
  `pid` int NOT NULL AUTO_INCREMENT,
  `itemNumber` varchar(45) DEFAULT NULL,
  `crdHolderName` varchar(45) DEFAULT NULL,
  `crdNumber` varchar(45) DEFAULT NULL,
  `crdExpMonth` varchar(45) DEFAULT NULL,
  `crdExpYear` varchar(45) DEFAULT NULL,
  `amount` varchar(45) DEFAULT NULL,
  `date` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`pid`)
) ENGINE=InnoDB AUTO_INCREMENT=76 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment`
--

LOCK TABLES `payment` WRITE;
/*!40000 ALTER TABLE `payment` DISABLE KEYS */;
INSERT INTO `payment` VALUES (74,'IT0101','K A D P Sugandha','4539009206998026','11','2022','$49,950 ','Thu Sep 30 02:15:48 IST 2021'),(75,'IT7894','K A D Jayasiri','4929295646645354','04','2025','$1,800 ','Thu Sep 30 02:17:36 IST 2021');
/*!40000 ALTER TABLE `payment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wonlist`
--

DROP TABLE IF EXISTS `wonlist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wonlist` (
  `wid` int NOT NULL AUTO_INCREMENT,
  `itemNumber` varchar(45) DEFAULT NULL,
  `itemName` varchar(45) DEFAULT NULL,
  `discription` varchar(45) DEFAULT NULL,
  `price` varchar(45) DEFAULT NULL,
  `bidderID` varchar(45) DEFAULT NULL,
  `paymentCode` varchar(45) DEFAULT NULL,
  `wonDate` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`wid`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wonlist`
--

LOCK TABLES `wonlist` WRITE;
/*!40000 ALTER TABLE `wonlist` DISABLE KEYS */;
INSERT INTO `wonlist` VALUES (1,'IT0101','Tesla Model S','fully electric and  autopilot mode','$49,950 ','B001','PAY213','28/09/2021'),(2,'IT1021','iPhone 13','Cinematic camera mode','$2,500 ','B004','PAY768','10/8/2021'),(3,'IT2354','Mac Book Pr0 17 M1','Lates M1 Chip','$3,000 ','B002','PAY123','10/8/2021'),(4,'IT4561','Samsung Galaxy S21','Lates Android Flagship Mobile','$2,100 ','B003','PAY111','27/09/2021'),(5,'IT7894','Asus Rog Mobie 4','Design for Gaming','$1,800 ','B005','PAY900','11/8/2021');
/*!40000 ALTER TABLE `wonlist` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-09-30  2:52:46
