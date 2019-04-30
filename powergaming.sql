CREATE DATABASE  IF NOT EXISTS `powergaming` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */;
USE `powergaming`;
-- MySQL dump 10.13  Distrib 8.0.13, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: powergaming
-- ------------------------------------------------------
-- Server version	8.0.13

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `categoria`
--

DROP TABLE IF EXISTS `categoria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `categoria` (
  `ID_CATEGORIA` int(11) NOT NULL,
  PRIMARY KEY (`ID_CATEGORIA`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categoria`
--

LOCK TABLES `categoria` WRITE;
/*!40000 ALTER TABLE `categoria` DISABLE KEYS */;
INSERT INTO `categoria` VALUES (1),(2),(3),(4),(5),(6),(7),(8),(9),(10);
/*!40000 ALTER TABLE `categoria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categoria_idiomaweb`
--

DROP TABLE IF EXISTS `categoria_idiomaweb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `categoria_idiomaweb` (
  `ID_CATEGORIA` int(11) NOT NULL,
  `ID_IDIOMA_WEB` char(2) NOT NULL,
  `NOMBRE` varchar(45) NOT NULL,
  PRIMARY KEY (`ID_CATEGORIA`,`ID_IDIOMA_WEB`),
  KEY `fk_Categoria_has_IdiomaWeb_IdiomaWeb1_idx` (`ID_IDIOMA_WEB`),
  KEY `fk_Categoria_has_IdiomaWeb_Categoria1_idx` (`ID_CATEGORIA`),
  CONSTRAINT `fk_Categoria_has_IdiomaWeb_Categoria1` FOREIGN KEY (`ID_CATEGORIA`) REFERENCES `categoria` (`id_categoria`),
  CONSTRAINT `fk_Categoria_has_IdiomaWeb_IdiomaWeb1` FOREIGN KEY (`ID_IDIOMA_WEB`) REFERENCES `idiomaweb` (`id_idioma_web`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categoria_idiomaweb`
--

LOCK TABLES `categoria_idiomaweb` WRITE;
/*!40000 ALTER TABLE `categoria_idiomaweb` DISABLE KEYS */;
INSERT INTO `categoria_idiomaweb` VALUES (1,'EN','Adventure'),(1,'ES','Aventura'),(2,'EN','Action'),(2,'ES','Accion'),(3,'EN','Role'),(3,'ES','Rol'),(4,'EN','Strategy'),(4,'ES','Estrategia'),(5,'EN','Multiplayer'),(5,'ES','Multijugador'),(6,'EN','Open world'),(6,'ES','Mundo abierto'),(7,'EN','Hack and Slash'),(7,'ES','Hack and Slash'),(8,'EN','Exploration'),(8,'ES','Exploracion'),(9,'EN','War'),(9,'ES','Guerra'),(10,'EN','Online'),(10,'ES','Online');
/*!40000 ALTER TABLE `categoria_idiomaweb` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chat`
--

DROP TABLE IF EXISTS `chat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `chat` (
  `ID_MENSAGE` int(11) NOT NULL AUTO_INCREMENT,
  `MENSAGE` varchar(2048) NOT NULL,
  `FECHA` datetime NOT NULL,
  `EMAIL` varchar(75) NOT NULL,
  PRIMARY KEY (`ID_MENSAGE`),
  KEY `fk_Chat_Usuario1_idx` (`EMAIL`),
  CONSTRAINT `fk_Chat_Usuario1` FOREIGN KEY (`EMAIL`) REFERENCES `usuario` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chat`
--

LOCK TABLES `chat` WRITE;
/*!40000 ALTER TABLE `chat` DISABLE KEYS */;
/*!40000 ALTER TABLE `chat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `creador`
--

DROP TABLE IF EXISTS `creador`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `creador` (
  `ID_CREADOR` int(11) NOT NULL AUTO_INCREMENT,
  `NOMBRE` varchar(45) NOT NULL,
  PRIMARY KEY (`ID_CREADOR`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `creador`
--

LOCK TABLES `creador` WRITE;
/*!40000 ALTER TABLE `creador` DISABLE KEYS */;
INSERT INTO `creador` VALUES (1,'Blizzard'),(2,'Dontnod Entertainment'),(3,'EA Games'),(4,'‎EA Redwood Shores'),(5,'From Software'),(6,'Crate Entertainmen'),(7,'Ensemble Studios'),(8,'Hello Games'),(9,'CD Projekt RED'),(10,'Riot Games');
/*!40000 ALTER TABLE `creador` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `direccion`
--

DROP TABLE IF EXISTS `direccion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `direccion` (
  `ID_DIRECCION` int(11) NOT NULL AUTO_INCREMENT,
  `ID_PROVINCIA` int(11) NOT NULL,
  `EMAIL` varchar(75) NOT NULL,
  `CODIGO_POSTAL` varchar(8) NOT NULL,
  `CALLE` varchar(75) NOT NULL,
  `NUMERO` varchar(40) NOT NULL,
  `PISO` varchar(5) NOT NULL,
  `LOCALIDAD` varchar(45) NOT NULL,
  PRIMARY KEY (`ID_DIRECCION`,`EMAIL`),
  KEY `fk_Direccion_Provincia1_idx` (`ID_PROVINCIA`),
  KEY `fk_Direccion_Usuario1_idx` (`EMAIL`),
  CONSTRAINT `fk_Direccion_Provincia1` FOREIGN KEY (`ID_PROVINCIA`) REFERENCES `provincia` (`id_provincia`),
  CONSTRAINT `fk_Direccion_Usuario1` FOREIGN KEY (`EMAIL`) REFERENCES `usuario` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `direccion`
--

LOCK TABLES `direccion` WRITE;
/*!40000 ALTER TABLE `direccion` DISABLE KEYS */;
INSERT INTO `direccion` VALUES (1,27,'eddie_garcia@gmail.com','27550','','18','1A','Taboada'),(2,15,'franciclo@gmail.com','27550','','18','1A','Guadarrama'),(3,13,'iagociclo@gmail.com','27550','','18','1A','Trabada'),(4,11,'pablociclo@gmail.com','27550','','18','1A','Monforte'),(5,28,'corralciclo@gmail.com','27550','','18','1A','Chantada'),(6,30,'rafaciclo@gmail.com','27550','','18','1A','Guntin'),(7,31,'davidciclo@gmail.com','27550','','18','1A','Monterroso'),(8,32,'hectorciclo@gmail.com','27550','','18','1A','Palas'),(9,33,'luisciclo@gmail.com','27550','','18','1A','Antes de Ulla'),(10,40,'joseantonioprofe@gmail.com','27550','','18','1A','Valga');
/*!40000 ALTER TABLE `direccion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `edicion`
--

DROP TABLE IF EXISTS `edicion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `edicion` (
  `ID_EDICION` int(11) NOT NULL,
  `ID_JUEGO` int(11) NOT NULL,
  `ID_FORMATO` int(11) NOT NULL,
  `ID_TIPO_EDICION` int(11) NOT NULL,
  `PRECIO` decimal(5,2) NOT NULL,
  PRIMARY KEY (`ID_EDICION`,`ID_JUEGO`),
  KEY `fk_Edicion_Formato1_idx` (`ID_FORMATO`),
  KEY `fk_Edicion_TipoEdicion1_idx` (`ID_TIPO_EDICION`),
  KEY `fk_Edicion_Juego1_idx` (`ID_JUEGO`),
  CONSTRAINT `fk_Edicion_Formato1` FOREIGN KEY (`ID_FORMATO`) REFERENCES `formato` (`id_formato`),
  CONSTRAINT `fk_Edicion_Juego1` FOREIGN KEY (`ID_JUEGO`) REFERENCES `juego` (`id_juego`),
  CONSTRAINT `fk_Edicion_TipoEdicion1` FOREIGN KEY (`ID_TIPO_EDICION`) REFERENCES `tipoedicion` (`id_tipo_edicion`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `edicion`
--

LOCK TABLES `edicion` WRITE;
/*!40000 ALTER TABLE `edicion` DISABLE KEYS */;
INSERT INTO `edicion` VALUES (1,1,2,1,50.00),(2,1,2,2,80.00),(3,1,2,3,120.00),(4,2,2,1,35.00),(5,4,1,1,30.00),(6,4,2,2,65.00),(7,6,2,1,50.00),(8,6,2,2,85.00),(9,6,2,4,95.00),(10,10,1,1,50.00),(11,10,2,2,80.00),(12,10,2,4,150.00),(13,3,2,1,50.00),(14,3,2,2,80.00),(15,5,2,3,120.00),(16,5,2,1,35.00),(17,7,1,1,30.00),(18,7,2,2,65.00),(19,8,2,1,50.00),(20,8,2,2,85.00),(21,9,2,4,95.00);
/*!40000 ALTER TABLE `edicion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `formato`
--

DROP TABLE IF EXISTS `formato`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `formato` (
  `ID_FORMATO` int(11) NOT NULL,
  PRIMARY KEY (`ID_FORMATO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `formato`
--

LOCK TABLES `formato` WRITE;
/*!40000 ALTER TABLE `formato` DISABLE KEYS */;
INSERT INTO `formato` VALUES (1),(2);
/*!40000 ALTER TABLE `formato` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `guias`
--

DROP TABLE IF EXISTS `guias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `guias` (
  `ID_GUIAS` int(11) NOT NULL AUTO_INCREMENT,
  `URL` varchar(45) NOT NULL,
  PRIMARY KEY (`ID_GUIAS`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `guias`
--

LOCK TABLES `guias` WRITE;
/*!40000 ALTER TABLE `guias` DISABLE KEYS */;
INSERT INTO `guias` VALUES (1,'guia1'),(2,'guia2');
/*!40000 ALTER TABLE `guias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `idioma`
--

DROP TABLE IF EXISTS `idioma`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `idioma` (
  `ID_IDIOMA` char(3) NOT NULL,
  PRIMARY KEY (`ID_IDIOMA`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `idioma`
--

LOCK TABLES `idioma` WRITE;
/*!40000 ALTER TABLE `idioma` DISABLE KEYS */;
INSERT INTO `idioma` VALUES ('ALE'),('ESP'),('ING'),('JAP');
/*!40000 ALTER TABLE `idioma` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `idioma_idiomaweb`
--

DROP TABLE IF EXISTS `idioma_idiomaweb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `idioma_idiomaweb` (
  `ID_IDIOMA` char(3) NOT NULL,
  `ID_IDIOMA_WEB` char(2) NOT NULL,
  `NOMBRE` varchar(45) NOT NULL,
  PRIMARY KEY (`ID_IDIOMA`,`ID_IDIOMA_WEB`),
  KEY `fk_Idioma_has_Idioma_Web_Idioma_Web1_idx` (`ID_IDIOMA_WEB`),
  KEY `fk_Idioma_has_Idioma_Web_Idioma1_idx` (`ID_IDIOMA`),
  CONSTRAINT `fk_Idioma_has_Idioma_Web_Idioma1` FOREIGN KEY (`ID_IDIOMA`) REFERENCES `idioma` (`id_idioma`),
  CONSTRAINT `fk_Idioma_has_Idioma_Web_Idioma_Web1` FOREIGN KEY (`ID_IDIOMA_WEB`) REFERENCES `idiomaweb` (`id_idioma_web`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `idioma_idiomaweb`
--

LOCK TABLES `idioma_idiomaweb` WRITE;
/*!40000 ALTER TABLE `idioma_idiomaweb` DISABLE KEYS */;
INSERT INTO `idioma_idiomaweb` VALUES ('ALE','EN','German'),('ALE','ES','Alemán'),('ESP','EN','Spanish'),('ESP','ES','Castellano'),('ING','EN','English'),('ING','ES','Inglés'),('JAP','EN','Japanese'),('JAP','ES','Japonés');
/*!40000 ALTER TABLE `idioma_idiomaweb` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `idiomaweb`
--

DROP TABLE IF EXISTS `idiomaweb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `idiomaweb` (
  `ID_IDIOMA_WEB` char(2) NOT NULL,
  PRIMARY KEY (`ID_IDIOMA_WEB`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `idiomaweb`
--

LOCK TABLES `idiomaweb` WRITE;
/*!40000 ALTER TABLE `idiomaweb` DISABLE KEYS */;
INSERT INTO `idiomaweb` VALUES ('EN'),('ES');
/*!40000 ALTER TABLE `idiomaweb` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `idiomaweb_formato`
--

DROP TABLE IF EXISTS `idiomaweb_formato`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `idiomaweb_formato` (
  `ID_IDIOMA_WEB` char(2) NOT NULL,
  `ID_FORMATO` int(11) NOT NULL,
  `NOMBRE` varchar(45) NOT NULL,
  PRIMARY KEY (`ID_IDIOMA_WEB`,`ID_FORMATO`),
  KEY `fk_IdiomaWeb_has_Formato_Formato1_idx` (`ID_FORMATO`),
  KEY `fk_IdiomaWeb_has_Formato_IdiomaWeb1_idx` (`ID_IDIOMA_WEB`),
  CONSTRAINT `fk_IdiomaWeb_has_Formato_Formato1` FOREIGN KEY (`ID_FORMATO`) REFERENCES `formato` (`id_formato`),
  CONSTRAINT `fk_IdiomaWeb_has_Formato_IdiomaWeb1` FOREIGN KEY (`ID_IDIOMA_WEB`) REFERENCES `idiomaweb` (`id_idioma_web`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `idiomaweb_formato`
--

LOCK TABLES `idiomaweb_formato` WRITE;
/*!40000 ALTER TABLE `idiomaweb_formato` DISABLE KEYS */;
INSERT INTO `idiomaweb_formato` VALUES ('EN',1,'Digital'),('EN',2,'Physical'),('ES',1,'Digital'),('ES',2,'Fisico');
/*!40000 ALTER TABLE `idiomaweb_formato` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `idiomaweb_tipoedicion`
--

DROP TABLE IF EXISTS `idiomaweb_tipoedicion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `idiomaweb_tipoedicion` (
  `ID_IDIOMA_WEB` char(2) NOT NULL,
  `ID_TIPO_EDICION` int(11) NOT NULL,
  `NOMBRE` varchar(45) NOT NULL,
  PRIMARY KEY (`ID_IDIOMA_WEB`,`ID_TIPO_EDICION`),
  KEY `fk_Idioma_Web_has_TipoEdicion_TipoEdicion1_idx` (`ID_TIPO_EDICION`),
  KEY `fk_Idioma_Web_has_TipoEdicion_Idioma_Web1_idx` (`ID_IDIOMA_WEB`),
  CONSTRAINT `fk_Idioma_Web_has_TipoEdicion_Idioma_Web1` FOREIGN KEY (`ID_IDIOMA_WEB`) REFERENCES `idiomaweb` (`id_idioma_web`),
  CONSTRAINT `fk_Idioma_Web_has_TipoEdicion_TipoEdicion1` FOREIGN KEY (`ID_TIPO_EDICION`) REFERENCES `tipoedicion` (`id_tipo_edicion`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `idiomaweb_tipoedicion`
--

LOCK TABLES `idiomaweb_tipoedicion` WRITE;
/*!40000 ALTER TABLE `idiomaweb_tipoedicion` DISABLE KEYS */;
INSERT INTO `idiomaweb_tipoedicion` VALUES ('EN',1,'Normal'),('EN',2,'Collector'),('EN',3,'Limited'),('EN',4,'Game of the year'),('ES',1,'Normal'),('ES',2,'Coleccionista'),('ES',3,'Limitada'),('ES',4,'Juego del año');
/*!40000 ALTER TABLE `idiomaweb_tipoedicion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `juego`
--

DROP TABLE IF EXISTS `juego`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `juego` (
  `ID_JUEGO` int(11) NOT NULL AUTO_INCREMENT,
  `NOMBRE` varchar(45) NOT NULL,
  `FECHA_LANZAMIENTO` int(11) NOT NULL,
  `ID_CREADOR` int(11) NOT NULL,
  `PUNTUACION_MEDIA` int(2) NOT NULL,
  PRIMARY KEY (`ID_JUEGO`),
  KEY `fk_Juego_Creador1_idx` (`ID_CREADOR`),
  CONSTRAINT `fk_Juego_Creador1` FOREIGN KEY (`ID_CREADOR`) REFERENCES `creador` (`id_creador`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `juego`
--

LOCK TABLES `juego` WRITE;
/*!40000 ALTER TABLE `juego` DISABLE KEYS */;
INSERT INTO `juego` VALUES (1,'Diablo 3',2012,1,0),(2,'Diablo 2',2001,1,0),(3,'Vampyr',2018,2,0),(4,'Wolrd of Warcraft',2004,1,0),(5,'Dead Space',2008,4,0),(6,'Dark Souls',2012,5,0),(7,'Grim Dawn',2010,6,0),(8,'Age of Empires',1997,7,0),(9,'No Mans Sky',2016,8,0),(10,'The Witcher 3: Wild Hunt',2015,9,0);
/*!40000 ALTER TABLE `juego` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `juego_categoria`
--

DROP TABLE IF EXISTS `juego_categoria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `juego_categoria` (
  `ID_CATEGORIA` int(11) NOT NULL,
  `ID_JUEGO` int(11) NOT NULL,
  PRIMARY KEY (`ID_CATEGORIA`,`ID_JUEGO`),
  KEY `fk_Juego_Categoria_Juego1_idx` (`ID_JUEGO`),
  CONSTRAINT `fk_Juego_Categoria_Categoria1` FOREIGN KEY (`ID_CATEGORIA`) REFERENCES `categoria` (`id_categoria`),
  CONSTRAINT `fk_Juego_Categoria_Juego1` FOREIGN KEY (`ID_JUEGO`) REFERENCES `juego` (`id_juego`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `juego_categoria`
--

LOCK TABLES `juego_categoria` WRITE;
/*!40000 ALTER TABLE `juego_categoria` DISABLE KEYS */;
INSERT INTO `juego_categoria` VALUES (2,1),(7,1),(2,2),(7,2),(2,3),(3,3),(5,4),(6,4),(8,4),(10,4),(2,5),(2,6),(3,6),(4,6),(2,7),(3,7),(7,7),(4,8),(9,8),(3,9),(8,9),(3,10),(6,10),(8,10);
/*!40000 ALTER TABLE `juego_categoria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `juego_guia`
--

DROP TABLE IF EXISTS `juego_guia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `juego_guia` (
  `ID_JUEGO` int(11) NOT NULL,
  `ID_GUIAS` int(11) NOT NULL,
  PRIMARY KEY (`ID_JUEGO`,`ID_GUIAS`),
  KEY `fk_Juego_Guia_Guias1_idx` (`ID_GUIAS`),
  CONSTRAINT `fk_Juego_Guia_Guias1` FOREIGN KEY (`ID_GUIAS`) REFERENCES `guias` (`id_guias`),
  CONSTRAINT `fk_Juego_Guia_Juego1` FOREIGN KEY (`ID_JUEGO`) REFERENCES `juego` (`id_juego`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `juego_guia`
--

LOCK TABLES `juego_guia` WRITE;
/*!40000 ALTER TABLE `juego_guia` DISABLE KEYS */;
INSERT INTO `juego_guia` VALUES (4,1),(5,2);
/*!40000 ALTER TABLE `juego_guia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `juego_idioma`
--

DROP TABLE IF EXISTS `juego_idioma`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `juego_idioma` (
  `ID_JUEGO` int(11) NOT NULL,
  `ID_IDIOMA` char(3) NOT NULL,
  PRIMARY KEY (`ID_JUEGO`,`ID_IDIOMA`),
  KEY `fk_Juego_has_Idioma_Idioma1_idx` (`ID_IDIOMA`),
  KEY `fk_Juego_has_Idioma_Juego1_idx` (`ID_JUEGO`),
  CONSTRAINT `fk_Juego_has_Idioma_Idioma1` FOREIGN KEY (`ID_IDIOMA`) REFERENCES `idioma` (`id_idioma`),
  CONSTRAINT `fk_Juego_has_Idioma_Juego1` FOREIGN KEY (`ID_JUEGO`) REFERENCES `juego` (`id_juego`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `juego_idioma`
--

LOCK TABLES `juego_idioma` WRITE;
/*!40000 ALTER TABLE `juego_idioma` DISABLE KEYS */;
INSERT INTO `juego_idioma` VALUES (1,'ESP'),(1,'ING'),(2,'ESP'),(2,'ING'),(3,'ALE'),(3,'ESP'),(3,'ING'),(4,'ESP'),(4,'ING'),(5,'ESP'),(5,'ING'),(6,'ESP'),(6,'ING'),(7,'ALE'),(7,'ESP'),(7,'ING'),(8,'ESP'),(8,'ING'),(9,'ESP'),(9,'ING'),(10,'ESP'),(10,'ING');
/*!40000 ALTER TABLE `juego_idioma` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `juego_idiomaweb`
--

DROP TABLE IF EXISTS `juego_idiomaweb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `juego_idiomaweb` (
  `ID_JUEGO` int(11) NOT NULL,
  `ID_IDIOMA_WEB` char(2) NOT NULL,
  `REQUISITOS` varchar(2048) DEFAULT NULL,
  `INFORMACION` varchar(5120) DEFAULT NULL,
  PRIMARY KEY (`ID_JUEGO`,`ID_IDIOMA_WEB`),
  KEY `fk_Juego_has_IdiomaWeb_IdiomaWeb1_idx` (`ID_IDIOMA_WEB`),
  KEY `fk_Juego_has_IdiomaWeb_Juego1_idx` (`ID_JUEGO`),
  CONSTRAINT `fk_Juego_has_IdiomaWeb_IdiomaWeb1` FOREIGN KEY (`ID_IDIOMA_WEB`) REFERENCES `idiomaweb` (`id_idioma_web`),
  CONSTRAINT `fk_Juego_has_IdiomaWeb_Juego1` FOREIGN KEY (`ID_JUEGO`) REFERENCES `juego` (`id_juego`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `juego_idiomaweb`
--

LOCK TABLES `juego_idiomaweb` WRITE;
/*!40000 ALTER TABLE `juego_idiomaweb` DISABLE KEYS */;
INSERT INTO `juego_idiomaweb` VALUES (1,'EN',NULL,'This is the continuation of Diablo II and the third part of the series that was created by the American company Blizzard. Its theme is dark and terrifying fantasy'),(1,'ES',NULL,'Ésta es la continuación de Diablo II y la tercera parte de la serie que fue creada por la compañía estadounidense Blizzard. Su temática es de fantasía oscura y terrorífica'),(2,'EN',NULL,'In Diablo II, the player advances through four chapters, called \"acts\" in the game, with each act following a more or less predetermined path and a list of missions, six in the first three acts and three in the last. Some of these missions are optional. The player assumes the role of a hero from one of the five different character classes (Amazona, Necromancer, Barbarian, Paladin and Sorceress). Players fight monsters through open spaces and dungeons to level up their character and get better items (weapons, armor)'),(2,'ES',NULL,'En Diablo II, el jugador avanza a través de cuatro capítulos, llamados \"actos\" en el juego, con cada acto siguiendo un camino más o menos predeterminado y una lista de misiones, seis en los primeros tres actos y tres en el último. Algunas de estas misiones son opcionales. El jugador asume el papel de un héroe de una de las cinco clases de personajes diferentes (Amazona, Nigromante, Bárbaro, Paladín y Hechicera). Los jugadores luchan contra monstruos a través de espacios naturales abiertos y mazmorras para subir de nivel su personaje y obtener mejores artículos (armas, armaduras)'),(3,'EN',NULL,'London, 1918. Dr. Jonathan Reid You recently turned vampire. As a doctor, you must find the cure for the flu decimates the population. As a vampire, you are doomed to feed those whom you have sworn to heal.¿You embrace your inner freak? Survive and fight against vampire hunters, skals undead and other supernatural creatures. Use your damn powers to manipulate and delving into the lives of those around you and decide who will be your next victim'),(3,'ES',NULL,'Londres, 1918. Eres el Dr. Jonathan Reid, recientemente convertido en vampiro. Como doctor, debes encontrar la cura para la gripe que diezma a la población. Como vampiro, estás condenado a alimentarte de aquellos a quienes has jurado curar. ¿Abrazarás tu monstruo interior? Sobrevive y lucha contra cazadores de vampiros, skals no muertos y otras criaturas sobrenaturales. Usa tus poderes malditos para manipular y escarbar en las vidas de quienes te rodean y decidir quién será tu próxima víctima.'),(4,'EN',NULL,'Five years have passed since the events narrated in Warcraft 3. The Alliance and the New Horde live in a state of cold war, and maintain a fragile and fragile peace, as they rebuild their kingdoms and try to regain their prosperity. In Stormwind, King Varian Wrynn has disappeared in mysterious circumstances while traveling on a diplomatic mission to the island of Theramore, so in his absence, his son Anduin Wrynn, still a child, is appointed king, assuming the regency Lord Bolvar Fordragon and the Mysterious lady Katrana Prestor. In Orgrimmar, war chief Thrall struggles to take the New Horde forward.'),(4,'ES',NULL,'Han pasado cinco años desde los eventos narrados en Warcraft 3. La Alianza y la Nueva Horda viven en un estado de guerra fría, y mantienen una frágil y quebradiza paz, mientras reconstruyen sus reinos y tratan de recuperar su prosperidad. En Ventormenta, el rey Varian Wrynn ha desaparecido en circunstancias misteriosas mientras viajaba en misión diplomática a la isla de Theramore, por lo que en su ausencia, es nombrado rey su hijo Anduin Wrynn, todavía un niño, asumiendo la regencia lord Bolvar Fordragon y la misteriosa lady Katrana Prestor. En Orgrimmar, el jefe de guerra Thrall lucha por sacar adelante a la Nueva Horda. '),(5,'EN',NULL,'DEAD SPACE IS THE DEBUT OF EA WITHIN THE GENRE OF SURVIVAL HORROR. DURING THE GAME WILL ASSUME CONTROL OF ISAAC CLARKE, engineer WRAPPED IN SPATIAL STRUCTURES Stressful AVENTURA, when his company receives a mysterious distress call A SPACESHIP loss.'),(5,'ES',NULL,'DEAD SPACE ES EL DEBUT DE EA DENTRO DEL GÉNERO DE LOS SURVIVAL HORROR. DURANTE EL JUEGO ASUMIREMOS EL CONTROL DE ISAAC CLARKE, UN INGENIERO DE ESTRUCTURAS ESPACIALES ENVUELTO EN UNA ANGUSTIOSA AVENTURA, CUANDO SU COMPAÑÍA RECIBE UNA MISTERIOSA LLAMADA DE SOCORRO DE UNA NAVE ESPACIAL PERDIDA.'),(6,'EN',NULL,'is the new action RPG from the creators of Demons Souls, FromSoftware. Dark Souls has many elements already known: a fantastic and dark universe, tortuous paths through dungeons, fearsome enemies and unique online interactions. However, Dark Souls is the spiritual successor to Demons Souls, not a sequel. Get ready for a new world that leads to despair, complete with large explorable horizon and fully arranged vertically geographical reliefs.'),(6,'ES',NULL,'es el nuevo juego de rol y acción de los creadores de Demon’s Souls, FromSoftware. Dark Souls cuenta con muchos elementos ya conocidos: un universo fantástico y oscuro, tortuosos recorridos por mazmorras, temibles enemigos e interacciones online exclusivas. Sin embargo, Dark Souls es el sucesor espiritual de Demon’s Souls, no una secuela. Prepárate para un nuevo mundo que induce a la desesperación, provisto de un amplio horizonte totalmente explorable y de relieves geográficos dispuestos en vertical.'),(7,'EN',NULL,'Enter a world of apocalyptic fantasy where humanity is on the brink of extinction, iron is valued above gold and trust is earned with effort. This ARPG presents a development of complex characters, hundreds of unique items, handicrafts and missions choice and consequence.'),(7,'ES',NULL,'Entra en un mundo de fantasía apocalíptica donde la humanidad está al borde de la extinción, el hierro se valora por encima del oro y la confianza se gana con esfuerzo. Este ARPG presenta un desarrollo de personajes complejo, cientos de elementos únicos, trabajos de artesanía y misiones con elección y consecuencia.'),(8,'EN',NULL,'Age of Empires, the game that marked the foundation of the genre of RTS and left a legacy of two decades, returns in its final form for PCs with Windows 10. With all content and officially launched a modernized gameplay, new graphics and lots of new features, Age of Empires: definitive Edition is the definitive strategy title in real time.'),(8,'ES',NULL,'Age of Empires, el juego que marcó las bases del género de la estrategia en tiempo real y dejó un legado de dos décadas, regresa en su forma definitiva para PC con Windows 10. Con todo el contenido lanzado oficialmente y una jugabilidad modernizada, nuevos gráficos y gran cantidad de novedades, Age of Empires: Definitive Edition es el título de estrategia en tiempo real definitivo.'),(9,'EN',NULL,'Inspired by the adventures and imagination we love science fiction classic, No Mans Sky presents a whole galaxy to explore that, full of unique planets and life forms with constant danger and action. In No Mans Sky, each star is the light of a distant sun orbiting planets full of life, and you can get all you want. Fly smoothly from space depths to the surface of planets, no loading screens and limitless'),(9,'ES',NULL,'Inspirado en las aventuras y la imaginación que adoramos de la ciencia ficción clásica, No Man’s Sky te presenta toda una galaxia para que la explores, llena de singulares planetas y formas de vida, junto a peligro y acción constantes. En No Man’s Sky, cada estrella es la luz de un sol lejano que orbitan planetas repletos de vida, y puedes ir a todos los que quieras. Vuela suavemente desde las profundidades espaciales hasta la superficie de los planetas, sin pantallas de carga y sin límites'),(10,'EN',NULL,'The Witcher: Wild Hunt is a RPG new generation open world with an exciting plot, set in a spectacular fantasy universe full of momentous decisions and shocking consequences. In The Witcher play as Geralt of Rivia a professional monster slayer who has to find the protagonist of a prophecy girl in a wide open and full of commercial cities world islands Vikings pirates, dangerous mountain passes and caves forgotten.'),(10,'ES',NULL,'The Witcher: Wild Hunt es un juego de rol de mundo abierto de nueva generación con una apasionante trama, ambientado en un espectacular universo de fantasía lleno de decisiones trascendentales y consecuencias impactantes. En The Witcher encarnas a Geralt de Rivia, un cazador de monstruos profesional que tiene que encontrar a la muchacha protagonista de una profecía en un amplio mundo abierto y rebosante de ciudades comerciales, islas con piratas vikingos, peligrosos puertos de montaña y cuevas olvidadas.');
/*!40000 ALTER TABLE `juego_idiomaweb` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `juego_plataforma`
--

DROP TABLE IF EXISTS `juego_plataforma`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `juego_plataforma` (
  `ID_JUEGO` int(11) NOT NULL,
  `ID_PLATAFORMA` int(11) NOT NULL,
  PRIMARY KEY (`ID_JUEGO`,`ID_PLATAFORMA`),
  KEY `fk_Juego_has_Plataforma_Plataforma1_idx` (`ID_PLATAFORMA`),
  KEY `fk_Juego_has_Plataforma_Juego1_idx` (`ID_JUEGO`),
  CONSTRAINT `fk_Juego_has_Plataforma_Juego1` FOREIGN KEY (`ID_JUEGO`) REFERENCES `juego` (`id_juego`),
  CONSTRAINT `fk_Juego_has_Plataforma_Plataforma1` FOREIGN KEY (`ID_PLATAFORMA`) REFERENCES `plataforma` (`id_plataforma`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `juego_plataforma`
--

LOCK TABLES `juego_plataforma` WRITE;
/*!40000 ALTER TABLE `juego_plataforma` DISABLE KEYS */;
INSERT INTO `juego_plataforma` VALUES (1,1),(2,1),(3,1),(4,1),(5,1),(6,1),(7,1),(8,1),(9,1),(10,1),(1,2),(6,2),(10,2),(7,3);
/*!40000 ALTER TABLE `juego_plataforma` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lineapedido`
--

DROP TABLE IF EXISTS `lineapedido`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `lineapedido` (
  `NUMERO_LINEA` int(11) NOT NULL AUTO_INCREMENT,
  `ID_EDICION` int(11) NOT NULL,
  `ID_PEDIDO` int(11) NOT NULL,
  `CANTIDAD` int(11) NOT NULL,
  `PRECIO` decimal(5,2) NOT NULL,
  PRIMARY KEY (`NUMERO_LINEA`),
  KEY `fk_LineaPedidos_Pedido1_idx` (`ID_PEDIDO`),
  KEY `fk_LineaPedidos_Edicion1_idx` (`ID_EDICION`),
  CONSTRAINT `fk_LineaPedidos_Edicion1` FOREIGN KEY (`ID_EDICION`) REFERENCES `edicion` (`id_edicion`),
  CONSTRAINT `fk_LineaPedidos_Pedido1` FOREIGN KEY (`ID_PEDIDO`) REFERENCES `pedido` (`id_pedido`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lineapedido`
--

LOCK TABLES `lineapedido` WRITE;
/*!40000 ALTER TABLE `lineapedido` DISABLE KEYS */;
INSERT INTO `lineapedido` VALUES (1,1,1,2,100.00),(2,2,1,3,240.00),(3,3,1,2,240.00),(4,4,2,1,35.00),(5,5,2,1,30.00),(6,6,2,1,65.00),(7,7,3,2,100.00),(8,8,3,3,255.00),(9,9,4,2,190.00),(10,10,4,2,100.00);
/*!40000 ALTER TABLE `lineapedido` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pais`
--

DROP TABLE IF EXISTS `pais`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `pais` (
  `ID_PAIS` int(11) NOT NULL AUTO_INCREMENT,
  `NOMBRE` varchar(45) NOT NULL,
  PRIMARY KEY (`ID_PAIS`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pais`
--

LOCK TABLES `pais` WRITE;
/*!40000 ALTER TABLE `pais` DISABLE KEYS */;
INSERT INTO `pais` VALUES (1,'España'),(2,'Francia'),(3,'Italia'),(4,'Reino Unido'),(5,'Alemania'),(6,'Suiza'),(7,'Estados Unidos'),(8,'Portugal'),(9,'Rusia'),(10,'Japón');
/*!40000 ALTER TABLE `pais` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pedido`
--

DROP TABLE IF EXISTS `pedido`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `pedido` (
  `ID_PEDIDO` int(11) NOT NULL,
  `EMAIL` varchar(75) NOT NULL,
  `IVA` int(11) NOT NULL,
  `TOTAL` decimal(6,2) NOT NULL,
  `FECHA_PEDIDO` date NOT NULL,
  PRIMARY KEY (`ID_PEDIDO`,`EMAIL`),
  KEY `fk_Pedido_Usuario1_idx` (`EMAIL`),
  CONSTRAINT `fk_Pedido_Usuario1` FOREIGN KEY (`EMAIL`) REFERENCES `usuario` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pedido`
--

LOCK TABLES `pedido` WRITE;
/*!40000 ALTER TABLE `pedido` DISABLE KEYS */;
INSERT INTO `pedido` VALUES (1,'eddie_garcia@gmail.com',21,0.00,'1995-01-29'),(2,'franciclo@gmail.com',21,0.00,'1995-01-29'),(3,'iagociclo@gmail.com',21,0.00,'1995-01-29'),(4,'pablociclo@gmail.com',21,0.00,'1995-01-29'),(5,'corralciclo@gmail.com',21,0.00,'1995-01-29'),(6,'rafaciclo@gmail.com',21,0.00,'1995-01-29'),(7,'davidciclo@gmail.com',21,0.00,'1995-01-29'),(8,'hectorciclo@gmail.com',21,0.00,'1995-01-29'),(9,'luisciclo@gmail.com',21,0.00,'1995-01-29'),(10,'joseantonioprofe@gmail.com',21,0.00,'1995-01-29');
/*!40000 ALTER TABLE `pedido` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `plataforma`
--

DROP TABLE IF EXISTS `plataforma`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `plataforma` (
  `ID_PLATAFORMA` int(11) NOT NULL AUTO_INCREMENT,
  `NOMBRE` varchar(45) NOT NULL,
  PRIMARY KEY (`ID_PLATAFORMA`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `plataforma`
--

LOCK TABLES `plataforma` WRITE;
/*!40000 ALTER TABLE `plataforma` DISABLE KEYS */;
INSERT INTO `plataforma` VALUES (1,'PC'),(2,'PlayStation 4'),(3,'Xbox'),(4,'Xbox One'),(5,'PlayStation 3'),(6,'PlayStation 2'),(7,'Xbox 360'),(8,'WII'),(9,'Nintendo 3DS'),(10,'PS Vita');
/*!40000 ALTER TABLE `plataforma` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `provincia`
--

DROP TABLE IF EXISTS `provincia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `provincia` (
  `ID_PROVINCIA` int(11) NOT NULL AUTO_INCREMENT,
  `ID_PAIS` int(11) NOT NULL,
  `NOMBRE` varchar(45) NOT NULL,
  PRIMARY KEY (`ID_PROVINCIA`),
  KEY `fk_Provincia_Pais1_idx` (`ID_PAIS`),
  CONSTRAINT `fk_Provincia_Pais1` FOREIGN KEY (`ID_PAIS`) REFERENCES `pais` (`id_pais`)
) ENGINE=InnoDB AUTO_INCREMENT=66 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `provincia`
--

LOCK TABLES `provincia` WRITE;
/*!40000 ALTER TABLE `provincia` DISABLE KEYS */;
INSERT INTO `provincia` VALUES (1,1,'Araba/Álava'),(2,1,'Albacete'),(3,1,'Alicante/Alacant'),(4,1,'Almería'),(5,1,'Ávila'),(6,1,'Badajoz'),(7,1,'Balears, Illes'),(8,1,'Barcelona'),(9,1,'Burgos'),(10,1,'Cáceres'),(11,1,'Cádiz'),(12,1,'Castellón/Castelló'),(13,1,'Ciudad Real'),(14,1,'Córdoba'),(15,1,'Coruña, A'),(16,1,'Cuenca'),(17,1,'Girona'),(18,1,'Granada'),(19,1,'Guadalajara'),(20,1,'Gipuzkoa'),(21,1,'Huelva'),(22,1,'Huesca'),(23,1,'Jaén'),(24,1,'León'),(25,1,'Lleida'),(26,1,'Rioja, La'),(27,1,'Lugo'),(28,1,'Madrid'),(29,1,'Málaga'),(30,1,'Murcia'),(31,1,'Navarra'),(32,1,'Ourense'),(33,1,'Asturias'),(34,1,'Palencia'),(35,1,'Palmas, Las'),(36,1,'Pontevedra'),(37,1,'Salamanca'),(38,1,'Santa Cruz de Tenerife'),(39,1,'Cantabria'),(40,1,'Segovia'),(41,1,'Sevilla'),(42,1,'Soria'),(43,1,'Tarragona'),(44,1,'Teruel'),(45,1,'Toledo'),(46,1,'Valencia/València'),(47,1,'Valladolid'),(48,1,'Bizkaia'),(49,1,'Zamora'),(50,1,'Zaragoza'),(51,1,'Ceuta'),(52,1,'Melilla'),(53,3,'Milan'),(54,3,'Roma'),(55,4,'Manchester'),(56,4,'Londres'),(57,5,'Frankfur'),(58,5,'Berlin'),(59,6,'Berna'),(60,7,'New York'),(61,8,'Lisboa'),(62,9,'Moscu'),(63,10,'Tokio'),(64,2,'Paris'),(65,2,'Nantes');
/*!40000 ALTER TABLE `provincia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipoedicion`
--

DROP TABLE IF EXISTS `tipoedicion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `tipoedicion` (
  `ID_TIPO_EDICION` int(11) NOT NULL,
  PRIMARY KEY (`ID_TIPO_EDICION`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipoedicion`
--

LOCK TABLES `tipoedicion` WRITE;
/*!40000 ALTER TABLE `tipoedicion` DISABLE KEYS */;
INSERT INTO `tipoedicion` VALUES (1),(2),(3),(4);
/*!40000 ALTER TABLE `tipoedicion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `usuario` (
  `EMAIL` varchar(75) NOT NULL,
  `NOMBRE` varchar(45) NOT NULL,
  `APELLIDO1` varchar(45) DEFAULT NULL,
  `APELLIDO2` varchar(45) DEFAULT NULL,
  `TELEFONO` varchar(30) DEFAULT NULL,
  `PASSWORD` varchar(250) NOT NULL,
  `FECHA_NACIMIENTO` date NOT NULL,
  `GENERO` char(1) NOT NULL COMMENT '''F(Femenino), M(Masculino), O(Otro)''',
  `NOMBRE_USER` varchar(45) NOT NULL,
  PRIMARY KEY (`EMAIL`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` VALUES ('corralciclo@gmail.com','corral',NULL,NULL,NULL,'root','1998-01-29','H','corral'),('davidciclo@gmail.com','david',NULL,NULL,NULL,'root','1994-01-29','H','david'),('dmendez1038@gmail.com','David','Mendez','Martinez',NULL,'TSUffFfZDRTt2oVIHUjqffTqv4UQBQOzs8YpwsBf0I4ZME6fPipTNjD/SrJ3yYoh','1997-01-04','O','DavidMM'),('eddie_garcia@gmail.com','eddie',NULL,NULL,NULL,'root','1995-01-29','H','eddie'),('eddie_taboada@gmail.com','eddie','garcia','garcia','12312412414','Gq95nNGs1LkkEm9AaB1aTfuqJk+kxES1IU34sm1fuMq59oYE3lVd9d/JrLvMyXvV','2019-02-04','H','eddiegg1994'),('eddie_taboada@hotmail.com','asdada','asdadasda',NULL,NULL,'dRJ5oS+ASnFaUfQVNHrvA2ZaT92+E7L7wszBFlqbP7BNndCorYgK13EXQBpkScNL','1994-06-20','H','asdadaasdadasda'),('franciclo@gmail.com','fran',NULL,NULL,NULL,'root','1985-01-29','H','fran'),('hectorciclo@gmail.com','hector',NULL,NULL,NULL,'root','1989-01-29','H','hector'),('iagociclo@gmail.com','iago',NULL,NULL,NULL,'root','1990-01-29','H','iago'),('joseantonioprofe@gmail.com','jose antonio',NULL,NULL,NULL,'root','1970-01-29','H','joseantonio'),('luisciclo@gmail.com','luis',NULL,NULL,NULL,'root','1988-01-29','H','luis'),('pablociclo@gmail.com','pablo',NULL,NULL,NULL,'root','1996-01-29','H','pablo'),('rafaciclo@gmail.com','rafa',NULL,NULL,NULL,'root','1993-01-29','H','rafa');
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuarios_juego`
--

DROP TABLE IF EXISTS `usuarios_juego`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `usuarios_juego` (
  `EMAIL` varchar(75) NOT NULL,
  `ID_JUEGO` int(11) NOT NULL,
  `PUNTUACION` int(11) DEFAULT NULL,
  `COMPRADO` char(1) DEFAULT NULL,
  `COMENTARIO` varchar(5120) DEFAULT NULL,
  `FECHA_COMENTARIO` date DEFAULT NULL,
  PRIMARY KEY (`EMAIL`,`ID_JUEGO`),
  KEY `fk_Usuarios_Juego_Juego1_idx` (`ID_JUEGO`),
  CONSTRAINT `fk_Usuarios_Juego_Juego1` FOREIGN KEY (`ID_JUEGO`) REFERENCES `juego` (`id_juego`),
  CONSTRAINT `fk_Usuarios_Juego_Usuario1` FOREIGN KEY (`EMAIL`) REFERENCES `usuario` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios_juego`
--

LOCK TABLES `usuarios_juego` WRITE;
/*!40000 ALTER TABLE `usuarios_juego` DISABLE KEYS */;
INSERT INTO `usuarios_juego` VALUES ('corralciclo@gmail.com',3,4,'N',NULL,NULL),('davidciclo@gmail.com',7,2,'S',NULL,NULL),('dmendez1038@gmail.com',9,4,NULL,NULL,NULL),('eddie_garcia@gmail.com',2,3,'N',NULL,NULL),('eddie_garcia@gmail.com',3,2,'S',NULL,NULL),('eddie_garcia@gmail.com',4,1,'S',NULL,NULL),('eddie_garcia@gmail.com',10,2,'S',NULL,NULL),('eddie_taboada@gmail.com',1,5,'N','hola muy buen juego','2019-04-29'),('eddie_taboada@gmail.com',4,3,NULL,NULL,NULL),('eddie_taboada@gmail.com',5,9,NULL,NULL,NULL),('eddie_taboada@gmail.com',6,2,NULL,NULL,NULL),('eddie_taboada@gmail.com',10,10,'N','asdadasdad','2019-04-17'),('eddie_taboada@hotmail.com',1,0,NULL,NULL,NULL),('eddie_taboada@hotmail.com',7,0,NULL,NULL,NULL),('eddie_taboada@hotmail.com',8,0,NULL,NULL,NULL),('eddie_taboada@hotmail.com',9,0,NULL,NULL,NULL),('eddie_taboada@hotmail.com',10,0,NULL,NULL,NULL),('franciclo@gmail.com',4,NULL,'S',NULL,NULL),('hectorciclo@gmail.com',6,NULL,'N',NULL,NULL),('iagociclo@gmail.com',10,5,'N',NULL,NULL),('luisciclo@gmail.com',3,1,'S',NULL,NULL),('pablociclo@gmail.com',5,4,'S',NULL,NULL),('rafaciclo@gmail.com',8,3,'N',NULL,NULL);
/*!40000 ALTER TABLE `usuarios_juego` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-04-30 10:52:40
