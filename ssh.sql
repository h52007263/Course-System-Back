-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: ssh
-- ------------------------------------------------------
-- Server version	5.7.17-log

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
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(255) NOT NULL,
  `username` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` VALUES (1,'e10adc3949ba59abbe56e057f20f883e','admin');
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `class`
--

DROP TABLE IF EXISTS `class`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `class` (
  `class_id` int(11) NOT NULL AUTO_INCREMENT,
  `class_name` varchar(50) NOT NULL,
  `specialty` varchar(30) NOT NULL,
  `year` int(11) NOT NULL,
  `department` int(11) DEFAULT NULL,
  PRIMARY KEY (`class_id`),
  KEY `FKactxjncvcd8ag0k2we5db60vs` (`department`),
  CONSTRAINT `FKactxjncvcd8ag0k2we5db60vs` FOREIGN KEY (`department`) REFERENCES `department` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `class`
--

LOCK TABLES `class` WRITE;
/*!40000 ALTER TABLE `class` DISABLE KEYS */;
INSERT INTO `class` VALUES (1,'15姹夎瑷€4鐝?','姹夎瑷€鏂囧1',2016,1),(2,'16杞欢宸ョ▼6鐝?,'杞欢宸ョ▼',2016,1),(3,'17鏁板甯堣寖2鐝?,'鏁板甯堣寖',2017,2),(4,'14璁＄畻鏈虹瀛︿笌鎶€鏈?鐝?,'璁＄畻鏈虹瀛︿笌鎶€鏈?,2014,1),(5,'15骞煎効鏁欒偛5鐝?,'骞煎効鏁欒偛',2015,3),(6,'17骞煎効蹇冪悊6鐝?,'骞煎効蹇冪悊',2017,3),(7,'15淇℃伅涓庤绠楃瀛?鐝?,'淇℃伅涓庤绠楃瀛?,2015,1),(8,'16璇枃甯堣寖8鐝?,'璇枃甯堣寖',2016,2),(9,'14骞煎効鍙戝睍1鐝?,'骞煎効鍙戝睍',2014,3),(10,'15澶ф暟鎹?鐝?,'澶ф暟鎹?,2015,1);
/*!40000 ALTER TABLE `class` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `classroom`
--

DROP TABLE IF EXISTS `classroom`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `classroom` (
  `cla_id` int(11) NOT NULL AUTO_INCREMENT,
  `cla_name` varchar(255) NOT NULL,
  PRIMARY KEY (`cla_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `classroom`
--

LOCK TABLES `classroom` WRITE;
/*!40000 ALTER TABLE `classroom` DISABLE KEYS */;
INSERT INTO `classroom` VALUES (1,'楣ょ惔101'),(2,'鍙旀剼204'),(3,'鍏冨煿306'),(4,'琛岀煡妤?02'),(5,'琛岀煡缁勫洟B505'),(6,'琛岀煡缁勫洟A100'),(7,'琛岀煡缁勫洟C209'),(8,'琛岀煡缁勫洟D307'),(9,'琛岀煡缁勫洟E208'),(10,'琛岀煡缁勫洟F204');
/*!40000 ALTER TABLE `classroom` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `course`
--

DROP TABLE IF EXISTS `course`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `course` (
  `course_id` int(11) NOT NULL,
  `course_hour` int(11) NOT NULL,
  `course_name` varchar(255) NOT NULL,
  `credit` double NOT NULL,
  `property` varchar(20) NOT NULL,
  PRIMARY KEY (`course_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `course`
--

LOCK TABLES `course` WRITE;
/*!40000 ALTER TABLE `course` DISABLE KEYS */;
INSERT INTO `course` VALUES (1,32,'SSH寮€婧愭鏋跺簲鐢?,4,'涓撲笟蹇呬慨'),(2,64,'杞欢娴嬭瘯',3,'涓撲笟閫変慨'),(3,78,'Java',4,'涓撲笟蹇呬慨'),(4,36,'涓浗浼犵粺鎬濇兂',2,'涓撲笟閫変慨'),(5,64,'鏂囧娆ｈ祻',4,'涓撲笟蹇呬慨'),(6,78,'鍙や唬鏂囧',3,'涓撲笟蹇呬慨'),(7,24,'鎵嬪伐璇?,4,'涓撲笟蹇呬慨'),(8,64,'闊充箰璇?,2,'涓撲笟閫変慨'),(9,28,'鑹烘湳璇?,2,'涓撲笟閫変慨'),(10,56,'骞煎効鏁欒偛瀛?,5,'涓撲笟蹇呬慨'),(123,13,'璇剧▼',123,'蹇呬慨');
/*!40000 ALTER TABLE `course` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `department`
--

DROP TABLE IF EXISTS `department`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `department` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `department_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `department`
--

LOCK TABLES `department` WRITE;
/*!40000 ALTER TABLE `department` DISABLE KEYS */;
INSERT INTO `department` VALUES (1,'淇℃伅宸ョ▼瀛﹂櫌'),(2,'鏁欏笀鏁欒偛瀛﹂櫌'),(3,'骞煎効甯堣寖瀛﹂櫌'),(4,'鍟嗗闄?),(5,'鏂囧闄?),(6,'鏃呮父涓庣鐞嗗闄?),(7,'鐜绉戝瀛﹂櫌'),(8,'椋熷搧绉戝瀛﹂櫌'),(9,'椹厠鎬濆闄?),(10,'澶栧浗璇闄?),(11,'娴峰鏁欒偛瀛﹂櫌'),(12,'鐢靛瓙宸ョ▼瀛﹂櫌'),(13,'鏂伴椈浼犳挱瀛﹂櫌'),(14,'缇庢湳瀛﹂櫌'),(15,'闊充箰瀛﹂櫌'),(16,'浣撹偛瀛﹂櫌');
/*!40000 ALTER TABLE `department` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student`
--

DROP TABLE IF EXISTS `student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `student` (
  `stu_id` int(11) NOT NULL,
  `birth_date` varchar(255) NOT NULL,
  `card_number` char(18) NOT NULL,
  `ethnic` varchar(10) NOT NULL,
  `password` varchar(255) NOT NULL,
  `stu_name` varchar(10) NOT NULL,
  `class` int(11) DEFAULT NULL,
  PRIMARY KEY (`stu_id`),
  KEY `FKol76uu3480v0b30u5eb2waiuc` (`class`),
  CONSTRAINT `FKol76uu3480v0b30u5eb2waiuc` FOREIGN KEY (`class`) REFERENCES `class` (`class_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student`
--

LOCK TABLES `student` WRITE;
/*!40000 ALTER TABLE `student` DISABLE KEYS */;
INSERT INTO `student` VALUES (12345,'2018-05-08','32223123123','璋㈣阿','E10ADC3949BA59ABBE56E057F20F883E','瀛︾敓',5);
/*!40000 ALTER TABLE `student` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `syscontrol`
--

DROP TABLE IF EXISTS `syscontrol`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `syscontrol` (
  `ifSelect` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `syscontrol`
--

LOCK TABLES `syscontrol` WRITE;
/*!40000 ALTER TABLE `syscontrol` DISABLE KEYS */;
INSERT INTO `syscontrol` VALUES (1);
/*!40000 ALTER TABLE `syscontrol` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `teacher`
--

DROP TABLE IF EXISTS `teacher`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `teacher` (
  `tea_id` int(11) NOT NULL,
  `password` varchar(255) NOT NULL,
  `sex` char(2) NOT NULL,
  `tea_name` varchar(10) NOT NULL,
  `department` int(11) DEFAULT NULL,
  PRIMARY KEY (`tea_id`),
  KEY `FK8yk5frdw0cnqxtkm6pfacsxlr` (`department`),
  CONSTRAINT `FK8yk5frdw0cnqxtkm6pfacsxlr` FOREIGN KEY (`department`) REFERENCES `department` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teacher`
--

LOCK TABLES `teacher` WRITE;
/*!40000 ALTER TABLE `teacher` DISABLE KEYS */;
INSERT INTO `teacher` VALUES (123456,'E10ADC3949BA59ABBE56E057F20F883E','濂?,'鑰佸笀',5);
/*!40000 ALTER TABLE `teacher` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-11-14  9:52:20
