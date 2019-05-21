/*
Navicat MySQL Data Transfer

Source Server         : ewsdb
Source Server Version : 50556
Source Host           : localhost:3306
Source Database       : ewsdb

Target Server Type    : MYSQL
Target Server Version : 50556
File Encoding         : 65001

Date: 2019-05-21 17:25:09
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `tb_user`
-- ----------------------------
DROP TABLE IF EXISTS `tb_user`;
CREATE TABLE `tb_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uname` varchar(20) NOT NULL,
  `upwd` varchar(50) NOT NULL,
  `email` varchar(30) DEFAULT NULL,
  `role` varchar(20) DEFAULT NULL,
  `registerTime` date DEFAULT NULL,
  `lastLoginTime` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tb_user
-- ----------------------------
INSERT INTO `tb_user` VALUES ('1', 'liuxisheng', '96e79218965eb72c92a549dd5a330112', '2521006286@qq.com', 'admin', '2019-05-21', '2019-05-21');
INSERT INTO `tb_user` VALUES ('2', 'liuxisheng1', '7fa8282ad93047a4d6fe6111c93b308a', '25333356286@qq.com', 'admin', '2019-05-21', '2019-05-21');
INSERT INTO `tb_user` VALUES ('3', 'lieng1', '6989b5590b14b3b83dbf6f1643b5012b', '255893456286@qq.com', 'admin', '2019-05-21', '2019-05-21');
INSERT INTO `tb_user` VALUES ('4', 'li', '5310de578aa142779025f01e1e71e8a8', '2556286@qq.com', 'admin', '2019-05-21', '2019-05-21');
