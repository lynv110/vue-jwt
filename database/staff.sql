-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: vue-jwt
-- ------------------------------------------------------
-- Server version	5.6.37

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
-- Table structure for table `part`
--

DROP TABLE IF EXISTS `part`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `part` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(96) COLLATE utf8_unicode_ci NOT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `status` tinyint(2) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `modified_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `part`
--

LOCK TABLES `part` WRITE;
/*!40000 ALTER TABLE `part` DISABLE KEYS */;
INSERT INTO `part` VALUES (1,'Lập trình',0,0,'2018-05-14 09:10:42','2018-05-14 09:24:47'),(2,'Marketting',0,1,'2018-05-14 09:11:33','2018-05-14 09:11:33'),(3,'Lễ tân',0,1,'2018-05-14 09:17:10','2018-05-14 09:17:10'),(6,'Test pagi',0,1,'2018-05-14 09:24:17','2018-05-14 09:24:17'),(7,'Test 1 fgfg',0,1,'2018-05-14 09:24:25','2018-05-17 02:11:11'),(8,'Test part 2',0,1,'2018-05-15 07:01:16','2018-05-15 07:01:24'),(9,'Test 000',0,1,'2018-05-15 07:48:36','2018-05-15 07:48:36'),(10,'Test add 1',0,1,'2018-05-17 02:09:32','2018-05-17 02:09:32');
/*!40000 ALTER TABLE `part` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `position`
--

DROP TABLE IF EXISTS `position`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `position` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(96) COLLATE utf8_unicode_ci NOT NULL,
  `sort_permission` tinyint(4) NOT NULL,
  `status` tinyint(2) NOT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `modified_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `position`
--

LOCK TABLES `position` WRITE;
/*!40000 ALTER TABLE `position` DISABLE KEYS */;
INSERT INTO `position` VALUES (1,'Trưởng phòng',5,1,0,'2018-05-15 01:04:19','2018-05-15 08:16:25'),(3,'Nhân viên edit',8,1,0,'2018-05-15 08:12:46','2018-05-17 02:42:42'),(4,'Phó phòng',6,1,0,'2018-05-15 08:42:31','2018-05-15 08:42:31'),(5,'Công nhân',11,1,0,'2018-05-16 02:06:40','2018-05-16 02:06:40'),(6,'test chuc vu exit',14,1,0,'2018-05-17 02:42:32','2018-05-17 02:42:32'),(7,'fdfdgfgf',15,1,0,'2018-05-17 02:45:24','2018-05-17 03:06:57');
/*!40000 ALTER TABLE `position` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `staff`
--

DROP TABLE IF EXISTS `staff`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `staff` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `telephone` varchar(16) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gender` tinyint(4) NOT NULL,
  `email` varchar(96) COLLATE utf8_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `username` varchar(96) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(96) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` tinyint(2) NOT NULL,
  `changed_password` tinyint(2) NOT NULL,
  `is_root` tinyint(2) NOT NULL,
  `birthday` date DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `modified_at` datetime DEFAULT NULL,
  `login_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `staff`
--

LOCK TABLES `staff` WRITE;
/*!40000 ALTER TABLE `staff` DISABLE KEYS */;
INSERT INTO `staff` VALUES (1,'Ly Nguyen Van','0986087298','Hải Hòa, Hải Hậu, Nam Định',0,'admin@gmail.com','Screenshot (1).png','admin','$2y$10$Q2N5Ej6hJRoRjh9Fp7yv2ec23ItV/U9u9Qq1ZF4EzGo2419Dy54U.',NULL,1,1,1,'1991-10-01',NULL,'2018-05-21 10:24:58','2018-05-21 10:24:59'),(21,'Nguyễn Văn A','0147258369','Hà Nội',0,'lynv110@gmail.com',NULL,'lynv110','$2y$10$xOBbAf3g7Wa27FEkCmZx6.5LPy7ptf/DfGaZR75/9nbNQ8oKJMCX6','hSyAPzUKhxFw2glpabe70BDECTrEyn7Hx5vPZLJn',1,1,0,'1991-10-01','2018-05-16 10:03:19','2018-05-21 09:43:08','2018-05-21 10:21:06'),(22,'Dương Văn An','0147147147','Hải Hòa, hải Hậu, Nam Định',0,'lynguyenvan110@gmail.com',NULL,'duongan','$2y$10$M.GQdvirmhgTB5aGO58n9.9xuE42i3.VE1bdtN2IIM1LGr5.i5q.e',NULL,0,0,0,'1991-10-01','2018-05-17 03:18:48','2018-05-21 10:20:17',NULL),(24,'test name staff','0258258258',NULL,0,'lynv@gmail.com',NULL,'lynv11111','$2y$10$Vllc6kRuoqyrgWKNqCxg0uNxtgE3fEKoSPKvxrV.PZ4ck6gK.cajG',NULL,1,0,0,NULL,'2018-05-17 04:05:25','2018-05-18 02:05:29',NULL),(25,'Phạm Thị B','0258258258',NULL,1,'dva@gmail.com',NULL,'adminfdsf','$2y$10$doenvKa4ppoK7lWfb.3wwOfFgoVuQJgTzfGZ0Mbw.CydImwXoNAwO',NULL,1,0,0,NULL,'2018-05-18 02:55:44','2018-05-18 09:00:02',NULL),(26,'Dương Văn Nam','5858585',NULL,0,'lygfgnv@oft.comadas',NULL,'adminsdsdsd','$2y$10$RMW.GcX1Sgxr939nuysa8uHf38Iqor5cpOy.HMRxF1VeJHtww9oOK',NULL,1,0,0,NULL,'2018-05-18 02:56:29','2018-05-18 03:11:40',NULL),(27,'fdsf dfs fs','1010101010',NULL,0,'gfg10@gmail.com',NULL,'gdfgdfg','$2y$10$mpl4vlUch5rOZ/ie7uju1OtEvZ5FZh4tQ7E.g3pCOpNfBPsyuBdC.',NULL,1,0,0,NULL,'2018-05-18 02:56:48','2018-05-18 03:14:28',NULL),(28,'ggdfgd dfgdf','414141414',NULL,0,'gfggf0@gmail.com',NULL,'gdfggdf','$2y$10$eosc7r56aC8EIu.zvJAn3ulxG4m/4YHXLCVc5oWIqzW9f23zDEsre',NULL,1,0,0,'1992-12-28','2018-05-18 02:57:07','2018-05-18 17:13:19',NULL);
/*!40000 ALTER TABLE `staff` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `staff_part`
--

DROP TABLE IF EXISTS `staff_part`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `staff_part` (
  `staff_id` int(11) NOT NULL,
  `part_id` int(11) NOT NULL,
  PRIMARY KEY (`staff_id`,`part_id`) USING BTREE,
  KEY `part_id` (`part_id`) USING BTREE,
  KEY `staff_id` (`staff_id`) USING BTREE,
  CONSTRAINT `staff_part_ibfk_1` FOREIGN KEY (`staff_id`) REFERENCES `staff` (`id`),
  CONSTRAINT `staff_part_ibfk_2` FOREIGN KEY (`part_id`) REFERENCES `part` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `staff_part`
--

LOCK TABLES `staff_part` WRITE;
/*!40000 ALTER TABLE `staff_part` DISABLE KEYS */;
INSERT INTO `staff_part` VALUES (21,1),(21,2),(27,2),(21,3),(22,3),(26,3),(24,6),(22,10);
/*!40000 ALTER TABLE `staff_part` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `staff_position`
--

DROP TABLE IF EXISTS `staff_position`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `staff_position` (
  `staff_id` int(11) NOT NULL,
  `position_id` int(11) NOT NULL,
  PRIMARY KEY (`staff_id`,`position_id`) USING BTREE,
  KEY `position_id` (`position_id`) USING BTREE,
  CONSTRAINT `staff_position_ibfk_1` FOREIGN KEY (`staff_id`) REFERENCES `staff` (`id`),
  CONSTRAINT `staff_position_ibfk_2` FOREIGN KEY (`position_id`) REFERENCES `position` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `staff_position`
--

LOCK TABLES `staff_position` WRITE;
/*!40000 ALTER TABLE `staff_position` DISABLE KEYS */;
INSERT INTO `staff_position` VALUES (21,3),(24,3),(21,4),(22,4),(21,5),(27,5);
/*!40000 ALTER TABLE `staff_position` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-05-29 13:33:02
