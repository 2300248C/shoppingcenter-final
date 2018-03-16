/*
Navicat MySQL Data Transfer

Source Server         : MySql
Source Server Version : 50067
Source Host           : localhost:3306
Source Database       : test

Target Server Type    : MYSQL
Target Server Version : 50067
File Encoding         : 65001


*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `auth_group`
-- ----------------------------
DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_group
-- ----------------------------

-- ----------------------------
-- Table structure for `auth_group_permissions`
-- ----------------------------
DROP TABLE IF EXISTS `auth_group_permissions`;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL auto_increment,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `group_id` (`group_id`,`permission_id`),
  KEY `auth_group_permissions_5f412f9a` (`group_id`),
  KEY `auth_group_permissions_83d7f98b` (`permission_id`),
  CONSTRAINT `group_id_refs_id_f4b32aac` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `permission_id_refs_id_6ba0f519` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_group_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for `auth_permission`
-- ----------------------------
DROP TABLE IF EXISTS `auth_permission`;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(50) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `content_type_id` (`content_type_id`,`codename`),
  KEY `auth_permission_37ef4eb4` (`content_type_id`),
  CONSTRAINT `content_type_id_refs_id_d043b34a` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_permission
-- ----------------------------
INSERT INTO `auth_permission` VALUES ('1','Can add log entry','1','add_logentry');
INSERT INTO `auth_permission` VALUES ('2','Can change log entry','1','change_logentry');
INSERT INTO `auth_permission` VALUES ('3','Can delete log entry','1','delete_logentry');
INSERT INTO `auth_permission` VALUES ('4','Can add permission','2','add_permission');
INSERT INTO `auth_permission` VALUES ('5','Can change permission','2','change_permission');
INSERT INTO `auth_permission` VALUES ('6','Can delete permission','2','delete_permission');
INSERT INTO `auth_permission` VALUES ('7','Can add group','3','add_group');
INSERT INTO `auth_permission` VALUES ('8','Can change group','3','change_group');
INSERT INTO `auth_permission` VALUES ('9','Can delete group','3','delete_group');
INSERT INTO `auth_permission` VALUES ('10','Can add content type','4','add_contenttype');
INSERT INTO `auth_permission` VALUES ('11','Can change content type','4','change_contenttype');
INSERT INTO `auth_permission` VALUES ('12','Can delete content type','4','delete_contenttype');
INSERT INTO `auth_permission` VALUES ('13','Can add session','5','add_session');
INSERT INTO `auth_permission` VALUES ('14','Can change session','5','change_session');
INSERT INTO `auth_permission` VALUES ('15','Can delete session','5','delete_session');
INSERT INTO `auth_permission` VALUES ('16','Can add User','6','add_user');
INSERT INTO `auth_permission` VALUES ('17','Can change User','6','change_user');
INSERT INTO `auth_permission` VALUES ('18','Can delete User','6','delete_user');
INSERT INTO `auth_permission` VALUES ('19','Can add Ads','7','add_ad');
INSERT INTO `auth_permission` VALUES ('20','Can change Ads','7','change_ad');
INSERT INTO `auth_permission` VALUES ('21','Can delete Ads','7','delete_ad');
INSERT INTO `auth_permission` VALUES ('22','Can add Categories','8','add_category');
INSERT INTO `auth_permission` VALUES ('23','Can change Categories','8','change_category');
INSERT INTO `auth_permission` VALUES ('24','Can delete Categories','8','delete_category');
INSERT INTO `auth_permission` VALUES ('25','Can add Brand','9','add_brand');
INSERT INTO `auth_permission` VALUES ('26','Can change Brand','9','change_brand');
INSERT INTO `auth_permission` VALUES ('27','Can delete Brand','9','delete_brand');
INSERT INTO `auth_permission` VALUES ('28','Can add Size','10','add_size');
INSERT INTO `auth_permission` VALUES ('29','Can change Size','10','change_size');
INSERT INTO `auth_permission` VALUES ('30','Can delete Size','10','delete_size');
INSERT INTO `auth_permission` VALUES ('31','Can add Tag','11','add_tag');
INSERT INTO `auth_permission` VALUES ('32','Can change Tag','11','change_tag');
INSERT INTO `auth_permission` VALUES ('33','Can delete Tag','11','delete_tag');
INSERT INTO `auth_permission` VALUES ('34','Can add Goods','12','add_furniture');
INSERT INTO `auth_permission` VALUES ('35','Can change Goods','12','change_furniture');
INSERT INTO `auth_permission` VALUES ('36','Can delete Goods','12','delete_furniture');
INSERT INTO `auth_permission` VALUES ('37','Can add Cart Number','13','add_caritem');
INSERT INTO `auth_permission` VALUES ('38','Can change Cart Number','13','change_caritem');
INSERT INTO `auth_permission` VALUES ('39','Can delete Cart Number','13','delete_caritem');
INSERT INTO `auth_permission` VALUES ('40','Can add Order','14','add_order');
INSERT INTO `auth_permission` VALUES ('41','Can change Order','14','change_order');
INSERT INTO `auth_permission` VALUES ('42','Can delete Order','14','delete_order');
INSERT INTO `auth_permission` VALUES ('43','Can add Order Number','15','add_order_list');
INSERT INTO `auth_permission` VALUES ('44','Can change Order Number','15','change_order_list');
INSERT INTO `auth_permission` VALUES ('45','Can delete Order Number','15','delete_order_list');

-- ----------------------------
-- Table structure for `django_admin_log`
-- ----------------------------
DROP TABLE IF EXISTS `django_admin_log`;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL auto_increment,
  `action_time` datetime NOT NULL,
  `user_id` int(11) NOT NULL,
  `content_type_id` int(11) default NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `django_admin_log_6340c63c` (`user_id`),
  KEY `django_admin_log_37ef4eb4` (`content_type_id`),
  CONSTRAINT `content_type_id_refs_id_93d2d1f8` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `user_id_refs_id_b4a38c66` FOREIGN KEY (`user_id`) REFERENCES `myApp_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=117 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_admin_log
-- ----------------------------
INSERT INTO `django_admin_log` VALUES ('1','2018-01-06 01:41:04','1','6','2','jack','1','');
INSERT INTO `django_admin_log` VALUES ('2','2018-01-06 01:41:55','1','9','1','LinShiMuYe','1','');
INSERT INTO `django_admin_log` VALUES ('3','2018-01-06 01:42:15','1','9','1','QuanU','2','已修改 name 和 index 。');
INSERT INTO `django_admin_log` VALUES ('4','2018-01-06 01:42:26','1','9','2','#0 Factory','1','');
INSERT INTO `django_admin_log` VALUES ('5','2018-01-06 01:42:36','1','9','3','Luxury Room','1','');
INSERT INTO `django_admin_log` VALUES ('6','2018-01-06 01:42:46','1','9','4','YouXuanMu','1','');
INSERT INTO `django_admin_log` VALUES ('7','2018-01-06 01:42:52','1','9','5','TangShi','1','');
INSERT INTO `django_admin_log` VALUES ('8','2018-01-06 01:42:59','1','9','6','XinJuMingJia','1','');
INSERT INTO `django_admin_log` VALUES ('9','2018-01-06 01:43:11','1','9','7','Ikea','1','');
INSERT INTO `django_admin_log` VALUES ('10','2018-01-06 01:43:23','1','9','8','MuBi','1','');
INSERT INTO `django_admin_log` VALUES ('11','2018-01-06 01:43:32','1','9','9','GuangLan','1','');
INSERT INTO `django_admin_log` VALUES ('12','2018-01-06 01:43:39','1','9','10','MeiJin','1','');
INSERT INTO `django_admin_log` VALUES ('13','2018-01-06 01:43:49','1','9','11','XingZhiJu','1','');
INSERT INTO `django_admin_log` VALUES ('14','2018-01-06 01:45:30','1','8','1','Cloth Sofa---Living Room','1','');
INSERT INTO `django_admin_log` VALUES ('15','2018-01-06 01:45:54','1','8','2','Solid Wood Sofa---Living Room','1','');
INSERT INTO `django_admin_log` VALUES ('16','2018-01-06 01:46:04','1','8','3','Leather Sofa---Living Room','1','');
INSERT INTO `django_admin_log` VALUES ('17','2018-01-06 01:46:16','1','8','4','TV Bench---Living Room','1','');
INSERT INTO `django_admin_log` VALUES ('18','2018-01-06 01:46:28','1','8','5','Tea Table---Living Room','1','');
INSERT INTO `django_admin_log` VALUES ('19','2018-01-06 01:47:01','1','8','6','Shoebox---Living Room','1','');
INSERT INTO `django_admin_log` VALUES ('20','2018-01-06 01:47:17','1','8','7','Solid Wood Bed---Bedroom','1','');
INSERT INTO `django_admin_log` VALUES ('21','2018-01-06 01:47:27','1','8','8','Cloth Bed---Bedroom','1','');
INSERT INTO `django_admin_log` VALUES ('22','2018-01-06 01:47:38','1','8','9','Leather Bed---Bedroom','1','');
INSERT INTO `django_admin_log` VALUES ('23','2018-01-06 01:48:13','1','8','10','Mattress---Bedroom','1','');
INSERT INTO `django_admin_log` VALUES ('24','2018-01-06 01:48:28','1','8','11','Closet---Bedroom','1','');
INSERT INTO `django_admin_log` VALUES ('25','2018-01-06 01:48:51','1','8','12','Dining Table---Dining Room/Study','1','');
INSERT INTO `django_admin_log` VALUES ('26','2018-01-06 01:49:05','1','8','13','Dining Closet---Dining Room/Study','1','');
INSERT INTO `django_admin_log` VALUES ('27','2018-01-06 01:49:21','1','8','14','Study Table---Dining Room/Study','1','');
INSERT INTO `django_admin_log` VALUES ('28','2018-01-06 01:49:33','1','8','15','Study Closet---Dining Room/Study','1','');
INSERT INTO `django_admin_log` VALUES ('29','2018-01-06 01:50:16','1','8','16','Bedroom Base Set---Furniture Base Set','1','');
INSERT INTO `django_admin_log` VALUES ('30','2018-01-06 01:50:35','1','8','17','Living Room Base Set---Furniture Base Set','1','');
INSERT INTO `django_admin_log` VALUES ('31','2018-01-06 01:50:49','1','8','18','Dining Room Base Set---Furniture Base Set','1','');
INSERT INTO `django_admin_log` VALUES ('32','2018-01-06 01:52:59','1','10','1','1800*2000','1','');
INSERT INTO `django_admin_log` VALUES ('33','2018-01-06 01:53:09','1','10','2','1500*2000','1','');
INSERT INTO `django_admin_log` VALUES ('34','2018-01-06 01:53:22','1','10','3','Single','1','');
INSERT INTO `django_admin_log` VALUES ('35','2018-01-06 01:53:30','1','10','4','Double','1','');
INSERT INTO `django_admin_log` VALUES ('36','2018-01-06 01:53:42','1','10','5','Triple','1','');
INSERT INTO `django_admin_log` VALUES ('37','2018-01-06 01:53:53','1','10','6','1+2+3+Tea table','1','');
INSERT INTO `django_admin_log` VALUES ('38','2018-01-06 01:54:03','1','10','7','1400*800','1','');
INSERT INTO `django_admin_log` VALUES ('39','2018-01-06 01:54:17','1','10','8','Default','1','');
INSERT INTO `django_admin_log` VALUES ('40','2018-01-06 01:55:19','1','11','1','Minimalist','1','');
INSERT INTO `django_admin_log` VALUES ('41','2018-01-06 01:55:30','1','11','2','American','1','');
INSERT INTO `django_admin_log` VALUES ('42','2018-01-06 01:55:41','1','11','3','European','1','');
INSERT INTO `django_admin_log` VALUES ('43','2018-01-06 01:55:51','1','11','4','Chinese','1','');
INSERT INTO `django_admin_log` VALUES ('44','2018-01-06 01:55:59','1','11','5','Mediterranean','1','');
INSERT INTO `django_admin_log` VALUES ('45','2018-01-06 01:56:06','1','11','6','North Europe','1','');
INSERT INTO `django_admin_log` VALUES ('46','2018-01-06 02:01:29','1','9','12','LinShiMuYe','1','');
INSERT INTO `django_admin_log` VALUES ('47','2018-01-06 02:04:01','1','12','1','LinShiMuYe Solid Wood Bed','1','');
INSERT INTO `django_admin_log` VALUES ('48','2018-01-06 02:06:12','1','12','2','Luxury Room Solid Wood Bed','1','');
INSERT INTO `django_admin_log` VALUES ('49','2018-01-06 02:08:45','1','12','3','Ikea Dining Table','1','');
INSERT INTO `django_admin_log` VALUES ('50','2018-01-06 02:11:38','1','12','4','TangShi Cloth Sofa','1','');
INSERT INTO `django_admin_log` VALUES ('51','2018-01-06 02:14:34','1','12','5','LinShiMuYe Solid Wood Bed','1','');
INSERT INTO `django_admin_log` VALUES ('52','2018-01-06 02:16:54','1','12','6','XinJuMingJia Leather Sofa','1','');
INSERT INTO `django_admin_log` VALUES ('53','2018-01-06 02:18:32','1','12','7','MuBi Study Closet','1','');
INSERT INTO `django_admin_log` VALUES ('54','2018-01-06 02:20:22','1','12','8','GuangLan Cloth Sofa','1','');
INSERT INTO `django_admin_log` VALUES ('55','2018-01-06 02:21:59','1','12','9','LinShiMuYe Dining Table','1','');
INSERT INTO `django_admin_log` VALUES ('56','2018-01-06 02:24:25','1','12','10','Luxury Room Bedroom Base Set','1','');
INSERT INTO `django_admin_log` VALUES ('57','2018-01-06 02:26:03','1','12','11','GuangLan Living Room Base Set','1','');
INSERT INTO `django_admin_log` VALUES ('58','2018-01-06 02:27:30','1','12','12','Ikea Dining Table','1','');
INSERT INTO `django_admin_log` VALUES ('59','2018-01-07 13:05:46','1','12','13','Luxury Room Solid Wood Bed','1','');
INSERT INTO `django_admin_log` VALUES ('60','2018-01-07 13:09:19','1','12','14','Luxury Room Dining Closet','1','');
INSERT INTO `django_admin_log` VALUES ('61','2018-01-07 13:14:00','1','12','15','XingZhiJu Solid Wood Sofa','1','');
INSERT INTO `django_admin_log` VALUES ('62','2018-01-07 13:18:18','1','12','16','YouXuanMu Dining Closet','1','');
INSERT INTO `django_admin_log` VALUES ('63','2018-01-07 13:20:07','1','8','19','Dining Chair---Dining Room/Study','1','');
INSERT INTO `django_admin_log` VALUES ('64','2018-01-07 13:22:28','1','12','17','Ikea Dining Chair','1','');
INSERT INTO `django_admin_log` VALUES ('65','2018-01-07 13:25:45','1','12','18','LinShiMuYe Dining Table','1','');
INSERT INTO `django_admin_log` VALUES ('66','2018-01-07 13:31:07','1','12','19','XinJuMingJia Tea Table','1','');
INSERT INTO `django_admin_log` VALUES ('67','2018-01-07 13:35:38','1','12','20','GuangLan Tea Table','1','');
INSERT INTO `django_admin_log` VALUES ('68','2018-01-07 13:41:21','1','12','21','MuBi Dining Table','1','');
INSERT INTO `django_admin_log` VALUES ('69','2018-01-07 13:44:40','1','12','22','MeiJin Cloth Sofa','1','');
INSERT INTO `django_admin_log` VALUES ('70','2018-01-07 14:18:27','1','12','23','MuBi Solid Wood Bed','1','');
INSERT INTO `django_admin_log` VALUES ('71','2018-01-07 14:21:16','1','12','24','XinJuMingJia Cloth Sofa','1','');
INSERT INTO `django_admin_log` VALUES ('72','2018-01-07 14:25:23','1','12','25','XinJuMingJia Study Closet','1','');
INSERT INTO `django_admin_log` VALUES ('73','2018-01-07 14:29:20','1','12','26','GuangLan Closet','1','');
INSERT INTO `django_admin_log` VALUES ('74','2018-01-07 14:32:16','1','12','27','Ikea Dining Chair','1','');
INSERT INTO `django_admin_log` VALUES ('75','2018-01-07 14:34:52','1','12','28','Ikea Cloth Bed','1','');
INSERT INTO `django_admin_log` VALUES ('76','2018-01-07 14:37:40','1','12','29','XinJuMingJia Tea Table','1','');
INSERT INTO `django_admin_log` VALUES ('77','2018-01-07 14:41:04','1','12','30','Ikea Tea Table','1','');
INSERT INTO `django_admin_log` VALUES ('78','2018-01-07 14:45:20','1','12','3','Ikea Dining Table','2','已修改 name 。');
INSERT INTO `django_admin_log` VALUES ('79','2018-01-08 03:07:53','1','7','1','Sales','1','');
INSERT INTO `django_admin_log` VALUES ('80','2018-01-08 03:08:29','1','7','2','Each good every day','1','');
INSERT INTO `django_admin_log` VALUES ('81','2018-01-08 03:09:08','1','7','3','X sales','1','');
INSERT INTO `django_admin_log` VALUES ('82','2018-01-08 03:09:35','1','7','4','sofa','1','');
INSERT INTO `django_admin_log` VALUES ('83','2018-01-30 01:02:39','1','12','31','MuBi Study Closet','1','');
INSERT INTO `django_admin_log` VALUES ('84','2018-01-30 01:39:51','1','12','31','MuBi Study Closet','3','');
INSERT INTO `django_admin_log` VALUES ('85','2018-01-28 08:25:54','1','12','32','GuangLan Cloth Sofa','1','');
INSERT INTO `django_admin_log` VALUES ('86','2018-01-28 08:28:52','1','12','33','XinJuMingJia Cloth Sofa','1','');
INSERT INTO `django_admin_log` VALUES ('87','2018-01-28 08:32:01','1','12','34','#0 Factory Cloth Sofa','1','');
INSERT INTO `django_admin_log` VALUES ('88','2018-01-28 08:34:53','1','12','35','TangShi Solid Wood Sofa','1','');
INSERT INTO `django_admin_log` VALUES ('89','2018-01-28 08:38:08','1','12','36','MeiJin Solid Wood Sofa','1','');
INSERT INTO `django_admin_log` VALUES ('90','2018-01-28 08:44:03','1','12','37','XinJuMingJia Leather Sofa','1','');
INSERT INTO `django_admin_log` VALUES ('91','2018-01-28 08:47:07','1','12','38','XinJuMingJia Leather Sofa','1','');
INSERT INTO `django_admin_log` VALUES ('92','2018-01-28 08:50:02','1','12','39','XingZhiJu Leather Sofa','1','');
INSERT INTO `django_admin_log` VALUES ('93','2018-01-28 08:52:59','1','12','40','XingZhiJu TV Bench','1','');
INSERT INTO `django_admin_log` VALUES ('94','2018-01-28 09:01:19','1','12','41','Ikea TV Bench','1','');
INSERT INTO `django_admin_log` VALUES ('95','2018-01-28 09:04:18','1','12','42','Luxury Room TV Bench','1','');
INSERT INTO `django_admin_log` VALUES ('96','2018-01-28 09:08:12','1','12','43','Ikea Shoebox','1','');
INSERT INTO `django_admin_log` VALUES ('97','2018-01-28 09:11:32','1','12','44','QuanU Shoebox','1','');
INSERT INTO `django_admin_log` VALUES ('98','2018-01-28 09:14:41','1','12','45','QuanU Cloth Bed','1','');
INSERT INTO `django_admin_log` VALUES ('99','2018-01-28 09:17:01','1','12','46','#0 Factory Cloth Bed','1','');
INSERT INTO `django_admin_log` VALUES ('100','2018-01-28 09:19:57','1','12','47','Ikea Cloth Bed','1','');
INSERT INTO `django_admin_log` VALUES ('101','2018-01-28 09:22:56','1','12','48','QuanU Leather Bed','1','');
INSERT INTO `django_admin_log` VALUES ('102','2018-01-28 09:25:46','1','12','49','#0 Factory Leather Bed','1','');
INSERT INTO `django_admin_log` VALUES ('103','2018-01-28 09:28:12','1','12','50','XingZhiJu Mattress','1','');
INSERT INTO `django_admin_log` VALUES ('104','2018-01-28 09:30:30','1','12','51','TangShi Mattress','1','');
INSERT INTO `django_admin_log` VALUES ('105','2018-01-28 09:32:49','1','12','52','XinJuMingJia Mattress','1','');
INSERT INTO `django_admin_log` VALUES ('106','2018-01-28 10:39:42','1','12','53','Luxury Room Closet','1','');
INSERT INTO `django_admin_log` VALUES ('107','2018-01-28 10:42:05','1','12','54','XinJuMingJia Closet','1','');
INSERT INTO `django_admin_log` VALUES ('108','2018-01-28 10:44:59','1','12','55','XinJuMingJia Closet','1','');
INSERT INTO `django_admin_log` VALUES ('109','2018-01-28 10:47:50','1','12','56','TangShi Closet','1','');
INSERT INTO `django_admin_log` VALUES ('110','2018-01-28 10:51:19','1','12','57','Luxury Room Bedroom Base Set','1','');
INSERT INTO `django_admin_log` VALUES ('111','2018-01-28 10:54:00','1','12','58','TangShi Bedroom Base Set','1','');
INSERT INTO `django_admin_log` VALUES ('112','2018-01-28 10:57:23','1','12','59','QuanU Living Room Base Set','1','');
INSERT INTO `django_admin_log` VALUES ('113','2018-01-28 11:00:32','1','12','60','QuanU Living Room Base Set','1','');
INSERT INTO `django_admin_log` VALUES ('114','2018-01-28 11:03:36','1','12','61','MuBi Dining Chair','1','');
INSERT INTO `django_admin_log` VALUES ('115','2018-01-28 11:10:12','1','12','62','XinJuMingJia Dining Room Base Set','1','');
INSERT INTO `django_admin_log` VALUES ('116','2018-01-28 11:14:20','1','12','63','GuangLan Study Table','1','');

-- ----------------------------
-- Table structure for `django_content_type`
-- ----------------------------
DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(100) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `app_label` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_content_type
-- ----------------------------
INSERT INTO `django_content_type` VALUES ('1','log entry','admin','logentry');
INSERT INTO `django_content_type` VALUES ('2','permission','auth','permission');
INSERT INTO `django_content_type` VALUES ('3','group','auth','group');
INSERT INTO `django_content_type` VALUES ('4','content type','contenttypes','contenttype');
INSERT INTO `django_content_type` VALUES ('5','session','sessions','session');
INSERT INTO `django_content_type` VALUES ('6','User','myApp','user');
INSERT INTO `django_content_type` VALUES ('7','Ads','myApp','ad');
INSERT INTO `django_content_type` VALUES ('8','Categories','myApp','category');
INSERT INTO `django_content_type` VALUES ('9','Brand','myApp','brand');
INSERT INTO `django_content_type` VALUES ('10','Size','myApp','size');
INSERT INTO `django_content_type` VALUES ('11','Tag','myApp','tag');
INSERT INTO `django_content_type` VALUES ('12','Goods','myApp','furniture');
INSERT INTO `django_content_type` VALUES ('13','Cart Number','myApp','caritem');
INSERT INTO `django_content_type` VALUES ('14','Order','myApp','order');
INSERT INTO `django_content_type` VALUES ('15','Order Number','myApp','order_list');
INSERT INTO `django_content_type` VALUES ('16','Comment','myApp','comment');

-- ----------------------------
-- Table structure for `django_session`
-- ----------------------------
DROP TABLE IF EXISTS `django_session`;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime NOT NULL,
  PRIMARY KEY  (`session_key`),
  KEY `django_session_b7b81f0c` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_session
-- ----------------------------
INSERT INTO `django_session` VALUES ('1dqv2ogtpkj0clq417nadl0q3rsm5kij','OTEzMTQ5MjIxNGUzN2FlYjQ0N2I3NGExNzczYjdkMzkxNTFkMWE0YTqABJUDAAAAAAAAAH2ULg==','2018-01-13 01:41:12');
INSERT INTO `django_session` VALUES ('3v0ar0z5mcv3jdad8uf83htxznz70qc0','OTEzMTQ5MjIxNGUzN2FlYjQ0N2I3NGExNzczYjdkMzkxNTFkMWE0YTqABJUDAAAAAAAAAH2ULg==','2018-01-13 03:54:35');
INSERT INTO `django_session` VALUES ('91gx3wqgdpwwvhfxzd89mhkou67z1387','MWZjZjJhODY2MGMxMWFhODRkMzNmYzVhYjJmOGU2Yjg3NmU1YjQ1OTqABJVYAAAAAAAAAH2UKIwSX2F1dGhfdXNlcl9iYWNrZW5klIwpZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmSUjA1fYXV0aF91c2VyX2lklEsBdS4=','2018-01-13 07:02:35');
INSERT INTO `django_session` VALUES ('blw3ffwgwfxkp2930l0waug9mlem7a05','OTEzMTQ5MjIxNGUzN2FlYjQ0N2I3NGExNzczYjdkMzkxNTFkMWE0YTqABJUDAAAAAAAAAH2ULg==','2018-01-13 03:54:36');
INSERT INTO `django_session` VALUES ('gk5ujn25u3j57p41lgcu2p1vmy5re1uz','OTEzMTQ5MjIxNGUzN2FlYjQ0N2I3NGExNzczYjdkMzkxNTFkMWE0YTqABJUDAAAAAAAAAH2ULg==','2018-01-25 07:47:22');
INSERT INTO `django_session` VALUES ('k0k3uz1q6z9dqwqk3dfk5p0g54etbunj','OTEzMTQ5MjIxNGUzN2FlYjQ0N2I3NGExNzczYjdkMzkxNTFkMWE0YTqABJUDAAAAAAAAAH2ULg==','2018-01-13 01:41:49');
INSERT INTO `django_session` VALUES ('kp31l4alj6jbfpicrnz2nfeizfyc8l46','OTEzMTQ5MjIxNGUzN2FlYjQ0N2I3NGExNzczYjdkMzkxNTFkMWE0YTqABJUDAAAAAAAAAH2ULg==','2018-01-23 02:55:01');
INSERT INTO `django_session` VALUES ('pycioywkl6cr9lr77rtf5al60cb8t3l4','OTEzMTQ5MjIxNGUzN2FlYjQ0N2I3NGExNzczYjdkMzkxNTFkMWE0YTqABJUDAAAAAAAAAH2ULg==','2018-01-13 01:43:32');
INSERT INTO `django_session` VALUES ('uuf7hnvjefsiaf2xa0k8cqgkvd1mu460','OTEzMTQ5MjIxNGUzN2FlYjQ0N2I3NGExNzczYjdkMzkxNTFkMWE0YTqABJUDAAAAAAAAAH2ULg==','2018-01-25 07:47:21');
INSERT INTO `django_session` VALUES ('x6qf4qdx46kbcs9yaf6gs3hkzedutee7','OTEzMTQ5MjIxNGUzN2FlYjQ0N2I3NGExNzczYjdkMzkxNTFkMWE0YTqABJUDAAAAAAAAAH2ULg==','2018-01-13 03:54:35');
INSERT INTO `django_session` VALUES ('zu29qd5v3ep46mq00c8545yb0nluvyll','OTEzMTQ5MjIxNGUzN2FlYjQ0N2I3NGExNzczYjdkMzkxNTFkMWE0YTqABJUDAAAAAAAAAH2ULg==','2018-01-13 01:40:58');

-- ----------------------------
-- Table structure for `myApp_ad`
-- ----------------------------
DROP TABLE IF EXISTS `myApp_ad`;
CREATE TABLE `myApp_ad` (
  `id` int(11) NOT NULL auto_increment,
  `title` varchar(50) NOT NULL,
  `image_url` varchar(100) NOT NULL,
  `date_publish` datetime NOT NULL,
  `index` int(11) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of myApp_ad
-- ----------------------------
INSERT INTO `myApp_ad` VALUES ('1','Crazy On Sale!!!','ad/2017/05/ad1.gif','2018-01-08 03:07:53','1');
INSERT INTO `myApp_ad` VALUES ('2','One good per day!','ad/2017/05/ad2.jpg','2018-01-08 03:08:29','2');
INSERT INTO `myApp_ad` VALUES ('3','XX huge discount!','ad/2017/05/ad3.jpg','2018-01-08 03:09:08','3');
INSERT INTO `myApp_ad` VALUES ('4','Sofa','ad/2017/05/ad4.jpg','2018-01-08 03:09:35','4');

-- ----------------------------
-- Table structure for `myApp_brand`
-- ----------------------------
DROP TABLE IF EXISTS `myApp_brand`;
CREATE TABLE `myApp_brand` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(30) NOT NULL,
  `index` int(11) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of myApp_brand
-- ----------------------------
INSERT INTO `myApp_brand` VALUES ('1','QuanU','2');
INSERT INTO `myApp_brand` VALUES ('2','#0 Factory','3');
INSERT INTO `myApp_brand` VALUES ('3','Luxury Room','4');
INSERT INTO `myApp_brand` VALUES ('4','YouXuanMu','5');
INSERT INTO `myApp_brand` VALUES ('5','TangShi','6');
INSERT INTO `myApp_brand` VALUES ('6','XinJuMingJia','7');
INSERT INTO `myApp_brand` VALUES ('7','Ikea','8');
INSERT INTO `myApp_brand` VALUES ('8','MuBi','9');
INSERT INTO `myApp_brand` VALUES ('9','GuangLan','10');
INSERT INTO `myApp_brand` VALUES ('10','MeiJin','11');
INSERT INTO `myApp_brand` VALUES ('11','XingZhiJu','12');
INSERT INTO `myApp_brand` VALUES ('12','LinShiMuYe','1');

-- ----------------------------
-- Table structure for `myApp_caritem`
-- ----------------------------
DROP TABLE IF EXISTS `myApp_caritem`;
CREATE TABLE `myApp_caritem` (
  `id` int(11) NOT NULL auto_increment,
  `furniture_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `sum_price` double NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `myApp_caritem_05beb0c3` (`furniture_id`),
  CONSTRAINT `furniture_id_refs_id_135b738e` FOREIGN KEY (`furniture_id`) REFERENCES `myApp_furniture` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of myApp_caritem
-- ----------------------------

-- ----------------------------
-- Table structure for `myApp_category`
-- ----------------------------
DROP TABLE IF EXISTS `myApp_category`;
CREATE TABLE `myApp_category` (
  `id` int(11) NOT NULL auto_increment,
  `typ` varchar(20) NOT NULL,
  `name` varchar(30) NOT NULL,
  `index` int(11) NOT NULL,
  `west_east` int(11) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of myApp_category
-- ----------------------------
INSERT INTO `myApp_category` VALUES ('1','Living Room','Cloth Sofa','1','0');
INSERT INTO `myApp_category` VALUES ('2','Living Room','Solid Wood Sofa','2','0');
INSERT INTO `myApp_category` VALUES ('3','Living Room','Leather Sofa','3','0');
INSERT INTO `myApp_category` VALUES ('4','Living Room','TV Bench','4','0');
INSERT INTO `myApp_category` VALUES ('5','Living Room','Tea Table','5','0');
INSERT INTO `myApp_category` VALUES ('6','Living Room','Shoebox','6','0');
INSERT INTO `myApp_category` VALUES ('7','Bedroom','Solid Wood Bed','7','0');
INSERT INTO `myApp_category` VALUES ('8','Bedroom','Cloth Bed','8','0');
INSERT INTO `myApp_category` VALUES ('9','Bedroom','Leather Bed','9','0');
INSERT INTO `myApp_category` VALUES ('10','Bedroom','Mattress','10','0');
INSERT INTO `myApp_category` VALUES ('11','Bedroom','Closet','11','0');
INSERT INTO `myApp_category` VALUES ('12','Dining Room/Study','Dining Table','12','1');
INSERT INTO `myApp_category` VALUES ('13','Dining Room/Study','Dining Closet','13','0');
INSERT INTO `myApp_category` VALUES ('14','Dining Room/Study','Study Table','14','0');
INSERT INTO `myApp_category` VALUES ('15','Dining Room/Study','Study Closet','15','0');
INSERT INTO `myApp_category` VALUES ('16','Furniture Base Set','Bedroom Base Set','16','0');
INSERT INTO `myApp_category` VALUES ('17','Furniture Base Set','Living Room Base Set','17','0');
INSERT INTO `myApp_category` VALUES ('18','Furniture Base Set','Dining Room Base Set','18','0');
INSERT INTO `myApp_category` VALUES ('19','Dining Room/Study','Dining Chair','19','0');

-- ----------------------------
-- Table structure for `myApp_comment`
-- ----------------------------
DROP TABLE IF EXISTS `myApp_comment`;
CREATE TABLE `myApp_comment` (
  `comm` varchar(100) NOT NULL,
  `fur_id` int(11) NOT NULL,
  `id` int(11) NOT NULL auto_increment,
  `user_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=103 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of myApp_comment
-- ----------------------------



INSERT INTO `myApp_comment` VALUES ('Like this baby','1','44','3','10');
INSERT INTO `myApp_comment` VALUES ('Yes','2','45','3','10');
INSERT INTO `myApp_comment` VALUES ('Good quality!','1','46','5','11');
INSERT INTO `myApp_comment` VALUES ('can be incorporated, very useful','2','47','5','11');
INSERT INTO `myApp_comment` VALUES ('Family loves','2','48','5','12');
INSERT INTO `myApp_comment` VALUES ('Like it','2','49','4','13');
INSERT INTO `myApp_comment` VALUES ('beautiful','4','50','4','13');
INSERT INTO `myApp_comment` VALUES ('Login','1','51','6','14');
INSERT INTO `myApp_comment` VALUES ('Thieves like, quality leveraged','2','52','6','14');
INSERT INTO `myApp_comment` VALUES ('With it, no longer afraid of insomnia friends ~','5','53','6','14');
INSERT INTO `myApp_comment` VALUES ('With it, no longer afraid of sleeping on sofa','8','54','6','15');
INSERT INTO `myApp_comment` VALUES ('Original, you deserve!','1','55','7','16');
INSERT INTO `myApp_comment` VALUES ('Receiving function','2','56','7','16');
INSERT INTO `myApp_comment` VALUES ('Tables and chairs are good, beautiful','3','57','7','16');
INSERT INTO `myApp_comment` VALUES ('much like','1','58','8','17');
INSERT INTO `myApp_comment` VALUES ('Atmosphere','3','59','8','17');
INSERT INTO `myApp_comment` VALUES ('Like it!','2','60','9','18');
INSERT INTO `myApp_comment` VALUES ('Effective','4','61','9','18');
INSERT INTO `myApp_comment` VALUES ('Awesome pinch','5','62','9','19');
INSERT INTO `myApp_comment` VALUES ('Like','1','63','3','20');
INSERT INTO `myApp_comment` VALUES ('Very useful','2','64','3','41');
INSERT INTO `myApp_comment` VALUES ('Very atmospheric','4','65','3','41');
INSERT INTO `myApp_comment` VALUES ('Sit comfortably','8','66','3','42');
INSERT INTO `myApp_comment` VALUES ('Everything cheap!','5','67','3','43');
INSERT INTO `myApp_comment` VALUES ('Like this baby!','4','68','4','44');
INSERT INTO `myApp_comment` VALUES ('soft and comfortable, very satisfied','5','69','4','44');
INSERT INTO `myApp_comment` VALUES ('Being leather','6','70','5','45');
INSERT INTO `myApp_comment` VALUES ('Satisfied!','5','71','5','46');
INSERT INTO `myApp_comment` VALUES ('convenient','9','72','5','47');
INSERT INTO `myApp_comment` VALUES ('This bed is as good as I expected','10','73','5','48');
INSERT INTO `myApp_comment` VALUES ('Yes','26','74','5','49');
INSERT INTO `myApp_comment` VALUES ('Pretty','15','75','5','49');
INSERT INTO `myApp_comment` VALUES ('very satisfied with a shopping','3','76','5','50');
INSERT INTO `myApp_comment` VALUES ('Perfect Study Closet!','7','77','4','51');
INSERT INTO `myApp_comment` VALUES ('Bought Dream Bed!','13','78','4','51');
INSERT INTO `myApp_comment` VALUES ('bigger is better','7','79','3','52');
INSERT INTO `myApp_comment` VALUES ('Most texture!','6','80','7','53');
INSERT INTO `myApp_comment` VALUES ('Comfort!','8','81','7','53');
INSERT INTO `myApp_comment` VALUES ('Delivery soon','18','82','7','54');
INSERT INTO `myApp_comment` VALUES ('Very retro cabinet, like','14','83','8','55');
INSERT INTO `myApp_comment` VALUES ('six sets, very useful','10','84','8','56');
INSERT INTO `myApp_comment` VALUES ('Landscape','12','85','8','56');
INSERT INTO `myApp_comment` VALUES ('Good quality','20','86','8','57');
INSERT INTO `myApp_comment` VALUES ('Specially Strong!','9','87','8','58');
INSERT INTO `myApp_comment` VALUES ('Solid wood, you can rest assured to buy','15','88','9','59');
INSERT INTO `myApp_comment` VALUES ('looks good grades','16','89','9','59');
INSERT INTO `myApp_comment` VALUES ('very useful','10','90','9','60');
INSERT INTO `myApp_comment` VALUES ('Let me be surprised, the quality is very good','13','91','9','61');
INSERT INTO `myApp_comment` VALUES ('Tough tables','9','92','9','61');
INSERT INTO `myApp_comment` VALUES ('The whole family loves this Study Closet','7','93','6','40');
INSERT INTO `myApp_comment` VALUES ('Very good Dining Table','4','94','6','39');
INSERT INTO `myApp_comment` VALUES ('beautiful and practical','2','95','6','38');
INSERT INTO `myApp_comment` VALUES ('Looks very luxurious','15','96','6','62');
INSERT INTO `myApp_comment` VALUES ('Little fresh furniture!','17','97','6','63');
INSERT INTO `myApp_comment` VALUES ('Any price, good','11','98','6','64');
INSERT INTO `myApp_comment` VALUES ('Very simple table, but very useful','12','99','3','65');
INSERT INTO `myApp_comment` VALUES ('Very good','7','100','8','66');
INSERT INTO `myApp_comment` VALUES ('Yes','5','101','8','66');
INSERT INTO `myApp_comment` VALUES ('exactly','24','102','9','67');





-- ----------------------------
-- Table structure for `myApp_furniture`
-- ----------------------------
DROP TABLE IF EXISTS `myApp_furniture`;
CREATE TABLE `myApp_furniture` (
  `id` int(11) NOT NULL auto_increment,
  `category_id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `brand_id` int(11) NOT NULL,
  `old_price` double NOT NULL,
  `new_price` double NOT NULL,
  `discount` double NOT NULL,
  `desc` varchar(100) NOT NULL,
  `sales` int(11) NOT NULL,
  `num` int(11) NOT NULL,
  `image_url_i` varchar(100) NOT NULL,
  `image_url_l` varchar(100) NOT NULL,
  `image_url_m` varchar(100) NOT NULL,
  `image_url_r` varchar(100) NOT NULL,
  `image_url_c` varchar(100) NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `myApp_furniture_6f33f001` (`category_id`),
  KEY `myApp_furniture_5afadb1e` (`brand_id`),
  CONSTRAINT `brand_id_refs_id_88dd050b` FOREIGN KEY (`brand_id`) REFERENCES `myApp_brand` (`id`),
  CONSTRAINT `category_id_refs_id_4d6de1e7` FOREIGN KEY (`category_id`) REFERENCES `myApp_category` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of myApp_furniture
-- ----------------------------

INSERT INTO `myApp_furniture` VALUES ('1','7','Log Bed Chinese Bedroom furniture Double Bed High Storage Bed Marriage Bed High Box Bed','12','3298','2900','1','Rubber wood log box high box 40.0kg','213','3321','furniture/2017/05/1_c.jpg','furniture/2017/05/1_i.jpg','furniture/2017/05/1_l.jpg','furniture/2017/05/1_m.jpg','furniture/2017/05/1_c_QVQYGMS.jpg');
INSERT INTO `myApp_furniture` VALUES ('2','7','Main Bedroom Double Walnut Bed High Storage Drawer Bed Modern Chinese Wedding Bed','3','4299','3788','1','Gross weight: 65 Whether with or without furniture: no furniture structure: frame structure of box frame structure: engraving','445','6443','furniture/2017/05/2_i.jpg','furniture/2017/05/2_l.jpg','furniture/2017/05/2_m.jpg','furniture/2017/05/2_r.jpg','furniture/2017/05/2_c.jpg');
INSERT INTO `myApp_furniture` VALUES ('3','12','Nordic Solid Wood Dining Table Chair Oak Rectangular Table furniture','7','1999','1699','1','Style Positioning: Artistic Style Type of wooden material: whether the oak with roller: No Packing: Assembly weight: 35 Is it retractable: Non-retractable number of people: 6 people','248','4388','furniture/2017/05/4_i.jpg','furniture/2017/05/4_l.jpg','furniture/2017/05/4_m.jpg','furniture/2017/05/4_r.jpg','furniture/2017/05/4_c.jpg');
INSERT INTO `myApp_furniture` VALUES ('4','1','Cloth Sofa Removable Simple Modern Living Room furniture Corner U-shaped Sofa','5','3199','2899','1','Style positioning: Economic pattern: whether plant flowers with storage space: Yes Filler: Sponge gross weight: 136 Sofa combination form: U-shaped whether to assemble: Whole additional functions: Mobile','244','5331','furniture/2017/05/3_i.jpg','furniture/2017/05/3_l.jpg','furniture/2017/05/3_m.jpg','furniture/2017/05/3_r.jpg','furniture/2017/05/4_c_wtnmVob.jpg');
INSERT INTO `myApp_furniture` VALUES ('5','7','LinShiMuYe Modern Chinese Wooden Bed 1.5m 1.8 Adult Double Bed Simple Wedding Bed Bedroom furniture','12','4677','4500','1','[Unique Design] Atmospheric tabby wood color texture, elegant bedside curve [excellent quality] Thailand imported rubber wood, strong bearing double cross structure [after-sales worry-free] Thousand City distribution installation, 9-year-old, very home quality assurance','521','4221','furniture/2017/05/7_i.jpg','furniture/2017/05/7_l.jpg','furniture/2017/05/7_m.jpg','furniture/2017/05/7_r.jpg','furniture/2017/05/7_i_9Q74K9l.jpg');
INSERT INTO `myApp_furniture` VALUES ('6','3','XingZhiJu/Authentic Leather Sofa Triples/Oil Wax Leather Down Couch Leather Single','6','9884','8999','1','Extreme home certification [Quality Online Shop]: 7 years of good stores, authoritative certification, buy back worry-free business commitment: to provide material fidelity service, such as material and description does not match can be compensated 200%','140','2215','furniture/2017/05/8_i.jpg','furniture/2017/05/8_l.jpg','furniture/2017/05/8_m.jpg','furniture/2017/05/8_r.jpg','furniture/2017/05/8_r_7UIDB74.jpg');
INSERT INTO `myApp_furniture` VALUES ('7','15','American pure wood Study Closet double-door glass door with drawer display cabinet ash bookcase decorated cabinet showcase','8','8122','5388','1','Extreme home certification [Quality Online Shop]: 7-year-old shop, authoritative certification, buy without worry','101','633','furniture/2017/05/10_i.jpg','furniture/2017/05/10_l.jpg','furniture/2017/05/9_m.jpg','furniture/2017/05/9_r.jpg','furniture/2017/05/10_c.jpg');
INSERT INTO `myApp_furniture` VALUES ('8','1','[US-original design] American country furniture cotton pull buckle three Cloth Sofa combination','9','8799','7999','1','[Original design] [American tone trend mix and match] [export cotton and linen fabric] [hand-pull rivets] very home certification [Quality Online Shop]: 11 years of good shop, authoritative certification, buy back without worry','260','5331','furniture/2017/05/11_i.jpg','furniture/2017/05/11_l.jpg','furniture/2017/05/11_m.jpg','furniture/2017/05/11_r.jpg','furniture/2017/05/11_c.jpg');
INSERT INTO `myApp_furniture` VALUES ('9','12','LinShiMuYes Modern Scaling, Dining Table, Small Size Dining Table Chair, Tempered Glass Table','12','2799','2599','1','Stretching function piano paint tempered glass fillet processing business commitment: to purchase home delivery and installation service, do not perform up to 300 yuan to pay compensation','325','533','furniture/2017/05/12_i.jpg','furniture/2017/05/12_l.jpg','furniture/2017/05/12_m.jpg','furniture/2017/05/12_r.jpg','furniture/2017/05/12_c.jpg');
INSERT INTO `myApp_furniture` VALUES ('10','16','Luxury furniture Suite Bedroom Suite furniture Bedroom Bed Closet Combination Set Package Six-piece Set','3','18999','15000','1','Six-piece set includes: a 1.5 or 1.8 meters bed + 2 bedside cabinets + a Closet + a dressing table + a makeup stool; row skeleton bed can be equipped with Mattress20CM thick, high box can be equipped with 5CM thick glue-free Mat; Unmatched Mattress to be purchased separately. Taobao official designated city free on-site package installation.','57','578','furniture/2017/05/13_i.jpg','furniture/2017/05/13_l.jpg','furniture/2017/05/13_m.jpg','furniture/2017/05/13_r.jpg','furniture/2017/05/13_c.jpg');
INSERT INTO `myApp_furniture` VALUES ('11','17','Marble Tea TableTV Bench Set Simple Modern Living Room furniture Small Table Telescopic Tea Table','9','9969','8799','1','[About us: professional production of Living Room furniture for fifteen years] [About products: high-grade high-temperature paint + 4CM marble countertops + unique and innovative design, allowing you to enjoy high-quality furniture] [Services: Price is not the only measure of the standard, Of course it is also very important, but the quality of the product and after-sales service','104','252','furniture/2017/05/15_i.jpg','furniture/2017/05/15_l.jpg','furniture/2017/05/15_m.jpg','furniture/2017/05/15_r.jpg','furniture/2017/05/15_c.jpg');
INSERT INTO `myApp_furniture` VALUES ('12','12','The IKEA Solid Wood Dining Table Chair Combining Yorkshires Tables and Four Chairs into Sets of Minimalist Modern Restaurant Homes','7','799','779','1','Solid pine wood, natural materials, timeless. Can sit 4 people.','221','422','furniture/2017/05/17_i.jpg','furniture/2017/05/17_l.jpg','furniture/2017/05/17_m.jpg','furniture/2017/05/17_r.jpg','furniture/2017/05/17_c.jpg');
INSERT INTO `myApp_furniture` VALUES ('13','7','Olympia Solid Wood Bed double bed neo-classical bed 1.8 meters carved American bed wedding bed European bed','3','5688','4599.99','1','Beautiful wood frame exquisite elegance','61','442','furniture/2017/05/18_i_POr8fIG.jpg','furniture/2017/05/18_l_ZFo8iVj.jpg','furniture/2017/05/18_m_NC4iRSP.jpg','furniture/2017/05/18_r_k38jqtJ.jpg','furniture/2017/05/18_c_2SQuhpZ.jpg');
INSERT INTO `myApp_furniture` VALUES ('14','13','American furniture European pastoral rural entrance cabinets Mediterranean dining cabinets cabinets cabinets sideboard American dining side','3','1350','950','1','Nostalgic retro is synonymous with us, years of quiet is our feeling ~ hand-painted, green Dabao paint, meet the standard density board, House from the material to the process to the design, old is not just a representation, and It is deep bone marrow! 15 days no reason to return, share Mito and there is a small surprise oh ~ feel together','123','557','furniture/2017/05/19_i.jpg','furniture/2017/05/19_r.jpg','furniture/2017/05/19_m.jpg','furniture/2017/05/19_r_CXD8LLh.jpg','furniture/2017/05/19_c.jpg');
INSERT INTO `myApp_furniture` VALUES ('15','2','Solid Chinese Sofa New Chinese Phoebe Sofa Set True Cow Leather Sofa Living Room furniture','11','13990','10230','1','Choose the first layer of real leather cow with yellow cattle to build with Nanmu import Nanmu, 21 years experience in solid wood furniture production.Feather air permeability seat bag, durable and create high-quality villa furniture.Max 500 city can enjoy free home delivery and installation services ,Troubleshoot your transportation installation, three year warranty period allows you to purchase','47','777','furniture/2017/05/20_i.jpg','furniture/2017/05/20_l.jpg','furniture/2017/05/20_m.jpg','furniture/2017/05/20_r.jpg','furniture/2017/05/20_c.jpg');
INSERT INTO `myApp_furniture` VALUES ('16','13','European American Shoebox Solid Wood furniture Chinese Foyer Door Closet Gold Cabinets Close Closet','4','1542','1255','1','Material: frame drawers are solid wood, strong bearing capacity, not easy to break, Dabao green paint, durable, strong sealing. Packaging: pearl cotton, foam, cardboard boxes, wooden frame, four-fold packaging so that pro-shopping Worry! Installation: Buy Now, No need to install, save time, worry and effort!','318','882','furniture/2017/05/21_i.jpg','furniture/2017/05/21_l.jpg','furniture/2017/05/21_m.jpg','furniture/2017/05/21_r.jpg','furniture/2017/05/21_c.jpg');
INSERT INTO `myApp_furniture` VALUES ('17','19','ZOMO Windsor Chair Solid Wood Dining Chair White Oak Dining Chair Solid Wood furniture Dining Table Chair','7','999','499','1','This paragraph Dining Chair adopts American imported super oak, not adulterated plates such as MDF, MDF, particle board, etc. British classic seats from the end of the 17th century! Sounds! Designed with a solid wood screw, each detail is so natural. The seat surface is a saddle shape, which makes peoples body pressure','234','977','furniture/2017/05/22_i.jpg','furniture/2017/05/22_l.jpg','furniture/2017/05/22_m.jpg','furniture/2017/05/22_r.jpg','furniture/2017/05/22_c.jpg');
INSERT INTO `myApp_furniture` VALUES ('18','12','Retro furniture New Chinese Tea Table Wood Table Kung Fu Tea Table Irregular Big Table Wood All Wood Dining','12','2399','1799','1','Manufactured with solid wood and high-quality steel pipe, and the exterior is made of Nippon Environmental Wood Coatings. It is safe and environmentally friendly. It was supervised by masters for decades. The whole structure was made of concrete, solid wood splice without fiberboard. Please rest assured to buy.This product supports private customization, factory direct sales, affordable.','212','771','furniture/2017/05/23_i.png','furniture/2017/05/23_l.png','furniture/2017/05/23_m.png','furniture/2017/05/23_r.png','furniture/2017/05/23_c.png');
INSERT INTO `myApp_furniture` VALUES ('19','5','Multifunctional Liftable Tea Table Wooden Storage Small Living Room Tea Table Modern Simple Tea Table furniture','6','1077','997','1','Bulk storage, lifting function, fashion models','231','991','furniture/2017/05/24_i.jpg','furniture/2017/05/24_l.jpg','furniture/2017/05/24_m.jpg','furniture/2017/05/24_m_ZtMQGH5.jpg','furniture/2017/05/24_r.jpg');
INSERT INTO `myApp_furniture` VALUES ('20','5','Idyllic Tea Table Solid wood ivory white fashion simple Living Room Tea Table combo specials explosions snapped','9','1600','800','1','[Spot early purchase early delivery arrangements] own factory production of online direct sales, reduce costs from the source, directly to consumers benefit.','330','9011','furniture/2017/05/25_i.jpg','furniture/2017/05/25_l.jpg','furniture/2017/05/25_m.jpg','furniture/2017/05/25_r.jpg','furniture/2017/05/25_c.jpg');
INSERT INTO `myApp_furniture` VALUES ('21','12','Mediterranean dining table 8 person table European style round table fashion explosion limit buy','8','1842','1533','1','The countrys top 300 cities package delivery package installation, warranty for three years. The fight is service and quality! Round table can be done by 8 people, beautiful atmosphere','123','1774','furniture/2017/05/26_i.jpg','furniture/2017/05/26_l.jpg','furniture/2017/05/26_m.jpg','furniture/2017/05/26_r.jpg','furniture/2017/05/26_i_UNWzadQ.jpg');
INSERT INTO `myApp_furniture` VALUES ('22','1','Library Small Living Room Solid Wood Mediterranean Mediterranean Country Style Single Three Persons Packing','10','3188','2588','1','[Original design][American tone trend mix and match][Export cotton and linen fabric][Pure handmade buckle copper nail]','253','1233','furniture/2017/05/27_i.jpg','furniture/2017/05/27_l.jpg','furniture/2017/05/27_m.jpg','furniture/2017/05/27_r.jpg');
INSERT INTO `myApp_furniture` VALUES ('23','7','All Solid Wood Bed 1.8m White Mediterranean Bed Nordic Double Bed Rural Bed 1.5m','8','2566','1999','1','Extreme home certification [quality factory]: higher than the national standard, buy back without worry','132','442','furniture/2017/05/28_i.jpg','furniture/2017/05/28_l.jpg','furniture/2017/05/28_m.jpg','furniture/2017/05/28_r.jpg','furniture/2017/05/28_c.jpg');
INSERT INTO `myApp_furniture` VALUES ('24','1','Putting Cloth Sofas Living Rooms Mediterranean Pastoral Style Simple Triple Units','6','2588','1988','1','[Original design][American tone trend mix and match][Export cotton and linen fabrics] Pure handmade buckle copper nails','276','911','furniture/2017/05/29_i.jpg','furniture/2017/05/29_l.jpg','furniture/2017/05/29_m.jpg','furniture/2017/05/29_r.jpg','furniture/2017/05/29_c.jpg');
INSERT INTO `myApp_furniture` VALUES ('25','15','Mediterranean Style Study Table American Garden Study Closet European Childrens Computer Desk furniture Bookshelf Combination Solid Wood','6','2999','1788','1','Solid Wood Bed which can be interchanged in the direction of the corner can be securely loaded in most parts of the country to the logistics center in the prefecture-level city. Please contact customer service before taking pictures in some county and remote areas','72','662','furniture/2017/05/30_i.jpg','furniture/2017/05/30_l.jpg','furniture/2017/05/30_m.jpg','furniture/2017/05/30_r.jpg','furniture/2017/05/30_c.jpg');
INSERT INTO `myApp_furniture` VALUES ('26','11','Shortish 253 Mediterranean Vintage Painted Three Closet American Solid Wood European Vintage Engraved Sheets','9','4100','3988','1','Factory direct sales, ultra-low-cost concessions to customers, quality and quality assurance. Frame structure, simple installation, strong and durable. European pastoral style, fresh and natural, beautiful and elegant. Exquisite atmosphere design, beautiful delicate carving, keeping up with fashion trends. Home must be worthy of your own. Environmental health, people-oriented,','94','991','furniture/2017/05/31_i.jpg','furniture/2017/05/31_l.jpg','furniture/2017/05/31_m.jpg','furniture/2017/05/31_r.jpg','furniture/2017/05/31_c.jpg');
INSERT INTO `myApp_furniture` VALUES ('27','19','Nordic IKEA Japanese solid wood bentwood chair backrest Dining Chair Dining Chair home computer chair Office Study Table','7','311','199','1','A large number of repeat customers can purchase Nordic Qumu craftsmanship in a variety of colors, such as Dining Chair, Conference Chair, Computer Chair, Study Table Chair, etc.','142','991','furniture/2017/05/32_i.jpg','furniture/2017/05/32_l.jpg','furniture/2017/05/32_m.jpg','furniture/2017/05/32_r.jpg','furniture/2017/05/32_c.jpg');
INSERT INTO `myApp_furniture` VALUES ('28','8','Nordic Cloth Bed IKEA Double Bed 1.8m Small Family Master Bedroom Wedding Bed Japanese Simple Modern Removable','7','3500','2699','1','Extreme home certification [quality factory]: higher than the national standard, buy back without worry','62','913','furniture/2017/05/33_i.jpg','furniture/2017/05/33_l.jpg','furniture/2017/05/33_m.jpg','furniture/2017/05/33_r.jpg','furniture/2017/05/33_c.jpg');
INSERT INTO `myApp_furniture` VALUES ('29','5','Nordic Style TV Benchs Living Room furniture Tea TableTV Bench Combination','6','2588','1922','1','Very home certification [Quality Online Shop]: 11 years of good shop, authoritative certification, buy back without worry','23','1331','furniture/2017/05/34_i.jpg','furniture/2017/05/34_l.jpg','furniture/2017/05/34_m.jpg','furniture/2017/05/34_r.jpg','furniture/2017/05/34_c.jpg');
INSERT INTO `myApp_furniture` VALUES ('30','5','Nordic Living Room Modern Solid Wood Rectangular Double Storage Tea Table Japanese Ikea Small Size Oak Tea Table','7','1500','899','1','Full white oak high value for money, practical and beautiful','163','1244','furniture/2017/05/35_i.jpg','furniture/2017/05/35_l.jpg','furniture/2017/05/35_m.jpg','furniture/2017/05/35_r.jpg','furniture/2017/05/35_c.jpg');
INSERT INTO `myApp_furniture` VALUES ('32','1','Small Size Cloth Sofa Nordic Simple Washable Living Room Single Double Triple Bedroom Sofa','9','950','780','1','0 yuan package delivery to the downstairs, 3-year warranty, 90 days no reason to return! [High-quality materials] cotton and linen process, solid wood frame, high-quality sponge seat package [unique design] large area of ​​smooth lines, ergonomic lines Modeling! Comfortable home options.','164','885','furniture/2017/05/36_i.jpg','furniture/2017/05/36_l.jpg','furniture/2017/05/36_m.jpg','furniture/2017/05/36_r.jpg','furniture/2017/05/36_c.jpg');
INSERT INTO `myApp_furniture` VALUES ('33','1','Cloth Sofa Removable Modern Simple Size Sofa Sofa with Fabric Sofa Corner furniture','6','3500','2355','1','The new promotional price of 2080 grab three bags at home can be free to change the color washable leather sofa with easy to clean natural fresh high density sponge modern fashion custom-made flexible multicolor optional','92','996','furniture/2017/05/37_i.jpg','furniture/2017/05/37_l.jpg','furniture/2017/05/37_m.jpg','furniture/2017/05/37_r.jpg','furniture/2017/05/37_c.jpg');
INSERT INTO `myApp_furniture` VALUES ('34','1','Nordic Cloth Sofa Living Rooms modern minimalist size sofa washable double down duvet','2','3599','2800','1','Down Feather Filling [Fully removable and washable] Classic buckle','123','976','furniture/2017/05/38_i.jpg','furniture/2017/05/38_l.jpg','furniture/2017/05/38_m.jpg','furniture/2017/05/38_r.jpg','furniture/2017/05/38_c.jpg');
INSERT INTO `myApp_furniture` VALUES ('35','2','Solid Wood Sofa combination of camphor wood sofa multifunctional corner storage new Chinese antique carved Living Room furniture','5','4999','4500','1','The use of camphor wood as a raw material, the characteristics of camphor wood for its own aroma to make it have practical functions, fine wood, delicate texture, beautiful pattern. Hard texture and at the same time have mosquito repellent effect!','88','443','furniture/2017/05/39_i.jpg','furniture/2017/05/39_l.jpg','furniture/2017/05/39_m.jpg','furniture/2017/05/39_r.jpg','furniture/2017/05/39_c.jpg');
INSERT INTO `myApp_furniture` VALUES ('36','2','Solid Wood Sofas New Chinese-style Solid Wood Fabric furniture Combination Chaise Corner','10','5555','4300','1','must grab Reasons: ★1、Solid Wood Sofa: The main frame is selected from ash wood, exquisitely carved handrails; ★2. A variety of combinations of different fabrics are available to meet different home needs! There are very many homes in the designated city package delivery installation!','98','664','furniture/2017/05/40_i.jpg','furniture/2017/05/40_l.jpg','furniture/2017/05/40_m.jpg','furniture/2017/05/40_r.jpg','furniture/2017/05/40_c.jpg');
INSERT INTO `myApp_furniture` VALUES ('37','3','Minimalist Nordic Leather Sofas Living Rooms Living Room Single Double Triple Leather Sofa','6','3500','2900','1','Nordic style leather first layer leather modern minimalist commercial, home home sofa sale worry-free','21','331','furniture/2017/05/41_i.jpg','furniture/2017/05/41_l.jpg','furniture/2017/05/41_m.jpg','furniture/2017/05/41_r.jpg','furniture/2017/05/41_c.jpg');
INSERT INTO `myApp_furniture` VALUES ('38','3','Authentic Leather Sofa Jane Beauty Wood Sofa Sofa Living Room Sofa 123 Combination','6','7990','7500','1','Extreme home certification [brand franchise]: brand authorization, genuine protection','101','771','furniture/2017/05/42_i.jpg','furniture/2017/05/42_l.jpg','furniture/2017/05/42_m.jpg','furniture/2017/05/42_r.jpg','furniture/2017/05/42_c.jpg');
INSERT INTO `myApp_furniture` VALUES ('39','3','European true Leather Sofas minimalist first layer leather combination luxury villa villa wood carved furniture Pisha','11','15000','13970','1','Designed for large and small flats, large flat floor and duplex type rooms. This time focused on the use of all solid wood carved and leather materials, to create a leather art sofa. It provides quality living people with affordable, high-quality leather furniture selling point: Traditional handmade solid wood furniture carving, the first layer of real leather wear-resistant and durable, easy to clean. Factory direct','72','441','furniture/2017/05/43_i.jpg','furniture/2017/05/43_l.jpg','furniture/2017/05/43_m.jpg','furniture/2017/05/43_r.jpg','furniture/2017/05/43_c.jpg');
INSERT INTO `myApp_furniture` VALUES ('40','4','Nordic Style TV Benchs Living Room furniture Tea TableTV Bench Combination','11','1600','1500','1','Very home certified [Quality Online Shop]: 11-year-old shop, authoritative certification, buy and worry-free','102','881','furniture/2017/05/44_i.jpg','furniture/2017/05/44_l.jpg','furniture/2017/05/44_m.jpg','furniture/2017/05/44_r.jpg','furniture/2017/05/44_c.jpg');
INSERT INTO `myApp_furniture` VALUES ('41','4','Nordic Solid Wood TV Bench Simple Living Room Tea Table Combination White Oak Audio-visual Cabinet Japanese furniture','7','3500','2900','1','Extreme home certification [Quality Online Shop]: 10 years of good store, authoritative certification, buy and worry free','150','442','furniture/2017/05/45_i.jpg','furniture/2017/05/45_l.jpg','furniture/2017/05/45_m.jpg','furniture/2017/05/45_r.jpg','furniture/2017/05/45_c.jpg');
INSERT INTO `myApp_furniture` VALUES ('42','4','New Multi-Functional Free Combination Telescopic TV Bench Simple Modern Piano Paint TV Bench','3','490','399','1','Pole Home certification [Quality Online Shop]: 4 years of good shop, authoritative certification, buy back without worry','141','991','furniture/2017/05/46_i.jpg','furniture/2017/05/46_l.jpg','furniture/2017/05/46_m.jpg','furniture/2017/05/46_r.jpg','furniture/2017/05/46_c.jpg');
INSERT INTO `myApp_furniture` VALUES ('43','6','Bamboo shoe bench shoe bench shoe shelf solid wood IKEA countryside racks storage storage Shoebox specials','7','310','180','1','Factory outlets. Low price run. Pro: Shop before the purchase. We are worth your purchase ~~~','90','510','furniture/2017/05/47_r.jpg','furniture/2017/05/47_l.jpg','furniture/2017/05/47_m.jpg','furniture/2017/05/47_r_RoM5QsS.jpg','furniture/2017/05/47_c.jpg');
INSERT INTO `myApp_furniture` VALUES ('44','6','New Chinese Shoebox Old Elm Shoebox Hedgehog Rosewood furniture Redwood New Locker Solid Wood','1','3999','3560','1','[Whole body wood building] [Traditional squat structure] Healthy and environmental quality Support the size of color customization','28','477','furniture/2017/05/48_i.jpg','furniture/2017/05/48_l.jpg','furniture/2017/05/48_m.jpg','furniture/2017/05/48_r.jpg','furniture/2017/05/48_c.jpg');
INSERT INTO `myApp_furniture` VALUES ('45','8','European Style Cloth Bed Nordic High Back Double Bed 1.8m Modern Simple Soft Bed American Small House','1','2500','1600','1','Neo-classical modern minimalist pull buckle double soft bed hotel model room','38','290','furniture/2017/05/49_i.jpg','furniture/2017/05/49_l.jpg','furniture/2017/05/49_m.jpg','furniture/2017/05/49_r.jpg','furniture/2017/05/49_c.jpg');
INSERT INTO `myApp_furniture` VALUES ('46','8','Nordic Cloth Bed Washable Bedroom Small Size Bed Pneumatic Storage Double Bed 1.8m Master Bed Bag','2','5000','4800','1','Extreme home certification [Quality Online Shop]: 3 years of good store, authoritative certification, buy back without worry','92','911','furniture/2017/05/50_i.jpg','furniture/2017/05/50_l.jpg','furniture/2017/05/50_m.jpg','furniture/2017/05/50_r.jpg','furniture/2017/05/50_c.jpg');
INSERT INTO `myApp_furniture` VALUES ('47','8','Cottage Cloth Bed Small Nordic IKEA 1.8m double bed removable and washable minimalist modern American soft','7','2600','2300','1','Nordic IKEA style Cloth Bed.Using high-grade imported cotton and linen fabric! Thick fabric, comfortable feel, longer life, built-in 45 density rebound sponge, durable, internal frame with bold solid wood frame, more solid Solid! Classic Nordic fashion style, focus on Bedroom furniture Small size removable soft pack','102','901','furniture/2017/05/51_i.jpg','furniture/2017/05/51_l.jpg','furniture/2017/05/51_m.jpg','furniture/2017/05/51_r.jpg','furniture/2017/05/51_c.jpg');
INSERT INTO `myApp_furniture` VALUES ('48','9','BedroomLeather Beds Leather Bed 1.8 m 1.5 leather art bed bed','1','5000','4850','1','Solid wood frame shock absorber row skeleton environmental protection first layer leather five packs at home','70','99','furniture/2017/05/52_i.jpg','furniture/2017/05/52_l.jpg','furniture/2017/05/52_m.jpg','furniture/2017/05/52_r.jpg','furniture/2017/05/52_c.jpg');
INSERT INTO `myApp_furniture` VALUES ('49','9','American Leather Bed Simple European Master Bedroom Leather Storage Bed Size Unit Double Garden White Leather Art Bed','2','4500','3500','1','Extreme home certification [quality factory]: higher than the national standard, buy back and worry','42','390','furniture/2017/05/53_i.jpg','furniture/2017/05/53_l.jpg','furniture/2017/05/53_m.jpg','furniture/2017/05/53_r.jpg','furniture/2017/05/53_c.jpg');
INSERT INTO `myApp_furniture` VALUES ('50','10','Hippo Mattress LaTeX Mattress 1.8m 1.5m Double Hard and Soft Custom Spring Simmons 3','11','4200','3890','1','[Service] Thousands of Houses at home in three packages! Has sold 30,000 high-performance hardware and software dual-use Mattress. [Selling] ridge guard, can be dismantled, silk knit fabric + steel / nine district independent spring + green coconut Brown/3E coconut palm optional.【Discount】Coupons can be collected directly, please contact customer service MM.','72','571','furniture/2017/05/54_i.jpg','furniture/2017/05/54_l.jpg','furniture/2017/05/54_m.jpg','furniture/2017/05/54_r.jpg','furniture/2017/05/54_c.jpg');
INSERT INTO `myApp_furniture` VALUES ('51','10','Antiskid tatami sponge Mattress 1.5m 1.8m student dorm cotton mat is 1.2 foldable','5','70','48','1','Extreme home certification [Quality Online Shop]: 3 years of good store, authoritative certification, buy back without worry','91','1022','furniture/2017/05/55_i.jpg','furniture/2017/05/55_l.jpg','furniture/2017/05/55_m.jpg','furniture/2017/05/55_r.jpg','furniture/2017/05/55_c.jpg');
INSERT INTO `myApp_furniture` VALUES ('52','10','Memory Cotton Mattress Tatami Mattress Sponge 1.5m 1.8m Single Student Dormitory Plus','6','210','160','1','Corporate Store [Factory Direct]: authoritative certification, buy back worry-free business commitment: free shipping insurance, return the highest compensation 25 yuan shipping claims','201','280','furniture/2017/05/56_i.jpg','furniture/2017/05/56_l.jpg','furniture/2017/05/56_m.jpg','furniture/2017/05/56_r.jpg','furniture/2017/05/56_c.jpg');
INSERT INTO `myApp_furniture` VALUES ('53','11','Simple Modern Plate Closet Sliding Doors Overall Wooden Closet Sliding Doors Bedroom Large Closet Two Doors Combination Wardrobe','3','2400','1200','1','High density fiber sheet, melamine finish, safety and environmental protection; simple and stylish appearance, to make full use of space; ★free delivery and installation [★ Chinese brand furniture] [★ professional board furniture for 20 years] [★Full 50% off in the audience, benefits in the end][★International E1 standard, safety and environmental protection][★★Structures are solid]','154','839','furniture/2017/05/57_i.jpg','furniture/2017/05/57_l.jpg','furniture/2017/05/57_m.jpg','furniture/2017/05/57_r.jpg','furniture/2017/05/57_c.jpg');
INSERT INTO `myApp_furniture` VALUES ('54','11','Modern Chinese Bedroom furniture Solid Wood Closet Five Doors Overall Wood Oak 4 6 Open Door Wardrobe','6','2490','1893','1','Extreme home certification [Quality Online Shop]: 1 year good shop, authoritative certification, buy back without worry','179','980','furniture/2017/05/58_i.jpg','furniture/2017/05/58_l.jpg','furniture/2017/05/58_m.jpg','furniture/2017/05/58_r.jpg','furniture/2017/05/58_c.jpg');
INSERT INTO `myApp_furniture` VALUES ('55','11','Mediterranean Childrens Closet Solid Wood American Country Blind Door Wooden Wardrobe Garden Bedroom Cabinet furniture 4 Door','6','3600','2340','1','Brand guarantee quality exclusive five-star service quality factory direct sales, the countrys 1500 urban areas free shipping installation! Buy worry!','39','100','furniture/2017/05/59_i.jpg','furniture/2017/05/59_l.jpg','furniture/2017/05/59_m.jpg','furniture/2017/05/59_r.jpg','furniture/2017/05/59_c.jpg');
INSERT INTO `myApp_furniture` VALUES ('56','11','America Closet Solid Wood 4 Doors 3 Doors Simple Overall Closets Closet Bedroom furniture Sliding Doors','5','5599','5339','1','[White supplement difference 500 yuan!] Selected US imports of FAS-class ash, uniform texture, tough wood, resistant to decay. Ash four-door Closet details: a variety of classification space, storage Conveniently, the top of the cabinet adopts a multi-layered edge design, which has a rich sense of depth, and the furniture is more vivid and interesting; the key is the ventilation holes in the cabinet','96','996','furniture/2017/05/60_i.jpg','furniture/2017/05/60_l.jpg','furniture/2017/05/60_m.jpg','furniture/2017/05/60_r.jpg','furniture/2017/05/60_c.jpg');
INSERT INTO `myApp_furniture` VALUES ('57','16','Bedroom furniture Set Combination Simplicity Adult Suite Modern Panel Bedroom furniture Set Five-piece Set','3','4500','3298','1','Piano paint light furniture, a bed + 2 bedside tables + a Mattress + a Closet. New listing, a limited number of grabs. Taobao official designated city 100 city free delivery door package installation. (Closet dark cabinet / pants rack / top cabinet / Side cabinets need to be purchased separately. For details, please contact customer service)','44','98','furniture/2017/05/61_i.jpg','furniture/2017/05/60_l_tzWYDUq.jpg','furniture/2017/05/61_m.jpg','furniture/2017/05/61_r.jpg','furniture/2017/05/61_c.jpg');
INSERT INTO `myApp_furniture` VALUES ('58','16','Nordic furniture Suite Bedroom Modern Closet Small Bed Closet Combination Bedroom furniture Entire House','5','7401','6841','1','Extreme home certification [custom home customization]: personalized customization, authoritative certification, worry-free service','10','199','furniture/2017/05/62_i.jpg','furniture/2017/05/62_l.jpg','furniture/2017/05/62_m.jpg','furniture/2017/05/62_r.jpg','furniture/2017/05/62_c.jpg');
INSERT INTO `myApp_furniture` VALUES ('59','17','All Friends furniture Modern Minimalistic Living Room furniture','1','1599','833','1','All Friends Home Official Straight Shops: 546 downtown, home to five packages, 1800+ city distribution installation, one-stop service for 3000+ stores, three-year warranty, and lifetime maintenance!','9','100','furniture/2017/05/63_i.jpg','furniture/2017/05/63_l.jpg','furniture/2017/05/63_m.jpg','furniture/2017/05/63_r.jpg','furniture/2017/05/63_c.jpg') ;
INSERT INTO `myApp_furniture` VALUES ('60','17','All Friends furniture Living Room Set New Classical Small Table Tea Table+TV Bench Set','1','3500','3280','1','All Friends of the Home Official Store: 546 city five bags home, 1800 + city distribution installation, 3000 + store one-stop service; three years of warranty, life-long maintenance!','32','766','furniture/2017/05/64_i.jpg','furniture/2017/05/64_l.jpg','furniture/2017/05/64_m.jpg','furniture/2017/05/64_r.jpg','furniture/2017/05/64_c.jpg');
INSERT INTO `myApp_furniture` VALUES ('61','19','Nordic Style Dining Table 1.6m + Leather Dining Chair 2 + Fabric Dining Chair+ Bench','8','7500','6600','1','Extreme home certification [Quality Online Shop]: 6-year-old shop, authoritative certification, buy back without worry','27','190','furniture/2017/05/65_i.jpg','furniture/2017/05/65_l.jpg','furniture/2017/05/65_m.jpg','furniture/2017/05/65_r.jpg','furniture/2017/05/65_c.jpg');
INSERT INTO `myApp_furniture` VALUES ('62','18','American Village Round Dining Table Set Dining Table Chair Combination Simple Round Table Dining Room furniture Small Dining Table','6','2900','1600','1','Thai imports of rubber wood production desktop MDF cherry paste veneer art mosaic; 319 urban areas sent to the household free of charge;','20','92','furniture/2017/05/66_i.jpg','furniture/2017/05/66_l.jpg','furniture/2017/05/66_m.jpg','furniture/2017/05/66_r.jpg','furniture/2017/05/66_c.png');
INSERT INTO `myApp_furniture` VALUES ('63','14','Rectangular Simplicity Solid Wood Study Table Home Study Office Computer Desktop Table Bedroom Children Learning to Write','9','2000','1900','1','Factory direct, real solid wood table, support customization.Customized products can be required to display the rough drawing of the production process, regular size supports unconditional return.','77','100','furniture/2017/05/67_i.jpg','furniture/2017/05/67_l.jpg','furniture/2017/05/67_m.jpg','furniture/2017/05/67_r.jpg','furniture/2017/05/67_c.jpg');

-- ----------------------------
-- Table structure for `myApp_furniture_size`
-- ----------------------------
DROP TABLE IF EXISTS `myApp_furniture_size`;
CREATE TABLE `myApp_furniture_size` (
  `id` int(11) NOT NULL auto_increment,
  `furniture_id` int(11) NOT NULL,
  `size_id` int(11) NOT NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `furniture_id` (`furniture_id`,`size_id`),
  KEY `myApp_furniture_size_05beb0c3` (`furniture_id`),
  KEY `myApp_furniture_size_fea27a6d` (`size_id`),
  CONSTRAINT `furniture_id_refs_id_6eac7e88` FOREIGN KEY (`furniture_id`) REFERENCES `myApp_furniture` (`id`),
  CONSTRAINT `size_id_refs_id_d160ba2c` FOREIGN KEY (`size_id`) REFERENCES `myApp_size` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=85 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of myApp_furniture_size
-- ----------------------------
INSERT INTO `myApp_furniture_size` VALUES ('1','1','1');
INSERT INTO `myApp_furniture_size` VALUES ('2','1','2');
INSERT INTO `myApp_furniture_size` VALUES ('3','2','1');
INSERT INTO `myApp_furniture_size` VALUES ('37','3','8');
INSERT INTO `myApp_furniture_size` VALUES ('5','4','6');
INSERT INTO `myApp_furniture_size` VALUES ('6','5','1');
INSERT INTO `myApp_furniture_size` VALUES ('7','5','2');
INSERT INTO `myApp_furniture_size` VALUES ('8','6','3');
INSERT INTO `myApp_furniture_size` VALUES ('9','6','5');
INSERT INTO `myApp_furniture_size` VALUES ('10','7','8');
INSERT INTO `myApp_furniture_size` VALUES ('11','8','6');
INSERT INTO `myApp_furniture_size` VALUES ('12','9','8');
INSERT INTO `myApp_furniture_size` VALUES ('13','10','8');
INSERT INTO `myApp_furniture_size` VALUES ('14','11','8');
INSERT INTO `myApp_furniture_size` VALUES ('15','12','8');
INSERT INTO `myApp_furniture_size` VALUES ('16','13','1');
INSERT INTO `myApp_furniture_size` VALUES ('17','13','2');
INSERT INTO `myApp_furniture_size` VALUES ('18','14','8');
INSERT INTO `myApp_furniture_size` VALUES ('19','15','8');
INSERT INTO `myApp_furniture_size` VALUES ('20','16','8');
INSERT INTO `myApp_furniture_size` VALUES ('21','17','8');
INSERT INTO `myApp_furniture_size` VALUES ('22','18','8');
INSERT INTO `myApp_furniture_size` VALUES ('23','19','8');
INSERT INTO `myApp_furniture_size` VALUES ('24','20','8');
INSERT INTO `myApp_furniture_size` VALUES ('25','21','8');
INSERT INTO `myApp_furniture_size` VALUES ('26','22','5');
INSERT INTO `myApp_furniture_size` VALUES ('27','23','1');
INSERT INTO `myApp_furniture_size` VALUES ('28','23','2');
INSERT INTO `myApp_furniture_size` VALUES ('29','24','5');
INSERT INTO `myApp_furniture_size` VALUES ('30','25','8');
INSERT INTO `myApp_furniture_size` VALUES ('31','26','8');
INSERT INTO `myApp_furniture_size` VALUES ('32','27','8');
INSERT INTO `myApp_furniture_size` VALUES ('33','28','1');
INSERT INTO `myApp_furniture_size` VALUES ('34','28','2');
INSERT INTO `myApp_furniture_size` VALUES ('35','29','8');
INSERT INTO `myApp_furniture_size` VALUES ('36','30','8');
INSERT INTO `myApp_furniture_size` VALUES ('39','32','3');
INSERT INTO `myApp_furniture_size` VALUES ('40','32','4');
INSERT INTO `myApp_furniture_size` VALUES ('41','32','5');
INSERT INTO `myApp_furniture_size` VALUES ('42','33','8');
INSERT INTO `myApp_furniture_size` VALUES ('43','34','3');
INSERT INTO `myApp_furniture_size` VALUES ('44','34','4');
INSERT INTO `myApp_furniture_size` VALUES ('45','34','5');
INSERT INTO `myApp_furniture_size` VALUES ('46','35','8');
INSERT INTO `myApp_furniture_size` VALUES ('47','36','7');
INSERT INTO `myApp_furniture_size` VALUES ('48','37','8');
INSERT INTO `myApp_furniture_size` VALUES ('49','38','8');
INSERT INTO `myApp_furniture_size` VALUES ('50','39','3');
INSERT INTO `myApp_furniture_size` VALUES ('51','39','4');
INSERT INTO `myApp_furniture_size` VALUES ('52','39','5');
INSERT INTO `myApp_furniture_size` VALUES ('53','40','8');
INSERT INTO `myApp_furniture_size` VALUES ('54','41','8');
INSERT INTO `myApp_furniture_size` VALUES ('55','42','8');
INSERT INTO `myApp_furniture_size` VALUES ('56','43','8');
INSERT INTO `myApp_furniture_size` VALUES ('57','44','8');
INSERT INTO `myApp_furniture_size` VALUES ('58','45','1');
INSERT INTO `myApp_furniture_size` VALUES ('59','45','2');
INSERT INTO `myApp_furniture_size` VALUES ('60','46','1');
INSERT INTO `myApp_furniture_size` VALUES ('61','46','2');
INSERT INTO `myApp_furniture_size` VALUES ('62','47','1');
INSERT INTO `myApp_furniture_size` VALUES ('63','47','2');
INSERT INTO `myApp_furniture_size` VALUES ('64','48','1');
INSERT INTO `myApp_furniture_size` VALUES ('65','48','2');
INSERT INTO `myApp_furniture_size` VALUES ('66','49','1');
INSERT INTO `myApp_furniture_size` VALUES ('67','49','2');
INSERT INTO `myApp_furniture_size` VALUES ('68','50','1');
INSERT INTO `myApp_furniture_size` VALUES ('69','50','2');
INSERT INTO `myApp_furniture_size` VALUES ('70','51','1');
INSERT INTO `myApp_furniture_size` VALUES ('71','51','2');
INSERT INTO `myApp_furniture_size` VALUES ('72','52','1');
INSERT INTO `myApp_furniture_size` VALUES ('73','52','2');
INSERT INTO `myApp_furniture_size` VALUES ('74','53','8');
INSERT INTO `myApp_furniture_size` VALUES ('75','54','8');
INSERT INTO `myApp_furniture_size` VALUES ('76','55','8');
INSERT INTO `myApp_furniture_size` VALUES ('77','56','8');
INSERT INTO `myApp_furniture_size` VALUES ('78','57','8');
INSERT INTO `myApp_furniture_size` VALUES ('79','58','8');
INSERT INTO `myApp_furniture_size` VALUES ('80','59','8');
INSERT INTO `myApp_furniture_size` VALUES ('81','60','8');
INSERT INTO `myApp_furniture_size` VALUES ('82','61','8');
INSERT INTO `myApp_furniture_size` VALUES ('83','62','8');
INSERT INTO `myApp_furniture_size` VALUES ('84','63','8');

-- ----------------------------
-- Table structure for `myApp_furniture_tag`
-- ----------------------------
DROP TABLE IF EXISTS `myApp_furniture_tag`;
CREATE TABLE `myApp_furniture_tag` (
  `id` int(11) NOT NULL auto_increment,
  `furniture_id` int(11) NOT NULL,
  `tag_id` int(11) NOT NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `furniture_id` (`furniture_id`,`tag_id`),
  KEY `myApp_furniture_tag_05beb0c3` (`furniture_id`),
  KEY `myApp_furniture_tag_5659cca2` (`tag_id`),
  CONSTRAINT `furniture_id_refs_id_85878abb` FOREIGN KEY (`furniture_id`) REFERENCES `myApp_furniture` (`id`),
  CONSTRAINT `tag_id_refs_id_bfd50b4a` FOREIGN KEY (`tag_id`) REFERENCES `myApp_tag` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of myApp_furniture_tag
-- ----------------------------
INSERT INTO `myApp_furniture_tag` VALUES ('1','1','4');
INSERT INTO `myApp_furniture_tag` VALUES ('2','2','4');
INSERT INTO `myApp_furniture_tag` VALUES ('31','3','1');
INSERT INTO `myApp_furniture_tag` VALUES ('4','4','4');
INSERT INTO `myApp_furniture_tag` VALUES ('5','5','4');
INSERT INTO `myApp_furniture_tag` VALUES ('6','6','2');
INSERT INTO `myApp_furniture_tag` VALUES ('7','7','2');
INSERT INTO `myApp_furniture_tag` VALUES ('8','8','2');
INSERT INTO `myApp_furniture_tag` VALUES ('9','9','1');
INSERT INTO `myApp_furniture_tag` VALUES ('10','10','3');
INSERT INTO `myApp_furniture_tag` VALUES ('11','11','1');
INSERT INTO `myApp_furniture_tag` VALUES ('12','12','1');
INSERT INTO `myApp_furniture_tag` VALUES ('13','13','3');
INSERT INTO `myApp_furniture_tag` VALUES ('14','14','2');
INSERT INTO `myApp_furniture_tag` VALUES ('15','15','4');
INSERT INTO `myApp_furniture_tag` VALUES ('16','16','2');
INSERT INTO `myApp_furniture_tag` VALUES ('17','17','1');
INSERT INTO `myApp_furniture_tag` VALUES ('18','18','6');
INSERT INTO `myApp_furniture_tag` VALUES ('19','19','1');
INSERT INTO `myApp_furniture_tag` VALUES ('20','20','3');
INSERT INTO `myApp_furniture_tag` VALUES ('21','21','5');
INSERT INTO `myApp_furniture_tag` VALUES ('22','22','5');
INSERT INTO `myApp_furniture_tag` VALUES ('23','23','5');
INSERT INTO `myApp_furniture_tag` VALUES ('24','24','5');
INSERT INTO `myApp_furniture_tag` VALUES ('25','25','5');
INSERT INTO `myApp_furniture_tag` VALUES ('26','26','5');
INSERT INTO `myApp_furniture_tag` VALUES ('27','27','6');
INSERT INTO `myApp_furniture_tag` VALUES ('28','28','6');
INSERT INTO `myApp_furniture_tag` VALUES ('29','29','6');
INSERT INTO `myApp_furniture_tag` VALUES ('30','30','6');
INSERT INTO `myApp_furniture_tag` VALUES ('33','32','1');
INSERT INTO `myApp_furniture_tag` VALUES ('34','33','1');
INSERT INTO `myApp_furniture_tag` VALUES ('35','34','6');
INSERT INTO `myApp_furniture_tag` VALUES ('36','35','4');
INSERT INTO `myApp_furniture_tag` VALUES ('37','36','4');
INSERT INTO `myApp_furniture_tag` VALUES ('38','37','1');
INSERT INTO `myApp_furniture_tag` VALUES ('39','38','2');
INSERT INTO `myApp_furniture_tag` VALUES ('40','39','3');
INSERT INTO `myApp_furniture_tag` VALUES ('41','40','6');
INSERT INTO `myApp_furniture_tag` VALUES ('42','41','6');
INSERT INTO `myApp_furniture_tag` VALUES ('43','42','1');
INSERT INTO `myApp_furniture_tag` VALUES ('44','43','1');
INSERT INTO `myApp_furniture_tag` VALUES ('45','44','4');
INSERT INTO `myApp_furniture_tag` VALUES ('46','45','3');
INSERT INTO `myApp_furniture_tag` VALUES ('47','46','6');
INSERT INTO `myApp_furniture_tag` VALUES ('48','47','6');
INSERT INTO `myApp_furniture_tag` VALUES ('49','48','1');
INSERT INTO `myApp_furniture_tag` VALUES ('50','49','2');
INSERT INTO `myApp_furniture_tag` VALUES ('51','50','1');
INSERT INTO `myApp_furniture_tag` VALUES ('52','51','1');
INSERT INTO `myApp_furniture_tag` VALUES ('53','52','1');
INSERT INTO `myApp_furniture_tag` VALUES ('54','53','1');
INSERT INTO `myApp_furniture_tag` VALUES ('55','54','4');
INSERT INTO `myApp_furniture_tag` VALUES ('56','55','5');
INSERT INTO `myApp_furniture_tag` VALUES ('57','56','2');
INSERT INTO `myApp_furniture_tag` VALUES ('58','57','1');
INSERT INTO `myApp_furniture_tag` VALUES ('59','58','6');
INSERT INTO `myApp_furniture_tag` VALUES ('60','59','1');
INSERT INTO `myApp_furniture_tag` VALUES ('61','60','3');
INSERT INTO `myApp_furniture_tag` VALUES ('62','61','6');
INSERT INTO `myApp_furniture_tag` VALUES ('63','62','2');
INSERT INTO `myApp_furniture_tag` VALUES ('64','63','1');

-- ----------------------------
-- Table structure for `myApp_order`
-- ----------------------------
DROP TABLE IF EXISTS `myApp_order`;
CREATE TABLE `myApp_order` (
  `id` int(11) NOT NULL auto_increment,
  `user_id` int(11) NOT NULL,
  `price` varchar(10) NOT NULL,
  `order_state` varchar(10) NOT NULL,
  `staff` varchar(100) NOT NULL,
  `order_date` varchar(50) NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `myApp_order_6340c63c` (`user_id`),
  CONSTRAINT `user_id_refs_id_8bb2c78e` FOREIGN KEY (`user_id`) REFERENCES `myApp_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=68 DEFAULT CHARSET=utf8;


-- ----------------------------
-- Records of myApp_order
-- ----------------------------
INSERT INTO `myApp_order` VALUES ('38','6','3788.0','Comment Finished!','Main Bedroom Double Walnut Bed High Storage Chub Drawer Bed Modern Chinese Wedding Bed','2018-01-28');
INSERT INTO `myApp_order` VALUES ('39','6','2899.0','Comment Finished!','Cloth Sofa Size Removable Simple Modern Living Room furniture Corner U-shaped sofa','2018-01-28');
INSERT INTO `myApp_order` VALUES ('40','6','5388.0','Comment Finished!','American pure wood Study Closet Double glass door with drawer display cabinet ash wood bookcase decorative cabinet showcase','2018-01-28');
INSERT INTO `myApp_order` VALUES ('41','3','6687.0','Comment Finished!','Main Bedroom Double Walnut Bed High Storage Chub Drawer Bed Modern Chinese Wedding Bed','2018-01-29');
INSERT INTO `myApp_order` VALUES ('42','3','7999.0','Comment Finished!','[American style - original design] American country furniture cotton pull buckle three Cloth Sofa combination','2018-01-15');
INSERT INTO `myApp_order` VALUES ('43','3','4500.0','Comment Finished!','LinShiMuYe Modern Chinese Wooden Bed 1.5 Meter 1.8 Adult Double Bed Simple Wedding Bed Bedroom furniture','2018-01-19');
INSERT INTO `myApp_order` VALUES ('44','4','7399.0','Comment Finished!','Cloth Sofa Size Removable Simple Modern Living Room furniture Corner U-shaped sofa','2018-01-19');
INSERT INTO `myApp_order` VALUES ('45','5','8999.0','Comment Finished!','XingZhiJu/ American True Leather Sofa Triple/Oil Wax Leather Coat Leather Down Sofa Single Person','2018-01-20');
INSERT INTO `myApp_order` VALUES ('46','5','4500.0','Comment Finished!','LinShiMuYe Modern Chinese Wooden Bed 1.5 Meter 1.8 Adult Double Bed Simple Wedding Bed Bedroom furniture','2018-01-20');
INSERT INTO `myApp_order` VALUES ('47','5','2599.0','Comment Finished!','LinShiMuYe Modern Simple Telescopic Dining Table Small-sized Dining Table Chair Combination Tempered Tempered Glass Table','2018-01-20');
INSERT INTO `myApp_order` VALUES ('48','5','15000.0','Comment Finished!','Luxury Home furniture Bedroom Suite furniture Bedroom Bed Closet Package Set Six Piece Set','2018-01-20');
INSERT INTO `myApp_order` VALUES ('49','5','14218.0','Comment Finished!','Simple 253 Mediterranean Vintage Painted Three Closet American Wood European Retro Engraving Sheet Gold Coat','2018-01-20');
INSERT INTO `myApp_order` VALUES ('50','5','1699.0','Comment Finished!','Nordic Wood Dining Table Chair Combination Oak Rectangular Table furniture','2018-01-22');
INSERT INTO `myApp_order` VALUES ('51','4','9987.99','Comment Finished!','American pure wood Study Closet Double glass door with drawer display cabinet ash wood bookcase decorative cabinet showcase','2018-01-22');
INSERT INTO `myApp_order` VALUES ('52','3','5388.0','Comment Finished!','American pure wood Study Closet Double glass door with drawer display cabinet ash wood bookcase decorative cabinet showcase','2018-01-22');
INSERT INTO `myApp_order` VALUES ('53','7','16998.0','Comment Finished!','XingZhiJu/ American True Leather Sofa Triple/Oil Wax Leather Coat Leather Down Sofa Single Person','2018-01-23');
INSERT INTO `myApp_order` VALUES ('54','7','1799.0','Comment Finished!','Retro furniture New Chinese Tea Table Wooden Table Kung Fu Tea Table Irregular Large Table Log Wood Solid Wood Meal','2018-01-23');
INSERT INTO `myApp_order` VALUES ('55','8','950.0','Comment Finished!','American furniture European pastoral rural entrance cabinet Mediterranean dining cabinet cupboard wine cabinet side cabinet American side','2018-01-23');
INSERT INTO `myApp_order` VALUES ('56','8','15779.0','Comment Finished!','Luxury Home furniture Bedroom Suite furniture Bedroom Bed Closet Package Set Six Piece Set','2018-01-24');
INSERT INTO `myApp_order` VALUES ('57','8','800.0','Comment Finished!','Idyllic Tea Table solid wood ivory white fashion simple Living RoomTea Table combo specials explosion models snapped up','2018-01-25');
INSERT INTO `myApp_order` VALUES ('58','8','2599.0','Comment Finished!','LinShiMuYe Dining Table Dining Table','2018-01-26');
INSERT INTO `myApp_order` VALUES ('59','9','11485.0','Comment Finished!','LinShiMuYe Modern Simple Telescopic Dining Table Small-sized Dining Table Chair Combination Tempered Tempered Glass Table','2018-01-27');
INSERT INTO `myApp_order` VALUES ('60','9','15000.0','Comment Finished!','Luxury Home furniture Bedroom Suite furniture Bedroom Bed Closet Package Set Six Piece Set','2018-01-28');
INSERT INTO `myApp_order` VALUES ('61','9','7198.99','Comment Finished!','Olympias Solid Wood Bed Double Bed 1.8 Meter Carved American Bed Wedding Bed European Bed','2018-01-28');
INSERT INTO `myApp_order` VALUES ('62','6','10230.0','Comment Finished!','Wood New Chinese Phoebe Leather SofaLiving Room furniture','2018-01-28') ;
INSERT INTO `myApp_order` VALUES ('63','6','499.0','Comment Finished!','ZOMO Windsor Chair Solid Wood Dining Chair White Oak Dining Chair Pure Wood furniture Dining Table Chair','2018-01-29');
INSERT INTO `myApp_order` VALUES ('64','6','8799.0','Comment Finished!','Marble Tea TableTV Bench Set Minimalist Modern Living Room furniture Small Table Telescopic Table','2018-01-29');
INSERT INTO `myApp_order` VALUES ('65','3','779.0','Comment Finished!', 'Yikes Wood Dining Table Chair Combining York Marks Table, Four Chairs, Sets, Simple, Modern Restaurant Home','2018-01-30');
INSERT INTO `myApp_order` VALUES ('66','8','9888.0','Comment Finished!','American Purewood Study Closet Double Door Glass Door with Drawer Display Cabinet Ash Bookcase Decorative Display Cabinet','2018-01-30');
INSERT INTO `myApp_order` VALUES ('67','9','1988.0','Comment Finished!','Putting Cloth Sofa Combining Living Rooms Mediterranean Pastoral Style Simple Three  in One Unit','2018-01-30');
-- ----------------------------
-- Table structure for `myApp_order_list`
-- ----------------------------
DROP TABLE IF EXISTS `myApp_order_list`;
CREATE TABLE `myApp_order_list` (
  `id` int(11) NOT NULL auto_increment,
  `furniture` varchar(50) NOT NULL,
  `quantity` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `remark` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `list_date` varchar(50) NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `myApp_order_list_68d25c7a` (`order_id`),
  CONSTRAINT `order_id_refs_id_2a7c4c07` FOREIGN KEY (`order_id`) REFERENCES `myApp_order` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=92 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of myApp_order_list
-- ----------------------------
INSERT INTO `myApp_order_list` VALUES ('53','Main Bedroom, Couple Walnut bed high box storage drawer bed modern Chinese wedding bed','1','38','1','6','2018-01-28');
INSERT INTO `myApp_order_list` VALUES ('54','Cloth Sofa Size units removable and washable simple and modern Living Room furniture fitting corner U-shaped sofa','1','39','1','6','2018-01-28');
INSERT INTO `myApp_order_list` VALUES ('55','American pure wood Study Closet Double glass door with drawer display cabinet ash wood bookcase decorative cabinet showcase','1','40','1','6','2018-01-28');
INSERT INTO `myApp_order_list` VALUES ('56','Main Bedroom Double Walnut Bed High Storage Chub Drawer Bed Modern Chinese Wedding Bed','1','41','1','3','2018-01-29');
INSERT INTO `myApp_order_list` VALUES ('57','Cloth Sofa Size Removable Simple Modern Living Room furniture Corner U-shaped sofa','1','41','1','3','2018-01-29');
INSERT INTO `myApp_order_list` VALUES ('58','[American style - original design] American country furniture cotton pull buckle three Cloth Sofa combination','1','42','1','3','2018-01-15');
INSERT INTO `myApp_order_list` VALUES ('59','LinShiMuYe Modern Chinese Wooden Bed 1.5 Meter 1.8 Adult Double Bed Simple Wedding Bed Bedroom furniture','1','43','1','3','2018-01-19');
INSERT INTO `myApp_order_list` VALUES ('60','Cloth Sofa Size Removable Simple Modern Living Room furniture Corner U-shaped sofa','1','44','1','4','2018-01-19');
INSERT INTO `myApp_order_list` VALUES ('61','LinShiMuYe Modern Chinese Wooden Bed 1.5 Meter 1.8 Adult Double Bed Simple Wedding Bed Bedroom furniture','1','44','1','4','2018-01-19');
INSERT INTO `myApp_order_list` VALUES ('62','XingZhiJu/ American genuine Leather Sofa triple/Oil Wax Leather Coat Down Feather Sofa Single','1','45','1','5','2018-01-19');
INSERT INTO `myApp_order_list` VALUES ('63','LinShiMuYe Modern Chinese Wooden Bed 1.5 Meter 1.8 Adult Double Bed Simple Wedding Bed Bedroom furniture','1','46','1','5','2018-01-20');
INSERT INTO `myApp_order_list` VALUES ('64','LinShiMuYe Modern Simple Telescopic Dining Table Small-sized Dining Table Chair Combination Tempered Tempered Glass Table','1','47','1','5','2018-01-20');
INSERT INTO `myApp_order_list` VALUES ('65','Luxury Home furniture Bedroom Suite furniture Bedroom Bed Closet Package Set Six Piece Set','1','48','1','5','2018-01-20');
INSERT INTO `myApp_order_list` VALUES ('66','Simple 253 Mediterranean Vintage Painted Three Closet American Wood European Retro Engraving Sheet Gold Coat','1','49','1','5','2018-01-20');
INSERT INTO `myApp_order_list` VALUES ('67','Solid Wood Chinese Style Sofa New Chinese Style Phoebe Sofa Set True Leather Leather SofaLiving Room furniture','1','49','1','5','2018-01-20');
INSERT INTO `myApp_order_list` VALUES ('68','Nordic Wood Dining Table Chair Combination Oak Rectangular Table furniture','1','50','1','5','2018-01-22');
INSERT INTO `myApp_order_list` VALUES ('69','American pure wood Study Closet Double glass door with drawer display cabinet ash wood bookcase decorative cabinet showcase','1','51','1','4','2018-01-22');
INSERT INTO `myApp_order_list` VALUES ('70','Olympia Solid Wood Bed double bed Neoclassical 1.8 m carved American bed wedding bed European bed','1','51','1','4','2018-01-22');
INSERT INTO `myApp_order_list` VALUES ('71','American pure wood Study Closet Double glass door with drawer display cabinet ash wood bookcase decorative cabinet showcase','1','52','1','3','2018-01-22');
INSERT INTO `myApp_order_list` VALUES ('72','XingZhiJu/ American genuine Leather Sofa triple/Oil Wax Leather Coat Down Feather Sofa Single','1','53','1','7','2018-01-22');
INSERT INTO `myApp_order_list` VALUES ('73','[American style - original design] American country furniture cotton pull buckle three Cloth Sofa combination','1','53','1','7','2018-01-22');
INSERT INTO `myApp_order_list` VALUES ('74','Retro furniture New Chinese Tea Table Wooden Table Kung Fu Tea Table Irregular Large Table Log Wood Solid Wood Meal','1','54','1','7','2018-01-23');
INSERT INTO `myApp_order_list` VALUES ('75','American furniture European pastoral rural entrance cabinet Mediterranean dining cabinet cupboard wine cabinet side cabinet American side','1','55','1','8','2018-01-23');
INSERT INTO `myApp_order_list` VALUES ('76','Luxury Home furniture Bedroom Suite furniture Bedroom Bed Closet Package Set Six Piece Set','1','56','1','8','2018-01-24');
INSERT INTO `myApp_order_list` VALUES ('77','IKEA Solid Wood Dining Table Chair Set York Mark Table Four Chairs Set Simple Modern Dining Room Home','1','56','1','8','2018-01-24');
INSERT INTO `myApp_order_list` VALUES ('78','Idyllic Tea Table solid wood ivory white fashion simple Living RoomTea Table combo specials explosion models snapped up','1','57','1','8','2018-01-25');
INSERT INTO `myApp_order_list` VALUES ('79','LinShiMuYe Modern Simple Telescopic Dining Table Small-sized Dining Table Chair Combination Tempered Tempered Glass Table','1','58','1','8','2018-01-26');
INSERT INTO `myApp_order_list` VALUES ('80','Solid Wood Chinese Style Sofa New Chinese Style Phoebe Sofa Set True Leather Leather SofaLiving Room furniture','1','59','1','9','2018-01-26');
INSERT INTO `myApp_order_list` VALUES ('81','European American Shoebox solid wood furniture Chinese style hall entrance ark gold storage cabinet Cabinet Close Closet','1','59','1','9','2018-01-26');
INSERT INTO `myApp_order_list` VALUES ('82','Luxury Home furniture Bedroom Suite furniture Bedroom Bed Closet Package Set Six Piece Set','1','60','1','9','2018-01-27');
INSERT INTO `myApp_order_list` VALUES ('83','Olympia Solid Wood Bed double bed Neoclassical 1.8 m carved American bed wedding bed European bed','1','61','1','9','2018-01-28');
INSERT INTO `myApp_order_list` VALUES ('84','LinShiMuYe Modern Simple Telescopic Dining Table Small-sized Dining Table Chair Combination Tempered Tempered Glass Table','1','61','1','9','2018-01-28');
INSERT INTO `myApp_order_list` VALUES ('85','Solid Wood Chinese Style Sofa New Chinese Style Phoebe Sofa Set True Leather Leather SofaLiving Room furniture','1','62','1','6','2018-01-28');
INSERT INTO `myApp_order_list` VALUES ('86','ZOMO Windsor Chair Solid Wood Dining Chair White Oak Dining Chair Solid Wood furniture Dining Table Chair','1','63','1','6','2018-01-29');
INSERT INTO `myApp_order_list` VALUES ('87','Marble Tea TableTV Bench Set Simple Modern Living Room furniture Small House Telescopic Tea Table','1','64','1','6','2018-01-29');
INSERT INTO `myApp_order_list` VALUES ('88','IKEA Solid Wood Dining Table Chair Set York Mark Table Four Chairs Set Simple Modern Dining Room Home','1','65','1','3','2018-01-30');
INSERT INTO `myApp_order_list` VALUES ('89','American pure wood Study Closet Double glass door with drawer display cabinet ash wood bookcase decorative cabinet showcase','1','66','1','8','2018-01-30');
INSERT INTO `myApp_order_list` VALUES ('90','LinShiMuYe Modern Chinese Wooden Bed 1.5 Meter 1.8 Adult Double Bed Simple Wedding Bed Bedroom furniture','1','66','1','8','2018-01-30');
INSERT INTO `myApp_order_list` VALUES ('91','Pull Button Cloth Sofa Combination Living Room Mediterranean Pastoral Style Simple Triple Package Small Unit','1','67','1','9','2018-01-30');

-- ----------------------------
-- Table structure for `myApp_size`
-- ----------------------------
DROP TABLE IF EXISTS `myApp_size`;
CREATE TABLE `myApp_size` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(20) NOT NULL,
  `index` int(11) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of myApp_size
-- ----------------------------
INSERT INTO `myApp_size` VALUES ('1','1800*2000','1');
INSERT INTO `myApp_size` VALUES ('2','1500*2000','2');
INSERT INTO `myApp_size` VALUES ('3','Single','3');
INSERT INTO `myApp_size` VALUES ('4','Double','4');
INSERT INTO `myApp_size` VALUES ('5','Triple','5');
INSERT INTO `myApp_size` VALUES ('6','1+2+3+Tea table','6');
INSERT INTO `myApp_size` VALUES ('7','1400*800','7');
INSERT INTO `myApp_size` VALUES ('8','Default','8');

-- ----------------------------
-- Table structure for `myApp_tag`
-- ----------------------------
DROP TABLE IF EXISTS `myApp_tag`;
CREATE TABLE `myApp_tag` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(30) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of myApp_tag
-- ----------------------------
INSERT INTO `myApp_tag` VALUES ('1','Minimalist');
INSERT INTO `myApp_tag` VALUES ('2','American');
INSERT INTO `myApp_tag` VALUES ('3','European');
INSERT INTO `myApp_tag` VALUES ('4','Chinese');
INSERT INTO `myApp_tag` VALUES ('5','Mediterranean');
INSERT INTO `myApp_tag` VALUES ('6','North Europe');

-- ----------------------------
-- Table structure for `myApp_user`
-- ----------------------------
DROP TABLE IF EXISTS `myApp_user`;
CREATE TABLE `myApp_user` (
  `id` int(11) NOT NULL auto_increment,
  `password` varchar(128) NOT NULL,
  `last_login` datetime NOT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(30) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(75) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime NOT NULL,
  `address` varchar(200) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `sex` varchar(10) default NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of myApp_user
-- ----------------------------
INSERT INTO `myApp_user` VALUES ('1','pbkdf2_sha256$12000$DkEBw31iFmrD$asHGFqeQVPAerBe3xB44nURurYdqce0mbYrjcZpNiSI=','2018-01-30 07:02:35','1','admin','','','admin@123.com','1','1','2018-01-06 01:38:31','','', null);
INSERT INTO `myApp_user` VALUES ('3','pbkdf2_sha256$12000$mwLoEEKbAiWj$GS0R9uNvWn0W0MR1KYHEYoAP/osW1xxuGmXyREIPra0=','2018-01-30 00:34:10','0','jack','','','jack@123.com','0','1','2018-01-06 02:33:45','Nanjing','123456789', null);
INSERT INTO `myApp_user` VALUES ('4','pbkdf2_sha256$12000$XDDvJ3LL0dBE$2yVFtTEhnUv8P6BtLZBKEVrBhaKGF/jE8gprw8J4m6w=','2018-01-29 06:56:36','0','rose','','','rose@qq.com','0','1','2018-01-09 02:53:18','Nanjing','18362983753', null);
INSERT INTO `myApp_user` VALUES ('5','pbkdf2_sha256$12000$k6ZjisAwi47U$me815XrLYnqY/vi7Gd5IPQrGOdevFtvy90nRXy2ZOD4=','2018-01-29 09:17:33','0','sara','','','sara@123.com','0','1','2018-01-09 02:53:58','Wuxi','123456', null);
INSERT INTO `myApp_user` VALUES ('6','pbkdf2_sha256$12000$MyKVKEm1w73J$rpifiYD4r8Shc9hN3FTAE1P9kYk7QQpFjRhTu+FInaE=','2018-01-29 07:00:28','0','tom','','','tom@123.com','0','1','2018-01-09 02:54:55','Suzhou','123456', null);
INSERT INTO `myApp_user` VALUES ('7','pbkdf2_sha256$12000$DEeIThG0l4cx$+WGTMd0lrkPejfpX2ZlNDt/hzFSMX+kqA/bVApgDJiA=','2018-01-22 05:57:50','0','emily','','','emily@qq.com','0','1','2018-01-09 02:55:35','Nanjing','123456', null);
INSERT INTO `myApp_user` VALUES ('8','pbkdf2_sha256$12000$H0yfmLWeldG0$GV6E9mc84AgUCxx7/7i6duOsgHSpzd5wWN9l3/XKt+8=','2018-01-30 00:39:05','0','hanna','','','hanna','0','1','2018-01-09 07:52:48','Nanjing','1234567', null);
INSERT INTO `myApp_user` VALUES ('9','pbkdf2_sha256$12000$1bI6P7Gw8h6H$yqZAtJ/gHpDPz/OKXRr4B4O8hGNYfbrDwQtv386G8fU=','2018-01-30 03:54:50','0','emma','','','emma@123.com','0','1','2018-01-09 08:00:34','Beijing','1234', null);

-- ----------------------------
-- Table structure for `myApp_user_groups`
-- ----------------------------
DROP TABLE IF EXISTS `myApp_user_groups`;
CREATE TABLE `myApp_user_groups` (
  `id` int(11) NOT NULL auto_increment,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `user_id` (`user_id`,`group_id`),
  KEY `myApp_user_groups_6340c63c` (`user_id`),
  KEY `myApp_user_groups_5f412f9a` (`group_id`),
  CONSTRAINT `group_id_refs_id_6fd162bb` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `user_id_refs_id_4c8d6c6e` FOREIGN KEY (`user_id`) REFERENCES `myApp_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of myApp_user_groups
-- ----------------------------

-- ----------------------------
-- Table structure for `myApp_user_user_permissions`
-- ----------------------------
DROP TABLE IF EXISTS `myApp_user_user_permissions`;
CREATE TABLE `myApp_user_user_permissions` (
  `id` int(11) NOT NULL auto_increment,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `user_id` (`user_id`,`permission_id`),
  KEY `myApp_user_user_permissions_6340c63c` (`user_id`),
  KEY `myApp_user_user_permissions_83d7f98b` (`permission_id`),
  CONSTRAINT `permission_id_refs_id_dd08e214` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `user_id_refs_id_cd89e45d` FOREIGN KEY (`user_id`) REFERENCES `myApp_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of myApp_user_user_permissions
-- ----------------------------
