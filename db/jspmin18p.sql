-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: jspmin18p
-- ------------------------------------------------------
-- Server version	5.7.31

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
-- Table structure for table `chat`
--

DROP TABLE IF EXISTS `chat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chat` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `adminid` bigint(20) DEFAULT NULL COMMENT '管理员id',
  `ask` longtext COMMENT '提问',
  `reply` longtext COMMENT '回复',
  `isreply` int(11) DEFAULT NULL COMMENT '是否回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1615272025855 DEFAULT CHARSET=utf8 COMMENT='客服聊天表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chat`
--

LOCK TABLES `chat` WRITE;
/*!40000 ALTER TABLE `chat` DISABLE KEYS */;
INSERT INTO `chat` VALUES (81,'2021-03-09 06:36:52',1,1,'提问1','回复1',1),(82,'2021-03-09 06:36:52',2,2,'提问2','回复2',2),(83,'2021-03-09 06:36:52',3,3,'提问3','回复3',3),(84,'2021-03-09 06:36:52',4,4,'提问4','回复4',4),(85,'2021-03-09 06:36:52',5,5,'提问5','回复5',5),(86,'2021-03-09 06:36:52',6,6,'提问6','回复6',6),(1615272025854,'2021-03-09 06:40:25',1615271949625,NULL,'你好',NULL,1);
/*!40000 ALTER TABLE `chat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `config`
--

DROP TABLE IF EXISTS `config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config`
--

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` VALUES (1,'picture1','http://localhost:8080/jspmin18p/upload/picture1.jpg'),(2,'picture2','http://localhost:8080/jspmin18p/upload/picture2.jpg'),(3,'picture3','http://localhost:8080/jspmin18p/upload/picture3.jpg'),(6,'homepage',NULL);
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dingjinzhifu`
--

DROP TABLE IF EXISTS `dingjinzhifu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dingjinzhifu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `dingdanbianhao` varchar(200) NOT NULL COMMENT '订单编号',
  `chexing` varchar(200) DEFAULT NULL COMMENT '车型',
  `pinpai` varchar(200) DEFAULT NULL COMMENT '品牌',
  `fenlei` varchar(200) DEFAULT NULL COMMENT '分类',
  `cheshenyanse` varchar(200) DEFAULT NULL COMMENT '车身颜色',
  `shoujia` varchar(200) DEFAULT NULL COMMENT '售价',
  `dingjinjine` varchar(200) DEFAULT NULL COMMENT '订金金额',
  `fukuanriqi` date DEFAULT NULL COMMENT '付款日期',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `lianxifangshi` varchar(200) DEFAULT NULL COMMENT '联系方式',
  `ispay` varchar(200) DEFAULT '未支付' COMMENT '是否支付',
  PRIMARY KEY (`id`),
  UNIQUE KEY `dingdanbianhao` (`dingdanbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1615272229866 DEFAULT CHARSET=utf8 COMMENT='定金支付';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dingjinzhifu`
--

LOCK TABLES `dingjinzhifu` WRITE;
/*!40000 ALTER TABLE `dingjinzhifu` DISABLE KEYS */;
INSERT INTO `dingjinzhifu` VALUES (41,'2021-03-09 06:36:52','订单编号1','车型1','品牌1','分类1','车身颜色1','售价1','订金金额1','2021-03-09','备注1','用户名1','姓名1','联系方式1','未支付'),(42,'2021-03-09 06:36:52','订单编号2','车型2','品牌2','分类2','车身颜色2','售价2','订金金额2','2021-03-09','备注2','用户名2','姓名2','联系方式2','未支付'),(43,'2021-03-09 06:36:52','订单编号3','车型3','品牌3','分类3','车身颜色3','售价3','订金金额3','2021-03-09','备注3','用户名3','姓名3','联系方式3','未支付'),(44,'2021-03-09 06:36:52','订单编号4','车型4','品牌4','分类4','车身颜色4','售价4','订金金额4','2021-03-09','备注4','用户名4','姓名4','联系方式4','未支付'),(45,'2021-03-09 06:36:52','订单编号5','车型5','品牌5','分类5','车身颜色5','售价5','订金金额5','2021-03-09','备注5','用户名5','姓名5','联系方式5','未支付'),(46,'2021-03-09 06:36:52','订单编号6','车型6','品牌6','分类6','车身颜色6','售价6','订金金额6','2021-03-09','备注6','用户名6','姓名6','联系方式6','未支付'),(1615272229865,'2021-03-09 06:43:49','20213914431653084088','凯美瑞2007款','丰田','分类1','蓝色','58000','2000','2021-03-09','','11','陈先生','13823899999','已支付');
/*!40000 ALTER TABLE `dingjinzhifu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ershouchefenlei`
--

DROP TABLE IF EXISTS `ershouchefenlei`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ershouchefenlei` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `fenlei` varchar(200) DEFAULT NULL COMMENT '分类',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COMMENT='二手车分类';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ershouchefenlei`
--

LOCK TABLES `ershouchefenlei` WRITE;
/*!40000 ALTER TABLE `ershouchefenlei` DISABLE KEYS */;
INSERT INTO `ershouchefenlei` VALUES (21,'2021-03-09 06:36:52','分类1'),(22,'2021-03-09 06:36:52','分类2'),(23,'2021-03-09 06:36:52','分类3'),(24,'2021-03-09 06:36:52','分类4'),(25,'2021-03-09 06:36:52','分类5'),(26,'2021-03-09 06:36:52','分类6');
/*!40000 ALTER TABLE `ershouchefenlei` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ershouchexinxi`
--

DROP TABLE IF EXISTS `ershouchexinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ershouchexinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `chexing` varchar(200) DEFAULT NULL COMMENT '车型',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `pinpai` varchar(200) DEFAULT NULL COMMENT '品牌',
  `fenlei` varchar(200) DEFAULT NULL COMMENT '分类',
  `cheshenyanse` varchar(200) DEFAULT NULL COMMENT '车身颜色',
  `shangpaishijian` date DEFAULT NULL COMMENT '上牌时间',
  `xingshilicheng` varchar(200) DEFAULT NULL COMMENT '行驶里程',
  `shoujia` varchar(200) DEFAULT NULL COMMENT '售价',
  `chekuangmiaoshu` longtext COMMENT '车况描述',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1615272158810 DEFAULT CHARSET=utf8 COMMENT='二手车信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ershouchexinxi`
--

LOCK TABLES `ershouchexinxi` WRITE;
/*!40000 ALTER TABLE `ershouchexinxi` DISABLE KEYS */;
INSERT INTO `ershouchexinxi` VALUES (31,'2021-03-09 06:36:52','车型1','http://localhost:8080/jspmin18p/upload/ershouchexinxi_tupian1.jpg','品牌1','分类1','车身颜色1','2021-03-09','行驶里程1','售价1','车况描述1'),(32,'2021-03-09 06:36:52','车型2','http://localhost:8080/jspmin18p/upload/ershouchexinxi_tupian2.jpg','品牌2','分类2','车身颜色2','2021-03-09','行驶里程2','售价2','车况描述2'),(33,'2021-03-09 06:36:52','车型3','http://localhost:8080/jspmin18p/upload/ershouchexinxi_tupian3.jpg','品牌3','分类3','车身颜色3','2021-03-09','行驶里程3','售价3','车况描述3'),(34,'2021-03-09 06:36:52','车型4','http://localhost:8080/jspmin18p/upload/ershouchexinxi_tupian4.jpg','品牌4','分类4','车身颜色4','2021-03-09','行驶里程4','售价4','车况描述4'),(35,'2021-03-09 06:36:52','车型5','http://localhost:8080/jspmin18p/upload/ershouchexinxi_tupian5.jpg','品牌5','分类5','车身颜色5','2021-03-09','行驶里程5','售价5','车况描述5'),(36,'2021-03-09 06:36:52','车型6','http://localhost:8080/jspmin18p/upload/ershouchexinxi_tupian6.jpg','品牌6','分类6','车身颜色6','2021-03-09','行驶里程6','售价6','车况描述6'),(1615272158809,'2021-03-09 06:42:38','凯美瑞2007款','http://localhost:8080/jspmin18p/upload/1615272115146.jpg','丰田','分类1','蓝色','2019-01-04','20000公里','58000','sdfsdfgfdgs');
/*!40000 ALTER TABLE `ershouchexinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `forum`
--

DROP TABLE IF EXISTS `forum`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `forum` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) DEFAULT NULL COMMENT '帖子标题',
  `content` longtext NOT NULL COMMENT '帖子内容',
  `parentid` bigint(20) DEFAULT NULL COMMENT '父节点id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(200) DEFAULT NULL COMMENT '用户名',
  `isdone` varchar(200) DEFAULT NULL COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8 COMMENT='论坛表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `forum`
--

LOCK TABLES `forum` WRITE;
/*!40000 ALTER TABLE `forum` DISABLE KEYS */;
INSERT INTO `forum` VALUES (91,'2021-03-09 06:36:52','帖子标题1','帖子内容1',1,1,'用户名1','开放'),(92,'2021-03-09 06:36:52','帖子标题2','帖子内容2',2,2,'用户名2','开放'),(93,'2021-03-09 06:36:52','帖子标题3','帖子内容3',3,3,'用户名3','开放'),(94,'2021-03-09 06:36:52','帖子标题4','帖子内容4',4,4,'用户名4','开放'),(95,'2021-03-09 06:36:52','帖子标题5','帖子内容5',5,5,'用户名5','开放'),(96,'2021-03-09 06:36:52','帖子标题6','帖子内容6',6,6,'用户名6','开放');
/*!40000 ALTER TABLE `forum` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `news` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `introduction` longtext COMMENT '简介',
  `picture` varchar(200) NOT NULL COMMENT '图片',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=117 DEFAULT CHARSET=utf8 COMMENT='公告信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news`
--

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
INSERT INTO `news` VALUES (111,'2021-03-09 06:36:52','标题1','简介1','http://localhost:8080/jspmin18p/upload/news_picture1.jpg','内容1'),(112,'2021-03-09 06:36:52','标题2','简介2','http://localhost:8080/jspmin18p/upload/news_picture2.jpg','内容2'),(113,'2021-03-09 06:36:52','标题3','简介3','http://localhost:8080/jspmin18p/upload/news_picture3.jpg','内容3'),(114,'2021-03-09 06:36:52','标题4','简介4','http://localhost:8080/jspmin18p/upload/news_picture4.jpg','内容4'),(115,'2021-03-09 06:36:52','标题5','简介5','http://localhost:8080/jspmin18p/upload/news_picture5.jpg','内容5'),(116,'2021-03-09 06:36:52','标题6','简介6','http://localhost:8080/jspmin18p/upload/news_picture6.jpg','内容6');
/*!40000 ALTER TABLE `news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pinggubaojia`
--

DROP TABLE IF EXISTS `pinggubaojia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pinggubaojia` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `chexing` varchar(200) DEFAULT NULL COMMENT '车型',
  `pinpai` varchar(200) DEFAULT NULL COMMENT '品牌',
  `cheshenyanse` varchar(200) DEFAULT NULL COMMENT '车身颜色',
  `shangpaishijian` varchar(200) DEFAULT NULL COMMENT '上牌时间',
  `xingshilicheng` varchar(200) DEFAULT NULL COMMENT '行驶里程',
  `chekuangmiaoshu` varchar(200) DEFAULT NULL COMMENT '车况描述',
  `pinggujia` varchar(200) DEFAULT NULL COMMENT '评估价',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `lianxifangshi` varchar(200) DEFAULT NULL COMMENT '联系方式',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1615272456410 DEFAULT CHARSET=utf8 COMMENT='评估报价';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pinggubaojia`
--

LOCK TABLES `pinggubaojia` WRITE;
/*!40000 ALTER TABLE `pinggubaojia` DISABLE KEYS */;
INSERT INTO `pinggubaojia` VALUES (71,'2021-03-09 06:36:52','车型1','品牌1','车身颜色1','上牌时间1','行驶里程1','车况描述1','评估价1','用户名1','姓名1','联系方式1'),(72,'2021-03-09 06:36:52','车型2','品牌2','车身颜色2','上牌时间2','行驶里程2','车况描述2','评估价2','用户名2','姓名2','联系方式2'),(73,'2021-03-09 06:36:52','车型3','品牌3','车身颜色3','上牌时间3','行驶里程3','车况描述3','评估价3','用户名3','姓名3','联系方式3'),(74,'2021-03-09 06:36:52','车型4','品牌4','车身颜色4','上牌时间4','行驶里程4','车况描述4','评估价4','用户名4','姓名4','联系方式4'),(75,'2021-03-09 06:36:52','车型5','品牌5','车身颜色5','上牌时间5','行驶里程5','车况描述5','评估价5','用户名5','姓名5','联系方式5'),(76,'2021-03-09 06:36:52','车型6','品牌6','车身颜色6','上牌时间6','行驶里程6','车况描述6','评估价6','用户名6','姓名6','联系方式6'),(1615272456409,'2021-03-09 06:47:35','天簌2014款','日产','红色','2020-03-19','8000公里','sdfdfsfsdf','60000','11','陈先生','13823899999');
/*!40000 ALTER TABLE `pinggubaojia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qichepinggu`
--

DROP TABLE IF EXISTS `qichepinggu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qichepinggu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `chexing` varchar(200) DEFAULT NULL COMMENT '车型',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `pinpai` varchar(200) DEFAULT NULL COMMENT '品牌',
  `cheshenyanse` varchar(200) DEFAULT NULL COMMENT '车身颜色',
  `shangpaishijian` date DEFAULT NULL COMMENT '上牌时间',
  `xingshilicheng` varchar(200) DEFAULT NULL COMMENT '行驶里程',
  `chekuangmiaoshu` longtext COMMENT '车况描述',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `lianxifangshi` varchar(200) DEFAULT NULL COMMENT '联系方式',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1615272410454 DEFAULT CHARSET=utf8 COMMENT='汽车评估';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qichepinggu`
--

LOCK TABLES `qichepinggu` WRITE;
/*!40000 ALTER TABLE `qichepinggu` DISABLE KEYS */;
INSERT INTO `qichepinggu` VALUES (61,'2021-03-09 06:36:52','车型1','http://localhost:8080/jspmin18p/upload/qichepinggu_tupian1.jpg','品牌1','车身颜色1','2021-03-09','行驶里程1','车况描述1','用户名1','姓名1','联系方式1'),(62,'2021-03-09 06:36:52','车型2','http://localhost:8080/jspmin18p/upload/qichepinggu_tupian2.jpg','品牌2','车身颜色2','2021-03-09','行驶里程2','车况描述2','用户名2','姓名2','联系方式2'),(63,'2021-03-09 06:36:52','车型3','http://localhost:8080/jspmin18p/upload/qichepinggu_tupian3.jpg','品牌3','车身颜色3','2021-03-09','行驶里程3','车况描述3','用户名3','姓名3','联系方式3'),(64,'2021-03-09 06:36:52','车型4','http://localhost:8080/jspmin18p/upload/qichepinggu_tupian4.jpg','品牌4','车身颜色4','2021-03-09','行驶里程4','车况描述4','用户名4','姓名4','联系方式4'),(65,'2021-03-09 06:36:52','车型5','http://localhost:8080/jspmin18p/upload/qichepinggu_tupian5.jpg','品牌5','车身颜色5','2021-03-09','行驶里程5','车况描述5','用户名5','姓名5','联系方式5'),(66,'2021-03-09 06:36:52','车型6','http://localhost:8080/jspmin18p/upload/qichepinggu_tupian6.jpg','品牌6','车身颜色6','2021-03-09','行驶里程6','车况描述6','用户名6','姓名6','联系方式6'),(1615272410453,'2021-03-09 06:46:49','天簌2014款','http://localhost:8080/jspmin18p/upload/1615272377484.jpg','日产','红色','2020-03-19','8000公里','sdfdfsfsdf','11','陈先生','13823899999');
/*!40000 ALTER TABLE `qichepinggu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `storeup`
--

DROP TABLE IF EXISTS `storeup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `storeup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `refid` bigint(20) DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) NOT NULL COMMENT '收藏图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1615272503307 DEFAULT CHARSET=utf8 COMMENT='收藏表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `storeup`
--

LOCK TABLES `storeup` WRITE;
/*!40000 ALTER TABLE `storeup` DISABLE KEYS */;
INSERT INTO `storeup` VALUES (1615272503306,'2021-03-09 06:48:22',1615271949625,31,'ershouchexinxi','车型1','http://localhost:8080/jspmin18p/upload/ershouchexinxi_tupian1.jpg');
/*!40000 ALTER TABLE `storeup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `token`
--

DROP TABLE IF EXISTS `token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='token表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token`
--

LOCK TABLES `token` WRITE;
/*!40000 ALTER TABLE `token` DISABLE KEYS */;
INSERT INTO `token` VALUES (1,1615271949625,'11','yonghu','用户','rcnl9lkqf2ukcvu2maq2xlc3ps12vzuy','2021-03-09 06:39:19','2021-03-09 07:48:39'),(2,1,'abo','users','管理员','1w5xusjcsxablotbyqydoiqbajv95lnq','2021-03-09 06:40:38','2021-03-09 07:48:54');
/*!40000 ALTER TABLE `token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'abo','abo','管理员','2021-03-09 06:36:52');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yonghu`
--

DROP TABLE IF EXISTS `yonghu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yonghuming` varchar(200) NOT NULL COMMENT '用户名',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) NOT NULL COMMENT '姓名',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `lianxifangshi` varchar(200) DEFAULT NULL COMMENT '联系方式',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yonghuming` (`yonghuming`)
) ENGINE=InnoDB AUTO_INCREMENT=1615271949626 DEFAULT CHARSET=utf8 COMMENT='用户';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yonghu`
--

LOCK TABLES `yonghu` WRITE;
/*!40000 ALTER TABLE `yonghu` DISABLE KEYS */;
INSERT INTO `yonghu` VALUES (11,'2021-03-09 06:36:52','用户1','123456','姓名1','http://localhost:8080/jspmin18p/upload/yonghu_touxiang1.jpg','男','13823888881','773890001@qq.com'),(12,'2021-03-09 06:36:52','用户2','123456','姓名2','http://localhost:8080/jspmin18p/upload/yonghu_touxiang2.jpg','男','13823888882','773890002@qq.com'),(13,'2021-03-09 06:36:52','用户3','123456','姓名3','http://localhost:8080/jspmin18p/upload/yonghu_touxiang3.jpg','男','13823888883','773890003@qq.com'),(14,'2021-03-09 06:36:52','用户4','123456','姓名4','http://localhost:8080/jspmin18p/upload/yonghu_touxiang4.jpg','男','13823888884','773890004@qq.com'),(15,'2021-03-09 06:36:52','用户5','123456','姓名5','http://localhost:8080/jspmin18p/upload/yonghu_touxiang5.jpg','男','13823888885','773890005@qq.com'),(16,'2021-03-09 06:36:52','用户6','123456','姓名6','http://localhost:8080/jspmin18p/upload/yonghu_touxiang6.jpg','男','13823888886','773890006@qq.com'),(1615271949625,'2021-03-09 06:39:09','11','123456','陈先生','http://localhost:8080/jspmin18p/upload/1615271973270.jpg','','13823899999','');
/*!40000 ALTER TABLE `yonghu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yuyuedaodian`
--

DROP TABLE IF EXISTS `yuyuedaodian`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yuyuedaodian` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `lianxifangshi` varchar(200) DEFAULT NULL COMMENT '联系方式',
  `daodianshijian` datetime DEFAULT NULL COMMENT '到店时间',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1615272264597 DEFAULT CHARSET=utf8 COMMENT='预约到店';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yuyuedaodian`
--

LOCK TABLES `yuyuedaodian` WRITE;
/*!40000 ALTER TABLE `yuyuedaodian` DISABLE KEYS */;
INSERT INTO `yuyuedaodian` VALUES (51,'2021-03-09 06:36:52','用户名1','姓名1','联系方式1','2021-03-09 14:36:52','备注1','是',''),(52,'2021-03-09 06:36:52','用户名2','姓名2','联系方式2','2021-03-09 14:36:52','备注2','是',''),(53,'2021-03-09 06:36:52','用户名3','姓名3','联系方式3','2021-03-09 14:36:52','备注3','是',''),(54,'2021-03-09 06:36:52','用户名4','姓名4','联系方式4','2021-03-09 14:36:52','备注4','是',''),(55,'2021-03-09 06:36:52','用户名5','姓名5','联系方式5','2021-03-09 14:36:52','备注5','是',''),(56,'2021-03-09 06:36:52','用户名6','姓名6','联系方式6','2021-03-09 14:36:52','备注6','是',''),(1615272264596,'2021-03-09 06:44:23','11','陈先生','13823899999','2021-03-10 09:00:20','','是','');
/*!40000 ALTER TABLE `yuyuedaodian` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-03-10  9:44:15
