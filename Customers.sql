-- MySQL dump 10.13  Distrib 8.0.19, for macos10.15 (x86_64)
--
-- Host: localhost    Database: Customers
-- ------------------------------------------------------
-- Server version	8.0.19

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
-- Table structure for table `Customer`
--

DROP TABLE IF EXISTS `Customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Customer` (
  `customer_id` int NOT NULL AUTO_INCREMENT,
  `customer_photo` mediumblob,
  `customer_name` varchar(45) NOT NULL,
  `customer_phone` varchar(45) NOT NULL,
  `customer_email` varchar(45) NOT NULL,
  `customer_number_plate` varchar(45) NOT NULL,
  `customer_car_model` varchar(45) NOT NULL,
  `customer_car_color` varchar(45) NOT NULL,
  `customer_identify_front` mediumblob,
  `customer_identify_back` mediumblob,
  `customer_car_insurance` mediumblob,
  `customer_car_insurance_date` date DEFAULT NULL,
  `customer_compulsory_insurance` mediumblob,
  `customer_compulsory_insurance_date` date DEFAULT NULL,
  `customer_third_insurance` mediumblob,
  `customer_third_insurance_date` date DEFAULT NULL,
  `customer_account_status` int DEFAULT NULL,
  `customer_account` varchar(255) DEFAULT NULL,
  `customer_password` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`customer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Customer`
--

LOCK TABLES `Customer` WRITE;
/*!40000 ALTER TABLE `Customer` DISABLE KEYS */;
INSERT INTO `Customer` VALUES (1,NULL,'阿龍','0923123654','321@gmail.com','9A-3412','benz c300','黑',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL);
/*!40000 ALTER TABLE `Customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Customer_credit_card`
--

DROP TABLE IF EXISTS `Customer_credit_card`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Customer_credit_card` (
  `credit_card_id` int NOT NULL AUTO_INCREMENT,
  `customer_id` int NOT NULL,
  `credit_card_number` varchar(45) NOT NULL,
  `credit_card_date` date NOT NULL,
  PRIMARY KEY (`credit_card_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Customer_credit_card`
--

LOCK TABLES `Customer_credit_card` WRITE;
/*!40000 ALTER TABLE `Customer_credit_card` DISABLE KEYS */;
/*!40000 ALTER TABLE `Customer_credit_card` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Customer_opinion`
--

DROP TABLE IF EXISTS `Customer_opinion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Customer_opinion` (
  `customer_opinion_id` int NOT NULL,
  `customer_id` int DEFAULT NULL,
  `customer_opinion_question` varchar(255) DEFAULT NULL,
  `customer_opinion_answer` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`customer_opinion_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Customer_opinion`
--

LOCK TABLES `Customer_opinion` WRITE;
/*!40000 ALTER TABLE `Customer_opinion` DISABLE KEYS */;
/*!40000 ALTER TABLE `Customer_opinion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Driver`
--

DROP TABLE IF EXISTS `Driver`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Driver` (
  `driver_id` int NOT NULL AUTO_INCREMENT,
  `driver_photo` mediumblob,
  `driver_name` varchar(45) NOT NULL,
  `driver_phone` varchar(45) NOT NULL,
  `driver_email` varchar(45) NOT NULL,
  `driver_bank_name` varchar(45) NOT NULL,
  `driver_bank_account` varchar(45) NOT NULL,
  `driver_bank_code` varchar(45) NOT NULL,
  `driver_longitude` double DEFAULT NULL,
  `driver_latitude` double DEFAULT NULL,
  `driver_identify_front` mediumblob,
  `driver_identify_back` mediumblob,
  `driver_license_front` mediumblob,
  `driver_license_back` mediumblob,
  `driver_liability_insurance` mediumblob,
  `driver_liability_insurance_date` date DEFAULT NULL,
  `driver_status` int DEFAULT NULL,
  `driver_account_status` int DEFAULT NULL,
  `driver_account` varchar(255) DEFAULT NULL,
  `driver_password` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`driver_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Driver`
--

LOCK TABLES `Driver` WRITE;
/*!40000 ALTER TABLE `Driver` DISABLE KEYS */;
INSERT INTO `Driver` VALUES (1,NULL,'阿俊','0933234556','123@gmail.com','阿俊','123456789921','404',121.5327133,25.0476767,NULL,NULL,NULL,NULL,NULL,NULL,1,1,NULL,NULL);
/*!40000 ALTER TABLE `Driver` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Driver_opinion`
--

DROP TABLE IF EXISTS `Driver_opinion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Driver_opinion` (
  `driver_opinion_id` int NOT NULL,
  `driver_id` int DEFAULT NULL,
  `driver_opinion_question` varchar(255) DEFAULT NULL,
  `driver_opinion_answer` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`driver_opinion_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Driver_opinion`
--

LOCK TABLES `Driver_opinion` WRITE;
/*!40000 ALTER TABLE `Driver_opinion` DISABLE KEYS */;
/*!40000 ALTER TABLE `Driver_opinion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Order_detail`
--

DROP TABLE IF EXISTS `Order_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Order_detail` (
  `order_id` int NOT NULL AUTO_INCREMENT,
  `customer_id` int NOT NULL,
  `driver_id` int NOT NULL,
  `order_start` varchar(255) NOT NULL,
  `order_end` varchar(255) NOT NULL,
  `order_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `order_money` double DEFAULT NULL,
  `start_longitude` double DEFAULT NULL,
  `start_latitude` double DEFAULT NULL,
  `end_longitude` double DEFAULT NULL,
  `end_latitude` double DEFAULT NULL,
  `customer_score` double DEFAULT NULL,
  `driver_score` double DEFAULT NULL,
  PRIMARY KEY (`order_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Order_detail`
--

LOCK TABLES `Order_detail` WRITE;
/*!40000 ALTER TABLE `Order_detail` DISABLE KEYS */;
INSERT INTO `Order_detail` VALUES (1,1,1,'No. 6, Section 2, Jinan Road, Zhongzheng District, Taipei City, Taiwan 100','No. 22, Lane 49, Chifeng Street, Datong District, Taipei City, Taiwan 103','2020-04-26 12:46:54',NULL,NULL,NULL,NULL,NULL,4,3),(2,1,1,'No. 6, Section 2, Jinan Road, Zhongzheng District, Taipei City, Taiwan 100','No. 22, Lane 49, Chifeng Street, Datong District, Taipei City, Taiwan 103','2020-04-26 12:56:19',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3,1,1,'No. 6, Section 2, Jinan Road, Zhongzheng District, Taipei City, Taiwan 100','No. 22, Lane 49, Chifeng Street, Datong District, Taipei City, Taiwan 103','2020-04-26 13:08:42',NULL,NULL,NULL,NULL,NULL,5,5);
/*!40000 ALTER TABLE `Order_detail` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-04-26 21:37:29
