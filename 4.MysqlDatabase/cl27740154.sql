-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: cl27740154
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
-- Current Database: `cl27740154`
--

/*!40000 DROP DATABASE IF EXISTS `cl27740154`*/;

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `cl27740154` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `cl27740154`;

--
-- Table structure for table `choukuanxinxi`
--

DROP TABLE IF EXISTS `choukuanxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `choukuanxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `choukuanbiaoti` varchar(200) DEFAULT NULL COMMENT '筹款标题',
  `choukuanfubiaoti` varchar(200) DEFAULT NULL COMMENT '筹款副标题',
  `fabushijian` datetime DEFAULT NULL COMMENT '发布时间',
  `tupian` longtext COMMENT '图片',
  `choukuanmiaoshu` longtext COMMENT '筹款描述',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=107 DEFAULT CHARSET=utf8 COMMENT='筹款信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `choukuanxinxi`
--

LOCK TABLES `choukuanxinxi` WRITE;
/*!40000 ALTER TABLE `choukuanxinxi` DISABLE KEYS */;
INSERT INTO `choukuanxinxi` VALUES (101,'2024-03-04 01:09:20','筹款标题1','筹款副标题1','2024-03-04 09:09:20','file/choukuanxinxiTupian1.jpg,file/choukuanxinxiTupian2.jpg,file/choukuanxinxiTupian3.jpg','筹款描述1'),(102,'2024-03-04 01:09:20','筹款标题2','筹款副标题2','2024-03-04 09:09:20','file/choukuanxinxiTupian2.jpg,file/choukuanxinxiTupian3.jpg,file/choukuanxinxiTupian4.jpg','筹款描述2'),(103,'2024-03-04 01:09:20','筹款标题3','筹款副标题3','2024-03-04 09:09:20','file/choukuanxinxiTupian3.jpg,file/choukuanxinxiTupian4.jpg,file/choukuanxinxiTupian5.jpg','筹款描述3'),(104,'2024-03-04 01:09:20','筹款标题4','筹款副标题4','2024-03-04 09:09:20','file/choukuanxinxiTupian4.jpg,file/choukuanxinxiTupian5.jpg,file/choukuanxinxiTupian6.jpg','筹款描述4'),(105,'2024-03-04 01:09:20','筹款标题5','筹款副标题5','2024-03-04 09:09:20','file/choukuanxinxiTupian5.jpg,file/choukuanxinxiTupian6.jpg,file/choukuanxinxiTupian7.jpg','筹款描述5'),(106,'2024-03-04 01:09:20','筹款标题6','筹款副标题6','2024-03-04 09:09:20','file/choukuanxinxiTupian6.jpg,file/choukuanxinxiTupian7.jpg,file/choukuanxinxiTupian8.jpg','筹款描述6');
/*!40000 ALTER TABLE `choukuanxinxi` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='配置文件';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config`
--

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` VALUES (1,'swiper1','file/swiperPicture1.jpg'),(2,'swiper2','file/swiperPicture2.jpg'),(3,'swiper3','file/swiperPicture3.jpg');
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
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
  `username` varchar(200) DEFAULT NULL COMMENT '用户名',
  `avatarurl` longtext COMMENT '头像',
  `isdone` varchar(200) DEFAULT NULL COMMENT '状态',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8 COMMENT='论坛交流';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `forum`
--

LOCK TABLES `forum` WRITE;
/*!40000 ALTER TABLE `forum` DISABLE KEYS */;
INSERT INTO `forum` VALUES (81,'2024-03-04 01:09:20','帖子标题1','帖子内容1',0,'用户名1','file/forumAvatarurl1.jpg,file/forumAvatarurl2.jpg,file/forumAvatarurl3.jpg','开放',1,'账号1','姓名1'),(82,'2024-03-04 01:09:20','帖子标题2','帖子内容2',0,'用户名2','file/forumAvatarurl2.jpg,file/forumAvatarurl3.jpg,file/forumAvatarurl4.jpg','开放',2,'账号2','姓名2'),(83,'2024-03-04 01:09:20','帖子标题3','帖子内容3',0,'用户名3','file/forumAvatarurl3.jpg,file/forumAvatarurl4.jpg,file/forumAvatarurl5.jpg','开放',3,'账号3','姓名3'),(84,'2024-03-04 01:09:20','帖子标题4','帖子内容4',0,'用户名4','file/forumAvatarurl4.jpg,file/forumAvatarurl5.jpg,file/forumAvatarurl6.jpg','开放',4,'账号4','姓名4'),(85,'2024-03-04 01:09:20','帖子标题5','帖子内容5',0,'用户名5','file/forumAvatarurl5.jpg,file/forumAvatarurl6.jpg,file/forumAvatarurl7.jpg','开放',5,'账号5','姓名5'),(86,'2024-03-04 01:09:20','帖子标题6','帖子内容6',0,'用户名6','file/forumAvatarurl6.jpg,file/forumAvatarurl7.jpg,file/forumAvatarurl8.jpg','开放',6,'账号6','姓名6');
/*!40000 ALTER TABLE `forum` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jiaruxiaoyouhui`
--

DROP TABLE IF EXISTS `jiaruxiaoyouhui`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jiaruxiaoyouhui` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `jijiexuesheng` varchar(200) DEFAULT NULL COMMENT '几届学生',
  `dizhi` varchar(200) DEFAULT NULL COMMENT '地址',
  `shijian` varchar(200) DEFAULT NULL COMMENT '时间',
  `biaoti` varchar(200) DEFAULT NULL COMMENT '标题',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8 COMMENT='加入校友会';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jiaruxiaoyouhui`
--

LOCK TABLES `jiaruxiaoyouhui` WRITE;
/*!40000 ALTER TABLE `jiaruxiaoyouhui` DISABLE KEYS */;
INSERT INTO `jiaruxiaoyouhui` VALUES (61,'2024-03-04 01:09:20','账号1','姓名1','手机1','几届学生1','地址1','时间1','标题1'),(62,'2024-03-04 01:09:20','账号2','姓名2','手机2','几届学生2','地址2','时间2','标题2'),(63,'2024-03-04 01:09:20','账号3','姓名3','手机3','几届学生3','地址3','时间3','标题3'),(64,'2024-03-04 01:09:20','账号4','姓名4','手机4','几届学生4','地址4','时间4','标题4'),(65,'2024-03-04 01:09:20','账号5','姓名5','手机5','几届学生5','地址5','时间5','标题5'),(66,'2024-03-04 01:09:20','账号6','姓名6','手机6','几届学生6','地址6','时间6','标题6');
/*!40000 ALTER TABLE `jiaruxiaoyouhui` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `juankuanxinxi`
--

DROP TABLE IF EXISTS `juankuanxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `juankuanxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `jijiexuesheng` varchar(200) DEFAULT NULL COMMENT '几届学生',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `choukuanbiaoti` varchar(200) DEFAULT NULL COMMENT '筹款标题',
  `juankuanjine` varchar(200) DEFAULT NULL COMMENT '捐款金额',
  `ispay` varchar(200) DEFAULT NULL COMMENT '是否支付',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=117 DEFAULT CHARSET=utf8 COMMENT='捐款信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `juankuanxinxi`
--

LOCK TABLES `juankuanxinxi` WRITE;
/*!40000 ALTER TABLE `juankuanxinxi` DISABLE KEYS */;
INSERT INTO `juankuanxinxi` VALUES (111,'2024-03-04 01:09:20','账号1','姓名1','几届学生1','手机1','筹款标题1','捐款金额1','未支付'),(112,'2024-03-04 01:09:20','账号2','姓名2','几届学生2','手机2','筹款标题2','捐款金额2','未支付'),(113,'2024-03-04 01:09:20','账号3','姓名3','几届学生3','手机3','筹款标题3','捐款金额3','未支付'),(114,'2024-03-04 01:09:20','账号4','姓名4','几届学生4','手机4','筹款标题4','捐款金额4','未支付'),(115,'2024-03-04 01:09:20','账号5','姓名5','几届学生5','手机5','筹款标题5','捐款金额5','未支付'),(116,'2024-03-04 01:09:20','账号6','姓名6','几届学生6','手机6','筹款标题6','捐款金额6','未支付');
/*!40000 ALTER TABLE `juankuanxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `juanzengwupin`
--

DROP TABLE IF EXISTS `juanzengwupin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `juanzengwupin` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `juanzengbiaoti` varchar(200) DEFAULT NULL COMMENT '捐赠标题',
  `juanzengtupian` longtext COMMENT '捐赠图片',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `sfsh` varchar(200) DEFAULT NULL COMMENT '是否审核',
  `shhf` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8 COMMENT='捐赠物品';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `juanzengwupin`
--

LOCK TABLES `juanzengwupin` WRITE;
/*!40000 ALTER TABLE `juanzengwupin` DISABLE KEYS */;
INSERT INTO `juanzengwupin` VALUES (91,'2024-03-04 01:09:20','捐赠标题1','file/juanzengwupinJuanzengtupian1.jpg,file/juanzengwupinJuanzengtupian2.jpg,file/juanzengwupinJuanzengtupian3.jpg','姓名1','账号1','手机1','是',''),(92,'2024-03-04 01:09:20','捐赠标题2','file/juanzengwupinJuanzengtupian2.jpg,file/juanzengwupinJuanzengtupian3.jpg,file/juanzengwupinJuanzengtupian4.jpg','姓名2','账号2','手机2','是',''),(93,'2024-03-04 01:09:20','捐赠标题3','file/juanzengwupinJuanzengtupian3.jpg,file/juanzengwupinJuanzengtupian4.jpg,file/juanzengwupinJuanzengtupian5.jpg','姓名3','账号3','手机3','是',''),(94,'2024-03-04 01:09:20','捐赠标题4','file/juanzengwupinJuanzengtupian4.jpg,file/juanzengwupinJuanzengtupian5.jpg,file/juanzengwupinJuanzengtupian6.jpg','姓名4','账号4','手机4','是',''),(95,'2024-03-04 01:09:20','捐赠标题5','file/juanzengwupinJuanzengtupian5.jpg,file/juanzengwupinJuanzengtupian6.jpg,file/juanzengwupinJuanzengtupian7.jpg','姓名5','账号5','手机5','是',''),(96,'2024-03-04 01:09:20','捐赠标题6','file/juanzengwupinJuanzengtupian6.jpg,file/juanzengwupinJuanzengtupian7.jpg,file/juanzengwupinJuanzengtupian8.jpg','姓名6','账号6','手机6','是','');
/*!40000 ALTER TABLE `juanzengwupin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu`
--

DROP TABLE IF EXISTS `menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `menujson` longtext COMMENT '菜单',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='菜单';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu`
--

LOCK TABLES `menu` WRITE;
/*!40000 ALTER TABLE `menu` DISABLE KEYS */;
INSERT INTO `menu` VALUES (1,'2024-03-04 01:09:20','[{\"backMenu\":[{\"child\":[{\"appFrontIcon\":\"cuIcon-addressbook\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"轮播图\",\"menuJump\":\"列表\",\"tableName\":\"config\"}],\"fontClass\":\"icon-common34\",\"menu\":\"轮播图管理\",\"unicode\":\"&#xee85;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-copy\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"新闻资讯\",\"menuJump\":\"列表\",\"tableName\":\"news\"}],\"fontClass\":\"icon-common19\",\"menu\":\"新闻资讯管理\",\"unicode\":\"&#xee00;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-send\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\",\"查看评论\"],\"menu\":\"论坛交流\",\"tableName\":\"forum\"},{\"appFrontIcon\":\"cuIcon-send\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"我的发布\",\"menuJump\":\"14\",\"tableName\":\"forum\"}],\"fontClass\":\"icon-common7\",\"menu\":\"论坛管理\",\"unicode\":\"&#xedb4;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-vip\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"管理员\",\"menuJump\":\"列表\",\"tableName\":\"users\"}],\"fontClass\":\"icon-common1\",\"menu\":\"管理员管理\",\"unicode\":\"&#xeda3;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-link\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"用户\",\"menuJump\":\"列表\",\"tableName\":\"yonghu\"}],\"fontClass\":\"icon-common25\",\"menu\":\"用户管理\",\"unicode\":\"&#xee09;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-phone\",\"buttons\":[\"查看\",\"修改\",\"删除\",\"审核\"],\"menu\":\"校友会\",\"menuJump\":\"列表\",\"tableName\":\"xiaoyouhui\"}],\"fontClass\":\"icon-common17\",\"menu\":\"校友会管理\",\"unicode\":\"&#xedfe;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-copy\",\"buttons\":[\"查看\",\"修改\",\"删除\"],\"menu\":\"加入校友会\",\"menuJump\":\"列表\",\"tableName\":\"jiaruxiaoyouhui\"}],\"fontClass\":\"icon-common9\",\"menu\":\"加入校友会管理\",\"unicode\":\"&#xedc9;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-addressbook\",\"buttons\":[\"查看\",\"审核\"],\"menu\":\"招聘信息\",\"menuJump\":\"列表\",\"tableName\":\"zhaopinxinxi\"}],\"fontClass\":\"icon-common40\",\"menu\":\"招聘信息管理\",\"unicode\":\"&#xeebb;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-news\",\"buttons\":[\"查看\",\"审核\"],\"menu\":\"捐赠物品\",\"menuJump\":\"列表\",\"tableName\":\"juanzengwupin\"}],\"fontClass\":\"icon-common31\",\"menu\":\"捐赠物品管理\",\"unicode\":\"&#xee48;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-camera\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"筹款信息\",\"menuJump\":\"列表\",\"tableName\":\"choukuanxinxi\"}],\"fontClass\":\"icon-common17\",\"menu\":\"筹款信息管理\",\"unicode\":\"&#xedfe;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-list\",\"buttons\":[\"查看\"],\"menu\":\"捐款信息\",\"menuJump\":\"列表\",\"tableName\":\"juankuanxinxi\"}],\"fontClass\":\"icon-common22\",\"menu\":\"捐款信息管理\",\"unicode\":\"&#xee04;\"}],\"frontMenu\":[{\"child\":[{\"appFrontIcon\":\"cuIcon-full\",\"buttons\":[\"查看\",\"新增\"],\"menu\":\"招聘信息\",\"menuJump\":\"列表\",\"tableName\":\"zhaopinxinxi\"}],\"menu\":\"招聘信息管理\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-link\",\"buttons\":[\"查看\",\"捐款\"],\"menu\":\"筹款信息\",\"menuJump\":\"列表\",\"tableName\":\"choukuanxinxi\"}],\"menu\":\"筹款信息管理\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-present\",\"buttons\":[\"查看\"],\"menu\":\"新闻资讯\",\"menuJump\":\"列表\",\"tableName\":\"news\"}],\"menu\":\"新闻资讯管理\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-explore\",\"buttons\":[\"查看\"],\"menu\":\"论坛交流\",\"menuJump\":\"列表\",\"tableName\":\"forum\"}],\"menu\":\"论坛交流\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-rank\",\"buttons\":[\"查看\"],\"menu\":\"捐款信息\",\"menuJump\":\"列表\",\"tableName\":\"juankuanxinxi\"}],\"menu\":\"捐款信息管理\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-addressbook\",\"buttons\":[\"查看\",\"加入\",\"新增\"],\"menu\":\"校友会\",\"menuJump\":\"列表\",\"tableName\":\"xiaoyouhui\"}],\"menu\":\"校友会管理\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-taxi\",\"buttons\":[\"查看\",\"新增\"],\"menu\":\"捐赠物品\",\"menuJump\":\"列表\",\"tableName\":\"juanzengwupin\"}],\"menu\":\"捐赠物品管理\"}],\"hasBackLogin\":\"是\",\"hasBackRegister\":\"否\",\"hasFrontLogin\":\"否\",\"hasFrontRegister\":\"否\",\"roleName\":\"管理员\",\"tableName\":\"users\"},{\"backMenu\":[{\"child\":[{\"appFrontIcon\":\"cuIcon-send\",\"buttons\":[\"查看评论\"],\"menu\":\"论坛交流\",\"tableName\":\"forum\"}],\"fontClass\":\"icon-common7\",\"menu\":\"论坛管理\",\"unicode\":\"&#xedb4;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-phone\",\"buttons\":[\"新增\"],\"menu\":\"校友会\",\"menuJump\":\"列表\",\"tableName\":\"xiaoyouhui\"}],\"fontClass\":\"icon-common17\",\"menu\":\"校友会管理\",\"unicode\":\"&#xedfe;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-copy\",\"buttons\":[\"查看\",\"删除\"],\"menu\":\"加入校友会\",\"menuJump\":\"列表\",\"tableName\":\"jiaruxiaoyouhui\"}],\"fontClass\":\"icon-common9\",\"menu\":\"加入校友会管理\",\"unicode\":\"&#xedc9;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-addressbook\",\"buttons\":[\"查看\",\"删除\",\"修改\",\"新增\"],\"menu\":\"招聘信息\",\"menuJump\":\"列表\",\"tableName\":\"zhaopinxinxi\"}],\"fontClass\":\"icon-common40\",\"menu\":\"招聘信息管理\",\"unicode\":\"&#xeebb;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-news\",\"buttons\":[\"查看\",\"修改\",\"删除\",\"新增\"],\"menu\":\"捐赠物品\",\"menuJump\":\"列表\",\"tableName\":\"juanzengwupin\"}],\"fontClass\":\"icon-common31\",\"menu\":\"捐赠物品管理\",\"unicode\":\"&#xee48;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-list\",\"buttons\":[\"查看\",\"支付\"],\"menu\":\"捐款信息\",\"menuJump\":\"列表\",\"tableName\":\"juankuanxinxi\"}],\"fontClass\":\"icon-common22\",\"menu\":\"捐款信息管理\",\"unicode\":\"&#xee04;\"}],\"frontMenu\":[{\"child\":[{\"appFrontIcon\":\"cuIcon-full\",\"buttons\":[\"查看\",\"新增\"],\"menu\":\"招聘信息\",\"menuJump\":\"列表\",\"tableName\":\"zhaopinxinxi\"}],\"menu\":\"招聘信息管理\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-link\",\"buttons\":[\"查看\",\"捐款\"],\"menu\":\"筹款信息\",\"menuJump\":\"列表\",\"tableName\":\"choukuanxinxi\"}],\"menu\":\"筹款信息管理\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-present\",\"buttons\":[\"查看\"],\"menu\":\"新闻资讯\",\"menuJump\":\"列表\",\"tableName\":\"news\"}],\"menu\":\"新闻资讯管理\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-explore\",\"buttons\":[\"查看\"],\"menu\":\"论坛交流\",\"menuJump\":\"列表\",\"tableName\":\"forum\"}],\"menu\":\"论坛交流\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-rank\",\"buttons\":[\"查看\"],\"menu\":\"捐款信息\",\"menuJump\":\"列表\",\"tableName\":\"juankuanxinxi\"}],\"menu\":\"捐款信息管理\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-addressbook\",\"buttons\":[\"查看\",\"加入\",\"新增\"],\"menu\":\"校友会\",\"menuJump\":\"列表\",\"tableName\":\"xiaoyouhui\"}],\"menu\":\"校友会管理\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-taxi\",\"buttons\":[\"查看\",\"新增\"],\"menu\":\"捐赠物品\",\"menuJump\":\"列表\",\"tableName\":\"juanzengwupin\"}],\"menu\":\"捐赠物品管理\"}],\"hasBackLogin\":\"否\",\"hasBackRegister\":\"否\",\"hasFrontLogin\":\"是\",\"hasFrontRegister\":\"是\",\"roleName\":\"用户\",\"tableName\":\"yonghu\"}]');
/*!40000 ALTER TABLE `menu` ENABLE KEYS */;
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
  `picture` longtext NOT NULL COMMENT '图片',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COMMENT='新闻资讯';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news`
--

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
INSERT INTO `news` VALUES (31,'2024-03-04 01:09:20','青花瓷','素胚勾勒出青花笔锋浓转淡，瓶身描绘的牡丹一如你初妆，冉冉檀香透过窗心事我了然，宣上走笔至此搁一半，釉色渲染仕女图韵味被私藏，而你嫣然的一笑如含苞待放，你的美缕飘散，去到我去不了的地方，天青色等烟雨 而我在等你，炊烟袅袅升起','file/newsPicture1.jpg','素胚勾勒出青花笔锋浓转淡，瓶身描绘的牡丹一如你初妆，冉冉檀香透过窗心事我了然，宣上走笔至此搁一半，釉色渲染仕女图韵味被私藏，而你嫣然的一笑如含苞待放，你的美缕飘散，去到我去不了的地方，天青色等烟雨 而我在等你，炊烟袅袅升起， 隔江千万里，在瓶底书前朝的飘逸，就当我为遇见你伏笔，天青色等烟雨， 而我在等你，月色被打捞起， 晕开了局，如传世的青花瓷自顾自美丽，你眼带笑意，色白花青的锦鲤跃然于碗底，临摹宋体落款时却惦记着你，你隐藏在窑烧里千年的秘密，极细腻犹如绣花针落地，帘外芭蕉惹骤雨门环惹铜绿，而我路过那江南小镇惹了你，在泼墨山水画里，你从墨色深处被隐去，天青色等烟雨 ，而我在等你，炊烟袅袅升起 ，隔江千万里，在瓶底书汉隶仿前朝的飘逸，就当我为遇见你伏笔，天色等烟雨 ，而我在等你，月色被打捞起， 晕开了结局，如传世的青花瓷自顾自美丽，你眼带笑意，天青色等烟雨 ，而我在等你，炊烟袅袅升起 ，隔江千万里，在瓶底书汉隶仿前朝的飘逸，就当我为遇见你伏笔，天青色等烟雨， 而我在等你，月色被打捞起 ，晕开了结局，如传世的青花瓷自顾自美丽，你眼带笑意。'),(32,'2024-03-04 01:09:20','理想三旬','雨后有车驶来，驶过暮色苍白，旧铁皮往南开，恋人已不在，收听浓烟下的，诗歌电台，不动情的咳嗽，至少看起来，归途也还可爱，琴弦少了姿态，再不见那夜里，听歌的小孩，时光匆匆独白，将颠沛磨成卡带，已枯倦的情怀，踏碎成年代，就老去吧，孤独别醒来，你渴望的离开，只是无处停摆，就歌唱吧，眼睛眯起来，而热泪的崩坏，只是没抵达的存在','file/newsPicture2.jpg','雨后有车驶来，驶过暮色苍白，旧铁皮往南开，恋人已不在，收听浓烟下的，诗歌电台，不动情的咳嗽，至少看起来，归途也还可爱，琴弦少了姿态，再不见那夜里，听歌的小孩，时光匆匆独白，将颠沛磨成卡带，已枯倦的情怀，踏碎成年代，就老去吧，孤独别醒来，你渴望的离开，只是无处停摆，就歌唱吧，眼睛眯起来，而热泪的崩坏，只是没抵达的存在，青春又醉倒在，籍籍无名的怀，靠嬉笑来虚度，聚散得慷慨，辗转却去不到，对的站台，如果漂泊是成长，必经的路牌，你迷醒岁月中，那贫瘠的未来，像遗憾季节里，未结果的爱，弄脏了每一页诗，吻最疼痛的告白，而风声吹到这，已不需要释怀，就老去吧，孤独别醒来，渴望的离开只是无处停摆就歌唱吧，眼睛眯起来而热泪的崩坏，只是没抵达的存在，就甜蜜地忍耐，繁星润湿窗台，光影跳动着像在，困倦里说爱，再无谓的感慨，以为明白，梦倒塌的地方，今已爬满青苔。'),(33,'2024-03-04 01:09:20','七里香','窗外的麻雀在电线杆上多嘴，你说这一句很有夏天的感觉，手中的铅笔在纸上来来回回，我用几行字形容你是我的谁，秋刀鱼的滋味猫跟你都想了解，初恋的香味就这样被我们寻回，那温暖的阳光像刚摘的鲜艳草莓，你说你舍不得吃掉这一种感觉，雨下整夜我的爱溢出就像雨水，院子落叶跟我的思念厚厚一叠','file/newsPicture3.jpg','窗外的麻雀在电线杆上多嘴，你说这一句很有夏天的感觉，手中的铅笔在纸上来来回回，我用几行字形容你是我的谁，秋刀鱼的滋味猫跟你都想了解，初恋的香味就这样被我们寻回，那温暖的阳光像刚摘的鲜艳草莓，你说你舍不得吃掉这一种感觉，雨下整夜我的爱溢出就像雨水，院子落叶跟我的思念厚厚一叠，几句是非也无法将我的热情冷却，你出现在我诗的每一页，雨下整夜我的爱溢出就像雨水，窗台蝴蝶像诗里纷飞的美丽章节，我接着写，把永远爱你写进诗的结尾，你是我唯一想要的了解，雨下整夜我的爱溢出就像雨水，院子落叶跟我的思念厚厚一叠，几句是非也无法将我的热情冷却，你出现在我诗的每一页，那饱满的稻穗幸福了这个季节，而你的脸颊像田里熟透的番茄，你突然对我说七里香的名字很美，我此刻却只想亲吻你倔强的嘴，雨下整夜我的爱溢出就像雨水，院子落叶跟我的思念厚厚一叠，几句是非也无法将我的热情冷却，你出现在我诗的每一页，整夜我的爱溢出就像雨水，窗台蝴蝶像诗里纷飞的美丽章节，我接着写，把永远爱你写进诗的结尾，是我唯一想要的了解。'),(34,'2024-03-04 01:09:20','江南','风到这里就是粘，粘住过客的思念，雨到了这里缠成线，缠着我们流连人世间，你在身边就是缘，缘分写在三生石上面，爱有万分之一甜，宁愿我就葬在这一点，圈圈圆圆圈圈，天天年年天天的我，深深看你的脸，生气的温柔，埋怨的温柔的脸','file/newsPicture4.jpg','风到这里就是粘，粘住过客的思念，雨到了这里缠成线，缠着我们流连人世间，你在身边就是缘，缘分写在三生石上面，爱有万分之一甜，宁愿我就葬在这一点，圈圈圆圆圈圈，天天年年天天的我，深深看你的脸，生气的温柔，埋怨的温柔的脸，不懂爱恨情愁煎熬的我们，都以为相爱就像风云的善变，相信爱一天抵过永远，在这一刹那冻结了时间，不懂怎么表现温柔的我们，还以为殉情只是古老的传言，离愁能有多痛痛有多浓，当梦被埋在江南烟雨中，心碎了才懂，圈圈圆圆圈圈，天天年年天天的我，深深看你的脸，生气的温柔，埋怨的温柔的脸，不懂爱恨情愁煎熬的我们，都以为相爱就像风云的善变，相信爱一天 抵过永远，在这一刹那冻结了时间，不懂怎么表现温柔的我们，还以为殉情只是古老的传言，离愁能有多痛 痛有多浓，当梦被埋在江南烟雨中，心碎了才懂，相信爱一天抵过永远。在这一刹那冻结了时间，不懂怎么表现温柔的我们，还以为殉情只是古老的传言，离愁能有多痛 痛有多浓，当梦被埋在江南烟雨中，心碎了才懂。'),(35,'2024-03-04 01:09:20','那些你很冒险的梦','当两颗心开始震动，当你瞳孔学会闪躲，当爱慢慢被遮住只剩下黑，距离像影子被拉拖，当爱的故事剩听说，我找不到你单纯的面孔，当生命每分每秒都为你转动，心多执着就加倍心痛，那些你很冒险的梦， 我陪你去疯，折纸飞机碰到雨天终究会坠落','file/newsPicture5.jpg','当两颗心开始震动，当你瞳孔学会闪躲，当爱慢慢被遮住只剩下黑，距离像影子被拉拖，当爱的故事剩听说，我找不到你单纯的面孔，当生命每分每秒都为你转动，心多执着就加倍心痛，那些你很冒险的梦， 我陪你去疯，折纸飞机碰到雨天终究会坠落，太残忍的话我直说 因为爱很重，你却不想懂 只往反方向走，当爱的故事剩听说，我找不到你单纯的面孔，当生命每分每秒都为你转动，心有多执着就加倍心痛，那些你很冒险的梦 我陪你去疯，折纸飞机 碰到雨天 终究会坠落，太残忍的话我直说 因为爱很重，你却不想懂 只往反方向走，我不想放手 你松开的左手，你爱的放纵 我白不回天空，我输了 累了，但你再也 不回头，那些你很冒险的梦 我陪你去疯，折纸飞机 碰到雨天 终究会坠落，太残忍的话我直说 因为爱很重，你却不想懂 只往反方向走，你真的不懂 我的爱已降落。'),(36,'2024-03-04 01:09:20','孤勇者','都，是勇敢的，你额头的伤口 你的 不同 你犯的错，都 不必隐藏，你破旧的玩偶 你的 面具 你的自我，他们说 要带着光 驯服每一头怪兽，他们说 要缝好你的伤，没有人爱小丑 为何孤独 不可 光荣，人只有不完美 值得歌颂，谁说污泥满身的不算英雄，爱你孤身走暗巷，爱你不跪的模样，爱你对峙过绝望','file/newsPicture6.jpg','都，是勇敢的，你额头的伤口 你的 不同 你犯的错，都 不必隐藏，你破旧的玩偶 你的 面具 你的自我，他们说 要带着光 驯服每一头怪兽，他们说 要缝好你的伤，没有人爱小丑 为何孤独 不可 光荣，人只有不完美 值得歌颂，谁说污泥满身的不算英雄，爱你孤身走暗巷，爱你不跪的模样，爱你对峙过绝望，不肯哭一场，爱你破烂的衣裳，却敢堵命运的枪，爱你和我那么像，缺口都一样，去吗 配吗 这褴褛的披风，战吗 战啊 以最卑微的梦，致那黑夜中的呜咽与怒吼，谁说站在光里的才算英雄，他们说 要戒了你的狂，就像擦掉了污垢，他们说 要顺台阶而上，而代价是低头，那就让我 不可 乘风，你一样骄傲着 那种孤勇，谁说对弈平凡的不算英雄，爱你孤身走暗巷 爱你不跪的模样，爱你对峙过绝望 不肯哭一场，爱你破烂的衣裳 却敢堵命运的枪，爱你和我那么像 缺口都一样，去吗 配吗 这褴褛的披风，战吗 战啊 以最卑微的梦，致那黑夜中的呜咽与怒吼，谁说站在光里的才算英雄，你的斑驳 与众不同 与众不同，你的沉默 震耳欲聋 震耳欲聋，You Are The Hero，爱你孤身走暗巷 爱你不跪的模样，爱你对峙过绝望 不肯哭一场，爱你来自于蛮荒 一生不借谁的光，你将造你的城邦 在废墟之上，去吗 去啊 以最卑微的梦，战吗 战啊 以最孤高的梦，致那黑夜中的呜咽与怒吼，谁说站在光里的才算英雄。');
/*!40000 ALTER TABLE `news` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='token表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token`
--

LOCK TABLES `token` WRITE;
/*!40000 ALTER TABLE `token` DISABLE KEYS */;
INSERT INTO `token` VALUES (1,1,'admin','users','管理员','24qksrk5bdbl3lrl5juo4h12kft4rvkf','2024-03-04 01:14:23','2024-03-04 02:14:24');
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
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `username` varchar(200) NOT NULL COMMENT '用户名',
  `password` varchar(200) NOT NULL COMMENT '密码',
  `role` varchar(200) DEFAULT NULL COMMENT '角色',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='管理员';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'2024-03-04 01:09:20','admin','admin','管理员');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xiaoyouhui`
--

DROP TABLE IF EXISTS `xiaoyouhui`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xiaoyouhui` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `biaoti` varchar(200) DEFAULT NULL COMMENT '标题',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `tupian` longtext COMMENT '图片',
  `dizhi` varchar(200) DEFAULT NULL COMMENT '地址',
  `shijian` datetime DEFAULT NULL COMMENT '时间',
  `xiangqing` longtext COMMENT '详情',
  `sfsh` varchar(200) DEFAULT NULL COMMENT '是否审核',
  `shhf` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8 COMMENT='校友会';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xiaoyouhui`
--

LOCK TABLES `xiaoyouhui` WRITE;
/*!40000 ALTER TABLE `xiaoyouhui` DISABLE KEYS */;
INSERT INTO `xiaoyouhui` VALUES (51,'2024-03-04 01:09:20','账号1','标题1','姓名1','手机1','file/xiaoyouhuiTupian1.jpg,file/xiaoyouhuiTupian2.jpg,file/xiaoyouhuiTupian3.jpg','地址1','2024-03-04 09:09:20','详情1','是',''),(52,'2024-03-04 01:09:20','账号2','标题2','姓名2','手机2','file/xiaoyouhuiTupian2.jpg,file/xiaoyouhuiTupian3.jpg,file/xiaoyouhuiTupian4.jpg','地址2','2024-03-04 09:09:20','详情2','是',''),(53,'2024-03-04 01:09:20','账号3','标题3','姓名3','手机3','file/xiaoyouhuiTupian3.jpg,file/xiaoyouhuiTupian4.jpg,file/xiaoyouhuiTupian5.jpg','地址3','2024-03-04 09:09:20','详情3','是',''),(54,'2024-03-04 01:09:20','账号4','标题4','姓名4','手机4','file/xiaoyouhuiTupian4.jpg,file/xiaoyouhuiTupian5.jpg,file/xiaoyouhuiTupian6.jpg','地址4','2024-03-04 09:09:20','详情4','是',''),(55,'2024-03-04 01:09:20','账号5','标题5','姓名5','手机5','file/xiaoyouhuiTupian5.jpg,file/xiaoyouhuiTupian6.jpg,file/xiaoyouhuiTupian7.jpg','地址5','2024-03-04 09:09:20','详情5','是',''),(56,'2024-03-04 01:09:20','账号6','标题6','姓名6','手机6','file/xiaoyouhuiTupian6.jpg,file/xiaoyouhuiTupian7.jpg,file/xiaoyouhuiTupian8.jpg','地址6','2024-03-04 09:09:20','详情6','是','');
/*!40000 ALTER TABLE `xiaoyouhui` ENABLE KEYS */;
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
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `mima` varchar(200) DEFAULT NULL COMMENT '密码',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `jijiexuesheng` varchar(200) DEFAULT NULL COMMENT '几届学生',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `touxiang` longtext COMMENT '头像',
  PRIMARY KEY (`id`),
  UNIQUE KEY `zhanghao` (`zhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8 COMMENT='用户';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yonghu`
--

LOCK TABLES `yonghu` WRITE;
/*!40000 ALTER TABLE `yonghu` DISABLE KEYS */;
INSERT INTO `yonghu` VALUES (41,'2024-03-04 01:09:20','账号1','123456','姓名1','几届学生1','19819881111','file/yonghuTouxiang1.jpg'),(42,'2024-03-04 01:09:20','账号2','123456','姓名2','几届学生2','19819881112','file/yonghuTouxiang2.jpg'),(43,'2024-03-04 01:09:20','账号3','123456','姓名3','几届学生3','19819881113','file/yonghuTouxiang3.jpg'),(44,'2024-03-04 01:09:20','账号4','123456','姓名4','几届学生4','19819881114','file/yonghuTouxiang4.jpg'),(45,'2024-03-04 01:09:20','账号5','123456','姓名5','几届学生5','19819881115','file/yonghuTouxiang5.jpg'),(46,'2024-03-04 01:09:20','账号6','123456','姓名6','几届学生6','19819881116','file/yonghuTouxiang6.jpg');
/*!40000 ALTER TABLE `yonghu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zhaopinxinxi`
--

DROP TABLE IF EXISTS `zhaopinxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zhaopinxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhaopinbiaoti` varchar(200) DEFAULT NULL COMMENT '招聘标题',
  `gongsidizhi` varchar(200) DEFAULT NULL COMMENT '公司地址',
  `xinzi` varchar(200) DEFAULT NULL COMMENT '薪资',
  `jingyan` varchar(200) DEFAULT NULL COMMENT '经验',
  `xueli` varchar(200) DEFAULT NULL COMMENT '学历',
  `zhiweimiaoshu` varchar(200) DEFAULT NULL COMMENT '职位描述',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `gongsitupian` longtext COMMENT '公司图片',
  `sfsh` varchar(200) DEFAULT NULL COMMENT '是否审核',
  `shhf` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8 COMMENT='招聘信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zhaopinxinxi`
--

LOCK TABLES `zhaopinxinxi` WRITE;
/*!40000 ALTER TABLE `zhaopinxinxi` DISABLE KEYS */;
INSERT INTO `zhaopinxinxi` VALUES (71,'2024-03-04 01:09:20','招聘标题1','公司地址1','薪资1','经验1','学历1','职位描述1','账号1','姓名1','手机1','file/zhaopinxinxiGongsitupian1.jpg,file/zhaopinxinxiGongsitupian2.jpg,file/zhaopinxinxiGongsitupian3.jpg','是',''),(72,'2024-03-04 01:09:20','招聘标题2','公司地址2','薪资2','经验2','学历2','职位描述2','账号2','姓名2','手机2','file/zhaopinxinxiGongsitupian2.jpg,file/zhaopinxinxiGongsitupian3.jpg,file/zhaopinxinxiGongsitupian4.jpg','是',''),(73,'2024-03-04 01:09:20','招聘标题3','公司地址3','薪资3','经验3','学历3','职位描述3','账号3','姓名3','手机3','file/zhaopinxinxiGongsitupian3.jpg,file/zhaopinxinxiGongsitupian4.jpg,file/zhaopinxinxiGongsitupian5.jpg','是',''),(74,'2024-03-04 01:09:20','招聘标题4','公司地址4','薪资4','经验4','学历4','职位描述4','账号4','姓名4','手机4','file/zhaopinxinxiGongsitupian4.jpg,file/zhaopinxinxiGongsitupian5.jpg,file/zhaopinxinxiGongsitupian6.jpg','是',''),(75,'2024-03-04 01:09:20','招聘标题5','公司地址5','薪资5','经验5','学历5','职位描述5','账号5','姓名5','手机5','file/zhaopinxinxiGongsitupian5.jpg,file/zhaopinxinxiGongsitupian6.jpg,file/zhaopinxinxiGongsitupian7.jpg','是',''),(76,'2024-03-04 01:09:20','招聘标题6','公司地址6','薪资6','经验6','学历6','职位描述6','账号6','姓名6','手机6','file/zhaopinxinxiGongsitupian6.jpg,file/zhaopinxinxiGongsitupian7.jpg,file/zhaopinxinxiGongsitupian8.jpg','是','');
/*!40000 ALTER TABLE `zhaopinxinxi` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-03-10 13:06:07
