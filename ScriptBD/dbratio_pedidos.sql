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
-- Table structure for table `pedidos`
--

DROP TABLE IF EXISTS `pedidos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pedidos` (
  `PedidoId` int NOT NULL AUTO_INCREMENT,
  `data_pedido` date DEFAULT NULL,
  `representada` varchar(80) DEFAULT NULL,
  `cliente` varchar(80) DEFAULT NULL,
  `transportadora` varchar(80) DEFAULT NULL,
  `condicoespagto` varchar(25) DEFAULT NULL,
  `comissao` double DEFAULT NULL,
  `comissaovalor` double DEFAULT NULL,
  `obs` varchar(100) DEFAULT NULL,
  `lembrete` varchar(100) DEFAULT NULL,
  `totalbruto` double DEFAULT NULL,
  `tipopedido` varchar(15) DEFAULT NULL,
  `idcliente` int DEFAULT NULL,
  `cadastroclientes_idcliente` int NOT NULL,
  PRIMARY KEY (`PedidoId`),
  KEY `fk_pedidos_cadastroclientes1_idx` (`cadastroclientes_idcliente`),
  KEY `idxPedidoId` (`PedidoId`),
  KEY `idxPedidoCliente` (`cliente`),
  CONSTRAINT `fk_pedidos_cadastroclientes1` FOREIGN KEY (`cadastroclientes_idcliente`) REFERENCES `cadastroclientes` (`idcliente`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pedidos`
--

LOCK TABLES `pedidos` WRITE;
/*!40000 ALTER TABLE `pedidos` DISABLE KEYS */;
INSERT INTO `pedidos` VALUES (1,'2023-10-25','CABEXPRESS IND. E COMÉRCIO DE CABOS ELÉTRICOS LTDA','MARCOS SEVÉRINO TESTE','TRANSP.TESTE','30/60',10,25,'OBS. TESTE','LEMBRETE',90.04200000000002,'Orçamento',1,126),(2,'2023-10-25','CABEXPRESS IND. E COMÉRCIO DE CABOS ELÉTRICOS LTDA','MARCOS MORAES TESTE',NULL,NULL,5,NULL,NULL,NULL,875.1800000000001,'Venda',NULL,122),(3,'2023-10-26','CABEXPRESS IND. E COMÉRCIO DE CABOS ELÉTRICOS LTDA','TURPELCOMÉRCIO DE PEÇAS ELÉTRICAS LTDA',NULL,NULL,10,NULL,NULL,NULL,112.65,'Orçamento',NULL,88),(4,'2023-10-26','CABEXPRESS IND. E COMÉRCIO DE CABOS ELÉTRICOS LTDA','ZURUBINO DE OLIVEIRA TESTE','RODONAVES','30/60',20,155,'TESTEXXX	','LEMBRETE XXX',101.41,'Orçamento',NULL,133),(5,'2023-11-10','CABEXPRESS IND. E COMÉRCIO DE CABOS ELÉTRICOS LTDA','ALLAN GONÇALVES DOSSO EPP','BOSO TRANSTITANIO','30/45/60',10,NULL,'xxxxxxxxxxxxxxxxxxx\r\nxxxxxxxxxxxxxxxxx\r\nxxxxxxxxxxxxxxxxxxxx\r\n','bbbbbbbbbbbbbbbbb\r\nbbbbbbbbbbbbbbbb\r\nbbbbbbbbbbbbbbbb',861.48,'Orçamento',NULL,5),(6,'2023-11-10','CABEXPRESS IND. E COMÉRCIO DE CABOS ELÉTRICOS LTDA','MARCOLINO DA SILVA TESTE','BOSO TRANSTITANIO',NULL,10,NULL,NULL,NULL,4.68,'Orçamento',NULL,127);
/*!40000 ALTER TABLE `pedidos` ENABLE KEYS */;
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
