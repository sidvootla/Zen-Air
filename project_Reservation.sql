-- MySQL dump 10.13  Distrib 8.0.33, for macos13 (arm64)
--
-- Host: localhost    Database: project
-- ------------------------------------------------------
-- Server version	8.0.33

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
-- Table structure for table `Reservation`
--

DROP TABLE IF EXISTS `Reservation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Reservation` (
  `reservation_id` varchar(45) NOT NULL,
  `passenger_id` int DEFAULT NULL,
  `pnr_out` varchar(20) DEFAULT NULL,
  `pnr_in` varchar(20) DEFAULT NULL,
  `flight_no_departure` varchar(20) DEFAULT NULL,
  `flight_no_return` varchar(20) DEFAULT NULL,
  `seat_number_departure` varchar(10) DEFAULT NULL,
  `seat_number_return` varchar(10) DEFAULT NULL,
  `travel_date_departure` date DEFAULT NULL,
  `travel_date_return` date DEFAULT NULL,
  `amount` decimal(9,2) DEFAULT NULL,
  KEY `flight_no_departure` (`flight_no_departure`),
  KEY `flight_no_return` (`flight_no_return`),
  CONSTRAINT `reservation_ibfk_1` FOREIGN KEY (`flight_no_departure`) REFERENCES `flightdata` (`Flight_No`),
  CONSTRAINT `reservation_ibfk_2` FOREIGN KEY (`flight_no_return`) REFERENCES `flightdata` (`Flight_No`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Reservation`
--

LOCK TABLES `Reservation` WRITE;
/*!40000 ALTER TABLE `Reservation` DISABLE KEYS */;
INSERT INTO `Reservation` VALUES ('lkHaVR',1,'ZEMRSQ5','ZEUI6VA','ZE-068','ZE-672',NULL,NULL,'2023-07-18','2023-07-20',23108.00),('lkHaVR',2,'ZEMRSQ5','ZEUI6VA','ZE-068','ZE-672',NULL,NULL,'2023-07-18','2023-07-20',23108.00),('4UWhxq',4,'ZE0QEHV',NULL,'ZE-068',NULL,NULL,NULL,'2023-07-18',NULL,5512.00);
/*!40000 ALTER TABLE `Reservation` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-07-17  0:05:12
