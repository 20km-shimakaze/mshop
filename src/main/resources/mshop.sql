/*
SQLyog v10.2 
MySQL - 5.0.96-community-nt : Database - mshop
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`mshop` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `mshop`;

/*Table structure for table `category` */

DROP TABLE IF EXISTS `category`;

CREATE TABLE `category` (
  `category_id` int(11) NOT NULL auto_increment COMMENT '主键 分类id主键',
  `category_name` varchar(32) NOT NULL COMMENT '分类名称 分类名称',
  `category_level` int(11) NOT NULL COMMENT '分类层级 分类得类型，\n1:一级大分类\n2:二级分类\n3:三级小分类',
  `parent_id` int(11) NOT NULL COMMENT '父层级id 父id 上一级依赖的id，1级分类则为0，二级三级分别依赖上一级',
  `category_icon` varchar(64) default NULL COMMENT '图标 logo',
  `category_pic` varchar(64) default NULL COMMENT '分类图',
  PRIMARY KEY  (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='商品分类';

/*Data for the table `category` */

insert  into `category`(`category_id`,`category_name`,`category_level`,`parent_id`,`category_icon`,`category_pic`) values (1,'点心/蛋糕',1,0,'cake.png','act1.png'),(2,'饼干/膨化',1,0,'cookies.png','act2.png'),(3,'熟食/肉类',1,0,'meat.png','act3.png'),(4,'素食/卤味',1,0,'bamboo.png','act1.png'),(5,'坚果/炒货',1,0,'nut.png','act2.png'),(6,'糖果/蜜饯',1,0,'candy.png','act3.png'),(7,'巧克力',1,0,'chocolate.png','act1.png'),(8,'海味/河鲜',1,0,'fish.png','act2.png'),(9,'花茶/果茶',1,0,'tea.png','act3.png'),(10,'品牌/礼包',1,0,'package.png','act1.png'),(11,'蛋糕',2,1,'cake.png','act1.png'),(12,'点心',2,1,'cookies.png',NULL),(13,'饼干',2,2,'cookies.png',NULL),(14,'薯片',2,2,'cookies.png',NULL),(15,'虾条',2,2,'cookies.png',NULL),(16,'猪肉脯',2,3,NULL,NULL),(17,'牛肉丝',2,3,'meat.png',NULL),(18,'小香肠',2,3,NULL,NULL),(19,'豆干',2,4,NULL,NULL),(20,'干笋',2,4,NULL,NULL),(21,'鸭脖',2,4,NULL,NULL),(22,'坚果',2,5,NULL,NULL),(23,'锅巴',2,5,NULL,NULL),(24,'糖果',2,6,NULL,NULL),(25,'蜜饯',2,6,NULL,NULL),(26,'巧克力',2,7,NULL,NULL),(27,'果冻',2,7,NULL,NULL),(28,'海带丝',2,8,NULL,NULL),(29,'小鱼干',2,8,NULL,NULL),(30,'鱿鱼丝',2,8,NULL,NULL),(31,'花茶',2,9,NULL,NULL),(32,'果茶',2,9,NULL,NULL),(33,'品牌套餐',2,10,'cookies.png','cookies.png'),(34,'活动礼包',2,10,'cookies.png','cookies.png'),(35,'蒸蛋糕',3,11,NULL,NULL),(36,'脱水蛋糕',3,11,NULL,NULL),(37,'瑞士卷',3,11,NULL,NULL),(38,'软面包',3,11,NULL,NULL),(39,'马卡龙',3,11,NULL,NULL),(40,'千层饼',3,11,NULL,NULL),(41,'甜甜圈',3,11,NULL,NULL),(42,'蒸三明治',3,11,NULL,NULL),(43,'铜锣烧',3,11,NULL,NULL),(44,'华夫饼',3,12,NULL,NULL),(45,'老婆饼',3,12,NULL,NULL),(46,'奥利奥',3,13,NULL,NULL),(47,'粤利粤',3,13,NULL,NULL),(49,'膨化虾条',3,15,NULL,NULL),(50,'油炸虾条',3,15,NULL,NULL),(51,'海鲜虾条',3,15,NULL,NULL);

/*Table structure for table `product` */

DROP TABLE IF EXISTS `product`;

CREATE TABLE `product` (
  `product_id` int(64) NOT NULL auto_increment COMMENT '商品主键id',
  `product_name` varchar(32) NOT NULL COMMENT '商品名称 商品名称',
  `category_id` int(11) NOT NULL COMMENT '分类外键id 分类id',
  `product_count` int(11) NOT NULL COMMENT '库存',
  `product_status` int(11) NOT NULL default '1' COMMENT '默认是1，表示正常状态, -1表示删除, 0下架 默认是1，表示正常状态, -1表示删除, 0下架',
  `create_time` varchar(255) NOT NULL COMMENT '创建时间',
  `default_img` varchar(255) NOT NULL default '默认图片',
  `product_price` double NOT NULL,
  PRIMARY KEY  (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='商品 商品信息相关表：分类表，商品图片表，商品规格表，商品参数表';

/*Data for the table `product` */

insert  into `product`(`product_id`,`product_name`,`category_id`,`product_count`,`product_status`,`create_time`,`default_img`,`product_price`) values (1,'奥利奥小饼干666',46,196,1,'2021-04-26 15:20:51','01_mid.jpg',9.9),(2,'旺旺华夫饼',22,202,1,'2021-04-26 15:27:22','02_mid.jpg',9.9),(3,'咪咪小虾条',50,199,1,'2021-04-26 15:58:09','03_mid.jpg',9.9),(4,'旺旺雪饼',46,201,1,'2021-04-25 15:58:59','01_mid.jpg',9.9),(5,'商品5',10,122,1,'2021-04-26 11:11:11','01_mid.jpg',9.9),(6,'商品6',10,123,1,'2021-04-26 11:11:11','01_mid.jpg',9.9),(7,'商品7',10,124,1,'2021-04-26 11:11:11','01_mid.jpg',9.9),(8,'商品8',10,125,1,'2021-04-26 11:11:11','01_mid.jpg',9.9),(9,'商品9',10,126,1,'2021-04-26 11:11:11','01_mid.jpg',9.9),(10,'商品10',10,127,1,'2021-04-26 11:11:11','01_mid.jpg',9.9),(11,'商品11',10,128,1,'2021-04-26 11:11:11','01_mid.jpg',9.9),(12,'商品12',46,122,1,'2021-04-26 11:11:11','01_mid.jpg',9.9),(13,'商品13',46,123,1,'2021-04-26 11:11:11','01_mid.jpg',9.9),(14,'商品14',46,124,1,'2021-04-26 11:11:11','01_mid.jpg',9.9),(15,'商品15',46,125,1,'2021-04-26 11:11:11','01_mid.jpg',9.9),(16,'商品16',46,126,1,'2021-04-26 11:11:11','01_mid.jpg',9.9),(17,'商品17',46,127,1,'2021-04-26 11:11:11','01_mid.jpg',9.9),(18,'商品18',46,128,1,'2021-04-26 11:11:11','01_mid.jpg',9.9),(19,'加力加小虾条1',49,111,1,'2021-03-04 09:53:14','01_mid.jpg',9.9),(20,'加力加虾条2',49,199,1,'2021-03-04 09:53:14','01_mid.jpg',9.9),(21,'加力加虾条3',49,4,1,'2021-03-04 09:53:14','01_mid.jpg',9.9),(22,'加力加虾条4',49,168,1,'2021-03-04 09:53:14','01_mid.jpg',9.9),(23,'加力加虾条5',49,168,1,'2021-03-04 09:53:14','01_mid.jpg',9.9),(24,'加力加虾条6',49,168,1,'2021-03-04 09:53:14','01_mid.jpg',9.9),(25,'加力加虾条7',49,168,1,'2021-03-04 09:53:14','01_mid.jpg',9.9),(26,'加力加虾条8',49,168,1,'2021-03-04 09:53:14','01_mid.jpg',9.9),(29,'加力加虾条11',49,168,1,'2021-03-04 09:53:14','01_mid.jpg',9.9),(30,'咪咪虾条',49,20,1,'2021-12-27 15:59:19.905','1640591958429.jpg',1),(31,'奥利奥饼干',46,30,1,'2021-12-27 16:02:17.804','1640592136753.jpg',19.9);

/*Table structure for table `product_img` */

DROP TABLE IF EXISTS `product_img`;

CREATE TABLE `product_img` (
  `id` int(64) NOT NULL auto_increment COMMENT '图片主键',
  `product_id` int(64) NOT NULL COMMENT '商品外键id 商品外键id',
  `url` varchar(128) NOT NULL COMMENT '图片地址 图片地址',
  `created_time` varchar(255) NOT NULL COMMENT '创建时间',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='商品图片 ';

/*Data for the table `product_img` */

insert  into `product_img`(`id`,`product_id`,`url`,`created_time`) values (1,19,'01.jpg','2021-12-12 16:10:10'),(2,19,'02.jpg','2021-12-12 16:11:11'),(3,19,'03.jpg','2021-12-12 16:11:11');

/*Table structure for table `role` */

DROP TABLE IF EXISTS `role`;

CREATE TABLE `role` (
  `role_id` int(11) NOT NULL auto_increment,
  `role_name` varchar(255) NOT NULL COMMENT '角色名',
  PRIMARY KEY  (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `role` */

insert  into `role`(`role_id`,`role_name`) values (1,'管理员'),(2,'用户');

/*Table structure for table `shopping_cart` */

DROP TABLE IF EXISTS `shopping_cart`;

CREATE TABLE `shopping_cart` (
  `cart_id` int(11) NOT NULL auto_increment COMMENT '主键',
  `product_id` int(32) NOT NULL COMMENT '商品ID',
  `user_id` int(32) NOT NULL COMMENT '用户ID',
  `cart_num` int(32) NOT NULL COMMENT '购物车商品数量',
  `cart_time` varchar(32) NOT NULL COMMENT '添加购物车时间',
  PRIMARY KEY  (`cart_id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='购物车 ';

/*Data for the table `shopping_cart` */

insert  into `shopping_cart`(`cart_id`,`product_id`,`user_id`,`cart_num`,`cart_time`) values (8,21,10,1,'2021-12-22 15:00:04.026'),(9,19,9,25,'2022-11-11 11:25:51'),(10,19,9,23,'2021-12-22 15:23:40.767'),(11,3,9,8,'2022-11-11 11:44:55'),(12,1,9,1,'2022-11-11 11:58:57'),(13,20,9,4,'2022-11-13 19:40:11'),(14,19,17,5,'2022-11-23 15:19:12');

/*Table structure for table `user_role` */

DROP TABLE IF EXISTS `user_role`;

CREATE TABLE `user_role` (
  `ur_id` int(11) NOT NULL auto_increment,
  `user_id` int(11) NOT NULL COMMENT '用户id',
  `role_id` int(11) NOT NULL COMMENT '角色id',
  PRIMARY KEY  (`ur_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

/*Data for the table `user_role` */

insert  into `user_role`(`ur_id`,`user_id`,`role_id`) values (4,10,1),(5,10,2),(6,11,2);

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `user_id` int(64) NOT NULL auto_increment COMMENT '主键id 用户id',
  `username` varchar(32) NOT NULL COMMENT '用户名 用户名',
  `password` varchar(64) NOT NULL COMMENT '密码 密码',
  `nickname` varchar(32) default NULL COMMENT '昵称 昵称',
  `user_img` varchar(255) NOT NULL default 'default_user_photo.jpg' COMMENT '头像 头像',
  `user_regtime` varchar(255) NOT NULL COMMENT '注册时间 创建时间',
  PRIMARY KEY  (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='用户 ';

/*Data for the table `users` */

insert  into `users`(`user_id`,`username`,`password`,`nickname`,`user_img`,`user_regtime`) values (9,'zhangsan','123456','张三','default_user_photo.jpg','2021-12-21 14:17:17'),(10,'18772883493','123456','李四','default_user_photo.jpg','2021-12-21 15:58:31.584'),(11,'18772883491','123456','王五','default_user_photo.jpg','2021-12-21 15:59:12.775'),(12,'18772883411','123456','艾斯德斯大所大','default_user_photo.jpg','2021-12-23 16:10:34.389'),(13,'18772883333','123456','阿斯达所大所大所大所大所多','default_user_photo.jpg','2021-12-23 16:14:02.149'),(14,'18772881111','123456','哈哈哈哈哈哈','default_user_photo.jpg','2021-12-28 15:30:22.806'),(16,'15838288738','123456','liuzhuo','default_user_photo.jpg','2022-11-10 12:39:31'),(17,'15838288737','123456','liuzhuo123','default_user_photo.jpg','2022-11-13 19:49:59'),(18,'15838288736','123456','liuzhuo1','default_user_photo.jpg','2022-11-14 09:28:18'),(19,'15838288730','123456','liuzhuo12','default_user_photo.jpg','2022-11-23 15:20:10');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
