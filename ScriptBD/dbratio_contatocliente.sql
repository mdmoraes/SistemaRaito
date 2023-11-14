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
-- Table structure for table `contatocliente`
--

DROP TABLE IF EXISTS `contatocliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contatocliente` (
  `ContatoId` int NOT NULL AUTO_INCREMENT,
  `Contato_IdCliente` int DEFAULT NULL,
  `Tipo` varchar(45) DEFAULT NULL,
  `Descricao` varchar(45) DEFAULT NULL,
  `NomeDoContato` varchar(45) DEFAULT NULL,
  `cadastroclientes_idcliente` int NOT NULL,
  PRIMARY KEY (`ContatoId`),
  KEY `fk_contatocliente_cadastroclientes1_idx` (`cadastroclientes_idcliente`),
  CONSTRAINT `fk_contatocliente_cadastroclientes1` FOREIGN KEY (`cadastroclientes_idcliente`) REFERENCES `cadastroclientes` (`idcliente`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contatocliente`
--

LOCK TABLES `contatocliente` WRITE;
/*!40000 ALTER TABLE `contatocliente` DISABLE KEYS */;
INSERT INTO `contatocliente` VALUES (1,NULL,'TEL1','12345688','SEVERINO',126),(2,NULL,'CELULAR','45456677','SAVERINO',126),(3,NULL,'EMAIL','TESTE@COM','MARCOLINO',126),(4,NULL,'TELEFONE','456789111','KAISER',128),(5,NULL,'CEL.','4545','xxx',129),(6,NULL,'tel','3232444','ZZZ',129),(7,NULL,'EMAIL','XXX@COM','ROSENDO',129),(8,NULL,'TEL','XXX','KAISER',130),(9,NULL,'TEL','1234','BBB',131),(10,NULL,'CEL','456478','CCC',131),(11,NULL,'EMAIL','XXX@GMAIL.COM','FFF',131),(12,NULL,'TEL','12345556','JOSEFINO',132),(13,NULL,'CELULAR','12345251','TESTE JOSEFINO',132),(14,NULL,'EMAIL','YYY@HOTMAIL.COM','MARIANA',132),(15,NULL,'TELEFONE','110999955','ZURIBA',133),(16,NULL,'TEL','454545','ZURBIA',133),(17,NULL,'EMAIL','mdmoraes@hotmail.com','marcos teste',133),(18,NULL,'CEL','1234-7895','MARIA TESTE',133),(19,NULL,'EMAIL','45688777','TESTE NOVO',133),(20,NULL,'TELEFONE','123456789','ZOROBA TESTE',134),(21,NULL,'CELULAR','458333','ZÓBA TESTE',134),(22,NULL,'CELULAR','11 9.4567898','ROSENILDO',135),(23,NULL,'TELEFONE','11 4567-1234','MARIETA TESTE',135),(24,NULL,'TELEFONE','(11)4545-3322','TESTE',136),(25,NULL,'CELULAR','(11)96612-0089','TESTE 2',136),(26,NULL,'TELEFONE','11 4545-2121',NULL,137),(30,NULL,'CELULAR','11 94545-1234','marcolino',138),(31,NULL,'TELEFONE','(11)1234-4545','sdfsdfdf',138),(32,NULL,'email','mdmoraes@hotmail.com','marcolino',138),(33,NULL,'TELEFONE','1145456622','teste',138),(34,NULL,'TELEFONE','1136040505','zufino 2',139),(35,NULL,'CELULAR','11966120089','teste',139);
/*!40000 ALTER TABLE `contatocliente` ENABLE KEYS */;
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
