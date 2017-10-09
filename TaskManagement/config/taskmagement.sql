/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50634
Source Host           : localhost:3306
Source Database       : taskmagement

Target Server Type    : MYSQL
Target Server Version : 50634
File Encoding         : 65001

Date: 2017-10-09 22:19:33
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for rel
-- ----------------------------
DROP TABLE IF EXISTS `rel`;
CREATE TABLE `rel` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT NULL,
  `tid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of rel
-- ----------------------------
INSERT INTO `rel` VALUES ('8', '8', '3');
INSERT INTO `rel` VALUES ('9', '8', '4');
INSERT INTO `rel` VALUES ('10', '8', '6');
INSERT INTO `rel` VALUES ('11', '8', '7');
INSERT INTO `rel` VALUES ('13', '8', '9');
INSERT INTO `rel` VALUES ('14', '8', '10');
INSERT INTO `rel` VALUES ('15', '8', '11');
INSERT INTO `rel` VALUES ('16', '9', '3');
INSERT INTO `rel` VALUES ('17', '9', '4');
INSERT INTO `rel` VALUES ('18', '9', '6');
INSERT INTO `rel` VALUES ('19', '9', '7');
INSERT INTO `rel` VALUES ('21', '9', '9');
INSERT INTO `rel` VALUES ('22', '9', '10');
INSERT INTO `rel` VALUES ('23', '9', '11');
INSERT INTO `rel` VALUES ('25', '8', '12');
INSERT INTO `rel` VALUES ('26', '46', '2');
INSERT INTO `rel` VALUES ('27', '46', '3');
INSERT INTO `rel` VALUES ('28', '46', '11');
INSERT INTO `rel` VALUES ('29', '46', '4');

-- ----------------------------
-- Table structure for task
-- ----------------------------
DROP TABLE IF EXISTS `task`;
CREATE TABLE `task` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `startTime` varchar(50) DEFAULT NULL,
  `endTime` varchar(50) DEFAULT NULL,
  `content` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of task
-- ----------------------------
INSERT INTO `task` VALUES ('2', '任务2', '2017.8.1', '2017.9.1', '任务2的内容');
INSERT INTO `task` VALUES ('3', '任务3', '2017-9-4', '2017-12-3', '任务3的内容');
INSERT INTO `task` VALUES ('4', '任务4', '2017-10-5', '2017-1-4', '任务4的内容');
INSERT INTO `task` VALUES ('5', '任务5', '2017-11-6', '2017-2-5', '任务5的内容');
INSERT INTO `task` VALUES ('6', '任务6', '2017-12-7', '2017-3-6', '任务6的内容');
INSERT INTO `task` VALUES ('7', '任务7', '2017-1-8', '2017-4-7', '任务7的内容');
INSERT INTO `task` VALUES ('8', '任务8', '2017-2-9', '2017-5-8', '任务8的内容');
INSERT INTO `task` VALUES ('9', '任务9', '2017-3-10', '2017-6-9', '任务9的内容');
INSERT INTO `task` VALUES ('10', '任务10', '2017-4-11', '2017-7-10', '任务10的内容');
INSERT INTO `task` VALUES ('11', '任务11', '2017-8-11', '2017-8-11', '任务11的内容');
INSERT INTO `task` VALUES ('12', '任务12', '2017-6-13', '2017-9-12', '任务12的内容');
INSERT INTO `task` VALUES ('13', '任务13', '2017-7-14', '2017-10-13', '任务13的内容');
INSERT INTO `task` VALUES ('14', '任务14', '2017-8-15', '2017-11-14', '任务14的内容');
INSERT INTO `task` VALUES ('15', '任务15', '2017-9-16', '2017-12-15', '任务15的内容');
INSERT INTO `task` VALUES ('16', '任务16', '2017-10-17', '2017-1-16', '任务16的内容');
INSERT INTO `task` VALUES ('17', '任务17', '2017-11-18', '2017-2-17', '任务17的内容');
INSERT INTO `task` VALUES ('18', '任务18-', '2017-12-19', '2017-3-18', '任务18的内容');
INSERT INTO `task` VALUES ('19', '任务19', '2017-1-20', '2017-4-19', '任务19的内容');
INSERT INTO `task` VALUES ('20', '任务20', '2017-2-21', '2017-5-20', '任务20的内容');
INSERT INTO `task` VALUES ('21', '任务21', '2017-3-22', '2017-6-21', '任务21的内容');
INSERT INTO `task` VALUES ('22', '任务22', '2017-4-23', '2017-7-22', '任务22的内容');
INSERT INTO `task` VALUES ('23', '任务23', '2017-5-24', '2017-8-23', '任务23的内容');
INSERT INTO `task` VALUES ('24', '任务24', '2017-6-25', '2017-9-24', '任务24的内容');
INSERT INTO `task` VALUES ('25', '任务25', '2017-7-26', '2017-10-25', '任务25的内容');
INSERT INTO `task` VALUES ('26', '任务26', '2017-8-27', '2017-11-26', '任务26的内容');
INSERT INTO `task` VALUES ('27', '任务27', '2017-9-28', '2017-12-27', '任务27的内容');
INSERT INTO `task` VALUES ('28', '任务28', '2017-10-29', '2017-1-28', '任务28的内容');
INSERT INTO `task` VALUES ('29', '任务29', '2017-11-30', '2017-2-29', '任务29的内容');
INSERT INTO `task` VALUES ('30', '任务30', '2017-12-1', '2017-3-0', '任务30的内容');
INSERT INTO `task` VALUES ('31', '任务31', '2017-1-2', '2017-4-1', '任务31的内容');
INSERT INTO `task` VALUES ('32', '任务32', '2017-2-3', '2017-5-2', '任务32的内容');
INSERT INTO `task` VALUES ('33', '任务33', '2017-3-4', '2017-6-3', '任务33的内容');
INSERT INTO `task` VALUES ('34', '任务34', '2017-4-5', '2017-7-4', '任务34的内容');
INSERT INTO `task` VALUES ('35', '任务35', '2017-5-6', '2017-8-5', '任务35的内容');
INSERT INTO `task` VALUES ('36', '任务36', '2017-6-7', '2017-9-6', '任务36的内容');
INSERT INTO `task` VALUES ('37', '任务37', '2017-7-8', '2017-10-7', '任务37的内容');
INSERT INTO `task` VALUES ('38', '任务38', '2017-8-9', '2017-11-8', '任务38的内容');
INSERT INTO `task` VALUES ('39', '任务39', '2017-9-10', '2017-12-9', '任务39的内容');
INSERT INTO `task` VALUES ('40', '任务40', '2017-10-11', '2017-1-10', '任务40的内容');
INSERT INTO `task` VALUES ('41', '任务41', '2017-11-12', '2017-2-11', '任务41的内容');
INSERT INTO `task` VALUES ('42', '任务42', '2017-12-13', '2017-3-12', '任务42的内容');
INSERT INTO `task` VALUES ('43', '任务43', '2017-1-14', '2017-4-13', '任务43的内容');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `password` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `college` varchar(50) DEFAULT NULL,
  `subject` varchar(30) DEFAULT NULL,
  `num` varchar(30) DEFAULT NULL,
  `grade` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('8', 'user1', 'user1', '软件学院', '计算机', '20152701061', '2015级XXXX', '103514564@163.com');
INSERT INTO `user` VALUES ('9', 'user2', 'user2', '软件学院', '计算机', '20152701062', '2015级XXXX', '103524563@163.com');
INSERT INTO `user` VALUES ('10', 'user3', 'user3', '数信学院', '计算机', '20152701063', '2015级XXXX', '103534564@qq.com');
INSERT INTO `user` VALUES ('11', 'user4', 'user4', '软件学院', '计算机', '20152701064', '2015级XXXX', '103544563@qq.com');
INSERT INTO `user` VALUES ('12', 'user5', 'user5', '软件学院', '计算机', '20152701065', '2015级XXXX', '103554564@qq.com');
INSERT INTO `user` VALUES ('13', 'user6', 'user6', '数信学院', '计算机', '20152701066', '2015级XXXX', '103564563@qq.com');
INSERT INTO `user` VALUES ('14', 'user7', 'user7', '软件学院', '计算机', '20152701067', '2015级XXXX', '103574564@qq.com');
INSERT INTO `user` VALUES ('15', 'user8', 'user8', '软件学院', '计算机', '20152701068', '2015级XXXX', '103584563@qq.com');
INSERT INTO `user` VALUES ('16', 'user9', 'user9', '数信学院', '计算机', '20152701069', '2015级XXXX', '103594564@qq.com');
INSERT INTO `user` VALUES ('17', 'user10', 'user10', '软件学院', '计算机', '201527010610', '2015级XXXX', '1035104563@qq.com');
INSERT INTO `user` VALUES ('18', 'user11', 'user11', '软件学院', '计算机', '201527010611', '2015级XXXX', '1035114564@qq.com');
INSERT INTO `user` VALUES ('19', 'user12', 'user12', '数信学院', '计算机', '201527010612', '2015级XXXX', '1035124563@qq.com');
INSERT INTO `user` VALUES ('20', 'user13', 'user13', '软件学院', '计算机', '201527010613', '2015级XXXX', '1035134564@qq.com');
INSERT INTO `user` VALUES ('21', 'user14', 'user14', '软件学院', '计算机', '201527010614', '2015级XXXX', '1035144563@qq.com');
INSERT INTO `user` VALUES ('22', 'user15', 'user15', '数信学院', '计算机', '201527010615', '2015级XXXX', '1035154564@qq.com');
INSERT INTO `user` VALUES ('23', 'user16', 'user16', '软件学院', '计算机', '201527010616', '2015级XXXX', '1035164563@qq.com');
INSERT INTO `user` VALUES ('24', 'user17', 'user17', '软件学院', '计算机', '201527010617', '2015级XXXX', '1035174564@qq.com');
INSERT INTO `user` VALUES ('25', 'user18', 'user18', '数信学院', '计算机', '201527010618', '2015级XXXX', '1035184563@qq.com');
INSERT INTO `user` VALUES ('26', 'user19', 'user19', '软件学院', '计算机', '201527010619', '2015级XXXX', '1035194564@qq.com');
INSERT INTO `user` VALUES ('27', 'user20', 'user20', '软件学院', '计算机', '201527010620', '2015级XXXX', '1035204563@qq.com');
INSERT INTO `user` VALUES ('28', 'user21', 'user21', '数信学院', '计算机', '201527010621', '2015级XXXX', '1035214564@qq.com');
INSERT INTO `user` VALUES ('29', 'user22', 'user22', '软件学院', '计算机', '201527010622', '2015级XXXX', '1035224563@qq.com');
INSERT INTO `user` VALUES ('30', 'user23', 'user23', '软件学院', '计算机', '201527010623', '2015级XXXX', '1035234564@qq.com');
INSERT INTO `user` VALUES ('31', 'user24', 'user24', '数信学院', '计算机', '201527010624', '2015级XXXX', '1035244563@qq.com');
INSERT INTO `user` VALUES ('32', 'user25', 'user25', '软件学院', '计算机', '201527010625', '2015级XXXX', '1035254564@qq.com');
INSERT INTO `user` VALUES ('33', 'user26', 'user26', '软件学院', '计算机', '201527010626', '2015级XXXX', '1035264563@qq.com');
INSERT INTO `user` VALUES ('34', 'user27', 'user27', '数信学院', '计算机', '201527010627', '2015级XXXX', '1035274564@qq.com');
INSERT INTO `user` VALUES ('35', 'user28', 'user28', '软件学院', '计算机', '201527010628', '2015级XXXX', '1035284563@qq.com');
INSERT INTO `user` VALUES ('36', 'user29', 'user29', '软件学院', '计算机', '201527010629', '2015级XXXX', '1035294564@qq.com');
INSERT INTO `user` VALUES ('37', 'user30', 'user30', '数信学院', '计算机', '201527010630', '2015级XXXX', '1035304563@qq.com');
INSERT INTO `user` VALUES ('38', 'user31', 'user31', '软件学院', '计算机', '201527010631', '2015级XXXX', '1035314564@qq.com');
INSERT INTO `user` VALUES ('39', 'user32', 'user32', '软件学院', '计算机', '201527010632', '2015级XXXX', '1035324563@qq.com');
INSERT INTO `user` VALUES ('40', 'admin', 'admin', null, null, null, null, null);
INSERT INTO `user` VALUES ('46', 'Wixson', 'wixson', '软件学院', '软件工程', 'xxxxxxxxx', 'R9', '1035214549@163.com');
INSERT INTO `user` VALUES ('48', 'wixson', 'wixson', '', '', '', '', '');
