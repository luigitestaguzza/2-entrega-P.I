CREATE DATABASE  IF NOT EXISTS `implementacao_dados` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `implementacao_dados`;
-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: implementacao_dados
-- ------------------------------------------------------
-- Server version	8.0.35

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
-- Table structure for table `emprestimo`
--

DROP TABLE IF EXISTS `emprestimo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `emprestimo` (
  `ID_emprestimo` int NOT NULL AUTO_INCREMENT,
  `data_inicio_emprestimo` date NOT NULL,
  `data_prevista_devolucao` date NOT NULL,
  `data_real_devolucao` varchar(20) DEFAULT NULL,
  `ID_usuario` int NOT NULL,
  `ID_livro` int NOT NULL,
  PRIMARY KEY (`ID_emprestimo`),
  KEY `ID_usuario` (`ID_usuario`),
  KEY `ID_livro` (`ID_livro`),
  CONSTRAINT `emprestimo_ibfk_1` FOREIGN KEY (`ID_usuario`) REFERENCES `usuario` (`ID_usuario`),
  CONSTRAINT `emprestimo_ibfk_2` FOREIGN KEY (`ID_livro`) REFERENCES `livro` (`ID_livro`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emprestimo`
--

LOCK TABLES `emprestimo` WRITE;
/*!40000 ALTER TABLE `emprestimo` DISABLE KEYS */;
INSERT INTO `emprestimo` VALUES (1,'2024-03-01','2024-03-15','Pendente',1,7),(2,'2024-03-03','2024-03-18','Pendente',3,8),(3,'2024-02-25','2024-03-06','2024-03-06',4,3),(4,'2024-02-23','2024-03-05','2023-03-09',5,4),(6,'2024-03-09','2024-03-19','Pendente',8,6);
/*!40000 ALTER TABLE `emprestimo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `funcionario`
--

DROP TABLE IF EXISTS `funcionario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `funcionario` (
  `ID_funcionario` int NOT NULL AUTO_INCREMENT,
  `nomeFuncionario` varchar(100) NOT NULL,
  `cargo` varchar(25) NOT NULL,
  `permissao` varchar(25) NOT NULL,
  `loginNome` varchar(50) NOT NULL,
  `senhaLogin` char(64) NOT NULL,
  PRIMARY KEY (`ID_funcionario`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `funcionario`
--

LOCK TABLES `funcionario` WRITE;
/*!40000 ALTER TABLE `funcionario` DISABLE KEYS */;
INSERT INTO `funcionario` VALUES (1,'Flávia Moreira Lopes','Recepção','CREATE, ALTER','f.lopes','***********'),(2,'Rogério Clóvis Mauro','Limpeza','Vizualizar','r.mauro','***********'),(3,'Paula Alves Souza','Supervisão','CREATE, ALTER, DELETE','p.souza','***********');
/*!40000 ALTER TABLE `funcionario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `livro`
--

DROP TABLE IF EXISTS `livro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `livro` (
  `ID_livro` int NOT NULL AUTO_INCREMENT,
  `titulo` varchar(100) NOT NULL,
  `nomeAutor` varchar(50) NOT NULL,
  `generoLivro` varchar(25) DEFAULT NULL,
  `localizacaoPrateleira` varchar(50) NOT NULL,
  `disponibilidade` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`ID_livro`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `livro`
--

LOCK TABLES `livro` WRITE;
/*!40000 ALTER TABLE `livro` DISABLE KEYS */;
INSERT INTO `livro` VALUES (1,'Os Miseráveis','Victor Hugo','Romance','A001',0),(2,'Dom Quixote','Miguel de Cervantes','Ficção','D012',1),(3,'1984','George Orwell','Ficção Distópica','D030',0),(4,'Cálculo I','James Stewart','Ciências Exatas','E015',0),(5,'Introdução à Economia','Gregory Mankiw','Ciências Sociais','G002',0),(6,'Princípios de Química','Peter Atkins','Ciências Exatas','E010',0),(7,'Anatomia Humana','Elaine Marieb','Ciências da Saúde','H020',0),(8,'Introduction to Algorithms','Thomas H. Cormen','Ciências da Computação','V155',0),(9,'Princípios da Genética','Peter Snustad','Biologia','H135',1),(10,'Orgulho e Preconceito','Jane Austen','Romance','A002',1),(11,'Física II','David Halliday','Ciências Exatas','E002',1);
/*!40000 ALTER TABLE `livro` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `manutencaoacervo`
--

DROP TABLE IF EXISTS `manutencaoacervo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `manutencaoacervo` (
  `registroManutencao` int NOT NULL AUTO_INCREMENT,
  `dataManutencao` date NOT NULL,
  `descricao` varchar(100) DEFAULT NULL,
  `ID_livro` int NOT NULL,
  PRIMARY KEY (`registroManutencao`),
  KEY `ID_livro` (`ID_livro`),
  CONSTRAINT `manutencaoacervo_ibfk_1` FOREIGN KEY (`ID_livro`) REFERENCES `livro` (`ID_livro`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `manutencaoacervo`
--

LOCK TABLES `manutencaoacervo` WRITE;
/*!40000 ALTER TABLE `manutencaoacervo` DISABLE KEYS */;
INSERT INTO `manutencaoacervo` VALUES (1,'2024-01-28','Reparos físicos',2),(2,'2024-02-15','Limpeza',5),(3,'2024-02-20','Digitalização',1);
/*!40000 ALTER TABLE `manutencaoacervo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `multa`
--

DROP TABLE IF EXISTS `multa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `multa` (
  `ID_multa` int NOT NULL AUTO_INCREMENT,
  `valor` decimal(5,2) NOT NULL,
  `data_aplicacao` date NOT NULL,
  `ID_emprestimo` int NOT NULL,
  PRIMARY KEY (`ID_multa`),
  KEY `ID_emprestimo` (`ID_emprestimo`),
  CONSTRAINT `multa_ibfk_1` FOREIGN KEY (`ID_emprestimo`) REFERENCES `emprestimo` (`ID_emprestimo`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `multa`
--

LOCK TABLES `multa` WRITE;
/*!40000 ALTER TABLE `multa` DISABLE KEYS */;
INSERT INTO `multa` VALUES (1,20.00,'2024-03-05',4);
/*!40000 ALTER TABLE `multa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pagamento`
--

DROP TABLE IF EXISTS `pagamento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pagamento` (
  `ID_pagamento` int NOT NULL AUTO_INCREMENT,
  `data_pagamento` date NOT NULL,
  `valor_pagamento` decimal(5,2) NOT NULL,
  `metodo_pagamento` varchar(20) NOT NULL,
  `ID_multa` int NOT NULL,
  PRIMARY KEY (`ID_pagamento`),
  KEY `ID_multa` (`ID_multa`),
  CONSTRAINT `pagamento_ibfk_1` FOREIGN KEY (`ID_multa`) REFERENCES `multa` (`ID_multa`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pagamento`
--

LOCK TABLES `pagamento` WRITE;
/*!40000 ALTER TABLE `pagamento` DISABLE KEYS */;
INSERT INTO `pagamento` VALUES (1,'2023-03-09',20.00,'Crédito',1);
/*!40000 ALTER TABLE `pagamento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `relatorio`
--

DROP TABLE IF EXISTS `relatorio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `relatorio` (
  `registro_relatorio` int NOT NULL AUTO_INCREMENT,
  `modelo` varchar(20) NOT NULL,
  `conteudo` varchar(500) NOT NULL,
  `data_relatorio` date NOT NULL,
  `ID_funcionario` int NOT NULL,
  PRIMARY KEY (`registro_relatorio`),
  KEY `ID_funcionario` (`ID_funcionario`),
  CONSTRAINT `relatorio_ibfk_1` FOREIGN KEY (`ID_funcionario`) REFERENCES `funcionario` (`ID_funcionario`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `relatorio`
--

LOCK TABLES `relatorio` WRITE;
/*!40000 ALTER TABLE `relatorio` DISABLE KEYS */;
INSERT INTO `relatorio` VALUES (1,'Manutenção','Os livros com ID_livro 01,02 e 05 estão em processo de manutenção de digitalização, reparos físicos e limpeza respectivamente. ATUALIZADO: 07/03/24','2024-03-07',3);
/*!40000 ALTER TABLE `relatorio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuario` (
  `ID_usuario` int NOT NULL AUTO_INCREMENT,
  `registroUniversidade_usuario` int NOT NULL,
  `nomeUsuario` varchar(100) NOT NULL,
  `dataNascimento` date NOT NULL,
  `CPF_usuario` varchar(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `telefone` varchar(11) NOT NULL,
  `logradouro` varchar(100) NOT NULL,
  `numeroLogradouro` varchar(10) NOT NULL,
  `complementoLogradouro` varchar(50) DEFAULT NULL,
  `CEP_logradouro` varchar(8) DEFAULT NULL,
  PRIMARY KEY (`ID_usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` VALUES (1,1001,'Maria Silva','1984-01-01','12345677890','mariasilva@gmail.com','11912345678','Avenida Paulista','1000',' ','05544332'),(2,1567,'José Santos','1999-10-01','98744556112','jsantos@hotmail.com','11987456123','Rua Cristal','77',' ','06775201'),(3,6578,'Giovanna Soares Pereira','1993-02-16','08745321568','soares@outlook.com','11932647895','Rua Lopes Magalhães','106','Apto 5','32215745'),(4,5631,'Bruno Lucca Oliveira','2001-07-19','53267421569','bruno2001@outlook.com','11956931212','Avenida Santanna','05','Apto 10B','05336010'),(5,6257,'Thomas Souza','2000-08-06','60326574132','thomas.souza@yahoo.com.br','11965223698','Rua Falcão','1936','','32116020'),(8,1536,'Rafaella Soares','1997-07-16','53971755645','rafasoares@gmail.com','11979458312','Avenida 9 de Julho','565','Apto 77A ','05886020');
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-03-09 13:59:39
