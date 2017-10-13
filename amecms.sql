-- MySQL dump 10.13  Distrib 5.7.12, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: amecms
-- ------------------------------------------------------
-- Server version	5.7.17

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
-- Table structure for table `amecms_attach`
--

DROP TABLE IF EXISTS `amecms_attach`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `amecms_attach` (
  `ID` varchar(50) NOT NULL,
  `NAME` varchar(50) DEFAULT NULL,
  `PATH` varchar(500) DEFAULT NULL,
  `TYPE` int(11) DEFAULT NULL,
  `STATE` int(11) DEFAULT NULL,
  `MEMO` longtext,
  `CTIME` datetime DEFAULT NULL,
  `MTIME` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `amecms_attach`
--

LOCK TABLES `amecms_attach` WRITE;
/*!40000 ALTER TABLE `amecms_attach` DISABLE KEYS */;
/*!40000 ALTER TABLE `amecms_attach` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `amecms_module`
--

DROP TABLE IF EXISTS `amecms_module`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `amecms_module` (
  `ID` varchar(50) NOT NULL,
  `NAME` varchar(50) DEFAULT NULL,
  `URL` varchar(50) DEFAULT NULL,
  `ICON` varchar(50) DEFAULT NULL,
  `LEVEL` varchar(50) DEFAULT NULL,
  `STATE` int(11) DEFAULT NULL,
  `MEMO` varchar(50) DEFAULT NULL,
  `CTIME` datetime DEFAULT NULL,
  `MTIME` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `amecms_module`
--

LOCK TABLES `amecms_module` WRITE;
/*!40000 ALTER TABLE `amecms_module` DISABLE KEYS */;
INSERT INTO `amecms_module` VALUES ('99','系统管理',NULL,NULL,'1',1,NULL,'2017-08-08 10:30:08',NULL),('9901','用户管理','/user/index.html',NULL,'2',1,NULL,'2017-08-08 10:30:08',NULL),('9902','角色管理','/role/index.html',NULL,'2',1,NULL,'2017-08-08 10:30:08',NULL),('9903','功能管理','/module/index.html',NULL,'2',1,NULL,'2017-08-08 10:30:08',NULL);
/*!40000 ALTER TABLE `amecms_module` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `amecms_relate`
--

DROP TABLE IF EXISTS `amecms_relate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `amecms_relate` (
  `ID` varchar(50) NOT NULL,
  `GLID` varchar(50) DEFAULT NULL,
  `ATID` varchar(50) DEFAULT NULL,
  `MEMO` longtext,
  `CTIME` datetime DEFAULT NULL,
  `MTIME` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `amecms_relate`
--

LOCK TABLES `amecms_relate` WRITE;
/*!40000 ALTER TABLE `amecms_relate` DISABLE KEYS */;
/*!40000 ALTER TABLE `amecms_relate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `amecms_right`
--

DROP TABLE IF EXISTS `amecms_right`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `amecms_right` (
  `ID` varchar(50) NOT NULL,
  `RID` varchar(50) DEFAULT NULL,
  `MID` varchar(50) DEFAULT NULL,
  `MEMO` varchar(500) DEFAULT NULL,
  `CTIME` datetime DEFAULT NULL,
  `MTIME` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `amecms_right`
--

LOCK TABLES `amecms_right` WRITE;
/*!40000 ALTER TABLE `amecms_right` DISABLE KEYS */;
INSERT INTO `amecms_right` VALUES ('08c932ad-7be2-11e7-8f8b-a0c589307630','63e8aae8-7be1-11e7-8f8b-a0c589307630','99',NULL,'2017-08-08 10:30:08',NULL),('115b1658-7be2-11e7-8f8b-a0c589307630','63e8aae8-7be1-11e7-8f8b-a0c589307630','9901',NULL,'2017-08-08 10:30:08',NULL),('1b317730-7be2-11e7-8f8b-a0c589307630','63e8aae8-7be1-11e7-8f8b-a0c589307630','9902',NULL,'2017-08-08 10:30:08',NULL),('25e4ad5a-7be2-11e7-8f8b-a0c589307630','63e8aae8-7be1-11e7-8f8b-a0c589307630','9903',NULL,'2017-08-08 10:30:08',NULL);
/*!40000 ALTER TABLE `amecms_right` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `amecms_role`
--

DROP TABLE IF EXISTS `amecms_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `amecms_role` (
  `ID` varchar(50) NOT NULL,
  `NAME` varchar(50) DEFAULT NULL,
  `STATE` int(11) DEFAULT NULL,
  `MEMO` varchar(500) DEFAULT NULL,
  `CTIME` datetime DEFAULT NULL,
  `MTIME` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `amecms_role`
--

LOCK TABLES `amecms_role` WRITE;
/*!40000 ALTER TABLE `amecms_role` DISABLE KEYS */;
INSERT INTO `amecms_role` VALUES ('63e8aae8-7be1-11e7-8f8b-a0c589307630','系统管理员',1,'后台管理员','2017-08-08 10:30:08',NULL);
/*!40000 ALTER TABLE `amecms_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `amecms_user`
--

DROP TABLE IF EXISTS `amecms_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `amecms_user` (
  `ID` varchar(50) NOT NULL,
  `NAME` varchar(50) DEFAULT NULL,
  `PWD` varchar(50) DEFAULT NULL,
  `RID` varchar(50) DEFAULT NULL,
  `SEX` int(11) DEFAULT NULL,
  `TEL` varchar(50) DEFAULT NULL,
  `EMAIL` varchar(50) DEFAULT NULL,
  `PIC` varchar(200) DEFAULT NULL,
  `STATE` int(11) DEFAULT NULL,
  `MEMO` varchar(500) DEFAULT NULL,
  `CTIME` datetime DEFAULT NULL,
  `MTIME` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `amecms_user`
--

LOCK TABLES `amecms_user` WRITE;
/*!40000 ALTER TABLE `amecms_user` DISABLE KEYS */;
INSERT INTO `amecms_user` VALUES ('admin','系统管理员','21232f297a57a5a743894a0e4a801fc3','63e8aae8-7be1-11e7-8f8b-a0c589307630',1,NULL,NULL,NULL,1,NULL,'2017-08-03 18:08:08',NULL);
/*!40000 ALTER TABLE `amecms_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'amecms'
--

--
-- Dumping routines for database 'amecms'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-10-13 16:07:10
