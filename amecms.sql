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
-- Table structure for table `ame_file`
--

DROP TABLE IF EXISTS `ame_file`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ame_file` (
  `id` varchar(50) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `path` varchar(500) DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  `memo` longtext,
  `ctime` datetime DEFAULT NULL,
  `mtime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ame_file`
--

LOCK TABLES `ame_file` WRITE;
/*!40000 ALTER TABLE `ame_file` DISABLE KEYS */;
/*!40000 ALTER TABLE `ame_file` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ame_file_rel`
--

DROP TABLE IF EXISTS `ame_file_rel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ame_file_rel` (
  `id` varchar(50) NOT NULL,
  `glid` varchar(50) DEFAULT NULL,
  `atid` varchar(50) DEFAULT NULL,
  `ctime` datetime DEFAULT NULL,
  `mtime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ame_file_rel`
--

LOCK TABLES `ame_file_rel` WRITE;
/*!40000 ALTER TABLE `ame_file_rel` DISABLE KEYS */;
/*!40000 ALTER TABLE `ame_file_rel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ame_res`
--

DROP TABLE IF EXISTS `ame_res`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ame_res` (
  `id` varchar(50) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  `parentid` varchar(50) DEFAULT NULL,
  `icon` varchar(50) DEFAULT NULL,
  `url` varchar(100) DEFAULT NULL,
  `sort` int(11) DEFAULT NULL,
  `ctime` datetime DEFAULT NULL,
  `mtime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ame_res`
--

LOCK TABLES `ame_res` WRITE;
/*!40000 ALTER TABLE `ame_res` DISABLE KEYS */;
INSERT INTO `ame_res` VALUES ('0812c27d-326b-11e8-9150-a0c589307630','删除',2,'a29284b4-3267-11e8-9150-a0c589307630','fa fa-trash','/res/delete.html',2,'2017-08-08 10:30:08','2017-08-08 10:30:08'),('4e8758cf-3267-11e8-9150-a0c589307630','用户管理',1,'fa754e77-3263-11e8-9150-a0c589307630',NULL,'/uer/index.html',1,'2017-08-08 10:30:08','2017-08-08 10:30:08'),('5e2124ba-3268-11e8-9150-a0c589307630','编辑',2,'4e8758cf-3267-11e8-9150-a0c589307630','fa fa-pencil','/uer/edit.html',1,'2017-08-08 10:30:08','2017-08-08 10:30:08'),('6d83908c-3267-11e8-9150-a0c589307630','角色管理',1,'fa754e77-3263-11e8-9150-a0c589307630',NULL,'/role/index.html',2,'2017-08-08 10:30:08','2017-08-08 10:30:08'),('7617d16e-3268-11e8-9150-a0c589307630','删除',2,'4e8758cf-3267-11e8-9150-a0c589307630','fa fa-trash','/user/delete.html',2,'2017-08-08 10:30:08','2017-08-08 10:30:08'),('7b41745f-326a-11e8-9150-a0c589307630','编辑',2,'6d83908c-3267-11e8-9150-a0c589307630','fa fa-pencil','/role/edit.html',1,'2017-08-08 10:30:08','2017-08-08 10:30:08'),('93a24b19-326a-11e8-9150-a0c589307630','删除',2,'6d83908c-3267-11e8-9150-a0c589307630','fa fa-trash','/role/delete.html',2,'2017-08-08 10:30:08','2017-08-08 10:30:08'),('a29284b4-3267-11e8-9150-a0c589307630','资源管理',1,'fa754e77-3263-11e8-9150-a0c589307630',NULL,'/res/index.html',3,'2017-08-08 10:30:08','2017-08-08 10:30:08'),('b9c43224-326a-11e8-9150-a0c589307630','分配',2,'6d83908c-3267-11e8-9150-a0c589307630','fa fa-th','/role/alloc.html',3,'2017-08-08 10:30:08','2017-08-08 10:30:08'),('f2fcc178-326a-11e8-9150-a0c589307630','编辑',2,'a29284b4-3267-11e8-9150-a0c589307630','fa fa-pencil','/res/edit.html',1,'2017-08-08 10:30:08','2017-08-08 10:30:08'),('fa754e77-3263-11e8-9150-a0c589307630','系统管理',1,NULL,'fa fa-balance-scale',NULL,99,'2017-08-08 10:30:08','2017-08-08 10:30:08'),('fa89abca-3267-11e8-9150-a0c589307630','首页',1,NULL,'fa fa-dashboard','/index.html',0,'2017-08-08 10:30:08','2017-08-08 10:30:08');
/*!40000 ALTER TABLE `ame_res` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ame_role`
--

DROP TABLE IF EXISTS `ame_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ame_role` (
  `id` varchar(50) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `memo` varchar(500) DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  `sort` int(11) DEFAULT NULL,
  `ctime` datetime DEFAULT NULL,
  `mtime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ame_role`
--

LOCK TABLES `ame_role` WRITE;
/*!40000 ALTER TABLE `ame_role` DISABLE KEYS */;
INSERT INTO `ame_role` VALUES ('63e8aae8-7be1-11e7-8f8b-a0c589307630','超级管理员','全权限',1,0,'2017-08-08 10:30:08','2017-08-08 10:30:08');
/*!40000 ALTER TABLE `ame_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ame_role_res`
--

DROP TABLE IF EXISTS `ame_role_res`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ame_role_res` (
  `id` varchar(50) NOT NULL,
  `roid` varchar(50) DEFAULT NULL,
  `reid` varchar(50) DEFAULT NULL,
  `ctime` datetime DEFAULT NULL,
  `mtime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ame_role_res`
--

LOCK TABLES `ame_role_res` WRITE;
/*!40000 ALTER TABLE `ame_role_res` DISABLE KEYS */;
INSERT INTO `ame_role_res` VALUES ('a2d1b203-326b-11e8-9150-a0c589307630','63e8aae8-7be1-11e7-8f8b-a0c589307630','fa754e77-3263-11e8-9150-a0c589307630','2017-08-08 10:30:08','2017-08-08 10:30:08'),('a9d85dc3-326b-11e8-9150-a0c589307630','63e8aae8-7be1-11e7-8f8b-a0c589307630','fa89abca-3267-11e8-9150-a0c589307630','2017-08-08 10:30:08','2017-08-08 10:30:08'),('b0be2d2f-326b-11e8-9150-a0c589307630','63e8aae8-7be1-11e7-8f8b-a0c589307630','5e2124ba-3268-11e8-9150-a0c589307630','2017-08-08 10:30:08','2017-08-08 10:30:08'),('b56fd38e-326b-11e8-9150-a0c589307630','63e8aae8-7be1-11e7-8f8b-a0c589307630','7617d16e-3268-11e8-9150-a0c589307630','2017-08-08 10:30:08','2017-08-08 10:30:08'),('bae2f979-326b-11e8-9150-a0c589307630','63e8aae8-7be1-11e7-8f8b-a0c589307630','7b41745f-326a-11e8-9150-a0c589307630','2017-08-08 10:30:08','2017-08-08 10:30:08'),('bf91e3d2-326b-11e8-9150-a0c589307630','63e8aae8-7be1-11e7-8f8b-a0c589307630','93a24b19-326a-11e8-9150-a0c589307630','2017-08-08 10:30:08','2017-08-08 10:30:08'),('c4b7f327-326b-11e8-9150-a0c589307630','63e8aae8-7be1-11e7-8f8b-a0c589307630','b9c43224-326a-11e8-9150-a0c589307630','2017-08-08 10:30:08','2017-08-08 10:30:08'),('cb1c65b0-326b-11e8-9150-a0c589307630','63e8aae8-7be1-11e7-8f8b-a0c589307630','0812c27d-326b-11e8-9150-a0c589307630','2017-08-08 10:30:08','2017-08-08 10:30:08'),('d000414f-326b-11e8-9150-a0c589307630','63e8aae8-7be1-11e7-8f8b-a0c589307630','f2fcc178-326a-11e8-9150-a0c589307630','2017-08-08 10:30:08','2017-08-08 10:30:08'),('d5a75c37-326b-11e8-9150-a0c589307630','63e8aae8-7be1-11e7-8f8b-a0c589307630','4e8758cf-3267-11e8-9150-a0c589307630','2017-08-08 10:30:08','2017-08-08 10:30:08'),('daf06ad2-326b-11e8-9150-a0c589307630','63e8aae8-7be1-11e7-8f8b-a0c589307630','6d83908c-3267-11e8-9150-a0c589307630','2017-08-08 10:30:08','2017-08-08 10:30:08'),('df73408e-326b-11e8-9150-a0c589307630','63e8aae8-7be1-11e7-8f8b-a0c589307630','a29284b4-3267-11e8-9150-a0c589307630','2017-08-08 10:30:08','2017-08-08 10:30:08');
/*!40000 ALTER TABLE `ame_role_res` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ame_user`
--

DROP TABLE IF EXISTS `ame_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ame_user` (
  `id` varchar(50) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `pwd` varchar(50) DEFAULT NULL,
  `sex` int(11) DEFAULT NULL,
  `tel` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `super` int(11) DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  `avatar` varchar(200) DEFAULT NULL,
  `ctime` datetime DEFAULT NULL,
  `mtime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ame_user`
--

LOCK TABLES `ame_user` WRITE;
/*!40000 ALTER TABLE `ame_user` DISABLE KEYS */;
INSERT INTO `ame_user` VALUES ('admin','系统管理员','21232f297a57a5a743894a0e4a801fc3',1,NULL,NULL,NULL,1,NULL,'2017-08-03 18:08:08',NULL);
/*!40000 ALTER TABLE `ame_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ame_user_role`
--

DROP TABLE IF EXISTS `ame_user_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ame_user_role` (
  `id` varchar(50) NOT NULL,
  `uid` varchar(50) DEFAULT NULL,
  `roid` varchar(50) DEFAULT NULL,
  `ctime` datetime DEFAULT NULL,
  `mtime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ame_user_role`
--

LOCK TABLES `ame_user_role` WRITE;
/*!40000 ALTER TABLE `ame_user_role` DISABLE KEYS */;
INSERT INTO `ame_user_role` VALUES ('33c98c95-3263-11e8-9150-a0c589307630','admin','63e8aae8-7be1-11e7-8f8b-a0c589307630','2017-08-08 10:30:08','2017-08-08 10:30:08');
/*!40000 ALTER TABLE `ame_user_role` ENABLE KEYS */;
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

-- Dump completed on 2018-03-28 17:44:34
