CREATE DATABASE  IF NOT EXISTS `dbratio` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `dbratio`;
-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: dbratio
-- ------------------------------------------------------
-- Server version	8.0.34

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
-- Table structure for table `tempprodutos`
--

DROP TABLE IF EXISTS `tempprodutos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tempprodutos` (
  `codinc` int NOT NULL AUTO_INCREMENT,
  `tcodigo` varchar(25) DEFAULT NULL,
  `tdescricao` varchar(70) DEFAULT NULL,
  `tpvenda` double DEFAULT NULL,
  `tqtd` int DEFAULT NULL,
  `tstatus` int DEFAULT NULL,
  PRIMARY KEY (`codinc`),
  KEY `ix_tmp_autoinc` (`codinc`)
) ENGINE=InnoDB AUTO_INCREMENT=92 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tempprodutos`
--

LOCK TABLES `tempprodutos` WRITE;
/*!40000 ALTER TABLE `tempprodutos` DISABLE KEYS */;
INSERT INTO `tempprodutos` VALUES (86,'TESTE1','Descrição teste1',0.35,NULL,NULL),(87,'TESTE3','TESTE',25.33,NULL,NULL),(88,'TESTE 4','Teste 4',15.33,NULL,NULL),(89,'Teste 5','Teste 5',5.55,NULL,NULL),(90,'Teste6','Teste 6',12,NULL,NULL),(91,'Teste 10','Teste 10 sdfdfds',15,NULL,NULL);
/*!40000 ALTER TABLE `tempprodutos` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-11-10 16:02:40
