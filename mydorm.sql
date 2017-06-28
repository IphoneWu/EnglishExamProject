/*
Navicat MySQL Data Transfer

Source Server         : asda
Source Server Version : 50711
Source Host           : localhost:3306
Source Database       : mydorm

Target Server Type    : MYSQL
Target Server Version : 50711
File Encoding         : 65001

Date: 2017-06-27 16:33:34
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for area
-- ----------------------------
DROP TABLE IF EXISTS `area`;
CREATE TABLE `area` (
  `areaNum` int(11) NOT NULL,
  `areaName` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`areaNum`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of area
-- ----------------------------
INSERT INTO `area` VALUES ('1', '东丽A区');
INSERT INTO `area` VALUES ('2', '东丽B区');
INSERT INTO `area` VALUES ('3', '东丽D区');
INSERT INTO `area` VALUES ('4', '东区');
INSERT INTO `area` VALUES ('5', '西区');

-- ----------------------------
-- Table structure for bed
-- ----------------------------
DROP TABLE IF EXISTS `bed`;
CREATE TABLE `bed` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bedNum` int(11) DEFAULT NULL,
  `dormNum` int(11) DEFAULT NULL,
  `buildNum` int(11) DEFAULT NULL,
  `areaNum` int(11) DEFAULT NULL,
  `bedStatus` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bed
-- ----------------------------
INSERT INTO `bed` VALUES ('1', '1', '101', '5', '1', '0');
INSERT INTO `bed` VALUES ('2', '2', '101', '5', '1', '0');
INSERT INTO `bed` VALUES ('3', '3', '101', '5', '1', '0');
INSERT INTO `bed` VALUES ('4', '4', '101', '5', '1', '0');
INSERT INTO `bed` VALUES ('5', '5', '101', '5', '1', '0');
INSERT INTO `bed` VALUES ('6', '6', '101', '5', '1', '0');
INSERT INTO `bed` VALUES ('7', '1', '102', '5', '1', '0');
INSERT INTO `bed` VALUES ('8', '2', '102', '5', '1', '0');
INSERT INTO `bed` VALUES ('9', '3', '102', '5', '1', '0');
INSERT INTO `bed` VALUES ('10', '4', '102', '5', '1', '0');
INSERT INTO `bed` VALUES ('11', '5', '102', '5', '1', '0');
INSERT INTO `bed` VALUES ('12', '6', '102', '5', '1', '0');
INSERT INTO `bed` VALUES ('13', '1', '103', '5', '1', '0');
INSERT INTO `bed` VALUES ('14', '2', '103', '5', '1', '0');
INSERT INTO `bed` VALUES ('15', '3', '103', '5', '1', '0');
INSERT INTO `bed` VALUES ('16', '4', '103', '5', '1', '0');
INSERT INTO `bed` VALUES ('17', '5', '103', '5', '1', '0');
INSERT INTO `bed` VALUES ('18', '6', '103', '5', '1', '0');

-- ----------------------------
-- Table structure for build
-- ----------------------------
DROP TABLE IF EXISTS `build`;
CREATE TABLE `build` (
  `buildNum` int(11) NOT NULL,
  `buildName` varchar(255) DEFAULT NULL,
  `areaNum` int(11) DEFAULT NULL,
  `buildStatus` int(11) DEFAULT NULL,
  PRIMARY KEY (`buildNum`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of build
-- ----------------------------
INSERT INTO `build` VALUES ('1', 'a栋', '1', '1');
INSERT INTO `build` VALUES ('2', 'b栋', '1', '1');
INSERT INTO `build` VALUES ('3', 'c栋', '1', '0');
INSERT INTO `build` VALUES ('4', 'd栋', '1', '0');
INSERT INTO `build` VALUES ('5', 'e栋', '1', '1');
INSERT INTO `build` VALUES ('6', 'a栋', '2', '0');
INSERT INTO `build` VALUES ('7', 'b栋', '2', '0');
INSERT INTO `build` VALUES ('8', 'c栋', '2', '0');
INSERT INTO `build` VALUES ('9', '公寓区', '3', '0');
INSERT INTO `build` VALUES ('10', 'a栋', '4', '0');
INSERT INTO `build` VALUES ('11', 'b栋', '4', '0');
INSERT INTO `build` VALUES ('12', 'c栋', '4', '0');
INSERT INTO `build` VALUES ('13', 'd栋', '4', '0');
INSERT INTO `build` VALUES ('14', 'e栋', '4', '0');
INSERT INTO `build` VALUES ('15', 'f栋', '4', '0');
INSERT INTO `build` VALUES ('16', '笔锋楼', '5', '0');
INSERT INTO `build` VALUES ('17', '进华楼', '5', '0');

-- ----------------------------
-- Table structure for clazz
-- ----------------------------
DROP TABLE IF EXISTS `clazz`;
CREATE TABLE `clazz` (
  `clazzNum` int(11) NOT NULL,
  `clazzName` varchar(255) DEFAULT NULL,
  `collegeNum` int(11) DEFAULT NULL,
  PRIMARY KEY (`clazzNum`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of clazz
-- ----------------------------
INSERT INTO `clazz` VALUES ('21', '计算机科学与技术', '11');

-- ----------------------------
-- Table structure for college
-- ----------------------------
DROP TABLE IF EXISTS `college`;
CREATE TABLE `college` (
  `collegeNum` int(11) NOT NULL,
  `collegeName` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`collegeNum`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of college
-- ----------------------------
INSERT INTO `college` VALUES ('11', '计算机信息与工程学院');

-- ----------------------------
-- Table structure for dorm
-- ----------------------------
DROP TABLE IF EXISTS `dorm`;
CREATE TABLE `dorm` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dormNum` int(11) DEFAULT NULL,
  `buildNum` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=256 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dorm
-- ----------------------------
INSERT INTO `dorm` VALUES ('1', '101', '1');
INSERT INTO `dorm` VALUES ('2', '102', '1');
INSERT INTO `dorm` VALUES ('3', '103', '1');
INSERT INTO `dorm` VALUES ('4', '104', '1');
INSERT INTO `dorm` VALUES ('5', '105', '1');
INSERT INTO `dorm` VALUES ('6', '201', '1');
INSERT INTO `dorm` VALUES ('7', '202', '1');
INSERT INTO `dorm` VALUES ('8', '203', '1');
INSERT INTO `dorm` VALUES ('9', '204', '1');
INSERT INTO `dorm` VALUES ('10', '205', '1');
INSERT INTO `dorm` VALUES ('11', '206', '1');
INSERT INTO `dorm` VALUES ('12', '207', '1');
INSERT INTO `dorm` VALUES ('13', '208', '1');
INSERT INTO `dorm` VALUES ('14', '209', '1');
INSERT INTO `dorm` VALUES ('15', '210', '1');
INSERT INTO `dorm` VALUES ('16', '211', '1');
INSERT INTO `dorm` VALUES ('17', '212', '1');
INSERT INTO `dorm` VALUES ('18', '213', '1');
INSERT INTO `dorm` VALUES ('19', '214', '1');
INSERT INTO `dorm` VALUES ('20', '215', '1');
INSERT INTO `dorm` VALUES ('21', '216', '1');
INSERT INTO `dorm` VALUES ('22', '217', '1');
INSERT INTO `dorm` VALUES ('23', '218', '1');
INSERT INTO `dorm` VALUES ('24', '219', '1');
INSERT INTO `dorm` VALUES ('25', '220', '1');
INSERT INTO `dorm` VALUES ('26', '301', '1');
INSERT INTO `dorm` VALUES ('27', '302', '1');
INSERT INTO `dorm` VALUES ('28', '303', '1');
INSERT INTO `dorm` VALUES ('29', '304', '1');
INSERT INTO `dorm` VALUES ('30', '305', '1');
INSERT INTO `dorm` VALUES ('31', '306', '1');
INSERT INTO `dorm` VALUES ('32', '307', '1');
INSERT INTO `dorm` VALUES ('33', '308', '1');
INSERT INTO `dorm` VALUES ('34', '309', '1');
INSERT INTO `dorm` VALUES ('35', '310', '1');
INSERT INTO `dorm` VALUES ('36', '311', '1');
INSERT INTO `dorm` VALUES ('37', '312', '1');
INSERT INTO `dorm` VALUES ('38', '313', '1');
INSERT INTO `dorm` VALUES ('39', '314', '1');
INSERT INTO `dorm` VALUES ('40', '315', '1');
INSERT INTO `dorm` VALUES ('41', '316', '1');
INSERT INTO `dorm` VALUES ('42', '401', '1');
INSERT INTO `dorm` VALUES ('43', '402', '1');
INSERT INTO `dorm` VALUES ('44', '403', '1');
INSERT INTO `dorm` VALUES ('45', '404', '1');
INSERT INTO `dorm` VALUES ('46', '405', '1');
INSERT INTO `dorm` VALUES ('47', '406', '1');
INSERT INTO `dorm` VALUES ('48', '407', '1');
INSERT INTO `dorm` VALUES ('49', '408', '1');
INSERT INTO `dorm` VALUES ('50', '409', '1');
INSERT INTO `dorm` VALUES ('51', '410', '1');
INSERT INTO `dorm` VALUES ('52', '101', '2');
INSERT INTO `dorm` VALUES ('53', '102', '2');
INSERT INTO `dorm` VALUES ('54', '103', '2');
INSERT INTO `dorm` VALUES ('55', '104', '2');
INSERT INTO `dorm` VALUES ('56', '105', '2');
INSERT INTO `dorm` VALUES ('57', '201', '2');
INSERT INTO `dorm` VALUES ('58', '202', '2');
INSERT INTO `dorm` VALUES ('59', '203', '2');
INSERT INTO `dorm` VALUES ('60', '204', '2');
INSERT INTO `dorm` VALUES ('61', '205', '2');
INSERT INTO `dorm` VALUES ('62', '206', '2');
INSERT INTO `dorm` VALUES ('63', '207', '2');
INSERT INTO `dorm` VALUES ('64', '208', '2');
INSERT INTO `dorm` VALUES ('65', '209', '2');
INSERT INTO `dorm` VALUES ('66', '210', '2');
INSERT INTO `dorm` VALUES ('67', '211', '2');
INSERT INTO `dorm` VALUES ('68', '212', '2');
INSERT INTO `dorm` VALUES ('69', '213', '2');
INSERT INTO `dorm` VALUES ('70', '214', '2');
INSERT INTO `dorm` VALUES ('71', '215', '2');
INSERT INTO `dorm` VALUES ('72', '216', '2');
INSERT INTO `dorm` VALUES ('73', '217', '2');
INSERT INTO `dorm` VALUES ('74', '218', '2');
INSERT INTO `dorm` VALUES ('75', '219', '2');
INSERT INTO `dorm` VALUES ('76', '220', '2');
INSERT INTO `dorm` VALUES ('77', '301', '2');
INSERT INTO `dorm` VALUES ('78', '302', '2');
INSERT INTO `dorm` VALUES ('79', '303', '2');
INSERT INTO `dorm` VALUES ('80', '304', '2');
INSERT INTO `dorm` VALUES ('81', '305', '2');
INSERT INTO `dorm` VALUES ('82', '306', '2');
INSERT INTO `dorm` VALUES ('83', '307', '2');
INSERT INTO `dorm` VALUES ('84', '308', '2');
INSERT INTO `dorm` VALUES ('85', '309', '2');
INSERT INTO `dorm` VALUES ('86', '310', '2');
INSERT INTO `dorm` VALUES ('87', '311', '2');
INSERT INTO `dorm` VALUES ('88', '312', '2');
INSERT INTO `dorm` VALUES ('89', '313', '2');
INSERT INTO `dorm` VALUES ('90', '314', '2');
INSERT INTO `dorm` VALUES ('91', '315', '2');
INSERT INTO `dorm` VALUES ('92', '316', '2');
INSERT INTO `dorm` VALUES ('93', '401', '2');
INSERT INTO `dorm` VALUES ('94', '402', '2');
INSERT INTO `dorm` VALUES ('95', '403', '2');
INSERT INTO `dorm` VALUES ('96', '404', '2');
INSERT INTO `dorm` VALUES ('97', '405', '2');
INSERT INTO `dorm` VALUES ('98', '406', '2');
INSERT INTO `dorm` VALUES ('99', '407', '2');
INSERT INTO `dorm` VALUES ('100', '408', '2');
INSERT INTO `dorm` VALUES ('101', '409', '2');
INSERT INTO `dorm` VALUES ('102', '410', '2');
INSERT INTO `dorm` VALUES ('103', '101', '3');
INSERT INTO `dorm` VALUES ('104', '102', '3');
INSERT INTO `dorm` VALUES ('105', '103', '3');
INSERT INTO `dorm` VALUES ('106', '104', '3');
INSERT INTO `dorm` VALUES ('107', '105', '3');
INSERT INTO `dorm` VALUES ('108', '201', '3');
INSERT INTO `dorm` VALUES ('109', '202', '3');
INSERT INTO `dorm` VALUES ('110', '203', '3');
INSERT INTO `dorm` VALUES ('111', '204', '3');
INSERT INTO `dorm` VALUES ('112', '205', '3');
INSERT INTO `dorm` VALUES ('113', '206', '3');
INSERT INTO `dorm` VALUES ('114', '207', '3');
INSERT INTO `dorm` VALUES ('115', '208', '3');
INSERT INTO `dorm` VALUES ('116', '209', '3');
INSERT INTO `dorm` VALUES ('117', '210', '3');
INSERT INTO `dorm` VALUES ('118', '211', '3');
INSERT INTO `dorm` VALUES ('119', '212', '3');
INSERT INTO `dorm` VALUES ('120', '213', '3');
INSERT INTO `dorm` VALUES ('121', '214', '3');
INSERT INTO `dorm` VALUES ('122', '215', '3');
INSERT INTO `dorm` VALUES ('123', '216', '3');
INSERT INTO `dorm` VALUES ('124', '217', '3');
INSERT INTO `dorm` VALUES ('125', '218', '3');
INSERT INTO `dorm` VALUES ('126', '219', '3');
INSERT INTO `dorm` VALUES ('127', '220', '3');
INSERT INTO `dorm` VALUES ('128', '301', '3');
INSERT INTO `dorm` VALUES ('129', '302', '3');
INSERT INTO `dorm` VALUES ('130', '303', '3');
INSERT INTO `dorm` VALUES ('131', '304', '3');
INSERT INTO `dorm` VALUES ('132', '305', '3');
INSERT INTO `dorm` VALUES ('133', '306', '3');
INSERT INTO `dorm` VALUES ('134', '307', '3');
INSERT INTO `dorm` VALUES ('135', '308', '3');
INSERT INTO `dorm` VALUES ('136', '309', '3');
INSERT INTO `dorm` VALUES ('137', '310', '3');
INSERT INTO `dorm` VALUES ('138', '312', '3');
INSERT INTO `dorm` VALUES ('139', '311', '3');
INSERT INTO `dorm` VALUES ('140', '313', '3');
INSERT INTO `dorm` VALUES ('141', '314', '3');
INSERT INTO `dorm` VALUES ('142', '315', '3');
INSERT INTO `dorm` VALUES ('143', '316', '3');
INSERT INTO `dorm` VALUES ('144', '401', '3');
INSERT INTO `dorm` VALUES ('145', '402', '3');
INSERT INTO `dorm` VALUES ('146', '403', '3');
INSERT INTO `dorm` VALUES ('147', '404', '3');
INSERT INTO `dorm` VALUES ('148', '405', '3');
INSERT INTO `dorm` VALUES ('149', '406', '3');
INSERT INTO `dorm` VALUES ('150', '407', '3');
INSERT INTO `dorm` VALUES ('151', '408', '3');
INSERT INTO `dorm` VALUES ('152', '409', '3');
INSERT INTO `dorm` VALUES ('153', '410', '3');
INSERT INTO `dorm` VALUES ('154', '101', '4');
INSERT INTO `dorm` VALUES ('155', '102', '4');
INSERT INTO `dorm` VALUES ('156', '103', '4');
INSERT INTO `dorm` VALUES ('157', '104', '4');
INSERT INTO `dorm` VALUES ('158', '105', '4');
INSERT INTO `dorm` VALUES ('159', '201', '4');
INSERT INTO `dorm` VALUES ('160', '202', '4');
INSERT INTO `dorm` VALUES ('161', '203', '4');
INSERT INTO `dorm` VALUES ('162', '204', '4');
INSERT INTO `dorm` VALUES ('163', '205', '4');
INSERT INTO `dorm` VALUES ('164', '206', '4');
INSERT INTO `dorm` VALUES ('165', '207', '4');
INSERT INTO `dorm` VALUES ('166', '208', '4');
INSERT INTO `dorm` VALUES ('167', '209', '4');
INSERT INTO `dorm` VALUES ('168', '210', '4');
INSERT INTO `dorm` VALUES ('169', '211', '4');
INSERT INTO `dorm` VALUES ('170', '212', '4');
INSERT INTO `dorm` VALUES ('171', '213', '4');
INSERT INTO `dorm` VALUES ('172', '214', '4');
INSERT INTO `dorm` VALUES ('173', '215', '4');
INSERT INTO `dorm` VALUES ('174', '216', '4');
INSERT INTO `dorm` VALUES ('175', '217', '4');
INSERT INTO `dorm` VALUES ('176', '218', '4');
INSERT INTO `dorm` VALUES ('177', '219', '4');
INSERT INTO `dorm` VALUES ('178', '220', '4');
INSERT INTO `dorm` VALUES ('179', '301', '4');
INSERT INTO `dorm` VALUES ('180', '302', '4');
INSERT INTO `dorm` VALUES ('181', '303', '4');
INSERT INTO `dorm` VALUES ('182', '304', '4');
INSERT INTO `dorm` VALUES ('183', '305', '4');
INSERT INTO `dorm` VALUES ('184', '306', '4');
INSERT INTO `dorm` VALUES ('185', '307', '4');
INSERT INTO `dorm` VALUES ('186', '308', '4');
INSERT INTO `dorm` VALUES ('187', '309', '4');
INSERT INTO `dorm` VALUES ('188', '310', '4');
INSERT INTO `dorm` VALUES ('189', '311', '4');
INSERT INTO `dorm` VALUES ('190', '312', '4');
INSERT INTO `dorm` VALUES ('191', '313', '4');
INSERT INTO `dorm` VALUES ('192', '314', '4');
INSERT INTO `dorm` VALUES ('193', '315', '4');
INSERT INTO `dorm` VALUES ('194', '316', '4');
INSERT INTO `dorm` VALUES ('195', '401', '4');
INSERT INTO `dorm` VALUES ('196', '402', '4');
INSERT INTO `dorm` VALUES ('197', '403', '4');
INSERT INTO `dorm` VALUES ('198', '404', '4');
INSERT INTO `dorm` VALUES ('199', '405', '4');
INSERT INTO `dorm` VALUES ('200', '406', '4');
INSERT INTO `dorm` VALUES ('201', '407', '4');
INSERT INTO `dorm` VALUES ('202', '408', '4');
INSERT INTO `dorm` VALUES ('203', '409', '4');
INSERT INTO `dorm` VALUES ('204', '410', '4');
INSERT INTO `dorm` VALUES ('205', '410', '5');
INSERT INTO `dorm` VALUES ('206', '409', '5');
INSERT INTO `dorm` VALUES ('207', '408', '5');
INSERT INTO `dorm` VALUES ('208', '407', '5');
INSERT INTO `dorm` VALUES ('209', '406', '5');
INSERT INTO `dorm` VALUES ('210', '405', '5');
INSERT INTO `dorm` VALUES ('211', '404', '5');
INSERT INTO `dorm` VALUES ('212', '403', '5');
INSERT INTO `dorm` VALUES ('213', '402', '5');
INSERT INTO `dorm` VALUES ('214', '401', '5');
INSERT INTO `dorm` VALUES ('215', '316', '5');
INSERT INTO `dorm` VALUES ('216', '315', '5');
INSERT INTO `dorm` VALUES ('217', '314', '5');
INSERT INTO `dorm` VALUES ('218', '313', '5');
INSERT INTO `dorm` VALUES ('219', '312', '5');
INSERT INTO `dorm` VALUES ('220', '311', '5');
INSERT INTO `dorm` VALUES ('221', '310', '5');
INSERT INTO `dorm` VALUES ('222', '309', '5');
INSERT INTO `dorm` VALUES ('223', '308', '5');
INSERT INTO `dorm` VALUES ('224', '307', '5');
INSERT INTO `dorm` VALUES ('225', '306', '5');
INSERT INTO `dorm` VALUES ('226', '305', '5');
INSERT INTO `dorm` VALUES ('227', '304', '5');
INSERT INTO `dorm` VALUES ('228', '303', '5');
INSERT INTO `dorm` VALUES ('229', '302', '5');
INSERT INTO `dorm` VALUES ('230', '301', '5');
INSERT INTO `dorm` VALUES ('231', '220', '5');
INSERT INTO `dorm` VALUES ('232', '219', '5');
INSERT INTO `dorm` VALUES ('233', '218', '5');
INSERT INTO `dorm` VALUES ('234', '217', '5');
INSERT INTO `dorm` VALUES ('235', '216', '5');
INSERT INTO `dorm` VALUES ('236', '215', '5');
INSERT INTO `dorm` VALUES ('237', '214', '5');
INSERT INTO `dorm` VALUES ('238', '213', '5');
INSERT INTO `dorm` VALUES ('239', '212', '5');
INSERT INTO `dorm` VALUES ('240', '211', '5');
INSERT INTO `dorm` VALUES ('241', '210', '5');
INSERT INTO `dorm` VALUES ('242', '209', '5');
INSERT INTO `dorm` VALUES ('243', '208', '5');
INSERT INTO `dorm` VALUES ('244', '207', '5');
INSERT INTO `dorm` VALUES ('245', '206', '5');
INSERT INTO `dorm` VALUES ('246', '205', '5');
INSERT INTO `dorm` VALUES ('247', '204', '5');
INSERT INTO `dorm` VALUES ('248', '203', '5');
INSERT INTO `dorm` VALUES ('249', '202', '5');
INSERT INTO `dorm` VALUES ('250', '201', '5');
INSERT INTO `dorm` VALUES ('251', '105', '5');
INSERT INTO `dorm` VALUES ('252', '104', '5');
INSERT INTO `dorm` VALUES ('253', '103', '5');
INSERT INTO `dorm` VALUES ('254', '102', '5');
INSERT INTO `dorm` VALUES ('255', '101', '5');

-- ----------------------------
-- Table structure for dormadmin
-- ----------------------------
DROP TABLE IF EXISTS `dormadmin`;
CREATE TABLE `dormadmin` (
  `dormadminId` int(11) NOT NULL AUTO_INCREMENT,
  `dormadminNum` varchar(255) DEFAULT NULL,
  `dormadminName` varchar(255) DEFAULT NULL,
  `dormadminPassword` varchar(255) DEFAULT NULL,
  `dormadminPhone` varchar(255) DEFAULT NULL,
  `dormadminSex` varchar(255) DEFAULT NULL,
  `dormadminSbirth` date DEFAULT NULL,
  `dormadminImage` varchar(255) DEFAULT NULL,
  `adminAddrezz` varchar(255) DEFAULT NULL,
  `adminType` int(11) DEFAULT NULL,
  PRIMARY KEY (`dormadminId`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dormadmin
-- ----------------------------
INSERT INTO `dormadmin` VALUES ('11', '1100110011', '我是超级管理员', 'bad04e164a333c905d91202b88da69d1', '15363370974', '男', '1980-01-03', '/static/upload/userImage/img/portrait/11/portrait.jpg', null, '1');
INSERT INTO `dormadmin` VALUES ('50', '1100110013', '张志明', '224036cb2907e4eb840f307c11360580', '13602762052', '男', '1995-02-13', null, '东丽A区 a栋', '2');
INSERT INTO `dormadmin` VALUES ('51', '1100110012', 'e栋阿姨', 'bad04e164a333c905d91202b88da69d1', '15363370974', '男', '1960-03-08', '/static/upload/userImage/img/portrait/51/portrait.jpg', '东丽A区 e栋', '2');
INSERT INTO `dormadmin` VALUES ('52', '1100110014', '韩师吴彦祖', 'bad04e164a333c905d91202b88da69d1', '15363478912', '男', '1985-09-11', null, '东丽A区 b栋', '2');

-- ----------------------------
-- Table structure for link
-- ----------------------------
DROP TABLE IF EXISTS `link`;
CREATE TABLE `link` (
  `linkId` int(11) NOT NULL AUTO_INCREMENT,
  `linkName` varchar(255) DEFAULT NULL,
  `linkUrl` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`linkId`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of link
-- ----------------------------
INSERT INTO `link` VALUES ('2', '百度', 'www.baidu.com');
INSERT INTO `link` VALUES ('3', '韩师首页', 'www.hstc.edu.cn');
INSERT INTO `link` VALUES ('4', '笔架山首页', 'www.beaplat.com/2014/');

-- ----------------------------
-- Table structure for porperty
-- ----------------------------
DROP TABLE IF EXISTS `porperty`;
CREATE TABLE `porperty` (
  `porpertyNum` int(11) NOT NULL,
  `porpertyName` varchar(255) DEFAULT NULL,
  `dormNum` int(11) DEFAULT NULL,
  PRIMARY KEY (`porpertyNum`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of porperty
-- ----------------------------

-- ----------------------------
-- Table structure for registercode
-- ----------------------------
DROP TABLE IF EXISTS `registercode`;
CREATE TABLE `registercode` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of registercode
-- ----------------------------
INSERT INTO `registercode` VALUES ('1', 'hBXEOXcZgWdbG2YxSGdavj6i80Cci3pBw4MrD88p09bb4ogCsk89');

-- ----------------------------
-- Table structure for repair
-- ----------------------------
DROP TABLE IF EXISTS `repair`;
CREATE TABLE `repair` (
  `repairNum` int(11) NOT NULL AUTO_INCREMENT,
  `submitTime` datetime DEFAULT NULL,
  `resolveTime` datetime DEFAULT NULL,
  `repairReason` varchar(255) DEFAULT NULL,
  `porpertyName` varchar(255) DEFAULT NULL,
  `addrezz` varchar(255) DEFAULT NULL,
  `studentNum` int(11) DEFAULT NULL,
  `repairStatus` int(255) DEFAULT NULL,
  PRIMARY KEY (`repairNum`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of repair
-- ----------------------------
INSERT INTO `repair` VALUES ('4', '2017-06-09 16:08:04', '2017-06-09 20:43:27', '天花板漏水', '天花板', '东丽a区e栋201', '2014112101', '1');
INSERT INTO `repair` VALUES ('5', '2017-06-09 16:08:05', '2017-06-09 20:33:07', '鞋柜烂了', '鞋柜', '东丽a区e栋202', '2014112107', '0');
INSERT INTO `repair` VALUES ('6', '2017-06-09 16:08:06', '2017-06-09 20:56:08', '水龙头开不出水', '水龙头', '东丽a区e栋201', '2014112104', '-1');
INSERT INTO `repair` VALUES ('7', '2017-06-09 16:08:07', null, '天花板漏水', '天花板', '东丽a区e栋201', '2014112101', '0');
INSERT INTO `repair` VALUES ('8', '2017-06-09 16:08:08', null, '天花板漏水', '天花板', '东丽a区e栋201', '2014112101', '0');
INSERT INTO `repair` VALUES ('9', '2017-06-09 16:08:08', null, '天花板漏水', '天花板', '东丽a区e栋201', '2014112101', '0');
INSERT INTO `repair` VALUES ('10', '2017-06-09 16:08:08', null, '天花板漏水', '天花板', '东丽a区e栋201', '2014112101', '0');
INSERT INTO `repair` VALUES ('11', '2017-06-12 16:27:12', null, '快被拉爆了', '厕所', '东丽a区e栋201', '2014112101', '0');

-- ----------------------------
-- Table structure for report
-- ----------------------------
DROP TABLE IF EXISTS `report`;
CREATE TABLE `report` (
  `reportId` int(11) NOT NULL AUTO_INCREMENT,
  `reportTitle` varchar(255) DEFAULT NULL,
  `reportSummary` varchar(255) DEFAULT NULL,
  `report` text,
  `reportImage` varchar(255) DEFAULT NULL,
  `reportTime` datetime DEFAULT NULL,
  `reportAuthor` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`reportId`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of report
-- ----------------------------
INSERT INTO `report` VALUES ('41', '韩山师范后勤管理处合同和招标管理员招聘启事', '首先以上数据都是我瞎几把编写的根据工作需要，后勤管理处拟招聘合同管理员兼招标管理员1名，主要负责工程', '<p>首先以上数据都是我瞎几把编写的</p><ul style=\"list-style-type: none;\" class=\" list-paddingleft-2\"><p style=\"margin-top: 0px; margin-bottom: 25px; padding: 0px; border: 0px; line-height: 18px; color: rgb(68, 68, 68);\"><span style=\"margin: 0px; padding: 0px; border: 0px; font-family: 宋体;\">根据工作需要，后勤管理处拟招聘合同管理员兼招标管理员</span>1<span style=\"margin: 0px; padding: 0px; border: 0px; font-family: 宋体;\">名，主要负责工程、物业、后勤综合服务等相关合同的审核，政府采购、校定招标等工作。</span></p><p style=\"margin-top: 0px; margin-bottom: 25px; padding: 0px; border: 0px; line-height: 18px; color: rgb(68, 68, 68);\"><span style=\"margin: 0px; padding: 0px; border: 0px; font-family: 宋体;\">条件要求：</span></p><p style=\"margin-top: 0px; margin-bottom: 25px; padding: 0px; border: 0px; line-height: 18px; color: rgb(68, 68, 68);\">1<span style=\"margin: 0px; padding: 0px; border: 0px; font-family: 宋体;\">、硕士研究生及以上学历（应届毕业生不限专业），</span>35<span style=\"margin: 0px; padding: 0px; border: 0px; font-family: 宋体;\">岁以下，文字能力较强，能够胜任合同审核和招标管理等工作。</span></p><p style=\"margin-top: 0px; margin-bottom: 25px; padding: 0px; border: 0px; line-height: 18px; color: rgb(68, 68, 68);\">2<span style=\"margin: 0px; padding: 0px; border: 0px; font-family: 宋体;\">、熟练使用常用办公软件，了解工程管理、物业管理、政府采购等相关知识。</span></p><p style=\"margin-top: 0px; margin-bottom: 25px; padding: 0px; border: 0px; line-height: 18px; color: rgb(68, 68, 68);\">3<span style=\"margin: 0px; padding: 0px; border: 0px; font-family: 宋体;\">、了解档案管理基本知识，能够胜任部门档案收集、整理、归档等工作。</span></p><p style=\"margin-top: 0px; margin-bottom: 25px; padding: 0px; border: 0px; line-height: 18px; color: rgb(68, 68, 68);\">4<span style=\"margin: 0px; padding: 0px; border: 0px; font-family: 宋体;\">、具有良好的沟通能力，组织纪律性强，服务意识强，办事不拖沓，工作严谨，有责任心。</span></p><p style=\"margin-top: 0px; margin-bottom: 25px; padding: 0px; border: 0px; line-height: 18px; color: rgb(68, 68, 68);\"><span style=\"margin: 0px; padding: 0px; border: 0px; font-family: 宋体;\">应聘者请将简历发到电子邮箱</span><a style=\"color: rgb(70, 70, 70); outline: none;\"><span style=\"margin: 0px; padding: 0px; border: 0px; font-family: calibri;\">hqdw@tsinghua.edu.cn</span></a><span style=\"margin: 0px; padding: 0px; border: 0px; font-family: 宋体;\">，咨询电话：</span>62795587<span style=\"margin: 0px; padding: 0px; border: 0px; font-family: 宋体;\">。经初选后，后勤管理处将通知入选人员面试。</span></p><p style=\"margin-top: 0px; margin-bottom: 25px; padding: 0px; border: 0px; line-height: 18px; color: rgb(68, 68, 68);\"><span style=\"margin: 0px; padding: 0px; border: 0px; font-family: 宋体;\">清华大学后勤管理处</span></p></ul><p><br/></p>', '/static/upload/image/149719023032593a188f9-ee20-41b8-9fc1-85c2dc99740b.png', '2017-06-11 22:10:30', '我是超级管理员');
INSERT INTO `report` VALUES ('42', '停水通知', '由于需要应急抢修，届时需对您处暂停自来水供应，以便完成抢修工作。停水时间：5月26日23：00至5月', '<ul style=\"list-style-type: none;\" class=\" list-paddingleft-2\"><p style=\"margin-top: 0px; margin-bottom: 25px; padding: 0px; border: 0px; line-height: 30px; color: rgb(68, 68, 68); text-indent: 44px;\"><span style=\"margin: 0px; padding: 0px; border: 0px; font-family: 宋体; font-size: 19px;\">由于需要应急抢修，届时需对您处暂停自来水供应，以便完成抢修工作。</span><span style=\"margin: 0px; padding: 0px; border: 0px; font-family: &quot;times new roman&quot;; font-size: 19px;\"></span></p><p style=\"margin-top: 0px; margin-bottom: 25px; padding: 0px; border: 0px; line-height: 30px; color: rgb(68, 68, 68); text-indent: 44px;\"><span style=\"margin: 0px; padding: 0px; border: 0px; font-family: 宋体; font-size: 19px;\">停水时间：</span><span style=\"margin: 0px; padding: 0px; border: 0px; font-family: &quot;times new roman&quot;; font-size: 19px;\">5</span><span style=\"margin: 0px; padding: 0px; border: 0px; font-family: 宋体; font-size: 19px;\">月</span><span style=\"margin: 0px; padding: 0px; border: 0px; font-family: &quot;times new roman&quot;; font-size: 19px;\">26</span><span style=\"margin: 0px; padding: 0px; border: 0px; font-family: 宋体; font-size: 19px;\">日</span><span style=\"margin: 0px; padding: 0px; border: 0px; font-family: &quot;times new roman&quot;; font-size: 19px;\">23</span><span style=\"margin: 0px; padding: 0px; border: 0px; font-family: 宋体; font-size: 19px;\">：</span><span style=\"margin: 0px; padding: 0px; border: 0px; font-family: &quot;times new roman&quot;; font-size: 19px;\">00</span><span style=\"margin: 0px; padding: 0px; border: 0px; font-family: 宋体; font-size: 19px;\">至</span><span style=\"margin: 0px; padding: 0px; border: 0px; font-family: &quot;times new roman&quot;; font-size: 19px;\">5</span><span style=\"margin: 0px; padding: 0px; border: 0px; font-family: 宋体; font-size: 19px;\">月</span><span style=\"margin: 0px; padding: 0px; border: 0px; font-family: &quot;times new roman&quot;; font-size: 19px;\">27</span><span style=\"margin: 0px; padding: 0px; border: 0px; font-family: 宋体; font-size: 19px;\">日</span><span style=\"margin: 0px; padding: 0px; border: 0px; font-family: &quot;times new roman&quot;; font-size: 19px;\">3</span><span style=\"margin: 0px; padding: 0px; border: 0px; font-family: 宋体; font-size: 19px;\">：</span><span style=\"margin: 0px; padding: 0px; border: 0px; font-family: &quot;times new roman&quot;; font-size: 19px;\">00</span><span style=\"margin: 0px; padding: 0px; border: 0px; font-family: &quot;times new roman&quot;; font-size: 19px;\"></span></p><p style=\"margin-top: 0px; margin-bottom: 25px; padding: 0px; border: 0px; line-height: 30px; color: rgb(68, 68, 68); text-indent: 44px;\"><span style=\"margin: 0px; padding: 0px; border: 0px; font-family: 宋体; font-size: 19px;\">停水范围：十一万变电站、高低压实验室、汽车实验室、化学实验室、力学实验室、垃圾站、电工维修班。</span><span style=\"margin: 0px; padding: 0px; border: 0px; font-family: &quot;times new roman&quot;; font-size: 19px;\"></span></p><p style=\"margin-top: 0px; margin-bottom: 25px; padding: 0px; border: 0px; line-height: 30px; color: rgb(68, 68, 68); text-indent: 44px;\"><span style=\"margin: 0px; padding: 0px; border: 0px; font-family: 宋体; font-size: 19px;\">请以上用户做好储水准备，若提前供水恕不另行通知。</span><span style=\"margin: 0px; padding: 0px; border: 0px; font-family: &quot;times new roman&quot;; font-size: 19px;\"></span></p><p style=\"margin-top: 0px; margin-bottom: 25px; padding: 0px; border: 0px; line-height: 30px; color: rgb(68, 68, 68); text-indent: 44px;\"><span style=\"margin: 0px; padding: 0px; border: 0px; font-family: 宋体; font-size: 19px;\">给您带来不便敬请谅解。谢谢您的支持！</span><span style=\"margin: 0px; padding: 0px; border: 0px; font-family: &quot;times new roman&quot;; font-size: 19px;\"></span></p><p style=\"margin-top: 0px; margin-bottom: 25px; padding: 0px; border: 0px; line-height: 30px; color: rgb(68, 68, 68);\"><span style=\"margin: 0px; padding: 0px; border: 0px; font-family: &quot;times new roman&quot;; font-size: 19px;\"></span></p><p style=\"margin-top: 0px; margin-bottom: 25px; padding: 0px; border: 0px; line-height: 30px; color: rgb(68, 68, 68);\"><span style=\"margin: 0px; padding: 0px; border: 0px; font-family: &quot;times new roman&quot;; font-size: 19px;\"></span></p><p style=\"margin-top: 0px; margin-bottom: 25px; padding: 0px; border: 0px; line-height: 30px; color: rgb(68, 68, 68); text-align: right; text-indent: 48px;\"><span style=\"margin: 0px; padding: 0px; border: 0px; font-family: &quot;times new roman&quot;; color: black; font-size: 19px;\">&nbsp; &nbsp; &nbsp;</span><span style=\"margin: 0px; padding: 0px; border: 0px; font-family: &quot;times new roman&quot;; color: black; font-size: 19px;\">&nbsp;&nbsp; &nbsp;&nbsp;</span><span style=\"margin: 0px; padding: 0px; border: 0px; font-family: 宋体; color: black; font-size: 19px;\">修缮中心水管科</span><span style=\"margin: 0px; padding: 0px; border: 0px; font-family: &quot;times new roman&quot;; color: black; font-size: 19px;\"></span></p><p style=\"margin-top: 0px; margin-bottom: 25px; padding: 0px; border: 0px; line-height: 30px; color: rgb(68, 68, 68); text-align: right;\"><span style=\"margin: 0px; padding: 0px; border: 0px; font-family: &quot;times new roman&quot;; color: black; font-size: 19px;\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;2017</span><span style=\"margin: 0px; padding: 0px; border: 0px; font-family: 宋体; color: black; font-size: 19px;\">年</span><span style=\"margin: 0px; padding: 0px; border: 0px; font-family: &quot;times new roman&quot;; color: black; font-size: 19px;\">5</span><span style=\"margin: 0px; padding: 0px; border: 0px; font-family: 宋体; color: black; font-size: 19px;\">月</span><span style=\"margin: 0px; padding: 0px; border: 0px; font-family: &quot;times new roman&quot;; color: black; font-size: 19px;\">26</span><span style=\"margin: 0px; padding: 0px; border: 0px; font-family: 宋体; color: black; font-size: 19px;\">日</span></p></ul><p><br/></p>', '/static/upload/image/1497276047115e3ef9fdegw1ew6w6d28phj216l0ur42h.jpg', '2017-06-12 22:01:24', '我是超级管理员');
INSERT INTO `report` VALUES ('43', '东丽a区e栋关于对陈庆丰通告', '昨天收到e栋205、204宿舍举报，昨晚凌晨207学生陈庆峰大声k歌，歌声十分难听，205和204学', '<p>昨天收到e栋205、204宿舍举报，昨晚凌晨207学生陈庆峰大声k歌，歌声十分难听，205和204学生难以忍受，无法入眠，入眠后都出现各种不同的做噩梦现象，于是来楼下举报，我作为e栋阿姨，收到举报后，赶往现场</p><p><br/></p><p>以上数据都是我瞎编的，如有相同，纯属瞎编</p><p><br/></p>', '/static/upload/image/1497275666024timg.jpg', '2017-06-12 21:54:30', 'e栋阿姨');

-- ----------------------------
-- Table structure for situation
-- ----------------------------
DROP TABLE IF EXISTS `situation`;
CREATE TABLE `situation` (
  `situationId` int(11) NOT NULL AUTO_INCREMENT,
  `leaveTime` datetime DEFAULT NULL,
  `returnTime` datetime DEFAULT NULL,
  `event` varchar(255) DEFAULT NULL,
  `studentNum` int(11) DEFAULT NULL,
  `eventStatus` int(255) DEFAULT NULL,
  PRIMARY KEY (`situationId`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of situation
-- ----------------------------
INSERT INTO `situation` VALUES ('1', '2017-05-22 00:00:00', '2017-06-01 00:57:04', '感冒发热', '2014112101', '1');
INSERT INTO `situation` VALUES ('2', '2017-05-23 00:00:00', '2017-05-24 00:00:00', '便秘', '2014112102', '0');
INSERT INTO `situation` VALUES ('4', '2017-06-12 14:52:29', null, '拉屎拉不出来，喝白开水都没用，用了几瓶开塞露，卵用都没，我觉得我还是要请假出去看医生，让他捅几下', '2014112101', '0');

-- ----------------------------
-- Table structure for student
-- ----------------------------
DROP TABLE IF EXISTS `student`;
CREATE TABLE `student` (
  `studentNum` int(11) NOT NULL,
  `studentName` varchar(255) DEFAULT NULL,
  `studentSex` varchar(255) DEFAULT NULL,
  `studentBirth` date DEFAULT NULL,
  `areaNum` int(255) DEFAULT NULL,
  `buildNum` int(11) DEFAULT NULL,
  `dormNum` int(11) DEFAULT NULL,
  `bedNum` int(11) DEFAULT NULL,
  `collegeName` varchar(255) DEFAULT NULL,
  `clazzName` varchar(255) DEFAULT NULL,
  `clazzNum` int(11) DEFAULT NULL,
  `studentInTime` date DEFAULT NULL,
  PRIMARY KEY (`studentNum`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of student
-- ----------------------------
INSERT INTO `student` VALUES ('2014112101', '李明', '男', '1991-06-21', '1', '0', '0', '0', '计算机信息与工程学院', '计算机科学与技术', '21', '2014-09-14');
