-- MySQL dump 10.13  Distrib 5.5.53, for Win32 (AMD64)
--
-- Host: 127.0.0.1    Database: test
-- ------------------------------------------------------
-- Server version	5.5.53

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
-- Table structure for table `car`
--

DROP TABLE IF EXISTS `car`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `car` (
  `car_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `goods_id` int(11) DEFAULT NULL,
  `uid` int(11) DEFAULT NULL,
  `goods_num` int(5) DEFAULT NULL,
  `status` varchar(5) DEFAULT '1',
  `creattime` int(10) DEFAULT NULL,
  `is_show` varchar(5) DEFAULT '1',
  PRIMARY KEY (`car_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `car`
--

LOCK TABLES `car` WRITE;
/*!40000 ALTER TABLE `car` DISABLE KEYS */;
INSERT INTO `car` VALUES (1,38,1,1,'2',1551334757,'1');
/*!40000 ALTER TABLE `car` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `category` (
  `cate_id` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `cate_name` varchar(30) NOT NULL,
  `parent_id` smallint(6) NOT NULL DEFAULT '0',
  `is_show` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1: 展示 0：不展示',
  `keywords` varchar(150) DEFAULT NULL,
  `desc` varchar(200) DEFAULT NULL,
  `add_time` int(10) NOT NULL,
  `depath` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`cate_id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=24 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (1,'电器',0,1,'','',0,'0'),(2,'九阳电器',1,1,NULL,NULL,0,'0_1'),(3,'九阳豆浆机',2,1,NULL,NULL,0,'0_1_2'),(4,'九阳电饭煲',2,1,NULL,NULL,0,'0_1_2'),(5,'智能数码',0,1,NULL,NULL,0,'0'),(6,'手机',5,1,NULL,NULL,0,'0_5'),(7,'苹果6s',6,1,NULL,NULL,0,'0_5_6'),(8,'小米8',6,1,'活腻歪了','李兴达',0,'0_5_6'),(9,'日常用品',0,1,'牛B就完了','牛B就完了\r\n',0,'0'),(10,'衣服',9,1,'奈斯','奈斯',0,'0_9'),(11,'上衣',9,1,NULL,NULL,0,'0_9_10'),(12,'内衣',11,1,NULL,NULL,0,'0_9_10'),(20,'棉袄',11,1,'','地方',1544529923,'0_9_10'),(21,'衬衫',11,1,'的','的',1544529999,'0_9_10');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `code`
--

DROP TABLE IF EXISTS `code`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `code` (
  `id` int(3) unsigned NOT NULL AUTO_INCREMENT,
  `code` int(5) DEFAULT NULL,
  `tel` varchar(20) DEFAULT NULL,
  `timeout` int(10) DEFAULT NULL,
  `status` int(3) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `code`
--

LOCK TABLES `code` WRITE;
/*!40000 ALTER TABLE `code` DISABLE KEYS */;
INSERT INTO `code` VALUES (1,8637,'15010143277',1551334489,0);
/*!40000 ALTER TABLE `code` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `goods`
--

DROP TABLE IF EXISTS `goods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `goods` (
  `goods_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `cat_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `goods_sn` varchar(60) NOT NULL DEFAULT '',
  `goods_name` varchar(120) NOT NULL DEFAULT '',
  `click_count` int(10) unsigned NOT NULL DEFAULT '0',
  `brand_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `goods_number` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `market_price` decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
  `shop_price` decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
  `promote_price` decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
  `promote_start_date` int(11) unsigned NOT NULL DEFAULT '0',
  `promote_end_date` int(11) unsigned NOT NULL DEFAULT '0',
  `warn_number` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `keywords` varchar(255) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT '',
  `content` text NOT NULL,
  `goods_thumb` varchar(255) NOT NULL DEFAULT '',
  `goods_img` varchar(255) NOT NULL DEFAULT '',
  `original_img` varchar(255) NOT NULL DEFAULT '',
  `is_on_sale` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `is_shipping` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `add_time` int(10) unsigned NOT NULL DEFAULT '0',
  `is_delete` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `is_best` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `is_new` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `is_hot` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `is_promote` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `type_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `seller_note` varchar(255) NOT NULL DEFAULT '',
  `is_tell` int(3) DEFAULT NULL,
  `is_like` varchar(5) DEFAULT NULL,
  PRIMARY KEY (`goods_id`) USING BTREE,
  KEY `goods_sn` (`goods_sn`) USING BTREE,
  KEY `cat_id` (`cat_id`) USING BTREE,
  KEY `brand_id` (`brand_id`) USING BTREE,
  KEY `promote_end_date` (`promote_end_date`) USING BTREE,
  KEY `promote_start_date` (`promote_start_date`) USING BTREE,
  KEY `goods_number` (`goods_number`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=76 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `goods`
--

LOCK TABLES `goods` WRITE;
/*!40000 ALTER TABLE `goods` DISABLE KEYS */;
INSERT INTO `goods` VALUES (1,4,'ECS000000','KD876',8,0,1,1665.60,1388.00,0.00,0,0,1,'LG 3g 876 支持 双模 2008年04月 灰色 GSM,850,900,1800,1900','苹果很贵','','','20190109/5c35ce278aa33.jpg','',1,0,0,0,0,0,0,0,0,'',0,'1'),(2,8,'ECS000004','诺基亚N85原装充电器',0,0,17,69.60,58.00,0.00,0,0,1,'','苹果很贵','','','20190109/5c35ce278aa33.jpg','',1,0,0,0,0,0,0,0,0,'',0,'1'),(3,3,'ECS000008','飞利浦9@9v',12,4,0,478.79,399.00,385.00,1241366400,1417276800,1,'双模 2008年春 黑色 直板 中低档','苹果很贵','','','20190109/5c35ce278aa33.jpg','',1,0,0,0,0,0,0,0,0,'',0,'1'),(4,3,'ECS000009','诺基亚E66',28,0,2,2757.60,2298.00,0.00,0,0,1,'SMS EMS MMS 短消息群发 语音 阅读器 SMS,EMS,MMS,短消息群发语音合成信息阅读器 黑色 白色 滑盖','苹果很贵','','','20190109/5c35ce27a7a6d.jpg','',1,0,0,0,0,0,0,0,0,'',0,'1'),(5,9,'ECS000035','体重秤',0,0,1,16.80,14.00,0.00,0,0,1,'','苹果很贵','','','20190109/5c35ce6603b4e.jpg','',1,0,0,0,0,0,0,0,0,'',0,'1'),(6,5,'ECS000069','平衡车',3,15,1,2398.79,1999.00,0.00,0,0,1,'','苹果很贵','','','20190109/5c35ce660433e.jpg','',1,0,0,0,0,0,0,0,0,'',0,'1'),(7,5,'ECS000070','炫彩翻页保护套',3,15,1,46.80,39.00,0.00,0,0,1,'','苹果很贵','','','20190109/5c35ce6603b4e.jpg','',1,0,0,0,0,0,0,0,0,'',0,'1'),(8,5,'ECS000072','智能相机',6,15,20,178.79,149.00,0.00,0,0,1,'','苹果很贵','','','20190109/5c35ce660433e.jpg','',1,0,0,0,0,0,0,0,0,'',0,'1'),(9,4,'ECS000014','诺基亚5800XM',7,0,1,3150.00,2625.00,0.00,0,0,1,'GSM 64和弦 2009年2月 320万摄像头 GPS 直板 工程塑料 支持 2008年10月 黑色','苹果很贵','','','20190109/5c35ce278aa33.jpg','',1,0,0,0,0,0,0,0,0,'',0,'1'),(10,1,'ECS000064','运动相机',6,15,1,478.79,399.00,0.00,0,0,1,'','苹果很贵','','','20190109/5c35ce27a7a6d.jpg','',1,0,0,0,0,0,0,0,0,'',0,'1'),(11,1,'ECS000063','自拍杆',7,15,0,49.00,49.00,0.00,0,0,1,'','苹果很贵','','','20190109/5c35ce6603b4e.jpg','',1,0,0,0,0,0,0,0,0,'',0,'1'),(12,1,'ECS000061','视频',4,15,20,24.24,20.20,0.00,0,0,1,'','苹果很贵','','','20190109/5c35ce660433e.jpg','',1,0,0,0,0,0,0,0,0,'',0,'1'),(13,1,'ECS000062','随身风扇',3,15,20,23.88,19.90,0.00,0,0,1,'','苹果很贵','','','20190109/5c35ce6603b4e.jpg','',1,0,0,0,0,0,0,0,0,'',0,'1'),(14,3,'ECS000032','诺基亚N85',24,0,4,3612.00,3010.00,2750.00,1243756800,1417248000,1,'2008年10月 GSM,850,900,1800,1900 黑色','苹果很贵','','','20190109/5c35ce660433e.jpg','',1,0,0,0,0,0,0,0,0,'',0,'1'),(15,1,'ECS000068','透明超薄软胶保护套',4,15,1,22.80,19.00,0.00,0,0,1,'','苹果很贵','','','20190109/5c35ce278aa33.jpg','',1,0,0,0,0,0,0,0,0,'',0,'1'),(16,18,'ECS000036','路由器',0,0,1,178.79,149.00,0.00,0,0,1,'','苹果很贵','','','20190109/5c35ce27a7a6d.jpg','',1,0,0,0,0,0,0,0,0,'',0,'1'),(17,9,'ECS000037','Note3 钢化玻璃膜(0.33mm) ',2,15,1,19.00,19.00,0.00,0,0,1,'','苹果很贵','','','20190109/5c35ce6603b4e.jpg','',1,0,0,0,0,0,0,0,0,'',1,'1'),(18,9,'ECS000038','圈铁耳机',2,15,1,118.80,99.00,0.00,0,0,1,'','苹果很贵','','','20190109/5c35ce660433e.jpg','',1,0,0,0,0,0,0,0,0,'',0,'1'),(19,9,'ECS000039','移动电源 10000mAh 高配版',1,15,1,178.79,149.00,0.00,0,0,1,'','苹果很贵','','','20190109/5c35ce6603b4e.jpg','',1,0,0,0,0,0,0,0,0,'',0,'1'),(20,9,'ECS000040',' 炫彩翻页保护套',2,15,1,39.00,39.00,0.00,0,0,1,'','苹果很贵','','','20190109/5c35ce660433e.jpg','',1,0,0,0,0,0,0,0,0,'',0,'1'),(21,9,'ECS000041','蓝牙耳机',1,15,1,94.80,79.00,0.00,0,0,1,'','苹果很贵','','','20190109/5c35ce278aa33.jpg','',1,0,0,0,0,0,0,0,0,'',0,'1'),(22,16,'ECS000042','短袖T恤 米兔大游行',0,0,1,46.80,39.00,0.00,0,0,1,'','苹果很贵','','','20190109/5c35ce27a7a6d.jpg','',1,0,0,0,0,0,0,0,0,'',0,'1'),(23,16,'ECS000043','短袖T恤 摇滚星球',0,0,1,46.80,39.00,0.00,0,0,1,'','苹果很贵','','','20190109/5c35ce6603b4e.jpg','',1,0,0,0,0,0,0,0,0,'',1,'1'),(24,16,'ECS000044','短袖POLO衫 女款',1,0,1,70.80,59.00,0.00,0,0,1,'','苹果很贵','','','20190109/5c35ce660433e.jpg','',1,0,0,0,0,0,0,0,0,'',0,'1'),(25,5,'ECS000045','自拍杆',4,15,1,58.80,49.00,0.00,0,0,1,'','苹果很贵','','','20190109/5c35ce6603b4e.jpg','',1,0,0,0,0,0,0,0,0,'',0,'1'),(26,16,'ECS000046','V领短袖T恤 女款',0,0,1,46.80,39.00,0.00,0,0,1,'','苹果很贵','','','20190109/5c35ce278aa33.jpg','',1,0,0,0,0,0,0,0,0,'',0,'1'),(27,16,'ECS000047','极简都市双肩包',0,0,1,178.79,149.00,0.00,0,0,1,'','苹果很贵','','','20190109/5c35ce27a7a6d.jpg','',1,0,0,0,0,0,0,0,0,'',0,'1'),(28,16,'ECS000048','学院风简约双肩包',1,0,1,70.80,59.00,0.00,0,0,1,'','苹果很贵','','','20190109/5c35ce6603b4e.jpg','',1,0,0,0,0,0,0,0,0,'',0,'1'),(29,19,'ECS000049','随身风扇',2,0,1,23.88,19.90,0.00,0,0,1,'','苹果很贵','','','20190109/5c35ce660433e.jpg','',1,0,0,0,0,0,0,0,0,'',0,'1'),(30,19,'ECS000050','移动电源16000mAh',2,15,1,154.79,129.00,0.00,0,0,1,'','苹果很贵','','','20190109/5c35ce6603b4e.jpg','',1,0,0,0,0,0,0,0,0,'',0,'1'),(31,19,'ECS000051','鼠标垫',3,0,1,5.88,4.90,0.00,0,0,1,'','苹果很贵','','','20190109/5c35ce660433e.jpg','',1,0,0,0,0,0,0,0,0,'',0,'1'),(32,8,'ECS000052','活塞耳机 三大升级 全新听歌神器',0,15,1,99.00,69.00,0.00,0,0,1,'','苹果很贵','','','20190109/5c35ce278aa33.jpg','',1,0,0,0,0,0,0,0,0,'',1,'1'),(33,8,'ECS000053','活塞耳机 标准版',2,15,1,34.80,29.00,0.00,0,0,1,'','苹果很贵','','','20190109/5c35ce27a7a6d.jpg','',1,0,0,0,0,0,0,0,0,'',0,'1'),(34,6,'ECS000054','插线板',0,15,1,58.80,49.00,0.00,0,0,1,'','苹果很贵','','','20190109/5c35ce6603b4e.jpg','',1,0,0,0,0,0,0,0,0,'',0,'1'),(35,22,'ECS000055','移动电源10000mAh',0,15,1,82.80,69.00,0.00,0,0,1,'','苹果很贵','','','20190109/5c35ce660433e.jpg','',1,0,0,0,0,0,0,0,0,'',1,'1'),(36,20,'ECS000058','手机3高配版 超薄钢化玻璃膜(0.22mm) ',7,15,1,34.80,29.00,0.00,0,0,1,'','苹果很贵','','','20190109/5c35ce6603b4e.jpg','',1,0,0,0,0,0,0,0,0,'',0,'1'),(37,6,'ECS000059',' 标准高透贴膜(2片装) ',4,15,1,22.80,19.00,0.00,0,0,1,'','苹果很贵','','','20190109/5c35ce660433e.jpg','',1,0,0,0,0,0,0,0,0,'',0,'1'),(38,6,'ECS000060','指环式防滑手机支架',30,15,10,15.00,12.50,0.00,0,0,1,'','苹果很贵','','','20190109/5c35ce278aa33.jpg','',1,0,0,0,0,0,0,0,0,'',1,'1'),(39,6,'ECS000073','苹果XS',0,5,1,12000.00,10000.00,0.00,0,0,1,'','苹果很贵','','','20190109/5c35ce27a7a6d.jpg','',1,0,0,0,0,0,0,0,0,'',0,'1'),(40,6,'ECS000074','XS 苹果',10,5,8,12000.00,10000.00,9500.00,1541001600,1543420800,3,'苹果','苹果很贵','','','20190109/5c35ce6603b4e.jpg','',1,0,0,0,0,0,0,0,0,'',0,'1'),(41,4,'ECS000073','苹果XS',0,19,4111,0.00,10000.00,0.00,0,2014,10,'2018年10月 GSM,850,900,1800,1900 黑色','苹果很贵','','','20190109/5c35ce660433e.jpg','',1,0,0,0,0,0,0,0,0,'',0,'1'),(42,4,'ECS000073','苹果XS',0,19,4111,0.00,10000.00,0.00,0,2014,10,'2018年10月 GSM,850,900,1800,1900 黑色','苹果很贵','','','20190109/5c35ce6603b4e.jpg','',1,0,0,0,0,0,0,0,0,'',0,'1'),(43,4,'ECS000073','苹果XS',0,19,4111,0.00,10000.00,0.00,0,2014,10,'2018年10月 GSM,850,900,1800,1900 黑色','苹果很贵','','','20190109/5c35ce660433e.jpg','',1,0,0,0,0,0,0,0,0,'',0,'1'),(74,6,'ECS000074','XS 苹果',10,5,8,12000.00,10000.00,9500.00,1541001600,1543420800,3,'苹果','苹果 很贵','','','20190109/5c35ce6603b4e.jpg','',1,0,0,0,0,0,0,0,0,'',0,'1'),(75,9,'','大鸡脖',0,19,100,12000.00,10000.00,222.00,0,2014,10,'2018年10月 GSM,850,900,1800,1900 黑色','','','','20190109/5c35ce660433e.jpg','',1,0,0,0,1,1,1,1,0,'发货快',0,'1');
/*!40000 ALTER TABLE `goods` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lianxi`
--

DROP TABLE IF EXISTS `lianxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lianxi` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `fenlei` varchar(30) CHARACTER SET utf8 DEFAULT NULL,
  `miaoshu` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `rexiao` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `shangjia` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lianxi`
--

LOCK TABLES `lianxi` WRITE;
/*!40000 ALTER TABLE `lianxi` DISABLE KEYS */;
INSERT INTO `lianxi` VALUES (5,'安玉庆','生活用品','df','1','1'),(6,'安玉庆','生活用品','df','1','1'),(8,'GMY  ❤  AYP','生活用品','df','0','1');
/*!40000 ALTER TABLE `lianxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order`
--

DROP TABLE IF EXISTS `order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `order` (
  `order_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `order_no` char(40) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `order_amout` char(20) DEFAULT NULL,
  `order_pay_type` tinyint(4) DEFAULT '1' COMMENT '1为线上支付',
  `pay_status` tinyint(4) DEFAULT '1' COMMENT '1为未支付状态',
  `pay_way` tinyint(4) DEFAULT '1' COMMENT '1为支付宝支付',
  `status` tinyint(4) DEFAULT '1' COMMENT '1为未支付',
  `ctime` int(11) DEFAULT NULL,
  PRIMARY KEY (`order_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order`
--

LOCK TABLES `order` WRITE;
/*!40000 ALTER TABLE `order` DISABLE KEYS */;
INSERT INTO `order` VALUES (1,'2019022806193415513347745533',1,'12.00',1,1,1,1,1551334774),(2,'2019022806230915513349894872',1,'12.00',1,1,1,1,1551334989);
/*!40000 ALTER TABLE `order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_address`
--

DROP TABLE IF EXISTS `order_address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `order_address` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `order_receive_name` varchar(20) NOT NULL,
  `receive_tel` varchar(11) NOT NULL,
  `province_id` int(11) NOT NULL DEFAULT '0',
  `city_id` int(11) NOT NULL DEFAULT '0',
  `area_id` int(11) NOT NULL DEFAULT '0',
  `receive_address` varchar(200) NOT NULL,
  `post_code` char(6) NOT NULL DEFAULT '0',
  `receive_xiangxi` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_address`
--

LOCK TABLES `order_address` WRITE;
/*!40000 ALTER TABLE `order_address` DISABLE KEYS */;
INSERT INTO `order_address` VALUES (1,1,'anyup','15033879785',0,0,0,'北京','1','北京');
/*!40000 ALTER TABLE `order_address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_detail`
--

DROP TABLE IF EXISTS `order_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `order_detail` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `order_id` int(11) DEFAULT NULL,
  `order_no` char(40) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `goods_id` int(11) DEFAULT NULL,
  `buy_number` int(11) DEFAULT NULL,
  `goods_name` varchar(255) DEFAULT NULL,
  `goods_price` decimal(10,2) DEFAULT NULL,
  `goods_img` varchar(255) DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `ctime` int(11) DEFAULT NULL,
  `express` varchar(30) DEFAULT NULL,
  `utime` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_detail`
--

LOCK TABLES `order_detail` WRITE;
/*!40000 ALTER TABLE `order_detail` DISABLE KEYS */;
INSERT INTO `order_detail` VALUES (1,1,'2019022806193415513347745533',1,38,1,'指环式防滑手机支架',12.50,'20190109/5c35ce278aa33.jpg',1,NULL,NULL,1551334774),(2,2,'2019022806230915513349894872',1,38,1,'指环式防滑手机支架',12.50,'20190109/5c35ce278aa33.jpg',1,NULL,NULL,1551334989);
/*!40000 ALTER TABLE `order_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `register`
--

DROP TABLE IF EXISTS `register`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `register` (
  `id` int(5) unsigned NOT NULL AUTO_INCREMENT,
  `tel` varchar(11) DEFAULT NULL,
  `pwd` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `register`
--

LOCK TABLES `register` WRITE;
/*!40000 ALTER TABLE `register` DISABLE KEYS */;
INSERT INTO `register` VALUES (1,'15010143277','e10adc3949ba59abbe56e057f20f883e');
/*!40000 ALTER TABLE `register` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-03-02 10:32:27
