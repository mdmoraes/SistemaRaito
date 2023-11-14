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
-- Table structure for table `cadastrorepresentada`
--

DROP TABLE IF EXISTS `cadastrorepresentada`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cadastrorepresentada` (
  `idcliente` int NOT NULL AUTO_INCREMENT,
  `nomecliente` varchar(70) DEFAULT NULL,
  `regiao` varchar(25) DEFAULT NULL,
  `datacadastro` date DEFAULT NULL,
  `endereco` varchar(80) DEFAULT NULL,
  `bairro` varchar(30) DEFAULT NULL,
  `cidade` varchar(30) DEFAULT NULL,
  `estado` varchar(2) DEFAULT NULL,
  `cep` varchar(10) DEFAULT NULL,
  `comissao` double DEFAULT NULL,
  `tel1` varchar(15) DEFAULT NULL,
  `tel2` varchar(15) DEFAULT NULL,
  `tel3` varchar(15) DEFAULT NULL,
  `tel4` varchar(15) DEFAULT NULL,
  `fax` varchar(15) DEFAULT NULL,
  `cel1` varchar(15) DEFAULT NULL,
  `cel2` varchar(15) DEFAULT NULL,
  `cel3` varchar(15) DEFAULT NULL,
  `radio` varchar(30) DEFAULT NULL,
  `id` varchar(30) DEFAULT NULL,
  `msn` varchar(60) DEFAULT NULL,
  `skipe` varchar(60) DEFAULT NULL,
  `contato1` varchar(30) DEFAULT NULL,
  `contato2` varchar(30) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `emailnfe` varchar(50) DEFAULT NULL,
  `site` varchar(50) DEFAULT NULL,
  `obs` longtext,
  `cnpj` varchar(25) DEFAULT NULL,
  `inscestadual` varchar(20) DEFAULT NULL,
  `twitter` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`idcliente`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cadastrorepresentada`
--

LOCK TABLES `cadastrorepresentada` WRITE;
/*!40000 ALTER TABLE `cadastrorepresentada` DISABLE KEYS */;
INSERT INTO `cadastrorepresentada` VALUES (1,'CABEXPRESS IND. E COMÉRCIO DE CABOS ELÉTRICOS LTDA','Sul','1995-10-01','AV. IBIRAMA,23','PQ INDUSTRIAL DACI','SAO PAULO','SP','06785-330',5,'(11)4737-1300','(11)4138-5440','','','(11)4138-9','(11)7264-0720','(11)8147-7513','','','','','','JOSÉ EDUARDO','LEANDRO/RODRIGO','cabexcabos@yahoo.com.br','','','SECRETARIA - ANA AMÉLIA','02.905.133/0001-32','675.078.313-113','');
/*!40000 ALTER TABLE `cadastrorepresentada` ENABLE KEYS */;
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
