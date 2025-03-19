-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: ssmtp77r
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
INSERT INTO `config` VALUES (1,'picture1','http://localhost:8080/ssmtp77r/upload/picture1.jpg'),(2,'picture2','http://localhost:8080/ssmtp77r/upload/picture2.jpg'),(3,'picture3','http://localhost:8080/ssmtp77r/upload/picture3.jpg'),(6,'homepage',NULL);
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discusskeshixinxi`
--

DROP TABLE IF EXISTS `discusskeshixinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discusskeshixinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8 COMMENT='科室信息评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discusskeshixinxi`
--

LOCK TABLES `discusskeshixinxi` WRITE;
/*!40000 ALTER TABLE `discusskeshixinxi` DISABLE KEYS */;
INSERT INTO `discusskeshixinxi` VALUES (81,'2021-04-20 12:07:06',1,1,'用户名1','评论内容1','回复内容1'),(82,'2021-04-20 12:07:06',2,2,'用户名2','评论内容2','回复内容2'),(83,'2021-04-20 12:07:06',3,3,'用户名3','评论内容3','回复内容3'),(84,'2021-04-20 12:07:06',4,4,'用户名4','评论内容4','回复内容4'),(85,'2021-04-20 12:07:06',5,5,'用户名5','评论内容5','回复内容5'),(86,'2021-04-20 12:07:06',6,6,'用户名6','评论内容6','回复内容6');
/*!40000 ALTER TABLE `discusskeshixinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fenzhen`
--

DROP TABLE IF EXISTS `fenzhen`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fenzhen` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `guahaobianhao` varchar(200) DEFAULT NULL COMMENT '挂号编号',
  `keshimingcheng` varchar(200) DEFAULT NULL COMMENT '科室名称',
  `tu` varchar(200) DEFAULT NULL COMMENT '图',
  `zhuzhiyisheng` varchar(200) DEFAULT NULL COMMENT '主治医生',
  `guahaofei` varchar(200) DEFAULT NULL COMMENT '挂号费',
  `yuyueriqi` date DEFAULT NULL COMMENT '预约日期',
  `yuyueshijian` varchar(200) DEFAULT NULL COMMENT '预约时间',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  `ispay` varchar(200) DEFAULT '未支付' COMMENT '是否支付',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8 COMMENT='分诊';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fenzhen`
--

LOCK TABLES `fenzhen` WRITE;
/*!40000 ALTER TABLE `fenzhen` DISABLE KEYS */;
INSERT INTO `fenzhen` VALUES (41,'2021-04-20 12:07:06','挂号编号1','科室名称1','http://localhost:8080/ssmtp77r/upload/fenzhen_tu1.jpg','主治医生1','挂号费1','2021-04-20','预约时间1','账号1','姓名1','手机1','是','','未支付'),(42,'2021-04-20 12:07:06','挂号编号2','科室名称2','http://localhost:8080/ssmtp77r/upload/fenzhen_tu2.jpg','主治医生2','挂号费2','2021-04-20','预约时间2','账号2','姓名2','手机2','是','','未支付'),(43,'2021-04-20 12:07:06','挂号编号3','科室名称3','http://localhost:8080/ssmtp77r/upload/fenzhen_tu3.jpg','主治医生3','挂号费3','2021-04-20','预约时间3','账号3','姓名3','手机3','是','','未支付'),(44,'2021-04-20 12:07:06','挂号编号4','科室名称4','http://localhost:8080/ssmtp77r/upload/fenzhen_tu4.jpg','主治医生4','挂号费4','2021-04-20','预约时间4','账号4','姓名4','手机4','是','','未支付'),(45,'2021-04-20 12:07:06','挂号编号5','科室名称5','http://localhost:8080/ssmtp77r/upload/fenzhen_tu5.jpg','主治医生5','挂号费5','2021-04-20','预约时间5','账号5','姓名5','手机5','是','','未支付'),(46,'2021-04-20 12:07:06','挂号编号6','科室名称6','http://localhost:8080/ssmtp77r/upload/fenzhen_tu6.jpg','主治医生6','挂号费6','2021-04-20','预约时间6','账号6','姓名6','手机6','是','','未支付');
/*!40000 ALTER TABLE `fenzhen` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `huanzhe`
--

DROP TABLE IF EXISTS `huanzhe`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `huanzhe` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `huanzhezhanghao` varchar(200) DEFAULT NULL COMMENT '患者账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `mima` varchar(200) DEFAULT NULL COMMENT '密码',
  `nianling` int(11) DEFAULT NULL COMMENT '年龄',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `xuexing` varchar(200) DEFAULT NULL COMMENT '血型',
  `bingshi` longtext COMMENT '病史',
  `zhenduan` longtext COMMENT '诊断',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`),
  UNIQUE KEY `huanzhezhanghao` (`huanzhezhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COMMENT='患者';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `huanzhe`
--

LOCK TABLES `huanzhe` WRITE;
/*!40000 ALTER TABLE `huanzhe` DISABLE KEYS */;
INSERT INTO `huanzhe` VALUES (21,'2021-04-20 12:07:06','患者1','姓名1','男','123456',1,'13823888881','A','病史1','诊断1','是',''),(22,'2021-04-20 12:07:06','患者2','姓名2','男','123456',2,'13823888882','A','病史2','诊断2','是',''),(23,'2021-04-20 12:07:06','患者3','姓名3','男','123456',3,'13823888883','A','病史3','诊断3','是',''),(24,'2021-04-20 12:07:06','患者4','姓名4','男','123456',4,'13823888884','A','病史4','诊断4','是',''),(25,'2021-04-20 12:07:06','患者5','姓名5','男','123456',5,'13823888885','A','病史5','诊断5','是',''),(26,'2021-04-20 12:07:06','患者6','姓名6','男','123456',6,'13823888886','A','病史6','诊断6','是','');
/*!40000 ALTER TABLE `huanzhe` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jiaohao`
--

DROP TABLE IF EXISTS `jiaohao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jiaohao` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `keshimingcheng` varchar(200) DEFAULT NULL COMMENT '科室名称',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `jiaohaoshijian` datetime DEFAULT NULL COMMENT '叫号时间',
  `guahaobianhao` varchar(200) DEFAULT NULL COMMENT '挂号编号',
  `userid` bigint(20) DEFAULT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8 COMMENT='叫号';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jiaohao`
--

LOCK TABLES `jiaohao` WRITE;
/*!40000 ALTER TABLE `jiaohao` DISABLE KEYS */;
INSERT INTO `jiaohao` VALUES (51,'2021-04-20 12:07:06','科室名称1','http://localhost:8080/ssmtp77r/upload/jiaohao_tupian1.jpg','账号1','姓名1','手机1','2021-04-20 20:07:06','挂号编号1',1),(52,'2021-04-20 12:07:06','科室名称2','http://localhost:8080/ssmtp77r/upload/jiaohao_tupian2.jpg','账号2','姓名2','手机2','2021-04-20 20:07:06','挂号编号2',2),(53,'2021-04-20 12:07:06','科室名称3','http://localhost:8080/ssmtp77r/upload/jiaohao_tupian3.jpg','账号3','姓名3','手机3','2021-04-20 20:07:06','挂号编号3',3),(54,'2021-04-20 12:07:06','科室名称4','http://localhost:8080/ssmtp77r/upload/jiaohao_tupian4.jpg','账号4','姓名4','手机4','2021-04-20 20:07:06','挂号编号4',4),(55,'2021-04-20 12:07:06','科室名称5','http://localhost:8080/ssmtp77r/upload/jiaohao_tupian5.jpg','账号5','姓名5','手机5','2021-04-20 20:07:06','挂号编号5',5),(56,'2021-04-20 12:07:06','科室名称6','http://localhost:8080/ssmtp77r/upload/jiaohao_tupian6.jpg','账号6','姓名6','手机6','2021-04-20 20:07:06','挂号编号6',6);
/*!40000 ALTER TABLE `jiaohao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `keshixinxi`
--

DROP TABLE IF EXISTS `keshixinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `keshixinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `keshi` varchar(200) NOT NULL COMMENT '科室',
  `tupian` varchar(200) NOT NULL COMMENT '图片',
  `keshijieshao` longtext COMMENT '科室介绍',
  `keshiweizhi` varchar(200) DEFAULT NULL COMMENT '科室位置',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COMMENT='科室信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `keshixinxi`
--

LOCK TABLES `keshixinxi` WRITE;
/*!40000 ALTER TABLE `keshixinxi` DISABLE KEYS */;
INSERT INTO `keshixinxi` VALUES (31,'2021-04-20 12:07:06','科室1','http://localhost:8080/ssmtp77r/upload/keshixinxi_tupian1.jpg','科室介绍1','科室位置1'),(32,'2021-04-20 12:07:06','科室2','http://localhost:8080/ssmtp77r/upload/keshixinxi_tupian2.jpg','科室介绍2','科室位置2'),(33,'2021-04-20 12:07:06','科室3','http://localhost:8080/ssmtp77r/upload/keshixinxi_tupian3.jpg','科室介绍3','科室位置3'),(34,'2021-04-20 12:07:06','科室4','http://localhost:8080/ssmtp77r/upload/keshixinxi_tupian4.jpg','科室介绍4','科室位置4'),(35,'2021-04-20 12:07:06','科室5','http://localhost:8080/ssmtp77r/upload/keshixinxi_tupian5.jpg','科室介绍5','科室位置5'),(36,'2021-04-20 12:07:06','科室6','http://localhost:8080/ssmtp77r/upload/keshixinxi_tupian6.jpg','科室介绍6','科室位置6');
/*!40000 ALTER TABLE `keshixinxi` ENABLE KEYS */;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='收藏表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `storeup`
--

LOCK TABLES `storeup` WRITE;
/*!40000 ALTER TABLE `storeup` DISABLE KEYS */;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='token表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token`
--

LOCK TABLES `token` WRITE;
/*!40000 ALTER TABLE `token` DISABLE KEYS */;
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
INSERT INTO `users` VALUES (1,'abo','abo','管理员','2021-04-20 12:07:06');
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
  `zhanghao` varchar(200) NOT NULL COMMENT '账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `shenfenzheng` varchar(200) DEFAULT NULL COMMENT '身份证',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  `beizhu` longtext COMMENT '备注',
  PRIMARY KEY (`id`),
  UNIQUE KEY `zhanghao` (`zhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='用户';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yonghu`
--

LOCK TABLES `yonghu` WRITE;
/*!40000 ALTER TABLE `yonghu` DISABLE KEYS */;
INSERT INTO `yonghu` VALUES (11,'2021-04-20 12:07:06','用户1','123456','姓名1','男','13823888881','773890001@qq.com','440300199101010001','http://localhost:8080/ssmtp77r/upload/yonghu_zhaopian1.jpg','备注1'),(12,'2021-04-20 12:07:06','用户2','123456','姓名2','男','13823888882','773890002@qq.com','440300199202020002','http://localhost:8080/ssmtp77r/upload/yonghu_zhaopian2.jpg','备注2'),(13,'2021-04-20 12:07:06','用户3','123456','姓名3','男','13823888883','773890003@qq.com','440300199303030003','http://localhost:8080/ssmtp77r/upload/yonghu_zhaopian3.jpg','备注3'),(14,'2021-04-20 12:07:06','用户4','123456','姓名4','男','13823888884','773890004@qq.com','440300199404040004','http://localhost:8080/ssmtp77r/upload/yonghu_zhaopian4.jpg','备注4'),(15,'2021-04-20 12:07:06','用户5','123456','姓名5','男','13823888885','773890005@qq.com','440300199505050005','http://localhost:8080/ssmtp77r/upload/yonghu_zhaopian5.jpg','备注5'),(16,'2021-04-20 12:07:06','用户6','123456','姓名6','男','13823888886','773890006@qq.com','440300199606060006','http://localhost:8080/ssmtp77r/upload/yonghu_zhaopian6.jpg','备注6');
/*!40000 ALTER TABLE `yonghu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yujian`
--

DROP TABLE IF EXISTS `yujian`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yujian` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `bianhao` varchar(200) DEFAULT NULL COMMENT '编号',
  `shifoufare` varchar(200) DEFAULT NULL COMMENT '是否发热',
  `shifouxinguanfeiyan` varchar(200) DEFAULT NULL COMMENT '是否新冠肺炎',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8 COMMENT='预检';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yujian`
--

LOCK TABLES `yujian` WRITE;
/*!40000 ALTER TABLE `yujian` DISABLE KEYS */;
INSERT INTO `yujian` VALUES (61,'2021-04-20 12:07:06','编号1','否','否','账号1','姓名1','手机1'),(62,'2021-04-20 12:07:06','编号2','否','否','账号2','姓名2','手机2'),(63,'2021-04-20 12:07:06','编号3','否','否','账号3','姓名3','手机3'),(64,'2021-04-20 12:07:06','编号4','否','否','账号4','姓名4','手机4'),(65,'2021-04-20 12:07:06','编号5','否','否','账号5','姓名5','手机5'),(66,'2021-04-20 12:07:06','编号6','否','否','账号6','姓名6','手机6');
/*!40000 ALTER TABLE `yujian` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-04-20 20:08:53
