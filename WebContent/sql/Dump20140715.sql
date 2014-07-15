/*
Navicat MySQL Data Transfer

Source Server         : loacl
Source Server Version : 50527
Source Host           : localhost:3306
Source Database       : educom

Target Server Type    : MYSQL
Target Server Version : 50527
File Encoding         : 65001

Date: 2014-07-15 22:05:56
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `html`
-- ----------------------------
DROP TABLE IF EXISTS `html`;
CREATE TABLE `html` (
  `htmlid` int(11) NOT NULL AUTO_INCREMENT,
  `html` text,
  `linkid` int(11) DEFAULT NULL,
  PRIMARY KEY (`htmlid`),
  KEY `fk_html_1` (`linkid`),
  CONSTRAINT `fk_html_1` FOREIGN KEY (`linkid`) REFERENCES `link` (`linkid`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of html
-- ----------------------------

-- ----------------------------
-- Table structure for `info_admin`
-- ----------------------------
DROP TABLE IF EXISTS `info_admin`;
CREATE TABLE `info_admin` (
  `adminid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL,
  `pass` varchar(255) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`adminid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of info_admin
-- ----------------------------
INSERT INTO `info_admin` VALUES ('1', '1', 'c4ca4238a0b923820dcc509a6f75849b', 'tanglinpeixin@qq.com');

-- ----------------------------
-- Table structure for `link`
-- ----------------------------
DROP TABLE IF EXISTS `link`;
CREATE TABLE `link` (
  `linkid` int(11) NOT NULL AUTO_INCREMENT,
  `link` varchar(200) DEFAULT NULL,
  `html` text,
  `regex` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`linkid`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of link
-- ----------------------------
INSERT INTO `link` VALUES ('1', 'http://zfcg.nantong.gov.cn/col/col30067/index.html', '56031', null);
INSERT INTO `link` VALUES ('2', 'http://zfcg.nantong.gov.cn/', null, '123');
INSERT INTO `link` VALUES ('4', 'http://www.cnpm25.cn/city/nantong.html', null, '123');

-- ----------------------------
-- Table structure for `temp001`
-- ----------------------------
DROP TABLE IF EXISTS `temp001`;
CREATE TABLE `temp001` (
  `temp001id` int(11) NOT NULL AUTO_INCREMENT,
  `f1` text,
  `f2` text,
  `f3` text,
  `f4` text,
  `f5` text,
  `f6` text,
  `f7` text,
  `f8` text,
  `f9` text,
  `fa` text,
  `fb` text,
  `fc` text,
  `fd` text,
  `fe` text,
  `ff` text,
  `fg` text,
  `fh` text,
  `fi` text,
  `fj` text,
  `fk` text,
  `fl` text,
  `fm` text,
  `fn` text,
  `fo` text,
  `fp` text,
  `fq` text,
  `fr` text,
  `fs` text,
  `ft` text,
  `fu` text,
  `fv` text,
  `fw` text,
  `fx` text,
  `fy` text,
  `fz` text,
  `a1` text,
  `a2` text,
  `date` datetime DEFAULT NULL,
  PRIMARY KEY (`temp001id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of temp001
-- ----------------------------
INSERT INTO `temp001` VALUES ('35', '1', '1', '35', '25', '李玲', '', '', '', '教法：讲解法、示范法、分解教学法、完整教学法、带领法、\r\n\r\n循序渐进法、口令指挥法、非语言提示法、启发与激励法、\r\n\r\n递加循环法。\r\n', '学法：模仿法、反复练习法、小组练习法、小组合作探究法。\r\n教师备教材、备学生。\r\n', '', '', '依据简单易学，循序渐进的原则精心设计教学过程，激发', '注重培养学生的自主学习、探究学习的能力，逐步推进学', null, '在教学中注重使学生采用小组合作式学习方式，培养学生', '1、课堂常规\r\n\r\n2、导入新课\r\n\r\n3、明确教学目\r\n\r\n标\r\n\r\n4、热身练习\r\n\r\n\r\n\r\n头部练习 — 肩\r\n\r\n部练习 — 腰腹\r\n\r\n部练习 — 膝关\r\n\r\n节运动 — 前压\r\n\r\n腿\r\n', '1、组织学生\r\n集合\r\n2、向学生\r\n问好\r\n3、宣布本节课\r\n教学任务。\r\n4、教师示范、\r\n辅以口令和身\r\n体语言提示。\r\n5、组织学生完\r\n成动作（放音\r\n乐）\r\n', '1、集合整队\r\n\r\n\r\n2、向老师问好\r\n\r\n\r\n3、认真听讲本\r\n节课教学任务\r\n4、学生模仿教\r\n师动作，把身体\r\n各部位活动开。\r\n5、听音乐练习\r\n', '', '', '一、三姿训练\r\n\r\n1、基本站姿\r\n\r\n2、基本坐姿\r\n\r\n3、基本走姿\r\n\r\n\r\n\r\n\r\n\r\n二、健美操基本\r\n\r\n动作\r\n\r\n1、基本手型\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n并掌\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n立掌\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n拳\r\n \r\n', '1、简述动作要\r\n\r\n领\r\n\r\n2、组织学生进\r\n\r\n行练习\r\n\r\n\r\n\r\n\r\n\r\n1、示范基本手\r\n\r\n型动作。\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n2、简述各手型\r\n\r\n动作要领，配合\r\n\r\n示范动作。\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n3、纠正学生错\r\n\r\n误动作\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n4、教师和学生\r\n\r\n共同练习\r\n', '1、听动作要领\r\n\r\n\r\n\r\n2、三姿练习\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n1、观摩教师示\r\n\r\n范基本手型。\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n2、模仿教师的\r\n\r\n动作。\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n3、纠正错误动\r\n\r\n作。\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n4、集体练习\r\n \r\n', '', '', '1、放松活动：\r\n身体拉伸\r\n\r\n\r\n\r\n\r\n\r\n2、师生评价\r\n\r\n\r\n\r\n\r\n\r\n3、师生再见\r\n', '1、教师领做。\r\n\r\n深呼吸，肢体充\r\n\r\n分放松\r\n\r\n\r\n\r\n2、评价学生课\r\n\r\n堂练习情况。\r\n\r\n\r\n\r\n3、布置课后作\r\n\r\n业；师生再见\r\n \r\n', '1、集体练习。\r\n\r\n深呼吸；肢体充\r\n\r\n分放松\r\n\r\n\r\n\r\n2、学生自评\r\n\r\n\r\n\r\n\r\n\r\n3、师生再见\r\n', '', '', '', '35%—50%', '音响设备', '平均心率：105—120 次/分', '搜索网络资源，观看大众健美操二套一级视频，进行动作练', '学生的活动积极性高。分组练习时，在具有一定舞蹈基础学生的带领下，', '2014-03-10 09:33:22');
