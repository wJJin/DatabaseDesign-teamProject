-- MySQL dump 10.13  Distrib 8.0.21, for Win64 (x86_64)
--
-- Host: localhost    Database: dbteam
-- ------------------------------------------------------
-- Server version	8.0.21

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
-- Table structure for table `bill`
--

DROP TABLE IF EXISTS `bill`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bill` (
  `BILL_ID` varchar(10) NOT NULL,
  `RES_ID` varchar(10) NOT NULL,
  `GST_ID` varchar(12) NOT NULL,
  `BILL_TOT` int NOT NULL,
  `BILL_PDATE` date NOT NULL,
  PRIMARY KEY (`BILL_ID`),
  UNIQUE KEY `BILL_ID_UNIQUE` (`BILL_ID`),
  UNIQUE KEY `RES_ID_UNIQUE` (`RES_ID`),
  UNIQUE KEY `GST_ID_UNIQUE` (`GST_ID`),
  UNIQUE KEY `BILL_TOT_UNIQUE` (`BILL_TOT`),
  UNIQUE KEY `BILL_PDATE_UNIQUE` (`BILL_PDATE`),
  CONSTRAINT `bill_ibfk_1` FOREIGN KEY (`RES_ID`) REFERENCES `reservation` (`RES_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `bill_ibfk_2` FOREIGN KEY (`GST_ID`) REFERENCES `guest` (`GST_ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bill`
--

LOCK TABLES `bill` WRITE;
/*!40000 ALTER TABLE `bill` DISABLE KEYS */;
/*!40000 ALTER TABLE `bill` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `booking`
--

DROP TABLE IF EXISTS `booking`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `booking` (
  `BK_ID` varchar(10) NOT NULL,
  `RES_ID` varchar(10) NOT NULL,
  `ROOM_ID` varchar(4) NOT NULL,
  PRIMARY KEY (`BK_ID`),
  UNIQUE KEY `BK_ID_UNIQUE` (`BK_ID`),
  UNIQUE KEY `RES_ID_UNIQUE` (`RES_ID`),
  UNIQUE KEY `ROOM_ID_UNIQUE` (`ROOM_ID`),
  CONSTRAINT `booking_ibfk_1` FOREIGN KEY (`RES_ID`) REFERENCES `reservation` (`RES_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `booking_ibfk_2` FOREIGN KEY (`ROOM_ID`) REFERENCES `room` (`ROOM_ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `booking`
--

LOCK TABLES `booking` WRITE;
/*!40000 ALTER TABLE `booking` DISABLE KEYS */;
/*!40000 ALTER TABLE `booking` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employee` (
  `EMP_ID` varchar(12) NOT NULL,
  `EMP_FNAME` varchar(10) NOT NULL,
  `EMP_LNAME` varchar(10) NOT NULL,
  `HOTEL_ID` varchar(10) NOT NULL,
  `EMP_ROLE` varchar(10) NOT NULL,
  `EMP_PHONE` char(11) NOT NULL,
  PRIMARY KEY (`EMP_ID`),
  UNIQUE KEY `HOTEL_ID_UNIQUE` (`HOTEL_ID`),
  UNIQUE KEY `EMP_PHONE_UNIQUE` (`EMP_PHONE`),
  CONSTRAINT `employee_ibfk_1` FOREIGN KEY (`HOTEL_ID`) REFERENCES `hotel` (`HOTEL_ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee`
--

LOCK TABLES `employee` WRITE;
/*!40000 ALTER TABLE `employee` DISABLE KEYS */;
/*!40000 ALTER TABLE `employee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `guest`
--

DROP TABLE IF EXISTS `guest`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `guest` (
  `GST_ID` varchar(12) NOT NULL,
  `GST_FNAME` varchar(10) NOT NULL,
  `GST_LNAME` varchar(10) NOT NULL,
  `GST_ADD` varchar(45) NOT NULL,
  `GST_PHONE` char(11) NOT NULL,
  `GST_EMAIL` varchar(25) NOT NULL,
  `GST_DOB` date NOT NULL,
  PRIMARY KEY (`GST_ID`),
  UNIQUE KEY `GST_PHONE_UNIQUE` (`GST_PHONE`),
  UNIQUE KEY `GST_EMAIL_UNIQUE` (`GST_EMAIL`),
  UNIQUE KEY `GST_ID_UNIQUE` (`GST_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `guest`
--

LOCK TABLES `guest` WRITE;
/*!40000 ALTER TABLE `guest` DISABLE KEYS */;
/*!40000 ALTER TABLE `guest` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hotel`
--

DROP TABLE IF EXISTS `hotel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hotel` (
  `HOTEL_ID` varchar(10) NOT NULL,
  `HOTEL_NAME` varchar(20) NOT NULL,
  `HOTEL_ADD` varchar(45) NOT NULL,
  `HOTEL_PHONE` char(11) NOT NULL,
  `HOTEL_FAX` char(10) DEFAULT NULL,
  PRIMARY KEY (`HOTEL_ID`),
  UNIQUE KEY `HOTEL_ID_UNIQUE` (`HOTEL_ID`),
  UNIQUE KEY `HOTEL_PHONE_UNIQUE` (`HOTEL_PHONE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hotel`
--

LOCK TABLES `hotel` WRITE;
/*!40000 ALTER TABLE `hotel` DISABLE KEYS */;
/*!40000 ALTER TABLE `hotel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reservation`
--

DROP TABLE IF EXISTS `reservation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reservation` (
  `RES_ID` varchar(10) NOT NULL,
  `GST_ID` varchar(12) NOT NULL,
  `RES_DATE` date NOT NULL,
  `RES_NOG` int NOT NULL,
  `RES_NOR` int NOT NULL,
  `RES_SDATE` date NOT NULL,
  `RES_EDATE` date NOT NULL,
  PRIMARY KEY (`RES_ID`),
  UNIQUE KEY `GST_ID_UNIQUE` (`GST_ID`),
  UNIQUE KEY `RES_ID_UNIQUE` (`RES_ID`),
  CONSTRAINT `reservation_ibfk_1` FOREIGN KEY (`GST_ID`) REFERENCES `guest` (`GST_ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reservation`
--

LOCK TABLES `reservation` WRITE;
/*!40000 ALTER TABLE `reservation` DISABLE KEYS */;
/*!40000 ALTER TABLE `reservation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `room`
--

DROP TABLE IF EXISTS `room`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `room` (
  `ROOM_ID` varchar(4) NOT NULL,
  `HOTEL_ID` varchar(10) NOT NULL,
  `RT_ID` varchar(20) NOT NULL,
  `ROOM_FLOOR` varchar(2) NOT NULL,
  PRIMARY KEY (`ROOM_ID`),
  UNIQUE KEY `ROOM_ID_UNIQUE` (`ROOM_ID`),
  UNIQUE KEY `HOTEL_ID_UNIQUE` (`HOTEL_ID`),
  KEY `RT_ID_idx` (`RT_ID`),
  CONSTRAINT `room_ibfk_1` FOREIGN KEY (`HOTEL_ID`) REFERENCES `hotel` (`HOTEL_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `room_ibfk_2` FOREIGN KEY (`RT_ID`) REFERENCES `roomtype` (`RT_ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `room`
--

LOCK TABLES `room` WRITE;
/*!40000 ALTER TABLE `room` DISABLE KEYS */;
/*!40000 ALTER TABLE `room` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roomtype`
--

DROP TABLE IF EXISTS `roomtype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roomtype` (
  `RT_ID` varchar(20) NOT NULL,
  `RT_PRICE` int NOT NULL,
  `RT_CAPA` int NOT NULL,
  `RT_NOB` int NOT NULL,
  PRIMARY KEY (`RT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roomtype`
--

LOCK TABLES `roomtype` WRITE;
/*!40000 ALTER TABLE `roomtype` DISABLE KEYS */;
/*!40000 ALTER TABLE `roomtype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'dbteam'
--

--
-- Dumping routines for database 'dbteam'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-11-16  9:48:27
