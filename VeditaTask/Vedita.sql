-- MySQL dump 10.13  Distrib 8.0.27, for Win64 (x86_64)
--
-- Host: localhost    Database: Vedita
-- ------------------------------------------------------
-- Server version	8.0.27

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roles` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` tinytext NOT NULL,
  `code` tinytext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'admin','админ'),(2,'user','юзер');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `login` tinytext NOT NULL,
  `password` tinytext NOT NULL,
  `role` tinyint(1) NOT NULL,
  `last_login` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Ольга','d8578edf8458ce06fbc5bb76a58c5ca4',0,'2022-02-01 10:36:36'),(2,'Марк','d2101aa6d4c2e9f056d197ded0aa2c06',0,'2022-02-02 01:02:10'),(3,'Иван','3a17c29d88aee0f552d9b510e4eb786d',0,'2022-02-01 13:39:59'),(4,'admin','63a9f0ea7bb98050796b649e85481845',0,'2022-02-01 13:43:52'),(5,'Максим','fa93f79790555f036bd7a9c5037c633b',0,'2022-02-01 13:45:45'),(6,'Евген','d8578edf8458ce06fbc5bb76a58c5ca4',0,'2022-02-01 13:46:16'),(7,'Николай','44c3c93d77d4ae41aedcaad718b4f898',0,'2022-02-01 13:48:23'),(8,'Ольга45к','d8578edf8458ce06fbc5bb76a58c5ca4',0,'2022-02-01 13:49:16'),(9,'gen_admin','ecf849eca855fe66b941bd9de9709ca4',1,'2022-02-01 13:54:13'),(10,'111','698d51a19d8a121ce581499d7b701668',0,'2022-02-01 13:38:22'),(11,'Ольга45к','d8578edf8458ce06fbc5bb76a58c5ca4',0,'2022-02-01 13:38:54'),(12,'Ольга45к','d8578edf8458ce06fbc5bb76a58c5ca4',0,'2022-02-01 13:38:56'),(13,'Ольга45к','d8578edf8458ce06fbc5bb76a58c5ca4',0,'2022-02-01 13:39:02'),(14,'Ольга45к','d8578edf8458ce06fbc5bb76a58c5ca4',0,'2022-02-01 13:39:58'),(15,'Ольга45к','d8578edf8458ce06fbc5bb76a58c5ca4',0,'2022-02-01 13:40:00'),(16,'Ольга45к','d8578edf8458ce06fbc5bb76a58c5ca4',0,'2022-02-01 13:40:01'),(17,'Ольга45к','d8578edf8458ce06fbc5bb76a58c5ca4',0,'2022-02-01 13:40:31'),(18,'Ольга45к','d8578edf8458ce06fbc5bb76a58c5ca4',0,'2022-02-01 13:40:38'),(19,'Ольга45к','d8578edf8458ce06fbc5bb76a58c5ca4',0,'2022-02-01 13:40:50'),(20,'Ольга45к','d8578edf8458ce06fbc5bb76a58c5ca4',0,'2022-02-01 13:40:51'),(21,'Лишай','02a11e13ff178b10aa7c8007299db473',0,'2022-02-01 13:41:21'),(22,'Very_big_man','0378fc5f8c0cd6df71268d5580444f3e',1,'2022-02-01 14:28:51'),(23,'wasilisitnikov@yandex.ru','d137043cbd9a0f3eddf22667c934959f',1,'2022-02-02 01:57:28'),(24,'кrtyui','d8578edf8458ce06fbc5bb76a58c5ca4',0,'2022-02-01 14:45:35'),(25,'Ольга45к','d8578edf8458ce06fbc5bb76a58c5ca4',1,'2022-02-01 15:06:21'),(26,'admin','21232f297a57a5a743894a0e4a801fc3',1,'2022-02-02 01:02:37'),(27,'admin','21232f297a57a5a743894a0e4a801fc3',1,'2022-02-02 01:55:21');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-02-02  2:06:42
