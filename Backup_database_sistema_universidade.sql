CREATE DATABASE  IF NOT EXISTS `sistema_universidade` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `sistema_universidade`;
-- MySQL dump 10.13  Distrib 8.0.38, for Win64 (x86_64)
--
-- Host: localhost    Database: sistema_universidade
-- ------------------------------------------------------
-- Server version	8.4.2

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
-- Table structure for table `aluno`
--

DROP TABLE IF EXISTS `aluno`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `aluno` (
  `CPF` varchar(11) NOT NULL,
  `RG` varchar(12) DEFAULT NULL,
  `Nome` varchar(100) NOT NULL,
  `Naturalidade` varchar(50) DEFAULT NULL,
  `Data_nascimento` date DEFAULT NULL,
  `Email` varchar(100) DEFAULT NULL,
  `Telefone` varchar(15) DEFAULT NULL,
  `Endereco` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`CPF`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aluno`
--

LOCK TABLES `aluno` WRITE;
/*!40000 ALTER TABLE `aluno` DISABLE KEYS */;
INSERT INTO `aluno` VALUES ('00011122233','001112223','João Pedro Silva','Natal','1998-10-09','joaopedro@email.com','84300000000','Rua do Mar, 900'),('01201201201','012012012','Thiago Nascimento','Porto Velho','1998-12-12','thiago@email.com','69320000000','Rua dos Coqueiros, 1900'),('02402402402','024024024','Diego Oliveira','Recife','1998-03-16','diego@email.com','81310000000','Alameda dos Passáros, 2900'),('02402402403','024024024','Natalia Oliveira','João Pessoa','2000-04-21','natalia@email.com','83300000000','Avenida Cabo Branco, 3900'),('02402402404','024024024','Xuxa Oliveira','Macapá','1998-05-19','xuxa@email.com','96320000000','Rua do Equador, 4900'),('11122233344','112223334','Ana Carvalho','Belo Horizonte','1998-03-12','ana@email.com','31999999999','Rua das Flores, 100'),('12312312312','123123123','Karina Oliveira','São Luís','1999-02-28','karina@email.com','98329999999','Travessa da Paz, 1000'),('13513513513','135135135','Úrsula Costa','Boa Vista','1999-04-07','ursula@email.com','95319999999','Avenida das Palmeiras, 2000'),('13513513514','135135135','Elaine Santos','Belo Horizonte','1999-06-10','elaine@email.com','31309999999','Praça da Liberdade, 3000'),('13513513515','135135135','Otávio Santos','Campo Grande','2001-07-16','otavio@email.com','67329999999','Rua do Cerrado, 4000'),('22233344455','223334445','Bruno Oliveira','Porto Alegre','2000-07-25','bruno@email.com','51888888888','Av Central, 200'),('23423423423','234234234','Lucas Pereira','Maceió','2000-05-17','lucas@email.com','82328888888','Alameda dos Anjos, 1100'),('24624624624','246246246','Vitor Hugo Silva','Palmas','2000-06-19','vitor@email.com','63318888888','Travessa do Rio, 2100'),('24624624625','246246246','Fabio Costa','Porto Alegre','2000-08-25','fabio@email.com','51308888888','Rua da Paz, 3100'),('24624624626','246246246','Patricia Costa','Vitória','1998-09-09','patricia@email.com','27328888888','Alameda da Praia, 4100'),('33344455566','334445556','Carla Mendes','Salvador','1999-11-05','carla@email.com','71777777777','Travessa da Praia, 300'),('34534534534','345345345','Mariana Santos','Teresina','2001-07-23','mariana@email.com','86327777777','Avenida Central, 1200'),('35735735735','357357357','Wanessa Oliveira','Rio Branco','2001-09-03','wanessa@email.com','68317777777','Rua das Montanhas, 2200'),('35735735736','357357357','Gisele Lima','Manaus','2001-11-19','gisele@email.com','92307777777','Avenida Amazonas, 3200'),('35735735737','357357357','Quintino Lima','Goiânia','1999-12-04','quintino@email.com','62327777777','Avenida Goiás, 4200'),('44455566677','445556667','Daniel Santos','Fortaleza','2001-01-30','daniel@email.com','85666666666','Rua do Sol, 400'),('45645645645','456456456','Nathan Costa','João Pessoa','1997-09-11','nathan@email.com','83326666666','Rua das Acácias, 1300'),('46846846846','468468468','Xavier Martins','Macapá','1997-11-28','xavier@email.com','96316666666','Alameda do Parque, 2300'),('46846846847','468468468','Heitor Silva','Curitiba','1998-01-13','heitor@email.com','41306666666','Travessa das Araucárias, 3300'),('46846846848','468468468','Rita Silva','Cuiabá','2000-02-18','rita@email.com','65326666666','Rua do Pantanal, 4300'),('55566677788','556667778','Eduarda Lima','Recife','2002-09-15','eduarda@email.com','81555555555','Alameda das Árvores, 500'),('56756756756','567567567','Olivia Rodrigues','Campo Grande','1998-11-05','olivia@email.com','67325555555','Travessa das Flores, 1400'),('57957957957','579579579','Yasmin Ferreira','Belém','1998-02-14','yasmin@email.com','91315555555','Avenida Principal, 2400'),('57957957958','579579579','Igor Oliveira','Florianópolis','1999-04-08','igor@email.com','48305555555','Rua das Ostras, 3400'),('57957957959','579579579','Sérgio Oliveira','Aracaju','2001-05-15','sergio@email.com','79325555555','Travessa dos Coqueiros, 4400'),('66677788899','667778889','Felipe Costa','Brasília','1997-12-03','felipe@email.com','61444444444','Quadra 10, Bloco A, 30'),('67867867867','678678678','Paulo Ferreira','Vitória','1999-01-30','paulo@email.com','27324444444','Avenida das Árvores, 1500'),('68068068068','680680680','Zacarias Santos','São Paulo','1999-05-09','zacarias@email.com','11314444444','Rua das Oliveiras, 2500'),('68068068069','680680680','Jéssica Santos','Natal','2000-06-23','jessica@email.com','84304444444','Alameda do Sol, 3500'),('68068068070','680680680','Tatiane Santos','Porto Velho','1998-07-10','tatiane@email.com','69324444444','Avenida Rio Madeira, 4500'),('77788899900','778889990','Gabriela Rocha','Manaus','1999-04-18','gabriela@email.com','92333333333','Avenida Brasil, 600'),('78978978978','789789789','Quésia Almeida','Goiânia','2000-03-15','quesia@email.com','62323333333','Rua do Sol, 1600'),('79179179179','791791791','Amanda Costa','Rio de Janeiro','2000-07-24','amanda@email.com','21313333333','Travessa do Bosque, 2600'),('79179179180','791791791','Kaique Costa','São Luís','2001-09-17','kaique@email.com','98303333333','Avenida Litorânea, 3600'),('79179179181','791791791','Ubirajara Costa','Boa Vista','1999-10-04','ubirajara@email.com','95323333333','Rua das Lavadeiras, 4600'),('80280280280','802802802','Bernardo Lima','Salvador','2001-10-08','bernardo@email.com','71312222222','Avenida do Mar, 2700'),('80280280281','802802802','Larissa Lima','Maceió','1998-11-11','larissa@email.com','82302222222','Rua das Algas, 3700'),('80280280282','802802802','Vanessa Lima','Palmas','2000-12-29','vanessa@email.com','63322222222','Alameda das Flores, 4700'),('88899900011','889990001','Henrique Alves','Curitiba','2000-08-22','henrique@email.com','41222222222','Rua das Palmeiras, 700'),('89089089089','890890890','Rafael Lima','Cuiabá','2001-08-20','rafael@email.com','65322222222','Alameda da Lua, 1700'),('90190190190','901901901','Sofia Barbosa','Aracaju','1997-10-25','sofia@email.com','79321111111','Praça das Estrelas, 1800'),('91391391391','913913913','Camila Silva','Fortaleza','1997-12-31','camila@email.com','85311111111','Rua das Pedras, 2800'),('91391391392','913913913','Marcos Silva','Teresina','1999-02-05','marcos@email.com','86301111111','Travessa do Parnaíba, 3800'),('91391391393','913913913','Wagner Silva','Rio Branco','2001-03-25','wagner@email.com','68321111111','Avenida Ceará, 4800'),('99900011122','990001112','Isabela Martins','Florianópolis','2001-06-14','isabela@email.com','48321111111','Servidão da Praia, 800');
/*!40000 ALTER TABLE `aluno` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aula`
--

DROP TABLE IF EXISTS `aula`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `aula` (
  `Id_aula` int NOT NULL AUTO_INCREMENT,
  `Id_turma` int DEFAULT NULL,
  `Id_disciplina` int DEFAULT NULL,
  `Id_professor` int DEFAULT NULL,
  `Data_Hora_inicio` datetime DEFAULT NULL,
  `Data_Hora_fim` datetime DEFAULT NULL,
  PRIMARY KEY (`Id_aula`),
  KEY `Id_turma` (`Id_turma`),
  KEY `Id_disciplina` (`Id_disciplina`),
  KEY `Id_professor` (`Id_professor`),
  CONSTRAINT `aula_ibfk_1` FOREIGN KEY (`Id_turma`) REFERENCES `turma` (`Id_turma`),
  CONSTRAINT `aula_ibfk_2` FOREIGN KEY (`Id_disciplina`) REFERENCES `disciplina` (`Id_disciplina`),
  CONSTRAINT `aula_ibfk_3` FOREIGN KEY (`Id_professor`) REFERENCES `professor` (`Id_professor`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aula`
--

LOCK TABLES `aula` WRITE;
/*!40000 ALTER TABLE `aula` DISABLE KEYS */;
INSERT INTO `aula` VALUES (1,1,1,1,'2023-03-15 08:00:00','2023-03-15 10:00:00'),(2,2,2,2,'2023-03-16 09:00:00','2023-03-16 11:00:00'),(3,3,3,3,'2023-03-17 10:00:00','2023-03-17 12:00:00'),(4,4,4,4,'2023-03-20 14:00:00','2023-03-20 16:00:00'),(5,5,5,5,'2023-03-21 16:00:00','2023-03-21 18:00:00'),(6,6,6,6,'2023-03-22 08:30:00','2023-03-22 10:30:00'),(7,7,7,7,'2023-03-23 11:00:00','2023-03-23 13:00:00'),(8,8,8,8,'2023-03-24 13:00:00','2023-03-24 15:00:00'),(9,9,9,9,'2023-03-27 15:00:00','2023-03-27 17:00:00'),(10,10,10,10,'2023-03-28 07:30:00','2023-03-28 09:30:00'),(11,11,11,11,'2023-03-29 10:30:00','2023-03-29 12:30:00'),(12,12,12,12,'2023-03-30 12:00:00','2023-03-30 14:00:00'),(13,13,13,13,'2023-03-31 14:30:00','2023-03-31 16:30:00'),(14,14,14,14,'2023-04-03 16:30:00','2023-04-03 18:30:00'),(15,15,15,15,'2023-04-04 08:00:00','2023-04-04 10:00:00'),(16,16,16,16,'2023-04-05 09:30:00','2023-04-05 11:30:00'),(17,17,17,17,'2023-04-06 11:00:00','2023-04-06 13:00:00'),(18,18,18,18,'2023-04-07 13:30:00','2023-04-07 15:30:00'),(19,19,19,19,'2023-04-10 15:00:00','2023-04-10 17:00:00'),(20,20,20,20,'2023-04-11 07:00:00','2023-04-11 09:00:00'),(21,21,21,21,'2023-04-12 10:00:00','2023-04-12 12:00:00'),(22,22,22,22,'2023-04-13 12:30:00','2023-04-13 14:30:00'),(23,23,23,23,'2023-04-14 14:00:00','2023-04-14 16:00:00'),(24,24,24,24,'2023-04-17 16:00:00','2023-04-17 18:00:00'),(25,25,25,25,'2023-04-18 08:30:00','2023-04-18 10:30:00'),(26,26,26,26,'2023-04-19 11:30:00','2023-04-19 13:30:00'),(27,27,27,27,'2023-04-20 13:00:00','2023-04-20 15:00:00'),(28,28,28,28,'2023-04-21 15:30:00','2023-04-21 17:30:00'),(29,29,29,29,'2023-04-24 07:30:00','2023-04-24 09:30:00'),(30,30,30,30,'2023-04-25 10:30:00','2023-04-25 12:30:00'),(31,31,31,31,'2023-04-26 12:00:00','2023-04-26 14:00:00'),(32,32,32,32,'2023-04-27 14:30:00','2023-04-27 16:30:00'),(33,33,33,33,'2023-04-28 16:00:00','2023-04-28 18:00:00'),(34,34,34,34,'2023-05-01 08:00:00','2023-05-01 10:00:00'),(35,35,35,35,'2023-05-02 09:00:00','2023-05-02 11:00:00'),(36,36,36,36,'2023-05-03 11:30:00','2023-05-03 13:30:00'),(37,37,37,37,'2023-05-04 13:00:00','2023-05-04 15:00:00'),(38,38,38,38,'2023-05-05 15:30:00','2023-05-05 17:30:00'),(39,39,39,39,'2023-05-08 07:00:00','2023-05-08 09:00:00'),(40,40,40,40,'2023-05-09 10:00:00','2023-05-09 12:00:00'),(41,41,41,41,'2023-05-10 12:30:00','2023-05-10 14:30:00'),(42,42,42,42,'2023-05-11 14:00:00','2023-05-11 16:00:00'),(43,43,43,43,'2023-05-12 16:30:00','2023-05-12 18:30:00'),(44,44,44,44,'2023-05-15 08:30:00','2023-05-15 10:30:00'),(45,45,45,45,'2023-05-16 11:00:00','2023-05-16 13:00:00'),(46,46,46,46,'2023-05-17 13:30:00','2023-05-17 15:30:00'),(47,47,47,47,'2023-05-18 15:00:00','2023-05-18 17:00:00'),(48,48,48,48,'2023-05-19 07:30:00','2023-05-19 09:30:00'),(49,49,49,49,'2023-05-22 10:00:00','2023-05-22 12:00:00'),(50,50,50,50,'2023-05-23 12:30:00','2023-05-23 14:30:00');
/*!40000 ALTER TABLE `aula` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `ValidarDatasAulaInsert` BEFORE INSERT ON `aula` FOR EACH ROW BEGIN
	IF NEW.Data_Hora_inicio >= NEW.Data_Hora_fim THEN
		SIGNAL SQLSTATE	 '45000'
        SET MESSAGE_TEXT = 'Erro: Data/hora de início deve ser anterior à data/hora de fim';
	END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `ValidarDatasAulaUpdate` BEFORE UPDATE ON `aula` FOR EACH ROW BEGIN
	IF NEW.Data_Hora_inicio >= NEW.Data_Hora_fim THEN
		SIGNAL SQLSTATE '45000'
		SET MESSAGE_TEXT = 'Erro: Data/hora de ínicio deve ser anterior à data/hora de fim';
	END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `curso`
--

DROP TABLE IF EXISTS `curso`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `curso` (
  `Id_curso` int NOT NULL AUTO_INCREMENT,
  `Nome_curso` varchar(50) NOT NULL,
  `Tipo_graduacao` enum('Bacharelado','Licenciatura','Tecnologo') DEFAULT NULL,
  PRIMARY KEY (`Id_curso`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `curso`
--

LOCK TABLES `curso` WRITE;
/*!40000 ALTER TABLE `curso` DISABLE KEYS */;
INSERT INTO `curso` VALUES (1,'Direito','Bacharelado'),(2,'Pedagogia','Licenciatura'),(3,'Redes de Computadores','Tecnologo'),(4,'Medicina','Bacharelado'),(5,'Ciências Biológicas','Bacharelado'),(6,'Engenharia Civil','Bacharelado'),(7,'Letras - Português','Licenciatura'),(8,'Análise e Desenvolvimento de Sistemas','Tecnologo'),(9,'Enfermagem','Bacharelado'),(10,'Farmácia','Bacharelado'),(11,'Administração','Bacharelado'),(12,'História','Licenciatura'),(13,'Gestão de TI','Tecnologo'),(14,'Psicologia','Bacharelado'),(15,'Odontologia','Bacharelado'),(16,'Ciências Contábeis','Bacharelado'),(17,'Geografia','Licenciatura'),(18,'Jogos Digitais','Tecnologo'),(19,'Nutrição','Bacharelado'),(20,'Fisioterapia','Bacharelado'),(21,'Economia','Bacharelado'),(22,'Matemática','Licenciatura'),(23,'Segurança da Informação','Tecnologo'),(24,'Medicina Veterinária','Bacharelado'),(25,'Biomedicina','Bacharelado'),(26,'Marketing','Bacharelado'),(27,'Física','Licenciatura'),(28,'Gestão Comercial','Tecnologo'),(29,'Educação Física','Bacharelado'),(30,'Arquitetura e Urbanismo','Bacharelado'),(31,'Relações Internacionais','Bacharelado'),(32,'Química','Licenciatura'),(33,'Produção Multimídia','Tecnologo'),(34,'Fonoaudiologia','Bacharelado'),(35,'Engenharia Elétrica','Bacharelado'),(36,'Publicidade e Propaganda','Bacharelado'),(37,'Artes Visuais','Licenciatura'),(38,'Gestão de Recursos Humanos','Tecnologo'),(39,'Engenharia Mecânica','Bacharelado'),(40,'Serviço Social','Bacharelado'),(41,'Sociologia','Licenciatura'),(42,'Gestão Financeira','Tecnologo'),(43,'Engenharia de Produção','Bacharelado'),(44,'Teologia','Bacharelado'),(45,'Filosofia','Licenciatura'),(46,'Logística','Tecnologo'),(47,'Engenharia Química','Bacharelado'),(48,'Turismo','Bacharelado'),(49,'Música','Licenciatura'),(50,'Comércio Exterior','Tecnologo');
/*!40000 ALTER TABLE `curso` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `disciplina`
--

DROP TABLE IF EXISTS `disciplina`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `disciplina` (
  `Id_disciplina` int NOT NULL AUTO_INCREMENT,
  `Id_curso` int DEFAULT NULL,
  `Nome_disciplina` varchar(50) NOT NULL,
  `Carga_horaria` int DEFAULT NULL,
  PRIMARY KEY (`Id_disciplina`),
  KEY `Id_curso` (`Id_curso`),
  CONSTRAINT `disciplina_ibfk_1` FOREIGN KEY (`Id_curso`) REFERENCES `curso` (`Id_curso`)
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `disciplina`
--

LOCK TABLES `disciplina` WRITE;
/*!40000 ALTER TABLE `disciplina` DISABLE KEYS */;
INSERT INTO `disciplina` VALUES (1,1,'Disciplina 4',124),(2,2,'Disciplina 83',119),(3,3,'Disciplina 28',44),(4,4,'Disciplina 78',90),(5,5,'Disciplina 21',89),(6,6,'Disciplina 87',132),(7,7,'Disciplina 67',122),(8,8,'Disciplina 87',149),(9,9,'Disciplina 38',137),(10,10,'Disciplina 36',39),(11,11,'Disciplina 36',92),(12,12,'Disciplina 54',42),(13,13,'Disciplina 94',74),(14,14,'Disciplina 5',44),(15,15,'Disciplina 46',139),(16,16,'Disciplina 20',60),(17,17,'Disciplina 69',109),(18,18,'Disciplina 28',72),(19,19,'Disciplina 97',122),(20,20,'Disciplina 96',85),(21,21,'Disciplina 44',122),(22,22,'Disciplina 58',98),(23,23,'Disciplina 12',132),(24,24,'Disciplina 95',50),(25,25,'Disciplina 1',92),(26,26,'Disciplina 59',74),(27,27,'Disciplina 11',80),(28,28,'Disciplina 79',107),(29,29,'Disciplina 87',79),(30,30,'Disciplina 45',30),(31,31,'Disciplina 68',74),(32,32,'Disciplina 84',38),(33,33,'Disciplina 84',148),(34,34,'Disciplina 42',43),(35,35,'Disciplina 31',51),(36,36,'Disciplina 99',79),(37,37,'Disciplina 9',53),(38,38,'Disciplina 72',30),(39,39,'Disciplina 88',73),(40,40,'Disciplina 19',129),(41,41,'Disciplina 60',86),(42,42,'Disciplina 60',94),(43,43,'Disciplina 92',143),(44,44,'Disciplina 99',39),(45,45,'Disciplina 45',30),(46,46,'Disciplina 68',71),(47,47,'Disciplina 72',95),(48,48,'Disciplina 59',61),(49,49,'Disciplina 59',46),(50,50,'Disciplina 94',61);
/*!40000 ALTER TABLE `disciplina` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inscricao_curso`
--

DROP TABLE IF EXISTS `inscricao_curso`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `inscricao_curso` (
  `Id_inscricao` int NOT NULL AUTO_INCREMENT,
  `Id_curso` int DEFAULT NULL,
  `CPF` varchar(11) DEFAULT NULL,
  `Data_matricula` date DEFAULT NULL,
  `Status` enum('Ativo','Inativo','Trancado') DEFAULT NULL,
  PRIMARY KEY (`Id_inscricao`),
  KEY `Id_curso` (`Id_curso`),
  KEY `CPF` (`CPF`),
  CONSTRAINT `inscricao_curso_ibfk_1` FOREIGN KEY (`Id_curso`) REFERENCES `curso` (`Id_curso`),
  CONSTRAINT `inscricao_curso_ibfk_2` FOREIGN KEY (`CPF`) REFERENCES `aluno` (`CPF`)
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inscricao_curso`
--

LOCK TABLES `inscricao_curso` WRITE;
/*!40000 ALTER TABLE `inscricao_curso` DISABLE KEYS */;
INSERT INTO `inscricao_curso` VALUES (1,31,'00011122233','2022-03-01','Trancado'),(2,41,'01201201201','2022-01-28','Ativo'),(3,50,'02402402402','2022-10-12','Inativo'),(4,25,'02402402403','2021-06-14','Trancado'),(5,16,'02402402404','2022-03-16','Trancado'),(6,19,'11122233344','2022-03-07','Inativo'),(7,19,'12312312312','2021-01-22','Inativo'),(8,6,'13513513513','2021-11-27','Trancado'),(9,20,'13513513514','2021-01-25','Inativo'),(10,3,'13513513515','2021-02-04','Trancado'),(11,17,'22233344455','2021-11-06','Ativo'),(12,28,'23423423423','2021-06-26','Trancado'),(13,36,'24624624624','2022-12-29','Trancado'),(14,22,'24624624625','2021-06-06','Ativo'),(15,6,'24624624626','2020-09-29','Trancado'),(16,37,'33344455566','2020-01-04','Trancado'),(17,50,'34534534534','2021-07-25','Inativo'),(18,37,'35735735735','2022-01-28','Ativo'),(19,11,'35735735736','2020-11-10','Trancado'),(20,7,'35735735737','2020-11-09','Ativo'),(21,13,'44455566677','2020-07-14','Ativo'),(22,10,'45645645645','2021-09-01','Ativo'),(23,13,'46846846846','2022-03-10','Trancado'),(24,11,'46846846847','2021-02-11','Ativo'),(25,9,'46846846848','2020-03-15','Trancado'),(26,50,'55566677788','2021-03-12','Ativo'),(27,3,'56756756756','2020-03-28','Ativo'),(28,4,'57957957957','2021-10-04','Trancado'),(29,40,'57957957958','2022-06-15','Trancado'),(30,9,'57957957959','2021-12-17','Trancado'),(31,46,'66677788899','2020-09-17','Inativo'),(32,28,'67867867867','2021-02-04','Ativo'),(33,45,'68068068068','2022-06-18','Inativo'),(34,43,'68068068069','2022-06-29','Inativo'),(35,33,'68068068070','2020-12-18','Trancado'),(36,24,'77788899900','2020-11-26','Ativo'),(37,27,'78978978978','2021-04-15','Inativo'),(38,19,'79179179179','2020-10-13','Ativo'),(39,9,'79179179180','2020-11-19','Trancado'),(40,45,'79179179181','2021-09-05','Ativo'),(41,3,'80280280280','2022-06-16','Trancado'),(42,13,'80280280281','2021-05-09','Inativo'),(43,5,'80280280282','2022-12-11','Inativo'),(44,13,'88899900011','2021-02-03','Ativo'),(45,9,'89089089089','2022-02-15','Ativo'),(46,50,'90190190190','2022-07-08','Ativo'),(47,39,'91391391391','2020-03-22','Ativo'),(48,5,'91391391392','2020-11-14','Ativo'),(49,48,'91391391393','2020-09-19','Inativo'),(50,5,'99900011122','2021-02-02','Inativo');
/*!40000 ALTER TABLE `inscricao_curso` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nota_fiscal`
--

DROP TABLE IF EXISTS `nota_fiscal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `nota_fiscal` (
  `Id_nota` int NOT NULL AUTO_INCREMENT,
  `Id_pagamento` int DEFAULT NULL,
  `Data_emissao` date DEFAULT NULL,
  PRIMARY KEY (`Id_nota`),
  KEY `Id_pagamento` (`Id_pagamento`),
  CONSTRAINT `nota_fiscal_ibfk_1` FOREIGN KEY (`Id_pagamento`) REFERENCES `pagamento` (`Id_pagamento`)
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nota_fiscal`
--

LOCK TABLES `nota_fiscal` WRITE;
/*!40000 ALTER TABLE `nota_fiscal` DISABLE KEYS */;
INSERT INTO `nota_fiscal` VALUES (1,1,'2022-03-23'),(2,2,'2022-02-07'),(3,3,'2022-11-06'),(4,4,'2021-07-02'),(5,5,'2022-03-25'),(6,6,'2022-03-17'),(7,7,'2021-02-05'),(8,8,'2021-12-21'),(9,9,'2021-01-27'),(10,10,'2021-02-08'),(11,11,'2021-11-25'),(12,12,'2021-07-15'),(13,13,'2023-01-27'),(14,14,'2021-06-07'),(15,15,'2020-10-26'),(16,16,'2020-01-21'),(17,17,'2021-08-09'),(18,18,'2022-02-27'),(19,19,'2020-12-02'),(20,20,'2020-11-17'),(21,21,'2020-07-23'),(22,22,'2021-09-17'),(23,23,'2022-03-17'),(24,24,'2021-03-08'),(25,25,'2020-03-30'),(26,26,'2021-04-11'),(27,27,'2020-04-20'),(28,28,'2021-10-29'),(29,29,'2022-07-13'),(30,30,'2022-01-19'),(31,31,'2020-10-07'),(32,32,'2021-02-11'),(33,33,'2022-07-17'),(34,34,'2022-07-10'),(35,35,'2020-12-24'),(36,36,'2020-12-21'),(37,37,'2021-05-14'),(38,38,'2020-11-06'),(39,39,'2020-12-19'),(40,40,'2021-09-06'),(41,41,'2022-07-10'),(42,42,'2021-05-23'),(43,43,'2023-01-07'),(44,44,'2021-02-25'),(45,45,'2022-03-13'),(46,46,'2022-07-25'),(47,47,'2020-04-12'),(48,48,'2020-11-29'),(49,49,'2020-10-05'),(50,50,'2021-03-05');
/*!40000 ALTER TABLE `nota_fiscal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pagamento`
--

DROP TABLE IF EXISTS `pagamento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pagamento` (
  `Id_pagamento` int NOT NULL AUTO_INCREMENT,
  `Id_inscricao` int DEFAULT NULL,
  `Valor` decimal(10,2) DEFAULT NULL,
  `Data_pagamento` date DEFAULT NULL,
  `Status` enum('Pago','Pendente','Atrasado') DEFAULT NULL,
  PRIMARY KEY (`Id_pagamento`),
  KEY `Id_inscricao` (`Id_inscricao`),
  CONSTRAINT `pagamento_ibfk_1` FOREIGN KEY (`Id_inscricao`) REFERENCES `inscricao_curso` (`Id_inscricao`)
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pagamento`
--

LOCK TABLES `pagamento` WRITE;
/*!40000 ALTER TABLE `pagamento` DISABLE KEYS */;
INSERT INTO `pagamento` VALUES (1,1,1815.12,'2022-03-20','Pago'),(2,2,845.47,'2022-02-03','Pendente'),(3,3,629.20,'2022-11-02','Pago'),(4,4,1508.28,'2021-06-30','Pago'),(5,5,1674.37,'2022-03-21','Pago'),(6,6,1226.15,'2022-03-14','Pago'),(7,7,883.97,'2021-02-02','Pendente'),(8,8,1611.34,'2021-12-19','Pago'),(9,9,1040.26,'2021-01-25','Pendente'),(10,10,1714.41,'2021-02-04','Pago'),(11,11,1065.59,'2021-11-24','Pago'),(12,12,958.26,'2021-07-11','Atrasado'),(13,13,1889.66,'2023-01-26','Pendente'),(14,14,1299.84,'2021-06-07','Pago'),(15,15,966.23,'2020-10-26','Atrasado'),(16,16,2202.46,'2020-01-18','Atrasado'),(17,17,2108.87,'2021-08-08','Atrasado'),(18,18,1243.49,'2022-02-26','Atrasado'),(19,19,539.81,'2020-12-01','Pendente'),(20,20,1610.41,'2020-11-13','Pago'),(21,21,2257.95,'2020-07-20','Pendente'),(22,22,1154.77,'2021-09-15','Pendente'),(23,23,1417.33,'2022-03-15','Pendente'),(24,24,2207.57,'2021-03-08','Atrasado'),(25,25,2337.97,'2020-03-30','Atrasado'),(26,26,1432.82,'2021-04-08','Pago'),(27,27,1500.31,'2020-04-18','Pago'),(28,28,1338.74,'2021-10-26','Pendente'),(29,29,590.68,'2022-07-10','Pago'),(30,30,1108.78,'2022-01-15','Pago'),(31,31,754.24,'2020-10-04','Pendente'),(32,32,2402.21,'2021-02-07','Atrasado'),(33,33,1812.54,'2022-07-13','Pago'),(34,34,2143.19,'2022-07-07','Atrasado'),(35,35,516.96,'2020-12-21','Pendente'),(36,36,1490.27,'2020-12-18','Pendente'),(37,37,1263.59,'2021-05-12','Pendente'),(38,38,850.11,'2020-11-04','Pago'),(39,39,1891.45,'2020-12-16','Pendente'),(40,40,2363.52,'2021-09-05','Pendente'),(41,41,2012.31,'2022-07-06','Pago'),(42,42,1170.04,'2021-05-23','Pendente'),(43,43,1270.90,'2023-01-05','Pago'),(44,44,2080.64,'2021-02-25','Pendente'),(45,45,2137.23,'2022-03-12','Atrasado'),(46,46,800.72,'2022-07-24','Pago'),(47,47,2352.89,'2020-04-11','Pendente'),(48,48,611.87,'2020-11-26','Atrasado'),(49,49,1421.84,'2020-10-03','Atrasado'),(50,50,1226.21,'2021-03-02','Atrasado');
/*!40000 ALTER TABLE `pagamento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `professor`
--

DROP TABLE IF EXISTS `professor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `professor` (
  `Id_professor` int NOT NULL AUTO_INCREMENT,
  `Nome` varchar(100) NOT NULL,
  `Email` varchar(100) DEFAULT NULL,
  `Especialidade` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`Id_professor`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `professor`
--

LOCK TABLES `professor` WRITE;
/*!40000 ALTER TABLE `professor` DISABLE KEYS */;
INSERT INTO `professor` VALUES (1,'Carlos Oliveira','carlos@universidade.com','Direito Civil'),(2,'Amanda Lima','amanda@universidade.com','Educação Infantil'),(3,'Ricardo Souza','ricardo@universidade.com','Redes de Computadores'),(4,'Fernanda Costa','fernanda@universidade.com','Anatomia'),(5,'Gabriel Martins','gabriel@universidade.com','Genética'),(6,'Patrícia Alves','patricia@universidade.com','Literatura'),(7,'Marcos Ferreira','marcos@universidade.com','Programação'),(8,'Juliana Santos','juliana@universidade.com','Enfermagem'),(9,'Roberto Silva','roberto@universidade.com','Farmácia'),(10,'Carla Mendes','carla@universidade.com','Administração'),(11,'Paulo Rodrigues','paulo@universidade.com','História'),(12,'Luciana Costa','luciana@universidade.com','Gestão de TI'),(13,'Fábio Nascimento','fabio@universidade.com','Psicologia'),(14,'Sandra Oliveira','sandra@universidade.com','Odontologia'),(15,'André Lima','andre@universidade.com','Contabilidade'),(16,'Tatiane Silva','tatiane@universidade.com','Geografia'),(17,'Rafael Costa','rafael@universidade.com','Desenvolvimento de Jogos'),(18,'Vanessa Martins','vanessa@universidade.com','Nutrição'),(19,'Bruno Ferreira','bruno@universidade.com','Fisioterapia'),(20,'Camila Souza','camila@universidade.com','Economia'),(21,'Diego Alves','diego@universidade.com','Matemática'),(22,'Larissa Santos','larissa@universidade.com','Segurança da Informação'),(23,'Thiago Oliveira','thiago@universidade.com','Medicina Veterinária'),(24,'Mariana Costa','mariana@universidade.com','Biomedicina'),(25,'Gustavo Lima','gustavo@universidade.com','Marketing'),(26,'Isabela Silva','isabela@universidade.com','Física'),(27,'Leonardo Ferreira','leonardo@universidade.com','Gestão Comercial'),(28,'Natália Souza','natalia@universidade.com','Educação Física'),(29,'Rodrigo Alves','rodrigo@universidade.com','Arquitetura'),(30,'Carolina Santos','carolina@universidade.com','Relações Internacionais'),(31,'Felipe Oliveira','felipe@universidade.com','Química'),(32,'Jéssica Costa','jessica@universidade.com','Produção Multimídia'),(33,'Vinícius Lima','vinicius@universidade.com','Fonoaudiologia'),(34,'Priscila Silva','priscila@universidade.com','Engenharia Elétrica'),(35,'Renato Ferreira','renato@universidade.com','Publicidade'),(36,'Daniela Souza','daniela@universidade.com','Artes Visuais'),(37,'Alexandre Alves','alexandre@universidade.com','Recursos Humanos'),(38,'Beatriz Santos','beatriz@universidade.com','Engenharia Mecânica'),(39,'Eduardo Oliveira','eduardo@universidade.com','Serviço Social'),(40,'Lívia Costa','livia@universidade.com','Sociologia'),(41,'Marcelo Lima','marcelo@universidade.com','Gestão Financeira'),(42,'Simone Silva','simone@universidade.com','Engenharia de Produção'),(43,'Hugo Ferreira','hugo@universidade.com','Teologia'),(44,'Cristina Souza','cristina@universidade.com','Filosofia'),(45,'Ricardo Alves','ricardo2@universidade.com','Logística'),(46,'Fernanda Santos','fernanda2@universidade.com','Engenharia Química'),(47,'Roberto Oliveira','roberto2@universidade.com','Turismo'),(48,'Ana Costa','ana2@universidade.com','Música'),(49,'José Lima','jose@universidade.com','Comércio Exterior'),(50,'Márcia Silva','marcia@universidade.com','Direito Constitucional'),(51,'Carlos Oliveira','carlos@universidade.com','Direito Civil'),(52,'Amanda Lima','amanda@universidade.com','Educação Infantil'),(53,'Ricardo Souza','ricardo@universidade.com','Redes de Computadores'),(54,'Fernanda Costa','fernanda@universidade.com','Anatomia'),(55,'Gabriel Martins','gabriel@universidade.com','Genética'),(56,'Patrícia Alves','patricia@universidade.com','Literatura'),(57,'Marcos Ferreira','marcos@universidade.com','Programação'),(58,'Juliana Santos','juliana@universidade.com','Enfermagem'),(59,'Roberto Silva','roberto@universidade.com','Farmácia'),(60,'Carla Mendes','carla@universidade.com','Administração'),(61,'Paulo Rodrigues','paulo@universidade.com','História'),(62,'Luciana Costa','luciana@universidade.com','Gestão de TI'),(63,'Fábio Nascimento','fabio@universidade.com','Psicologia'),(64,'Sandra Oliveira','sandra@universidade.com','Odontologia'),(65,'André Lima','andre@universidade.com','Contabilidade'),(66,'Tatiane Silva','tatiane@universidade.com','Geografia'),(67,'Rafael Costa','rafael@universidade.com','Desenvolvimento de Jogos'),(68,'Vanessa Martins','vanessa@universidade.com','Nutrição'),(69,'Bruno Ferreira','bruno@universidade.com','Fisioterapia'),(70,'Camila Souza','camila@universidade.com','Economia'),(71,'Diego Alves','diego@universidade.com','Matemática'),(72,'Larissa Santos','larissa@universidade.com','Segurança da Informação'),(73,'Thiago Oliveira','thiago@universidade.com','Medicina Veterinária'),(74,'Mariana Costa','mariana@universidade.com','Biomedicina'),(75,'Gustavo Lima','gustavo@universidade.com','Marketing'),(76,'Isabela Silva','isabela@universidade.com','Física'),(77,'Leonardo Ferreira','leonardo@universidade.com','Gestão Comercial'),(78,'Natália Souza','natalia@universidade.com','Educação Física'),(79,'Rodrigo Alves','rodrigo@universidade.com','Arquitetura'),(80,'Carolina Santos','carolina@universidade.com','Relações Internacionais'),(81,'Felipe Oliveira','felipe@universidade.com','Química'),(82,'Jéssica Costa','jessica@universidade.com','Produção Multimídia'),(83,'Vinícius Lima','vinicius@universidade.com','Fonoaudiologia'),(84,'Priscila Silva','priscila@universidade.com','Engenharia Elétrica'),(85,'Renato Ferreira','renato@universidade.com','Publicidade'),(86,'Daniela Souza','daniela@universidade.com','Artes Visuais'),(87,'Alexandre Alves','alexandre@universidade.com','Recursos Humanos'),(88,'Beatriz Santos','beatriz@universidade.com','Engenharia Mecânica'),(89,'Eduardo Oliveira','eduardo@universidade.com','Serviço Social'),(90,'Lívia Costa','livia@universidade.com','Sociologia'),(91,'Marcelo Lima','marcelo@universidade.com','Gestão Financeira'),(92,'Simone Silva','simone@universidade.com','Engenharia de Produção'),(93,'Hugo Ferreira','hugo@universidade.com','Teologia'),(94,'Cristina Souza','cristina@universidade.com','Filosofia'),(95,'Ricardo Alves','ricardo2@universidade.com','Logística'),(96,'Fernanda Santos','fernanda2@universidade.com','Engenharia Química'),(97,'Roberto Oliveira','roberto2@universidade.com','Turismo'),(98,'Ana Costa','ana2@universidade.com','Música'),(99,'José Lima','jose@universidade.com','Comércio Exterior'),(100,'Márcia Silva','marcia@universidade.com','Direito Constitucional');
/*!40000 ALTER TABLE `professor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `turma`
--

DROP TABLE IF EXISTS `turma`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `turma` (
  `Id_turma` int NOT NULL AUTO_INCREMENT,
  `Id_curso` int DEFAULT NULL,
  `Periodo` int DEFAULT NULL,
  `Turno` enum('Manha','Tarde','Noite') DEFAULT NULL,
  PRIMARY KEY (`Id_turma`),
  KEY `Id_curso` (`Id_curso`),
  CONSTRAINT `turma_ibfk_1` FOREIGN KEY (`Id_curso`) REFERENCES `curso` (`Id_curso`)
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `turma`
--

LOCK TABLES `turma` WRITE;
/*!40000 ALTER TABLE `turma` DISABLE KEYS */;
INSERT INTO `turma` VALUES (1,1,9,'Manha'),(2,2,6,'Noite'),(3,3,7,'Tarde'),(4,4,1,'Tarde'),(5,5,5,'Tarde'),(6,6,3,'Noite'),(7,7,10,'Noite'),(8,8,7,'Manha'),(9,9,7,'Manha'),(10,10,6,'Manha'),(11,11,8,'Noite'),(12,12,2,'Manha'),(13,13,2,'Tarde'),(14,14,2,'Manha'),(15,15,6,'Manha'),(16,16,2,'Tarde'),(17,17,4,'Tarde'),(18,18,4,'Tarde'),(19,19,3,'Noite'),(20,20,1,'Noite'),(21,21,3,'Noite'),(22,22,1,'Noite'),(23,23,10,'Tarde'),(24,24,8,'Noite'),(25,25,6,'Noite'),(26,26,10,'Noite'),(27,27,6,'Manha'),(28,28,9,'Manha'),(29,29,5,'Tarde'),(30,30,2,'Tarde'),(31,31,2,'Noite'),(32,32,6,'Noite'),(33,33,4,'Manha'),(34,34,2,'Noite'),(35,35,1,'Tarde'),(36,36,10,'Manha'),(37,37,2,'Noite'),(38,38,4,'Tarde'),(39,39,6,'Tarde'),(40,40,10,'Noite'),(41,41,9,'Manha'),(42,42,9,'Noite'),(43,43,2,'Manha'),(44,44,6,'Tarde'),(45,45,6,'Manha'),(46,46,3,'Tarde'),(47,47,2,'Tarde'),(48,48,9,'Noite'),(49,49,2,'Tarde'),(50,50,5,'Tarde');
/*!40000 ALTER TABLE `turma` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'sistema_universidade'
--

--
-- Dumping routines for database 'sistema_universidade'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-09-04 19:59:01
