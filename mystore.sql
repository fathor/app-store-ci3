/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50505
Source Host           : localhost:3306
Source Database       : mystore

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2021-02-01 08:38:27
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for closing_report
-- ----------------------------
DROP TABLE IF EXISTS `closing_report`;
CREATE TABLE `closing_report` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `account_code` varchar(255) DEFAULT NULL,
  `assets` double(25,2) NOT NULL,
  `liability` double(25,2) NOT NULL,
  `cost` double(25,2) NOT NULL,
  `revenue` double(25,2) NOT NULL,
  `month` varchar(2) DEFAULT NULL,
  `year` int(4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of closing_report
-- ----------------------------

-- ----------------------------
-- Table structure for closing_saldo
-- ----------------------------
DROP TABLE IF EXISTS `closing_saldo`;
CREATE TABLE `closing_saldo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `account_code` varchar(255) DEFAULT NULL,
  `assets` double(25,2) NOT NULL,
  `liability` double(25,2) NOT NULL,
  `month` varchar(2) DEFAULT NULL,
  `year` int(4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4498 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of closing_saldo
-- ----------------------------
INSERT INTO `closing_saldo` VALUES ('4473', '10101', '7500000.00', '0.00', '10', '2020');
INSERT INTO `closing_saldo` VALUES ('4474', '10102', '0.00', '0.00', '10', '2020');
INSERT INTO `closing_saldo` VALUES ('4475', '10201', '0.00', '0.00', '10', '2020');
INSERT INTO `closing_saldo` VALUES ('4476', '20101', '0.00', '0.00', '10', '2020');
INSERT INTO `closing_saldo` VALUES ('4477', '20102', '0.00', '5500000.00', '10', '2020');
INSERT INTO `closing_saldo` VALUES ('4478', '30101', '0.00', '2000000.00', '10', '2020');
INSERT INTO `closing_saldo` VALUES ('4479', '30102', '0.00', '0.00', '10', '2020');
INSERT INTO `closing_saldo` VALUES ('4480', '40101', '0.00', '0.00', '10', '2020');
INSERT INTO `closing_saldo` VALUES ('4481', '40102', '0.00', '0.00', '10', '2020');
INSERT INTO `closing_saldo` VALUES ('4482', '40103', '0.00', '0.00', '10', '2020');
INSERT INTO `closing_saldo` VALUES ('4483', '50101', '0.00', '0.00', '10', '2020');
INSERT INTO `closing_saldo` VALUES ('4484', '50102', '0.00', '0.00', '10', '2020');
INSERT INTO `closing_saldo` VALUES ('4485', '50103', '0.00', '0.00', '10', '2020');
INSERT INTO `closing_saldo` VALUES ('4486', '60101', '0.00', '0.00', '10', '2020');
INSERT INTO `closing_saldo` VALUES ('4487', '60102', '0.00', '0.00', '10', '2020');
INSERT INTO `closing_saldo` VALUES ('4488', '60103', '0.00', '0.00', '10', '2020');
INSERT INTO `closing_saldo` VALUES ('4489', '60201', '0.00', '0.00', '10', '2020');
INSERT INTO `closing_saldo` VALUES ('4490', '10301', '0.00', '0.00', '10', '2020');
INSERT INTO `closing_saldo` VALUES ('4491', '10401', '0.00', '0.00', '10', '2020');
INSERT INTO `closing_saldo` VALUES ('4492', '10202', '0.00', '0.00', '10', '2020');
INSERT INTO `closing_saldo` VALUES ('4493', '10203', '0.00', '0.00', '10', '2020');
INSERT INTO `closing_saldo` VALUES ('4494', '10204', '0.00', '0.00', '10', '2020');
INSERT INTO `closing_saldo` VALUES ('4495', '40201', '0.00', '0.00', '10', '2020');
INSERT INTO `closing_saldo` VALUES ('4496', '40104', '0.00', '0.00', '10', '2020');
INSERT INTO `closing_saldo` VALUES ('4497', '50104', '0.00', '0.00', '10', '2020');

-- ----------------------------
-- Table structure for closing_tmp
-- ----------------------------
DROP TABLE IF EXISTS `closing_tmp`;
CREATE TABLE `closing_tmp` (
  `account_code` int(5) DEFAULT NULL,
  `account_name` varchar(255) DEFAULT NULL,
  `debet` double(25,2) DEFAULT NULL,
  `kredit` double(25,2) DEFAULT NULL,
  `debet1` double(25,2) DEFAULT NULL,
  `kredit1` double(25,2) DEFAULT NULL,
  `debet2` double(25,2) NOT NULL,
  `kredit2` double(25,2) NOT NULL,
  `ldebet` double(25,2) NOT NULL,
  `lkredit` double(25,2) NOT NULL,
  `ndebet` double(25,2) NOT NULL,
  `nkredit` double(25,2) NOT NULL,
  `month` varchar(2) DEFAULT NULL,
  `year` int(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of closing_tmp
-- ----------------------------

-- ----------------------------
-- Table structure for dt_history_stock
-- ----------------------------
DROP TABLE IF EXISTS `dt_history_stock`;
CREATE TABLE `dt_history_stock` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `stock_id` int(11) DEFAULT NULL,
  `referensi` varchar(255) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `qty_in` int(11) DEFAULT NULL,
  `qty_out` int(11) DEFAULT NULL,
  `amount` double(25,2) DEFAULT NULL,
  `createBy` varchar(255) DEFAULT NULL,
  `createTime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=478 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of dt_history_stock
-- ----------------------------
INSERT INTO `dt_history_stock` VALUES ('1', '1', 'Procurement', '2020-11-23', '20', '0', '16500.00', '1', '2020-12-14 15:20:43');
INSERT INTO `dt_history_stock` VALUES ('2', '2', 'Procurement', '2020-11-23', '10', '0', '22100.00', '1', '2020-12-14 15:20:46');
INSERT INTO `dt_history_stock` VALUES ('3', '3', 'Procurement', '2020-11-23', '10', '0', '22050.00', '1', '2020-12-14 15:20:51');
INSERT INTO `dt_history_stock` VALUES ('4', '4', 'Procurement', '2020-11-23', '10', '0', '20300.00', '1', '2020-12-14 15:20:56');
INSERT INTO `dt_history_stock` VALUES ('5', '5', 'Procurement', '2020-11-23', '5', '0', '27650.00', '1', '2020-12-14 15:21:02');
INSERT INTO `dt_history_stock` VALUES ('6', '6', 'Procurement', '2020-11-23', '5', '0', '27650.00', '1', '2020-12-14 15:21:07');
INSERT INTO `dt_history_stock` VALUES ('7', '7', 'Procurement', '2020-11-23', '5', '0', '21700.00', '1', '2020-12-14 15:21:11');
INSERT INTO `dt_history_stock` VALUES ('8', '8', 'Procurement', '2020-11-23', '5', '0', '16550.00', '1', '2020-12-14 15:21:15');
INSERT INTO `dt_history_stock` VALUES ('9', '9', 'Procurement', '2020-11-23', '50', '0', '1380.00', '1', '2020-12-14 15:21:23');
INSERT INTO `dt_history_stock` VALUES ('10', '10', 'Procurement', '2020-11-25', '20', '0', '16500.00', '1', '2020-12-14 15:43:55');
INSERT INTO `dt_history_stock` VALUES ('11', '11', 'Procurement', '2020-11-25', '20', '0', '22050.00', '1', '2020-12-14 15:44:00');
INSERT INTO `dt_history_stock` VALUES ('12', '12', 'Procurement', '2020-11-25', '20', '0', '22050.00', '1', '2020-12-14 15:44:04');
INSERT INTO `dt_history_stock` VALUES ('13', '13', 'Procurement', '2020-11-25', '20', '0', '16575.00', '1', '2020-12-14 15:44:08');
INSERT INTO `dt_history_stock` VALUES ('14', '14', 'Procurement', '2020-11-25', '10', '0', '27650.00', '1', '2020-12-14 15:44:15');
INSERT INTO `dt_history_stock` VALUES ('15', '15', 'Procurement', '2020-11-25', '10', '0', '27600.00', '1', '2020-12-14 15:44:19');
INSERT INTO `dt_history_stock` VALUES ('16', '16', 'Procurement', '2020-11-25', '10', '0', '19000.00', '1', '2020-12-14 15:44:23');
INSERT INTO `dt_history_stock` VALUES ('17', '17', 'Procurement', '2020-11-25', '10', '0', '16100.00', '1', '2020-12-14 15:44:27');
INSERT INTO `dt_history_stock` VALUES ('18', '18', 'Procurement', '2020-11-25', '10', '0', '21500.00', '1', '2020-12-14 15:44:31');
INSERT INTO `dt_history_stock` VALUES ('19', '19', 'Procurement', '2020-11-25', '10', '0', '20300.00', '1', '2020-12-14 15:44:35');
INSERT INTO `dt_history_stock` VALUES ('20', '20', 'Procurement', '2020-11-25', '100', '0', '1600.00', '1', '2020-12-14 15:44:41');
INSERT INTO `dt_history_stock` VALUES ('21', '21', 'Procurement', '2020-11-25', '100', '0', '1330.00', '1', '2020-12-14 15:44:49');
INSERT INTO `dt_history_stock` VALUES ('22', '22', 'Procurement', '2020-11-25', '6', '0', '23250.00', '1', '2020-12-14 15:44:56');
INSERT INTO `dt_history_stock` VALUES ('23', '23', 'Procurement', '2020-11-25', '6', '0', '18400.00', '1', '2020-12-14 15:45:03');
INSERT INTO `dt_history_stock` VALUES ('24', '24', 'Procurement', '2020-11-25', '6', '0', '12450.00', '1', '2020-12-14 15:45:11');
INSERT INTO `dt_history_stock` VALUES ('25', '25', 'Procurement', '2020-11-25', '6', '0', '27650.00', '1', '2020-12-14 15:45:17');
INSERT INTO `dt_history_stock` VALUES ('26', '26', 'Procurement', '2020-11-25', '6', '0', '14750.00', '1', '2020-12-14 15:45:23');
INSERT INTO `dt_history_stock` VALUES ('27', '27', 'Procurement', '2020-11-25', '6', '0', '14000.00', '1', '2020-12-14 15:45:30');
INSERT INTO `dt_history_stock` VALUES ('28', '10', 'Moving', '2020-11-25', '0', '10', '16500.00', '1', '2020-12-15 14:45:30');
INSERT INTO `dt_history_stock` VALUES ('29', '28', 'Moving', '2020-11-25', '10', '0', '16500.00', '1', '2020-12-15 14:45:30');
INSERT INTO `dt_history_stock` VALUES ('30', '11', 'Moving', '2020-11-25', '0', '10', '22050.00', '1', '2020-12-15 14:45:40');
INSERT INTO `dt_history_stock` VALUES ('31', '29', 'Moving', '2020-11-25', '10', '0', '22050.00', '1', '2020-12-15 14:45:40');
INSERT INTO `dt_history_stock` VALUES ('32', '12', 'Moving', '2020-11-25', '0', '10', '22050.00', '1', '2020-12-15 14:45:50');
INSERT INTO `dt_history_stock` VALUES ('33', '30', 'Moving', '2020-11-25', '10', '0', '22050.00', '1', '2020-12-15 14:45:50');
INSERT INTO `dt_history_stock` VALUES ('34', '17', 'Moving', '2020-11-25', '0', '5', '16100.00', '1', '2020-12-15 14:45:59');
INSERT INTO `dt_history_stock` VALUES ('35', '31', 'Moving', '2020-11-25', '5', '0', '16100.00', '1', '2020-12-15 14:45:59');
INSERT INTO `dt_history_stock` VALUES ('36', '19', 'Moving', '2020-11-25', '0', '5', '20300.00', '1', '2020-12-15 14:46:07');
INSERT INTO `dt_history_stock` VALUES ('37', '32', 'Moving', '2020-11-25', '5', '0', '20300.00', '1', '2020-12-15 14:46:08');
INSERT INTO `dt_history_stock` VALUES ('38', '14', 'Moving', '2020-11-25', '0', '5', '27650.00', '1', '2020-12-15 14:46:14');
INSERT INTO `dt_history_stock` VALUES ('39', '33', 'Moving', '2020-11-25', '5', '0', '27650.00', '1', '2020-12-15 14:46:14');
INSERT INTO `dt_history_stock` VALUES ('40', '25', 'Moving', '2020-11-25', '0', '3', '27650.00', '1', '2020-12-15 14:46:20');
INSERT INTO `dt_history_stock` VALUES ('41', '34', 'Moving', '2020-11-25', '3', '0', '27650.00', '1', '2020-12-15 14:46:20');
INSERT INTO `dt_history_stock` VALUES ('42', '15', 'Moving', '2020-11-25', '0', '5', '27600.00', '1', '2020-12-15 14:46:32');
INSERT INTO `dt_history_stock` VALUES ('43', '35', 'Moving', '2020-11-25', '5', '0', '27600.00', '1', '2020-12-15 14:46:32');
INSERT INTO `dt_history_stock` VALUES ('44', '13', 'Moving', '2020-11-25', '0', '10', '16575.00', '1', '2020-12-15 14:46:40');
INSERT INTO `dt_history_stock` VALUES ('45', '36', 'Moving', '2020-11-25', '10', '0', '16575.00', '1', '2020-12-15 14:46:40');
INSERT INTO `dt_history_stock` VALUES ('46', '22', 'Moving', '2020-11-25', '0', '3', '23250.00', '1', '2020-12-15 14:46:48');
INSERT INTO `dt_history_stock` VALUES ('47', '37', 'Moving', '2020-11-25', '3', '0', '23250.00', '1', '2020-12-15 14:46:48');
INSERT INTO `dt_history_stock` VALUES ('48', '18', 'Moving', '2020-11-25', '0', '5', '21500.00', '1', '2020-12-15 14:46:55');
INSERT INTO `dt_history_stock` VALUES ('49', '38', 'Moving', '2020-11-25', '5', '0', '21500.00', '1', '2020-12-15 14:46:55');
INSERT INTO `dt_history_stock` VALUES ('50', '16', 'Moving', '2020-11-25', '0', '5', '19000.00', '1', '2020-12-15 14:47:03');
INSERT INTO `dt_history_stock` VALUES ('51', '39', 'Moving', '2020-11-25', '5', '0', '19000.00', '1', '2020-12-15 14:47:03');
INSERT INTO `dt_history_stock` VALUES ('52', '24', 'Moving', '2020-11-25', '0', '3', '12450.00', '1', '2020-12-15 14:47:10');
INSERT INTO `dt_history_stock` VALUES ('53', '40', 'Moving', '2020-11-25', '3', '0', '12450.00', '1', '2020-12-15 14:47:10');
INSERT INTO `dt_history_stock` VALUES ('54', '26', 'Moving', '2020-11-25', '0', '3', '14750.00', '1', '2020-12-15 14:47:17');
INSERT INTO `dt_history_stock` VALUES ('55', '41', 'Moving', '2020-11-25', '3', '0', '14750.00', '1', '2020-12-15 14:47:17');
INSERT INTO `dt_history_stock` VALUES ('56', '27', 'Moving', '2020-11-25', '0', '3', '14000.00', '1', '2020-12-15 14:47:24');
INSERT INTO `dt_history_stock` VALUES ('57', '42', 'Moving', '2020-11-25', '3', '0', '14000.00', '1', '2020-12-15 14:47:24');
INSERT INTO `dt_history_stock` VALUES ('58', '27', 'Moving', '2020-11-25', '0', '3', '14000.00', '1', '2020-12-15 14:47:30');
INSERT INTO `dt_history_stock` VALUES ('59', '43', 'Moving', '2020-11-25', '3', '0', '14000.00', '1', '2020-12-15 14:47:30');
INSERT INTO `dt_history_stock` VALUES ('60', '21', 'Moving', '2020-11-25', '0', '50', '1330.00', '1', '2020-12-15 14:47:36');
INSERT INTO `dt_history_stock` VALUES ('61', '44', 'Moving', '2020-11-25', '50', '0', '1330.00', '1', '2020-12-15 14:47:36');
INSERT INTO `dt_history_stock` VALUES ('62', '23', 'Moving', '2020-11-25', '0', '3', '18400.00', '1', '2020-12-15 14:47:42');
INSERT INTO `dt_history_stock` VALUES ('63', '45', 'Moving', '2020-11-25', '3', '0', '18400.00', '1', '2020-12-15 14:47:42');
INSERT INTO `dt_history_stock` VALUES ('64', '20', 'Moving', '2020-11-25', '0', '50', '1600.00', '1', '2020-12-15 14:47:52');
INSERT INTO `dt_history_stock` VALUES ('65', '46', 'Moving', '2020-11-25', '50', '0', '1600.00', '1', '2020-12-15 14:47:52');
INSERT INTO `dt_history_stock` VALUES ('66', '12', 'Moving', '2020-11-25', '0', '10', '22050.00', '1', '2020-12-15 14:50:43');
INSERT INTO `dt_history_stock` VALUES ('67', '47', 'Moving', '2020-11-25', '10', '0', '22050.00', '1', '2020-12-15 14:50:43');
INSERT INTO `dt_history_stock` VALUES ('68', '42', 'Moving', '2020-11-25', '0', '3', '14000.00', '1', '2020-12-15 14:53:35');
INSERT INTO `dt_history_stock` VALUES ('69', '48', 'Moving', '2020-11-25', '3', '0', '14000.00', '1', '2020-12-15 14:53:35');
INSERT INTO `dt_history_stock` VALUES ('70', '10', 'Moving', '2020-11-25', '0', '10', '16500.00', '1', '2020-12-15 15:33:10');
INSERT INTO `dt_history_stock` VALUES ('71', '49', 'Moving', '2020-11-25', '10', '0', '16500.00', '1', '2020-12-15 15:33:11');
INSERT INTO `dt_history_stock` VALUES ('72', '11', 'Moving', '2020-11-25', '0', '10', '22050.00', '1', '2020-12-15 15:33:18');
INSERT INTO `dt_history_stock` VALUES ('73', '50', 'Moving', '2020-11-25', '10', '0', '22050.00', '1', '2020-12-15 15:33:18');
INSERT INTO `dt_history_stock` VALUES ('74', '30', 'Moving', '2020-11-25', '0', '10', '22050.00', '1', '2020-12-15 15:33:26');
INSERT INTO `dt_history_stock` VALUES ('75', '51', 'Moving', '2020-11-25', '10', '0', '22050.00', '1', '2020-12-15 15:33:26');
INSERT INTO `dt_history_stock` VALUES ('76', '17', 'Moving', '2020-11-25', '0', '5', '16100.00', '1', '2020-12-15 15:33:33');
INSERT INTO `dt_history_stock` VALUES ('77', '52', 'Moving', '2020-11-25', '5', '0', '16100.00', '1', '2020-12-15 15:33:33');
INSERT INTO `dt_history_stock` VALUES ('78', '19', 'Moving', '2020-11-25', '0', '5', '20300.00', '1', '2020-12-15 15:33:41');
INSERT INTO `dt_history_stock` VALUES ('79', '53', 'Moving', '2020-11-25', '5', '0', '20300.00', '1', '2020-12-15 15:33:41');
INSERT INTO `dt_history_stock` VALUES ('80', '14', 'Moving', '2020-11-25', '0', '5', '27650.00', '1', '2020-12-15 15:33:48');
INSERT INTO `dt_history_stock` VALUES ('81', '54', 'Moving', '2020-11-25', '5', '0', '27650.00', '1', '2020-12-15 15:33:48');
INSERT INTO `dt_history_stock` VALUES ('82', '25', 'Moving', '2020-11-25', '0', '3', '27650.00', '1', '2020-12-15 15:33:53');
INSERT INTO `dt_history_stock` VALUES ('83', '55', 'Moving', '2020-11-25', '3', '0', '27650.00', '1', '2020-12-15 15:33:54');
INSERT INTO `dt_history_stock` VALUES ('84', '15', 'Moving', '2020-11-25', '0', '5', '27600.00', '1', '2020-12-15 15:34:02');
INSERT INTO `dt_history_stock` VALUES ('85', '56', 'Moving', '2020-11-25', '5', '0', '27600.00', '1', '2020-12-15 15:34:02');
INSERT INTO `dt_history_stock` VALUES ('86', '13', 'Moving', '2020-11-25', '0', '10', '16575.00', '1', '2020-12-15 15:34:08');
INSERT INTO `dt_history_stock` VALUES ('87', '57', 'Moving', '2020-11-25', '10', '0', '16575.00', '1', '2020-12-15 15:34:08');
INSERT INTO `dt_history_stock` VALUES ('88', '22', 'Moving', '2020-11-25', '0', '3', '23250.00', '1', '2020-12-15 15:34:15');
INSERT INTO `dt_history_stock` VALUES ('89', '58', 'Moving', '2020-11-25', '3', '0', '23250.00', '1', '2020-12-15 15:34:15');
INSERT INTO `dt_history_stock` VALUES ('90', '18', 'Moving', '2020-11-25', '0', '5', '21500.00', '1', '2020-12-15 15:34:21');
INSERT INTO `dt_history_stock` VALUES ('91', '59', 'Moving', '2020-11-25', '5', '0', '21500.00', '1', '2020-12-15 15:34:21');
INSERT INTO `dt_history_stock` VALUES ('92', '16', 'Moving', '2020-11-25', '0', '5', '19000.00', '1', '2020-12-15 15:34:27');
INSERT INTO `dt_history_stock` VALUES ('93', '60', 'Moving', '2020-11-25', '5', '0', '19000.00', '1', '2020-12-15 15:34:27');
INSERT INTO `dt_history_stock` VALUES ('94', '24', 'Moving', '2020-11-25', '0', '3', '12450.00', '1', '2020-12-15 15:34:36');
INSERT INTO `dt_history_stock` VALUES ('95', '61', 'Moving', '2020-11-25', '3', '0', '12450.00', '1', '2020-12-15 15:34:36');
INSERT INTO `dt_history_stock` VALUES ('96', '26', 'Moving', '2020-11-25', '0', '3', '14750.00', '1', '2020-12-15 15:34:41');
INSERT INTO `dt_history_stock` VALUES ('97', '62', 'Moving', '2020-11-25', '3', '0', '14750.00', '1', '2020-12-15 15:34:41');
INSERT INTO `dt_history_stock` VALUES ('98', '48', 'Moving', '2020-11-25', '0', '3', '14000.00', '1', '2020-12-15 15:34:47');
INSERT INTO `dt_history_stock` VALUES ('99', '63', 'Moving', '2020-11-25', '3', '0', '14000.00', '1', '2020-12-15 15:34:47');
INSERT INTO `dt_history_stock` VALUES ('100', '21', 'Moving', '2020-11-25', '0', '50', '1330.00', '1', '2020-12-15 15:34:54');
INSERT INTO `dt_history_stock` VALUES ('101', '64', 'Moving', '2020-11-25', '50', '0', '1330.00', '1', '2020-12-15 15:34:55');
INSERT INTO `dt_history_stock` VALUES ('102', '20', 'Moving', '2020-11-25', '0', '50', '1600.00', '1', '2020-12-15 15:35:00');
INSERT INTO `dt_history_stock` VALUES ('103', '65', 'Moving', '2020-11-25', '50', '0', '1600.00', '1', '2020-12-15 15:35:00');
INSERT INTO `dt_history_stock` VALUES ('104', '23', 'Moving', '2020-11-25', '0', '3', '18400.00', '1', '2020-12-15 15:35:06');
INSERT INTO `dt_history_stock` VALUES ('105', '66', 'Moving', '2020-11-25', '3', '0', '18400.00', '1', '2020-12-15 15:35:06');
INSERT INTO `dt_history_stock` VALUES ('107', '67', 'Procurement', '2020-11-29', '100', '0', '16400.00', '1', '2020-12-15 15:47:31');
INSERT INTO `dt_history_stock` VALUES ('108', '68', 'Procurement', '2020-11-29', '150', '0', '1320.00', '1', '2020-12-15 15:47:36');
INSERT INTO `dt_history_stock` VALUES ('109', '69', 'Procurement', '2020-12-01', '120', '0', '2125.00', '1', '2020-12-15 15:51:27');
INSERT INTO `dt_history_stock` VALUES ('110', '70', 'Procurement', '2020-12-03', '10', '0', '16500.00', '1', '2020-12-15 15:56:09');
INSERT INTO `dt_history_stock` VALUES ('111', '71', 'Procurement', '2020-12-03', '6', '0', '11625.00', '1', '2020-12-15 15:56:17');
INSERT INTO `dt_history_stock` VALUES ('112', '71', 'Moving', '2020-12-03', '0', '3', '11625.00', '1', '2020-12-15 15:57:18');
INSERT INTO `dt_history_stock` VALUES ('113', '72', 'Moving', '2020-12-03', '3', '0', '11625.00', '1', '2020-12-15 15:57:18');
INSERT INTO `dt_history_stock` VALUES ('114', '50', 'Moving', '2020-11-25', '0', '8', '22050.00', '1', '2020-12-15 16:02:02');
INSERT INTO `dt_history_stock` VALUES ('115', '73', 'Moving', '2020-11-25', '8', '0', '22050.00', '1', '2020-12-15 16:02:03');
INSERT INTO `dt_history_stock` VALUES ('116', '74', 'Procurement', '2020-12-06', '120', '0', '16500.00', '1', '2020-12-15 16:13:08');
INSERT INTO `dt_history_stock` VALUES ('117', '75', 'Procurement', '2020-12-06', '20', '0', '22050.00', '1', '2020-12-15 16:13:18');
INSERT INTO `dt_history_stock` VALUES ('118', '76', 'Procurement', '2020-12-06', '10', '0', '22025.00', '1', '2020-12-15 16:13:25');
INSERT INTO `dt_history_stock` VALUES ('119', '74', 'Moving', '2020-12-06', '0', '10', '16500.00', '1', '2020-12-15 16:23:17');
INSERT INTO `dt_history_stock` VALUES ('120', '77', 'Moving', '2020-12-06', '10', '0', '16500.00', '1', '2020-12-15 16:23:17');
INSERT INTO `dt_history_stock` VALUES ('121', '75', 'Moving', '2020-12-06', '0', '10', '22050.00', '1', '2020-12-15 16:23:22');
INSERT INTO `dt_history_stock` VALUES ('122', '78', 'Moving', '2020-12-06', '10', '0', '22050.00', '1', '2020-12-15 16:23:22');
INSERT INTO `dt_history_stock` VALUES ('123', '74', 'Moving', '2020-12-06', '0', '10', '16500.00', '1', '2020-12-15 16:24:42');
INSERT INTO `dt_history_stock` VALUES ('124', '79', 'Moving', '2020-12-06', '10', '0', '16500.00', '1', '2020-12-15 16:24:42');
INSERT INTO `dt_history_stock` VALUES ('125', '76', 'Moving', '2020-12-06', '0', '10', '22025.00', '1', '2020-12-15 16:27:04');
INSERT INTO `dt_history_stock` VALUES ('126', '80', 'Moving', '2020-12-06', '10', '0', '22025.00', '1', '2020-12-15 16:27:04');
INSERT INTO `dt_history_stock` VALUES ('127', '81', 'Procurement', '2020-12-13', '20', '0', '16425.00', '1', '2020-12-15 16:33:41');
INSERT INTO `dt_history_stock` VALUES ('128', '82', 'Procurement', '2020-12-13', '10', '0', '22000.00', '1', '2020-12-15 16:33:49');
INSERT INTO `dt_history_stock` VALUES ('129', '83', 'Procurement', '2020-12-13', '3', '0', '12400.00', '1', '2020-12-15 16:33:56');
INSERT INTO `dt_history_stock` VALUES ('130', '84', 'Procurement', '2020-12-13', '5', '0', '11400.00', '1', '2020-12-15 16:34:03');
INSERT INTO `dt_history_stock` VALUES ('131', '85', 'Procurement', '2020-12-13', '5', '0', '14725.00', '1', '2020-12-15 16:34:10');
INSERT INTO `dt_history_stock` VALUES ('132', '82', 'Moving', '2020-12-13', '0', '10', '22000.00', '1', '2020-12-15 16:36:24');
INSERT INTO `dt_history_stock` VALUES ('133', '86', 'Moving', '2020-12-13', '10', '0', '22000.00', '1', '2020-12-15 16:36:24');
INSERT INTO `dt_history_stock` VALUES ('134', '83', 'Moving', '2020-12-13', '0', '3', '12400.00', '1', '2020-12-15 16:36:30');
INSERT INTO `dt_history_stock` VALUES ('135', '87', 'Moving', '2020-12-13', '3', '0', '12400.00', '1', '2020-12-15 16:36:30');
INSERT INTO `dt_history_stock` VALUES ('136', '85', 'Moving', '2020-12-13', '0', '5', '14725.00', '1', '2020-12-15 16:36:35');
INSERT INTO `dt_history_stock` VALUES ('137', '88', 'Moving', '2020-12-13', '5', '0', '14725.00', '1', '2020-12-15 16:36:35');
INSERT INTO `dt_history_stock` VALUES ('138', '84', 'Moving', '2020-12-13', '0', '5', '11400.00', '1', '2020-12-15 16:37:13');
INSERT INTO `dt_history_stock` VALUES ('139', '89', 'Moving', '2020-12-13', '5', '0', '11400.00', '1', '2020-12-15 16:37:13');
INSERT INTO `dt_history_stock` VALUES ('140', '1', 'Sales', '2020-11-23', '0', '20', '17000.00', '1', '2020-12-15 16:51:15');
INSERT INTO `dt_history_stock` VALUES ('141', '2', 'Sales', '2020-11-23', '0', '1', '23500.00', '1', '2020-12-15 16:51:22');
INSERT INTO `dt_history_stock` VALUES ('142', '3', 'Sales', '2020-11-23', '0', '8', '23000.00', '1', '2020-12-15 17:24:20');
INSERT INTO `dt_history_stock` VALUES ('143', '67', 'Sales', '2020-11-29', '0', '92', '17000.00', '1', '2020-12-15 17:24:23');
INSERT INTO `dt_history_stock` VALUES ('144', '2', 'Sales', '2020-11-23', '0', '8', '23000.00', '1', '2020-12-15 17:24:49');
INSERT INTO `dt_history_stock` VALUES ('145', '7', 'Sales', '2020-11-23', '0', '3', '22500.00', '1', '2020-12-15 17:24:55');
INSERT INTO `dt_history_stock` VALUES ('146', '5', 'Sales', '2020-11-23', '0', '1', '29000.00', '1', '2020-12-15 17:25:02');
INSERT INTO `dt_history_stock` VALUES ('147', '8', 'Sales', '2020-11-23', '0', '5', '17000.00', '1', '2020-12-15 17:28:08');
INSERT INTO `dt_history_stock` VALUES ('148', '9', 'Sales', '2020-11-23', '0', '50', '1500.00', '1', '2020-12-15 17:28:17');
INSERT INTO `dt_history_stock` VALUES ('149', '49', 'Sales', '2020-11-25', '0', '9', '17500.00', '1', '2020-12-15 17:34:55');
INSERT INTO `dt_history_stock` VALUES ('150', '51', 'Sales', '2020-11-25', '0', '4', '23500.00', '1', '2020-12-15 17:35:08');
INSERT INTO `dt_history_stock` VALUES ('151', '52', 'Sales', '2020-11-25', '0', '1', '17500.00', '1', '2020-12-15 17:35:13');
INSERT INTO `dt_history_stock` VALUES ('152', '54', 'Sales', '2020-11-25', '0', '1', '29000.00', '1', '2020-12-15 17:35:19');
INSERT INTO `dt_history_stock` VALUES ('153', '56', 'Sales', '2020-11-25', '0', '1', '28500.00', '1', '2020-12-15 17:35:25');
INSERT INTO `dt_history_stock` VALUES ('154', '59', 'Sales', '2020-11-25', '0', '1', '22500.00', '1', '2020-12-15 17:35:32');
INSERT INTO `dt_history_stock` VALUES ('155', '49', 'Sales', '2020-11-25', '0', '1', '17500.00', '1', '2020-12-15 17:41:43');
INSERT INTO `dt_history_stock` VALUES ('156', '79', 'Sales', '2020-12-06', '0', '6', '17500.00', '1', '2020-12-15 17:41:49');
INSERT INTO `dt_history_stock` VALUES ('157', '50', 'Sales', '2020-11-25', '0', '2', '23500.00', '1', '2020-12-15 17:41:54');
INSERT INTO `dt_history_stock` VALUES ('158', '51', 'Sales', '2020-11-25', '0', '6', '23500.00', '1', '2020-12-15 17:41:59');
INSERT INTO `dt_history_stock` VALUES ('159', '57', 'Sales', '2020-11-25', '0', '1', '17500.00', '1', '2020-12-15 17:42:04');
INSERT INTO `dt_history_stock` VALUES ('160', '60', 'Sales', '2020-11-25', '0', '1', '20000.00', '1', '2020-12-15 17:42:19');
INSERT INTO `dt_history_stock` VALUES ('161', '72', 'Sales', '2020-12-03', '0', '1', '12500.00', '1', '2020-12-15 17:42:25');
INSERT INTO `dt_history_stock` VALUES ('162', '90', 'Procurement', '2020-12-04', '10', '0', '22025.00', '1', '2020-12-15 17:46:39');
INSERT INTO `dt_history_stock` VALUES ('163', '70', 'Moving', '2020-12-03', '0', '10', '16500.00', '1', '2020-12-15 17:56:08');
INSERT INTO `dt_history_stock` VALUES ('164', '91', 'Moving', '2020-12-03', '10', '0', '16500.00', '1', '2020-12-15 17:56:08');
INSERT INTO `dt_history_stock` VALUES ('165', '90', 'Sales', '2020-12-04', '0', '2', '23500.00', '1', '2020-12-15 18:06:04');
INSERT INTO `dt_history_stock` VALUES ('166', '79', 'Sales', '2020-12-06', '0', '4', '17500.00', '1', '2020-12-15 18:06:09');
INSERT INTO `dt_history_stock` VALUES ('167', '91', 'Sales', '2020-12-03', '0', '1', '17500.00', '1', '2020-12-15 18:06:13');
INSERT INTO `dt_history_stock` VALUES ('168', '80', 'Sales', '2020-12-06', '0', '6', '23500.00', '1', '2020-12-15 18:06:18');
INSERT INTO `dt_history_stock` VALUES ('169', '53', 'Sales', '2020-11-25', '0', '1', '21500.00', '1', '2020-12-15 18:06:23');
INSERT INTO `dt_history_stock` VALUES ('170', '54', 'Sales', '2020-11-25', '0', '2', '29000.00', '1', '2020-12-15 18:06:36');
INSERT INTO `dt_history_stock` VALUES ('171', '56', 'Sales', '2020-11-25', '0', '1', '28500.00', '1', '2020-12-15 18:06:44');
INSERT INTO `dt_history_stock` VALUES ('172', '57', 'Sales', '2020-11-25', '0', '1', '17500.00', '1', '2020-12-15 18:06:52');
INSERT INTO `dt_history_stock` VALUES ('173', '58', 'Sales', '2020-11-25', '0', '1', '24500.00', '1', '2020-12-15 18:06:58');
INSERT INTO `dt_history_stock` VALUES ('174', '59', 'Sales', '2020-11-25', '0', '2', '22500.00', '1', '2020-12-15 18:07:06');
INSERT INTO `dt_history_stock` VALUES ('175', '66', 'Sales', '2020-11-25', '0', '1', '19500.00', '1', '2020-12-15 18:07:14');
INSERT INTO `dt_history_stock` VALUES ('176', '61', 'Sales', '2020-11-25', '0', '1', '13500.00', '1', '2020-12-15 18:07:21');
INSERT INTO `dt_history_stock` VALUES ('177', '63', 'Sales', '2020-11-25', '0', '1', '15000.00', '1', '2020-12-15 18:07:27');
INSERT INTO `dt_history_stock` VALUES ('178', '72', 'Sales', '2020-12-03', '0', '1', '12500.00', '1', '2020-12-15 18:07:35');
INSERT INTO `dt_history_stock` VALUES ('179', '65', 'Sales', '2020-11-25', '0', '1', '2000.00', '1', '2020-12-15 18:07:41');
INSERT INTO `dt_history_stock` VALUES ('180', '29', 'Sales', '2020-11-25', '0', '9', '23500.00', '1', '2020-12-15 18:17:23');
INSERT INTO `dt_history_stock` VALUES ('181', '28', 'Sales', '2020-11-25', '0', '2', '17500.00', '1', '2020-12-15 18:17:30');
INSERT INTO `dt_history_stock` VALUES ('182', '47', 'Sales', '2020-11-25', '0', '5', '23500.00', '1', '2020-12-15 18:17:36');
INSERT INTO `dt_history_stock` VALUES ('183', '41', 'Sales', '2020-11-25', '0', '1', '16000.00', '1', '2020-12-15 18:17:42');
INSERT INTO `dt_history_stock` VALUES ('184', '29', 'Sales', '2020-11-25', '0', '1', '23500.00', '1', '2020-12-15 18:27:15');
INSERT INTO `dt_history_stock` VALUES ('185', '73', 'Sales', '2020-11-25', '0', '3', '23500.00', '1', '2020-12-15 18:27:20');
INSERT INTO `dt_history_stock` VALUES ('186', '28', 'Sales', '2020-11-25', '0', '7', '17500.00', '1', '2020-12-15 18:27:24');
INSERT INTO `dt_history_stock` VALUES ('187', '47', 'Sales', '2020-11-25', '0', '3', '23500.00', '1', '2020-12-15 18:27:28');
INSERT INTO `dt_history_stock` VALUES ('188', '35', 'Sales', '2020-11-25', '0', '1', '28500.00', '1', '2020-12-15 18:27:34');
INSERT INTO `dt_history_stock` VALUES ('189', '36', 'Sales', '2020-11-25', '0', '2', '17500.00', '1', '2020-12-15 18:27:40');
INSERT INTO `dt_history_stock` VALUES ('190', '38', 'Sales', '2020-11-25', '0', '2', '22500.00', '1', '2020-12-15 18:27:50');
INSERT INTO `dt_history_stock` VALUES ('191', '40', 'Sales', '2020-11-25', '0', '1', '13500.00', '1', '2020-12-15 18:27:56');
INSERT INTO `dt_history_stock` VALUES ('192', '44', 'Sales', '2020-11-25', '0', '2', '1500.00', '1', '2020-12-15 18:28:06');
INSERT INTO `dt_history_stock` VALUES ('193', '73', 'Sales', '2020-11-25', '0', '3', '23500.00', '1', '2020-12-15 18:31:13');
INSERT INTO `dt_history_stock` VALUES ('194', '28', 'Sales', '2020-11-25', '0', '1', '17500.00', '1', '2020-12-15 18:31:18');
INSERT INTO `dt_history_stock` VALUES ('195', '77', 'Sales', '2020-12-06', '0', '1', '17500.00', '1', '2020-12-15 18:31:24');
INSERT INTO `dt_history_stock` VALUES ('196', '41', 'Sales', '2020-11-25', '0', '2', '16000.00', '1', '2020-12-15 18:31:30');
INSERT INTO `dt_history_stock` VALUES ('197', '92', 'Procurement', '2020-12-19', '150', '0', '16425.00', '1', '2020-12-19 13:42:50');
INSERT INTO `dt_history_stock` VALUES ('198', '93', 'Procurement', '2020-12-19', '10', '0', '22025.00', '1', '2020-12-19 13:45:45');
INSERT INTO `dt_history_stock` VALUES ('199', '94', 'Procurement', '2020-12-19', '100', '0', '1318.00', '1', '2020-12-19 13:46:06');
INSERT INTO `dt_history_stock` VALUES ('200', '95', 'Procurement', '2020-12-19', '3', '0', '27575.00', '1', '2020-12-19 13:46:16');
INSERT INTO `dt_history_stock` VALUES ('201', '96', 'Procurement', '2020-12-19', '5', '0', '15800.00', '1', '2020-12-19 13:46:23');
INSERT INTO `dt_history_stock` VALUES ('202', '97', 'Procurement', '2020-12-19', '10', '0', '22000.00', '1', '2020-12-19 13:46:28');
INSERT INTO `dt_history_stock` VALUES ('203', '67', 'Sales', '2020-11-29', '0', '8', '17000.00', '1', '2020-12-19 15:54:01');
INSERT INTO `dt_history_stock` VALUES ('204', '74', 'Sales', '2020-12-06', '0', '100', '17000.00', '1', '2020-12-19 15:54:08');
INSERT INTO `dt_history_stock` VALUES ('205', '3', 'Sales', '2020-11-23', '0', '2', '23000.00', '1', '2020-12-19 15:54:14');
INSERT INTO `dt_history_stock` VALUES ('206', '75', 'Sales', '2020-12-06', '0', '6', '23000.00', '1', '2020-12-19 15:54:20');
INSERT INTO `dt_history_stock` VALUES ('207', '2', 'Sales', '2020-11-23', '0', '1', '23000.00', '1', '2020-12-19 15:54:26');
INSERT INTO `dt_history_stock` VALUES ('208', '4', 'Sales', '2020-11-23', '0', '2', '21500.00', '1', '2020-12-19 15:54:32');
INSERT INTO `dt_history_stock` VALUES ('209', '7', 'Sales', '2020-11-23', '0', '2', '22500.00', '1', '2020-12-19 15:54:38');
INSERT INTO `dt_history_stock` VALUES ('210', '6', 'Sales', '2020-11-23', '0', '2', '29000.00', '1', '2020-12-19 15:54:44');
INSERT INTO `dt_history_stock` VALUES ('212', '68', 'Sales', '2020-11-29', '0', '150', '1500.00', '1', '2020-12-19 15:54:58');
INSERT INTO `dt_history_stock` VALUES ('213', '5', 'Sales', '2020-11-23', '0', '4', '29000.00', '1', '2020-12-19 16:45:10');
INSERT INTO `dt_history_stock` VALUES ('214', '98', 'Procurement', '2020-12-02', '2', '0', '87000.00', '1', '2020-12-19 17:09:57');
INSERT INTO `dt_history_stock` VALUES ('215', '99', 'Procurement', '2020-12-02', '1', '0', '75000.00', '1', '2020-12-19 17:10:04');
INSERT INTO `dt_history_stock` VALUES ('216', '100', 'Procurement', '2020-12-05', '1', '0', '85000.00', '1', '2020-12-19 17:10:11');
INSERT INTO `dt_history_stock` VALUES ('217', '101', 'Procurement', '2020-12-11', '1', '0', '14000.00', '1', '2020-12-19 17:10:17');
INSERT INTO `dt_history_stock` VALUES ('218', '102', 'Procurement', '2020-12-11', '1', '0', '6500.00', '1', '2020-12-19 17:10:23');
INSERT INTO `dt_history_stock` VALUES ('219', '103', 'Procurement', '2020-12-12', '1', '0', '109000.00', '1', '2020-12-19 17:10:28');
INSERT INTO `dt_history_stock` VALUES ('220', '104', 'Procurement', '2020-12-15', '1', '0', '70000.00', '1', '2020-12-19 17:10:34');
INSERT INTO `dt_history_stock` VALUES ('221', '98', 'Sales', '2020-12-02', '0', '1', '100000.00', '1', '2020-12-19 17:16:26');
INSERT INTO `dt_history_stock` VALUES ('222', '98', 'Sales', '2020-12-02', '0', '1', '90000.00', '1', '2020-12-19 17:16:35');
INSERT INTO `dt_history_stock` VALUES ('223', '99', 'Sales', '2020-12-02', '0', '1', '85000.00', '1', '2020-12-19 17:16:42');
INSERT INTO `dt_history_stock` VALUES ('224', '100', 'Sales', '2020-12-05', '0', '1', '100000.00', '1', '2020-12-19 17:16:57');
INSERT INTO `dt_history_stock` VALUES ('225', '101', 'Sales', '2020-12-11', '0', '1', '20000.00', '1', '2020-12-19 17:17:06');
INSERT INTO `dt_history_stock` VALUES ('226', '102', 'Sales', '2020-12-11', '0', '1', '10000.00', '1', '2020-12-19 17:17:12');
INSERT INTO `dt_history_stock` VALUES ('227', '103', 'Sales', '2020-12-12', '0', '1', '120000.00', '1', '2020-12-19 17:17:22');
INSERT INTO `dt_history_stock` VALUES ('228', '105', 'Procurement', '2020-12-19', '72', '0', '2125.00', '1', '2020-12-19 17:22:35');
INSERT INTO `dt_history_stock` VALUES ('229', '81', 'Sales', '2020-12-13', '0', '1', '17500.00', '1', '2020-12-19 18:21:07');
INSERT INTO `dt_history_stock` VALUES ('230', '97', 'Moving', '2020-12-19', '0', '10', '22000.00', '1', '2020-12-21 14:13:26');
INSERT INTO `dt_history_stock` VALUES ('231', '106', 'Moving', '2020-12-19', '10', '0', '22000.00', '1', '2020-12-21 14:13:26');
INSERT INTO `dt_history_stock` VALUES ('232', '81', 'Moving', '2020-12-13', '0', '10', '16425.00', '1', '2020-12-21 14:13:50');
INSERT INTO `dt_history_stock` VALUES ('233', '107', 'Moving', '2020-12-13', '10', '0', '16425.00', '1', '2020-12-21 14:13:50');
INSERT INTO `dt_history_stock` VALUES ('234', '96', 'Moving', '2020-12-19', '0', '5', '15800.00', '1', '2020-12-21 14:14:19');
INSERT INTO `dt_history_stock` VALUES ('235', '108', 'Moving', '2020-12-19', '5', '0', '15800.00', '1', '2020-12-21 14:14:19');
INSERT INTO `dt_history_stock` VALUES ('236', '95', 'Moving', '2020-12-19', '0', '3', '27575.00', '1', '2020-12-21 14:14:47');
INSERT INTO `dt_history_stock` VALUES ('237', '109', 'Moving', '2020-12-19', '3', '0', '27575.00', '1', '2020-12-21 14:14:47');
INSERT INTO `dt_history_stock` VALUES ('238', '81', 'Sales', '2020-12-13', '0', '1', '17500.00', '1', '2020-12-21 14:15:43');
INSERT INTO `dt_history_stock` VALUES ('239', '91', 'Sales', '2020-12-03', '0', '3', '17500.00', '1', '2020-12-23 14:32:23');
INSERT INTO `dt_history_stock` VALUES ('240', '90', 'Sales', '2020-12-04', '0', '3', '23500.00', '1', '2020-12-23 14:32:30');
INSERT INTO `dt_history_stock` VALUES ('241', '80', 'Sales', '2020-12-06', '0', '3', '23500.00', '1', '2020-12-23 14:32:39');
INSERT INTO `dt_history_stock` VALUES ('242', '59', 'Sales', '2020-11-25', '0', '2', '22500.00', '1', '2020-12-23 14:32:48');
INSERT INTO `dt_history_stock` VALUES ('243', '66', 'Sales', '2020-11-25', '0', '1', '19500.00', '1', '2020-12-23 14:32:55');
INSERT INTO `dt_history_stock` VALUES ('244', '58', 'Sales', '2020-11-25', '0', '2', '24500.00', '1', '2020-12-23 14:33:10');
INSERT INTO `dt_history_stock` VALUES ('245', '62', 'Sales', '2020-11-25', '0', '1', '16000.00', '1', '2020-12-23 14:33:16');
INSERT INTO `dt_history_stock` VALUES ('246', '72', 'Sales', '2020-12-03', '0', '1', '12500.00', '1', '2020-12-23 14:33:22');
INSERT INTO `dt_history_stock` VALUES ('247', '89', 'Sales', '2020-12-13', '0', '1', '12500.00', '1', '2020-12-23 14:33:31');
INSERT INTO `dt_history_stock` VALUES ('248', '110', 'Procurement', '2020-12-23', '3', '0', '27550.00', '1', '2020-12-23 14:41:34');
INSERT INTO `dt_history_stock` VALUES ('249', '111', 'Procurement', '2020-12-23', '4', '0', '23625.00', '1', '2020-12-23 14:41:39');
INSERT INTO `dt_history_stock` VALUES ('250', '112', 'Procurement', '2020-12-23', '10', '0', '22025.00', '1', '2020-12-23 14:41:44');
INSERT INTO `dt_history_stock` VALUES ('251', '113', 'Procurement', '2020-12-23', '10', '0', '16425.00', '1', '2020-12-23 14:41:51');
INSERT INTO `dt_history_stock` VALUES ('252', '114', 'Procurement', '2020-12-23', '3', '0', '21425.00', '1', '2020-12-23 14:41:58');
INSERT INTO `dt_history_stock` VALUES ('253', '115', 'Procurement', '2020-12-23', '4', '0', '18375.00', '1', '2020-12-23 14:42:03');
INSERT INTO `dt_history_stock` VALUES ('254', '116', 'Procurement', '2020-12-23', '5', '0', '22025.00', '1', '2020-12-23 14:42:09');
INSERT INTO `dt_history_stock` VALUES ('255', '117', 'Procurement', '2020-12-23', '3', '0', '27575.00', '1', '2020-12-23 14:42:15');
INSERT INTO `dt_history_stock` VALUES ('256', '73', 'Sales', '2020-11-25', '0', '2', '23500.00', '1', '2020-12-23 14:57:27');
INSERT INTO `dt_history_stock` VALUES ('257', '78', 'Sales', '2020-12-06', '0', '10', '23500.00', '1', '2020-12-23 14:57:32');
INSERT INTO `dt_history_stock` VALUES ('258', '77', 'Sales', '2020-12-06', '0', '9', '17500.00', '1', '2020-12-23 14:57:36');
INSERT INTO `dt_history_stock` VALUES ('259', '47', 'Sales', '2020-11-25', '0', '1', '23500.00', '1', '2020-12-23 14:57:40');
INSERT INTO `dt_history_stock` VALUES ('260', '31', 'Sales', '2020-11-25', '0', '1', '17500.00', '1', '2020-12-23 14:57:45');
INSERT INTO `dt_history_stock` VALUES ('261', '34', 'Sales', '2020-11-25', '0', '1', '29000.00', '1', '2020-12-23 14:57:49');
INSERT INTO `dt_history_stock` VALUES ('262', '35', 'Sales', '2020-11-25', '0', '3', '28500.00', '1', '2020-12-23 14:57:53');
INSERT INTO `dt_history_stock` VALUES ('263', '36', 'Sales', '2020-11-25', '0', '1', '17500.00', '1', '2020-12-23 14:57:58');
INSERT INTO `dt_history_stock` VALUES ('264', '38', 'Sales', '2020-11-25', '0', '2', '22500.00', '1', '2020-12-23 14:58:02');
INSERT INTO `dt_history_stock` VALUES ('265', '45', 'Sales', '2020-11-25', '0', '1', '19500.00', '1', '2020-12-23 14:58:06');
INSERT INTO `dt_history_stock` VALUES ('266', '37', 'Sales', '2020-11-25', '0', '1', '24500.00', '1', '2020-12-23 14:58:10');
INSERT INTO `dt_history_stock` VALUES ('267', '40', 'Sales', '2020-11-25', '0', '1', '13500.00', '1', '2020-12-23 14:58:15');
INSERT INTO `dt_history_stock` VALUES ('268', '88', 'Sales', '2020-12-13', '0', '1', '16000.00', '1', '2020-12-23 14:58:19');
INSERT INTO `dt_history_stock` VALUES ('269', '46', 'Sales', '2020-11-25', '0', '4', '2000.00', '1', '2020-12-23 14:58:23');
INSERT INTO `dt_history_stock` VALUES ('270', '44', 'Sales', '2020-11-25', '0', '3', '1500.00', '1', '2020-12-23 14:58:26');
INSERT INTO `dt_history_stock` VALUES ('271', '81', 'Moving', '2020-12-13', '0', '5', '16425.00', '1', '2020-12-24 12:26:12');
INSERT INTO `dt_history_stock` VALUES ('272', '118', 'Moving', '2020-12-13', '5', '0', '16425.00', '1', '2020-12-24 12:26:12');
INSERT INTO `dt_history_stock` VALUES ('273', '113', 'Moving', '2020-12-23', '0', '10', '16425.00', '1', '2020-12-24 12:26:17');
INSERT INTO `dt_history_stock` VALUES ('274', '119', 'Moving', '2020-12-23', '10', '0', '16425.00', '1', '2020-12-24 12:26:17');
INSERT INTO `dt_history_stock` VALUES ('275', '112', 'Moving', '2020-12-23', '0', '10', '22025.00', '1', '2020-12-24 12:26:21');
INSERT INTO `dt_history_stock` VALUES ('276', '120', 'Moving', '2020-12-23', '10', '0', '22025.00', '1', '2020-12-24 12:26:21');
INSERT INTO `dt_history_stock` VALUES ('277', '110', 'Moving', '2020-12-23', '0', '3', '27550.00', '1', '2020-12-24 12:26:27');
INSERT INTO `dt_history_stock` VALUES ('278', '121', 'Moving', '2020-12-23', '3', '0', '27550.00', '1', '2020-12-24 12:26:27');
INSERT INTO `dt_history_stock` VALUES ('279', '114', 'Moving', '2020-12-23', '0', '3', '21425.00', '1', '2020-12-24 12:26:32');
INSERT INTO `dt_history_stock` VALUES ('280', '122', 'Moving', '2020-12-23', '3', '0', '21425.00', '1', '2020-12-24 12:26:32');
INSERT INTO `dt_history_stock` VALUES ('281', '115', 'Moving', '2020-12-23', '0', '1', '18375.00', '1', '2020-12-24 12:26:37');
INSERT INTO `dt_history_stock` VALUES ('282', '123', 'Moving', '2020-12-23', '1', '0', '18375.00', '1', '2020-12-24 12:26:37');
INSERT INTO `dt_history_stock` VALUES ('283', '111', 'Moving', '2020-12-23', '0', '1', '23625.00', '1', '2020-12-24 12:26:48');
INSERT INTO `dt_history_stock` VALUES ('284', '124', 'Moving', '2020-12-23', '1', '0', '23625.00', '1', '2020-12-24 12:26:48');
INSERT INTO `dt_history_stock` VALUES ('285', '81', 'Moving', '2020-12-13', '0', '2', '16425.00', '1', '2020-12-24 12:29:22');
INSERT INTO `dt_history_stock` VALUES ('286', '125', 'Moving', '2020-12-13', '2', '0', '16425.00', '1', '2020-12-24 12:29:22');
INSERT INTO `dt_history_stock` VALUES ('287', '116', 'Moving', '2020-12-23', '0', '5', '22025.00', '1', '2020-12-24 12:29:27');
INSERT INTO `dt_history_stock` VALUES ('288', '126', 'Moving', '2020-12-23', '5', '0', '22025.00', '1', '2020-12-24 12:29:27');
INSERT INTO `dt_history_stock` VALUES ('289', '117', 'Moving', '2020-12-23', '0', '3', '27575.00', '1', '2020-12-24 12:29:33');
INSERT INTO `dt_history_stock` VALUES ('290', '127', 'Moving', '2020-12-23', '3', '0', '27575.00', '1', '2020-12-24 12:29:33');
INSERT INTO `dt_history_stock` VALUES ('291', '111', 'Moving', '2020-12-23', '0', '3', '23625.00', '1', '2020-12-24 12:29:39');
INSERT INTO `dt_history_stock` VALUES ('292', '128', 'Moving', '2020-12-23', '3', '0', '23625.00', '1', '2020-12-24 12:29:39');
INSERT INTO `dt_history_stock` VALUES ('293', '115', 'Moving', '2020-12-23', '0', '3', '18375.00', '1', '2020-12-24 12:29:46');
INSERT INTO `dt_history_stock` VALUES ('294', '129', 'Moving', '2020-12-23', '3', '0', '18375.00', '1', '2020-12-24 12:29:46');
INSERT INTO `dt_history_stock` VALUES ('296', '75', 'Sales', '2020-12-06', '0', '4', '23000.00', '1', '2020-12-29 15:46:09');
INSERT INTO `dt_history_stock` VALUES ('297', '93', 'Sales', '2020-12-19', '0', '8', '23000.00', '1', '2020-12-29 15:46:14');
INSERT INTO `dt_history_stock` VALUES ('298', '6', 'Sales', '2020-11-23', '0', '1', '29000.00', '1', '2020-12-29 15:46:18');
INSERT INTO `dt_history_stock` VALUES ('299', '130', 'Procurement', '2020-12-29', '10', '0', '22025.00', '1', '2020-12-29 15:50:04');
INSERT INTO `dt_history_stock` VALUES ('300', '131', 'Procurement', '2020-12-29', '50', '0', '16425.00', '1', '2020-12-29 15:51:49');
INSERT INTO `dt_history_stock` VALUES ('301', '132', 'Procurement', '2020-12-29', '50', '0', '16500.00', '1', '2020-12-29 15:51:55');
INSERT INTO `dt_history_stock` VALUES ('302', '92', 'Sales', '2020-12-29', '0', '131', '17500.00', '1', '2020-12-29 16:06:21');
INSERT INTO `dt_history_stock` VALUES ('303', '90', 'Sales', '2021-01-03', '0', '4', '23500.00', '1', '2021-01-07 12:53:15');
INSERT INTO `dt_history_stock` VALUES ('304', '91', 'Sales', '2021-01-03', '0', '6', '17500.00', '1', '2021-01-07 12:53:19');
INSERT INTO `dt_history_stock` VALUES ('305', '107', 'Sales', '2021-01-03', '0', '4', '17500.00', '1', '2021-01-07 12:53:25');
INSERT INTO `dt_history_stock` VALUES ('306', '80', 'Sales', '2021-01-03', '0', '1', '23500.00', '1', '2021-01-07 12:53:30');
INSERT INTO `dt_history_stock` VALUES ('307', '106', 'Sales', '2021-01-03', '0', '6', '23500.00', '1', '2021-01-07 12:53:36');
INSERT INTO `dt_history_stock` VALUES ('308', '54', 'Sales', '2021-01-03', '0', '2', '29000.00', '1', '2021-01-07 12:53:41');
INSERT INTO `dt_history_stock` VALUES ('309', '109', 'Sales', '2021-01-03', '0', '2', '29000.00', '1', '2021-01-07 12:53:47');
INSERT INTO `dt_history_stock` VALUES ('310', '56', 'Sales', '2021-01-03', '0', '1', '28500.00', '1', '2021-01-07 12:53:52');
INSERT INTO `dt_history_stock` VALUES ('311', '57', 'Sales', '2021-01-03', '0', '1', '17500.00', '1', '2021-01-07 12:53:58');
INSERT INTO `dt_history_stock` VALUES ('312', '66', 'Sales', '2021-01-03', '0', '1', '19500.00', '1', '2021-01-07 12:54:03');
INSERT INTO `dt_history_stock` VALUES ('313', '128', 'Sales', '2021-01-03', '0', '3', '24500.00', '1', '2021-01-07 12:54:08');
INSERT INTO `dt_history_stock` VALUES ('314', '61', 'Sales', '2021-01-03', '0', '1', '13500.00', '1', '2021-01-07 12:54:14');
INSERT INTO `dt_history_stock` VALUES ('315', '62', 'Sales', '2021-01-03', '0', '2', '16000.00', '1', '2021-01-07 12:54:20');
INSERT INTO `dt_history_stock` VALUES ('316', '89', 'Sales', '2021-01-03', '0', '3', '12500.00', '1', '2021-01-07 12:54:25');
INSERT INTO `dt_history_stock` VALUES ('317', '64', 'Sales', '2021-01-03', '0', '8', '1500.00', '1', '2021-01-07 12:54:31');
INSERT INTO `dt_history_stock` VALUES ('318', '65', 'Sales', '2021-01-03', '0', '7', '2000.00', '1', '2021-01-07 12:54:37');
INSERT INTO `dt_history_stock` VALUES ('319', '120', 'Sales', '2021-01-03', '0', '10', '23500.00', '1', '2021-01-07 13:50:55');
INSERT INTO `dt_history_stock` VALUES ('320', '118', 'Sales', '2021-01-03', '0', '5', '17500.00', '1', '2021-01-07 13:51:02');
INSERT INTO `dt_history_stock` VALUES ('321', '119', 'Sales', '2021-01-03', '0', '9', '17500.00', '1', '2021-01-07 13:51:08');
INSERT INTO `dt_history_stock` VALUES ('322', '47', 'Sales', '2021-01-03', '0', '1', '23500.00', '1', '2021-01-07 13:51:16');
INSERT INTO `dt_history_stock` VALUES ('323', '86', 'Sales', '2021-01-03', '0', '1', '23500.00', '1', '2021-01-07 13:51:23');
INSERT INTO `dt_history_stock` VALUES ('324', '31', 'Sales', '2021-01-03', '0', '1', '17500.00', '1', '2021-01-07 13:51:28');
INSERT INTO `dt_history_stock` VALUES ('325', '32', 'Sales', '2021-01-03', '0', '1', '21500.00', '1', '2021-01-07 13:51:34');
INSERT INTO `dt_history_stock` VALUES ('326', '34', 'Sales', '2021-01-03', '0', '1', '29000.00', '1', '2021-01-07 13:51:40');
INSERT INTO `dt_history_stock` VALUES ('327', '35', 'Sales', '2021-01-03', '0', '1', '28500.00', '1', '2021-01-07 13:51:46');
INSERT INTO `dt_history_stock` VALUES ('328', '121', 'Sales', '2021-01-03', '0', '2', '28500.00', '1', '2021-01-07 13:51:52');
INSERT INTO `dt_history_stock` VALUES ('329', '36', 'Sales', '2021-01-03', '0', '6', '17500.00', '1', '2021-01-07 13:52:02');
INSERT INTO `dt_history_stock` VALUES ('330', '38', 'Sales', '2021-01-03', '0', '1', '22500.00', '1', '2021-01-07 13:52:09');
INSERT INTO `dt_history_stock` VALUES ('332', '71', 'Sales', '2021-01-03', '0', '1', '12500.00', '1', '2021-01-07 13:52:22');
INSERT INTO `dt_history_stock` VALUES ('333', '44', 'Sales', '2021-01-03', '0', '9', '1500.00', '1', '2021-01-07 13:52:27');
INSERT INTO `dt_history_stock` VALUES ('334', '46', 'Sales', '2021-01-03', '0', '1', '2000.00', '1', '2021-01-07 13:52:33');
INSERT INTO `dt_history_stock` VALUES ('335', '133', 'Procurement', '2021-01-03', '20', '0', '16425.00', '1', '2021-01-07 14:03:18');
INSERT INTO `dt_history_stock` VALUES ('336', '134', 'Procurement', '2021-01-03', '3', '0', '27575.00', '1', '2021-01-07 14:03:25');
INSERT INTO `dt_history_stock` VALUES ('337', '135', 'Procurement', '2021-01-03', '4', '0', '16550.00', '1', '2021-01-07 14:03:31');
INSERT INTO `dt_history_stock` VALUES ('338', '136', 'Procurement', '2021-01-03', '7', '0', '16450.00', '1', '2021-01-07 14:03:38');
INSERT INTO `dt_history_stock` VALUES ('339', '137', 'Procurement', '2021-01-03', '10', '0', '22000.00', '1', '2021-01-07 14:03:43');
INSERT INTO `dt_history_stock` VALUES ('340', '138', 'Procurement', '2021-01-03', '5', '0', '11400.00', '1', '2021-01-07 14:03:49');
INSERT INTO `dt_history_stock` VALUES ('341', '139', 'Procurement', '2021-01-03', '5', '0', '23625.00', '1', '2021-01-07 14:03:54');
INSERT INTO `dt_history_stock` VALUES ('342', '140', 'Procurement', '2021-01-03', '5', '0', '14725.00', '1', '2021-01-07 14:03:59');
INSERT INTO `dt_history_stock` VALUES ('343', '141', 'Procurement', '2021-01-03', '3', '0', '12600.00', '1', '2021-01-07 14:04:07');
INSERT INTO `dt_history_stock` VALUES ('344', '142', 'Procurement', '2021-01-03', '10', '0', '16425.00', '1', '2021-01-07 14:04:15');
INSERT INTO `dt_history_stock` VALUES ('345', '143', 'Procurement', '2021-01-03', '5', '0', '27575.00', '1', '2021-01-07 14:04:20');
INSERT INTO `dt_history_stock` VALUES ('346', '93', 'Sales', '2021-01-08', '0', '2', '23000.00', '1', '2021-01-08 12:07:28');
INSERT INTO `dt_history_stock` VALUES ('347', '130', 'Sales', '2021-01-08', '0', '6', '23000.00', '1', '2021-01-08 12:07:34');
INSERT INTO `dt_history_stock` VALUES ('348', '92', 'Sales', '2021-01-08', '0', '19', '17500.00', '1', '2021-01-08 12:07:39');
INSERT INTO `dt_history_stock` VALUES ('349', '131', 'Sales', '2021-01-08', '0', '50', '17500.00', '1', '2021-01-08 12:07:45');
INSERT INTO `dt_history_stock` VALUES ('350', '132', 'Sales', '2021-01-08', '0', '36', '17500.00', '1', '2021-01-08 12:07:52');
INSERT INTO `dt_history_stock` VALUES ('351', '4', 'Sales', '2021-01-08', '0', '3', '21500.00', '1', '2021-01-08 12:07:57');
INSERT INTO `dt_history_stock` VALUES ('352', '144', 'Procurement', '2021-01-08', '70', '0', '16500.00', '1', '2021-01-13 15:07:32');
INSERT INTO `dt_history_stock` VALUES ('353', '145', 'Procurement', '2021-01-08', '50', '0', '16425.00', '1', '2021-01-13 15:07:38');
INSERT INTO `dt_history_stock` VALUES ('354', '146', 'Procurement', '2021-01-08', '10', '0', '22025.00', '1', '2021-01-13 15:07:45');
INSERT INTO `dt_history_stock` VALUES ('355', '147', 'Procurement', '2021-01-08', '5', '0', '27550.00', '1', '2021-01-13 15:07:50');
INSERT INTO `dt_history_stock` VALUES ('356', '148', 'Procurement', '2021-01-08', '10', '0', '22025.00', '1', '2021-01-13 15:07:56');
INSERT INTO `dt_history_stock` VALUES ('357', '149', 'Procurement', '2021-01-08', '10', '0', '16450.00', '1', '2021-01-13 15:08:01');
INSERT INTO `dt_history_stock` VALUES ('358', '150', 'Procurement', '2021-01-08', '10', '0', '23625.00', '1', '2021-01-13 15:08:07');
INSERT INTO `dt_history_stock` VALUES ('359', '119', 'Sales', '2021-01-11', '0', '1', '17500.00', '1', '2021-01-13 15:34:03');
INSERT INTO `dt_history_stock` VALUES ('360', '133', 'Sales', '2021-01-11', '0', '10', '17500.00', '1', '2021-01-13 15:34:09');
INSERT INTO `dt_history_stock` VALUES ('361', '86', 'Sales', '2021-01-11', '0', '3', '23500.00', '1', '2021-01-13 15:34:15');
INSERT INTO `dt_history_stock` VALUES ('362', '33', 'Sales', '2021-01-11', '0', '1', '29000.00', '1', '2021-01-13 15:34:23');
INSERT INTO `dt_history_stock` VALUES ('363', '121', 'Sales', '2021-01-11', '0', '1', '28500.00', '1', '2021-01-13 15:34:32');
INSERT INTO `dt_history_stock` VALUES ('364', '36', 'Sales', '2021-01-11', '0', '1', '17500.00', '1', '2021-01-13 15:34:37');
INSERT INTO `dt_history_stock` VALUES ('365', '122', 'Sales', '2021-01-11', '0', '2', '22500.00', '1', '2021-01-13 15:34:42');
INSERT INTO `dt_history_stock` VALUES ('366', '45', 'Sales', '2021-01-11', '0', '2', '19500.00', '1', '2021-01-13 15:34:48');
INSERT INTO `dt_history_stock` VALUES ('367', '71', 'Sales', '2021-01-11', '0', '1', '12500.00', '1', '2021-01-13 15:34:53');
INSERT INTO `dt_history_stock` VALUES ('368', '44', 'Sales', '2021-01-11', '0', '10', '1500.00', '1', '2021-01-13 15:34:59');
INSERT INTO `dt_history_stock` VALUES ('369', '46', 'Sales', '2021-01-11', '0', '2', '2000.00', '1', '2021-01-13 15:35:04');
INSERT INTO `dt_history_stock` VALUES ('370', '81', 'Sales', '2020-12-24', '0', '1', '17500.00', '1', '2021-01-13 15:35:55');
INSERT INTO `dt_history_stock` VALUES ('371', '90', 'Sales', '2021-01-12', '0', '1', '23500.00', '1', '2021-01-13 15:47:58');
INSERT INTO `dt_history_stock` VALUES ('372', '126', 'Sales', '2021-01-12', '0', '2', '23500.00', '1', '2021-01-13 15:48:03');
INSERT INTO `dt_history_stock` VALUES ('373', '107', 'Sales', '2021-01-12', '0', '6', '17500.00', '1', '2021-01-13 15:48:08');
INSERT INTO `dt_history_stock` VALUES ('374', '125', 'Sales', '2021-01-12', '0', '2', '17500.00', '1', '2021-01-13 15:48:13');
INSERT INTO `dt_history_stock` VALUES ('375', '136', 'Sales', '2021-01-12', '0', '1', '17500.00', '1', '2021-01-13 15:48:18');
INSERT INTO `dt_history_stock` VALUES ('376', '106', 'Sales', '2021-01-12', '0', '4', '23500.00', '1', '2021-01-13 15:48:23');
INSERT INTO `dt_history_stock` VALUES ('377', '109', 'Sales', '2021-01-12', '0', '1', '29000.00', '1', '2021-01-13 15:48:37');
INSERT INTO `dt_history_stock` VALUES ('378', '127', 'Sales', '2021-01-12', '0', '1', '29000.00', '1', '2021-01-13 15:48:44');
INSERT INTO `dt_history_stock` VALUES ('379', '129', 'Sales', '2021-01-12', '0', '1', '19500.00', '1', '2021-01-13 15:48:53');
INSERT INTO `dt_history_stock` VALUES ('380', '139', 'Sales', '2021-01-12', '0', '3', '24500.00', '1', '2021-01-13 15:48:59');
INSERT INTO `dt_history_stock` VALUES ('381', '140', 'Sales', '2021-01-12', '0', '3', '16000.00', '1', '2021-01-13 15:49:04');
INSERT INTO `dt_history_stock` VALUES ('382', '65', 'Sales', '2021-01-12', '0', '3', '2000.00', '1', '2021-01-13 15:49:10');
INSERT INTO `dt_history_stock` VALUES ('383', '151', 'Procurement', '2021-01-16', '3', '0', '18375.00', '1', '2021-01-17 16:15:51');
INSERT INTO `dt_history_stock` VALUES ('384', '152', 'Procurement', '2021-01-16', '4', '0', '21425.00', '1', '2021-01-17 16:15:58');
INSERT INTO `dt_history_stock` VALUES ('385', '153', 'Procurement', '2021-01-16', '4', '0', '11400.00', '1', '2021-01-17 16:16:04');
INSERT INTO `dt_history_stock` VALUES ('386', '154', 'Procurement', '2021-01-16', '1', '0', '14725.00', '1', '2021-01-17 16:16:10');
INSERT INTO `dt_history_stock` VALUES ('387', '155', 'Procurement', '2021-01-16', '10', '0', '22025.00', '1', '2021-01-17 16:16:16');
INSERT INTO `dt_history_stock` VALUES ('388', '156', 'Procurement', '2021-01-16', '5', '0', '14725.00', '1', '2021-01-17 16:16:22');
INSERT INTO `dt_history_stock` VALUES ('389', '157', 'Procurement', '2021-01-16', '4', '0', '11400.00', '1', '2021-01-17 16:16:28');
INSERT INTO `dt_history_stock` VALUES ('390', '158', 'Procurement', '2021-01-16', '10', '0', '22025.00', '1', '2021-01-17 16:16:34');
INSERT INTO `dt_history_stock` VALUES ('391', '159', 'Procurement', '2021-01-16', '50', '0', '16475.00', '1', '2021-01-17 16:16:40');
INSERT INTO `dt_history_stock` VALUES ('392', '160', 'Procurement', '2021-01-16', '20', '0', '22025.00', '1', '2021-01-17 16:16:45');
INSERT INTO `dt_history_stock` VALUES ('393', '69', 'Sales', '2021-01-16', '0', '120', '3000.00', '1', '2021-01-17 16:20:46');
INSERT INTO `dt_history_stock` VALUES ('394', '105', 'Sales', '2021-01-16', '0', '72', '3000.00', '1', '2021-01-17 16:20:51');
INSERT INTO `dt_history_stock` VALUES ('395', '94', 'Sales', '2021-01-16', '0', '100', '1500.00', '1', '2021-01-17 16:20:56');
INSERT INTO `dt_history_stock` VALUES ('396', '161', 'Procurement', '2021-01-17', '3', '0', '10000.00', '1', '2021-01-17 16:35:34');
INSERT INTO `dt_history_stock` VALUES ('397', '162', 'Procurement', '2021-01-17', '2', '0', '35000.00', '1', '2021-01-17 16:35:41');
INSERT INTO `dt_history_stock` VALUES ('398', '163', 'Procurement', '2021-01-17', '1', '0', '30000.00', '1', '2021-01-17 16:35:46');
INSERT INTO `dt_history_stock` VALUES ('399', '136', 'Sales', '2021-01-17', '0', '3', '17500.00', '1', '2021-01-18 16:20:23');
INSERT INTO `dt_history_stock` VALUES ('400', '137', 'Sales', '2021-01-17', '0', '3', '23500.00', '1', '2021-01-18 16:20:28');
INSERT INTO `dt_history_stock` VALUES ('401', '52', 'Sales', '2021-01-17', '0', '1', '17500.00', '1', '2021-01-18 16:20:34');
INSERT INTO `dt_history_stock` VALUES ('402', '127', 'Sales', '2021-01-17', '0', '1', '29000.00', '1', '2021-01-18 16:20:41');
INSERT INTO `dt_history_stock` VALUES ('403', '139', 'Sales', '2021-01-17', '0', '1', '24500.00', '1', '2021-01-18 16:20:46');
INSERT INTO `dt_history_stock` VALUES ('404', '63', 'Sales', '2021-01-17', '0', '1', '15000.00', '1', '2021-01-18 16:20:52');
INSERT INTO `dt_history_stock` VALUES ('405', '60', 'Sales', '2021-01-17', '0', '1', '20000.00', '1', '2021-01-18 16:20:57');
INSERT INTO `dt_history_stock` VALUES ('406', '108', 'Sales', '2021-01-17', '0', '1', '17500.00', '1', '2021-01-18 16:21:02');
INSERT INTO `dt_history_stock` VALUES ('407', '65', 'Sales', '2021-01-17', '0', '4', '2000.00', '1', '2021-01-18 16:21:08');
INSERT INTO `dt_history_stock` VALUES ('408', '161', 'Sales', '2021-01-18', '0', '1', '18000.00', '1', '2021-01-18 16:34:20');
INSERT INTO `dt_history_stock` VALUES ('409', '164', 'Procurement', '2021-01-18', '10', '0', '23000.00', '1', '2021-01-18 16:37:37');
INSERT INTO `dt_history_stock` VALUES ('410', '164', 'Moving', '2021-01-21', '0', '4', '23000.00', '1', '2021-01-21 05:11:12');
INSERT INTO `dt_history_stock` VALUES ('411', '165', 'Moving', '2021-01-21', '4', '0', '23000.00', '1', '2021-01-21 05:11:12');
INSERT INTO `dt_history_stock` VALUES ('412', '143', 'Moving', '2021-01-21', '0', '5', '27575.00', '1', '2021-01-21 05:11:17');
INSERT INTO `dt_history_stock` VALUES ('413', '166', 'Moving', '2021-01-21', '5', '0', '27575.00', '1', '2021-01-21 05:11:17');
INSERT INTO `dt_history_stock` VALUES ('414', '167', 'Procurement', '2021-01-20', '2', '0', '9500.00', '1', '2021-01-21 06:26:43');
INSERT INTO `dt_history_stock` VALUES ('415', '168', 'Procurement', '2021-01-20', '1', '0', '30000.00', '1', '2021-01-21 06:26:53');
INSERT INTO `dt_history_stock` VALUES ('416', '169', 'Procurement', '2021-01-23', '1', '0', '57000.00', '1', '2021-01-25 13:48:26');
INSERT INTO `dt_history_stock` VALUES ('417', '170', 'Procurement', '2021-01-23', '1', '0', '20000.00', '1', '2021-01-25 13:48:31');
INSERT INTO `dt_history_stock` VALUES ('418', '171', 'Procurement', '2021-01-23', '1', '0', '6500.00', '1', '2021-01-25 13:48:36');
INSERT INTO `dt_history_stock` VALUES ('419', '172', 'Procurement', '2021-01-23', '1', '0', '17000.00', '1', '2021-01-25 13:49:46');
INSERT INTO `dt_history_stock` VALUES ('420', '173', 'Procurement', '2021-01-25', '2', '0', '10000.00', '1', '2021-01-25 13:49:51');
INSERT INTO `dt_history_stock` VALUES ('421', '174', 'Procurement', '2021-01-25', '1', '0', '10000.00', '1', '2021-01-25 13:49:56');
INSERT INTO `dt_history_stock` VALUES ('422', '162', 'Sales', '2021-01-17', '0', '2', '45000.00', '1', '2021-01-25 13:51:12');
INSERT INTO `dt_history_stock` VALUES ('423', '171', 'Sales', '2021-01-23', '0', '1', '10000.00', '1', '2021-01-25 13:51:50');
INSERT INTO `dt_history_stock` VALUES ('424', '169', 'Sales', '2021-01-23', '0', '1', '65000.00', '1', '2021-01-25 13:52:40');
INSERT INTO `dt_history_stock` VALUES ('425', '170', 'Sales', '2021-01-24', '0', '1', '25000.00', '1', '2021-01-25 13:53:43');
INSERT INTO `dt_history_stock` VALUES ('426', '132', 'Sales', '2021-01-23', '0', '14', '17500.00', '1', '2021-01-25 14:03:49');
INSERT INTO `dt_history_stock` VALUES ('427', '142', 'Sales', '2021-01-23', '0', '10', '17500.00', '1', '2021-01-25 14:03:55');
INSERT INTO `dt_history_stock` VALUES ('428', '144', 'Sales', '2021-01-23', '0', '70', '17500.00', '1', '2021-01-25 14:04:01');
INSERT INTO `dt_history_stock` VALUES ('429', '145', 'Sales', '2021-01-23', '0', '50', '17500.00', '1', '2021-01-25 14:04:07');
INSERT INTO `dt_history_stock` VALUES ('430', '159', 'Sales', '2021-01-23', '0', '34', '17500.00', '1', '2021-01-25 14:04:13');
INSERT INTO `dt_history_stock` VALUES ('431', '130', 'Sales', '2021-01-23', '0', '4', '23000.00', '1', '2021-01-25 14:04:17');
INSERT INTO `dt_history_stock` VALUES ('432', '146', 'Sales', '2021-01-23', '0', '10', '23000.00', '1', '2021-01-25 14:04:23');
INSERT INTO `dt_history_stock` VALUES ('433', '4', 'Sales', '2021-01-23', '0', '5', '21500.00', '1', '2021-01-25 14:04:28');
INSERT INTO `dt_history_stock` VALUES ('434', '6', 'Sales', '2021-01-23', '0', '2', '29000.00', '1', '2021-01-25 14:04:33');
INSERT INTO `dt_history_stock` VALUES ('435', '175', 'Procurement', '2021-01-25', '150', '0', '16475.00', '1', '2021-01-25 14:54:37');
INSERT INTO `dt_history_stock` VALUES ('436', '176', 'Procurement', '2021-01-25', '10', '0', '16475.00', '1', '2021-01-25 14:54:44');
INSERT INTO `dt_history_stock` VALUES ('437', '148', 'Sales', '2021-01-21', '0', '6', '23500.00', '1', '2021-01-25 15:05:08');
INSERT INTO `dt_history_stock` VALUES ('438', '133', 'Sales', '2021-01-21', '0', '8', '17500.00', '1', '2021-01-25 15:05:14');
INSERT INTO `dt_history_stock` VALUES ('439', '86', 'Sales', '2021-01-21', '0', '5', '23500.00', '1', '2021-01-25 15:05:19');
INSERT INTO `dt_history_stock` VALUES ('440', '33', 'Sales', '2021-01-21', '0', '1', '29000.00', '1', '2021-01-25 15:05:24');
INSERT INTO `dt_history_stock` VALUES ('441', '147', 'Sales', '2021-01-21', '0', '1', '28500.00', '1', '2021-01-25 15:05:29');
INSERT INTO `dt_history_stock` VALUES ('442', '135', 'Sales', '2021-01-21', '0', '2', '17500.00', '1', '2021-01-25 15:05:35');
INSERT INTO `dt_history_stock` VALUES ('443', '88', 'Sales', '2021-01-21', '0', '1', '16000.00', '1', '2021-01-25 15:05:40');
INSERT INTO `dt_history_stock` VALUES ('444', '46', 'Sales', '2021-01-21', '0', '2', '2000.00', '1', '2021-01-25 15:05:45');
INSERT INTO `dt_history_stock` VALUES ('445', '164', 'Moving', '2021-01-25', '0', '6', '23000.00', '1', '2021-01-25 15:44:44');
INSERT INTO `dt_history_stock` VALUES ('446', '177', 'Moving', '2021-01-25', '6', '0', '23000.00', '1', '2021-01-25 15:44:44');
INSERT INTO `dt_history_stock` VALUES ('447', '126', 'Sales', '2021-01-25', '0', '3', '23500.00', '1', '2021-01-25 16:05:36');
INSERT INTO `dt_history_stock` VALUES ('448', '158', 'Sales', '2021-01-25', '0', '1', '23500.00', '1', '2021-01-25 16:05:41');
INSERT INTO `dt_history_stock` VALUES ('449', '136', 'Sales', '2021-01-25', '0', '3', '17500.00', '1', '2021-01-25 16:05:44');
INSERT INTO `dt_history_stock` VALUES ('450', '149', 'Sales', '2021-01-25', '0', '5', '17500.00', '1', '2021-01-25 16:05:50');
INSERT INTO `dt_history_stock` VALUES ('451', '137', 'Sales', '2021-01-25', '0', '5', '23500.00', '1', '2021-01-25 16:05:56');
INSERT INTO `dt_history_stock` VALUES ('452', '52', 'Sales', '2021-01-25', '0', '3', '17500.00', '1', '2021-01-25 16:06:02');
INSERT INTO `dt_history_stock` VALUES ('453', '127', 'Sales', '2021-01-25', '0', '1', '29000.00', '1', '2021-01-25 16:06:08');
INSERT INTO `dt_history_stock` VALUES ('454', '166', 'Sales', '2021-01-25', '0', '1', '29000.00', '1', '2021-01-25 16:06:13');
INSERT INTO `dt_history_stock` VALUES ('455', '57', 'Sales', '2021-01-25', '0', '1', '17500.00', '1', '2021-01-25 16:06:19');
INSERT INTO `dt_history_stock` VALUES ('456', '139', 'Sales', '2021-01-25', '0', '1', '24500.00', '1', '2021-01-25 16:06:24');
INSERT INTO `dt_history_stock` VALUES ('457', '63', 'Sales', '2021-01-25', '0', '1', '15000.00', '1', '2021-01-25 16:06:30');
INSERT INTO `dt_history_stock` VALUES ('458', '89', 'Sales', '2021-01-25', '0', '1', '12500.00', '1', '2021-01-25 16:06:34');
INSERT INTO `dt_history_stock` VALUES ('459', '108', 'Sales', '2021-01-25', '0', '2', '17500.00', '1', '2021-01-25 16:06:40');
INSERT INTO `dt_history_stock` VALUES ('460', '64', 'Sales', '2021-01-25', '0', '1', '1500.00', '1', '2021-01-25 16:06:45');
INSERT INTO `dt_history_stock` VALUES ('461', '65', 'Sales', '2021-01-25', '0', '6', '2000.00', '1', '2021-01-25 16:06:50');
INSERT INTO `dt_history_stock` VALUES ('462', '163', 'Sales', '2021-01-25', '0', '1', '40000.00', '1', '2021-01-25 16:17:05');
INSERT INTO `dt_history_stock` VALUES ('463', '178', 'Procurement', '2021-01-27', '1', '0', '13000.00', '1', '2021-01-27 15:20:05');
INSERT INTO `dt_history_stock` VALUES ('464', '159', 'Sales', '2021-01-27', '0', '16', '17500.00', '1', '2021-01-27 15:20:52');
INSERT INTO `dt_history_stock` VALUES ('465', '168', 'Sales', '2021-01-27', '0', '1', '45000.00', '1', '2021-01-27 15:20:58');
INSERT INTO `dt_history_stock` VALUES ('466', '167', 'Sales', '2021-01-27', '0', '2', '15000.00', '1', '2021-01-27 15:21:03');
INSERT INTO `dt_history_stock` VALUES ('467', '178', 'Sales', '2021-01-27', '0', '1', '13000.00', '1', '2021-01-27 15:21:11');
INSERT INTO `dt_history_stock` VALUES ('468', '179', 'Procurement', '2021-01-27', '2', '0', '17000.00', '1', '2021-01-27 15:23:12');
INSERT INTO `dt_history_stock` VALUES ('469', '173', 'Sales', '2021-01-27', '0', '1', '13000.00', '1', '2021-01-27 15:47:19');
INSERT INTO `dt_history_stock` VALUES ('470', '180', 'Procurement', '2021-01-29', '20', '0', '22025.00', '1', '2021-01-29 14:25:28');
INSERT INTO `dt_history_stock` VALUES ('471', '181', 'Procurement', '2021-01-29', '10', '0', '16475.00', '1', '2021-01-29 14:25:38');
INSERT INTO `dt_history_stock` VALUES ('472', '182', 'Procurement', '2021-01-29', '4', '0', '22925.00', '1', '2021-01-29 14:25:45');
INSERT INTO `dt_history_stock` VALUES ('473', '183', 'Procurement', '2021-01-29', '3', '0', '15800.00', '1', '2021-01-29 14:25:53');
INSERT INTO `dt_history_stock` VALUES ('474', '184', 'Procurement', '2021-01-29', '3', '0', '10975.00', '1', '2021-01-29 14:25:59');
INSERT INTO `dt_history_stock` VALUES ('475', '185', 'Procurement', '2021-01-29', '3', '0', '21700.00', '1', '2021-01-29 14:26:07');
INSERT INTO `dt_history_stock` VALUES ('476', '186', 'Procurement', '2021-01-29', '5', '0', '16550.00', '1', '2021-01-29 14:26:14');
INSERT INTO `dt_history_stock` VALUES ('477', '187', 'Procurement', '2021-01-29', '3', '0', '21700.00', '1', '2021-01-29 14:26:20');

-- ----------------------------
-- Table structure for dt_moving
-- ----------------------------
DROP TABLE IF EXISTS `dt_moving`;
CREATE TABLE `dt_moving` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `first_location_id` int(11) DEFAULT NULL,
  `last_location_id` int(11) DEFAULT NULL,
  `stock_id` int(11) DEFAULT NULL,
  `qty` varchar(255) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `createBy` varchar(255) DEFAULT NULL,
  `createTime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=70 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of dt_moving
-- ----------------------------
INSERT INTO `dt_moving` VALUES ('1', '4', '1', '10', '10', '2020-11-25', 'Aktif', '1', '2020-12-15 14:33:55');
INSERT INTO `dt_moving` VALUES ('2', '4', '1', '11', '10', '2020-11-25', 'Aktif', '1', '2020-12-15 14:34:48');
INSERT INTO `dt_moving` VALUES ('3', '4', '4', '12', '10', '2020-11-25', 'Aktif', '1', '2020-12-15 14:35:13');
INSERT INTO `dt_moving` VALUES ('4', '4', '1', '17', '5', '2020-11-25', 'Aktif', '1', '2020-12-15 14:35:31');
INSERT INTO `dt_moving` VALUES ('5', '4', '1', '19', '5', '2020-11-25', 'Aktif', '1', '2020-12-15 14:35:56');
INSERT INTO `dt_moving` VALUES ('6', '4', '1', '14', '5', '2020-11-25', 'Aktif', '1', '2020-12-15 14:36:20');
INSERT INTO `dt_moving` VALUES ('7', '4', '1', '25', '3', '2020-11-25', 'Aktif', '1', '2020-12-15 14:36:39');
INSERT INTO `dt_moving` VALUES ('8', '4', '1', '15', '5', '2020-11-25', 'Aktif', '1', '2020-12-15 14:37:19');
INSERT INTO `dt_moving` VALUES ('9', '4', '1', '13', '10', '2020-11-25', 'Aktif', '1', '2020-12-15 14:37:55');
INSERT INTO `dt_moving` VALUES ('10', '4', '1', '22', '3', '2020-11-25', 'Aktif', '1', '2020-12-15 14:40:12');
INSERT INTO `dt_moving` VALUES ('11', '4', '1', '18', '5', '2020-11-25', 'Aktif', '1', '2020-12-15 14:40:35');
INSERT INTO `dt_moving` VALUES ('12', '4', '1', '16', '5', '2020-11-25', 'Aktif', '1', '2020-12-15 14:40:56');
INSERT INTO `dt_moving` VALUES ('13', '4', '1', '24', '3', '2020-11-25', 'Aktif', '1', '2020-12-15 14:41:25');
INSERT INTO `dt_moving` VALUES ('14', '4', '1', '26', '3', '2020-11-25', 'Aktif', '1', '2020-12-15 14:41:53');
INSERT INTO `dt_moving` VALUES ('15', '4', '1', '27', '3', '2020-11-25', 'Aktif', '1', '2020-12-15 14:42:30');
INSERT INTO `dt_moving` VALUES ('16', '4', '1', '27', '3', '2020-11-25', 'Aktif', '1', '2020-12-15 14:43:00');
INSERT INTO `dt_moving` VALUES ('17', '4', '1', '21', '50', '2020-11-25', 'Aktif', '1', '2020-12-15 14:43:32');
INSERT INTO `dt_moving` VALUES ('18', '4', '1', '23', '3', '2020-11-25', 'Aktif', '1', '2020-12-15 14:43:57');
INSERT INTO `dt_moving` VALUES ('19', '4', '1', '20', '50', '2020-11-25', 'Aktif', '1', '2020-12-15 14:44:48');
INSERT INTO `dt_moving` VALUES ('20', '4', '1', '12', '10', '2020-11-25', 'Aktif', '1', '2020-12-15 14:50:20');
INSERT INTO `dt_moving` VALUES ('21', '1', '4', '42', '3', '2020-11-25', 'Aktif', '1', '2020-12-15 14:53:16');
INSERT INTO `dt_moving` VALUES ('22', '4', '3', '10', '10', '2020-11-25', 'Aktif', '1', '2020-12-15 14:55:21');
INSERT INTO `dt_moving` VALUES ('23', '4', '3', '11', '10', '2020-11-25', 'Aktif', '1', '2020-12-15 14:55:52');
INSERT INTO `dt_moving` VALUES ('24', '4', '3', '30', '10', '2020-11-25', 'Aktif', '1', '2020-12-15 14:56:15');
INSERT INTO `dt_moving` VALUES ('25', '4', '3', '17', '5', '2020-11-25', 'Aktif', '1', '2020-12-15 14:58:14');
INSERT INTO `dt_moving` VALUES ('26', '4', '3', '19', '5', '2020-11-25', 'Aktif', '1', '2020-12-15 14:58:34');
INSERT INTO `dt_moving` VALUES ('27', '4', '3', '14', '5', '2020-11-25', 'Aktif', '1', '2020-12-15 14:58:54');
INSERT INTO `dt_moving` VALUES ('28', '4', '3', '25', '3', '2020-11-25', 'Aktif', '1', '2020-12-15 14:59:25');
INSERT INTO `dt_moving` VALUES ('29', '4', '3', '15', '5', '2020-11-25', 'Aktif', '1', '2020-12-15 14:59:42');
INSERT INTO `dt_moving` VALUES ('30', '4', '3', '13', '10', '2020-11-25', 'Aktif', '1', '2020-12-15 15:00:08');
INSERT INTO `dt_moving` VALUES ('31', '4', '3', '22', '3', '2020-11-25', 'Aktif', '1', '2020-12-15 15:14:54');
INSERT INTO `dt_moving` VALUES ('32', '4', '3', '18', '5', '2020-11-25', 'Aktif', '1', '2020-12-15 15:15:37');
INSERT INTO `dt_moving` VALUES ('33', '4', '3', '16', '5', '2020-11-25', 'Aktif', '1', '2020-12-15 15:16:03');
INSERT INTO `dt_moving` VALUES ('34', '4', '3', '24', '3', '2020-11-25', 'Aktif', '1', '2020-12-15 15:16:28');
INSERT INTO `dt_moving` VALUES ('35', '4', '3', '26', '3', '2020-11-25', 'Aktif', '1', '2020-12-15 15:16:49');
INSERT INTO `dt_moving` VALUES ('36', '4', '3', '48', '3', '2020-11-25', 'Aktif', '1', '2020-12-15 15:17:15');
INSERT INTO `dt_moving` VALUES ('37', '4', '3', '21', '50', '2020-11-25', 'Aktif', '1', '2020-12-15 15:25:00');
INSERT INTO `dt_moving` VALUES ('38', '4', '3', '20', '50', '2020-11-25', 'Aktif', '1', '2020-12-15 15:25:25');
INSERT INTO `dt_moving` VALUES ('39', '4', '3', '23', '3', '2020-11-25', 'Aktif', '1', '2020-12-15 15:25:47');
INSERT INTO `dt_moving` VALUES ('40', '1', '3', '71', '3', '2020-12-03', 'Aktif', '1', '2020-12-15 15:57:07');
INSERT INTO `dt_moving` VALUES ('41', '3', '1', '50', '8', '2020-12-03', 'Aktif', '1', '2020-12-15 16:01:42');
INSERT INTO `dt_moving` VALUES ('42', '2', '1', '74', '10', '2020-12-06', 'Aktif', '1', '2020-12-15 16:21:59');
INSERT INTO `dt_moving` VALUES ('43', '2', '1', '75', '10', '2020-12-06', 'Aktif', '1', '2020-12-15 16:23:10');
INSERT INTO `dt_moving` VALUES ('44', '2', '3', '74', '10', '2020-12-06', 'Aktif', '1', '2020-12-15 16:24:25');
INSERT INTO `dt_moving` VALUES ('45', '2', '3', '76', '10', '2020-12-06', 'Aktif', '1', '2020-12-15 16:26:49');
INSERT INTO `dt_moving` VALUES ('46', '4', '1', '82', '10', '2020-12-13', 'Aktif', '1', '2020-12-15 16:35:03');
INSERT INTO `dt_moving` VALUES ('47', '4', '1', '83', '3', '2020-12-13', 'Aktif', '1', '2020-12-15 16:35:38');
INSERT INTO `dt_moving` VALUES ('48', '4', '1', '85', '5', '2020-12-13', 'Aktif', '1', '2020-12-15 16:36:02');
INSERT INTO `dt_moving` VALUES ('49', '4', '3', '84', '5', '2020-12-14', 'Aktif', '1', '2020-12-15 16:37:01');
INSERT INTO `dt_moving` VALUES ('50', '1', '3', '70', '10', '2020-12-03', 'Aktif', '1', '2020-12-15 17:55:48');
INSERT INTO `dt_moving` VALUES ('51', '4', '3', '97', '10', '2020-12-21', 'Aktif', '1', '2020-12-21 14:13:21');
INSERT INTO `dt_moving` VALUES ('52', '4', '3', '81', '10', '2020-12-21', 'Aktif', '1', '2020-12-21 14:13:45');
INSERT INTO `dt_moving` VALUES ('53', '4', '3', '96', '5', '2020-12-21', 'Aktif', '1', '2020-12-21 14:14:14');
INSERT INTO `dt_moving` VALUES ('54', '4', '3', '95', '3', '2020-12-21', 'Aktif', '1', '2020-12-21 14:14:37');
INSERT INTO `dt_moving` VALUES ('55', '4', '1', '81', '5', '2020-12-24', 'Aktif', '1', '2020-12-24 12:23:09');
INSERT INTO `dt_moving` VALUES ('56', '4', '1', '113', '10', '2020-12-24', 'Aktif', '1', '2020-12-24 12:23:25');
INSERT INTO `dt_moving` VALUES ('57', '4', '1', '112', '10', '2020-12-24', 'Aktif', '1', '2020-12-24 12:23:57');
INSERT INTO `dt_moving` VALUES ('58', '4', '1', '110', '3', '2020-12-24', 'Aktif', '1', '2020-12-24 12:24:29');
INSERT INTO `dt_moving` VALUES ('59', '4', '1', '114', '3', '2020-12-24', 'Aktif', '1', '2020-12-24 12:25:02');
INSERT INTO `dt_moving` VALUES ('60', '4', '1', '115', '1', '2020-12-24', 'Aktif', '1', '2020-12-24 12:25:23');
INSERT INTO `dt_moving` VALUES ('61', '4', '1', '111', '1', '2020-12-24', 'Aktif', '1', '2020-12-24 12:25:53');
INSERT INTO `dt_moving` VALUES ('62', '4', '3', '81', '2', '2020-12-24', 'Aktif', '1', '2020-12-24 12:27:27');
INSERT INTO `dt_moving` VALUES ('63', '4', '3', '116', '5', '2020-12-24', 'Aktif', '1', '2020-12-24 12:27:47');
INSERT INTO `dt_moving` VALUES ('64', '4', '3', '117', '3', '2020-12-24', 'Aktif', '1', '2020-12-24 12:28:17');
INSERT INTO `dt_moving` VALUES ('65', '4', '3', '111', '3', '2020-12-24', 'Aktif', '1', '2020-12-24 12:28:37');
INSERT INTO `dt_moving` VALUES ('66', '4', '3', '115', '3', '2020-12-24', 'Aktif', '1', '2020-12-24 12:28:55');
INSERT INTO `dt_moving` VALUES ('67', '4', '3', '164', '4', '2021-01-21', 'Aktif', '1', '2021-01-21 05:10:46');
INSERT INTO `dt_moving` VALUES ('68', '4', '3', '143', '5', '2021-01-21', 'Aktif', '1', '2021-01-21 05:11:05');
INSERT INTO `dt_moving` VALUES ('69', '4', '1', '164', '6', '2021-01-25', 'Aktif', '1', '2021-01-25 15:43:42');

-- ----------------------------
-- Table structure for dt_procurement
-- ----------------------------
DROP TABLE IF EXISTS `dt_procurement`;
CREATE TABLE `dt_procurement` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `thrid_party_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `location_id` int(11) DEFAULT NULL,
  `no_trx` varchar(255) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  `unit_price` double(25,2) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `createBy` varchar(255) DEFAULT NULL,
  `createTime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=123 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of dt_procurement
-- ----------------------------
INSERT INTO `dt_procurement` VALUES ('1', '2', '1', '2', 'IN/1/1', '2020-11-23', '20', '16500.00', 'Aktif', '1', '2020-12-14 15:13:06');
INSERT INTO `dt_procurement` VALUES ('2', '2', '3', '2', 'IN/2/1', '2020-11-23', '10', '22100.00', 'Aktif', '1', '2020-12-14 15:13:41');
INSERT INTO `dt_procurement` VALUES ('3', '2', '2', '2', 'IN/3/1', '2020-11-23', '10', '22050.00', 'Aktif', '1', '2020-12-14 15:14:08');
INSERT INTO `dt_procurement` VALUES ('4', '2', '5', '2', 'IN/4/1', '2020-11-23', '10', '20300.00', 'Aktif', '1', '2020-12-14 15:14:37');
INSERT INTO `dt_procurement` VALUES ('5', '2', '9', '2', 'IN/5/1', '2020-11-23', '5', '27650.00', 'Aktif', '1', '2020-12-14 15:15:31');
INSERT INTO `dt_procurement` VALUES ('6', '2', '7', '2', 'IN/6/1', '2020-11-23', '5', '27650.00', 'Aktif', '1', '2020-12-14 15:16:13');
INSERT INTO `dt_procurement` VALUES ('7', '2', '22', '2', 'IN/7/1', '2020-11-23', '5', '21700.00', 'Aktif', '1', '2020-12-14 15:17:43');
INSERT INTO `dt_procurement` VALUES ('8', '2', '10', '2', 'IN/8/1', '2020-11-23', '5', '16550.00', 'Aktif', '1', '2020-12-14 15:18:43');
INSERT INTO `dt_procurement` VALUES ('9', '2', '19', '2', 'IN/9/1', '2020-11-23', '50', '1380.00', 'Aktif', '1', '2020-12-14 15:19:12');
INSERT INTO `dt_procurement` VALUES ('10', '3', '1', '4', 'IN/10/1', '2020-11-25', '20', '16500.00', 'Aktif', '1', '2020-12-14 15:23:53');
INSERT INTO `dt_procurement` VALUES ('11', '3', '2', '4', 'IN/11/1', '2020-11-25', '20', '22050.00', 'Aktif', '1', '2020-12-14 15:24:30');
INSERT INTO `dt_procurement` VALUES ('12', '3', '3', '4', 'IN/12/1', '2020-11-25', '20', '22050.00', 'Aktif', '1', '2020-12-14 15:25:51');
INSERT INTO `dt_procurement` VALUES ('13', '3', '10', '4', 'IN/13/1', '2020-11-25', '20', '16575.00', 'Aktif', '1', '2020-12-14 15:27:03');
INSERT INTO `dt_procurement` VALUES ('14', '3', '7', '4', 'IN/14/1', '2020-11-25', '10', '27650.00', 'Aktif', '1', '2020-12-14 15:27:45');
INSERT INTO `dt_procurement` VALUES ('15', '3', '9', '4', 'IN/15/1', '2020-11-25', '10', '27600.00', 'Aktif', '1', '2020-12-14 15:28:07');
INSERT INTO `dt_procurement` VALUES ('16', '3', '14', '4', 'IN/16/1', '2020-11-25', '10', '19000.00', 'Aktif', '1', '2020-12-14 15:28:36');
INSERT INTO `dt_procurement` VALUES ('17', '3', '4', '4', 'IN/17/1', '2020-11-25', '10', '16100.00', 'Aktif', '1', '2020-12-14 15:29:02');
INSERT INTO `dt_procurement` VALUES ('18', '3', '13', '4', 'IN/18/1', '2020-11-25', '10', '21500.00', 'Aktif', '1', '2020-12-14 15:29:32');
INSERT INTO `dt_procurement` VALUES ('19', '3', '5', '4', 'IN/19/1', '2020-11-25', '10', '20300.00', 'Aktif', '1', '2020-12-14 15:29:49');
INSERT INTO `dt_procurement` VALUES ('20', '3', '17', '4', 'IN/27/1', '2020-11-25', '6', '14000.00', 'Aktif', '1', '2020-12-14 15:30:46');
INSERT INTO `dt_procurement` VALUES ('21', '0', '16', '4', 'IN/26/1', '2020-11-25', '6', '14750.00', 'Aktif', '1', '2020-12-14 15:34:15');
INSERT INTO `dt_procurement` VALUES ('22', '3', '12', '4', 'IN/22/1', '2020-11-25', '6', '23250.00', 'Aktif', '1', '2020-12-14 15:35:05');
INSERT INTO `dt_procurement` VALUES ('24', '3', '8', '4', 'IN/25/1', '2020-11-25', '6', '27650.00', 'Aktif', '1', '2020-12-14 15:37:32');
INSERT INTO `dt_procurement` VALUES ('25', '3', '23', '4', 'IN/23/1', '2020-11-25', '6', '18400.00', 'Aktif', '1', '2020-12-14 15:38:59');
INSERT INTO `dt_procurement` VALUES ('26', '3', '15', '4', 'IN/24/1', '2020-11-25', '6', '12450.00', 'Aktif', '1', '2020-12-14 15:39:44');
INSERT INTO `dt_procurement` VALUES ('27', '3', '19', '4', 'IN/21/1', '2020-11-25', '100', '1330.00', 'Aktif', '1', '2020-12-14 15:40:25');
INSERT INTO `dt_procurement` VALUES ('28', '3', '20', '4', 'IN/20/1', '2020-11-25', '100', '1600.00', 'Aktif', '1', '2020-12-14 15:40:57');
INSERT INTO `dt_procurement` VALUES ('29', '5', '1', '2', 'IN/28/1', '2020-11-29', '100', '16400.00', 'Aktif', '1', '2020-12-15 15:45:19');
INSERT INTO `dt_procurement` VALUES ('30', '5', '19', '2', 'IN/29/1', '2020-11-29', '150', '1320.00', 'Aktif', '1', '2020-12-15 15:47:13');
INSERT INTO `dt_procurement` VALUES ('31', '6', '18', '2', 'IN/30/1', '2020-12-01', '120', '2125.00', 'Aktif', '1', '2020-12-15 15:51:06');
INSERT INTO `dt_procurement` VALUES ('32', '2', '1', '1', 'IN/31/1', '2020-12-03', '10', '16500.00', 'Aktif', '1', '2020-12-15 15:53:28');
INSERT INTO `dt_procurement` VALUES ('33', '2', '24', '1', 'IN/32/1', '2020-12-03', '6', '11625.00', 'Aktif', '1', '2020-12-15 15:55:36');
INSERT INTO `dt_procurement` VALUES ('34', '1', '2', '3', 'IN/63/1', '2020-12-04', '10', '22025.00', 'Aktif', '1', '2020-12-15 16:05:06');
INSERT INTO `dt_procurement` VALUES ('35', '4', '1', '2', 'IN/33/1', '2020-12-06', '120', '16500.00', 'Aktif', '1', '2020-12-15 16:06:47');
INSERT INTO `dt_procurement` VALUES ('36', '4', '2', '2', 'IN/34/1', '2020-12-06', '20', '22050.00', 'Aktif', '1', '2020-12-15 16:08:50');
INSERT INTO `dt_procurement` VALUES ('37', '4', '3', '2', 'IN/35/1', '2020-12-06', '10', '22025.00', 'Aktif', '1', '2020-12-15 16:09:48');
INSERT INTO `dt_procurement` VALUES ('38', '1', '1', '4', 'IN/36/1', '2020-12-13', '20', '16425.00', 'Aktif', '1', '2020-12-15 16:28:47');
INSERT INTO `dt_procurement` VALUES ('39', '1', '3', '4', 'IN/37/1', '2020-12-13', '10', '22000.00', 'Aktif', '1', '2020-12-15 16:30:22');
INSERT INTO `dt_procurement` VALUES ('40', '1', '15', '4', 'IN/38/1', '2020-12-13', '3', '12400.00', 'Aktif', '1', '2020-12-15 16:32:03');
INSERT INTO `dt_procurement` VALUES ('41', '1', '24', '4', 'IN/39/1', '2020-12-13', '5', '11400.00', 'Aktif', '1', '2020-12-15 16:32:42');
INSERT INTO `dt_procurement` VALUES ('42', '1', '16', '4', 'IN/40/1', '2020-12-13', '5', '14725.00', 'Aktif', '1', '2020-12-15 16:33:29');
INSERT INTO `dt_procurement` VALUES ('43', '1', '1', '2', 'IN/96/1', '2020-12-19', '150', '16425.00', 'Aktif', '1', '2020-12-19 13:39:47');
INSERT INTO `dt_procurement` VALUES ('44', '1', '2', '2', 'IN/97/1', '2020-12-19', '10', '22025.00', 'Aktif', '1', '2020-12-19 13:40:18');
INSERT INTO `dt_procurement` VALUES ('45', '1', '19', '2', 'IN/98/1', '2020-12-19', '100', '1318.00', 'Aktif', '1', '2020-12-19 13:41:11');
INSERT INTO `dt_procurement` VALUES ('46', '1', '7', '4', 'IN/99/1', '2020-12-19', '3', '27575.00', 'Aktif', '1', '2020-12-19 13:43:30');
INSERT INTO `dt_procurement` VALUES ('47', '1', '25', '4', 'IN/100/1', '2020-12-19', '5', '15800.00', 'Aktif', '1', '2020-12-19 13:44:36');
INSERT INTO `dt_procurement` VALUES ('48', '1', '3', '4', 'IN/101/1', '2020-12-19', '10', '22000.00', 'Aktif', '1', '2020-12-19 13:45:19');
INSERT INTO `dt_procurement` VALUES ('49', '8', '26', '4', 'IN/113/1', '2020-12-02', '2', '87000.00', 'Aktif', '1', '2020-12-19 17:03:35');
INSERT INTO `dt_procurement` VALUES ('50', '8', '27', '4', 'IN/114/1', '2020-12-02', '1', '75000.00', 'Aktif', '1', '2020-12-19 17:04:11');
INSERT INTO `dt_procurement` VALUES ('51', '8', '26', '4', 'IN/115/1', '2020-12-05', '1', '85000.00', 'Aktif', '1', '2020-12-19 17:06:21');
INSERT INTO `dt_procurement` VALUES ('52', '8', '28', '4', 'IN/116/1', '2020-12-11', '1', '14000.00', 'Aktif', '1', '2020-12-19 17:07:06');
INSERT INTO `dt_procurement` VALUES ('53', '8', '29', '4', 'IN/117/1', '2020-12-11', '1', '6500.00', 'Aktif', '1', '2020-12-19 17:07:38');
INSERT INTO `dt_procurement` VALUES ('54', '8', '30', '4', 'IN/118/1', '2020-12-12', '1', '109000.00', 'Aktif', '1', '2020-12-19 17:08:20');
INSERT INTO `dt_procurement` VALUES ('55', '8', '26', '4', 'IN/119/1', '2020-12-15', '1', '70000.00', 'Aktif', '1', '2020-12-19 17:09:07');
INSERT INTO `dt_procurement` VALUES ('56', '6', '18', '2', 'IN/127/1', '2020-12-19', '72', '2125.00', 'Aktif', '1', '2020-12-19 17:22:20');
INSERT INTO `dt_procurement` VALUES ('57', '1', '9', '4', 'IN/139/1', '2020-12-23', '3', '27550.00', 'Aktif', '1', '2020-12-23 14:34:45');
INSERT INTO `dt_procurement` VALUES ('58', '1', '12', '4', 'IN/140/1', '2020-12-23', '4', '23625.00', 'Aktif', '1', '2020-12-23 14:35:13');
INSERT INTO `dt_procurement` VALUES ('59', '1', '2', '4', 'IN/141/1', '2020-12-23', '10', '22025.00', 'Aktif', '1', '2020-12-23 14:36:10');
INSERT INTO `dt_procurement` VALUES ('60', '1', '1', '4', 'IN/142/1', '2020-12-23', '10', '16425.00', 'Aktif', '1', '2020-12-23 14:36:44');
INSERT INTO `dt_procurement` VALUES ('61', '1', '13', '4', 'IN/143/1', '2020-12-23', '3', '21425.00', 'Aktif', '1', '2020-12-23 14:38:17');
INSERT INTO `dt_procurement` VALUES ('62', '1', '23', '4', 'IN/144/1', '2020-12-23', '4', '18375.00', 'Aktif', '1', '2020-12-23 14:38:58');
INSERT INTO `dt_procurement` VALUES ('63', '1', '2', '4', 'IN/145/1', '2020-12-23', '5', '22025.00', 'Aktif', '1', '2020-12-23 14:40:01');
INSERT INTO `dt_procurement` VALUES ('64', '1', '7', '4', 'IN/146/1', '2020-12-23', '3', '27575.00', 'Aktif', '1', '2020-12-23 14:40:38');
INSERT INTO `dt_procurement` VALUES ('65', '1', '2', '2', 'IN/166/1', '2020-12-29', '10', '22025.00', 'Aktif', '1', '2020-12-29 15:47:32');
INSERT INTO `dt_procurement` VALUES ('66', '1', '1', '2', 'IN/167/1', '2020-12-29', '50', '16425.00', 'Aktif', '1', '2020-12-29 15:48:22');
INSERT INTO `dt_procurement` VALUES ('67', '2', '1', '2', 'IN/168/1', '2020-12-29', '50', '16500.00', 'Aktif', '1', '2020-12-29 15:49:29');
INSERT INTO `dt_procurement` VALUES ('68', '1', '1', '1', 'IN/202/1', '2021-01-03', '20', '16425.00', 'Aktif', '1', '2021-01-07 13:56:25');
INSERT INTO `dt_procurement` VALUES ('69', '1', '8', '1', 'IN/203/1', '2021-01-03', '3', '27575.00', 'Aktif', '1', '2021-01-07 13:57:12');
INSERT INTO `dt_procurement` VALUES ('70', '1', '10', '1', 'IN/204/1', '2021-01-03', '4', '16550.00', 'Aktif', '1', '2021-01-07 13:57:55');
INSERT INTO `dt_procurement` VALUES ('71', '1', '1', '3', 'IN/205/1', '2021-01-03', '7', '16450.00', 'Aktif', '1', '2021-01-07 13:58:36');
INSERT INTO `dt_procurement` VALUES ('72', '1', '3', '3', 'IN/206/1', '2021-01-03', '10', '22000.00', 'Aktif', '1', '2021-01-07 13:59:07');
INSERT INTO `dt_procurement` VALUES ('73', '1', '24', '3', 'IN/207/1', '2021-01-03', '5', '11400.00', 'Aktif', '1', '2021-01-07 13:59:44');
INSERT INTO `dt_procurement` VALUES ('74', '1', '12', '3', 'IN/208/1', '2021-01-03', '5', '23625.00', 'Aktif', '1', '2021-01-07 14:00:15');
INSERT INTO `dt_procurement` VALUES ('75', '1', '16', '3', 'IN/209/1', '2021-01-03', '5', '14725.00', 'Aktif', '1', '2021-01-07 14:01:00');
INSERT INTO `dt_procurement` VALUES ('76', '1', '15', '3', 'IN/210/1', '2021-01-03', '3', '12600.00', 'Aktif', '1', '2021-01-07 14:01:36');
INSERT INTO `dt_procurement` VALUES ('77', '1', '1', '2', 'IN/211/1', '2021-01-03', '10', '16425.00', 'Aktif', '1', '2021-01-07 14:02:16');
INSERT INTO `dt_procurement` VALUES ('78', '1', '7', '4', 'IN/212/1', '2021-01-03', '5', '27575.00', 'Aktif', '1', '2021-01-07 14:02:53');
INSERT INTO `dt_procurement` VALUES ('79', '2', '1', '2', 'IN/219/1', '2021-01-08', '70', '16500.00', 'Aktif', '1', '2021-01-08 14:05:07');
INSERT INTO `dt_procurement` VALUES ('81', '1', '1', '2', 'IN/220/1', '2021-01-08', '50', '16425.00', 'Aktif', '1', '2021-01-08 14:06:25');
INSERT INTO `dt_procurement` VALUES ('82', '1', '2', '2', 'IN/221/1', '2021-01-08', '10', '22025.00', 'Aktif', '1', '2021-01-08 14:06:55');
INSERT INTO `dt_procurement` VALUES ('83', '1', '9', '1', 'IN/222/1', '2021-01-08', '5', '27550.00', 'Aktif', '1', '2021-01-08 14:07:42');
INSERT INTO `dt_procurement` VALUES ('84', '1', '2', '1', 'IN/223/1', '2021-01-08', '10', '22025.00', 'Aktif', '1', '2021-01-08 14:08:16');
INSERT INTO `dt_procurement` VALUES ('85', '1', '1', '3', 'IN/224/1', '2021-01-08', '10', '16450.00', 'Aktif', '1', '2021-01-08 14:09:08');
INSERT INTO `dt_procurement` VALUES ('86', '1', '12', '3', 'IN/225/1', '2021-01-08', '10', '23625.00', 'Aktif', '1', '2021-01-08 14:09:56');
INSERT INTO `dt_procurement` VALUES ('87', '1', '23', '1', 'IN/250/1', '2021-01-16', '3', '18375.00', 'Aktif', '1', '2021-01-17 16:07:57');
INSERT INTO `dt_procurement` VALUES ('88', '1', '13', '1', 'IN/251/1', '2021-01-16', '4', '21425.00', 'Aktif', '1', '2021-01-17 16:08:36');
INSERT INTO `dt_procurement` VALUES ('89', '1', '24', '1', 'IN/252/1', '2021-01-16', '4', '11400.00', 'Aktif', '1', '2021-01-17 16:09:33');
INSERT INTO `dt_procurement` VALUES ('90', '1', '16', '3', 'IN/253/1', '2021-01-16', '1', '14725.00', 'Aktif', '1', '2021-01-17 16:11:00');
INSERT INTO `dt_procurement` VALUES ('91', '1', '2', '1', 'IN/254/1', '2021-01-16', '10', '22025.00', 'Aktif', '1', '2021-01-17 16:11:30');
INSERT INTO `dt_procurement` VALUES ('92', '1', '16', '1', 'IN/255/1', '2021-01-16', '5', '14725.00', 'Aktif', '1', '2021-01-17 16:12:27');
INSERT INTO `dt_procurement` VALUES ('93', '1', '24', '3', 'IN/256/1', '2021-01-16', '4', '11400.00', 'Aktif', '1', '2021-01-17 16:13:25');
INSERT INTO `dt_procurement` VALUES ('94', '1', '2', '3', 'IN/257/1', '2021-01-16', '10', '22025.00', 'Aktif', '1', '2021-01-17 16:13:58');
INSERT INTO `dt_procurement` VALUES ('95', '1', '1', '2', 'IN/258/1', '2021-01-16', '50', '16475.00', 'Aktif', '1', '2021-01-17 16:14:37');
INSERT INTO `dt_procurement` VALUES ('96', '1', '2', '2', 'IN/259/1', '2021-01-16', '20', '22025.00', 'Aktif', '1', '2021-01-17 16:15:03');
INSERT INTO `dt_procurement` VALUES ('97', '9', '31', '4', 'IN/263/1', '2021-01-17', '3', '10000.00', 'Aktif', '1', '2021-01-17 16:33:49');
INSERT INTO `dt_procurement` VALUES ('98', '9', '32', '4', 'IN/264/1', '2021-01-17', '2', '35000.00', 'Aktif', '1', '2021-01-17 16:34:24');
INSERT INTO `dt_procurement` VALUES ('99', '9', '33', '4', 'IN/265/1', '2021-01-17', '1', '30000.00', 'Aktif', '1', '2021-01-17 16:34:48');
INSERT INTO `dt_procurement` VALUES ('100', '2', '3', '4', 'IN/276/1', '2021-01-18', '10', '23000.00', 'Aktif', '1', '2021-01-18 16:37:15');
INSERT INTO `dt_procurement` VALUES ('101', '9', '34', '4', 'IN/277/1', '2021-01-20', '2', '9500.00', 'Aktif', '1', '2021-01-21 06:25:52');
INSERT INTO `dt_procurement` VALUES ('102', '9', '35', '4', 'IN/278/1', '2021-01-20', '1', '30000.00', 'Aktif', '1', '2021-01-21 06:26:31');
INSERT INTO `dt_procurement` VALUES ('103', '9', '36', '4', 'IN/279/1', '2021-01-23', '1', '57000.00', 'Aktif', '1', '2021-01-25 13:47:21');
INSERT INTO `dt_procurement` VALUES ('104', '9', '37', '4', 'IN/280/1', '2021-01-23', '1', '20000.00', 'Aktif', '1', '2021-01-25 13:47:49');
INSERT INTO `dt_procurement` VALUES ('105', '9', '38', '4', 'IN/281/1', '2021-01-23', '1', '6500.00', 'Aktif', '1', '2021-01-25 13:48:17');
INSERT INTO `dt_procurement` VALUES ('106', '9', '39', '4', 'IN/282/1', '2021-01-23', '1', '17000.00', 'Aktif', '1', '2021-01-25 13:48:59');
INSERT INTO `dt_procurement` VALUES ('107', '9', '40', '4', 'IN/283/1', '2021-01-25', '2', '10000.00', 'Aktif', '1', '2021-01-25 13:49:18');
INSERT INTO `dt_procurement` VALUES ('108', '0', '31', '4', 'IN/284/1', '2021-01-25', '1', '10000.00', 'Aktif', '1', '2021-01-25 13:49:37');
INSERT INTO `dt_procurement` VALUES ('109', '1', '1', '2', 'IN/298/1', '2021-01-25', '150', '16475.00', 'Aktif', '1', '2021-01-25 14:53:19');
INSERT INTO `dt_procurement` VALUES ('110', '1', '1', '1', 'IN/299/1', '2021-01-25', '10', '16475.00', 'Aktif', '1', '2021-01-25 14:54:02');
INSERT INTO `dt_procurement` VALUES ('111', '7', '41', '4', 'IN/324/1', '2021-01-27', '1', '13000.00', 'Aktif', '1', '2021-01-27 15:19:56');
INSERT INTO `dt_procurement` VALUES ('112', '9', '42', '4', 'IN/329/1', '2021-01-27', '2', '17000.00', 'Aktif', '1', '2021-01-27 15:23:02');
INSERT INTO `dt_procurement` VALUES ('113', '1', '2', '2', 'IN/331/1', '2021-01-29', '20', '22025.00', 'Aktif', '1', '2021-01-29 14:07:39');
INSERT INTO `dt_procurement` VALUES ('114', '1', '1', '3', 'IN/332/1', '2021-01-29', '10', '16475.00', 'Aktif', '1', '2021-01-29 14:08:13');
INSERT INTO `dt_procurement` VALUES ('115', '1', '3', '3', 'IN/333/1', '2021-01-29', '4', '22925.00', 'Aktif', '1', '2021-01-29 14:08:56');
INSERT INTO `dt_procurement` VALUES ('116', '1', '25', '3', 'IN/334/1', '2021-01-29', '3', '15800.00', 'Aktif', '1', '2021-01-29 14:09:55');
INSERT INTO `dt_procurement` VALUES ('117', '1', '43', '3', 'IN/335/1', '2021-01-29', '3', '10975.00', 'Aktif', '1', '2021-01-29 14:16:59');
INSERT INTO `dt_procurement` VALUES ('119', '1', '22', '3', 'IN/336/1', '2021-01-29', '3', '21700.00', 'Aktif', '1', '2021-01-29 14:17:56');
INSERT INTO `dt_procurement` VALUES ('120', '1', '10', '1', 'IN/337/1', '2021-01-29', '5', '16550.00', 'Aktif', '1', '2021-01-29 14:18:20');
INSERT INTO `dt_procurement` VALUES ('122', '1', '22', '1', 'IN/338/1', '2021-01-29', '3', '21700.00', 'Aktif', '1', '2021-01-29 14:19:33');

-- ----------------------------
-- Table structure for dt_sales
-- ----------------------------
DROP TABLE IF EXISTS `dt_sales`;
CREATE TABLE `dt_sales` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `thrid_party_id` int(11) DEFAULT NULL,
  `stock_id` int(11) DEFAULT NULL,
  `no_trx` varchar(255) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  `amount_sales` double(25,2) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `createBy` varchar(255) DEFAULT NULL,
  `createTime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=221 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of dt_sales
-- ----------------------------
INSERT INTO `dt_sales` VALUES ('1', '7', '1', 'OU/41/1', '2020-11-28', '20', '17000.00', 'Aktif', '1', '2020-12-15 16:41:42');
INSERT INTO `dt_sales` VALUES ('2', '7', '2', 'OU/42/1', '2020-11-28', '1', '23500.00', 'Aktif', '1', '2020-12-15 16:42:46');
INSERT INTO `dt_sales` VALUES ('3', '7', '3', 'OU/43/1', '2020-12-06', '8', '23000.00', 'Aktif', '1', '2020-12-15 16:53:34');
INSERT INTO `dt_sales` VALUES ('4', '7', '67', 'OU/44/1', '2020-12-06', '92', '17000.00', 'Aktif', '1', '2020-12-15 16:54:06');
INSERT INTO `dt_sales` VALUES ('5', '7', '2', 'OU/45/1', '2020-12-06', '8', '23000.00', 'Aktif', '1', '2020-12-15 17:21:21');
INSERT INTO `dt_sales` VALUES ('6', '7', '7', 'OU/46/1', '2020-12-06', '3', '22500.00', 'Aktif', '1', '2020-12-15 17:22:03');
INSERT INTO `dt_sales` VALUES ('7', '7', '5', 'OU/47/1', '2020-12-06', '1', '29000.00', 'Aktif', '1', '2020-12-15 17:22:51');
INSERT INTO `dt_sales` VALUES ('8', '7', '8', 'OU/48/1', '2020-12-06', '5', '17000.00', 'Aktif', '1', '2020-12-15 17:23:28');
INSERT INTO `dt_sales` VALUES ('9', '7', '9', 'OU/49/1', '2020-12-06', '50', '1500.00', 'Aktif', '1', '2020-12-15 17:24:03');
INSERT INTO `dt_sales` VALUES ('10', '7', '49', 'OU/50/1', '2020-12-02', '9', '17500.00', 'Aktif', '1', '2020-12-15 17:30:31');
INSERT INTO `dt_sales` VALUES ('11', '7', '51', 'OU/51/1', '2020-12-02', '4', '23500.00', 'Aktif', '1', '2020-12-15 17:31:42');
INSERT INTO `dt_sales` VALUES ('12', '7', '52', 'OU/52/1', '2020-12-02', '1', '17500.00', 'Aktif', '1', '2020-12-15 17:32:25');
INSERT INTO `dt_sales` VALUES ('13', '7', '54', 'OU/53/1', '2020-12-02', '1', '29000.00', 'Aktif', '1', '2020-12-15 17:33:17');
INSERT INTO `dt_sales` VALUES ('14', '7', '56', 'OU/54/1', '2020-12-02', '1', '28500.00', 'Aktif', '1', '2020-12-15 17:33:49');
INSERT INTO `dt_sales` VALUES ('15', '7', '59', 'OU/55/1', '2020-12-02', '1', '22500.00', 'Aktif', '1', '2020-12-15 17:34:41');
INSERT INTO `dt_sales` VALUES ('16', '7', '49', 'OU/56/1', '2020-12-03', '1', '17500.00', 'Aktif', '1', '2020-12-15 17:36:39');
INSERT INTO `dt_sales` VALUES ('17', '7', '79', 'OU/57/1', '2020-12-03', '6', '17500.00', 'Aktif', '1', '2020-12-15 17:37:12');
INSERT INTO `dt_sales` VALUES ('18', '7', '50', 'OU/58/1', '2020-12-03', '2', '23500.00', 'Aktif', '1', '2020-12-15 17:39:03');
INSERT INTO `dt_sales` VALUES ('19', '7', '51', 'OU/59/1', '2020-12-03', '6', '23500.00', 'Aktif', '1', '2020-12-15 17:39:43');
INSERT INTO `dt_sales` VALUES ('20', '7', '57', 'OU/60/1', '2020-12-03', '1', '17500.00', 'Aktif', '1', '2020-12-15 17:40:20');
INSERT INTO `dt_sales` VALUES ('21', '7', '60', 'OU/61/1', '2020-12-03', '1', '20000.00', 'Aktif', '1', '2020-12-15 17:40:58');
INSERT INTO `dt_sales` VALUES ('22', '7', '72', 'OU/62/1', '2020-12-03', '1', '12500.00', 'Aktif', '1', '2020-12-15 17:41:29');
INSERT INTO `dt_sales` VALUES ('23', '7', '90', 'OU/64/1', '2020-12-14', '2', '23500.00', 'Aktif', '1', '2020-12-15 17:47:49');
INSERT INTO `dt_sales` VALUES ('24', '7', '79', 'OU/65/1', '2020-12-14', '4', '17500.00', 'Aktif', '1', '2020-12-15 17:57:33');
INSERT INTO `dt_sales` VALUES ('25', '7', '91', 'OU/66/1', '2020-12-14', '1', '17500.00', 'Aktif', '1', '2020-12-15 17:57:53');
INSERT INTO `dt_sales` VALUES ('26', '7', '80', 'OU/67/1', '2020-12-14', '6', '23500.00', 'Aktif', '1', '2020-12-15 17:58:34');
INSERT INTO `dt_sales` VALUES ('27', '7', '53', 'OU/68/1', '2020-12-14', '1', '21500.00', 'Aktif', '1', '2020-12-15 17:59:04');
INSERT INTO `dt_sales` VALUES ('28', '7', '54', 'OU/69/1', '2020-12-14', '2', '29000.00', 'Aktif', '1', '2020-12-15 17:59:42');
INSERT INTO `dt_sales` VALUES ('29', '7', '56', 'OU/70/1', '2020-12-14', '1', '28500.00', 'Aktif', '1', '2020-12-15 18:00:15');
INSERT INTO `dt_sales` VALUES ('30', '7', '57', 'OU/71/1', '2020-12-14', '1', '17500.00', 'Aktif', '1', '2020-12-15 18:00:47');
INSERT INTO `dt_sales` VALUES ('31', '7', '58', 'OU/72/1', '2020-12-14', '1', '24500.00', 'Aktif', '1', '2020-12-15 18:01:24');
INSERT INTO `dt_sales` VALUES ('32', '7', '59', 'OU/73/1', '2020-12-14', '2', '22500.00', 'Aktif', '1', '2020-12-15 18:01:55');
INSERT INTO `dt_sales` VALUES ('33', '7', '66', 'OU/74/1', '2020-12-14', '1', '19500.00', 'Aktif', '1', '2020-12-15 18:02:36');
INSERT INTO `dt_sales` VALUES ('34', '7', '61', 'OU/75/1', '2020-12-14', '1', '13500.00', 'Aktif', '1', '2020-12-15 18:03:15');
INSERT INTO `dt_sales` VALUES ('35', '7', '63', 'OU/76/1', '2020-12-14', '1', '15000.00', 'Aktif', '1', '2020-12-15 18:04:35');
INSERT INTO `dt_sales` VALUES ('36', '7', '72', 'OU/77/1', '2020-12-14', '1', '12500.00', 'Aktif', '1', '2020-12-15 18:05:07');
INSERT INTO `dt_sales` VALUES ('37', '7', '65', 'OU/78/1', '2020-12-14', '1', '2000.00', 'Aktif', '1', '2020-12-15 18:05:37');
INSERT INTO `dt_sales` VALUES ('38', '7', '29', 'OU/79/1', '2020-12-02', '9', '23500.00', 'Aktif', '1', '2020-12-15 18:15:03');
INSERT INTO `dt_sales` VALUES ('39', '7', '28', 'OU/80/1', '2020-12-02', '2', '17500.00', 'Aktif', '1', '2020-12-15 18:15:54');
INSERT INTO `dt_sales` VALUES ('40', '7', '47', 'OU/81/1', '2020-12-02', '5', '23500.00', 'Aktif', '1', '2020-12-15 18:16:29');
INSERT INTO `dt_sales` VALUES ('41', '7', '41', 'OU/82/1', '2020-12-02', '1', '16000.00', 'Aktif', '1', '2020-12-15 18:17:02');
INSERT INTO `dt_sales` VALUES ('42', '7', '29', 'OU/83/1', '2020-12-10', '1', '23500.00', 'Aktif', '1', '2020-12-15 18:18:31');
INSERT INTO `dt_sales` VALUES ('43', '7', '73', 'OU/84/1', '2020-12-10', '3', '23500.00', 'Aktif', '1', '2020-12-15 18:19:05');
INSERT INTO `dt_sales` VALUES ('44', '7', '28', 'OU/85/1', '2020-12-10', '7', '17500.00', 'Aktif', '1', '2020-12-15 18:19:35');
INSERT INTO `dt_sales` VALUES ('45', '7', '47', 'OU/86/1', '2020-12-10', '3', '23500.00', 'Aktif', '1', '2020-12-15 18:20:05');
INSERT INTO `dt_sales` VALUES ('46', '7', '35', 'OU/87/1', '2020-12-10', '1', '28500.00', 'Aktif', '1', '2020-12-15 18:20:37');
INSERT INTO `dt_sales` VALUES ('47', '7', '36', 'OU/88/1', '2020-12-10', '2', '17500.00', 'Aktif', '1', '2020-12-15 18:21:10');
INSERT INTO `dt_sales` VALUES ('48', '7', '38', 'OU/89/1', '2020-12-10', '2', '22500.00', 'Aktif', '1', '2020-12-15 18:25:47');
INSERT INTO `dt_sales` VALUES ('49', '7', '40', 'OU/90/1', '2020-12-10', '1', '13500.00', 'Aktif', '1', '2020-12-15 18:26:26');
INSERT INTO `dt_sales` VALUES ('50', '7', '44', 'OU/91/1', '2020-12-10', '2', '1500.00', 'Aktif', '1', '2020-12-15 18:27:01');
INSERT INTO `dt_sales` VALUES ('51', '7', '73', 'OU/92/1', '2020-12-13', '3', '23500.00', 'Aktif', '1', '2020-12-15 18:29:15');
INSERT INTO `dt_sales` VALUES ('52', '7', '28', 'OU/93/1', '2020-12-13', '1', '17500.00', 'Aktif', '1', '2020-12-15 18:29:52');
INSERT INTO `dt_sales` VALUES ('53', '7', '77', 'OU/94/1', '2020-12-13', '1', '17500.00', 'Aktif', '1', '2020-12-15 18:30:16');
INSERT INTO `dt_sales` VALUES ('54', '7', '41', 'OU/95/1', '2020-12-13', '2', '16000.00', 'Aktif', '1', '2020-12-15 18:31:06');
INSERT INTO `dt_sales` VALUES ('55', '7', '67', 'OU/102/1', '2020-12-19', '8', '17000.00', 'Aktif', '1', '2020-12-19 14:19:44');
INSERT INTO `dt_sales` VALUES ('56', '7', '74', 'OU/103/1', '2020-12-19', '100', '17000.00', 'Aktif', '1', '2020-12-19 14:20:14');
INSERT INTO `dt_sales` VALUES ('57', '7', '3', 'OU/104/1', '2020-12-19', '2', '23000.00', 'Aktif', '1', '2020-12-19 14:21:01');
INSERT INTO `dt_sales` VALUES ('58', '7', '75', 'OU/105/1', '2020-12-19', '6', '23000.00', 'Aktif', '1', '2020-12-19 14:21:28');
INSERT INTO `dt_sales` VALUES ('59', '7', '2', 'OU/106/1', '2020-12-19', '1', '23000.00', 'Aktif', '1', '2020-12-19 14:28:29');
INSERT INTO `dt_sales` VALUES ('60', '7', '4', 'OU/107/1', '2020-12-19', '2', '21500.00', 'Aktif', '1', '2020-12-19 14:28:54');
INSERT INTO `dt_sales` VALUES ('61', '7', '7', 'OU/108/1', '2020-12-19', '2', '22500.00', 'Aktif', '1', '2020-12-19 14:29:34');
INSERT INTO `dt_sales` VALUES ('62', '7', '6', 'OU/109/1', '2020-12-19', '2', '29000.00', 'Aktif', '1', '2020-12-19 14:30:11');
INSERT INTO `dt_sales` VALUES ('64', '7', '68', 'OU/111/1', '2020-12-19', '150', '1500.00', 'Aktif', '1', '2020-12-19 14:32:02');
INSERT INTO `dt_sales` VALUES ('65', '7', '5', 'OU/112/1', '2020-12-19', '4', '29000.00', 'Aktif', '1', '2020-12-19 16:44:22');
INSERT INTO `dt_sales` VALUES ('66', '7', '98', 'OU/120/1', '2020-12-02', '1', '100000.00', 'Aktif', '1', '2020-12-19 17:12:00');
INSERT INTO `dt_sales` VALUES ('67', '7', '98', 'OU/121/1', '2020-12-02', '1', '90000.00', 'Aktif', '1', '2020-12-19 17:12:47');
INSERT INTO `dt_sales` VALUES ('68', '7', '99', 'OU/122/1', '2020-12-02', '1', '85000.00', 'Aktif', '1', '2020-12-19 17:13:13');
INSERT INTO `dt_sales` VALUES ('69', '7', '100', 'OU/123/1', '2020-12-05', '1', '100000.00', 'Aktif', '1', '2020-12-19 17:13:58');
INSERT INTO `dt_sales` VALUES ('70', '7', '101', 'OU/124/1', '2020-12-11', '1', '20000.00', 'Aktif', '1', '2020-12-19 17:14:34');
INSERT INTO `dt_sales` VALUES ('71', '7', '102', 'OU/125/1', '2020-12-19', '1', '10000.00', 'Aktif', '1', '2020-12-19 17:14:57');
INSERT INTO `dt_sales` VALUES ('72', '7', '103', 'OU/126/1', '2020-12-12', '1', '120000.00', 'Aktif', '1', '2020-12-19 17:15:31');
INSERT INTO `dt_sales` VALUES ('73', '7', '104', null, '2020-12-15', '1', '80000.00', 'Draft', '1', '2020-12-19 17:16:04');
INSERT INTO `dt_sales` VALUES ('74', '7', '81', 'OU/128/1', '2020-12-18', '1', '17500.00', 'Aktif', '1', '2020-12-19 18:20:53');
INSERT INTO `dt_sales` VALUES ('75', '7', '91', 'OU/130/1', '2020-12-21', '3', '17500.00', 'Aktif', '1', '2020-12-21 14:08:06');
INSERT INTO `dt_sales` VALUES ('76', '7', '90', 'OU/131/1', '2020-12-21', '3', '23500.00', 'Aktif', '1', '2020-12-21 14:08:39');
INSERT INTO `dt_sales` VALUES ('77', '7', '80', 'OU/132/1', '2020-12-21', '3', '23500.00', 'Aktif', '1', '2020-12-21 14:09:06');
INSERT INTO `dt_sales` VALUES ('78', '7', '59', 'OU/133/1', '2020-12-21', '2', '22500.00', 'Aktif', '1', '2020-12-21 14:09:44');
INSERT INTO `dt_sales` VALUES ('79', '7', '66', 'OU/134/1', '2020-12-21', '1', '19500.00', 'Aktif', '1', '2020-12-21 14:10:10');
INSERT INTO `dt_sales` VALUES ('80', '7', '58', 'OU/135/1', '2020-12-21', '2', '24500.00', 'Aktif', '1', '2020-12-21 14:10:33');
INSERT INTO `dt_sales` VALUES ('81', '7', '62', 'OU/136/1', '2020-12-21', '1', '16000.00', 'Aktif', '1', '2020-12-21 14:11:07');
INSERT INTO `dt_sales` VALUES ('82', '7', '72', 'OU/137/1', '2020-12-21', '1', '12500.00', 'Aktif', '1', '2020-12-21 14:11:35');
INSERT INTO `dt_sales` VALUES ('83', '7', '89', 'OU/138/1', '2020-12-21', '1', '12500.00', 'Aktif', '1', '2020-12-21 14:11:52');
INSERT INTO `dt_sales` VALUES ('84', '7', '81', 'OU/129/1', '2020-12-21', '1', '17500.00', 'Aktif', '1', '2020-12-21 14:15:34');
INSERT INTO `dt_sales` VALUES ('85', '7', '73', 'OU/147/1', '2020-12-23', '2', '23500.00', 'Aktif', '1', '2020-12-23 14:49:36');
INSERT INTO `dt_sales` VALUES ('86', '7', '78', 'OU/148/1', '2020-12-23', '10', '23500.00', 'Aktif', '1', '2020-12-23 14:50:39');
INSERT INTO `dt_sales` VALUES ('87', '7', '77', 'OU/149/1', '2020-12-23', '9', '17500.00', 'Aktif', '1', '2020-12-23 14:51:15');
INSERT INTO `dt_sales` VALUES ('88', '7', '47', 'OU/150/1', '2020-12-23', '1', '23500.00', 'Aktif', '1', '2020-12-23 14:52:44');
INSERT INTO `dt_sales` VALUES ('89', '7', '31', 'OU/151/1', '2020-12-23', '1', '17500.00', 'Aktif', '1', '2020-12-23 14:53:13');
INSERT INTO `dt_sales` VALUES ('90', '7', '34', 'OU/152/1', '2020-12-23', '1', '29000.00', 'Aktif', '1', '2020-12-23 14:53:42');
INSERT INTO `dt_sales` VALUES ('91', '7', '35', 'OU/153/1', '2020-12-23', '3', '28500.00', 'Aktif', '1', '2020-12-23 14:54:07');
INSERT INTO `dt_sales` VALUES ('92', '7', '36', 'OU/154/1', '2020-12-23', '1', '17500.00', 'Aktif', '1', '2020-12-23 14:54:29');
INSERT INTO `dt_sales` VALUES ('93', '7', '38', 'OU/155/1', '2020-12-23', '2', '22500.00', 'Aktif', '1', '2020-12-23 14:54:54');
INSERT INTO `dt_sales` VALUES ('94', '7', '45', 'OU/156/1', '2020-12-23', '1', '19500.00', 'Aktif', '1', '2020-12-23 14:55:14');
INSERT INTO `dt_sales` VALUES ('95', '7', '37', 'OU/157/1', '2020-12-23', '1', '24500.00', 'Aktif', '1', '2020-12-23 14:55:34');
INSERT INTO `dt_sales` VALUES ('96', '7', '40', 'OU/158/1', '2020-12-23', '1', '13500.00', 'Aktif', '1', '2020-12-23 14:56:10');
INSERT INTO `dt_sales` VALUES ('97', '7', '88', 'OU/159/1', '2020-12-23', '1', '16000.00', 'Aktif', '1', '2020-12-23 14:56:32');
INSERT INTO `dt_sales` VALUES ('98', '7', '46', 'OU/160/1', '2020-12-23', '4', '2000.00', 'Aktif', '1', '2020-12-23 14:56:54');
INSERT INTO `dt_sales` VALUES ('99', '7', '44', 'OU/161/1', '2020-12-23', '3', '1500.00', 'Aktif', '1', '2020-12-23 14:57:16');
INSERT INTO `dt_sales` VALUES ('100', '7', '81', 'OU/237/1', '2020-12-24', '1', '17500.00', 'Aktif', '1', '2020-12-24 12:30:23');
INSERT INTO `dt_sales` VALUES ('101', '7', '92', 'OU/169/1', '2020-12-29', '131', '17500.00', 'Aktif', '1', '2020-12-29 15:40:00');
INSERT INTO `dt_sales` VALUES ('102', '7', '75', 'OU/163/1', '2020-12-29', '4', '23000.00', 'Aktif', '1', '2020-12-29 15:40:26');
INSERT INTO `dt_sales` VALUES ('103', '7', '93', 'OU/164/1', '2020-12-29', '8', '23000.00', 'Aktif', '1', '2020-12-29 15:40:57');
INSERT INTO `dt_sales` VALUES ('104', '7', '6', 'OU/165/1', '2020-12-29', '1', '29000.00', 'Aktif', '1', '2020-12-29 15:41:41');
INSERT INTO `dt_sales` VALUES ('105', '7', '90', 'OU/170/1', '2021-01-03', '4', '23500.00', 'Aktif', '1', '2021-01-07 12:34:35');
INSERT INTO `dt_sales` VALUES ('106', '7', '91', 'OU/171/1', '2021-01-03', '6', '17500.00', 'Aktif', '1', '2021-01-07 12:35:17');
INSERT INTO `dt_sales` VALUES ('107', '7', '107', 'OU/172/1', '2021-01-03', '4', '17500.00', 'Aktif', '1', '2021-01-07 12:35:41');
INSERT INTO `dt_sales` VALUES ('108', '7', '80', 'OU/173/1', '2021-01-03', '1', '23500.00', 'Aktif', '1', '2021-01-07 12:36:26');
INSERT INTO `dt_sales` VALUES ('109', '7', '106', 'OU/174/1', '2021-01-03', '6', '23500.00', 'Aktif', '1', '2021-01-07 12:36:48');
INSERT INTO `dt_sales` VALUES ('110', '7', '54', 'OU/175/1', '2021-01-03', '2', '29000.00', 'Aktif', '1', '2021-01-07 12:37:32');
INSERT INTO `dt_sales` VALUES ('111', '7', '109', 'OU/176/1', '2021-01-03', '2', '29000.00', 'Aktif', '1', '2021-01-07 12:38:13');
INSERT INTO `dt_sales` VALUES ('112', '7', '56', 'OU/177/1', '2021-01-03', '1', '28500.00', 'Aktif', '1', '2021-01-07 12:39:03');
INSERT INTO `dt_sales` VALUES ('113', '7', '57', 'OU/178/1', '2021-01-03', '1', '17500.00', 'Aktif', '1', '2021-01-07 12:39:43');
INSERT INTO `dt_sales` VALUES ('114', '7', '66', 'OU/179/1', '2021-01-03', '1', '19500.00', 'Aktif', '1', '2021-01-07 12:40:18');
INSERT INTO `dt_sales` VALUES ('115', '7', '128', 'OU/180/1', '2021-01-03', '3', '24500.00', 'Aktif', '1', '2021-01-07 12:41:03');
INSERT INTO `dt_sales` VALUES ('116', '7', '61', 'OU/181/1', '2021-01-03', '1', '13500.00', 'Aktif', '1', '2021-01-07 12:41:29');
INSERT INTO `dt_sales` VALUES ('117', '7', '62', 'OU/182/1', '2021-01-03', '2', '16000.00', 'Aktif', '1', '2021-01-07 12:41:59');
INSERT INTO `dt_sales` VALUES ('118', '7', '89', 'OU/183/1', '2021-01-03', '3', '12500.00', 'Aktif', '1', '2021-01-07 12:42:43');
INSERT INTO `dt_sales` VALUES ('119', '7', '64', 'OU/184/1', '2021-01-03', '8', '1500.00', 'Aktif', '1', '2021-01-07 12:51:59');
INSERT INTO `dt_sales` VALUES ('120', '7', '65', 'OU/185/1', '2021-01-03', '7', '2000.00', 'Aktif', '1', '2021-01-07 12:52:35');
INSERT INTO `dt_sales` VALUES ('121', '7', '120', 'OU/186/1', '2021-01-03', '10', '23500.00', 'Aktif', '1', '2021-01-07 13:39:02');
INSERT INTO `dt_sales` VALUES ('122', '7', '118', 'OU/187/1', '2021-01-03', '5', '17500.00', 'Aktif', '1', '2021-01-07 13:39:43');
INSERT INTO `dt_sales` VALUES ('123', '7', '119', 'OU/188/1', '2021-01-03', '9', '17500.00', 'Aktif', '1', '2021-01-07 13:40:10');
INSERT INTO `dt_sales` VALUES ('124', '7', '47', 'OU/189/1', '2021-01-03', '1', '23500.00', 'Aktif', '1', '2021-01-07 13:40:47');
INSERT INTO `dt_sales` VALUES ('125', '7', '86', 'OU/190/1', '2021-01-03', '1', '23500.00', 'Aktif', '1', '2021-01-07 13:41:16');
INSERT INTO `dt_sales` VALUES ('126', '7', '31', 'OU/191/1', '2021-01-03', '1', '17500.00', 'Aktif', '1', '2021-01-07 13:42:11');
INSERT INTO `dt_sales` VALUES ('127', '7', '32', 'OU/192/1', '2021-01-03', '1', '21500.00', 'Aktif', '1', '2021-01-07 13:42:46');
INSERT INTO `dt_sales` VALUES ('128', '7', '34', 'OU/193/1', '2021-01-03', '1', '29000.00', 'Aktif', '1', '2021-01-07 13:43:18');
INSERT INTO `dt_sales` VALUES ('129', '7', '35', 'OU/194/1', '2021-01-03', '1', '28500.00', 'Aktif', '1', '2021-01-07 13:44:00');
INSERT INTO `dt_sales` VALUES ('130', '7', '121', 'OU/195/1', '2021-01-03', '2', '28500.00', 'Aktif', '1', '2021-01-07 13:44:27');
INSERT INTO `dt_sales` VALUES ('131', '7', '36', 'OU/196/1', '2021-01-03', '6', '17500.00', 'Aktif', '1', '2021-01-07 13:46:51');
INSERT INTO `dt_sales` VALUES ('132', '7', '38', 'OU/197/1', '2021-01-03', '1', '22500.00', 'Aktif', '1', '2021-01-07 13:47:27');
INSERT INTO `dt_sales` VALUES ('134', '7', '71', 'OU/199/1', '2021-01-03', '1', '12500.00', 'Aktif', '1', '2021-01-07 13:48:33');
INSERT INTO `dt_sales` VALUES ('135', '7', '44', 'OU/200/1', '2021-01-03', '9', '1500.00', 'Aktif', '1', '2021-01-07 13:49:12');
INSERT INTO `dt_sales` VALUES ('136', '7', '46', 'OU/201/1', '2021-01-03', '1', '2000.00', 'Aktif', '1', '2021-01-07 13:49:36');
INSERT INTO `dt_sales` VALUES ('137', '7', '93', 'OU/213/1', '2021-01-08', '2', '23000.00', 'Aktif', '1', '2021-01-08 12:03:53');
INSERT INTO `dt_sales` VALUES ('138', '7', '130', 'OU/214/1', '2021-01-08', '6', '23000.00', 'Aktif', '1', '2021-01-08 12:04:16');
INSERT INTO `dt_sales` VALUES ('139', '7', '92', 'OU/215/1', '2021-01-08', '19', '17500.00', 'Aktif', '1', '2021-01-08 12:04:55');
INSERT INTO `dt_sales` VALUES ('140', '7', '131', 'OU/216/1', '2021-01-08', '50', '17500.00', 'Aktif', '1', '2021-01-08 12:05:25');
INSERT INTO `dt_sales` VALUES ('141', '7', '132', 'OU/217/1', '2021-01-08', '36', '17500.00', 'Aktif', '1', '2021-01-08 12:06:06');
INSERT INTO `dt_sales` VALUES ('142', '7', '4', 'OU/218/1', '2021-01-08', '3', '21500.00', 'Aktif', '1', '2021-01-08 12:07:11');
INSERT INTO `dt_sales` VALUES ('143', '7', '119', 'OU/226/1', '2021-01-11', '1', '17500.00', 'Aktif', '1', '2021-01-13 15:28:00');
INSERT INTO `dt_sales` VALUES ('144', '7', '133', 'OU/227/1', '2021-01-11', '10', '17500.00', 'Aktif', '1', '2021-01-13 15:28:30');
INSERT INTO `dt_sales` VALUES ('145', '7', '86', 'OU/228/1', '2021-01-11', '3', '23500.00', 'Aktif', '1', '2021-01-13 15:29:05');
INSERT INTO `dt_sales` VALUES ('146', '7', '33', 'OU/229/1', '2021-01-11', '1', '29000.00', 'Aktif', '1', '2021-01-13 15:29:36');
INSERT INTO `dt_sales` VALUES ('147', '7', '121', 'OU/230/1', '2021-01-11', '1', '28500.00', 'Aktif', '1', '2021-01-13 15:30:11');
INSERT INTO `dt_sales` VALUES ('148', '7', '36', 'OU/231/1', '2021-01-11', '1', '17500.00', 'Aktif', '1', '2021-01-13 15:30:44');
INSERT INTO `dt_sales` VALUES ('149', '7', '122', 'OU/232/1', '2021-01-11', '2', '22500.00', 'Aktif', '1', '2021-01-13 15:31:16');
INSERT INTO `dt_sales` VALUES ('150', '7', '45', 'OU/233/1', '2021-01-11', '2', '19500.00', 'Aktif', '1', '2021-01-13 15:32:01');
INSERT INTO `dt_sales` VALUES ('151', '7', '71', 'OU/234/1', '2021-01-11', '1', '12500.00', 'Aktif', '1', '2021-01-13 15:32:36');
INSERT INTO `dt_sales` VALUES ('152', '7', '44', 'OU/235/1', '2021-01-11', '10', '1500.00', 'Aktif', '1', '2021-01-13 15:33:06');
INSERT INTO `dt_sales` VALUES ('153', '7', '46', 'OU/236/1', '2021-01-11', '2', '2000.00', 'Aktif', '1', '2021-01-13 15:33:38');
INSERT INTO `dt_sales` VALUES ('154', '7', '90', 'OU/238/1', '2021-01-12', '1', '23500.00', 'Aktif', '1', '2021-01-13 15:39:41');
INSERT INTO `dt_sales` VALUES ('155', '7', '126', 'OU/239/1', '2021-01-12', '2', '23500.00', 'Aktif', '1', '2021-01-13 15:40:02');
INSERT INTO `dt_sales` VALUES ('156', '7', '107', 'OU/240/1', '2021-01-12', '6', '17500.00', 'Aktif', '1', '2021-01-13 15:41:30');
INSERT INTO `dt_sales` VALUES ('157', '7', '125', 'OU/241/1', '2021-01-12', '2', '17500.00', 'Aktif', '1', '2021-01-13 15:41:52');
INSERT INTO `dt_sales` VALUES ('158', '7', '136', 'OU/242/1', '2021-01-12', '1', '17500.00', 'Aktif', '1', '2021-01-13 15:42:11');
INSERT INTO `dt_sales` VALUES ('159', '7', '106', 'OU/243/1', '2021-01-12', '4', '23500.00', 'Aktif', '1', '2021-01-13 15:42:52');
INSERT INTO `dt_sales` VALUES ('160', '7', '109', 'OU/244/1', '2021-01-12', '1', '29000.00', 'Aktif', '1', '2021-01-13 15:43:42');
INSERT INTO `dt_sales` VALUES ('161', '7', '127', 'OU/245/1', '2021-01-12', '1', '29000.00', 'Aktif', '1', '2021-01-13 15:44:17');
INSERT INTO `dt_sales` VALUES ('162', '7', '129', 'OU/246/1', '2021-01-12', '1', '19500.00', 'Aktif', '1', '2021-01-13 15:44:55');
INSERT INTO `dt_sales` VALUES ('163', '7', '139', 'OU/247/1', '2021-01-12', '3', '24500.00', 'Aktif', '1', '2021-01-13 15:45:32');
INSERT INTO `dt_sales` VALUES ('164', '7', '140', 'OU/248/1', '2021-01-12', '3', '16000.00', 'Aktif', '1', '2021-01-13 15:46:43');
INSERT INTO `dt_sales` VALUES ('165', '7', '65', 'OU/249/1', '2021-01-12', '3', '2000.00', 'Aktif', '1', '2021-01-13 15:47:10');
INSERT INTO `dt_sales` VALUES ('166', '7', '69', 'OU/260/1', '2021-01-16', '120', '3000.00', 'Aktif', '1', '2021-01-17 16:19:36');
INSERT INTO `dt_sales` VALUES ('167', '7', '105', 'OU/261/1', '2021-01-16', '72', '3000.00', 'Aktif', '1', '2021-01-17 16:20:05');
INSERT INTO `dt_sales` VALUES ('168', '7', '94', 'OU/262/1', '2021-01-16', '100', '1500.00', 'Aktif', '1', '2021-01-17 16:20:37');
INSERT INTO `dt_sales` VALUES ('169', '7', '136', 'OU/266/1', '2021-01-17', '3', '17500.00', 'Aktif', '1', '2021-01-18 16:14:06');
INSERT INTO `dt_sales` VALUES ('170', '7', '137', 'OU/267/1', '2021-01-17', '3', '23500.00', 'Aktif', '1', '2021-01-18 16:14:31');
INSERT INTO `dt_sales` VALUES ('171', '7', '52', 'OU/268/1', '2021-01-17', '1', '17500.00', 'Aktif', '1', '2021-01-18 16:15:03');
INSERT INTO `dt_sales` VALUES ('172', '7', '127', 'OU/269/1', '2021-01-17', '1', '29000.00', 'Aktif', '1', '2021-01-18 16:17:30');
INSERT INTO `dt_sales` VALUES ('173', '7', '139', 'OU/270/1', '2021-01-17', '1', '24500.00', 'Aktif', '1', '2021-01-18 16:17:59');
INSERT INTO `dt_sales` VALUES ('174', '7', '63', 'OU/271/1', '2021-01-17', '1', '15000.00', 'Aktif', '1', '2021-01-18 16:18:35');
INSERT INTO `dt_sales` VALUES ('175', '7', '60', 'OU/272/1', '2021-01-17', '1', '20000.00', 'Aktif', '1', '2021-01-18 16:19:03');
INSERT INTO `dt_sales` VALUES ('176', '7', '108', 'OU/273/1', '2021-01-17', '1', '17500.00', 'Aktif', '1', '2021-01-18 16:19:32');
INSERT INTO `dt_sales` VALUES ('177', '7', '65', 'OU/274/1', '2021-01-17', '4', '2000.00', 'Aktif', '1', '2021-01-18 16:20:02');
INSERT INTO `dt_sales` VALUES ('178', '7', '161', 'OU/275/1', '2021-01-18', '1', '18000.00', 'Aktif', '1', '2021-01-18 16:34:13');
INSERT INTO `dt_sales` VALUES ('179', '7', '162', 'OU/285/1', '2021-01-17', '2', '45000.00', 'Aktif', '1', '2021-01-25 13:50:52');
INSERT INTO `dt_sales` VALUES ('180', '7', '171', 'OU/286/1', '2021-01-23', '1', '10000.00', 'Aktif', '1', '2021-01-25 13:51:42');
INSERT INTO `dt_sales` VALUES ('181', '7', '169', 'OU/287/1', '2021-01-23', '1', '65000.00', 'Aktif', '1', '2021-01-25 13:52:31');
INSERT INTO `dt_sales` VALUES ('182', '7', '170', 'OU/288/1', '2021-01-24', '1', '25000.00', 'Aktif', '1', '2021-01-25 13:53:09');
INSERT INTO `dt_sales` VALUES ('183', '7', '132', 'OU/289/1', '2021-01-23', '14', '17500.00', 'Aktif', '1', '2021-01-25 13:56:54');
INSERT INTO `dt_sales` VALUES ('184', '7', '142', 'OU/290/1', '2021-01-23', '10', '17500.00', 'Aktif', '1', '2021-01-25 13:57:27');
INSERT INTO `dt_sales` VALUES ('185', '7', '144', 'OU/291/1', '2021-01-23', '70', '17500.00', 'Aktif', '1', '2021-01-25 13:57:48');
INSERT INTO `dt_sales` VALUES ('186', '7', '145', 'OU/292/1', '2021-01-23', '50', '17500.00', 'Aktif', '1', '2021-01-25 13:58:11');
INSERT INTO `dt_sales` VALUES ('187', '7', '159', 'OU/293/1', '2021-01-23', '34', '17500.00', 'Aktif', '1', '2021-01-25 13:58:39');
INSERT INTO `dt_sales` VALUES ('188', '7', '130', 'OU/294/1', '2021-01-23', '4', '23000.00', 'Aktif', '1', '2021-01-25 14:01:05');
INSERT INTO `dt_sales` VALUES ('189', '7', '146', 'OU/295/1', '2021-01-23', '10', '23000.00', 'Aktif', '1', '2021-01-25 14:01:49');
INSERT INTO `dt_sales` VALUES ('190', '7', '4', 'OU/296/1', '2021-01-23', '5', '21500.00', 'Aktif', '1', '2021-01-25 14:02:37');
INSERT INTO `dt_sales` VALUES ('191', '7', '6', 'OU/297/1', '2021-01-23', '2', '29000.00', 'Aktif', '1', '2021-01-25 14:03:27');
INSERT INTO `dt_sales` VALUES ('192', '7', '148', 'OU/300/1', '2021-01-21', '6', '23500.00', 'Aktif', '1', '2021-01-25 14:59:03');
INSERT INTO `dt_sales` VALUES ('193', '7', '133', 'OU/301/1', '2021-01-21', '8', '17500.00', 'Aktif', '1', '2021-01-25 15:01:51');
INSERT INTO `dt_sales` VALUES ('194', '7', '86', 'OU/302/1', '2021-01-21', '5', '23500.00', 'Aktif', '1', '2021-01-25 15:02:23');
INSERT INTO `dt_sales` VALUES ('195', '7', '33', 'OU/303/1', '2021-01-21', '1', '29000.00', 'Aktif', '1', '2021-01-25 15:02:49');
INSERT INTO `dt_sales` VALUES ('196', '7', '147', 'OU/304/1', '2021-01-21', '1', '28500.00', 'Aktif', '1', '2021-01-25 15:03:14');
INSERT INTO `dt_sales` VALUES ('197', '7', '135', 'OU/305/1', '2021-01-21', '2', '17500.00', 'Aktif', '1', '2021-01-25 15:03:53');
INSERT INTO `dt_sales` VALUES ('198', '7', '88', 'OU/306/1', '2021-01-21', '1', '16000.00', 'Aktif', '1', '2021-01-25 15:04:25');
INSERT INTO `dt_sales` VALUES ('199', '7', '46', 'OU/307/1', '2021-01-21', '2', '2000.00', 'Aktif', '1', '2021-01-25 15:04:56');
INSERT INTO `dt_sales` VALUES ('200', '7', '126', 'OU/308/1', '2021-01-25', '3', '23500.00', 'Aktif', '1', '2021-01-25 15:53:02');
INSERT INTO `dt_sales` VALUES ('201', '7', '158', 'OU/309/1', '2021-01-25', '1', '23500.00', 'Aktif', '1', '2021-01-25 15:53:20');
INSERT INTO `dt_sales` VALUES ('202', '7', '136', 'OU/310/1', '2021-01-25', '3', '17500.00', 'Aktif', '1', '2021-01-25 15:55:59');
INSERT INTO `dt_sales` VALUES ('203', '7', '149', 'OU/311/1', '2021-01-25', '5', '17500.00', 'Aktif', '1', '2021-01-25 15:56:30');
INSERT INTO `dt_sales` VALUES ('204', '7', '137', 'OU/312/1', '2021-01-25', '5', '23500.00', 'Aktif', '1', '2021-01-25 15:57:35');
INSERT INTO `dt_sales` VALUES ('205', '7', '52', 'OU/313/1', '2021-01-25', '3', '17500.00', 'Aktif', '1', '2021-01-25 15:59:07');
INSERT INTO `dt_sales` VALUES ('206', '7', '127', 'OU/314/1', '2021-01-25', '1', '29000.00', 'Aktif', '1', '2021-01-25 15:59:29');
INSERT INTO `dt_sales` VALUES ('207', '7', '166', 'OU/315/1', '2021-01-25', '1', '29000.00', 'Aktif', '1', '2021-01-25 15:59:49');
INSERT INTO `dt_sales` VALUES ('208', '7', '57', 'OU/316/1', '2021-01-25', '1', '17500.00', 'Aktif', '1', '2021-01-25 16:00:15');
INSERT INTO `dt_sales` VALUES ('209', '7', '139', 'OU/317/1', '2021-01-25', '1', '24500.00', 'Aktif', '1', '2021-01-25 16:01:56');
INSERT INTO `dt_sales` VALUES ('210', '7', '63', 'OU/318/1', '2021-01-25', '1', '15000.00', 'Aktif', '1', '2021-01-25 16:02:29');
INSERT INTO `dt_sales` VALUES ('211', '7', '89', 'OU/319/1', '2021-01-25', '1', '12500.00', 'Aktif', '1', '2021-01-25 16:03:39');
INSERT INTO `dt_sales` VALUES ('212', '7', '108', 'OU/320/1', '2021-01-25', '2', '17500.00', 'Aktif', '1', '2021-01-25 16:04:06');
INSERT INTO `dt_sales` VALUES ('213', '7', '64', 'OU/321/1', '2021-01-25', '1', '1500.00', 'Aktif', '1', '2021-01-25 16:04:25');
INSERT INTO `dt_sales` VALUES ('214', '7', '65', 'OU/322/1', '2021-01-25', '6', '2000.00', 'Aktif', '1', '2021-01-25 16:04:48');
INSERT INTO `dt_sales` VALUES ('215', '7', '163', 'OU/323/1', '2021-01-25', '1', '40000.00', 'Aktif', '1', '2021-01-25 16:16:31');
INSERT INTO `dt_sales` VALUES ('216', '7', '159', 'OU/325/1', '2021-01-27', '16', '17500.00', 'Aktif', '1', '2021-01-27 15:17:02');
INSERT INTO `dt_sales` VALUES ('217', '7', '168', 'OU/326/1', '2021-01-27', '1', '45000.00', 'Aktif', '1', '2021-01-27 15:17:36');
INSERT INTO `dt_sales` VALUES ('218', '7', '167', 'OU/327/1', '2021-01-27', '2', '15000.00', 'Aktif', '1', '2021-01-27 15:18:25');
INSERT INTO `dt_sales` VALUES ('219', '7', '178', 'OU/328/1', '2021-01-27', '1', '13000.00', 'Aktif', '1', '2021-01-27 15:20:31');
INSERT INTO `dt_sales` VALUES ('220', '7', '173', 'OU/330/1', '2021-01-27', '1', '13000.00', 'Aktif', '1', '2021-01-27 15:36:27');

-- ----------------------------
-- Table structure for dt_stock
-- ----------------------------
DROP TABLE IF EXISTS `dt_stock`;
CREATE TABLE `dt_stock` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) DEFAULT NULL,
  `location_id` int(11) DEFAULT NULL,
  `referensi` varchar(255) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `qty_in` int(11) DEFAULT NULL,
  `qty_out` int(11) DEFAULT NULL,
  `amount` double(25,2) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `createBy` varchar(255) DEFAULT NULL,
  `createTime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=188 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of dt_stock
-- ----------------------------
INSERT INTO `dt_stock` VALUES ('1', '1', '2', 'Procurement', '2020-11-23', '20', '20', '16500.00', 'Close', '1', '2020-12-14 15:20:42');
INSERT INTO `dt_stock` VALUES ('2', '3', '2', 'Procurement', '2020-11-23', '10', '10', '22100.00', 'Close', '1', '2020-12-14 15:20:46');
INSERT INTO `dt_stock` VALUES ('3', '2', '2', 'Procurement', '2020-11-23', '10', '10', '22050.00', 'Close', '1', '2020-12-14 15:20:51');
INSERT INTO `dt_stock` VALUES ('4', '5', '2', 'Procurement', '2020-11-23', '10', '10', '20300.00', 'Close', '1', '2020-12-14 15:20:56');
INSERT INTO `dt_stock` VALUES ('5', '9', '2', 'Procurement', '2020-11-23', '5', '5', '27650.00', 'Close', '1', '2020-12-14 15:21:02');
INSERT INTO `dt_stock` VALUES ('6', '7', '2', 'Procurement', '2020-11-23', '5', '5', '27650.00', 'Close', '1', '2020-12-14 15:21:07');
INSERT INTO `dt_stock` VALUES ('7', '22', '2', 'Procurement', '2020-11-23', '5', '5', '21700.00', 'Close', '1', '2020-12-14 15:21:11');
INSERT INTO `dt_stock` VALUES ('8', '10', '2', 'Procurement', '2020-11-23', '5', '5', '16550.00', 'Close', '1', '2020-12-14 15:21:15');
INSERT INTO `dt_stock` VALUES ('9', '19', '2', 'Procurement', '2020-11-23', '50', '50', '1380.00', 'Close', '1', '2020-12-14 15:21:23');
INSERT INTO `dt_stock` VALUES ('10', '1', '4', 'Procurement', '2020-11-25', '20', '20', '16500.00', 'Close', '1', '2020-12-14 15:43:55');
INSERT INTO `dt_stock` VALUES ('11', '2', '4', 'Procurement', '2020-11-25', '20', '20', '22050.00', 'Close', '1', '2020-12-14 15:44:00');
INSERT INTO `dt_stock` VALUES ('12', '3', '4', 'Procurement', '2020-11-25', '20', '20', '22050.00', 'Close', '1', '2020-12-14 15:44:04');
INSERT INTO `dt_stock` VALUES ('13', '10', '4', 'Procurement', '2020-11-25', '20', '20', '16575.00', 'Close', '1', '2020-12-14 15:44:08');
INSERT INTO `dt_stock` VALUES ('14', '7', '4', 'Procurement', '2020-11-25', '10', '10', '27650.00', 'Close', '1', '2020-12-14 15:44:15');
INSERT INTO `dt_stock` VALUES ('15', '9', '4', 'Procurement', '2020-11-25', '10', '10', '27600.00', 'Close', '1', '2020-12-14 15:44:19');
INSERT INTO `dt_stock` VALUES ('16', '14', '4', 'Procurement', '2020-11-25', '10', '10', '19000.00', 'Close', '1', '2020-12-14 15:44:23');
INSERT INTO `dt_stock` VALUES ('17', '4', '4', 'Procurement', '2020-11-25', '10', '10', '16100.00', 'Close', '1', '2020-12-14 15:44:27');
INSERT INTO `dt_stock` VALUES ('18', '13', '4', 'Procurement', '2020-11-25', '10', '10', '21500.00', 'Close', '1', '2020-12-14 15:44:31');
INSERT INTO `dt_stock` VALUES ('19', '5', '4', 'Procurement', '2020-11-25', '10', '10', '20300.00', 'Close', '1', '2020-12-14 15:44:35');
INSERT INTO `dt_stock` VALUES ('20', '20', '4', 'Procurement', '2020-11-25', '100', '100', '1600.00', 'Close', '1', '2020-12-14 15:44:41');
INSERT INTO `dt_stock` VALUES ('21', '19', '4', 'Procurement', '2020-11-25', '100', '100', '1330.00', 'Close', '1', '2020-12-14 15:44:49');
INSERT INTO `dt_stock` VALUES ('22', '12', '4', 'Procurement', '2020-11-25', '6', '6', '23250.00', 'Close', '1', '2020-12-14 15:44:56');
INSERT INTO `dt_stock` VALUES ('23', '23', '4', 'Procurement', '2020-11-25', '6', '6', '18400.00', 'Close', '1', '2020-12-14 15:45:03');
INSERT INTO `dt_stock` VALUES ('24', '15', '4', 'Procurement', '2020-11-25', '6', '6', '12450.00', 'Close', '1', '2020-12-14 15:45:11');
INSERT INTO `dt_stock` VALUES ('25', '8', '4', 'Procurement', '2020-11-25', '6', '6', '27650.00', 'Close', '1', '2020-12-14 15:45:17');
INSERT INTO `dt_stock` VALUES ('26', '16', '4', 'Procurement', '2020-11-25', '6', '6', '14750.00', 'Close', '1', '2020-12-14 15:45:23');
INSERT INTO `dt_stock` VALUES ('27', '17', '4', 'Procurement', '2020-11-25', '6', '6', '14000.00', 'Close', '1', '2020-12-14 15:45:30');
INSERT INTO `dt_stock` VALUES ('28', '1', '1', 'Moving', '2020-11-25', '10', '10', '16500.00', 'Close', '1', '2020-12-15 14:45:30');
INSERT INTO `dt_stock` VALUES ('29', '2', '1', 'Moving', '2020-11-25', '10', '10', '22050.00', 'Close', '1', '2020-12-15 14:45:40');
INSERT INTO `dt_stock` VALUES ('30', '3', '4', 'Moving', '2020-11-25', '10', '10', '22050.00', 'Close', '1', '2020-12-15 14:45:50');
INSERT INTO `dt_stock` VALUES ('31', '4', '1', 'Moving', '2020-11-25', '5', '2', '16100.00', 'Open', '1', '2020-12-15 14:45:59');
INSERT INTO `dt_stock` VALUES ('32', '5', '1', 'Moving', '2020-11-25', '5', '1', '20300.00', 'Open', '1', '2020-12-15 14:46:07');
INSERT INTO `dt_stock` VALUES ('33', '7', '1', 'Moving', '2020-11-25', '5', '2', '27650.00', 'Open', '1', '2020-12-15 14:46:14');
INSERT INTO `dt_stock` VALUES ('34', '8', '1', 'Moving', '2020-11-25', '3', '2', '27650.00', 'Open', '1', '2020-12-15 14:46:20');
INSERT INTO `dt_stock` VALUES ('35', '9', '1', 'Moving', '2020-11-25', '5', '5', '27600.00', 'Close', '1', '2020-12-15 14:46:32');
INSERT INTO `dt_stock` VALUES ('36', '10', '1', 'Moving', '2020-11-25', '10', '10', '16575.00', 'Close', '1', '2020-12-15 14:46:40');
INSERT INTO `dt_stock` VALUES ('37', '12', '1', 'Moving', '2020-11-25', '3', '1', '23250.00', 'Open', '1', '2020-12-15 14:46:48');
INSERT INTO `dt_stock` VALUES ('38', '13', '1', 'Moving', '2020-11-25', '5', '5', '21500.00', 'Close', '1', '2020-12-15 14:46:55');
INSERT INTO `dt_stock` VALUES ('39', '14', '1', 'Moving', '2020-11-25', '5', '0', '19000.00', 'Open', '1', '2020-12-15 14:47:03');
INSERT INTO `dt_stock` VALUES ('40', '15', '1', 'Moving', '2020-11-25', '3', '2', '12450.00', 'Open', '1', '2020-12-15 14:47:10');
INSERT INTO `dt_stock` VALUES ('41', '16', '1', 'Moving', '2020-11-25', '3', '3', '14750.00', 'Close', '1', '2020-12-15 14:47:17');
INSERT INTO `dt_stock` VALUES ('42', '17', '1', 'Moving', '2020-11-25', '3', '3', '14000.00', 'Close', '1', '2020-12-15 14:47:24');
INSERT INTO `dt_stock` VALUES ('43', '17', '1', 'Moving', '2020-11-25', '3', '0', '14000.00', 'Open', '1', '2020-12-15 14:47:30');
INSERT INTO `dt_stock` VALUES ('44', '19', '1', 'Moving', '2020-11-25', '50', '24', '1330.00', 'Open', '1', '2020-12-15 14:47:36');
INSERT INTO `dt_stock` VALUES ('45', '23', '1', 'Moving', '2020-11-25', '3', '3', '18400.00', 'Close', '1', '2020-12-15 14:47:42');
INSERT INTO `dt_stock` VALUES ('46', '20', '1', 'Moving', '2020-11-25', '50', '9', '1600.00', 'Open', '1', '2020-12-15 14:47:52');
INSERT INTO `dt_stock` VALUES ('47', '3', '1', 'Moving', '2020-11-25', '10', '10', '22050.00', 'Close', '1', '2020-12-15 14:50:43');
INSERT INTO `dt_stock` VALUES ('48', '17', '4', 'Moving', '2020-11-25', '3', '3', '14000.00', 'Close', '1', '2020-12-15 14:53:35');
INSERT INTO `dt_stock` VALUES ('49', '1', '3', 'Moving', '2020-11-25', '10', '10', '16500.00', 'Close', '1', '2020-12-15 15:33:11');
INSERT INTO `dt_stock` VALUES ('50', '2', '3', 'Moving', '2020-11-25', '10', '10', '22050.00', 'Close', '1', '2020-12-15 15:33:18');
INSERT INTO `dt_stock` VALUES ('51', '3', '3', 'Moving', '2020-11-25', '10', '10', '22050.00', 'Close', '1', '2020-12-15 15:33:26');
INSERT INTO `dt_stock` VALUES ('52', '4', '3', 'Moving', '2020-11-25', '5', '5', '16100.00', 'Close', '1', '2020-12-15 15:33:33');
INSERT INTO `dt_stock` VALUES ('53', '5', '3', 'Moving', '2020-11-25', '5', '1', '20300.00', 'Open', '1', '2020-12-15 15:33:41');
INSERT INTO `dt_stock` VALUES ('54', '7', '3', 'Moving', '2020-11-25', '5', '5', '27650.00', 'Close', '1', '2020-12-15 15:33:48');
INSERT INTO `dt_stock` VALUES ('55', '8', '3', 'Moving', '2020-11-25', '3', '0', '27650.00', 'Open', '1', '2020-12-15 15:33:54');
INSERT INTO `dt_stock` VALUES ('56', '9', '3', 'Moving', '2020-11-25', '5', '3', '27600.00', 'Open', '1', '2020-12-15 15:34:02');
INSERT INTO `dt_stock` VALUES ('57', '10', '3', 'Moving', '2020-11-25', '10', '4', '16575.00', 'Open', '1', '2020-12-15 15:34:08');
INSERT INTO `dt_stock` VALUES ('58', '12', '3', 'Moving', '2020-11-25', '3', '3', '23250.00', 'Close', '1', '2020-12-15 15:34:15');
INSERT INTO `dt_stock` VALUES ('59', '13', '3', 'Moving', '2020-11-25', '5', '5', '21500.00', 'Close', '1', '2020-12-15 15:34:21');
INSERT INTO `dt_stock` VALUES ('60', '14', '3', 'Moving', '2020-11-25', '5', '2', '19000.00', 'Open', '1', '2020-12-15 15:34:27');
INSERT INTO `dt_stock` VALUES ('61', '15', '3', 'Moving', '2020-11-25', '3', '2', '12450.00', 'Open', '1', '2020-12-15 15:34:36');
INSERT INTO `dt_stock` VALUES ('62', '16', '3', 'Moving', '2020-11-25', '3', '3', '14750.00', 'Close', '1', '2020-12-15 15:34:41');
INSERT INTO `dt_stock` VALUES ('63', '17', '3', 'Moving', '2020-11-25', '3', '3', '14000.00', 'Close', '1', '2020-12-15 15:34:47');
INSERT INTO `dt_stock` VALUES ('64', '19', '3', 'Moving', '2020-11-25', '50', '9', '1330.00', 'Open', '1', '2020-12-15 15:34:55');
INSERT INTO `dt_stock` VALUES ('65', '20', '3', 'Moving', '2020-11-25', '50', '21', '1600.00', 'Open', '1', '2020-12-15 15:35:00');
INSERT INTO `dt_stock` VALUES ('66', '23', '3', 'Moving', '2020-11-25', '3', '3', '18400.00', 'Close', '1', '2020-12-15 15:35:06');
INSERT INTO `dt_stock` VALUES ('67', '1', '2', 'Procurement', '2020-11-29', '100', '100', '16400.00', 'Close', '1', '2020-12-15 15:47:31');
INSERT INTO `dt_stock` VALUES ('68', '19', '2', 'Procurement', '2020-11-29', '150', '150', '1320.00', 'Close', '1', '2020-12-15 15:47:36');
INSERT INTO `dt_stock` VALUES ('69', '18', '2', 'Procurement', '2020-12-01', '120', '120', '2125.00', 'Close', '1', '2020-12-15 15:51:27');
INSERT INTO `dt_stock` VALUES ('70', '1', '1', 'Procurement', '2020-12-03', '10', '10', '16500.00', 'Close', '1', '2020-12-15 15:56:09');
INSERT INTO `dt_stock` VALUES ('71', '24', '1', 'Procurement', '2020-12-03', '6', '5', '11625.00', 'Open', '1', '2020-12-15 15:56:17');
INSERT INTO `dt_stock` VALUES ('72', '24', '3', 'Moving', '2020-12-03', '3', '3', '11625.00', 'Close', '1', '2020-12-15 15:57:18');
INSERT INTO `dt_stock` VALUES ('73', '2', '1', 'Moving', '2020-11-25', '8', '8', '22050.00', 'Close', '1', '2020-12-15 16:02:02');
INSERT INTO `dt_stock` VALUES ('74', '1', '2', 'Procurement', '2020-12-06', '120', '120', '16500.00', 'Close', '1', '2020-12-15 16:13:08');
INSERT INTO `dt_stock` VALUES ('75', '2', '2', 'Procurement', '2020-12-06', '20', '20', '22050.00', 'Close', '1', '2020-12-15 16:13:18');
INSERT INTO `dt_stock` VALUES ('76', '3', '2', 'Procurement', '2020-12-06', '10', '10', '22025.00', 'Close', '1', '2020-12-15 16:13:25');
INSERT INTO `dt_stock` VALUES ('77', '1', '1', 'Moving', '2020-12-06', '10', '10', '16500.00', 'Close', '1', '2020-12-15 16:23:17');
INSERT INTO `dt_stock` VALUES ('78', '2', '1', 'Moving', '2020-12-06', '10', '10', '22050.00', 'Close', '1', '2020-12-15 16:23:22');
INSERT INTO `dt_stock` VALUES ('79', '1', '3', 'Moving', '2020-12-06', '10', '10', '16500.00', 'Close', '1', '2020-12-15 16:24:42');
INSERT INTO `dt_stock` VALUES ('80', '3', '3', 'Moving', '2020-12-06', '10', '10', '22025.00', 'Close', '1', '2020-12-15 16:27:04');
INSERT INTO `dt_stock` VALUES ('81', '1', '4', 'Procurement', '2020-12-13', '20', '20', '16425.00', 'Close', '1', '2020-12-15 16:33:41');
INSERT INTO `dt_stock` VALUES ('82', '3', '4', 'Procurement', '2020-12-13', '10', '10', '22000.00', 'Close', '1', '2020-12-15 16:33:49');
INSERT INTO `dt_stock` VALUES ('83', '15', '4', 'Procurement', '2020-12-13', '3', '3', '12400.00', 'Close', '1', '2020-12-15 16:33:56');
INSERT INTO `dt_stock` VALUES ('84', '24', '4', 'Procurement', '2020-12-13', '5', '5', '11400.00', 'Close', '1', '2020-12-15 16:34:03');
INSERT INTO `dt_stock` VALUES ('85', '16', '4', 'Procurement', '2020-12-13', '5', '5', '14725.00', 'Close', '1', '2020-12-15 16:34:10');
INSERT INTO `dt_stock` VALUES ('86', '3', '1', 'Moving', '2020-12-13', '10', '9', '22000.00', 'Open', '1', '2020-12-15 16:36:24');
INSERT INTO `dt_stock` VALUES ('87', '15', '1', 'Moving', '2020-12-13', '3', '0', '12400.00', 'Open', '1', '2020-12-15 16:36:30');
INSERT INTO `dt_stock` VALUES ('88', '16', '1', 'Moving', '2020-12-13', '5', '2', '14725.00', 'Open', '1', '2020-12-15 16:36:35');
INSERT INTO `dt_stock` VALUES ('89', '24', '3', 'Moving', '2020-12-13', '5', '5', '11400.00', 'Close', '1', '2020-12-15 16:37:13');
INSERT INTO `dt_stock` VALUES ('90', '2', '3', 'Procurement', '2020-12-04', '10', '10', '22025.00', 'Close', '1', '2020-12-15 17:46:39');
INSERT INTO `dt_stock` VALUES ('91', '1', '3', 'Moving', '2020-12-03', '10', '10', '16500.00', 'Close', '1', '2020-12-15 17:56:08');
INSERT INTO `dt_stock` VALUES ('92', '1', '2', 'Procurement', '2020-12-19', '150', '150', '16425.00', 'Close', '1', '2020-12-19 13:42:50');
INSERT INTO `dt_stock` VALUES ('93', '2', '2', 'Procurement', '2020-12-19', '10', '10', '22025.00', 'Close', '1', '2020-12-19 13:45:45');
INSERT INTO `dt_stock` VALUES ('94', '19', '2', 'Procurement', '2020-12-19', '100', '100', '1318.00', 'Close', '1', '2020-12-19 13:46:06');
INSERT INTO `dt_stock` VALUES ('95', '7', '4', 'Procurement', '2020-12-19', '3', '3', '27575.00', 'Close', '1', '2020-12-19 13:46:16');
INSERT INTO `dt_stock` VALUES ('96', '25', '4', 'Procurement', '2020-12-19', '5', '5', '15800.00', 'Close', '1', '2020-12-19 13:46:23');
INSERT INTO `dt_stock` VALUES ('97', '3', '4', 'Procurement', '2020-12-19', '10', '10', '22000.00', 'Close', '1', '2020-12-19 13:46:28');
INSERT INTO `dt_stock` VALUES ('98', '26', '4', 'Procurement', '2020-12-02', '2', '2', '87000.00', 'Close', '1', '2020-12-19 17:09:57');
INSERT INTO `dt_stock` VALUES ('99', '27', '4', 'Procurement', '2020-12-02', '1', '1', '75000.00', 'Close', '1', '2020-12-19 17:10:04');
INSERT INTO `dt_stock` VALUES ('100', '26', '4', 'Procurement', '2020-12-05', '1', '1', '85000.00', 'Close', '1', '2020-12-19 17:10:11');
INSERT INTO `dt_stock` VALUES ('101', '28', '4', 'Procurement', '2020-12-11', '1', '1', '14000.00', 'Close', '1', '2020-12-19 17:10:17');
INSERT INTO `dt_stock` VALUES ('102', '29', '4', 'Procurement', '2020-12-11', '1', '1', '6500.00', 'Close', '1', '2020-12-19 17:10:23');
INSERT INTO `dt_stock` VALUES ('103', '30', '4', 'Procurement', '2020-12-12', '1', '1', '109000.00', 'Close', '1', '2020-12-19 17:10:28');
INSERT INTO `dt_stock` VALUES ('104', '26', '4', 'Procurement', '2020-12-15', '1', '0', '70000.00', 'Open', '1', '2020-12-19 17:10:34');
INSERT INTO `dt_stock` VALUES ('105', '18', '2', 'Procurement', '2020-12-19', '72', '72', '2125.00', 'Close', '1', '2020-12-19 17:22:35');
INSERT INTO `dt_stock` VALUES ('106', '3', '3', 'Moving', '2020-12-19', '10', '10', '22000.00', 'Close', '1', '2020-12-21 14:13:26');
INSERT INTO `dt_stock` VALUES ('107', '1', '3', 'Moving', '2020-12-13', '10', '10', '16425.00', 'Close', '1', '2020-12-21 14:13:50');
INSERT INTO `dt_stock` VALUES ('108', '25', '3', 'Moving', '2020-12-19', '5', '3', '15800.00', 'Open', '1', '2020-12-21 14:14:19');
INSERT INTO `dt_stock` VALUES ('109', '7', '3', 'Moving', '2020-12-19', '3', '3', '27575.00', 'Close', '1', '2020-12-21 14:14:47');
INSERT INTO `dt_stock` VALUES ('110', '9', '4', 'Procurement', '2020-12-23', '3', '3', '27550.00', 'Close', '1', '2020-12-23 14:41:34');
INSERT INTO `dt_stock` VALUES ('111', '12', '4', 'Procurement', '2020-12-23', '4', '4', '23625.00', 'Close', '1', '2020-12-23 14:41:39');
INSERT INTO `dt_stock` VALUES ('112', '2', '4', 'Procurement', '2020-12-23', '10', '10', '22025.00', 'Close', '1', '2020-12-23 14:41:44');
INSERT INTO `dt_stock` VALUES ('113', '1', '4', 'Procurement', '2020-12-23', '10', '10', '16425.00', 'Close', '1', '2020-12-23 14:41:51');
INSERT INTO `dt_stock` VALUES ('114', '13', '4', 'Procurement', '2020-12-23', '3', '3', '21425.00', 'Close', '1', '2020-12-23 14:41:58');
INSERT INTO `dt_stock` VALUES ('115', '23', '4', 'Procurement', '2020-12-23', '4', '4', '18375.00', 'Close', '1', '2020-12-23 14:42:03');
INSERT INTO `dt_stock` VALUES ('116', '2', '4', 'Procurement', '2020-12-23', '5', '5', '22025.00', 'Close', '1', '2020-12-23 14:42:09');
INSERT INTO `dt_stock` VALUES ('117', '7', '4', 'Procurement', '2020-12-23', '3', '3', '27575.00', 'Close', '1', '2020-12-23 14:42:15');
INSERT INTO `dt_stock` VALUES ('118', '1', '1', 'Moving', '2020-12-13', '5', '5', '16425.00', 'Close', '1', '2020-12-24 12:26:12');
INSERT INTO `dt_stock` VALUES ('119', '1', '1', 'Moving', '2020-12-23', '10', '10', '16425.00', 'Close', '1', '2020-12-24 12:26:17');
INSERT INTO `dt_stock` VALUES ('120', '2', '1', 'Moving', '2020-12-23', '10', '10', '22025.00', 'Close', '1', '2020-12-24 12:26:21');
INSERT INTO `dt_stock` VALUES ('121', '9', '1', 'Moving', '2020-12-23', '3', '3', '27550.00', 'Close', '1', '2020-12-24 12:26:27');
INSERT INTO `dt_stock` VALUES ('122', '13', '1', 'Moving', '2020-12-23', '3', '2', '21425.00', 'Open', '1', '2020-12-24 12:26:32');
INSERT INTO `dt_stock` VALUES ('123', '23', '1', 'Moving', '2020-12-23', '1', '0', '18375.00', 'Open', '1', '2020-12-24 12:26:37');
INSERT INTO `dt_stock` VALUES ('124', '12', '1', 'Moving', '2020-12-23', '1', '0', '23625.00', 'Open', '1', '2020-12-24 12:26:48');
INSERT INTO `dt_stock` VALUES ('125', '1', '3', 'Moving', '2020-12-13', '2', '2', '16425.00', 'Close', '1', '2020-12-24 12:29:22');
INSERT INTO `dt_stock` VALUES ('126', '2', '3', 'Moving', '2020-12-23', '5', '5', '22025.00', 'Close', '1', '2020-12-24 12:29:27');
INSERT INTO `dt_stock` VALUES ('127', '7', '3', 'Moving', '2020-12-23', '3', '3', '27575.00', 'Close', '1', '2020-12-24 12:29:33');
INSERT INTO `dt_stock` VALUES ('128', '12', '3', 'Moving', '2020-12-23', '3', '3', '23625.00', 'Close', '1', '2020-12-24 12:29:39');
INSERT INTO `dt_stock` VALUES ('129', '23', '3', 'Moving', '2020-12-23', '3', '1', '18375.00', 'Open', '1', '2020-12-24 12:29:46');
INSERT INTO `dt_stock` VALUES ('130', '2', '2', 'Procurement', '2020-12-29', '10', '10', '22025.00', 'Close', '1', '2020-12-29 15:50:04');
INSERT INTO `dt_stock` VALUES ('131', '1', '2', 'Procurement', '2020-12-29', '50', '50', '16425.00', 'Close', '1', '2020-12-29 15:51:49');
INSERT INTO `dt_stock` VALUES ('132', '1', '2', 'Procurement', '2020-12-29', '50', '50', '16500.00', 'Close', '1', '2020-12-29 15:51:55');
INSERT INTO `dt_stock` VALUES ('133', '1', '1', 'Procurement', '2021-01-03', '20', '18', '16425.00', 'Open', '1', '2021-01-07 14:03:18');
INSERT INTO `dt_stock` VALUES ('134', '8', '1', 'Procurement', '2021-01-03', '3', '0', '27575.00', 'Open', '1', '2021-01-07 14:03:25');
INSERT INTO `dt_stock` VALUES ('135', '10', '1', 'Procurement', '2021-01-03', '4', '2', '16550.00', 'Open', '1', '2021-01-07 14:03:30');
INSERT INTO `dt_stock` VALUES ('136', '1', '3', 'Procurement', '2021-01-03', '7', '7', '16450.00', 'Close', '1', '2021-01-07 14:03:38');
INSERT INTO `dt_stock` VALUES ('137', '3', '3', 'Procurement', '2021-01-03', '10', '8', '22000.00', 'Open', '1', '2021-01-07 14:03:43');
INSERT INTO `dt_stock` VALUES ('138', '24', '3', 'Procurement', '2021-01-03', '5', '0', '11400.00', 'Open', '1', '2021-01-07 14:03:49');
INSERT INTO `dt_stock` VALUES ('139', '12', '3', 'Procurement', '2021-01-03', '5', '5', '23625.00', 'Close', '1', '2021-01-07 14:03:54');
INSERT INTO `dt_stock` VALUES ('140', '16', '3', 'Procurement', '2021-01-03', '5', '3', '14725.00', 'Open', '1', '2021-01-07 14:03:59');
INSERT INTO `dt_stock` VALUES ('141', '15', '3', 'Procurement', '2021-01-03', '3', '0', '12600.00', 'Open', '1', '2021-01-07 14:04:07');
INSERT INTO `dt_stock` VALUES ('142', '1', '2', 'Procurement', '2021-01-03', '10', '10', '16425.00', 'Close', '1', '2021-01-07 14:04:15');
INSERT INTO `dt_stock` VALUES ('143', '7', '4', 'Procurement', '2021-01-03', '5', '5', '27575.00', 'Close', '1', '2021-01-07 14:04:20');
INSERT INTO `dt_stock` VALUES ('144', '1', '2', 'Procurement', '2021-01-08', '70', '70', '16500.00', 'Close', '1', '2021-01-13 15:07:32');
INSERT INTO `dt_stock` VALUES ('145', '1', '2', 'Procurement', '2021-01-08', '50', '50', '16425.00', 'Close', '1', '2021-01-13 15:07:38');
INSERT INTO `dt_stock` VALUES ('146', '2', '2', 'Procurement', '2021-01-08', '10', '10', '22025.00', 'Close', '1', '2021-01-13 15:07:45');
INSERT INTO `dt_stock` VALUES ('147', '9', '1', 'Procurement', '2021-01-08', '5', '1', '27550.00', 'Open', '1', '2021-01-13 15:07:50');
INSERT INTO `dt_stock` VALUES ('148', '2', '1', 'Procurement', '2021-01-08', '10', '6', '22025.00', 'Open', '1', '2021-01-13 15:07:56');
INSERT INTO `dt_stock` VALUES ('149', '1', '3', 'Procurement', '2021-01-08', '10', '5', '16450.00', 'Open', '1', '2021-01-13 15:08:01');
INSERT INTO `dt_stock` VALUES ('150', '12', '3', 'Procurement', '2021-01-08', '10', '0', '23625.00', 'Open', '1', '2021-01-13 15:08:07');
INSERT INTO `dt_stock` VALUES ('151', '23', '1', 'Procurement', '2021-01-16', '3', '0', '18375.00', 'Open', '1', '2021-01-17 16:15:51');
INSERT INTO `dt_stock` VALUES ('152', '13', '1', 'Procurement', '2021-01-16', '4', '0', '21425.00', 'Open', '1', '2021-01-17 16:15:58');
INSERT INTO `dt_stock` VALUES ('153', '24', '1', 'Procurement', '2021-01-16', '4', '0', '11400.00', 'Open', '1', '2021-01-17 16:16:04');
INSERT INTO `dt_stock` VALUES ('154', '16', '3', 'Procurement', '2021-01-16', '1', '0', '14725.00', 'Open', '1', '2021-01-17 16:16:10');
INSERT INTO `dt_stock` VALUES ('155', '2', '1', 'Procurement', '2021-01-16', '10', '0', '22025.00', 'Open', '1', '2021-01-17 16:16:16');
INSERT INTO `dt_stock` VALUES ('156', '16', '1', 'Procurement', '2021-01-16', '5', '0', '14725.00', 'Open', '1', '2021-01-17 16:16:22');
INSERT INTO `dt_stock` VALUES ('157', '24', '3', 'Procurement', '2021-01-16', '4', '0', '11400.00', 'Open', '1', '2021-01-17 16:16:28');
INSERT INTO `dt_stock` VALUES ('158', '2', '3', 'Procurement', '2021-01-16', '10', '1', '22025.00', 'Open', '1', '2021-01-17 16:16:34');
INSERT INTO `dt_stock` VALUES ('159', '1', '2', 'Procurement', '2021-01-16', '50', '50', '16475.00', 'Close', '1', '2021-01-17 16:16:40');
INSERT INTO `dt_stock` VALUES ('160', '2', '2', 'Procurement', '2021-01-16', '20', '0', '22025.00', 'Open', '1', '2021-01-17 16:16:45');
INSERT INTO `dt_stock` VALUES ('161', '31', '4', 'Procurement', '2021-01-17', '3', '1', '10000.00', 'Open', '1', '2021-01-17 16:35:34');
INSERT INTO `dt_stock` VALUES ('162', '32', '4', 'Procurement', '2021-01-17', '2', '2', '35000.00', 'Close', '1', '2021-01-17 16:35:41');
INSERT INTO `dt_stock` VALUES ('163', '33', '4', 'Procurement', '2021-01-17', '1', '1', '30000.00', 'Close', '1', '2021-01-17 16:35:46');
INSERT INTO `dt_stock` VALUES ('164', '3', '4', 'Procurement', '2021-01-18', '10', '10', '23000.00', 'Close', '1', '2021-01-18 16:37:37');
INSERT INTO `dt_stock` VALUES ('165', '3', '3', 'Moving', '2021-01-21', '4', '0', '23000.00', 'Open', '1', '2021-01-21 05:11:12');
INSERT INTO `dt_stock` VALUES ('166', '7', '3', 'Moving', '2021-01-21', '5', '1', '27575.00', 'Open', '1', '2021-01-21 05:11:17');
INSERT INTO `dt_stock` VALUES ('167', '34', '4', 'Procurement', '2021-01-20', '2', '2', '9500.00', 'Close', '1', '2021-01-21 06:26:43');
INSERT INTO `dt_stock` VALUES ('168', '35', '4', 'Procurement', '2021-01-20', '1', '1', '30000.00', 'Close', '1', '2021-01-21 06:26:53');
INSERT INTO `dt_stock` VALUES ('169', '36', '4', 'Procurement', '2021-01-23', '1', '1', '57000.00', 'Close', '1', '2021-01-25 13:48:26');
INSERT INTO `dt_stock` VALUES ('170', '37', '4', 'Procurement', '2021-01-23', '1', '1', '20000.00', 'Close', '1', '2021-01-25 13:48:31');
INSERT INTO `dt_stock` VALUES ('171', '38', '4', 'Procurement', '2021-01-23', '1', '1', '6500.00', 'Close', '1', '2021-01-25 13:48:35');
INSERT INTO `dt_stock` VALUES ('172', '39', '4', 'Procurement', '2021-01-23', '1', '0', '17000.00', 'Open', '1', '2021-01-25 13:49:46');
INSERT INTO `dt_stock` VALUES ('173', '40', '4', 'Procurement', '2021-01-25', '2', '1', '10000.00', 'Open', '1', '2021-01-25 13:49:51');
INSERT INTO `dt_stock` VALUES ('174', '31', '4', 'Procurement', '2021-01-25', '1', '0', '10000.00', 'Open', '1', '2021-01-25 13:49:56');
INSERT INTO `dt_stock` VALUES ('175', '1', '2', 'Procurement', '2021-01-25', '150', '0', '16475.00', 'Open', '1', '2021-01-25 14:54:37');
INSERT INTO `dt_stock` VALUES ('176', '1', '1', 'Procurement', '2021-01-25', '10', '0', '16475.00', 'Open', '1', '2021-01-25 14:54:44');
INSERT INTO `dt_stock` VALUES ('177', '3', '1', 'Moving', '2021-01-25', '6', '0', '23000.00', 'Open', '1', '2021-01-25 15:44:44');
INSERT INTO `dt_stock` VALUES ('178', '41', '4', 'Procurement', '2021-01-27', '1', '1', '13000.00', 'Close', '1', '2021-01-27 15:20:05');
INSERT INTO `dt_stock` VALUES ('179', '42', '4', 'Procurement', '2021-01-27', '2', '0', '17000.00', 'Open', '1', '2021-01-27 15:23:12');
INSERT INTO `dt_stock` VALUES ('180', '2', '2', 'Procurement', '2021-01-29', '20', '0', '22025.00', 'Open', '1', '2021-01-29 14:25:28');
INSERT INTO `dt_stock` VALUES ('181', '1', '3', 'Procurement', '2021-01-29', '10', '0', '16475.00', 'Open', '1', '2021-01-29 14:25:38');
INSERT INTO `dt_stock` VALUES ('182', '3', '3', 'Procurement', '2021-01-29', '4', '0', '22925.00', 'Open', '1', '2021-01-29 14:25:45');
INSERT INTO `dt_stock` VALUES ('183', '25', '3', 'Procurement', '2021-01-29', '3', '0', '15800.00', 'Open', '1', '2021-01-29 14:25:53');
INSERT INTO `dt_stock` VALUES ('184', '43', '3', 'Procurement', '2021-01-29', '3', '0', '10975.00', 'Open', '1', '2021-01-29 14:25:59');
INSERT INTO `dt_stock` VALUES ('185', '22', '3', 'Procurement', '2021-01-29', '3', '0', '21700.00', 'Open', '1', '2021-01-29 14:26:07');
INSERT INTO `dt_stock` VALUES ('186', '10', '1', 'Procurement', '2021-01-29', '5', '0', '16550.00', 'Open', '1', '2021-01-29 14:26:14');
INSERT INTO `dt_stock` VALUES ('187', '22', '1', 'Procurement', '2021-01-29', '3', '0', '21700.00', 'Open', '1', '2021-01-29 14:26:20');

-- ----------------------------
-- Table structure for mst_account
-- ----------------------------
DROP TABLE IF EXISTS `mst_account`;
CREATE TABLE `mst_account` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category_code` int(3) DEFAULT NULL,
  `account_code` int(5) DEFAULT NULL,
  `account_name` varchar(50) DEFAULT NULL,
  `createTime` datetime DEFAULT NULL,
  `createBy` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of mst_account
-- ----------------------------
INSERT INTO `mst_account` VALUES ('1', '101', '10101', 'Kas', '2020-12-02 13:26:39', '1');
INSERT INTO `mst_account` VALUES ('2', '101', '10102', 'Bank', '2020-12-02 13:26:48', '1');
INSERT INTO `mst_account` VALUES ('3', '102', '10201', 'Persediaan - Rokok', '2020-12-02 13:27:11', '1');
INSERT INTO `mst_account` VALUES ('4', '201', '20101', 'Hutang Bank', '2020-12-02 13:27:50', '1');
INSERT INTO `mst_account` VALUES ('5', '201', '20102', 'Hutang Perorangan', '2020-12-02 13:28:14', '1');
INSERT INTO `mst_account` VALUES ('6', '301', '30101', 'Modal Usaha', '2020-12-02 13:28:27', '1');
INSERT INTO `mst_account` VALUES ('7', '301', '30102', 'Saldo Laba Rugi', '2020-12-02 13:28:41', '1');
INSERT INTO `mst_account` VALUES ('8', '401', '40101', 'Pendapatan - Rokok', '2020-12-02 13:48:14', '1');
INSERT INTO `mst_account` VALUES ('9', '401', '40102', 'Pendapatan - Makanan', '2020-12-02 13:48:59', '1');
INSERT INTO `mst_account` VALUES ('10', '401', '40103', 'Pendapatan - Minuman', '2020-12-02 13:49:17', '1');
INSERT INTO `mst_account` VALUES ('11', '501', '50101', 'HPP - Rokok', '2020-12-02 13:49:33', '1');
INSERT INTO `mst_account` VALUES ('12', '501', '50102', 'HPP - Minuman', '2020-12-02 13:49:50', '1');
INSERT INTO `mst_account` VALUES ('13', '501', '50103', 'HPP - Makanan', '2020-12-02 13:50:02', '1');
INSERT INTO `mst_account` VALUES ('14', '601', '60101', 'Biaya Transport', '2020-12-02 13:50:25', '1');
INSERT INTO `mst_account` VALUES ('15', '601', '60102', 'Biaya Upah Tenaga Kerja', '2020-12-02 13:50:48', '1');
INSERT INTO `mst_account` VALUES ('16', '601', '60103', 'Biaya Lain - Lain', '2020-12-02 13:51:13', '1');
INSERT INTO `mst_account` VALUES ('17', '602', '60201', 'Beban Pajak', '2020-12-02 13:51:54', '1');
INSERT INTO `mst_account` VALUES ('19', '103', '10301', 'Inventaris - Etalase', '2020-12-02 13:53:11', '1');
INSERT INTO `mst_account` VALUES ('20', '104', '10401', 'Piutang  Usaha', '2020-12-02 13:55:51', '1');
INSERT INTO `mst_account` VALUES ('21', '102', '10202', 'Persediaan - Minuman', '2020-12-02 15:44:39', '1');
INSERT INTO `mst_account` VALUES ('22', '102', '10203', 'Persediaan - Makanan', '2020-12-02 15:44:53', '1');
INSERT INTO `mst_account` VALUES ('24', '102', '10204', 'Persediaan - Item', '2020-12-02 15:47:38', '1');
INSERT INTO `mst_account` VALUES ('25', '402', '40201', 'Pendapatan - Lain Lain', '2020-12-04 02:55:25', '1');
INSERT INTO `mst_account` VALUES ('26', '401', '40104', 'Pendapatan - Item', '2020-12-04 02:56:06', '1');
INSERT INTO `mst_account` VALUES ('27', '501', '50104', 'HPP - Item', '2020-12-04 03:24:07', '1');
INSERT INTO `mst_account` VALUES ('28', '102', '10205', 'Persediaan - Olshop', '2020-12-14 14:51:12', '1');
INSERT INTO `mst_account` VALUES ('29', '401', '40105', 'Pendapatan - Olshop', '2020-12-14 14:51:29', '1');
INSERT INTO `mst_account` VALUES ('30', '501', '50105', 'HPP - Olshop', '2020-12-14 14:51:42', '1');

-- ----------------------------
-- Table structure for mst_category
-- ----------------------------
DROP TABLE IF EXISTS `mst_category`;
CREATE TABLE `mst_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type_code` int(1) DEFAULT NULL,
  `category_code` int(3) DEFAULT NULL,
  `category_name` varchar(255) DEFAULT NULL,
  `createBy` varchar(10) DEFAULT NULL,
  `createTime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of mst_category
-- ----------------------------
INSERT INTO `mst_category` VALUES ('1', '1', '101', 'Kas / Bank', '1', '2020-12-02 13:22:24');
INSERT INTO `mst_category` VALUES ('2', '1', '102', 'Persediaan', '1', '2020-12-02 13:22:52');
INSERT INTO `mst_category` VALUES ('3', '2', '201', 'Hutang Usaha', '1', '2020-12-02 13:23:11');
INSERT INTO `mst_category` VALUES ('4', '3', '301', 'Modal / Equitas', '1', '2020-12-02 13:23:21');
INSERT INTO `mst_category` VALUES ('5', '4', '401', 'Pendapatan Usaha', '1', '2020-12-02 13:24:07');
INSERT INTO `mst_category` VALUES ('6', '4', '402', 'Pendapatan Lain - Lain', '1', '2020-12-02 13:24:43');
INSERT INTO `mst_category` VALUES ('7', '5', '501', 'Harga Pokok Penjualan (HPP)', '1', '2020-12-02 13:25:25');
INSERT INTO `mst_category` VALUES ('8', '6', '601', 'Biaya Operasional', '1', '2020-12-02 13:25:48');
INSERT INTO `mst_category` VALUES ('9', '6', '602', 'Beban Pajak', '1', '2020-12-02 13:26:05');
INSERT INTO `mst_category` VALUES ('10', '1', '103', 'Inventaris', '1', '2020-12-02 13:52:38');
INSERT INTO `mst_category` VALUES ('11', '1', '104', 'Piutang', '1', '2020-12-02 13:55:31');

-- ----------------------------
-- Table structure for mst_category_product
-- ----------------------------
DROP TABLE IF EXISTS `mst_category_product`;
CREATE TABLE `mst_category_product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category_name` varchar(255) DEFAULT NULL,
  `createBy` varchar(255) DEFAULT NULL,
  `createTime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of mst_category_product
-- ----------------------------
INSERT INTO `mst_category_product` VALUES ('1', 'Rokok', '1', '2020-11-30 08:50:47');
INSERT INTO `mst_category_product` VALUES ('2', 'Minuman', '1', '2020-11-30 08:50:47');
INSERT INTO `mst_category_product` VALUES ('3', 'Snack', '1', '2020-11-30 08:50:47');
INSERT INTO `mst_category_product` VALUES ('4', 'Item', '1', '2020-12-02 20:04:20');
INSERT INTO `mst_category_product` VALUES ('5', 'Olshop', '1', '2020-12-02 20:04:20');

-- ----------------------------
-- Table structure for mst_location
-- ----------------------------
DROP TABLE IF EXISTS `mst_location`;
CREATE TABLE `mst_location` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `unit_name` varchar(255) DEFAULT NULL,
  `location_name` varchar(255) DEFAULT NULL,
  `city_name` varchar(255) DEFAULT NULL,
  `createBy` varchar(255) DEFAULT NULL,
  `createTime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of mst_location
-- ----------------------------
INSERT INTO `mst_location` VALUES ('1', 'Toko Idris', 'Ujung Piring', 'Bangkalan', '1', '2020-12-02 20:06:18');
INSERT INTO `mst_location` VALUES ('2', 'Toko Umi', 'Telang', 'Bangkalan', '1', '2020-12-02 20:06:18');
INSERT INTO `mst_location` VALUES ('3', 'Toko Nabila', 'Bangkalan', 'Bangkalan', '1', '2020-12-02 20:06:18');
INSERT INTO `mst_location` VALUES ('4', 'Toko Zafran', 'Bangkalan', 'Bangkalan', '1', '2020-12-14 21:22:47');

-- ----------------------------
-- Table structure for mst_product
-- ----------------------------
DROP TABLE IF EXISTS `mst_product`;
CREATE TABLE `mst_product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category_id` varchar(255) DEFAULT NULL,
  `account_stock` varchar(255) DEFAULT NULL,
  `account_received` varchar(255) DEFAULT NULL,
  `account_cogs` varchar(255) DEFAULT NULL,
  `product_name` varchar(255) DEFAULT NULL,
  `createBy` varchar(255) DEFAULT NULL,
  `createTime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of mst_product
-- ----------------------------
INSERT INTO `mst_product` VALUES ('1', '1', '10201', '40101', '50101', 'Gudang Garam Surya 12', '1', '2020-12-02 13:56:47');
INSERT INTO `mst_product` VALUES ('2', '1', '10201', '40101', '50101', 'Gudang Garam Surya 16', '1', '2020-12-02 13:56:57');
INSERT INTO `mst_product` VALUES ('3', '1', '10201', '40101', '50101', 'Sampoerna Mild 16', '1', '2020-12-02 13:57:23');
INSERT INTO `mst_product` VALUES ('4', '1', '10201', '40101', '50101', 'Sampoerna Mild 12', '1', '2020-12-02 13:57:32');
INSERT INTO `mst_product` VALUES ('5', '1', '10201', '40101', '50101', 'Umild 16', '1', '2020-12-02 13:57:44');
INSERT INTO `mst_product` VALUES ('6', '1', '10201', '40101', '50101', 'Umild 12', '1', '2020-12-02 13:57:55');
INSERT INTO `mst_product` VALUES ('7', '1', '10201', '40101', '50101', 'Marlboro Merah', '1', '2020-12-02 13:58:10');
INSERT INTO `mst_product` VALUES ('8', '1', '10201', '40101', '50101', 'Marlboro Putih', '1', '2020-12-02 13:58:23');
INSERT INTO `mst_product` VALUES ('9', '1', '10201', '40101', '50101', 'Marlboro Hitam', '1', '2020-12-02 13:58:33');
INSERT INTO `mst_product` VALUES ('10', '1', '10201', '40101', '50101', 'Gudang Garam International', '1', '2020-12-02 13:58:54');
INSERT INTO `mst_product` VALUES ('11', '1', '10201', '40101', '50101', 'LA Light 16', '1', '2020-12-02 14:00:44');
INSERT INTO `mst_product` VALUES ('12', '1', '10201', '40101', '50101', 'LA Bold', '1', '2020-12-02 14:00:55');
INSERT INTO `mst_product` VALUES ('13', '1', '10201', '40101', '50101', 'Dji Sam Soe', '1', '2020-12-02 14:01:07');
INSERT INTO `mst_product` VALUES ('14', '1', '10201', '40101', '50101', 'Surya Pro Mild', '1', '2020-12-02 14:01:37');
INSERT INTO `mst_product` VALUES ('15', '1', '10201', '40101', '50101', 'Pena Mild', '1', '2020-12-02 14:01:49');
INSERT INTO `mst_product` VALUES ('16', '1', '10201', '40101', '50101', 'Geo Mild', '1', '2020-12-02 14:02:22');
INSERT INTO `mst_product` VALUES ('17', '1', '10201', '40101', '50101', 'GL Mild', '1', '2020-12-02 14:02:46');
INSERT INTO `mst_product` VALUES ('18', '2', '10202', '40103', '50102', 'Teh Pucuk', '1', '2020-12-02 14:03:07');
INSERT INTO `mst_product` VALUES ('19', '1', '10201', '40101', '50101', 'Gudang Garam Surya (Kaleng)', '1', '2020-12-02 14:03:50');
INSERT INTO `mst_product` VALUES ('20', '4', '10204', '40104', '50104', 'Korek Api', '1', '2020-12-02 14:04:37');
INSERT INTO `mst_product` VALUES ('22', '1', '10201', '40101', '50101', 'Class Mild 16', '1', '2020-12-14 15:16:42');
INSERT INTO `mst_product` VALUES ('23', '1', '10201', '40101', '50101', 'Magnum Mild', '1', '2020-12-14 15:38:24');
INSERT INTO `mst_product` VALUES ('24', '1', '10201', '40101', '50101', 'Aga Kretek', '1', '2020-12-15 15:54:44');
INSERT INTO `mst_product` VALUES ('25', '1', '10201', '40101', '50101', 'Dji Sam Soe 12', '1', '2020-12-19 13:44:02');
INSERT INTO `mst_product` VALUES ('26', '5', '10205', '40105', '50105', 'Setelan Tie dye', '1', '2020-12-19 16:58:15');
INSERT INTO `mst_product` VALUES ('27', '5', '10205', '40105', '50105', 'Daster Arab', '1', '2020-12-19 16:58:35');
INSERT INTO `mst_product` VALUES ('28', '5', '10205', '40105', '50105', 'Botol Minuman', '1', '2020-12-19 16:59:28');
INSERT INTO `mst_product` VALUES ('29', '5', '10205', '40105', '50105', 'Gantungan Baju', '1', '2020-12-19 16:59:55');
INSERT INTO `mst_product` VALUES ('30', '5', '10205', '40105', '50105', 'Celana Cargo', '1', '2020-12-19 17:00:27');
INSERT INTO `mst_product` VALUES ('31', '5', '10205', '40105', '50105', 'Parfum Bayi', '1', '2021-01-17 16:30:15');
INSERT INTO `mst_product` VALUES ('32', '5', '10205', '40105', '50105', 'Masker Anak 3 P', '1', '2021-01-17 16:30:37');
INSERT INTO `mst_product` VALUES ('33', '5', '10205', '40105', '50105', 'Body Trimer', '1', '2021-01-17 16:31:02');
INSERT INTO `mst_product` VALUES ('34', '5', '10205', '40105', '50105', 'Mini Sealer', '1', '2021-01-21 06:24:19');
INSERT INTO `mst_product` VALUES ('35', '5', '10205', '40105', '50105', 'Basket Vegetable', '1', '2021-01-21 06:24:42');
INSERT INTO `mst_product` VALUES ('36', '5', '10205', '40105', '50105', 'Balmut Dewasa', '1', '2021-01-25 13:44:27');
INSERT INTO `mst_product` VALUES ('37', '5', '10205', '40105', '50105', 'Boneka Kucing', '1', '2021-01-25 13:44:44');
INSERT INTO `mst_product` VALUES ('38', '5', '10205', '40105', '50105', 'Mangkok Masker', '1', '2021-01-25 13:45:03');
INSERT INTO `mst_product` VALUES ('39', '5', '10205', '40105', '50105', 'Cetakan Donat', '1', '2021-01-25 13:46:28');
INSERT INTO `mst_product` VALUES ('40', '5', '10205', '40105', '50105', 'Lampu Jamur', '1', '2021-01-25 13:46:45');
INSERT INTO `mst_product` VALUES ('41', '5', '10205', '40105', '50105', 'Kurir JnT', '1', '2021-01-27 15:19:02');
INSERT INTO `mst_product` VALUES ('42', '5', '10205', '40105', '50105', 'Bantal Squisy', '1', '2021-01-27 15:22:19');
INSERT INTO `mst_product` VALUES ('43', '1', '10201', '40101', '50101', 'GL Filter', '1', '2021-01-29 14:15:52');

-- ----------------------------
-- Table structure for mst_registration
-- ----------------------------
DROP TABLE IF EXISTS `mst_registration`;
CREATE TABLE `mst_registration` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name_store` varchar(100) NOT NULL,
  `number_id` varchar(100) DEFAULT NULL,
  `number_tlp` varchar(15) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `status` varchar(100) NOT NULL DEFAULT '1' COMMENT '1 : Aktif, 0 : Tidak Aktif',
  `createBy` int(11) DEFAULT NULL,
  `createTime` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of mst_registration
-- ----------------------------
INSERT INTO `mst_registration` VALUES ('1', 'Zafran Store', '3526042512950004', '082330141033', 'Bangkalan', 'onkzmugiwara@gmail.com', 'Aktif', '1', '2020-12-02 19:17:43');

-- ----------------------------
-- Table structure for mst_thrid_party
-- ----------------------------
DROP TABLE IF EXISTS `mst_thrid_party`;
CREATE TABLE `mst_thrid_party` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(255) DEFAULT NULL,
  `thrid_party_name` varchar(100) NOT NULL,
  `number_id` varchar(100) DEFAULT NULL,
  `number_tlp` varchar(15) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `status` varchar(100) NOT NULL DEFAULT '1' COMMENT '1 : Aktif, 0 : Tidak Aktif',
  `createBy` int(11) DEFAULT NULL,
  `createTime` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of mst_thrid_party
-- ----------------------------
INSERT INTO `mst_thrid_party` VALUES ('1', 'supplier', 'Indah Swalayan', '0', '0', 'Bangkalan', 'example@gmail.com', 'Aktif', '1', '2020-12-02 13:21:26');
INSERT INTO `mst_thrid_party` VALUES ('2', 'supplier', 'Matahari', '0', '0', 'Bangkalan', 'example@gmail.com', 'Aktif', '1', '2020-12-04 01:43:22');
INSERT INTO `mst_thrid_party` VALUES ('3', 'supplier', 'Galaxy', '0', '0', 'Bangkalan', 'example@gmail.com', 'Aktif', '1', '2020-12-14 15:10:01');
INSERT INTO `mst_thrid_party` VALUES ('4', 'supplier', 'UD. Sejati', '0', '0', 'Bangkalan - Socah', 'example@gmail.com', 'Aktif', '1', '2020-12-14 15:10:29');
INSERT INTO `mst_thrid_party` VALUES ('5', 'supplier', 'Sales Gudang Garam', '0', '0', 'Surabaya', 'example@gmail.com', 'Aktif', '1', '2020-12-15 15:44:18');
INSERT INTO `mst_thrid_party` VALUES ('6', 'supplier', 'Toko Zidan', '0', '0', 'Demangan-Bangkalan', 'example@gmail.com', 'Aktif', '1', '2020-12-15 15:49:45');
INSERT INTO `mst_thrid_party` VALUES ('7', 'customer', 'Perorangan', '0', '0', 'Mendunia', 'example@gmail.com', 'Aktif', '1', '2020-12-15 16:40:39');
INSERT INTO `mst_thrid_party` VALUES ('8', 'supplier', 'Shopee', '0', '0', 'Lokal', 'example@gmail.com', 'Aktif', '1', '2020-12-19 17:02:43');
INSERT INTO `mst_thrid_party` VALUES ('9', 'supplier', 'Dhealiva Store', '0', '0', 'Demangan', 'example@gmail.com', 'Aktif', '1', '2021-01-17 16:32:51');
INSERT INTO `mst_thrid_party` VALUES ('10', 'supplier', 'Perorangan', '0', '0', 'Mendunia', 'example@gmail.com', 'Aktif', '1', '2020-12-15 16:40:39');

-- ----------------------------
-- Table structure for mst_type
-- ----------------------------
DROP TABLE IF EXISTS `mst_type`;
CREATE TABLE `mst_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type_code` varchar(255) DEFAULT NULL,
  `type_name` varchar(255) DEFAULT NULL,
  `entry_date` datetime DEFAULT NULL,
  `entry_user` varchar(255) DEFAULT NULL,
  `time_stamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of mst_type
-- ----------------------------
INSERT INTO `mst_type` VALUES ('1', '1', 'Aktiva / Aset', '2020-11-24 21:07:53', '1', '2020-11-24 21:07:53');
INSERT INTO `mst_type` VALUES ('2', '2', 'Liabilitas', '2020-11-24 21:07:53', '1', '2020-11-24 21:07:53');
INSERT INTO `mst_type` VALUES ('3', '3', 'Equitas / Modal', '2020-11-24 21:07:53', '1', '2020-11-24 21:07:53');
INSERT INTO `mst_type` VALUES ('4', '4', 'Pendapatan', '2020-11-24 21:07:53', '1', '2020-11-24 21:07:53');
INSERT INTO `mst_type` VALUES ('5', '5', 'Harga Pokok Penjualan', '2020-11-24 21:07:53', '1', '2020-11-24 21:07:53');
INSERT INTO `mst_type` VALUES ('6', '6', 'Beban / Biaya', '2020-11-24 21:07:53', '1', '2020-11-24 21:07:53');

-- ----------------------------
-- Table structure for mst_user
-- ----------------------------
DROP TABLE IF EXISTS `mst_user`;
CREATE TABLE `mst_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_reg` varchar(255) DEFAULT NULL,
  `name_user` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `loginTime` datetime DEFAULT NULL,
  `createTime` datetime DEFAULT NULL,
  `createBy` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of mst_user
-- ----------------------------
INSERT INTO `mst_user` VALUES ('1', '1', 'Fathor Rohman', 'onkz', 'onkz1234', 'Aktif', '2021-02-01 02:30:25', '2020-12-02 19:19:13', '1');

-- ----------------------------
-- Table structure for ntrans
-- ----------------------------
DROP TABLE IF EXISTS `ntrans`;
CREATE TABLE `ntrans` (
  `ntrans` double(25,0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of ntrans
-- ----------------------------
INSERT INTO `ntrans` VALUES ('338');

-- ----------------------------
-- Table structure for transaction
-- ----------------------------
DROP TABLE IF EXISTS `transaction`;
CREATE TABLE `transaction` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` date DEFAULT NULL,
  `source` varchar(11) DEFAULT '',
  `ntrans` varchar(255) DEFAULT NULL,
  `account_code` varchar(255) DEFAULT NULL,
  `debet` double(25,2) NOT NULL,
  `kredit` double(25,2) NOT NULL,
  `ref_1` varchar(255) DEFAULT NULL,
  `ref_2` varchar(255) DEFAULT NULL,
  `ref_3` varchar(255) DEFAULT NULL,
  `ref_4` varchar(255) DEFAULT NULL,
  `note` varchar(255) DEFAULT NULL,
  `st` varchar(255) DEFAULT NULL,
  `createBy` varchar(255) DEFAULT NULL,
  `createTime` datetime DEFAULT CURRENT_TIMESTAMP,
  `updateBy` varchar(255) DEFAULT NULL,
  `updateTime` datetime DEFAULT CURRENT_TIMESTAMP,
  `timeStamp` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1129 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of transaction
-- ----------------------------
INSERT INTO `transaction` VALUES ('1', '2020-11-23', 'Procurement', 'IN/1/1', '10201', '330000.00', '0.00', '2', '1', '2', '1', 'Pembelian Product Gudang Garam Surya 12', 'Aktif', '1', '2020-12-14 15:20:42', '1', '2020-12-14 15:20:42', '2020-12-14 15:20:42');
INSERT INTO `transaction` VALUES ('2', '2020-11-23', 'Procurement', 'IN/1/1', '10101', '0.00', '330000.00', '2', '1', '2', '1', 'Pembelian Product Gudang Garam Surya 12', 'Aktif', '1', '2020-12-14 15:20:42', '1', '2020-12-14 15:20:42', '2020-12-14 15:20:42');
INSERT INTO `transaction` VALUES ('3', '2020-11-23', 'Procurement', 'IN/2/1', '10201', '221000.00', '0.00', '2', '3', '2', '2', 'Pembelian Product Sampoerna Mild 16', 'Aktif', '1', '2020-12-14 15:20:46', '1', '2020-12-14 15:20:46', '2020-12-14 15:20:46');
INSERT INTO `transaction` VALUES ('4', '2020-11-23', 'Procurement', 'IN/2/1', '10101', '0.00', '221000.00', '2', '3', '2', '2', 'Pembelian Product Sampoerna Mild 16', 'Aktif', '1', '2020-12-14 15:20:46', '1', '2020-12-14 15:20:46', '2020-12-14 15:20:46');
INSERT INTO `transaction` VALUES ('5', '2020-11-23', 'Procurement', 'IN/3/1', '10201', '220500.00', '0.00', '2', '2', '2', '3', 'Pembelian Product Gudang Garam Surya 16', 'Aktif', '1', '2020-12-14 15:20:51', '1', '2020-12-14 15:20:51', '2020-12-14 15:20:51');
INSERT INTO `transaction` VALUES ('6', '2020-11-23', 'Procurement', 'IN/3/1', '10101', '0.00', '220500.00', '2', '2', '2', '3', 'Pembelian Product Gudang Garam Surya 16', 'Aktif', '1', '2020-12-14 15:20:51', '1', '2020-12-14 15:20:51', '2020-12-14 15:20:51');
INSERT INTO `transaction` VALUES ('7', '2020-11-23', 'Procurement', 'IN/4/1', '10201', '203000.00', '0.00', '2', '5', '2', '4', 'Pembelian Product Umild 16', 'Aktif', '1', '2020-12-14 15:20:56', '1', '2020-12-14 15:20:56', '2020-12-14 15:20:56');
INSERT INTO `transaction` VALUES ('8', '2020-11-23', 'Procurement', 'IN/4/1', '10101', '0.00', '203000.00', '2', '5', '2', '4', 'Pembelian Product Umild 16', 'Aktif', '1', '2020-12-14 15:20:56', '1', '2020-12-14 15:20:56', '2020-12-14 15:20:56');
INSERT INTO `transaction` VALUES ('9', '2020-11-23', 'Procurement', 'IN/5/1', '10201', '138250.00', '0.00', '2', '9', '2', '5', 'Pembelian Product Marlboro Hitam', 'Aktif', '1', '2020-12-14 15:21:02', '1', '2020-12-14 15:21:02', '2020-12-14 15:21:02');
INSERT INTO `transaction` VALUES ('10', '2020-11-23', 'Procurement', 'IN/5/1', '10101', '0.00', '138250.00', '2', '9', '2', '5', 'Pembelian Product Marlboro Hitam', 'Aktif', '1', '2020-12-14 15:21:02', '1', '2020-12-14 15:21:02', '2020-12-14 15:21:02');
INSERT INTO `transaction` VALUES ('11', '2020-11-23', 'Procurement', 'IN/6/1', '10201', '138250.00', '0.00', '2', '7', '2', '6', 'Pembelian Product Marlboro Merah', 'Aktif', '1', '2020-12-14 15:21:07', '1', '2020-12-14 15:21:07', '2020-12-14 15:21:07');
INSERT INTO `transaction` VALUES ('12', '2020-11-23', 'Procurement', 'IN/6/1', '10101', '0.00', '138250.00', '2', '7', '2', '6', 'Pembelian Product Marlboro Merah', 'Aktif', '1', '2020-12-14 15:21:07', '1', '2020-12-14 15:21:07', '2020-12-14 15:21:07');
INSERT INTO `transaction` VALUES ('13', '2020-11-23', 'Procurement', 'IN/7/1', '10201', '108500.00', '0.00', '2', '22', '2', '7', 'Pembelian Product Class Mild 16', 'Aktif', '1', '2020-12-14 15:21:11', '1', '2020-12-14 15:21:11', '2020-12-14 15:21:11');
INSERT INTO `transaction` VALUES ('14', '2020-11-23', 'Procurement', 'IN/7/1', '10101', '0.00', '108500.00', '2', '22', '2', '7', 'Pembelian Product Class Mild 16', 'Aktif', '1', '2020-12-14 15:21:11', '1', '2020-12-14 15:21:11', '2020-12-14 15:21:11');
INSERT INTO `transaction` VALUES ('15', '2020-11-23', 'Procurement', 'IN/8/1', '10201', '82750.00', '0.00', '2', '10', '2', '8', 'Pembelian Product Gudang Garam International', 'Aktif', '1', '2020-12-14 15:21:15', '1', '2020-12-14 15:21:15', '2020-12-14 15:21:15');
INSERT INTO `transaction` VALUES ('16', '2020-11-23', 'Procurement', 'IN/8/1', '10101', '0.00', '82750.00', '2', '10', '2', '8', 'Pembelian Product Gudang Garam International', 'Aktif', '1', '2020-12-14 15:21:15', '1', '2020-12-14 15:21:15', '2020-12-14 15:21:15');
INSERT INTO `transaction` VALUES ('17', '2020-11-23', 'Procurement', 'IN/9/1', '10201', '69000.00', '0.00', '2', '19', '2', '9', 'Pembelian Product Gudang Garam Surya (Kaleng)', 'Aktif', '1', '2020-12-14 15:21:23', '1', '2020-12-14 15:21:23', '2020-12-14 15:21:23');
INSERT INTO `transaction` VALUES ('18', '2020-11-23', 'Procurement', 'IN/9/1', '10101', '0.00', '69000.00', '2', '19', '2', '9', 'Pembelian Product Gudang Garam Surya (Kaleng)', 'Aktif', '1', '2020-12-14 15:21:23', '1', '2020-12-14 15:21:23', '2020-12-14 15:21:23');
INSERT INTO `transaction` VALUES ('19', '2020-11-25', 'Procurement', 'IN/10/1', '10201', '330000.00', '0.00', '4', '1', '3', '10', 'Pembelian Product Gudang Garam Surya 12', 'Aktif', '1', '2020-12-14 15:43:55', '1', '2020-12-14 15:43:55', '2020-12-14 15:43:55');
INSERT INTO `transaction` VALUES ('20', '2020-11-25', 'Procurement', 'IN/10/1', '10101', '0.00', '330000.00', '4', '1', '3', '10', 'Pembelian Product Gudang Garam Surya 12', 'Aktif', '1', '2020-12-14 15:43:55', '1', '2020-12-14 15:43:55', '2020-12-14 15:43:55');
INSERT INTO `transaction` VALUES ('21', '2020-11-25', 'Procurement', 'IN/11/1', '10201', '441000.00', '0.00', '4', '2', '3', '11', 'Pembelian Product Gudang Garam Surya 16', 'Aktif', '1', '2020-12-14 15:44:00', '1', '2020-12-14 15:44:00', '2020-12-14 15:44:00');
INSERT INTO `transaction` VALUES ('22', '2020-11-25', 'Procurement', 'IN/11/1', '10101', '0.00', '441000.00', '4', '2', '3', '11', 'Pembelian Product Gudang Garam Surya 16', 'Aktif', '1', '2020-12-14 15:44:00', '1', '2020-12-14 15:44:00', '2020-12-14 15:44:00');
INSERT INTO `transaction` VALUES ('23', '2020-11-25', 'Procurement', 'IN/12/1', '10201', '441000.00', '0.00', '4', '3', '3', '12', 'Pembelian Product Sampoerna Mild 16', 'Aktif', '1', '2020-12-14 15:44:04', '1', '2020-12-14 15:44:04', '2020-12-14 15:44:04');
INSERT INTO `transaction` VALUES ('24', '2020-11-25', 'Procurement', 'IN/12/1', '10101', '0.00', '441000.00', '4', '3', '3', '12', 'Pembelian Product Sampoerna Mild 16', 'Aktif', '1', '2020-12-14 15:44:04', '1', '2020-12-14 15:44:04', '2020-12-14 15:44:04');
INSERT INTO `transaction` VALUES ('25', '2020-11-25', 'Procurement', 'IN/13/1', '10201', '331500.00', '0.00', '4', '10', '3', '13', 'Pembelian Product Gudang Garam International', 'Aktif', '1', '2020-12-14 15:44:08', '1', '2020-12-14 15:44:08', '2020-12-14 15:44:08');
INSERT INTO `transaction` VALUES ('26', '2020-11-25', 'Procurement', 'IN/13/1', '10101', '0.00', '331500.00', '4', '10', '3', '13', 'Pembelian Product Gudang Garam International', 'Aktif', '1', '2020-12-14 15:44:08', '1', '2020-12-14 15:44:08', '2020-12-14 15:44:08');
INSERT INTO `transaction` VALUES ('27', '2020-11-25', 'Procurement', 'IN/14/1', '10201', '276500.00', '0.00', '4', '7', '3', '14', 'Pembelian Product Marlboro Merah', 'Aktif', '1', '2020-12-14 15:44:15', '1', '2020-12-14 15:44:15', '2020-12-14 15:44:15');
INSERT INTO `transaction` VALUES ('28', '2020-11-25', 'Procurement', 'IN/14/1', '10101', '0.00', '276500.00', '4', '7', '3', '14', 'Pembelian Product Marlboro Merah', 'Aktif', '1', '2020-12-14 15:44:15', '1', '2020-12-14 15:44:15', '2020-12-14 15:44:15');
INSERT INTO `transaction` VALUES ('29', '2020-11-25', 'Procurement', 'IN/15/1', '10201', '276000.00', '0.00', '4', '9', '3', '15', 'Pembelian Product Marlboro Hitam', 'Aktif', '1', '2020-12-14 15:44:19', '1', '2020-12-14 15:44:19', '2020-12-14 15:44:19');
INSERT INTO `transaction` VALUES ('30', '2020-11-25', 'Procurement', 'IN/15/1', '10101', '0.00', '276000.00', '4', '9', '3', '15', 'Pembelian Product Marlboro Hitam', 'Aktif', '1', '2020-12-14 15:44:19', '1', '2020-12-14 15:44:19', '2020-12-14 15:44:19');
INSERT INTO `transaction` VALUES ('31', '2020-11-25', 'Procurement', 'IN/16/1', '10201', '190000.00', '0.00', '4', '14', '3', '16', 'Pembelian Product Surya Pro Mild', 'Aktif', '1', '2020-12-14 15:44:23', '1', '2020-12-14 15:44:23', '2020-12-14 15:44:23');
INSERT INTO `transaction` VALUES ('32', '2020-11-25', 'Procurement', 'IN/16/1', '10101', '0.00', '190000.00', '4', '14', '3', '16', 'Pembelian Product Surya Pro Mild', 'Aktif', '1', '2020-12-14 15:44:23', '1', '2020-12-14 15:44:23', '2020-12-14 15:44:23');
INSERT INTO `transaction` VALUES ('33', '2020-11-25', 'Procurement', 'IN/17/1', '10201', '161000.00', '0.00', '4', '4', '3', '17', 'Pembelian Product Sampoerna Mild 12', 'Aktif', '1', '2020-12-14 15:44:27', '1', '2020-12-14 15:44:27', '2020-12-14 15:44:27');
INSERT INTO `transaction` VALUES ('34', '2020-11-25', 'Procurement', 'IN/17/1', '10101', '0.00', '161000.00', '4', '4', '3', '17', 'Pembelian Product Sampoerna Mild 12', 'Aktif', '1', '2020-12-14 15:44:27', '1', '2020-12-14 15:44:27', '2020-12-14 15:44:27');
INSERT INTO `transaction` VALUES ('35', '2020-11-25', 'Procurement', 'IN/18/1', '10201', '215000.00', '0.00', '4', '13', '3', '18', 'Pembelian Product Dji Sam Soe', 'Aktif', '1', '2020-12-14 15:44:31', '1', '2020-12-14 15:44:31', '2020-12-14 15:44:31');
INSERT INTO `transaction` VALUES ('36', '2020-11-25', 'Procurement', 'IN/18/1', '10101', '0.00', '215000.00', '4', '13', '3', '18', 'Pembelian Product Dji Sam Soe', 'Aktif', '1', '2020-12-14 15:44:31', '1', '2020-12-14 15:44:31', '2020-12-14 15:44:31');
INSERT INTO `transaction` VALUES ('37', '2020-11-25', 'Procurement', 'IN/19/1', '10201', '203000.00', '0.00', '4', '5', '3', '19', 'Pembelian Product Umild 16', 'Aktif', '1', '2020-12-14 15:44:35', '1', '2020-12-14 15:44:35', '2020-12-14 15:44:35');
INSERT INTO `transaction` VALUES ('38', '2020-11-25', 'Procurement', 'IN/19/1', '10101', '0.00', '203000.00', '4', '5', '3', '19', 'Pembelian Product Umild 16', 'Aktif', '1', '2020-12-14 15:44:35', '1', '2020-12-14 15:44:35', '2020-12-14 15:44:35');
INSERT INTO `transaction` VALUES ('39', '2020-11-25', 'Procurement', 'IN/20/1', '10204', '160000.00', '0.00', '4', '20', '3', '28', 'Pembelian Product Korek Api', 'Aktif', '1', '2020-12-14 15:44:41', '1', '2020-12-14 15:44:41', '2020-12-14 15:44:41');
INSERT INTO `transaction` VALUES ('40', '2020-11-25', 'Procurement', 'IN/20/1', '10101', '0.00', '160000.00', '4', '20', '3', '28', 'Pembelian Product Korek Api', 'Aktif', '1', '2020-12-14 15:44:41', '1', '2020-12-14 15:44:41', '2020-12-14 15:44:41');
INSERT INTO `transaction` VALUES ('41', '2020-11-25', 'Procurement', 'IN/21/1', '10201', '133000.00', '0.00', '4', '19', '3', '27', 'Pembelian Product Gudang Garam Surya (Kaleng)', 'Aktif', '1', '2020-12-14 15:44:49', '1', '2020-12-14 15:44:49', '2020-12-14 15:44:49');
INSERT INTO `transaction` VALUES ('42', '2020-11-25', 'Procurement', 'IN/21/1', '10101', '0.00', '133000.00', '4', '19', '3', '27', 'Pembelian Product Gudang Garam Surya (Kaleng)', 'Aktif', '1', '2020-12-14 15:44:49', '1', '2020-12-14 15:44:49', '2020-12-14 15:44:49');
INSERT INTO `transaction` VALUES ('43', '2020-11-25', 'Procurement', 'IN/22/1', '10201', '139500.00', '0.00', '4', '12', '3', '22', 'Pembelian Product LA Bold', 'Aktif', '1', '2020-12-14 15:44:56', '1', '2020-12-14 15:44:56', '2020-12-14 15:44:56');
INSERT INTO `transaction` VALUES ('44', '2020-11-25', 'Procurement', 'IN/22/1', '10101', '0.00', '139500.00', '4', '12', '3', '22', 'Pembelian Product LA Bold', 'Aktif', '1', '2020-12-14 15:44:56', '1', '2020-12-14 15:44:56', '2020-12-14 15:44:56');
INSERT INTO `transaction` VALUES ('45', '2020-11-25', 'Procurement', 'IN/23/1', '10201', '110400.00', '0.00', '4', '23', '3', '25', 'Pembelian Product Magnum Mild', 'Aktif', '1', '2020-12-14 15:45:03', '1', '2020-12-14 15:45:03', '2020-12-14 15:45:03');
INSERT INTO `transaction` VALUES ('46', '2020-11-25', 'Procurement', 'IN/23/1', '10101', '0.00', '110400.00', '4', '23', '3', '25', 'Pembelian Product Magnum Mild', 'Aktif', '1', '2020-12-14 15:45:03', '1', '2020-12-14 15:45:03', '2020-12-14 15:45:03');
INSERT INTO `transaction` VALUES ('47', '2020-11-25', 'Procurement', 'IN/24/1', '10201', '74700.00', '0.00', '4', '15', '3', '26', 'Pembelian Product Pena Mild', 'Aktif', '1', '2020-12-14 15:45:10', '1', '2020-12-14 15:45:10', '2020-12-14 15:45:10');
INSERT INTO `transaction` VALUES ('48', '2020-11-25', 'Procurement', 'IN/24/1', '10101', '0.00', '74700.00', '4', '15', '3', '26', 'Pembelian Product Pena Mild', 'Aktif', '1', '2020-12-14 15:45:10', '1', '2020-12-14 15:45:10', '2020-12-14 15:45:10');
INSERT INTO `transaction` VALUES ('49', '2020-11-25', 'Procurement', 'IN/25/1', '10201', '165900.00', '0.00', '4', '8', '3', '24', 'Pembelian Product Marlboro Putih', 'Aktif', '1', '2020-12-14 15:45:17', '1', '2020-12-14 15:45:17', '2020-12-14 15:45:17');
INSERT INTO `transaction` VALUES ('50', '2020-11-25', 'Procurement', 'IN/25/1', '10101', '0.00', '165900.00', '4', '8', '3', '24', 'Pembelian Product Marlboro Putih', 'Aktif', '1', '2020-12-14 15:45:17', '1', '2020-12-14 15:45:17', '2020-12-14 15:45:17');
INSERT INTO `transaction` VALUES ('51', '2020-11-25', 'Procurement', 'IN/26/1', '10201', '88500.00', '0.00', '4', '16', '0', '21', 'Pembelian Product Geo Mild', 'Aktif', '1', '2020-12-14 15:45:23', '1', '2020-12-14 15:45:23', '2020-12-14 15:45:23');
INSERT INTO `transaction` VALUES ('52', '2020-11-25', 'Procurement', 'IN/26/1', '10101', '0.00', '88500.00', '4', '16', '0', '21', 'Pembelian Product Geo Mild', 'Aktif', '1', '2020-12-14 15:45:23', '1', '2020-12-14 15:45:23', '2020-12-14 15:45:23');
INSERT INTO `transaction` VALUES ('53', '2020-11-25', 'Procurement', 'IN/27/1', '10201', '84000.00', '0.00', '4', '17', '3', '20', 'Pembelian Product GL Mild', 'Aktif', '1', '2020-12-14 15:45:30', '1', '2020-12-14 15:45:30', '2020-12-14 15:45:30');
INSERT INTO `transaction` VALUES ('54', '2020-11-25', 'Procurement', 'IN/27/1', '10101', '0.00', '84000.00', '4', '17', '3', '20', 'Pembelian Product GL Mild', 'Aktif', '1', '2020-12-14 15:45:30', '1', '2020-12-14 15:45:30', '2020-12-14 15:45:30');
INSERT INTO `transaction` VALUES ('55', '2020-11-29', 'Procurement', 'IN/28/1', '10201', '1640000.00', '0.00', '2', '1', '5', '29', 'Pembelian Product Gudang Garam Surya 12', 'Aktif', '1', '2020-12-15 15:47:31', '1', '2020-12-15 15:47:31', '2020-12-15 15:47:31');
INSERT INTO `transaction` VALUES ('56', '2020-11-29', 'Procurement', 'IN/28/1', '10101', '0.00', '1640000.00', '2', '1', '5', '29', 'Pembelian Product Gudang Garam Surya 12', 'Aktif', '1', '2020-12-15 15:47:31', '1', '2020-12-15 15:47:31', '2020-12-15 15:47:31');
INSERT INTO `transaction` VALUES ('57', '2020-11-29', 'Procurement', 'IN/29/1', '10201', '198000.00', '0.00', '2', '19', '5', '30', 'Pembelian Product Gudang Garam Surya (Kaleng)', 'Aktif', '1', '2020-12-15 15:47:36', '1', '2020-12-15 15:47:36', '2020-12-15 15:47:36');
INSERT INTO `transaction` VALUES ('58', '2020-11-29', 'Procurement', 'IN/29/1', '10101', '0.00', '198000.00', '2', '19', '5', '30', 'Pembelian Product Gudang Garam Surya (Kaleng)', 'Aktif', '1', '2020-12-15 15:47:36', '1', '2020-12-15 15:47:36', '2020-12-15 15:47:36');
INSERT INTO `transaction` VALUES ('59', '2020-12-01', 'Procurement', 'IN/30/1', '10202', '255000.00', '0.00', '2', '18', '6', '31', 'Pembelian Product Teh Pucuk', 'Aktif', '1', '2020-12-15 15:51:27', '1', '2020-12-15 15:51:27', '2020-12-15 15:51:27');
INSERT INTO `transaction` VALUES ('60', '2020-12-01', 'Procurement', 'IN/30/1', '10101', '0.00', '255000.00', '2', '18', '6', '31', 'Pembelian Product Teh Pucuk', 'Aktif', '1', '2020-12-15 15:51:27', '1', '2020-12-15 15:51:27', '2020-12-15 15:51:27');
INSERT INTO `transaction` VALUES ('61', '2020-12-03', 'Procurement', 'IN/31/1', '10201', '165000.00', '0.00', '1', '1', '2', '32', 'Pembelian Product Gudang Garam Surya 12', 'Aktif', '1', '2020-12-15 15:56:09', '1', '2020-12-15 15:56:09', '2020-12-15 15:56:09');
INSERT INTO `transaction` VALUES ('62', '2020-12-03', 'Procurement', 'IN/31/1', '10101', '0.00', '165000.00', '1', '1', '2', '32', 'Pembelian Product Gudang Garam Surya 12', 'Aktif', '1', '2020-12-15 15:56:09', '1', '2020-12-15 15:56:09', '2020-12-15 15:56:09');
INSERT INTO `transaction` VALUES ('63', '2020-12-03', 'Procurement', 'IN/32/1', '10201', '69750.00', '0.00', '1', '24', '2', '33', 'Pembelian Product Aga Kretek', 'Aktif', '1', '2020-12-15 15:56:17', '1', '2020-12-15 15:56:17', '2020-12-15 15:56:17');
INSERT INTO `transaction` VALUES ('64', '2020-12-03', 'Procurement', 'IN/32/1', '10101', '0.00', '69750.00', '1', '24', '2', '33', 'Pembelian Product Aga Kretek', 'Aktif', '1', '2020-12-15 15:56:17', '1', '2020-12-15 15:56:17', '2020-12-15 15:56:17');
INSERT INTO `transaction` VALUES ('65', '2020-12-06', 'Procurement', 'IN/33/1', '10201', '1980000.00', '0.00', '2', '1', '4', '35', 'Pembelian Product Gudang Garam Surya 12', 'Aktif', '1', '2020-12-15 16:13:08', '1', '2020-12-15 16:13:08', '2020-12-15 16:13:08');
INSERT INTO `transaction` VALUES ('66', '2020-12-06', 'Procurement', 'IN/33/1', '10101', '0.00', '1980000.00', '2', '1', '4', '35', 'Pembelian Product Gudang Garam Surya 12', 'Aktif', '1', '2020-12-15 16:13:08', '1', '2020-12-15 16:13:08', '2020-12-15 16:13:08');
INSERT INTO `transaction` VALUES ('67', '2020-12-06', 'Procurement', 'IN/34/1', '10201', '441000.00', '0.00', '2', '2', '4', '36', 'Pembelian Product Gudang Garam Surya 16', 'Aktif', '1', '2020-12-15 16:13:18', '1', '2020-12-15 16:13:18', '2020-12-15 16:13:18');
INSERT INTO `transaction` VALUES ('68', '2020-12-06', 'Procurement', 'IN/34/1', '10101', '0.00', '441000.00', '2', '2', '4', '36', 'Pembelian Product Gudang Garam Surya 16', 'Aktif', '1', '2020-12-15 16:13:18', '1', '2020-12-15 16:13:18', '2020-12-15 16:13:18');
INSERT INTO `transaction` VALUES ('69', '2020-12-06', 'Procurement', 'IN/35/1', '10201', '220250.00', '0.00', '2', '3', '4', '37', 'Pembelian Product Sampoerna Mild 16', 'Aktif', '1', '2020-12-15 16:13:25', '1', '2020-12-15 16:13:25', '2020-12-15 16:13:25');
INSERT INTO `transaction` VALUES ('70', '2020-12-06', 'Procurement', 'IN/35/1', '10101', '0.00', '220250.00', '2', '3', '4', '37', 'Pembelian Product Sampoerna Mild 16', 'Aktif', '1', '2020-12-15 16:13:25', '1', '2020-12-15 16:13:25', '2020-12-15 16:13:25');
INSERT INTO `transaction` VALUES ('71', '2020-12-13', 'Procurement', 'IN/36/1', '10201', '328500.00', '0.00', '4', '1', '1', '38', 'Pembelian Product Gudang Garam Surya 12', 'Aktif', '1', '2020-12-15 16:33:41', '1', '2020-12-15 16:33:41', '2020-12-15 16:33:41');
INSERT INTO `transaction` VALUES ('72', '2020-12-13', 'Procurement', 'IN/36/1', '10101', '0.00', '328500.00', '4', '1', '1', '38', 'Pembelian Product Gudang Garam Surya 12', 'Aktif', '1', '2020-12-15 16:33:41', '1', '2020-12-15 16:33:41', '2020-12-15 16:33:41');
INSERT INTO `transaction` VALUES ('73', '2020-12-13', 'Procurement', 'IN/37/1', '10201', '220000.00', '0.00', '4', '3', '1', '39', 'Pembelian Product Sampoerna Mild 16', 'Aktif', '1', '2020-12-15 16:33:49', '1', '2020-12-15 16:33:49', '2020-12-15 16:33:49');
INSERT INTO `transaction` VALUES ('74', '2020-12-13', 'Procurement', 'IN/37/1', '10101', '0.00', '220000.00', '4', '3', '1', '39', 'Pembelian Product Sampoerna Mild 16', 'Aktif', '1', '2020-12-15 16:33:49', '1', '2020-12-15 16:33:49', '2020-12-15 16:33:49');
INSERT INTO `transaction` VALUES ('75', '2020-12-13', 'Procurement', 'IN/38/1', '10201', '37200.00', '0.00', '4', '15', '1', '40', 'Pembelian Product Pena Mild', 'Aktif', '1', '2020-12-15 16:33:56', '1', '2020-12-15 16:33:56', '2020-12-15 16:33:56');
INSERT INTO `transaction` VALUES ('76', '2020-12-13', 'Procurement', 'IN/38/1', '10101', '0.00', '37200.00', '4', '15', '1', '40', 'Pembelian Product Pena Mild', 'Aktif', '1', '2020-12-15 16:33:56', '1', '2020-12-15 16:33:56', '2020-12-15 16:33:56');
INSERT INTO `transaction` VALUES ('77', '2020-12-13', 'Procurement', 'IN/39/1', '10201', '57000.00', '0.00', '4', '24', '1', '41', 'Pembelian Product Aga Kretek', 'Aktif', '1', '2020-12-15 16:34:03', '1', '2020-12-15 16:34:03', '2020-12-15 16:34:03');
INSERT INTO `transaction` VALUES ('78', '2020-12-13', 'Procurement', 'IN/39/1', '10101', '0.00', '57000.00', '4', '24', '1', '41', 'Pembelian Product Aga Kretek', 'Aktif', '1', '2020-12-15 16:34:03', '1', '2020-12-15 16:34:03', '2020-12-15 16:34:03');
INSERT INTO `transaction` VALUES ('79', '2020-12-13', 'Procurement', 'IN/40/1', '10201', '73625.00', '0.00', '4', '16', '1', '42', 'Pembelian Product Geo Mild', 'Aktif', '1', '2020-12-15 16:34:10', '1', '2020-12-15 16:34:10', '2020-12-15 16:34:10');
INSERT INTO `transaction` VALUES ('80', '2020-12-13', 'Procurement', 'IN/40/1', '10101', '0.00', '73625.00', '4', '16', '1', '42', 'Pembelian Product Geo Mild', 'Aktif', '1', '2020-12-15 16:34:10', '1', '2020-12-15 16:34:10', '2020-12-15 16:34:10');
INSERT INTO `transaction` VALUES ('81', '2020-11-23', 'Sales', 'OU/41/1', '10101', '340000.00', '0.00', '2', '1', '7', '1', 'Penjualan Product Gudang Garam Surya 12', 'Aktif', '1', '2020-12-15 16:51:15', '1', '2020-12-15 16:51:15', '2020-12-15 16:51:15');
INSERT INTO `transaction` VALUES ('82', '2020-11-23', 'Sales', 'OU/41/1', '40101', '0.00', '340000.00', '2', '1', '7', '1', 'Penjualan Product Gudang Garam Surya 12', 'Aktif', '1', '2020-12-15 16:51:15', '1', '2020-12-15 16:51:15', '2020-12-15 16:51:15');
INSERT INTO `transaction` VALUES ('83', '2020-11-23', 'Sales', 'OU/41/1', '50101', '330000.00', '0.00', '2', '1', '7', '1', 'Penjualan Product Gudang Garam Surya 12', 'Aktif', '1', '2020-12-15 16:51:15', '1', '2020-12-15 16:51:15', '2020-12-15 16:51:15');
INSERT INTO `transaction` VALUES ('84', '2020-11-23', 'Sales', 'OU/41/1', '10201', '0.00', '330000.00', '2', '1', '7', '1', 'Penjualan Product Gudang Garam Surya 12', 'Aktif', '1', '2020-12-15 16:51:15', '1', '2020-12-15 16:51:15', '2020-12-15 16:51:15');
INSERT INTO `transaction` VALUES ('85', '2020-11-23', 'Sales', 'OU/42/1', '10101', '23500.00', '0.00', '2', '3', '7', '2', 'Penjualan Product Sampoerna Mild 16', 'Aktif', '1', '2020-12-15 16:51:21', '1', '2020-12-15 16:51:21', '2020-12-15 16:51:21');
INSERT INTO `transaction` VALUES ('86', '2020-11-23', 'Sales', 'OU/42/1', '40101', '0.00', '23500.00', '2', '3', '7', '2', 'Penjualan Product Sampoerna Mild 16', 'Aktif', '1', '2020-12-15 16:51:21', '1', '2020-12-15 16:51:21', '2020-12-15 16:51:21');
INSERT INTO `transaction` VALUES ('87', '2020-11-23', 'Sales', 'OU/42/1', '50101', '22100.00', '0.00', '2', '3', '7', '2', 'Penjualan Product Sampoerna Mild 16', 'Aktif', '1', '2020-12-15 16:51:21', '1', '2020-12-15 16:51:21', '2020-12-15 16:51:21');
INSERT INTO `transaction` VALUES ('88', '2020-11-23', 'Sales', 'OU/42/1', '10201', '0.00', '22100.00', '2', '3', '7', '2', 'Penjualan Product Sampoerna Mild 16', 'Aktif', '1', '2020-12-15 16:51:21', '1', '2020-12-15 16:51:21', '2020-12-15 16:51:21');
INSERT INTO `transaction` VALUES ('89', '2020-11-23', 'Sales', 'OU/43/1', '10101', '184000.00', '0.00', '2', '2', '7', '3', 'Penjualan Product Gudang Garam Surya 16', 'Aktif', '1', '2020-12-15 17:24:19', '1', '2020-12-15 17:24:19', '2020-12-15 17:24:19');
INSERT INTO `transaction` VALUES ('90', '2020-11-23', 'Sales', 'OU/43/1', '40101', '0.00', '184000.00', '2', '2', '7', '3', 'Penjualan Product Gudang Garam Surya 16', 'Aktif', '1', '2020-12-15 17:24:19', '1', '2020-12-15 17:24:19', '2020-12-15 17:24:19');
INSERT INTO `transaction` VALUES ('91', '2020-11-23', 'Sales', 'OU/43/1', '50101', '176400.00', '0.00', '2', '2', '7', '3', 'Penjualan Product Gudang Garam Surya 16', 'Aktif', '1', '2020-12-15 17:24:19', '1', '2020-12-15 17:24:19', '2020-12-15 17:24:19');
INSERT INTO `transaction` VALUES ('92', '2020-11-23', 'Sales', 'OU/43/1', '10201', '0.00', '176400.00', '2', '2', '7', '3', 'Penjualan Product Gudang Garam Surya 16', 'Aktif', '1', '2020-12-15 17:24:19', '1', '2020-12-15 17:24:19', '2020-12-15 17:24:19');
INSERT INTO `transaction` VALUES ('93', '2020-11-29', 'Sales', 'OU/44/1', '10101', '1564000.00', '0.00', '2', '1', '7', '4', 'Penjualan Product Gudang Garam Surya 12', 'Aktif', '1', '2020-12-15 17:24:23', '1', '2020-12-15 17:24:23', '2020-12-15 17:24:23');
INSERT INTO `transaction` VALUES ('94', '2020-11-29', 'Sales', 'OU/44/1', '40101', '0.00', '1564000.00', '2', '1', '7', '4', 'Penjualan Product Gudang Garam Surya 12', 'Aktif', '1', '2020-12-15 17:24:23', '1', '2020-12-15 17:24:23', '2020-12-15 17:24:23');
INSERT INTO `transaction` VALUES ('95', '2020-11-29', 'Sales', 'OU/44/1', '50101', '1508800.00', '0.00', '2', '1', '7', '4', 'Penjualan Product Gudang Garam Surya 12', 'Aktif', '1', '2020-12-15 17:24:23', '1', '2020-12-15 17:24:23', '2020-12-15 17:24:23');
INSERT INTO `transaction` VALUES ('96', '2020-11-29', 'Sales', 'OU/44/1', '10201', '0.00', '1508800.00', '2', '1', '7', '4', 'Penjualan Product Gudang Garam Surya 12', 'Aktif', '1', '2020-12-15 17:24:23', '1', '2020-12-15 17:24:23', '2020-12-15 17:24:23');
INSERT INTO `transaction` VALUES ('97', '2020-11-23', 'Sales', 'OU/45/1', '10101', '184000.00', '0.00', '2', '3', '7', '5', 'Penjualan Product Sampoerna Mild 16', 'Aktif', '1', '2020-12-15 17:24:49', '1', '2020-12-15 17:24:49', '2020-12-15 17:24:49');
INSERT INTO `transaction` VALUES ('98', '2020-11-23', 'Sales', 'OU/45/1', '40101', '0.00', '184000.00', '2', '3', '7', '5', 'Penjualan Product Sampoerna Mild 16', 'Aktif', '1', '2020-12-15 17:24:49', '1', '2020-12-15 17:24:49', '2020-12-15 17:24:49');
INSERT INTO `transaction` VALUES ('99', '2020-11-23', 'Sales', 'OU/45/1', '50101', '176800.00', '0.00', '2', '3', '7', '5', 'Penjualan Product Sampoerna Mild 16', 'Aktif', '1', '2020-12-15 17:24:49', '1', '2020-12-15 17:24:49', '2020-12-15 17:24:49');
INSERT INTO `transaction` VALUES ('100', '2020-11-23', 'Sales', 'OU/45/1', '10201', '0.00', '176800.00', '2', '3', '7', '5', 'Penjualan Product Sampoerna Mild 16', 'Aktif', '1', '2020-12-15 17:24:49', '1', '2020-12-15 17:24:49', '2020-12-15 17:24:49');
INSERT INTO `transaction` VALUES ('101', '2020-11-23', 'Sales', 'OU/46/1', '10101', '67500.00', '0.00', '2', '22', '7', '6', 'Penjualan Product Class Mild 16', 'Aktif', '1', '2020-12-15 17:24:55', '1', '2020-12-15 17:24:55', '2020-12-15 17:24:55');
INSERT INTO `transaction` VALUES ('102', '2020-11-23', 'Sales', 'OU/46/1', '40101', '0.00', '67500.00', '2', '22', '7', '6', 'Penjualan Product Class Mild 16', 'Aktif', '1', '2020-12-15 17:24:55', '1', '2020-12-15 17:24:55', '2020-12-15 17:24:55');
INSERT INTO `transaction` VALUES ('103', '2020-11-23', 'Sales', 'OU/46/1', '50101', '65100.00', '0.00', '2', '22', '7', '6', 'Penjualan Product Class Mild 16', 'Aktif', '1', '2020-12-15 17:24:55', '1', '2020-12-15 17:24:55', '2020-12-15 17:24:55');
INSERT INTO `transaction` VALUES ('104', '2020-11-23', 'Sales', 'OU/46/1', '10201', '0.00', '65100.00', '2', '22', '7', '6', 'Penjualan Product Class Mild 16', 'Aktif', '1', '2020-12-15 17:24:55', '1', '2020-12-15 17:24:55', '2020-12-15 17:24:55');
INSERT INTO `transaction` VALUES ('105', '2020-11-23', 'Sales', 'OU/47/1', '10101', '29000.00', '0.00', '2', '9', '7', '7', 'Penjualan Product Marlboro Hitam', 'Aktif', '1', '2020-12-15 17:25:01', '1', '2020-12-15 17:25:01', '2020-12-15 17:25:01');
INSERT INTO `transaction` VALUES ('106', '2020-11-23', 'Sales', 'OU/47/1', '40101', '0.00', '29000.00', '2', '9', '7', '7', 'Penjualan Product Marlboro Hitam', 'Aktif', '1', '2020-12-15 17:25:01', '1', '2020-12-15 17:25:01', '2020-12-15 17:25:01');
INSERT INTO `transaction` VALUES ('107', '2020-11-23', 'Sales', 'OU/47/1', '50101', '27650.00', '0.00', '2', '9', '7', '7', 'Penjualan Product Marlboro Hitam', 'Aktif', '1', '2020-12-15 17:25:02', '1', '2020-12-15 17:25:02', '2020-12-15 17:25:02');
INSERT INTO `transaction` VALUES ('108', '2020-11-23', 'Sales', 'OU/47/1', '10201', '0.00', '27650.00', '2', '9', '7', '7', 'Penjualan Product Marlboro Hitam', 'Aktif', '1', '2020-12-15 17:25:02', '1', '2020-12-15 17:25:02', '2020-12-15 17:25:02');
INSERT INTO `transaction` VALUES ('109', '2020-11-23', 'Sales', 'OU/48/1', '10101', '85000.00', '0.00', '2', '10', '7', '8', 'Penjualan Product Gudang Garam International', 'Aktif', '1', '2020-12-15 17:28:08', '1', '2020-12-15 17:28:08', '2020-12-15 17:28:08');
INSERT INTO `transaction` VALUES ('110', '2020-11-23', 'Sales', 'OU/48/1', '40101', '0.00', '85000.00', '2', '10', '7', '8', 'Penjualan Product Gudang Garam International', 'Aktif', '1', '2020-12-15 17:28:08', '1', '2020-12-15 17:28:08', '2020-12-15 17:28:08');
INSERT INTO `transaction` VALUES ('111', '2020-11-23', 'Sales', 'OU/48/1', '50101', '82750.00', '0.00', '2', '10', '7', '8', 'Penjualan Product Gudang Garam International', 'Aktif', '1', '2020-12-15 17:28:08', '1', '2020-12-15 17:28:08', '2020-12-15 17:28:08');
INSERT INTO `transaction` VALUES ('112', '2020-11-23', 'Sales', 'OU/48/1', '10201', '0.00', '82750.00', '2', '10', '7', '8', 'Penjualan Product Gudang Garam International', 'Aktif', '1', '2020-12-15 17:28:08', '1', '2020-12-15 17:28:08', '2020-12-15 17:28:08');
INSERT INTO `transaction` VALUES ('113', '2020-11-23', 'Sales', 'OU/49/1', '10101', '75000.00', '0.00', '2', '19', '7', '9', 'Penjualan Product Gudang Garam Surya (Kaleng)', 'Aktif', '1', '2020-12-15 17:28:17', '1', '2020-12-15 17:28:17', '2020-12-15 17:28:17');
INSERT INTO `transaction` VALUES ('114', '2020-11-23', 'Sales', 'OU/49/1', '40101', '0.00', '75000.00', '2', '19', '7', '9', 'Penjualan Product Gudang Garam Surya (Kaleng)', 'Aktif', '1', '2020-12-15 17:28:17', '1', '2020-12-15 17:28:17', '2020-12-15 17:28:17');
INSERT INTO `transaction` VALUES ('115', '2020-11-23', 'Sales', 'OU/49/1', '50101', '69000.00', '0.00', '2', '19', '7', '9', 'Penjualan Product Gudang Garam Surya (Kaleng)', 'Aktif', '1', '2020-12-15 17:28:17', '1', '2020-12-15 17:28:17', '2020-12-15 17:28:17');
INSERT INTO `transaction` VALUES ('116', '2020-11-23', 'Sales', 'OU/49/1', '10201', '0.00', '69000.00', '2', '19', '7', '9', 'Penjualan Product Gudang Garam Surya (Kaleng)', 'Aktif', '1', '2020-12-15 17:28:17', '1', '2020-12-15 17:28:17', '2020-12-15 17:28:17');
INSERT INTO `transaction` VALUES ('117', '2020-11-25', 'Sales', 'OU/50/1', '10101', '157500.00', '0.00', '3', '1', '7', '10', 'Penjualan Product Gudang Garam Surya 12', 'Aktif', '1', '2020-12-15 17:34:55', '1', '2020-12-15 17:34:55', '2020-12-15 17:34:55');
INSERT INTO `transaction` VALUES ('118', '2020-11-25', 'Sales', 'OU/50/1', '40101', '0.00', '157500.00', '3', '1', '7', '10', 'Penjualan Product Gudang Garam Surya 12', 'Aktif', '1', '2020-12-15 17:34:55', '1', '2020-12-15 17:34:55', '2020-12-15 17:34:55');
INSERT INTO `transaction` VALUES ('119', '2020-11-25', 'Sales', 'OU/50/1', '50101', '148500.00', '0.00', '3', '1', '7', '10', 'Penjualan Product Gudang Garam Surya 12', 'Aktif', '1', '2020-12-15 17:34:55', '1', '2020-12-15 17:34:55', '2020-12-15 17:34:55');
INSERT INTO `transaction` VALUES ('120', '2020-11-25', 'Sales', 'OU/50/1', '10201', '0.00', '148500.00', '3', '1', '7', '10', 'Penjualan Product Gudang Garam Surya 12', 'Aktif', '1', '2020-12-15 17:34:55', '1', '2020-12-15 17:34:55', '2020-12-15 17:34:55');
INSERT INTO `transaction` VALUES ('121', '2020-11-25', 'Sales', 'OU/51/1', '10101', '94000.00', '0.00', '3', '3', '7', '11', 'Penjualan Product Sampoerna Mild 16', 'Aktif', '1', '2020-12-15 17:35:08', '1', '2020-12-15 17:35:08', '2020-12-15 17:35:08');
INSERT INTO `transaction` VALUES ('122', '2020-11-25', 'Sales', 'OU/51/1', '40101', '0.00', '94000.00', '3', '3', '7', '11', 'Penjualan Product Sampoerna Mild 16', 'Aktif', '1', '2020-12-15 17:35:08', '1', '2020-12-15 17:35:08', '2020-12-15 17:35:08');
INSERT INTO `transaction` VALUES ('123', '2020-11-25', 'Sales', 'OU/51/1', '50101', '88200.00', '0.00', '3', '3', '7', '11', 'Penjualan Product Sampoerna Mild 16', 'Aktif', '1', '2020-12-15 17:35:08', '1', '2020-12-15 17:35:08', '2020-12-15 17:35:08');
INSERT INTO `transaction` VALUES ('124', '2020-11-25', 'Sales', 'OU/51/1', '10201', '0.00', '88200.00', '3', '3', '7', '11', 'Penjualan Product Sampoerna Mild 16', 'Aktif', '1', '2020-12-15 17:35:08', '1', '2020-12-15 17:35:08', '2020-12-15 17:35:08');
INSERT INTO `transaction` VALUES ('125', '2020-11-25', 'Sales', 'OU/52/1', '10101', '17500.00', '0.00', '3', '4', '7', '12', 'Penjualan Product Sampoerna Mild 12', 'Aktif', '1', '2020-12-15 17:35:13', '1', '2020-12-15 17:35:13', '2020-12-15 17:35:13');
INSERT INTO `transaction` VALUES ('126', '2020-11-25', 'Sales', 'OU/52/1', '40101', '0.00', '17500.00', '3', '4', '7', '12', 'Penjualan Product Sampoerna Mild 12', 'Aktif', '1', '2020-12-15 17:35:13', '1', '2020-12-15 17:35:13', '2020-12-15 17:35:13');
INSERT INTO `transaction` VALUES ('127', '2020-11-25', 'Sales', 'OU/52/1', '50101', '16100.00', '0.00', '3', '4', '7', '12', 'Penjualan Product Sampoerna Mild 12', 'Aktif', '1', '2020-12-15 17:35:13', '1', '2020-12-15 17:35:13', '2020-12-15 17:35:13');
INSERT INTO `transaction` VALUES ('128', '2020-11-25', 'Sales', 'OU/52/1', '10201', '0.00', '16100.00', '3', '4', '7', '12', 'Penjualan Product Sampoerna Mild 12', 'Aktif', '1', '2020-12-15 17:35:13', '1', '2020-12-15 17:35:13', '2020-12-15 17:35:13');
INSERT INTO `transaction` VALUES ('129', '2020-11-25', 'Sales', 'OU/53/1', '10101', '29000.00', '0.00', '3', '7', '7', '13', 'Penjualan Product Marlboro Merah', 'Aktif', '1', '2020-12-15 17:35:19', '1', '2020-12-15 17:35:19', '2020-12-15 17:35:19');
INSERT INTO `transaction` VALUES ('130', '2020-11-25', 'Sales', 'OU/53/1', '40101', '0.00', '29000.00', '3', '7', '7', '13', 'Penjualan Product Marlboro Merah', 'Aktif', '1', '2020-12-15 17:35:19', '1', '2020-12-15 17:35:19', '2020-12-15 17:35:19');
INSERT INTO `transaction` VALUES ('131', '2020-11-25', 'Sales', 'OU/53/1', '50101', '27650.00', '0.00', '3', '7', '7', '13', 'Penjualan Product Marlboro Merah', 'Aktif', '1', '2020-12-15 17:35:19', '1', '2020-12-15 17:35:19', '2020-12-15 17:35:19');
INSERT INTO `transaction` VALUES ('132', '2020-11-25', 'Sales', 'OU/53/1', '10201', '0.00', '27650.00', '3', '7', '7', '13', 'Penjualan Product Marlboro Merah', 'Aktif', '1', '2020-12-15 17:35:19', '1', '2020-12-15 17:35:19', '2020-12-15 17:35:19');
INSERT INTO `transaction` VALUES ('133', '2020-11-25', 'Sales', 'OU/54/1', '10101', '28500.00', '0.00', '3', '9', '7', '14', 'Penjualan Product Marlboro Hitam', 'Aktif', '1', '2020-12-15 17:35:25', '1', '2020-12-15 17:35:25', '2020-12-15 17:35:25');
INSERT INTO `transaction` VALUES ('134', '2020-11-25', 'Sales', 'OU/54/1', '40101', '0.00', '28500.00', '3', '9', '7', '14', 'Penjualan Product Marlboro Hitam', 'Aktif', '1', '2020-12-15 17:35:25', '1', '2020-12-15 17:35:25', '2020-12-15 17:35:25');
INSERT INTO `transaction` VALUES ('135', '2020-11-25', 'Sales', 'OU/54/1', '50101', '27600.00', '0.00', '3', '9', '7', '14', 'Penjualan Product Marlboro Hitam', 'Aktif', '1', '2020-12-15 17:35:25', '1', '2020-12-15 17:35:25', '2020-12-15 17:35:25');
INSERT INTO `transaction` VALUES ('136', '2020-11-25', 'Sales', 'OU/54/1', '10201', '0.00', '27600.00', '3', '9', '7', '14', 'Penjualan Product Marlboro Hitam', 'Aktif', '1', '2020-12-15 17:35:25', '1', '2020-12-15 17:35:25', '2020-12-15 17:35:25');
INSERT INTO `transaction` VALUES ('137', '2020-11-25', 'Sales', 'OU/55/1', '10101', '22500.00', '0.00', '3', '13', '7', '15', 'Penjualan Product Dji Sam Soe', 'Aktif', '1', '2020-12-15 17:35:32', '1', '2020-12-15 17:35:32', '2020-12-15 17:35:32');
INSERT INTO `transaction` VALUES ('138', '2020-11-25', 'Sales', 'OU/55/1', '40101', '0.00', '22500.00', '3', '13', '7', '15', 'Penjualan Product Dji Sam Soe', 'Aktif', '1', '2020-12-15 17:35:32', '1', '2020-12-15 17:35:32', '2020-12-15 17:35:32');
INSERT INTO `transaction` VALUES ('139', '2020-11-25', 'Sales', 'OU/55/1', '50101', '21500.00', '0.00', '3', '13', '7', '15', 'Penjualan Product Dji Sam Soe', 'Aktif', '1', '2020-12-15 17:35:32', '1', '2020-12-15 17:35:32', '2020-12-15 17:35:32');
INSERT INTO `transaction` VALUES ('140', '2020-11-25', 'Sales', 'OU/55/1', '10201', '0.00', '21500.00', '3', '13', '7', '15', 'Penjualan Product Dji Sam Soe', 'Aktif', '1', '2020-12-15 17:35:32', '1', '2020-12-15 17:35:32', '2020-12-15 17:35:32');
INSERT INTO `transaction` VALUES ('141', '2020-11-25', 'Sales', 'OU/56/1', '10101', '17500.00', '0.00', '3', '1', '7', '16', 'Penjualan Product Gudang Garam Surya 12', 'Aktif', '1', '2020-12-15 17:41:43', '1', '2020-12-15 17:41:43', '2020-12-15 17:41:43');
INSERT INTO `transaction` VALUES ('142', '2020-11-25', 'Sales', 'OU/56/1', '40101', '0.00', '17500.00', '3', '1', '7', '16', 'Penjualan Product Gudang Garam Surya 12', 'Aktif', '1', '2020-12-15 17:41:43', '1', '2020-12-15 17:41:43', '2020-12-15 17:41:43');
INSERT INTO `transaction` VALUES ('143', '2020-11-25', 'Sales', 'OU/56/1', '50101', '16500.00', '0.00', '3', '1', '7', '16', 'Penjualan Product Gudang Garam Surya 12', 'Aktif', '1', '2020-12-15 17:41:43', '1', '2020-12-15 17:41:43', '2020-12-15 17:41:43');
INSERT INTO `transaction` VALUES ('144', '2020-11-25', 'Sales', 'OU/56/1', '10201', '0.00', '16500.00', '3', '1', '7', '16', 'Penjualan Product Gudang Garam Surya 12', 'Aktif', '1', '2020-12-15 17:41:43', '1', '2020-12-15 17:41:43', '2020-12-15 17:41:43');
INSERT INTO `transaction` VALUES ('145', '2020-12-06', 'Sales', 'OU/57/1', '10101', '105000.00', '0.00', '3', '1', '7', '17', 'Penjualan Product Gudang Garam Surya 12', 'Aktif', '1', '2020-12-15 17:41:49', '1', '2020-12-15 17:41:49', '2020-12-15 17:41:49');
INSERT INTO `transaction` VALUES ('146', '2020-12-06', 'Sales', 'OU/57/1', '40101', '0.00', '105000.00', '3', '1', '7', '17', 'Penjualan Product Gudang Garam Surya 12', 'Aktif', '1', '2020-12-15 17:41:49', '1', '2020-12-15 17:41:49', '2020-12-15 17:41:49');
INSERT INTO `transaction` VALUES ('147', '2020-12-06', 'Sales', 'OU/57/1', '50101', '99000.00', '0.00', '3', '1', '7', '17', 'Penjualan Product Gudang Garam Surya 12', 'Aktif', '1', '2020-12-15 17:41:49', '1', '2020-12-15 17:41:49', '2020-12-15 17:41:49');
INSERT INTO `transaction` VALUES ('148', '2020-12-06', 'Sales', 'OU/57/1', '10201', '0.00', '99000.00', '3', '1', '7', '17', 'Penjualan Product Gudang Garam Surya 12', 'Aktif', '1', '2020-12-15 17:41:49', '1', '2020-12-15 17:41:49', '2020-12-15 17:41:49');
INSERT INTO `transaction` VALUES ('149', '2020-11-25', 'Sales', 'OU/58/1', '10101', '47000.00', '0.00', '3', '2', '7', '18', 'Penjualan Product Gudang Garam Surya 16', 'Aktif', '1', '2020-12-15 17:41:54', '1', '2020-12-15 17:41:54', '2020-12-15 17:41:54');
INSERT INTO `transaction` VALUES ('150', '2020-11-25', 'Sales', 'OU/58/1', '40101', '0.00', '47000.00', '3', '2', '7', '18', 'Penjualan Product Gudang Garam Surya 16', 'Aktif', '1', '2020-12-15 17:41:54', '1', '2020-12-15 17:41:54', '2020-12-15 17:41:54');
INSERT INTO `transaction` VALUES ('151', '2020-11-25', 'Sales', 'OU/58/1', '50101', '44100.00', '0.00', '3', '2', '7', '18', 'Penjualan Product Gudang Garam Surya 16', 'Aktif', '1', '2020-12-15 17:41:54', '1', '2020-12-15 17:41:54', '2020-12-15 17:41:54');
INSERT INTO `transaction` VALUES ('152', '2020-11-25', 'Sales', 'OU/58/1', '10201', '0.00', '44100.00', '3', '2', '7', '18', 'Penjualan Product Gudang Garam Surya 16', 'Aktif', '1', '2020-12-15 17:41:54', '1', '2020-12-15 17:41:54', '2020-12-15 17:41:54');
INSERT INTO `transaction` VALUES ('153', '2020-11-25', 'Sales', 'OU/59/1', '10101', '141000.00', '0.00', '3', '3', '7', '19', 'Penjualan Product Sampoerna Mild 16', 'Aktif', '1', '2020-12-15 17:41:59', '1', '2020-12-15 17:41:59', '2020-12-15 17:41:59');
INSERT INTO `transaction` VALUES ('154', '2020-11-25', 'Sales', 'OU/59/1', '40101', '0.00', '141000.00', '3', '3', '7', '19', 'Penjualan Product Sampoerna Mild 16', 'Aktif', '1', '2020-12-15 17:41:59', '1', '2020-12-15 17:41:59', '2020-12-15 17:41:59');
INSERT INTO `transaction` VALUES ('155', '2020-11-25', 'Sales', 'OU/59/1', '50101', '132300.00', '0.00', '3', '3', '7', '19', 'Penjualan Product Sampoerna Mild 16', 'Aktif', '1', '2020-12-15 17:41:59', '1', '2020-12-15 17:41:59', '2020-12-15 17:41:59');
INSERT INTO `transaction` VALUES ('156', '2020-11-25', 'Sales', 'OU/59/1', '10201', '0.00', '132300.00', '3', '3', '7', '19', 'Penjualan Product Sampoerna Mild 16', 'Aktif', '1', '2020-12-15 17:41:59', '1', '2020-12-15 17:41:59', '2020-12-15 17:41:59');
INSERT INTO `transaction` VALUES ('157', '2020-11-25', 'Sales', 'OU/60/1', '10101', '17500.00', '0.00', '3', '10', '7', '20', 'Penjualan Product Gudang Garam International', 'Aktif', '1', '2020-12-15 17:42:04', '1', '2020-12-15 17:42:04', '2020-12-15 17:42:04');
INSERT INTO `transaction` VALUES ('158', '2020-11-25', 'Sales', 'OU/60/1', '40101', '0.00', '17500.00', '3', '10', '7', '20', 'Penjualan Product Gudang Garam International', 'Aktif', '1', '2020-12-15 17:42:04', '1', '2020-12-15 17:42:04', '2020-12-15 17:42:04');
INSERT INTO `transaction` VALUES ('159', '2020-11-25', 'Sales', 'OU/60/1', '50101', '16575.00', '0.00', '3', '10', '7', '20', 'Penjualan Product Gudang Garam International', 'Aktif', '1', '2020-12-15 17:42:04', '1', '2020-12-15 17:42:04', '2020-12-15 17:42:04');
INSERT INTO `transaction` VALUES ('160', '2020-11-25', 'Sales', 'OU/60/1', '10201', '0.00', '16575.00', '3', '10', '7', '20', 'Penjualan Product Gudang Garam International', 'Aktif', '1', '2020-12-15 17:42:04', '1', '2020-12-15 17:42:04', '2020-12-15 17:42:04');
INSERT INTO `transaction` VALUES ('161', '2020-11-25', 'Sales', 'OU/61/1', '10101', '20000.00', '0.00', '3', '14', '7', '21', 'Penjualan Product Surya Pro Mild', 'Aktif', '1', '2020-12-15 17:42:19', '1', '2020-12-15 17:42:19', '2020-12-15 17:42:19');
INSERT INTO `transaction` VALUES ('162', '2020-11-25', 'Sales', 'OU/61/1', '40101', '0.00', '20000.00', '3', '14', '7', '21', 'Penjualan Product Surya Pro Mild', 'Aktif', '1', '2020-12-15 17:42:19', '1', '2020-12-15 17:42:19', '2020-12-15 17:42:19');
INSERT INTO `transaction` VALUES ('163', '2020-11-25', 'Sales', 'OU/61/1', '50101', '19000.00', '0.00', '3', '14', '7', '21', 'Penjualan Product Surya Pro Mild', 'Aktif', '1', '2020-12-15 17:42:19', '1', '2020-12-15 17:42:19', '2020-12-15 17:42:19');
INSERT INTO `transaction` VALUES ('164', '2020-11-25', 'Sales', 'OU/61/1', '10201', '0.00', '19000.00', '3', '14', '7', '21', 'Penjualan Product Surya Pro Mild', 'Aktif', '1', '2020-12-15 17:42:19', '1', '2020-12-15 17:42:19', '2020-12-15 17:42:19');
INSERT INTO `transaction` VALUES ('165', '2020-12-03', 'Sales', 'OU/62/1', '10101', '12500.00', '0.00', '3', '24', '7', '22', 'Penjualan Product Aga Kretek', 'Aktif', '1', '2020-12-15 17:42:25', '1', '2020-12-15 17:42:25', '2020-12-15 17:42:25');
INSERT INTO `transaction` VALUES ('166', '2020-12-03', 'Sales', 'OU/62/1', '40101', '0.00', '12500.00', '3', '24', '7', '22', 'Penjualan Product Aga Kretek', 'Aktif', '1', '2020-12-15 17:42:25', '1', '2020-12-15 17:42:25', '2020-12-15 17:42:25');
INSERT INTO `transaction` VALUES ('167', '2020-12-03', 'Sales', 'OU/62/1', '50101', '11625.00', '0.00', '3', '24', '7', '22', 'Penjualan Product Aga Kretek', 'Aktif', '1', '2020-12-15 17:42:25', '1', '2020-12-15 17:42:25', '2020-12-15 17:42:25');
INSERT INTO `transaction` VALUES ('168', '2020-12-03', 'Sales', 'OU/62/1', '10201', '0.00', '11625.00', '3', '24', '7', '22', 'Penjualan Product Aga Kretek', 'Aktif', '1', '2020-12-15 17:42:25', '1', '2020-12-15 17:42:25', '2020-12-15 17:42:25');
INSERT INTO `transaction` VALUES ('169', '2020-12-04', 'Procurement', 'IN/63/1', '10201', '220250.00', '0.00', '3', '2', '1', '34', 'Pembelian Product Gudang Garam Surya 16', 'Aktif', '1', '2020-12-15 17:46:39', '1', '2020-12-15 17:46:39', '2020-12-15 17:46:39');
INSERT INTO `transaction` VALUES ('170', '2020-12-04', 'Procurement', 'IN/63/1', '10101', '0.00', '220250.00', '3', '2', '1', '34', 'Pembelian Product Gudang Garam Surya 16', 'Aktif', '1', '2020-12-15 17:46:39', '1', '2020-12-15 17:46:39', '2020-12-15 17:46:39');
INSERT INTO `transaction` VALUES ('171', '2020-12-04', 'Sales', 'OU/64/1', '10101', '47000.00', '0.00', '3', '2', '7', '23', 'Penjualan Product Gudang Garam Surya 16', 'Aktif', '1', '2020-12-15 18:06:04', '1', '2020-12-15 18:06:04', '2020-12-15 18:06:04');
INSERT INTO `transaction` VALUES ('172', '2020-12-04', 'Sales', 'OU/64/1', '40101', '0.00', '47000.00', '3', '2', '7', '23', 'Penjualan Product Gudang Garam Surya 16', 'Aktif', '1', '2020-12-15 18:06:04', '1', '2020-12-15 18:06:04', '2020-12-15 18:06:04');
INSERT INTO `transaction` VALUES ('173', '2020-12-04', 'Sales', 'OU/64/1', '50101', '44050.00', '0.00', '3', '2', '7', '23', 'Penjualan Product Gudang Garam Surya 16', 'Aktif', '1', '2020-12-15 18:06:04', '1', '2020-12-15 18:06:04', '2020-12-15 18:06:04');
INSERT INTO `transaction` VALUES ('174', '2020-12-04', 'Sales', 'OU/64/1', '10201', '0.00', '44050.00', '3', '2', '7', '23', 'Penjualan Product Gudang Garam Surya 16', 'Aktif', '1', '2020-12-15 18:06:04', '1', '2020-12-15 18:06:04', '2020-12-15 18:06:04');
INSERT INTO `transaction` VALUES ('175', '2020-12-06', 'Sales', 'OU/65/1', '10101', '70000.00', '0.00', '3', '1', '7', '24', 'Penjualan Product Gudang Garam Surya 12', 'Aktif', '1', '2020-12-15 18:06:08', '1', '2020-12-15 18:06:08', '2020-12-15 18:06:08');
INSERT INTO `transaction` VALUES ('176', '2020-12-06', 'Sales', 'OU/65/1', '40101', '0.00', '70000.00', '3', '1', '7', '24', 'Penjualan Product Gudang Garam Surya 12', 'Aktif', '1', '2020-12-15 18:06:08', '1', '2020-12-15 18:06:08', '2020-12-15 18:06:08');
INSERT INTO `transaction` VALUES ('177', '2020-12-06', 'Sales', 'OU/65/1', '50101', '66000.00', '0.00', '3', '1', '7', '24', 'Penjualan Product Gudang Garam Surya 12', 'Aktif', '1', '2020-12-15 18:06:08', '1', '2020-12-15 18:06:08', '2020-12-15 18:06:08');
INSERT INTO `transaction` VALUES ('178', '2020-12-06', 'Sales', 'OU/65/1', '10201', '0.00', '66000.00', '3', '1', '7', '24', 'Penjualan Product Gudang Garam Surya 12', 'Aktif', '1', '2020-12-15 18:06:08', '1', '2020-12-15 18:06:08', '2020-12-15 18:06:08');
INSERT INTO `transaction` VALUES ('179', '2020-12-03', 'Sales', 'OU/66/1', '10101', '17500.00', '0.00', '3', '1', '7', '25', 'Penjualan Product Gudang Garam Surya 12', 'Aktif', '1', '2020-12-15 18:06:13', '1', '2020-12-15 18:06:13', '2020-12-15 18:06:13');
INSERT INTO `transaction` VALUES ('180', '2020-12-03', 'Sales', 'OU/66/1', '40101', '0.00', '17500.00', '3', '1', '7', '25', 'Penjualan Product Gudang Garam Surya 12', 'Aktif', '1', '2020-12-15 18:06:13', '1', '2020-12-15 18:06:13', '2020-12-15 18:06:13');
INSERT INTO `transaction` VALUES ('181', '2020-12-03', 'Sales', 'OU/66/1', '50101', '16500.00', '0.00', '3', '1', '7', '25', 'Penjualan Product Gudang Garam Surya 12', 'Aktif', '1', '2020-12-15 18:06:13', '1', '2020-12-15 18:06:13', '2020-12-15 18:06:13');
INSERT INTO `transaction` VALUES ('182', '2020-12-03', 'Sales', 'OU/66/1', '10201', '0.00', '16500.00', '3', '1', '7', '25', 'Penjualan Product Gudang Garam Surya 12', 'Aktif', '1', '2020-12-15 18:06:13', '1', '2020-12-15 18:06:13', '2020-12-15 18:06:13');
INSERT INTO `transaction` VALUES ('183', '2020-12-06', 'Sales', 'OU/67/1', '10101', '141000.00', '0.00', '3', '3', '7', '26', 'Penjualan Product Sampoerna Mild 16', 'Aktif', '1', '2020-12-15 18:06:18', '1', '2020-12-15 18:06:18', '2020-12-15 18:06:18');
INSERT INTO `transaction` VALUES ('184', '2020-12-06', 'Sales', 'OU/67/1', '40101', '0.00', '141000.00', '3', '3', '7', '26', 'Penjualan Product Sampoerna Mild 16', 'Aktif', '1', '2020-12-15 18:06:18', '1', '2020-12-15 18:06:18', '2020-12-15 18:06:18');
INSERT INTO `transaction` VALUES ('185', '2020-12-06', 'Sales', 'OU/67/1', '50101', '132150.00', '0.00', '3', '3', '7', '26', 'Penjualan Product Sampoerna Mild 16', 'Aktif', '1', '2020-12-15 18:06:18', '1', '2020-12-15 18:06:18', '2020-12-15 18:06:18');
INSERT INTO `transaction` VALUES ('186', '2020-12-06', 'Sales', 'OU/67/1', '10201', '0.00', '132150.00', '3', '3', '7', '26', 'Penjualan Product Sampoerna Mild 16', 'Aktif', '1', '2020-12-15 18:06:18', '1', '2020-12-15 18:06:18', '2020-12-15 18:06:18');
INSERT INTO `transaction` VALUES ('187', '2020-11-25', 'Sales', 'OU/68/1', '10101', '21500.00', '0.00', '3', '5', '7', '27', 'Penjualan Product Umild 16', 'Aktif', '1', '2020-12-15 18:06:23', '1', '2020-12-15 18:06:23', '2020-12-15 18:06:23');
INSERT INTO `transaction` VALUES ('188', '2020-11-25', 'Sales', 'OU/68/1', '40101', '0.00', '21500.00', '3', '5', '7', '27', 'Penjualan Product Umild 16', 'Aktif', '1', '2020-12-15 18:06:23', '1', '2020-12-15 18:06:23', '2020-12-15 18:06:23');
INSERT INTO `transaction` VALUES ('189', '2020-11-25', 'Sales', 'OU/68/1', '50101', '20300.00', '0.00', '3', '5', '7', '27', 'Penjualan Product Umild 16', 'Aktif', '1', '2020-12-15 18:06:23', '1', '2020-12-15 18:06:23', '2020-12-15 18:06:23');
INSERT INTO `transaction` VALUES ('190', '2020-11-25', 'Sales', 'OU/68/1', '10201', '0.00', '20300.00', '3', '5', '7', '27', 'Penjualan Product Umild 16', 'Aktif', '1', '2020-12-15 18:06:23', '1', '2020-12-15 18:06:23', '2020-12-15 18:06:23');
INSERT INTO `transaction` VALUES ('191', '2020-11-25', 'Sales', 'OU/69/1', '10101', '58000.00', '0.00', '3', '7', '7', '28', 'Penjualan Product Marlboro Merah', 'Aktif', '1', '2020-12-15 18:06:36', '1', '2020-12-15 18:06:36', '2020-12-15 18:06:36');
INSERT INTO `transaction` VALUES ('192', '2020-11-25', 'Sales', 'OU/69/1', '40101', '0.00', '58000.00', '3', '7', '7', '28', 'Penjualan Product Marlboro Merah', 'Aktif', '1', '2020-12-15 18:06:36', '1', '2020-12-15 18:06:36', '2020-12-15 18:06:36');
INSERT INTO `transaction` VALUES ('193', '2020-11-25', 'Sales', 'OU/69/1', '50101', '55300.00', '0.00', '3', '7', '7', '28', 'Penjualan Product Marlboro Merah', 'Aktif', '1', '2020-12-15 18:06:36', '1', '2020-12-15 18:06:36', '2020-12-15 18:06:36');
INSERT INTO `transaction` VALUES ('194', '2020-11-25', 'Sales', 'OU/69/1', '10201', '0.00', '55300.00', '3', '7', '7', '28', 'Penjualan Product Marlboro Merah', 'Aktif', '1', '2020-12-15 18:06:36', '1', '2020-12-15 18:06:36', '2020-12-15 18:06:36');
INSERT INTO `transaction` VALUES ('195', '2020-11-25', 'Sales', 'OU/70/1', '10101', '28500.00', '0.00', '3', '9', '7', '29', 'Penjualan Product Marlboro Hitam', 'Aktif', '1', '2020-12-15 18:06:44', '1', '2020-12-15 18:06:44', '2020-12-15 18:06:44');
INSERT INTO `transaction` VALUES ('196', '2020-11-25', 'Sales', 'OU/70/1', '40101', '0.00', '28500.00', '3', '9', '7', '29', 'Penjualan Product Marlboro Hitam', 'Aktif', '1', '2020-12-15 18:06:44', '1', '2020-12-15 18:06:44', '2020-12-15 18:06:44');
INSERT INTO `transaction` VALUES ('197', '2020-11-25', 'Sales', 'OU/70/1', '50101', '27600.00', '0.00', '3', '9', '7', '29', 'Penjualan Product Marlboro Hitam', 'Aktif', '1', '2020-12-15 18:06:44', '1', '2020-12-15 18:06:44', '2020-12-15 18:06:44');
INSERT INTO `transaction` VALUES ('198', '2020-11-25', 'Sales', 'OU/70/1', '10201', '0.00', '27600.00', '3', '9', '7', '29', 'Penjualan Product Marlboro Hitam', 'Aktif', '1', '2020-12-15 18:06:44', '1', '2020-12-15 18:06:44', '2020-12-15 18:06:44');
INSERT INTO `transaction` VALUES ('199', '2020-11-25', 'Sales', 'OU/71/1', '10101', '17500.00', '0.00', '3', '10', '7', '30', 'Penjualan Product Gudang Garam International', 'Aktif', '1', '2020-12-15 18:06:51', '1', '2020-12-15 18:06:51', '2020-12-15 18:06:51');
INSERT INTO `transaction` VALUES ('200', '2020-11-25', 'Sales', 'OU/71/1', '40101', '0.00', '17500.00', '3', '10', '7', '30', 'Penjualan Product Gudang Garam International', 'Aktif', '1', '2020-12-15 18:06:51', '1', '2020-12-15 18:06:51', '2020-12-15 18:06:51');
INSERT INTO `transaction` VALUES ('201', '2020-11-25', 'Sales', 'OU/71/1', '50101', '16575.00', '0.00', '3', '10', '7', '30', 'Penjualan Product Gudang Garam International', 'Aktif', '1', '2020-12-15 18:06:52', '1', '2020-12-15 18:06:52', '2020-12-15 18:06:52');
INSERT INTO `transaction` VALUES ('202', '2020-11-25', 'Sales', 'OU/71/1', '10201', '0.00', '16575.00', '3', '10', '7', '30', 'Penjualan Product Gudang Garam International', 'Aktif', '1', '2020-12-15 18:06:52', '1', '2020-12-15 18:06:52', '2020-12-15 18:06:52');
INSERT INTO `transaction` VALUES ('203', '2020-11-25', 'Sales', 'OU/72/1', '10101', '24500.00', '0.00', '3', '12', '7', '31', 'Penjualan Product LA Bold', 'Aktif', '1', '2020-12-15 18:06:58', '1', '2020-12-15 18:06:58', '2020-12-15 18:06:58');
INSERT INTO `transaction` VALUES ('204', '2020-11-25', 'Sales', 'OU/72/1', '40101', '0.00', '24500.00', '3', '12', '7', '31', 'Penjualan Product LA Bold', 'Aktif', '1', '2020-12-15 18:06:58', '1', '2020-12-15 18:06:58', '2020-12-15 18:06:58');
INSERT INTO `transaction` VALUES ('205', '2020-11-25', 'Sales', 'OU/72/1', '50101', '23250.00', '0.00', '3', '12', '7', '31', 'Penjualan Product LA Bold', 'Aktif', '1', '2020-12-15 18:06:58', '1', '2020-12-15 18:06:58', '2020-12-15 18:06:58');
INSERT INTO `transaction` VALUES ('206', '2020-11-25', 'Sales', 'OU/72/1', '10201', '0.00', '23250.00', '3', '12', '7', '31', 'Penjualan Product LA Bold', 'Aktif', '1', '2020-12-15 18:06:58', '1', '2020-12-15 18:06:58', '2020-12-15 18:06:58');
INSERT INTO `transaction` VALUES ('207', '2020-11-25', 'Sales', 'OU/73/1', '10101', '45000.00', '0.00', '3', '13', '7', '32', 'Penjualan Product Dji Sam Soe', 'Aktif', '1', '2020-12-15 18:07:06', '1', '2020-12-15 18:07:06', '2020-12-15 18:07:06');
INSERT INTO `transaction` VALUES ('208', '2020-11-25', 'Sales', 'OU/73/1', '40101', '0.00', '45000.00', '3', '13', '7', '32', 'Penjualan Product Dji Sam Soe', 'Aktif', '1', '2020-12-15 18:07:06', '1', '2020-12-15 18:07:06', '2020-12-15 18:07:06');
INSERT INTO `transaction` VALUES ('209', '2020-11-25', 'Sales', 'OU/73/1', '50101', '43000.00', '0.00', '3', '13', '7', '32', 'Penjualan Product Dji Sam Soe', 'Aktif', '1', '2020-12-15 18:07:06', '1', '2020-12-15 18:07:06', '2020-12-15 18:07:06');
INSERT INTO `transaction` VALUES ('210', '2020-11-25', 'Sales', 'OU/73/1', '10201', '0.00', '43000.00', '3', '13', '7', '32', 'Penjualan Product Dji Sam Soe', 'Aktif', '1', '2020-12-15 18:07:06', '1', '2020-12-15 18:07:06', '2020-12-15 18:07:06');
INSERT INTO `transaction` VALUES ('211', '2020-11-25', 'Sales', 'OU/74/1', '10101', '19500.00', '0.00', '3', '23', '7', '33', 'Penjualan Product Magnum Mild', 'Aktif', '1', '2020-12-15 18:07:14', '1', '2020-12-15 18:07:14', '2020-12-15 18:07:14');
INSERT INTO `transaction` VALUES ('212', '2020-11-25', 'Sales', 'OU/74/1', '40101', '0.00', '19500.00', '3', '23', '7', '33', 'Penjualan Product Magnum Mild', 'Aktif', '1', '2020-12-15 18:07:14', '1', '2020-12-15 18:07:14', '2020-12-15 18:07:14');
INSERT INTO `transaction` VALUES ('213', '2020-11-25', 'Sales', 'OU/74/1', '50101', '18400.00', '0.00', '3', '23', '7', '33', 'Penjualan Product Magnum Mild', 'Aktif', '1', '2020-12-15 18:07:14', '1', '2020-12-15 18:07:14', '2020-12-15 18:07:14');
INSERT INTO `transaction` VALUES ('214', '2020-11-25', 'Sales', 'OU/74/1', '10201', '0.00', '18400.00', '3', '23', '7', '33', 'Penjualan Product Magnum Mild', 'Aktif', '1', '2020-12-15 18:07:14', '1', '2020-12-15 18:07:14', '2020-12-15 18:07:14');
INSERT INTO `transaction` VALUES ('215', '2020-11-25', 'Sales', 'OU/75/1', '10101', '13500.00', '0.00', '3', '15', '7', '34', 'Penjualan Product Pena Mild', 'Aktif', '1', '2020-12-15 18:07:21', '1', '2020-12-15 18:07:21', '2020-12-15 18:07:21');
INSERT INTO `transaction` VALUES ('216', '2020-11-25', 'Sales', 'OU/75/1', '40101', '0.00', '13500.00', '3', '15', '7', '34', 'Penjualan Product Pena Mild', 'Aktif', '1', '2020-12-15 18:07:21', '1', '2020-12-15 18:07:21', '2020-12-15 18:07:21');
INSERT INTO `transaction` VALUES ('217', '2020-11-25', 'Sales', 'OU/75/1', '50101', '12450.00', '0.00', '3', '15', '7', '34', 'Penjualan Product Pena Mild', 'Aktif', '1', '2020-12-15 18:07:21', '1', '2020-12-15 18:07:21', '2020-12-15 18:07:21');
INSERT INTO `transaction` VALUES ('218', '2020-11-25', 'Sales', 'OU/75/1', '10201', '0.00', '12450.00', '3', '15', '7', '34', 'Penjualan Product Pena Mild', 'Aktif', '1', '2020-12-15 18:07:21', '1', '2020-12-15 18:07:21', '2020-12-15 18:07:21');
INSERT INTO `transaction` VALUES ('219', '2020-11-25', 'Sales', 'OU/76/1', '10101', '15000.00', '0.00', '3', '17', '7', '35', 'Penjualan Product GL Mild', 'Aktif', '1', '2020-12-15 18:07:27', '1', '2020-12-15 18:07:27', '2020-12-15 18:07:27');
INSERT INTO `transaction` VALUES ('220', '2020-11-25', 'Sales', 'OU/76/1', '40101', '0.00', '15000.00', '3', '17', '7', '35', 'Penjualan Product GL Mild', 'Aktif', '1', '2020-12-15 18:07:27', '1', '2020-12-15 18:07:27', '2020-12-15 18:07:27');
INSERT INTO `transaction` VALUES ('221', '2020-11-25', 'Sales', 'OU/76/1', '50101', '14000.00', '0.00', '3', '17', '7', '35', 'Penjualan Product GL Mild', 'Aktif', '1', '2020-12-15 18:07:27', '1', '2020-12-15 18:07:27', '2020-12-15 18:07:27');
INSERT INTO `transaction` VALUES ('222', '2020-11-25', 'Sales', 'OU/76/1', '10201', '0.00', '14000.00', '3', '17', '7', '35', 'Penjualan Product GL Mild', 'Aktif', '1', '2020-12-15 18:07:27', '1', '2020-12-15 18:07:27', '2020-12-15 18:07:27');
INSERT INTO `transaction` VALUES ('223', '2020-12-03', 'Sales', 'OU/77/1', '10101', '12500.00', '0.00', '3', '24', '7', '36', 'Penjualan Product Aga Kretek', 'Aktif', '1', '2020-12-15 18:07:34', '1', '2020-12-15 18:07:34', '2020-12-15 18:07:34');
INSERT INTO `transaction` VALUES ('224', '2020-12-03', 'Sales', 'OU/77/1', '40101', '0.00', '12500.00', '3', '24', '7', '36', 'Penjualan Product Aga Kretek', 'Aktif', '1', '2020-12-15 18:07:34', '1', '2020-12-15 18:07:34', '2020-12-15 18:07:34');
INSERT INTO `transaction` VALUES ('225', '2020-12-03', 'Sales', 'OU/77/1', '50101', '11625.00', '0.00', '3', '24', '7', '36', 'Penjualan Product Aga Kretek', 'Aktif', '1', '2020-12-15 18:07:35', '1', '2020-12-15 18:07:35', '2020-12-15 18:07:35');
INSERT INTO `transaction` VALUES ('226', '2020-12-03', 'Sales', 'OU/77/1', '10201', '0.00', '11625.00', '3', '24', '7', '36', 'Penjualan Product Aga Kretek', 'Aktif', '1', '2020-12-15 18:07:35', '1', '2020-12-15 18:07:35', '2020-12-15 18:07:35');
INSERT INTO `transaction` VALUES ('227', '2020-11-25', 'Sales', 'OU/78/1', '10101', '2000.00', '0.00', '3', '20', '7', '37', 'Penjualan Product Korek Api', 'Aktif', '1', '2020-12-15 18:07:41', '1', '2020-12-15 18:07:41', '2020-12-15 18:07:41');
INSERT INTO `transaction` VALUES ('228', '2020-11-25', 'Sales', 'OU/78/1', '40104', '0.00', '2000.00', '3', '20', '7', '37', 'Penjualan Product Korek Api', 'Aktif', '1', '2020-12-15 18:07:41', '1', '2020-12-15 18:07:41', '2020-12-15 18:07:41');
INSERT INTO `transaction` VALUES ('229', '2020-11-25', 'Sales', 'OU/78/1', '50104', '1600.00', '0.00', '3', '20', '7', '37', 'Penjualan Product Korek Api', 'Aktif', '1', '2020-12-15 18:07:41', '1', '2020-12-15 18:07:41', '2020-12-16 07:34:35');
INSERT INTO `transaction` VALUES ('230', '2020-11-25', 'Sales', 'OU/78/1', '10204', '0.00', '1600.00', '3', '20', '7', '37', 'Penjualan Product Korek Api', 'Aktif', '1', '2020-12-15 18:07:41', '1', '2020-12-15 18:07:41', '2020-12-15 18:07:41');
INSERT INTO `transaction` VALUES ('231', '2020-11-25', 'Sales', 'OU/79/1', '10101', '211500.00', '0.00', '1', '2', '7', '38', 'Penjualan Product Gudang Garam Surya 16', 'Aktif', '1', '2020-12-15 18:17:23', '1', '2020-12-15 18:17:23', '2020-12-15 18:17:23');
INSERT INTO `transaction` VALUES ('232', '2020-11-25', 'Sales', 'OU/79/1', '40101', '0.00', '211500.00', '1', '2', '7', '38', 'Penjualan Product Gudang Garam Surya 16', 'Aktif', '1', '2020-12-15 18:17:23', '1', '2020-12-15 18:17:23', '2020-12-15 18:17:23');
INSERT INTO `transaction` VALUES ('233', '2020-11-25', 'Sales', 'OU/79/1', '50101', '198450.00', '0.00', '1', '2', '7', '38', 'Penjualan Product Gudang Garam Surya 16', 'Aktif', '1', '2020-12-15 18:17:23', '1', '2020-12-15 18:17:23', '2020-12-15 18:17:23');
INSERT INTO `transaction` VALUES ('234', '2020-11-25', 'Sales', 'OU/79/1', '10201', '0.00', '198450.00', '1', '2', '7', '38', 'Penjualan Product Gudang Garam Surya 16', 'Aktif', '1', '2020-12-15 18:17:23', '1', '2020-12-15 18:17:23', '2020-12-15 18:17:23');
INSERT INTO `transaction` VALUES ('235', '2020-11-25', 'Sales', 'OU/80/1', '10101', '35000.00', '0.00', '1', '1', '7', '39', 'Penjualan Product Gudang Garam Surya 12', 'Aktif', '1', '2020-12-15 18:17:30', '1', '2020-12-15 18:17:30', '2020-12-15 18:17:30');
INSERT INTO `transaction` VALUES ('236', '2020-11-25', 'Sales', 'OU/80/1', '40101', '0.00', '35000.00', '1', '1', '7', '39', 'Penjualan Product Gudang Garam Surya 12', 'Aktif', '1', '2020-12-15 18:17:30', '1', '2020-12-15 18:17:30', '2020-12-15 18:17:30');
INSERT INTO `transaction` VALUES ('237', '2020-11-25', 'Sales', 'OU/80/1', '50101', '33000.00', '0.00', '1', '1', '7', '39', 'Penjualan Product Gudang Garam Surya 12', 'Aktif', '1', '2020-12-15 18:17:30', '1', '2020-12-15 18:17:30', '2020-12-15 18:17:30');
INSERT INTO `transaction` VALUES ('238', '2020-11-25', 'Sales', 'OU/80/1', '10201', '0.00', '33000.00', '1', '1', '7', '39', 'Penjualan Product Gudang Garam Surya 12', 'Aktif', '1', '2020-12-15 18:17:30', '1', '2020-12-15 18:17:30', '2020-12-15 18:17:30');
INSERT INTO `transaction` VALUES ('239', '2020-11-25', 'Sales', 'OU/81/1', '10101', '117500.00', '0.00', '1', '3', '7', '40', 'Penjualan Product Sampoerna Mild 16', 'Aktif', '1', '2020-12-15 18:17:36', '1', '2020-12-15 18:17:36', '2020-12-15 18:17:36');
INSERT INTO `transaction` VALUES ('240', '2020-11-25', 'Sales', 'OU/81/1', '40101', '0.00', '117500.00', '1', '3', '7', '40', 'Penjualan Product Sampoerna Mild 16', 'Aktif', '1', '2020-12-15 18:17:36', '1', '2020-12-15 18:17:36', '2020-12-15 18:17:36');
INSERT INTO `transaction` VALUES ('241', '2020-11-25', 'Sales', 'OU/81/1', '50101', '110250.00', '0.00', '1', '3', '7', '40', 'Penjualan Product Sampoerna Mild 16', 'Aktif', '1', '2020-12-15 18:17:36', '1', '2020-12-15 18:17:36', '2020-12-15 18:17:36');
INSERT INTO `transaction` VALUES ('242', '2020-11-25', 'Sales', 'OU/81/1', '10201', '0.00', '110250.00', '1', '3', '7', '40', 'Penjualan Product Sampoerna Mild 16', 'Aktif', '1', '2020-12-15 18:17:36', '1', '2020-12-15 18:17:36', '2020-12-15 18:17:36');
INSERT INTO `transaction` VALUES ('243', '2020-11-25', 'Sales', 'OU/82/1', '10101', '16000.00', '0.00', '1', '16', '7', '41', 'Penjualan Product Geo Mild', 'Aktif', '1', '2020-12-15 18:17:41', '1', '2020-12-15 18:17:41', '2020-12-15 18:17:41');
INSERT INTO `transaction` VALUES ('244', '2020-11-25', 'Sales', 'OU/82/1', '40101', '0.00', '16000.00', '1', '16', '7', '41', 'Penjualan Product Geo Mild', 'Aktif', '1', '2020-12-15 18:17:41', '1', '2020-12-15 18:17:41', '2020-12-15 18:17:41');
INSERT INTO `transaction` VALUES ('245', '2020-11-25', 'Sales', 'OU/82/1', '50101', '14750.00', '0.00', '1', '16', '7', '41', 'Penjualan Product Geo Mild', 'Aktif', '1', '2020-12-15 18:17:42', '1', '2020-12-15 18:17:42', '2020-12-15 18:17:42');
INSERT INTO `transaction` VALUES ('246', '2020-11-25', 'Sales', 'OU/82/1', '10201', '0.00', '14750.00', '1', '16', '7', '41', 'Penjualan Product Geo Mild', 'Aktif', '1', '2020-12-15 18:17:42', '1', '2020-12-15 18:17:42', '2020-12-15 18:17:42');
INSERT INTO `transaction` VALUES ('247', '2020-11-25', 'Sales', 'OU/83/1', '10101', '23500.00', '0.00', '1', '2', '7', '42', 'Penjualan Product Gudang Garam Surya 16', 'Aktif', '1', '2020-12-15 18:27:15', '1', '2020-12-15 18:27:15', '2020-12-15 18:27:15');
INSERT INTO `transaction` VALUES ('248', '2020-11-25', 'Sales', 'OU/83/1', '40101', '0.00', '23500.00', '1', '2', '7', '42', 'Penjualan Product Gudang Garam Surya 16', 'Aktif', '1', '2020-12-15 18:27:15', '1', '2020-12-15 18:27:15', '2020-12-15 18:27:15');
INSERT INTO `transaction` VALUES ('249', '2020-11-25', 'Sales', 'OU/83/1', '50101', '22050.00', '0.00', '1', '2', '7', '42', 'Penjualan Product Gudang Garam Surya 16', 'Aktif', '1', '2020-12-15 18:27:15', '1', '2020-12-15 18:27:15', '2020-12-15 18:27:15');
INSERT INTO `transaction` VALUES ('250', '2020-11-25', 'Sales', 'OU/83/1', '10201', '0.00', '22050.00', '1', '2', '7', '42', 'Penjualan Product Gudang Garam Surya 16', 'Aktif', '1', '2020-12-15 18:27:15', '1', '2020-12-15 18:27:15', '2020-12-15 18:27:15');
INSERT INTO `transaction` VALUES ('251', '2020-11-25', 'Sales', 'OU/84/1', '10101', '70500.00', '0.00', '1', '2', '7', '43', 'Penjualan Product Gudang Garam Surya 16', 'Aktif', '1', '2020-12-15 18:27:19', '1', '2020-12-15 18:27:19', '2020-12-15 18:27:19');
INSERT INTO `transaction` VALUES ('252', '2020-11-25', 'Sales', 'OU/84/1', '40101', '0.00', '70500.00', '1', '2', '7', '43', 'Penjualan Product Gudang Garam Surya 16', 'Aktif', '1', '2020-12-15 18:27:19', '1', '2020-12-15 18:27:19', '2020-12-15 18:27:19');
INSERT INTO `transaction` VALUES ('253', '2020-11-25', 'Sales', 'OU/84/1', '50101', '66150.00', '0.00', '1', '2', '7', '43', 'Penjualan Product Gudang Garam Surya 16', 'Aktif', '1', '2020-12-15 18:27:20', '1', '2020-12-15 18:27:20', '2020-12-15 18:27:20');
INSERT INTO `transaction` VALUES ('254', '2020-11-25', 'Sales', 'OU/84/1', '10201', '0.00', '66150.00', '1', '2', '7', '43', 'Penjualan Product Gudang Garam Surya 16', 'Aktif', '1', '2020-12-15 18:27:20', '1', '2020-12-15 18:27:20', '2020-12-15 18:27:20');
INSERT INTO `transaction` VALUES ('255', '2020-11-25', 'Sales', 'OU/85/1', '10101', '122500.00', '0.00', '1', '1', '7', '44', 'Penjualan Product Gudang Garam Surya 12', 'Aktif', '1', '2020-12-15 18:27:24', '1', '2020-12-15 18:27:24', '2020-12-15 18:27:24');
INSERT INTO `transaction` VALUES ('256', '2020-11-25', 'Sales', 'OU/85/1', '40101', '0.00', '122500.00', '1', '1', '7', '44', 'Penjualan Product Gudang Garam Surya 12', 'Aktif', '1', '2020-12-15 18:27:24', '1', '2020-12-15 18:27:24', '2020-12-15 18:27:24');
INSERT INTO `transaction` VALUES ('257', '2020-11-25', 'Sales', 'OU/85/1', '50101', '115500.00', '0.00', '1', '1', '7', '44', 'Penjualan Product Gudang Garam Surya 12', 'Aktif', '1', '2020-12-15 18:27:24', '1', '2020-12-15 18:27:24', '2020-12-15 18:27:24');
INSERT INTO `transaction` VALUES ('258', '2020-11-25', 'Sales', 'OU/85/1', '10201', '0.00', '115500.00', '1', '1', '7', '44', 'Penjualan Product Gudang Garam Surya 12', 'Aktif', '1', '2020-12-15 18:27:24', '1', '2020-12-15 18:27:24', '2020-12-15 18:27:24');
INSERT INTO `transaction` VALUES ('259', '2020-11-25', 'Sales', 'OU/86/1', '10101', '70500.00', '0.00', '1', '3', '7', '45', 'Penjualan Product Sampoerna Mild 16', 'Aktif', '1', '2020-12-15 18:27:28', '1', '2020-12-15 18:27:28', '2020-12-15 18:27:28');
INSERT INTO `transaction` VALUES ('260', '2020-11-25', 'Sales', 'OU/86/1', '40101', '0.00', '70500.00', '1', '3', '7', '45', 'Penjualan Product Sampoerna Mild 16', 'Aktif', '1', '2020-12-15 18:27:28', '1', '2020-12-15 18:27:28', '2020-12-15 18:27:28');
INSERT INTO `transaction` VALUES ('261', '2020-11-25', 'Sales', 'OU/86/1', '50101', '66150.00', '0.00', '1', '3', '7', '45', 'Penjualan Product Sampoerna Mild 16', 'Aktif', '1', '2020-12-15 18:27:28', '1', '2020-12-15 18:27:28', '2020-12-15 18:27:28');
INSERT INTO `transaction` VALUES ('262', '2020-11-25', 'Sales', 'OU/86/1', '10201', '0.00', '66150.00', '1', '3', '7', '45', 'Penjualan Product Sampoerna Mild 16', 'Aktif', '1', '2020-12-15 18:27:28', '1', '2020-12-15 18:27:28', '2020-12-15 18:27:28');
INSERT INTO `transaction` VALUES ('263', '2020-11-25', 'Sales', 'OU/87/1', '10101', '28500.00', '0.00', '1', '9', '7', '46', 'Penjualan Product Marlboro Hitam', 'Aktif', '1', '2020-12-15 18:27:33', '1', '2020-12-15 18:27:33', '2020-12-15 18:27:33');
INSERT INTO `transaction` VALUES ('264', '2020-11-25', 'Sales', 'OU/87/1', '40101', '0.00', '28500.00', '1', '9', '7', '46', 'Penjualan Product Marlboro Hitam', 'Aktif', '1', '2020-12-15 18:27:33', '1', '2020-12-15 18:27:33', '2020-12-15 18:27:33');
INSERT INTO `transaction` VALUES ('265', '2020-11-25', 'Sales', 'OU/87/1', '50101', '27600.00', '0.00', '1', '9', '7', '46', 'Penjualan Product Marlboro Hitam', 'Aktif', '1', '2020-12-15 18:27:34', '1', '2020-12-15 18:27:34', '2020-12-15 18:27:34');
INSERT INTO `transaction` VALUES ('266', '2020-11-25', 'Sales', 'OU/87/1', '10201', '0.00', '27600.00', '1', '9', '7', '46', 'Penjualan Product Marlboro Hitam', 'Aktif', '1', '2020-12-15 18:27:34', '1', '2020-12-15 18:27:34', '2020-12-15 18:27:34');
INSERT INTO `transaction` VALUES ('267', '2020-11-25', 'Sales', 'OU/88/1', '10101', '35000.00', '0.00', '1', '10', '7', '47', 'Penjualan Product Gudang Garam International', 'Aktif', '1', '2020-12-15 18:27:40', '1', '2020-12-15 18:27:40', '2020-12-15 18:27:40');
INSERT INTO `transaction` VALUES ('268', '2020-11-25', 'Sales', 'OU/88/1', '40101', '0.00', '35000.00', '1', '10', '7', '47', 'Penjualan Product Gudang Garam International', 'Aktif', '1', '2020-12-15 18:27:40', '1', '2020-12-15 18:27:40', '2020-12-15 18:27:40');
INSERT INTO `transaction` VALUES ('269', '2020-11-25', 'Sales', 'OU/88/1', '50101', '33150.00', '0.00', '1', '10', '7', '47', 'Penjualan Product Gudang Garam International', 'Aktif', '1', '2020-12-15 18:27:40', '1', '2020-12-15 18:27:40', '2020-12-15 18:27:40');
INSERT INTO `transaction` VALUES ('270', '2020-11-25', 'Sales', 'OU/88/1', '10201', '0.00', '33150.00', '1', '10', '7', '47', 'Penjualan Product Gudang Garam International', 'Aktif', '1', '2020-12-15 18:27:40', '1', '2020-12-15 18:27:40', '2020-12-15 18:27:40');
INSERT INTO `transaction` VALUES ('271', '2020-11-25', 'Sales', 'OU/89/1', '10101', '45000.00', '0.00', '1', '13', '7', '48', 'Penjualan Product Dji Sam Soe', 'Aktif', '1', '2020-12-15 18:27:50', '1', '2020-12-15 18:27:50', '2020-12-15 18:27:50');
INSERT INTO `transaction` VALUES ('272', '2020-11-25', 'Sales', 'OU/89/1', '40101', '0.00', '45000.00', '1', '13', '7', '48', 'Penjualan Product Dji Sam Soe', 'Aktif', '1', '2020-12-15 18:27:50', '1', '2020-12-15 18:27:50', '2020-12-15 18:27:50');
INSERT INTO `transaction` VALUES ('273', '2020-11-25', 'Sales', 'OU/89/1', '50101', '43000.00', '0.00', '1', '13', '7', '48', 'Penjualan Product Dji Sam Soe', 'Aktif', '1', '2020-12-15 18:27:50', '1', '2020-12-15 18:27:50', '2020-12-15 18:27:50');
INSERT INTO `transaction` VALUES ('274', '2020-11-25', 'Sales', 'OU/89/1', '10201', '0.00', '43000.00', '1', '13', '7', '48', 'Penjualan Product Dji Sam Soe', 'Aktif', '1', '2020-12-15 18:27:50', '1', '2020-12-15 18:27:50', '2020-12-15 18:27:50');
INSERT INTO `transaction` VALUES ('275', '2020-11-25', 'Sales', 'OU/90/1', '10101', '13500.00', '0.00', '1', '15', '7', '49', 'Penjualan Product Pena Mild', 'Aktif', '1', '2020-12-15 18:27:56', '1', '2020-12-15 18:27:56', '2020-12-15 18:27:56');
INSERT INTO `transaction` VALUES ('276', '2020-11-25', 'Sales', 'OU/90/1', '40101', '0.00', '13500.00', '1', '15', '7', '49', 'Penjualan Product Pena Mild', 'Aktif', '1', '2020-12-15 18:27:56', '1', '2020-12-15 18:27:56', '2020-12-15 18:27:56');
INSERT INTO `transaction` VALUES ('277', '2020-11-25', 'Sales', 'OU/90/1', '50101', '12450.00', '0.00', '1', '15', '7', '49', 'Penjualan Product Pena Mild', 'Aktif', '1', '2020-12-15 18:27:56', '1', '2020-12-15 18:27:56', '2020-12-15 18:27:56');
INSERT INTO `transaction` VALUES ('278', '2020-11-25', 'Sales', 'OU/90/1', '10201', '0.00', '12450.00', '1', '15', '7', '49', 'Penjualan Product Pena Mild', 'Aktif', '1', '2020-12-15 18:27:56', '1', '2020-12-15 18:27:56', '2020-12-15 18:27:56');
INSERT INTO `transaction` VALUES ('279', '2020-11-25', 'Sales', 'OU/91/1', '10101', '3000.00', '0.00', '1', '19', '7', '50', 'Penjualan Product Gudang Garam Surya (Kaleng)', 'Aktif', '1', '2020-12-15 18:28:06', '1', '2020-12-15 18:28:06', '2020-12-15 18:28:06');
INSERT INTO `transaction` VALUES ('280', '2020-11-25', 'Sales', 'OU/91/1', '40101', '0.00', '3000.00', '1', '19', '7', '50', 'Penjualan Product Gudang Garam Surya (Kaleng)', 'Aktif', '1', '2020-12-15 18:28:06', '1', '2020-12-15 18:28:06', '2020-12-15 18:28:06');
INSERT INTO `transaction` VALUES ('281', '2020-11-25', 'Sales', 'OU/91/1', '50101', '2660.00', '0.00', '1', '19', '7', '50', 'Penjualan Product Gudang Garam Surya (Kaleng)', 'Aktif', '1', '2020-12-15 18:28:06', '1', '2020-12-15 18:28:06', '2020-12-15 18:28:06');
INSERT INTO `transaction` VALUES ('282', '2020-11-25', 'Sales', 'OU/91/1', '10201', '0.00', '2660.00', '1', '19', '7', '50', 'Penjualan Product Gudang Garam Surya (Kaleng)', 'Aktif', '1', '2020-12-15 18:28:06', '1', '2020-12-15 18:28:06', '2020-12-15 18:28:06');
INSERT INTO `transaction` VALUES ('283', '2020-11-25', 'Sales', 'OU/92/1', '10101', '70500.00', '0.00', '1', '2', '7', '51', 'Penjualan Product Gudang Garam Surya 16', 'Aktif', '1', '2020-12-15 18:31:13', '1', '2020-12-15 18:31:13', '2020-12-15 18:31:13');
INSERT INTO `transaction` VALUES ('284', '2020-11-25', 'Sales', 'OU/92/1', '40101', '0.00', '70500.00', '1', '2', '7', '51', 'Penjualan Product Gudang Garam Surya 16', 'Aktif', '1', '2020-12-15 18:31:13', '1', '2020-12-15 18:31:13', '2020-12-15 18:31:13');
INSERT INTO `transaction` VALUES ('285', '2020-11-25', 'Sales', 'OU/92/1', '50101', '66150.00', '0.00', '1', '2', '7', '51', 'Penjualan Product Gudang Garam Surya 16', 'Aktif', '1', '2020-12-15 18:31:13', '1', '2020-12-15 18:31:13', '2020-12-15 18:31:13');
INSERT INTO `transaction` VALUES ('286', '2020-11-25', 'Sales', 'OU/92/1', '10201', '0.00', '66150.00', '1', '2', '7', '51', 'Penjualan Product Gudang Garam Surya 16', 'Aktif', '1', '2020-12-15 18:31:13', '1', '2020-12-15 18:31:13', '2020-12-15 18:31:13');
INSERT INTO `transaction` VALUES ('287', '2020-11-25', 'Sales', 'OU/93/1', '10101', '17500.00', '0.00', '1', '1', '7', '52', 'Penjualan Product Gudang Garam Surya 12', 'Aktif', '1', '2020-12-15 18:31:18', '1', '2020-12-15 18:31:18', '2020-12-15 18:31:18');
INSERT INTO `transaction` VALUES ('288', '2020-11-25', 'Sales', 'OU/93/1', '40101', '0.00', '17500.00', '1', '1', '7', '52', 'Penjualan Product Gudang Garam Surya 12', 'Aktif', '1', '2020-12-15 18:31:18', '1', '2020-12-15 18:31:18', '2020-12-15 18:31:18');
INSERT INTO `transaction` VALUES ('289', '2020-11-25', 'Sales', 'OU/93/1', '50101', '16500.00', '0.00', '1', '1', '7', '52', 'Penjualan Product Gudang Garam Surya 12', 'Aktif', '1', '2020-12-15 18:31:18', '1', '2020-12-15 18:31:18', '2020-12-15 18:31:18');
INSERT INTO `transaction` VALUES ('290', '2020-11-25', 'Sales', 'OU/93/1', '10201', '0.00', '16500.00', '1', '1', '7', '52', 'Penjualan Product Gudang Garam Surya 12', 'Aktif', '1', '2020-12-15 18:31:18', '1', '2020-12-15 18:31:18', '2020-12-15 18:31:18');
INSERT INTO `transaction` VALUES ('291', '2020-12-06', 'Sales', 'OU/94/1', '10101', '17500.00', '0.00', '1', '1', '7', '53', 'Penjualan Product Gudang Garam Surya 12', 'Aktif', '1', '2020-12-15 18:31:23', '1', '2020-12-15 18:31:23', '2020-12-15 18:31:23');
INSERT INTO `transaction` VALUES ('292', '2020-12-06', 'Sales', 'OU/94/1', '40101', '0.00', '17500.00', '1', '1', '7', '53', 'Penjualan Product Gudang Garam Surya 12', 'Aktif', '1', '2020-12-15 18:31:23', '1', '2020-12-15 18:31:23', '2020-12-15 18:31:23');
INSERT INTO `transaction` VALUES ('293', '2020-12-06', 'Sales', 'OU/94/1', '50101', '16500.00', '0.00', '1', '1', '7', '53', 'Penjualan Product Gudang Garam Surya 12', 'Aktif', '1', '2020-12-15 18:31:23', '1', '2020-12-15 18:31:23', '2020-12-15 18:31:23');
INSERT INTO `transaction` VALUES ('294', '2020-12-06', 'Sales', 'OU/94/1', '10201', '0.00', '16500.00', '1', '1', '7', '53', 'Penjualan Product Gudang Garam Surya 12', 'Aktif', '1', '2020-12-15 18:31:23', '1', '2020-12-15 18:31:23', '2020-12-15 18:31:23');
INSERT INTO `transaction` VALUES ('295', '2020-11-25', 'Sales', 'OU/95/1', '10101', '32000.00', '0.00', '1', '16', '7', '54', 'Penjualan Product Geo Mild', 'Aktif', '1', '2020-12-15 18:31:30', '1', '2020-12-15 18:31:30', '2020-12-15 18:31:30');
INSERT INTO `transaction` VALUES ('296', '2020-11-25', 'Sales', 'OU/95/1', '40101', '0.00', '32000.00', '1', '16', '7', '54', 'Penjualan Product Geo Mild', 'Aktif', '1', '2020-12-15 18:31:30', '1', '2020-12-15 18:31:30', '2020-12-15 18:31:30');
INSERT INTO `transaction` VALUES ('297', '2020-11-25', 'Sales', 'OU/95/1', '50101', '29500.00', '0.00', '1', '16', '7', '54', 'Penjualan Product Geo Mild', 'Aktif', '1', '2020-12-15 18:31:30', '1', '2020-12-15 18:31:30', '2020-12-15 18:31:30');
INSERT INTO `transaction` VALUES ('298', '2020-11-25', 'Sales', 'OU/95/1', '10201', '0.00', '29500.00', '1', '16', '7', '54', 'Penjualan Product Geo Mild', 'Aktif', '1', '2020-12-15 18:31:30', '1', '2020-12-15 18:31:30', '2020-12-15 18:31:30');
INSERT INTO `transaction` VALUES ('299', '2020-12-19', 'Procurement', 'IN/96/1', '10201', '2463750.00', '0.00', '2', '1', '1', '43', 'Pembelian Product Gudang Garam Surya 12', 'Aktif', '1', '2020-12-19 13:42:50', '1', '2020-12-19 13:42:50', '2020-12-19 13:42:50');
INSERT INTO `transaction` VALUES ('300', '2020-12-19', 'Procurement', 'IN/96/1', '10101', '0.00', '2463750.00', '2', '1', '1', '43', 'Pembelian Product Gudang Garam Surya 12', 'Aktif', '1', '2020-12-19 13:42:50', '1', '2020-12-19 13:42:50', '2020-12-19 13:42:50');
INSERT INTO `transaction` VALUES ('301', '2020-12-19', 'Procurement', 'IN/97/1', '10201', '220250.00', '0.00', '2', '2', '1', '44', 'Pembelian Product Gudang Garam Surya 16', 'Aktif', '1', '2020-12-19 13:45:45', '1', '2020-12-19 13:45:45', '2020-12-19 13:45:45');
INSERT INTO `transaction` VALUES ('302', '2020-12-19', 'Procurement', 'IN/97/1', '10101', '0.00', '220250.00', '2', '2', '1', '44', 'Pembelian Product Gudang Garam Surya 16', 'Aktif', '1', '2020-12-19 13:45:45', '1', '2020-12-19 13:45:45', '2020-12-19 13:45:45');
INSERT INTO `transaction` VALUES ('303', '2020-12-19', 'Procurement', 'IN/98/1', '10201', '131800.00', '0.00', '2', '19', '1', '45', 'Pembelian Product Gudang Garam Surya (Kaleng)', 'Aktif', '1', '2020-12-19 13:46:06', '1', '2020-12-19 13:46:06', '2020-12-19 13:46:06');
INSERT INTO `transaction` VALUES ('304', '2020-12-19', 'Procurement', 'IN/98/1', '10101', '0.00', '131800.00', '2', '19', '1', '45', 'Pembelian Product Gudang Garam Surya (Kaleng)', 'Aktif', '1', '2020-12-19 13:46:06', '1', '2020-12-19 13:46:06', '2020-12-19 13:46:06');
INSERT INTO `transaction` VALUES ('305', '2020-12-19', 'Procurement', 'IN/99/1', '10201', '82725.00', '0.00', '4', '7', '1', '46', 'Pembelian Product Marlboro Merah', 'Aktif', '1', '2020-12-19 13:46:16', '1', '2020-12-19 13:46:16', '2020-12-19 13:46:16');
INSERT INTO `transaction` VALUES ('306', '2020-12-19', 'Procurement', 'IN/99/1', '10101', '0.00', '82725.00', '4', '7', '1', '46', 'Pembelian Product Marlboro Merah', 'Aktif', '1', '2020-12-19 13:46:16', '1', '2020-12-19 13:46:16', '2020-12-19 13:46:16');
INSERT INTO `transaction` VALUES ('307', '2020-12-19', 'Procurement', 'IN/100/1', '10201', '79000.00', '0.00', '4', '25', '1', '47', 'Pembelian Product Dji Sam Soe 12', 'Aktif', '1', '2020-12-19 13:46:23', '1', '2020-12-19 13:46:23', '2020-12-19 13:46:23');
INSERT INTO `transaction` VALUES ('308', '2020-12-19', 'Procurement', 'IN/100/1', '10101', '0.00', '79000.00', '4', '25', '1', '47', 'Pembelian Product Dji Sam Soe 12', 'Aktif', '1', '2020-12-19 13:46:23', '1', '2020-12-19 13:46:23', '2020-12-19 13:46:23');
INSERT INTO `transaction` VALUES ('309', '2020-12-19', 'Procurement', 'IN/101/1', '10201', '220000.00', '0.00', '4', '3', '1', '48', 'Pembelian Product Sampoerna Mild 16', 'Aktif', '1', '2020-12-19 13:46:28', '1', '2020-12-19 13:46:28', '2020-12-19 13:46:28');
INSERT INTO `transaction` VALUES ('310', '2020-12-19', 'Procurement', 'IN/101/1', '10101', '0.00', '220000.00', '4', '3', '1', '48', 'Pembelian Product Sampoerna Mild 16', 'Aktif', '1', '2020-12-19 13:46:28', '1', '2020-12-19 13:46:28', '2020-12-19 13:46:28');
INSERT INTO `transaction` VALUES ('311', '2020-11-29', 'Sales', 'OU/102/1', '10101', '136000.00', '0.00', '2', '1', '7', '55', 'Penjualan Product Gudang Garam Surya 12', 'Aktif', '1', '2020-12-19 15:54:01', '1', '2020-12-19 15:54:01', '2020-12-19 15:54:01');
INSERT INTO `transaction` VALUES ('312', '2020-11-29', 'Sales', 'OU/102/1', '40101', '0.00', '136000.00', '2', '1', '7', '55', 'Penjualan Product Gudang Garam Surya 12', 'Aktif', '1', '2020-12-19 15:54:01', '1', '2020-12-19 15:54:01', '2020-12-19 15:54:01');
INSERT INTO `transaction` VALUES ('313', '2020-11-29', 'Sales', 'OU/102/1', '50101', '131200.00', '0.00', '2', '1', '7', '55', 'Penjualan Product Gudang Garam Surya 12', 'Aktif', '1', '2020-12-19 15:54:01', '1', '2020-12-19 15:54:01', '2020-12-19 15:54:01');
INSERT INTO `transaction` VALUES ('314', '2020-11-29', 'Sales', 'OU/102/1', '10201', '0.00', '131200.00', '2', '1', '7', '55', 'Penjualan Product Gudang Garam Surya 12', 'Aktif', '1', '2020-12-19 15:54:01', '1', '2020-12-19 15:54:01', '2020-12-19 15:54:01');
INSERT INTO `transaction` VALUES ('315', '2020-12-06', 'Sales', 'OU/103/1', '10101', '1700000.00', '0.00', '2', '1', '7', '56', 'Penjualan Product Gudang Garam Surya 12', 'Aktif', '1', '2020-12-19 15:54:08', '1', '2020-12-19 15:54:08', '2020-12-19 15:54:08');
INSERT INTO `transaction` VALUES ('316', '2020-12-06', 'Sales', 'OU/103/1', '40101', '0.00', '1700000.00', '2', '1', '7', '56', 'Penjualan Product Gudang Garam Surya 12', 'Aktif', '1', '2020-12-19 15:54:08', '1', '2020-12-19 15:54:08', '2020-12-19 15:54:08');
INSERT INTO `transaction` VALUES ('317', '2020-12-06', 'Sales', 'OU/103/1', '50101', '1650000.00', '0.00', '2', '1', '7', '56', 'Penjualan Product Gudang Garam Surya 12', 'Aktif', '1', '2020-12-19 15:54:08', '1', '2020-12-19 15:54:08', '2020-12-19 15:54:08');
INSERT INTO `transaction` VALUES ('318', '2020-12-06', 'Sales', 'OU/103/1', '10201', '0.00', '1650000.00', '2', '1', '7', '56', 'Penjualan Product Gudang Garam Surya 12', 'Aktif', '1', '2020-12-19 15:54:08', '1', '2020-12-19 15:54:08', '2020-12-19 15:54:08');
INSERT INTO `transaction` VALUES ('319', '2020-11-23', 'Sales', 'OU/104/1', '10101', '46000.00', '0.00', '2', '2', '7', '57', 'Penjualan Product Gudang Garam Surya 16', 'Aktif', '1', '2020-12-19 15:54:14', '1', '2020-12-19 15:54:14', '2020-12-19 15:54:14');
INSERT INTO `transaction` VALUES ('320', '2020-11-23', 'Sales', 'OU/104/1', '40101', '0.00', '46000.00', '2', '2', '7', '57', 'Penjualan Product Gudang Garam Surya 16', 'Aktif', '1', '2020-12-19 15:54:14', '1', '2020-12-19 15:54:14', '2020-12-19 15:54:14');
INSERT INTO `transaction` VALUES ('321', '2020-11-23', 'Sales', 'OU/104/1', '50101', '44100.00', '0.00', '2', '2', '7', '57', 'Penjualan Product Gudang Garam Surya 16', 'Aktif', '1', '2020-12-19 15:54:14', '1', '2020-12-19 15:54:14', '2020-12-19 15:54:14');
INSERT INTO `transaction` VALUES ('322', '2020-11-23', 'Sales', 'OU/104/1', '10201', '0.00', '44100.00', '2', '2', '7', '57', 'Penjualan Product Gudang Garam Surya 16', 'Aktif', '1', '2020-12-19 15:54:14', '1', '2020-12-19 15:54:14', '2020-12-19 15:54:14');
INSERT INTO `transaction` VALUES ('323', '2020-12-06', 'Sales', 'OU/105/1', '10101', '138000.00', '0.00', '2', '2', '7', '58', 'Penjualan Product Gudang Garam Surya 16', 'Aktif', '1', '2020-12-19 15:54:20', '1', '2020-12-19 15:54:20', '2020-12-19 15:54:20');
INSERT INTO `transaction` VALUES ('324', '2020-12-06', 'Sales', 'OU/105/1', '40101', '0.00', '138000.00', '2', '2', '7', '58', 'Penjualan Product Gudang Garam Surya 16', 'Aktif', '1', '2020-12-19 15:54:20', '1', '2020-12-19 15:54:20', '2020-12-19 15:54:20');
INSERT INTO `transaction` VALUES ('325', '2020-12-06', 'Sales', 'OU/105/1', '50101', '132300.00', '0.00', '2', '2', '7', '58', 'Penjualan Product Gudang Garam Surya 16', 'Aktif', '1', '2020-12-19 15:54:20', '1', '2020-12-19 15:54:20', '2020-12-19 15:54:20');
INSERT INTO `transaction` VALUES ('326', '2020-12-06', 'Sales', 'OU/105/1', '10201', '0.00', '132300.00', '2', '2', '7', '58', 'Penjualan Product Gudang Garam Surya 16', 'Aktif', '1', '2020-12-19 15:54:20', '1', '2020-12-19 15:54:20', '2020-12-19 15:54:20');
INSERT INTO `transaction` VALUES ('327', '2020-11-23', 'Sales', 'OU/106/1', '10101', '23000.00', '0.00', '2', '3', '7', '59', 'Penjualan Product Sampoerna Mild 16', 'Aktif', '1', '2020-12-19 15:54:26', '1', '2020-12-19 15:54:26', '2020-12-19 15:54:26');
INSERT INTO `transaction` VALUES ('328', '2020-11-23', 'Sales', 'OU/106/1', '40101', '0.00', '23000.00', '2', '3', '7', '59', 'Penjualan Product Sampoerna Mild 16', 'Aktif', '1', '2020-12-19 15:54:26', '1', '2020-12-19 15:54:26', '2020-12-19 15:54:26');
INSERT INTO `transaction` VALUES ('329', '2020-11-23', 'Sales', 'OU/106/1', '50101', '22100.00', '0.00', '2', '3', '7', '59', 'Penjualan Product Sampoerna Mild 16', 'Aktif', '1', '2020-12-19 15:54:26', '1', '2020-12-19 15:54:26', '2020-12-19 15:54:26');
INSERT INTO `transaction` VALUES ('330', '2020-11-23', 'Sales', 'OU/106/1', '10201', '0.00', '22100.00', '2', '3', '7', '59', 'Penjualan Product Sampoerna Mild 16', 'Aktif', '1', '2020-12-19 15:54:26', '1', '2020-12-19 15:54:26', '2020-12-19 15:54:26');
INSERT INTO `transaction` VALUES ('331', '2020-11-23', 'Sales', 'OU/107/1', '10101', '43000.00', '0.00', '2', '5', '7', '60', 'Penjualan Product Umild 16', 'Aktif', '1', '2020-12-19 15:54:32', '1', '2020-12-19 15:54:32', '2020-12-19 15:54:32');
INSERT INTO `transaction` VALUES ('332', '2020-11-23', 'Sales', 'OU/107/1', '40101', '0.00', '43000.00', '2', '5', '7', '60', 'Penjualan Product Umild 16', 'Aktif', '1', '2020-12-19 15:54:32', '1', '2020-12-19 15:54:32', '2020-12-19 15:54:32');
INSERT INTO `transaction` VALUES ('333', '2020-11-23', 'Sales', 'OU/107/1', '50101', '40600.00', '0.00', '2', '5', '7', '60', 'Penjualan Product Umild 16', 'Aktif', '1', '2020-12-19 15:54:32', '1', '2020-12-19 15:54:32', '2020-12-19 15:54:32');
INSERT INTO `transaction` VALUES ('334', '2020-11-23', 'Sales', 'OU/107/1', '10201', '0.00', '40600.00', '2', '5', '7', '60', 'Penjualan Product Umild 16', 'Aktif', '1', '2020-12-19 15:54:32', '1', '2020-12-19 15:54:32', '2020-12-19 15:54:32');
INSERT INTO `transaction` VALUES ('335', '2020-11-23', 'Sales', 'OU/108/1', '10101', '45000.00', '0.00', '2', '22', '7', '61', 'Penjualan Product Class Mild 16', 'Aktif', '1', '2020-12-19 15:54:38', '1', '2020-12-19 15:54:38', '2020-12-19 15:54:38');
INSERT INTO `transaction` VALUES ('336', '2020-11-23', 'Sales', 'OU/108/1', '40101', '0.00', '45000.00', '2', '22', '7', '61', 'Penjualan Product Class Mild 16', 'Aktif', '1', '2020-12-19 15:54:38', '1', '2020-12-19 15:54:38', '2020-12-19 15:54:38');
INSERT INTO `transaction` VALUES ('337', '2020-11-23', 'Sales', 'OU/108/1', '50101', '43400.00', '0.00', '2', '22', '7', '61', 'Penjualan Product Class Mild 16', 'Aktif', '1', '2020-12-19 15:54:38', '1', '2020-12-19 15:54:38', '2020-12-19 15:54:38');
INSERT INTO `transaction` VALUES ('338', '2020-11-23', 'Sales', 'OU/108/1', '10201', '0.00', '43400.00', '2', '22', '7', '61', 'Penjualan Product Class Mild 16', 'Aktif', '1', '2020-12-19 15:54:38', '1', '2020-12-19 15:54:38', '2020-12-19 15:54:38');
INSERT INTO `transaction` VALUES ('339', '2020-11-23', 'Sales', 'OU/109/1', '10101', '58000.00', '0.00', '2', '7', '7', '62', 'Penjualan Product Marlboro Merah', 'Aktif', '1', '2020-12-19 15:54:44', '1', '2020-12-19 15:54:44', '2020-12-19 15:54:44');
INSERT INTO `transaction` VALUES ('340', '2020-11-23', 'Sales', 'OU/109/1', '40101', '0.00', '58000.00', '2', '7', '7', '62', 'Penjualan Product Marlboro Merah', 'Aktif', '1', '2020-12-19 15:54:44', '1', '2020-12-19 15:54:44', '2020-12-19 15:54:44');
INSERT INTO `transaction` VALUES ('341', '2020-11-23', 'Sales', 'OU/109/1', '50101', '55300.00', '0.00', '2', '7', '7', '62', 'Penjualan Product Marlboro Merah', 'Aktif', '1', '2020-12-19 15:54:44', '1', '2020-12-19 15:54:44', '2020-12-19 15:54:44');
INSERT INTO `transaction` VALUES ('342', '2020-11-23', 'Sales', 'OU/109/1', '10201', '0.00', '55300.00', '2', '7', '7', '62', 'Penjualan Product Marlboro Merah', 'Aktif', '1', '2020-12-19 15:54:44', '1', '2020-12-19 15:54:44', '2020-12-19 15:54:44');
INSERT INTO `transaction` VALUES ('347', '2020-11-29', 'Sales', 'OU/111/1', '10101', '225000.00', '0.00', '2', '19', '7', '64', 'Penjualan Product Gudang Garam Surya (Kaleng)', 'Aktif', '1', '2020-12-19 15:54:57', '1', '2020-12-19 15:54:57', '2020-12-19 15:54:57');
INSERT INTO `transaction` VALUES ('348', '2020-11-29', 'Sales', 'OU/111/1', '40101', '0.00', '225000.00', '2', '19', '7', '64', 'Penjualan Product Gudang Garam Surya (Kaleng)', 'Aktif', '1', '2020-12-19 15:54:57', '1', '2020-12-19 15:54:57', '2020-12-19 15:54:57');
INSERT INTO `transaction` VALUES ('349', '2020-11-29', 'Sales', 'OU/111/1', '50101', '198000.00', '0.00', '2', '19', '7', '64', 'Penjualan Product Gudang Garam Surya (Kaleng)', 'Aktif', '1', '2020-12-19 15:54:58', '1', '2020-12-19 15:54:58', '2020-12-19 15:54:58');
INSERT INTO `transaction` VALUES ('350', '2020-11-29', 'Sales', 'OU/111/1', '10201', '0.00', '198000.00', '2', '19', '7', '64', 'Penjualan Product Gudang Garam Surya (Kaleng)', 'Aktif', '1', '2020-12-19 15:54:58', '1', '2020-12-19 15:54:58', '2020-12-19 15:54:58');
INSERT INTO `transaction` VALUES ('351', '2020-11-23', 'Sales', 'OU/112/1', '10101', '116000.00', '0.00', '2', '9', '7', '65', 'Penjualan Product Marlboro Hitam', 'Aktif', '1', '2020-12-19 16:45:10', '1', '2020-12-19 16:45:10', '2020-12-19 16:45:10');
INSERT INTO `transaction` VALUES ('352', '2020-11-23', 'Sales', 'OU/112/1', '40101', '0.00', '116000.00', '2', '9', '7', '65', 'Penjualan Product Marlboro Hitam', 'Aktif', '1', '2020-12-19 16:45:10', '1', '2020-12-19 16:45:10', '2020-12-19 16:45:10');
INSERT INTO `transaction` VALUES ('353', '2020-11-23', 'Sales', 'OU/112/1', '50101', '110600.00', '0.00', '2', '9', '7', '65', 'Penjualan Product Marlboro Hitam', 'Aktif', '1', '2020-12-19 16:45:10', '1', '2020-12-19 16:45:10', '2020-12-19 16:45:10');
INSERT INTO `transaction` VALUES ('354', '2020-11-23', 'Sales', 'OU/112/1', '10201', '0.00', '110600.00', '2', '9', '7', '65', 'Penjualan Product Marlboro Hitam', 'Aktif', '1', '2020-12-19 16:45:10', '1', '2020-12-19 16:45:10', '2020-12-19 16:45:10');
INSERT INTO `transaction` VALUES ('355', '2020-12-02', 'Procurement', 'IN/113/1', '10205', '174000.00', '0.00', '4', '26', '8', '49', 'Pembelian Product Setelan Tie dye', 'Aktif', '1', '2020-12-19 17:09:57', '1', '2020-12-19 17:09:57', '2020-12-19 17:09:57');
INSERT INTO `transaction` VALUES ('356', '2020-12-02', 'Procurement', 'IN/113/1', '10101', '0.00', '174000.00', '4', '26', '8', '49', 'Pembelian Product Setelan Tie dye', 'Aktif', '1', '2020-12-19 17:09:57', '1', '2020-12-19 17:09:57', '2020-12-19 17:09:57');
INSERT INTO `transaction` VALUES ('357', '2020-12-02', 'Procurement', 'IN/114/1', '10205', '75000.00', '0.00', '4', '27', '8', '50', 'Pembelian Product Daster Arab', 'Aktif', '1', '2020-12-19 17:10:04', '1', '2020-12-19 17:10:04', '2020-12-19 17:10:04');
INSERT INTO `transaction` VALUES ('358', '2020-12-02', 'Procurement', 'IN/114/1', '10101', '0.00', '75000.00', '4', '27', '8', '50', 'Pembelian Product Daster Arab', 'Aktif', '1', '2020-12-19 17:10:04', '1', '2020-12-19 17:10:04', '2020-12-19 17:10:04');
INSERT INTO `transaction` VALUES ('359', '2020-12-05', 'Procurement', 'IN/115/1', '10205', '85000.00', '0.00', '4', '26', '8', '51', 'Pembelian Product Setelan Tie dye', 'Aktif', '1', '2020-12-19 17:10:11', '1', '2020-12-19 17:10:11', '2020-12-19 17:10:11');
INSERT INTO `transaction` VALUES ('360', '2020-12-05', 'Procurement', 'IN/115/1', '10101', '0.00', '85000.00', '4', '26', '8', '51', 'Pembelian Product Setelan Tie dye', 'Aktif', '1', '2020-12-19 17:10:11', '1', '2020-12-19 17:10:11', '2020-12-19 17:10:11');
INSERT INTO `transaction` VALUES ('361', '2020-12-11', 'Procurement', 'IN/116/1', '10205', '14000.00', '0.00', '4', '28', '8', '52', 'Pembelian Product Botol Minuman', 'Aktif', '1', '2020-12-19 17:10:16', '1', '2020-12-19 17:10:16', '2020-12-19 17:10:16');
INSERT INTO `transaction` VALUES ('362', '2020-12-11', 'Procurement', 'IN/116/1', '10101', '0.00', '14000.00', '4', '28', '8', '52', 'Pembelian Product Botol Minuman', 'Aktif', '1', '2020-12-19 17:10:16', '1', '2020-12-19 17:10:16', '2020-12-19 17:10:16');
INSERT INTO `transaction` VALUES ('363', '2020-12-11', 'Procurement', 'IN/117/1', '10205', '6500.00', '0.00', '4', '29', '8', '53', 'Pembelian Product Gantungan Baju', 'Aktif', '1', '2020-12-19 17:10:22', '1', '2020-12-19 17:10:22', '2020-12-19 17:10:22');
INSERT INTO `transaction` VALUES ('364', '2020-12-11', 'Procurement', 'IN/117/1', '10101', '0.00', '6500.00', '4', '29', '8', '53', 'Pembelian Product Gantungan Baju', 'Aktif', '1', '2020-12-19 17:10:22', '1', '2020-12-19 17:10:22', '2020-12-19 17:10:22');
INSERT INTO `transaction` VALUES ('365', '2020-12-12', 'Procurement', 'IN/118/1', '10205', '109000.00', '0.00', '4', '30', '8', '54', 'Pembelian Product Celana Cargo', 'Aktif', '1', '2020-12-19 17:10:28', '1', '2020-12-19 17:10:28', '2020-12-19 17:10:28');
INSERT INTO `transaction` VALUES ('366', '2020-12-12', 'Procurement', 'IN/118/1', '10101', '0.00', '109000.00', '4', '30', '8', '54', 'Pembelian Product Celana Cargo', 'Aktif', '1', '2020-12-19 17:10:28', '1', '2020-12-19 17:10:28', '2020-12-19 17:10:28');
INSERT INTO `transaction` VALUES ('367', '2020-12-15', 'Procurement', 'IN/119/1', '10205', '70000.00', '0.00', '4', '26', '8', '55', 'Pembelian Product Setelan Tie dye', 'Aktif', '1', '2020-12-19 17:10:34', '1', '2020-12-19 17:10:34', '2020-12-19 17:10:34');
INSERT INTO `transaction` VALUES ('368', '2020-12-15', 'Procurement', 'IN/119/1', '10101', '0.00', '70000.00', '4', '26', '8', '55', 'Pembelian Product Setelan Tie dye', 'Aktif', '1', '2020-12-19 17:10:34', '1', '2020-12-19 17:10:34', '2020-12-19 17:10:34');
INSERT INTO `transaction` VALUES ('369', '2020-12-02', 'Sales', 'OU/120/1', '10101', '100000.00', '0.00', '4', '26', '7', '66', 'Penjualan Product Setelan Tie dye', 'Aktif', '1', '2020-12-19 17:16:26', '1', '2020-12-19 17:16:26', '2020-12-19 17:16:26');
INSERT INTO `transaction` VALUES ('370', '2020-12-02', 'Sales', 'OU/120/1', '40105', '0.00', '100000.00', '4', '26', '7', '66', 'Penjualan Product Setelan Tie dye', 'Aktif', '1', '2020-12-19 17:16:26', '1', '2020-12-19 17:16:26', '2020-12-19 17:16:26');
INSERT INTO `transaction` VALUES ('371', '2020-12-02', 'Sales', 'OU/120/1', '50105', '87000.00', '0.00', '4', '26', '7', '66', 'Penjualan Product Setelan Tie dye', 'Aktif', '1', '2020-12-19 17:16:26', '1', '2020-12-19 17:16:26', '2020-12-19 17:16:26');
INSERT INTO `transaction` VALUES ('372', '2020-12-02', 'Sales', 'OU/120/1', '10205', '0.00', '87000.00', '4', '26', '7', '66', 'Penjualan Product Setelan Tie dye', 'Aktif', '1', '2020-12-19 17:16:26', '1', '2020-12-19 17:16:26', '2020-12-19 17:16:26');
INSERT INTO `transaction` VALUES ('373', '2020-12-02', 'Sales', 'OU/121/1', '10101', '90000.00', '0.00', '4', '26', '7', '67', 'Penjualan Product Setelan Tie dye', 'Aktif', '1', '2020-12-19 17:16:35', '1', '2020-12-19 17:16:35', '2020-12-19 17:16:35');
INSERT INTO `transaction` VALUES ('374', '2020-12-02', 'Sales', 'OU/121/1', '40105', '0.00', '90000.00', '4', '26', '7', '67', 'Penjualan Product Setelan Tie dye', 'Aktif', '1', '2020-12-19 17:16:35', '1', '2020-12-19 17:16:35', '2020-12-19 17:16:35');
INSERT INTO `transaction` VALUES ('375', '2020-12-02', 'Sales', 'OU/121/1', '50105', '87000.00', '0.00', '4', '26', '7', '67', 'Penjualan Product Setelan Tie dye', 'Aktif', '1', '2020-12-19 17:16:35', '1', '2020-12-19 17:16:35', '2020-12-19 17:16:35');
INSERT INTO `transaction` VALUES ('376', '2020-12-02', 'Sales', 'OU/121/1', '10205', '0.00', '87000.00', '4', '26', '7', '67', 'Penjualan Product Setelan Tie dye', 'Aktif', '1', '2020-12-19 17:16:35', '1', '2020-12-19 17:16:35', '2020-12-19 17:16:35');
INSERT INTO `transaction` VALUES ('377', '2020-12-02', 'Sales', 'OU/122/1', '10101', '85000.00', '0.00', '4', '27', '7', '68', 'Penjualan Product Daster Arab', 'Aktif', '1', '2020-12-19 17:16:42', '1', '2020-12-19 17:16:42', '2020-12-19 17:16:42');
INSERT INTO `transaction` VALUES ('378', '2020-12-02', 'Sales', 'OU/122/1', '40105', '0.00', '85000.00', '4', '27', '7', '68', 'Penjualan Product Daster Arab', 'Aktif', '1', '2020-12-19 17:16:42', '1', '2020-12-19 17:16:42', '2020-12-19 17:16:42');
INSERT INTO `transaction` VALUES ('379', '2020-12-02', 'Sales', 'OU/122/1', '50105', '75000.00', '0.00', '4', '27', '7', '68', 'Penjualan Product Daster Arab', 'Aktif', '1', '2020-12-19 17:16:42', '1', '2020-12-19 17:16:42', '2020-12-19 17:16:42');
INSERT INTO `transaction` VALUES ('380', '2020-12-02', 'Sales', 'OU/122/1', '10205', '0.00', '75000.00', '4', '27', '7', '68', 'Penjualan Product Daster Arab', 'Aktif', '1', '2020-12-19 17:16:42', '1', '2020-12-19 17:16:42', '2020-12-19 17:16:42');
INSERT INTO `transaction` VALUES ('381', '2020-12-05', 'Sales', 'OU/123/1', '10101', '100000.00', '0.00', '4', '26', '7', '69', 'Penjualan Product Setelan Tie dye', 'Aktif', '1', '2020-12-19 17:16:57', '1', '2020-12-19 17:16:57', '2020-12-19 17:16:57');
INSERT INTO `transaction` VALUES ('382', '2020-12-05', 'Sales', 'OU/123/1', '40105', '0.00', '100000.00', '4', '26', '7', '69', 'Penjualan Product Setelan Tie dye', 'Aktif', '1', '2020-12-19 17:16:57', '1', '2020-12-19 17:16:57', '2020-12-19 17:16:57');
INSERT INTO `transaction` VALUES ('383', '2020-12-05', 'Sales', 'OU/123/1', '50105', '85000.00', '0.00', '4', '26', '7', '69', 'Penjualan Product Setelan Tie dye', 'Aktif', '1', '2020-12-19 17:16:57', '1', '2020-12-19 17:16:57', '2020-12-19 17:16:57');
INSERT INTO `transaction` VALUES ('384', '2020-12-05', 'Sales', 'OU/123/1', '10205', '0.00', '85000.00', '4', '26', '7', '69', 'Penjualan Product Setelan Tie dye', 'Aktif', '1', '2020-12-19 17:16:57', '1', '2020-12-19 17:16:57', '2020-12-19 17:16:57');
INSERT INTO `transaction` VALUES ('385', '2020-12-11', 'Sales', 'OU/124/1', '10101', '20000.00', '0.00', '4', '28', '7', '70', 'Penjualan Product Botol Minuman', 'Aktif', '1', '2020-12-19 17:17:05', '1', '2020-12-19 17:17:05', '2020-12-19 17:17:05');
INSERT INTO `transaction` VALUES ('386', '2020-12-11', 'Sales', 'OU/124/1', '40105', '0.00', '20000.00', '4', '28', '7', '70', 'Penjualan Product Botol Minuman', 'Aktif', '1', '2020-12-19 17:17:05', '1', '2020-12-19 17:17:05', '2020-12-19 17:17:05');
INSERT INTO `transaction` VALUES ('387', '2020-12-11', 'Sales', 'OU/124/1', '50105', '14000.00', '0.00', '4', '28', '7', '70', 'Penjualan Product Botol Minuman', 'Aktif', '1', '2020-12-19 17:17:06', '1', '2020-12-19 17:17:06', '2020-12-19 17:17:06');
INSERT INTO `transaction` VALUES ('388', '2020-12-11', 'Sales', 'OU/124/1', '10205', '0.00', '14000.00', '4', '28', '7', '70', 'Penjualan Product Botol Minuman', 'Aktif', '1', '2020-12-19 17:17:06', '1', '2020-12-19 17:17:06', '2020-12-19 17:17:06');
INSERT INTO `transaction` VALUES ('389', '2020-12-11', 'Sales', 'OU/125/1', '10101', '10000.00', '0.00', '4', '29', '7', '71', 'Penjualan Product Gantungan Baju', 'Aktif', '1', '2020-12-19 17:17:12', '1', '2020-12-19 17:17:12', '2020-12-19 17:17:12');
INSERT INTO `transaction` VALUES ('390', '2020-12-11', 'Sales', 'OU/125/1', '40105', '0.00', '10000.00', '4', '29', '7', '71', 'Penjualan Product Gantungan Baju', 'Aktif', '1', '2020-12-19 17:17:12', '1', '2020-12-19 17:17:12', '2020-12-19 17:17:12');
INSERT INTO `transaction` VALUES ('391', '2020-12-11', 'Sales', 'OU/125/1', '50105', '6500.00', '0.00', '4', '29', '7', '71', 'Penjualan Product Gantungan Baju', 'Aktif', '1', '2020-12-19 17:17:12', '1', '2020-12-19 17:17:12', '2020-12-19 17:17:12');
INSERT INTO `transaction` VALUES ('392', '2020-12-11', 'Sales', 'OU/125/1', '10205', '0.00', '6500.00', '4', '29', '7', '71', 'Penjualan Product Gantungan Baju', 'Aktif', '1', '2020-12-19 17:17:12', '1', '2020-12-19 17:17:12', '2020-12-19 17:17:12');
INSERT INTO `transaction` VALUES ('393', '2020-12-12', 'Sales', 'OU/126/1', '10101', '120000.00', '0.00', '4', '30', '7', '72', 'Penjualan Product Celana Cargo', 'Aktif', '1', '2020-12-19 17:17:21', '1', '2020-12-19 17:17:21', '2020-12-19 17:17:21');
INSERT INTO `transaction` VALUES ('394', '2020-12-12', 'Sales', 'OU/126/1', '40105', '0.00', '120000.00', '4', '30', '7', '72', 'Penjualan Product Celana Cargo', 'Aktif', '1', '2020-12-19 17:17:21', '1', '2020-12-19 17:17:21', '2020-12-19 17:17:21');
INSERT INTO `transaction` VALUES ('395', '2020-12-12', 'Sales', 'OU/126/1', '50105', '109000.00', '0.00', '4', '30', '7', '72', 'Penjualan Product Celana Cargo', 'Aktif', '1', '2020-12-19 17:17:22', '1', '2020-12-19 17:17:22', '2020-12-19 17:17:22');
INSERT INTO `transaction` VALUES ('396', '2020-12-12', 'Sales', 'OU/126/1', '10205', '0.00', '109000.00', '4', '30', '7', '72', 'Penjualan Product Celana Cargo', 'Aktif', '1', '2020-12-19 17:17:22', '1', '2020-12-19 17:17:22', '2020-12-19 17:17:22');
INSERT INTO `transaction` VALUES ('397', '2020-11-25', 'Jurnal Umum', 'JU/126/1', '60103', '20000.00', '0.00', '0', '0', '0', '0', 'Biaya Beli Tahu', 'Aktif', '1', '2020-12-19 17:17:22', '1', '2020-12-19 17:17:22', '2020-12-19 23:27:28');
INSERT INTO `transaction` VALUES ('398', '2020-11-25', 'Jurnal Umum', 'JU/126/1', '10101', '0.00', '20000.00', '0', '0', '0', '0', 'Biaya Beli Tahu', 'Aktif', '1', '2020-12-19 17:17:22', '1', '2020-12-19 17:17:22', '2020-12-19 23:27:28');
INSERT INTO `transaction` VALUES ('399', '2020-12-19', 'Procurement', 'IN/127/1', '10202', '153000.00', '0.00', '2', '18', '6', '56', 'Pembelian Product Teh Pucuk', 'Aktif', '1', '2020-12-19 17:22:35', '1', '2020-12-19 17:22:35', '2020-12-19 17:22:35');
INSERT INTO `transaction` VALUES ('400', '2020-12-19', 'Procurement', 'IN/127/1', '10101', '0.00', '153000.00', '2', '18', '6', '56', 'Pembelian Product Teh Pucuk', 'Aktif', '1', '2020-12-19 17:22:35', '1', '2020-12-19 17:22:35', '2020-12-19 17:22:35');
INSERT INTO `transaction` VALUES ('401', '2020-11-24', 'Jurnal Umum', 'JU/126/1', '10301', '270000.00', '0.00', '0', '0', '0', '0', 'Beli Etalase cb. Toko Idris', 'Aktif', '1', '2020-12-19 17:17:22', '1', '2020-12-19 17:17:22', '2020-12-19 23:27:28');
INSERT INTO `transaction` VALUES ('402', '2020-11-24', 'Jurnal Umum', 'JU/126/1', '10101', '0.00', '270000.00', '0', '0', '0', '0', 'Beli Etalase cb. Toko Idris', 'Aktif', '1', '2020-12-19 17:17:22', '1', '2020-12-19 17:17:22', '2020-12-19 23:27:28');
INSERT INTO `transaction` VALUES ('403', '2020-11-25', 'Jurnal Umum', 'JU/126/1', '60101', '10000.00', '0.00', '0', '0', '0', '0', 'Biaya Bensin', 'Aktif', '1', '2020-12-19 17:17:22', '1', '2020-12-19 17:17:22', '2020-12-19 23:27:28');
INSERT INTO `transaction` VALUES ('404', '2020-11-25', 'Jurnal Umum', 'JU/126/1', '10101', '0.00', '10000.00', '0', '0', '0', '0', 'Biaya Bensin', 'Aktif', '1', '2020-12-19 17:17:22', '1', '2020-12-19 17:17:22', '2020-12-19 23:27:28');
INSERT INTO `transaction` VALUES ('405', '2020-12-13', 'Sales', 'OU/128/1', '10101', '17500.00', '0.00', '4', '1', '7', '74', 'Penjualan Product Gudang Garam Surya 12', 'Aktif', '1', '2020-12-19 18:21:07', '1', '2020-12-19 18:21:07', '2020-12-19 18:21:07');
INSERT INTO `transaction` VALUES ('406', '2020-12-13', 'Sales', 'OU/128/1', '40101', '0.00', '17500.00', '4', '1', '7', '74', 'Penjualan Product Gudang Garam Surya 12', 'Aktif', '1', '2020-12-19 18:21:07', '1', '2020-12-19 18:21:07', '2020-12-19 18:21:07');
INSERT INTO `transaction` VALUES ('407', '2020-12-13', 'Sales', 'OU/128/1', '50101', '16425.00', '0.00', '4', '1', '7', '74', 'Penjualan Product Gudang Garam Surya 12', 'Aktif', '1', '2020-12-19 18:21:07', '1', '2020-12-19 18:21:07', '2020-12-19 18:21:07');
INSERT INTO `transaction` VALUES ('408', '2020-12-13', 'Sales', 'OU/128/1', '10201', '0.00', '16425.00', '4', '1', '7', '74', 'Penjualan Product Gudang Garam Surya 12', 'Aktif', '1', '2020-12-19 18:21:07', '1', '2020-12-19 18:21:07', '2020-12-19 18:21:07');
INSERT INTO `transaction` VALUES ('409', '2020-11-25', 'Jurnal Umum', 'JU/126/1', '10101', '107850.00', '0.00', '0', '0', '0', '0', 'Koreksi Selisih Kas', 'Aktif', '1', '2020-12-19 17:17:22', '1', '2020-12-19 17:17:22', '2020-12-21 20:17:06');
INSERT INTO `transaction` VALUES ('410', '2020-11-25', 'Jurnal Umum', 'JU/126/1', '40201', '0.00', '107850.00', '0', '0', '0', '0', 'Koreksi Selisih Kas', 'Aktif', '1', '2020-12-19 17:17:22', '1', '2020-12-19 17:17:22', '2020-12-21 20:17:09');
INSERT INTO `transaction` VALUES ('411', '2020-12-13', 'Sales', 'OU/129/1', '10101', '17500.00', '0.00', '4', '1', '7', '84', 'Penjualan Product Gudang Garam Surya 12', 'Aktif', '1', '2020-12-21 14:15:43', '1', '2020-12-21 14:15:43', '2020-12-21 14:15:43');
INSERT INTO `transaction` VALUES ('412', '2020-12-13', 'Sales', 'OU/129/1', '40101', '0.00', '17500.00', '4', '1', '7', '84', 'Penjualan Product Gudang Garam Surya 12', 'Aktif', '1', '2020-12-21 14:15:43', '1', '2020-12-21 14:15:43', '2020-12-21 14:15:43');
INSERT INTO `transaction` VALUES ('413', '2020-12-13', 'Sales', 'OU/129/1', '50101', '16425.00', '0.00', '4', '1', '7', '84', 'Penjualan Product Gudang Garam Surya 12', 'Aktif', '1', '2020-12-21 14:15:43', '1', '2020-12-21 14:15:43', '2020-12-21 14:15:43');
INSERT INTO `transaction` VALUES ('414', '2020-12-13', 'Sales', 'OU/129/1', '10201', '0.00', '16425.00', '4', '1', '7', '84', 'Penjualan Product Gudang Garam Surya 12', 'Aktif', '1', '2020-12-21 14:15:43', '1', '2020-12-21 14:15:43', '2020-12-21 14:15:43');
INSERT INTO `transaction` VALUES ('415', '2020-12-03', 'Sales', 'OU/130/1', '10101', '52500.00', '0.00', '3', '1', '7', '75', 'Penjualan Product Gudang Garam Surya 12', 'Aktif', '1', '2020-12-23 14:32:23', '1', '2020-12-23 14:32:23', '2020-12-23 14:32:23');
INSERT INTO `transaction` VALUES ('416', '2020-12-03', 'Sales', 'OU/130/1', '40101', '0.00', '52500.00', '3', '1', '7', '75', 'Penjualan Product Gudang Garam Surya 12', 'Aktif', '1', '2020-12-23 14:32:23', '1', '2020-12-23 14:32:23', '2020-12-23 14:32:23');
INSERT INTO `transaction` VALUES ('417', '2020-12-03', 'Sales', 'OU/130/1', '50101', '49500.00', '0.00', '3', '1', '7', '75', 'Penjualan Product Gudang Garam Surya 12', 'Aktif', '1', '2020-12-23 14:32:23', '1', '2020-12-23 14:32:23', '2020-12-23 14:32:23');
INSERT INTO `transaction` VALUES ('418', '2020-12-03', 'Sales', 'OU/130/1', '10201', '0.00', '49500.00', '3', '1', '7', '75', 'Penjualan Product Gudang Garam Surya 12', 'Aktif', '1', '2020-12-23 14:32:23', '1', '2020-12-23 14:32:23', '2020-12-23 14:32:23');
INSERT INTO `transaction` VALUES ('419', '2020-12-04', 'Sales', 'OU/131/1', '10101', '70500.00', '0.00', '3', '2', '7', '76', 'Penjualan Product Gudang Garam Surya 16', 'Aktif', '1', '2020-12-23 14:32:30', '1', '2020-12-23 14:32:30', '2020-12-23 14:32:30');
INSERT INTO `transaction` VALUES ('420', '2020-12-04', 'Sales', 'OU/131/1', '40101', '0.00', '70500.00', '3', '2', '7', '76', 'Penjualan Product Gudang Garam Surya 16', 'Aktif', '1', '2020-12-23 14:32:30', '1', '2020-12-23 14:32:30', '2020-12-23 14:32:30');
INSERT INTO `transaction` VALUES ('421', '2020-12-04', 'Sales', 'OU/131/1', '50101', '66075.00', '0.00', '3', '2', '7', '76', 'Penjualan Product Gudang Garam Surya 16', 'Aktif', '1', '2020-12-23 14:32:30', '1', '2020-12-23 14:32:30', '2020-12-23 14:32:30');
INSERT INTO `transaction` VALUES ('422', '2020-12-04', 'Sales', 'OU/131/1', '10201', '0.00', '66075.00', '3', '2', '7', '76', 'Penjualan Product Gudang Garam Surya 16', 'Aktif', '1', '2020-12-23 14:32:30', '1', '2020-12-23 14:32:30', '2020-12-23 14:32:30');
INSERT INTO `transaction` VALUES ('423', '2020-12-06', 'Sales', 'OU/132/1', '10101', '70500.00', '0.00', '3', '3', '7', '77', 'Penjualan Product Sampoerna Mild 16', 'Aktif', '1', '2020-12-23 14:32:38', '1', '2020-12-23 14:32:38', '2020-12-23 14:32:38');
INSERT INTO `transaction` VALUES ('424', '2020-12-06', 'Sales', 'OU/132/1', '40101', '0.00', '70500.00', '3', '3', '7', '77', 'Penjualan Product Sampoerna Mild 16', 'Aktif', '1', '2020-12-23 14:32:38', '1', '2020-12-23 14:32:38', '2020-12-23 14:32:38');
INSERT INTO `transaction` VALUES ('425', '2020-12-06', 'Sales', 'OU/132/1', '50101', '66075.00', '0.00', '3', '3', '7', '77', 'Penjualan Product Sampoerna Mild 16', 'Aktif', '1', '2020-12-23 14:32:38', '1', '2020-12-23 14:32:38', '2020-12-23 14:32:38');
INSERT INTO `transaction` VALUES ('426', '2020-12-06', 'Sales', 'OU/132/1', '10201', '0.00', '66075.00', '3', '3', '7', '77', 'Penjualan Product Sampoerna Mild 16', 'Aktif', '1', '2020-12-23 14:32:38', '1', '2020-12-23 14:32:38', '2020-12-23 14:32:38');
INSERT INTO `transaction` VALUES ('427', '2020-11-25', 'Sales', 'OU/133/1', '10101', '45000.00', '0.00', '3', '13', '7', '78', 'Penjualan Product Dji Sam Soe', 'Aktif', '1', '2020-12-23 14:32:48', '1', '2020-12-23 14:32:48', '2020-12-23 14:32:48');
INSERT INTO `transaction` VALUES ('428', '2020-11-25', 'Sales', 'OU/133/1', '40101', '0.00', '45000.00', '3', '13', '7', '78', 'Penjualan Product Dji Sam Soe', 'Aktif', '1', '2020-12-23 14:32:48', '1', '2020-12-23 14:32:48', '2020-12-23 14:32:48');
INSERT INTO `transaction` VALUES ('429', '2020-11-25', 'Sales', 'OU/133/1', '50101', '43000.00', '0.00', '3', '13', '7', '78', 'Penjualan Product Dji Sam Soe', 'Aktif', '1', '2020-12-23 14:32:48', '1', '2020-12-23 14:32:48', '2020-12-23 14:32:48');
INSERT INTO `transaction` VALUES ('430', '2020-11-25', 'Sales', 'OU/133/1', '10201', '0.00', '43000.00', '3', '13', '7', '78', 'Penjualan Product Dji Sam Soe', 'Aktif', '1', '2020-12-23 14:32:48', '1', '2020-12-23 14:32:48', '2020-12-23 14:32:48');
INSERT INTO `transaction` VALUES ('431', '2020-11-25', 'Sales', 'OU/134/1', '10101', '19500.00', '0.00', '3', '23', '7', '79', 'Penjualan Product Magnum Mild', 'Aktif', '1', '2020-12-23 14:32:55', '1', '2020-12-23 14:32:55', '2020-12-23 14:32:55');
INSERT INTO `transaction` VALUES ('432', '2020-11-25', 'Sales', 'OU/134/1', '40101', '0.00', '19500.00', '3', '23', '7', '79', 'Penjualan Product Magnum Mild', 'Aktif', '1', '2020-12-23 14:32:55', '1', '2020-12-23 14:32:55', '2020-12-23 14:32:55');
INSERT INTO `transaction` VALUES ('433', '2020-11-25', 'Sales', 'OU/134/1', '50101', '18400.00', '0.00', '3', '23', '7', '79', 'Penjualan Product Magnum Mild', 'Aktif', '1', '2020-12-23 14:32:55', '1', '2020-12-23 14:32:55', '2020-12-23 14:32:55');
INSERT INTO `transaction` VALUES ('434', '2020-11-25', 'Sales', 'OU/134/1', '10201', '0.00', '18400.00', '3', '23', '7', '79', 'Penjualan Product Magnum Mild', 'Aktif', '1', '2020-12-23 14:32:55', '1', '2020-12-23 14:32:55', '2020-12-23 14:32:55');
INSERT INTO `transaction` VALUES ('435', '2020-11-25', 'Sales', 'OU/135/1', '10101', '49000.00', '0.00', '3', '12', '7', '80', 'Penjualan Product LA Bold', 'Aktif', '1', '2020-12-23 14:33:10', '1', '2020-12-23 14:33:10', '2020-12-23 14:33:10');
INSERT INTO `transaction` VALUES ('436', '2020-11-25', 'Sales', 'OU/135/1', '40101', '0.00', '49000.00', '3', '12', '7', '80', 'Penjualan Product LA Bold', 'Aktif', '1', '2020-12-23 14:33:10', '1', '2020-12-23 14:33:10', '2020-12-23 14:33:10');
INSERT INTO `transaction` VALUES ('437', '2020-11-25', 'Sales', 'OU/135/1', '50101', '46500.00', '0.00', '3', '12', '7', '80', 'Penjualan Product LA Bold', 'Aktif', '1', '2020-12-23 14:33:10', '1', '2020-12-23 14:33:10', '2020-12-23 14:33:10');
INSERT INTO `transaction` VALUES ('438', '2020-11-25', 'Sales', 'OU/135/1', '10201', '0.00', '46500.00', '3', '12', '7', '80', 'Penjualan Product LA Bold', 'Aktif', '1', '2020-12-23 14:33:10', '1', '2020-12-23 14:33:10', '2020-12-23 14:33:10');
INSERT INTO `transaction` VALUES ('439', '2020-11-25', 'Sales', 'OU/136/1', '10101', '16000.00', '0.00', '3', '16', '7', '81', 'Penjualan Product Geo Mild', 'Aktif', '1', '2020-12-23 14:33:15', '1', '2020-12-23 14:33:15', '2020-12-23 14:33:15');
INSERT INTO `transaction` VALUES ('440', '2020-11-25', 'Sales', 'OU/136/1', '40101', '0.00', '16000.00', '3', '16', '7', '81', 'Penjualan Product Geo Mild', 'Aktif', '1', '2020-12-23 14:33:15', '1', '2020-12-23 14:33:15', '2020-12-23 14:33:15');
INSERT INTO `transaction` VALUES ('441', '2020-11-25', 'Sales', 'OU/136/1', '50101', '14750.00', '0.00', '3', '16', '7', '81', 'Penjualan Product Geo Mild', 'Aktif', '1', '2020-12-23 14:33:15', '1', '2020-12-23 14:33:15', '2020-12-23 14:33:15');
INSERT INTO `transaction` VALUES ('442', '2020-11-25', 'Sales', 'OU/136/1', '10201', '0.00', '14750.00', '3', '16', '7', '81', 'Penjualan Product Geo Mild', 'Aktif', '1', '2020-12-23 14:33:15', '1', '2020-12-23 14:33:15', '2020-12-23 14:33:15');
INSERT INTO `transaction` VALUES ('443', '2020-12-03', 'Sales', 'OU/137/1', '10101', '12500.00', '0.00', '3', '24', '7', '82', 'Penjualan Product Aga Kretek', 'Aktif', '1', '2020-12-23 14:33:22', '1', '2020-12-23 14:33:22', '2020-12-23 14:33:22');
INSERT INTO `transaction` VALUES ('444', '2020-12-03', 'Sales', 'OU/137/1', '40101', '0.00', '12500.00', '3', '24', '7', '82', 'Penjualan Product Aga Kretek', 'Aktif', '1', '2020-12-23 14:33:22', '1', '2020-12-23 14:33:22', '2020-12-23 14:33:22');
INSERT INTO `transaction` VALUES ('445', '2020-12-03', 'Sales', 'OU/137/1', '50101', '11625.00', '0.00', '3', '24', '7', '82', 'Penjualan Product Aga Kretek', 'Aktif', '1', '2020-12-23 14:33:22', '1', '2020-12-23 14:33:22', '2020-12-23 14:33:22');
INSERT INTO `transaction` VALUES ('446', '2020-12-03', 'Sales', 'OU/137/1', '10201', '0.00', '11625.00', '3', '24', '7', '82', 'Penjualan Product Aga Kretek', 'Aktif', '1', '2020-12-23 14:33:22', '1', '2020-12-23 14:33:22', '2020-12-23 14:33:22');
INSERT INTO `transaction` VALUES ('447', '2020-12-13', 'Sales', 'OU/138/1', '10101', '12500.00', '0.00', '3', '24', '7', '83', 'Penjualan Product Aga Kretek', 'Aktif', '1', '2020-12-23 14:33:30', '1', '2020-12-23 14:33:30', '2020-12-23 14:33:30');
INSERT INTO `transaction` VALUES ('448', '2020-12-13', 'Sales', 'OU/138/1', '40101', '0.00', '12500.00', '3', '24', '7', '83', 'Penjualan Product Aga Kretek', 'Aktif', '1', '2020-12-23 14:33:30', '1', '2020-12-23 14:33:30', '2020-12-23 14:33:30');
INSERT INTO `transaction` VALUES ('449', '2020-12-13', 'Sales', 'OU/138/1', '50101', '11400.00', '0.00', '3', '24', '7', '83', 'Penjualan Product Aga Kretek', 'Aktif', '1', '2020-12-23 14:33:31', '1', '2020-12-23 14:33:31', '2020-12-23 14:33:31');
INSERT INTO `transaction` VALUES ('450', '2020-12-13', 'Sales', 'OU/138/1', '10201', '0.00', '11400.00', '3', '24', '7', '83', 'Penjualan Product Aga Kretek', 'Aktif', '1', '2020-12-23 14:33:31', '1', '2020-12-23 14:33:31', '2020-12-23 14:33:31');
INSERT INTO `transaction` VALUES ('451', '2020-12-23', 'Procurement', 'IN/139/1', '10201', '82650.00', '0.00', '4', '9', '1', '57', 'Pembelian Product Marlboro Hitam', 'Aktif', '1', '2020-12-23 14:41:34', '1', '2020-12-23 14:41:34', '2020-12-23 14:41:34');
INSERT INTO `transaction` VALUES ('452', '2020-12-23', 'Procurement', 'IN/139/1', '10101', '0.00', '82650.00', '4', '9', '1', '57', 'Pembelian Product Marlboro Hitam', 'Aktif', '1', '2020-12-23 14:41:34', '1', '2020-12-23 14:41:34', '2020-12-23 14:41:34');
INSERT INTO `transaction` VALUES ('453', '2020-12-23', 'Procurement', 'IN/140/1', '10201', '94500.00', '0.00', '4', '12', '1', '58', 'Pembelian Product LA Bold', 'Aktif', '1', '2020-12-23 14:41:39', '1', '2020-12-23 14:41:39', '2020-12-23 14:41:39');
INSERT INTO `transaction` VALUES ('454', '2020-12-23', 'Procurement', 'IN/140/1', '10101', '0.00', '94500.00', '4', '12', '1', '58', 'Pembelian Product LA Bold', 'Aktif', '1', '2020-12-23 14:41:39', '1', '2020-12-23 14:41:39', '2020-12-23 14:41:39');
INSERT INTO `transaction` VALUES ('455', '2020-12-23', 'Procurement', 'IN/141/1', '10201', '220250.00', '0.00', '4', '2', '1', '59', 'Pembelian Product Gudang Garam Surya 16', 'Aktif', '1', '2020-12-23 14:41:44', '1', '2020-12-23 14:41:44', '2020-12-23 14:41:44');
INSERT INTO `transaction` VALUES ('456', '2020-12-23', 'Procurement', 'IN/141/1', '10101', '0.00', '220250.00', '4', '2', '1', '59', 'Pembelian Product Gudang Garam Surya 16', 'Aktif', '1', '2020-12-23 14:41:44', '1', '2020-12-23 14:41:44', '2020-12-23 14:41:44');
INSERT INTO `transaction` VALUES ('457', '2020-12-23', 'Procurement', 'IN/142/1', '10201', '164250.00', '0.00', '4', '1', '1', '60', 'Pembelian Product Gudang Garam Surya 12', 'Aktif', '1', '2020-12-23 14:41:51', '1', '2020-12-23 14:41:51', '2020-12-23 14:41:51');
INSERT INTO `transaction` VALUES ('458', '2020-12-23', 'Procurement', 'IN/142/1', '10101', '0.00', '164250.00', '4', '1', '1', '60', 'Pembelian Product Gudang Garam Surya 12', 'Aktif', '1', '2020-12-23 14:41:51', '1', '2020-12-23 14:41:51', '2020-12-23 14:41:51');
INSERT INTO `transaction` VALUES ('459', '2020-12-23', 'Procurement', 'IN/143/1', '10201', '64275.00', '0.00', '4', '13', '1', '61', 'Pembelian Product Dji Sam Soe', 'Aktif', '1', '2020-12-23 14:41:57', '1', '2020-12-23 14:41:57', '2020-12-23 14:41:57');
INSERT INTO `transaction` VALUES ('460', '2020-12-23', 'Procurement', 'IN/143/1', '10101', '0.00', '64275.00', '4', '13', '1', '61', 'Pembelian Product Dji Sam Soe', 'Aktif', '1', '2020-12-23 14:41:57', '1', '2020-12-23 14:41:57', '2020-12-23 14:41:57');
INSERT INTO `transaction` VALUES ('461', '2020-12-23', 'Procurement', 'IN/144/1', '10201', '73500.00', '0.00', '4', '23', '1', '62', 'Pembelian Product Magnum Mild', 'Aktif', '1', '2020-12-23 14:42:03', '1', '2020-12-23 14:42:03', '2020-12-23 14:42:03');
INSERT INTO `transaction` VALUES ('462', '2020-12-23', 'Procurement', 'IN/144/1', '10101', '0.00', '73500.00', '4', '23', '1', '62', 'Pembelian Product Magnum Mild', 'Aktif', '1', '2020-12-23 14:42:03', '1', '2020-12-23 14:42:03', '2020-12-23 14:42:03');
INSERT INTO `transaction` VALUES ('463', '2020-12-23', 'Procurement', 'IN/145/1', '10201', '110125.00', '0.00', '4', '2', '1', '63', 'Pembelian Product Gudang Garam Surya 16', 'Aktif', '1', '2020-12-23 14:42:09', '1', '2020-12-23 14:42:09', '2020-12-23 14:42:09');
INSERT INTO `transaction` VALUES ('464', '2020-12-23', 'Procurement', 'IN/145/1', '10101', '0.00', '110125.00', '4', '2', '1', '63', 'Pembelian Product Gudang Garam Surya 16', 'Aktif', '1', '2020-12-23 14:42:09', '1', '2020-12-23 14:42:09', '2020-12-23 14:42:09');
INSERT INTO `transaction` VALUES ('465', '2020-12-23', 'Procurement', 'IN/146/1', '10201', '82725.00', '0.00', '4', '7', '1', '64', 'Pembelian Product Marlboro Merah', 'Aktif', '1', '2020-12-23 14:42:15', '1', '2020-12-23 14:42:15', '2020-12-23 14:42:15');
INSERT INTO `transaction` VALUES ('466', '2020-12-23', 'Procurement', 'IN/146/1', '10101', '0.00', '82725.00', '4', '7', '1', '64', 'Pembelian Product Marlboro Merah', 'Aktif', '1', '2020-12-23 14:42:15', '1', '2020-12-23 14:42:15', '2020-12-23 14:42:15');
INSERT INTO `transaction` VALUES ('467', '2020-11-25', 'Sales', 'OU/147/1', '10101', '47000.00', '0.00', '1', '2', '7', '85', 'Penjualan Product Gudang Garam Surya 16', 'Aktif', '1', '2020-12-23 14:57:27', '1', '2020-12-23 14:57:27', '2020-12-23 14:57:27');
INSERT INTO `transaction` VALUES ('468', '2020-11-25', 'Sales', 'OU/147/1', '40101', '0.00', '47000.00', '1', '2', '7', '85', 'Penjualan Product Gudang Garam Surya 16', 'Aktif', '1', '2020-12-23 14:57:27', '1', '2020-12-23 14:57:27', '2020-12-23 14:57:27');
INSERT INTO `transaction` VALUES ('469', '2020-11-25', 'Sales', 'OU/147/1', '50101', '44100.00', '0.00', '1', '2', '7', '85', 'Penjualan Product Gudang Garam Surya 16', 'Aktif', '1', '2020-12-23 14:57:27', '1', '2020-12-23 14:57:27', '2020-12-23 14:57:27');
INSERT INTO `transaction` VALUES ('470', '2020-11-25', 'Sales', 'OU/147/1', '10201', '0.00', '44100.00', '1', '2', '7', '85', 'Penjualan Product Gudang Garam Surya 16', 'Aktif', '1', '2020-12-23 14:57:27', '1', '2020-12-23 14:57:27', '2020-12-23 14:57:27');
INSERT INTO `transaction` VALUES ('471', '2020-12-06', 'Sales', 'OU/148/1', '10101', '235000.00', '0.00', '1', '2', '7', '86', 'Penjualan Product Gudang Garam Surya 16', 'Aktif', '1', '2020-12-23 14:57:31', '1', '2020-12-23 14:57:31', '2020-12-23 14:57:31');
INSERT INTO `transaction` VALUES ('472', '2020-12-06', 'Sales', 'OU/148/1', '40101', '0.00', '235000.00', '1', '2', '7', '86', 'Penjualan Product Gudang Garam Surya 16', 'Aktif', '1', '2020-12-23 14:57:31', '1', '2020-12-23 14:57:31', '2020-12-23 14:57:31');
INSERT INTO `transaction` VALUES ('473', '2020-12-06', 'Sales', 'OU/148/1', '50101', '220500.00', '0.00', '1', '2', '7', '86', 'Penjualan Product Gudang Garam Surya 16', 'Aktif', '1', '2020-12-23 14:57:31', '1', '2020-12-23 14:57:31', '2020-12-23 14:57:31');
INSERT INTO `transaction` VALUES ('474', '2020-12-06', 'Sales', 'OU/148/1', '10201', '0.00', '220500.00', '1', '2', '7', '86', 'Penjualan Product Gudang Garam Surya 16', 'Aktif', '1', '2020-12-23 14:57:31', '1', '2020-12-23 14:57:31', '2020-12-23 14:57:31');
INSERT INTO `transaction` VALUES ('475', '2020-12-06', 'Sales', 'OU/149/1', '10101', '157500.00', '0.00', '1', '1', '7', '87', 'Penjualan Product Gudang Garam Surya 12', 'Aktif', '1', '2020-12-23 14:57:36', '1', '2020-12-23 14:57:36', '2020-12-23 14:57:36');
INSERT INTO `transaction` VALUES ('476', '2020-12-06', 'Sales', 'OU/149/1', '40101', '0.00', '157500.00', '1', '1', '7', '87', 'Penjualan Product Gudang Garam Surya 12', 'Aktif', '1', '2020-12-23 14:57:36', '1', '2020-12-23 14:57:36', '2020-12-23 14:57:36');
INSERT INTO `transaction` VALUES ('477', '2020-12-06', 'Sales', 'OU/149/1', '50101', '148500.00', '0.00', '1', '1', '7', '87', 'Penjualan Product Gudang Garam Surya 12', 'Aktif', '1', '2020-12-23 14:57:36', '1', '2020-12-23 14:57:36', '2020-12-23 14:57:36');
INSERT INTO `transaction` VALUES ('478', '2020-12-06', 'Sales', 'OU/149/1', '10201', '0.00', '148500.00', '1', '1', '7', '87', 'Penjualan Product Gudang Garam Surya 12', 'Aktif', '1', '2020-12-23 14:57:36', '1', '2020-12-23 14:57:36', '2020-12-23 14:57:36');
INSERT INTO `transaction` VALUES ('479', '2020-11-25', 'Sales', 'OU/150/1', '10101', '23500.00', '0.00', '1', '3', '7', '88', 'Penjualan Product Sampoerna Mild 16', 'Aktif', '1', '2020-12-23 14:57:40', '1', '2020-12-23 14:57:40', '2020-12-23 14:57:40');
INSERT INTO `transaction` VALUES ('480', '2020-11-25', 'Sales', 'OU/150/1', '40101', '0.00', '23500.00', '1', '3', '7', '88', 'Penjualan Product Sampoerna Mild 16', 'Aktif', '1', '2020-12-23 14:57:40', '1', '2020-12-23 14:57:40', '2020-12-23 14:57:40');
INSERT INTO `transaction` VALUES ('481', '2020-11-25', 'Sales', 'OU/150/1', '50101', '22050.00', '0.00', '1', '3', '7', '88', 'Penjualan Product Sampoerna Mild 16', 'Aktif', '1', '2020-12-23 14:57:40', '1', '2020-12-23 14:57:40', '2020-12-23 14:57:40');
INSERT INTO `transaction` VALUES ('482', '2020-11-25', 'Sales', 'OU/150/1', '10201', '0.00', '22050.00', '1', '3', '7', '88', 'Penjualan Product Sampoerna Mild 16', 'Aktif', '1', '2020-12-23 14:57:40', '1', '2020-12-23 14:57:40', '2020-12-23 14:57:40');
INSERT INTO `transaction` VALUES ('483', '2020-11-25', 'Sales', 'OU/151/1', '10101', '17500.00', '0.00', '1', '4', '7', '89', 'Penjualan Product Sampoerna Mild 12', 'Aktif', '1', '2020-12-23 14:57:45', '1', '2020-12-23 14:57:45', '2020-12-23 14:57:45');
INSERT INTO `transaction` VALUES ('484', '2020-11-25', 'Sales', 'OU/151/1', '40101', '0.00', '17500.00', '1', '4', '7', '89', 'Penjualan Product Sampoerna Mild 12', 'Aktif', '1', '2020-12-23 14:57:45', '1', '2020-12-23 14:57:45', '2020-12-23 14:57:45');
INSERT INTO `transaction` VALUES ('485', '2020-11-25', 'Sales', 'OU/151/1', '50101', '16100.00', '0.00', '1', '4', '7', '89', 'Penjualan Product Sampoerna Mild 12', 'Aktif', '1', '2020-12-23 14:57:45', '1', '2020-12-23 14:57:45', '2020-12-23 14:57:45');
INSERT INTO `transaction` VALUES ('486', '2020-11-25', 'Sales', 'OU/151/1', '10201', '0.00', '16100.00', '1', '4', '7', '89', 'Penjualan Product Sampoerna Mild 12', 'Aktif', '1', '2020-12-23 14:57:45', '1', '2020-12-23 14:57:45', '2020-12-23 14:57:45');
INSERT INTO `transaction` VALUES ('487', '2020-11-25', 'Sales', 'OU/152/1', '10101', '29000.00', '0.00', '1', '8', '7', '90', 'Penjualan Product Marlboro Putih', 'Aktif', '1', '2020-12-23 14:57:49', '1', '2020-12-23 14:57:49', '2020-12-23 14:57:49');
INSERT INTO `transaction` VALUES ('488', '2020-11-25', 'Sales', 'OU/152/1', '40101', '0.00', '29000.00', '1', '8', '7', '90', 'Penjualan Product Marlboro Putih', 'Aktif', '1', '2020-12-23 14:57:49', '1', '2020-12-23 14:57:49', '2020-12-23 14:57:49');
INSERT INTO `transaction` VALUES ('489', '2020-11-25', 'Sales', 'OU/152/1', '50101', '27650.00', '0.00', '1', '8', '7', '90', 'Penjualan Product Marlboro Putih', 'Aktif', '1', '2020-12-23 14:57:49', '1', '2020-12-23 14:57:49', '2020-12-23 14:57:49');
INSERT INTO `transaction` VALUES ('490', '2020-11-25', 'Sales', 'OU/152/1', '10201', '0.00', '27650.00', '1', '8', '7', '90', 'Penjualan Product Marlboro Putih', 'Aktif', '1', '2020-12-23 14:57:49', '1', '2020-12-23 14:57:49', '2020-12-23 14:57:49');
INSERT INTO `transaction` VALUES ('491', '2020-11-25', 'Sales', 'OU/153/1', '10101', '85500.00', '0.00', '1', '9', '7', '91', 'Penjualan Product Marlboro Hitam', 'Aktif', '1', '2020-12-23 14:57:53', '1', '2020-12-23 14:57:53', '2020-12-23 14:57:53');
INSERT INTO `transaction` VALUES ('492', '2020-11-25', 'Sales', 'OU/153/1', '40101', '0.00', '85500.00', '1', '9', '7', '91', 'Penjualan Product Marlboro Hitam', 'Aktif', '1', '2020-12-23 14:57:53', '1', '2020-12-23 14:57:53', '2020-12-23 14:57:53');
INSERT INTO `transaction` VALUES ('493', '2020-11-25', 'Sales', 'OU/153/1', '50101', '82800.00', '0.00', '1', '9', '7', '91', 'Penjualan Product Marlboro Hitam', 'Aktif', '1', '2020-12-23 14:57:53', '1', '2020-12-23 14:57:53', '2020-12-23 14:57:53');
INSERT INTO `transaction` VALUES ('494', '2020-11-25', 'Sales', 'OU/153/1', '10201', '0.00', '82800.00', '1', '9', '7', '91', 'Penjualan Product Marlboro Hitam', 'Aktif', '1', '2020-12-23 14:57:53', '1', '2020-12-23 14:57:53', '2020-12-23 14:57:53');
INSERT INTO `transaction` VALUES ('495', '2020-11-25', 'Sales', 'OU/154/1', '10101', '17500.00', '0.00', '1', '10', '7', '92', 'Penjualan Product Gudang Garam International', 'Aktif', '1', '2020-12-23 14:57:57', '1', '2020-12-23 14:57:57', '2020-12-23 14:57:57');
INSERT INTO `transaction` VALUES ('496', '2020-11-25', 'Sales', 'OU/154/1', '40101', '0.00', '17500.00', '1', '10', '7', '92', 'Penjualan Product Gudang Garam International', 'Aktif', '1', '2020-12-23 14:57:57', '1', '2020-12-23 14:57:57', '2020-12-23 14:57:57');
INSERT INTO `transaction` VALUES ('497', '2020-11-25', 'Sales', 'OU/154/1', '50101', '16575.00', '0.00', '1', '10', '7', '92', 'Penjualan Product Gudang Garam International', 'Aktif', '1', '2020-12-23 14:57:57', '1', '2020-12-23 14:57:57', '2020-12-23 14:57:57');
INSERT INTO `transaction` VALUES ('498', '2020-11-25', 'Sales', 'OU/154/1', '10201', '0.00', '16575.00', '1', '10', '7', '92', 'Penjualan Product Gudang Garam International', 'Aktif', '1', '2020-12-23 14:57:57', '1', '2020-12-23 14:57:57', '2020-12-23 14:57:57');
INSERT INTO `transaction` VALUES ('499', '2020-11-25', 'Sales', 'OU/155/1', '10101', '45000.00', '0.00', '1', '13', '7', '93', 'Penjualan Product Dji Sam Soe', 'Aktif', '1', '2020-12-23 14:58:01', '1', '2020-12-23 14:58:01', '2020-12-23 14:58:01');
INSERT INTO `transaction` VALUES ('500', '2020-11-25', 'Sales', 'OU/155/1', '40101', '0.00', '45000.00', '1', '13', '7', '93', 'Penjualan Product Dji Sam Soe', 'Aktif', '1', '2020-12-23 14:58:01', '1', '2020-12-23 14:58:01', '2020-12-23 14:58:01');
INSERT INTO `transaction` VALUES ('501', '2020-11-25', 'Sales', 'OU/155/1', '50101', '43000.00', '0.00', '1', '13', '7', '93', 'Penjualan Product Dji Sam Soe', 'Aktif', '1', '2020-12-23 14:58:01', '1', '2020-12-23 14:58:01', '2020-12-23 14:58:01');
INSERT INTO `transaction` VALUES ('502', '2020-11-25', 'Sales', 'OU/155/1', '10201', '0.00', '43000.00', '1', '13', '7', '93', 'Penjualan Product Dji Sam Soe', 'Aktif', '1', '2020-12-23 14:58:01', '1', '2020-12-23 14:58:01', '2020-12-23 14:58:01');
INSERT INTO `transaction` VALUES ('503', '2020-11-25', 'Sales', 'OU/156/1', '10101', '19500.00', '0.00', '1', '23', '7', '94', 'Penjualan Product Magnum Mild', 'Aktif', '1', '2020-12-23 14:58:06', '1', '2020-12-23 14:58:06', '2020-12-23 14:58:06');
INSERT INTO `transaction` VALUES ('504', '2020-11-25', 'Sales', 'OU/156/1', '40101', '0.00', '19500.00', '1', '23', '7', '94', 'Penjualan Product Magnum Mild', 'Aktif', '1', '2020-12-23 14:58:06', '1', '2020-12-23 14:58:06', '2020-12-23 14:58:06');
INSERT INTO `transaction` VALUES ('505', '2020-11-25', 'Sales', 'OU/156/1', '50101', '18400.00', '0.00', '1', '23', '7', '94', 'Penjualan Product Magnum Mild', 'Aktif', '1', '2020-12-23 14:58:06', '1', '2020-12-23 14:58:06', '2020-12-23 14:58:06');
INSERT INTO `transaction` VALUES ('506', '2020-11-25', 'Sales', 'OU/156/1', '10201', '0.00', '18400.00', '1', '23', '7', '94', 'Penjualan Product Magnum Mild', 'Aktif', '1', '2020-12-23 14:58:06', '1', '2020-12-23 14:58:06', '2020-12-23 14:58:06');
INSERT INTO `transaction` VALUES ('507', '2020-11-25', 'Sales', 'OU/157/1', '10101', '24500.00', '0.00', '1', '12', '7', '95', 'Penjualan Product LA Bold', 'Aktif', '1', '2020-12-23 14:58:10', '1', '2020-12-23 14:58:10', '2020-12-23 14:58:10');
INSERT INTO `transaction` VALUES ('508', '2020-11-25', 'Sales', 'OU/157/1', '40101', '0.00', '24500.00', '1', '12', '7', '95', 'Penjualan Product LA Bold', 'Aktif', '1', '2020-12-23 14:58:10', '1', '2020-12-23 14:58:10', '2020-12-23 14:58:10');
INSERT INTO `transaction` VALUES ('509', '2020-11-25', 'Sales', 'OU/157/1', '50101', '23250.00', '0.00', '1', '12', '7', '95', 'Penjualan Product LA Bold', 'Aktif', '1', '2020-12-23 14:58:10', '1', '2020-12-23 14:58:10', '2020-12-23 14:58:10');
INSERT INTO `transaction` VALUES ('510', '2020-11-25', 'Sales', 'OU/157/1', '10201', '0.00', '23250.00', '1', '12', '7', '95', 'Penjualan Product LA Bold', 'Aktif', '1', '2020-12-23 14:58:10', '1', '2020-12-23 14:58:10', '2020-12-23 14:58:10');
INSERT INTO `transaction` VALUES ('511', '2020-11-25', 'Sales', 'OU/158/1', '10101', '13500.00', '0.00', '1', '15', '7', '96', 'Penjualan Product Pena Mild', 'Aktif', '1', '2020-12-23 14:58:15', '1', '2020-12-23 14:58:15', '2020-12-23 14:58:15');
INSERT INTO `transaction` VALUES ('512', '2020-11-25', 'Sales', 'OU/158/1', '40101', '0.00', '13500.00', '1', '15', '7', '96', 'Penjualan Product Pena Mild', 'Aktif', '1', '2020-12-23 14:58:15', '1', '2020-12-23 14:58:15', '2020-12-23 14:58:15');
INSERT INTO `transaction` VALUES ('513', '2020-11-25', 'Sales', 'OU/158/1', '50101', '12450.00', '0.00', '1', '15', '7', '96', 'Penjualan Product Pena Mild', 'Aktif', '1', '2020-12-23 14:58:15', '1', '2020-12-23 14:58:15', '2020-12-23 14:58:15');
INSERT INTO `transaction` VALUES ('514', '2020-11-25', 'Sales', 'OU/158/1', '10201', '0.00', '12450.00', '1', '15', '7', '96', 'Penjualan Product Pena Mild', 'Aktif', '1', '2020-12-23 14:58:15', '1', '2020-12-23 14:58:15', '2020-12-23 14:58:15');
INSERT INTO `transaction` VALUES ('515', '2020-12-13', 'Sales', 'OU/159/1', '10101', '16000.00', '0.00', '1', '16', '7', '97', 'Penjualan Product Geo Mild', 'Aktif', '1', '2020-12-23 14:58:19', '1', '2020-12-23 14:58:19', '2020-12-23 14:58:19');
INSERT INTO `transaction` VALUES ('516', '2020-12-13', 'Sales', 'OU/159/1', '40101', '0.00', '16000.00', '1', '16', '7', '97', 'Penjualan Product Geo Mild', 'Aktif', '1', '2020-12-23 14:58:19', '1', '2020-12-23 14:58:19', '2020-12-23 14:58:19');
INSERT INTO `transaction` VALUES ('517', '2020-12-13', 'Sales', 'OU/159/1', '50101', '14725.00', '0.00', '1', '16', '7', '97', 'Penjualan Product Geo Mild', 'Aktif', '1', '2020-12-23 14:58:19', '1', '2020-12-23 14:58:19', '2020-12-23 14:58:19');
INSERT INTO `transaction` VALUES ('518', '2020-12-13', 'Sales', 'OU/159/1', '10201', '0.00', '14725.00', '1', '16', '7', '97', 'Penjualan Product Geo Mild', 'Aktif', '1', '2020-12-23 14:58:19', '1', '2020-12-23 14:58:19', '2020-12-23 14:58:19');
INSERT INTO `transaction` VALUES ('519', '2020-11-25', 'Sales', 'OU/160/1', '10101', '8000.00', '0.00', '1', '20', '7', '98', 'Penjualan Product Korek Api', 'Aktif', '1', '2020-12-23 14:58:23', '1', '2020-12-23 14:58:23', '2020-12-23 14:58:23');
INSERT INTO `transaction` VALUES ('520', '2020-11-25', 'Sales', 'OU/160/1', '40104', '0.00', '8000.00', '1', '20', '7', '98', 'Penjualan Product Korek Api', 'Aktif', '1', '2020-12-23 14:58:23', '1', '2020-12-23 14:58:23', '2020-12-23 14:58:23');
INSERT INTO `transaction` VALUES ('521', '2020-11-25', 'Sales', 'OU/160/1', '50104', '6400.00', '0.00', '1', '20', '7', '98', 'Penjualan Product Korek Api', 'Aktif', '1', '2020-12-23 14:58:23', '1', '2020-12-23 14:58:23', '2020-12-23 14:58:23');
INSERT INTO `transaction` VALUES ('522', '2020-11-25', 'Sales', 'OU/160/1', '10204', '0.00', '6400.00', '1', '20', '7', '98', 'Penjualan Product Korek Api', 'Aktif', '1', '2020-12-23 14:58:23', '1', '2020-12-23 14:58:23', '2020-12-23 14:58:23');
INSERT INTO `transaction` VALUES ('523', '2020-11-25', 'Sales', 'OU/161/1', '10101', '4500.00', '0.00', '1', '19', '7', '99', 'Penjualan Product Gudang Garam Surya (Kaleng)', 'Aktif', '1', '2020-12-23 14:58:26', '1', '2020-12-23 14:58:26', '2020-12-23 14:58:26');
INSERT INTO `transaction` VALUES ('524', '2020-11-25', 'Sales', 'OU/161/1', '40101', '0.00', '4500.00', '1', '19', '7', '99', 'Penjualan Product Gudang Garam Surya (Kaleng)', 'Aktif', '1', '2020-12-23 14:58:26', '1', '2020-12-23 14:58:26', '2020-12-23 14:58:26');
INSERT INTO `transaction` VALUES ('525', '2020-11-25', 'Sales', 'OU/161/1', '50101', '3990.00', '0.00', '1', '19', '7', '99', 'Penjualan Product Gudang Garam Surya (Kaleng)', 'Aktif', '1', '2020-12-23 14:58:26', '1', '2020-12-23 14:58:26', '2020-12-23 14:58:26');
INSERT INTO `transaction` VALUES ('526', '2020-11-25', 'Sales', 'OU/161/1', '10201', '0.00', '3990.00', '1', '19', '7', '99', 'Penjualan Product Gudang Garam Surya (Kaleng)', 'Aktif', '1', '2020-12-23 14:58:26', '1', '2020-12-23 14:58:26', '2020-12-23 14:58:26');
INSERT INTO `transaction` VALUES ('531', '2020-12-29', 'Sales', 'OU/163/1', '10101', '92000.00', '0.00', '2', '2', '7', '102', 'Penjualan Product Gudang Garam Surya 16', 'Aktif', '1', '2020-12-29 15:46:09', '1', '2020-12-29 15:46:09', '2020-12-29 22:11:46');
INSERT INTO `transaction` VALUES ('532', '2020-12-29', 'Sales', 'OU/163/1', '40101', '0.00', '92000.00', '2', '2', '7', '102', 'Penjualan Product Gudang Garam Surya 16', 'Aktif', '1', '2020-12-29 15:46:09', '1', '2020-12-29 15:46:09', '2020-12-29 22:11:46');
INSERT INTO `transaction` VALUES ('533', '2020-12-29', 'Sales', 'OU/163/1', '50101', '88200.00', '0.00', '2', '2', '7', '102', 'Penjualan Product Gudang Garam Surya 16', 'Aktif', '1', '2020-12-29 15:46:09', '1', '2020-12-29 15:46:09', '2020-12-29 22:11:47');
INSERT INTO `transaction` VALUES ('534', '2020-12-29', 'Sales', 'OU/163/1', '10201', '0.00', '88200.00', '2', '2', '7', '102', 'Penjualan Product Gudang Garam Surya 16', 'Aktif', '1', '2020-12-29 15:46:09', '1', '2020-12-29 15:46:09', '2020-12-29 22:11:47');
INSERT INTO `transaction` VALUES ('535', '2020-12-29', 'Sales', 'OU/164/1', '10101', '184000.00', '0.00', '2', '2', '7', '103', 'Penjualan Product Gudang Garam Surya 16', 'Aktif', '1', '2020-12-29 15:46:14', '1', '2020-12-29 15:46:14', '2020-12-29 22:10:41');
INSERT INTO `transaction` VALUES ('536', '2020-12-29', 'Sales', 'OU/164/1', '40101', '0.00', '184000.00', '2', '2', '7', '103', 'Penjualan Product Gudang Garam Surya 16', 'Aktif', '1', '2020-12-29 15:46:14', '1', '2020-12-29 15:46:14', '2020-12-29 22:10:41');
INSERT INTO `transaction` VALUES ('537', '2020-12-29', 'Sales', 'OU/164/1', '50101', '176200.00', '0.00', '2', '2', '7', '103', 'Penjualan Product Gudang Garam Surya 16', 'Aktif', '1', '2020-12-29 15:46:14', '1', '2020-12-29 15:46:14', '2020-12-29 22:10:41');
INSERT INTO `transaction` VALUES ('538', '2020-12-29', 'Sales', 'OU/164/1', '10201', '0.00', '176200.00', '2', '2', '7', '103', 'Penjualan Product Gudang Garam Surya 16', 'Aktif', '1', '2020-12-29 15:46:14', '1', '2020-12-29 15:46:14', '2020-12-29 22:10:41');
INSERT INTO `transaction` VALUES ('539', '2020-12-29', 'Sales', 'OU/165/1', '10101', '29000.00', '0.00', '2', '7', '7', '104', 'Penjualan Product Marlboro Merah', 'Aktif', '1', '2020-12-29 15:46:18', '1', '2020-12-29 15:46:18', '2020-12-29 22:12:12');
INSERT INTO `transaction` VALUES ('540', '2020-12-29', 'Sales', 'OU/165/1', '40101', '0.00', '29000.00', '2', '7', '7', '104', 'Penjualan Product Marlboro Merah', 'Aktif', '1', '2020-12-29 15:46:18', '1', '2020-12-29 15:46:18', '2020-12-29 22:12:13');
INSERT INTO `transaction` VALUES ('541', '2020-12-29', 'Sales', 'OU/165/1', '50101', '27650.00', '0.00', '2', '7', '7', '104', 'Penjualan Product Marlboro Merah', 'Aktif', '1', '2020-12-29 15:46:18', '1', '2020-12-29 15:46:18', '2020-12-29 22:12:13');
INSERT INTO `transaction` VALUES ('542', '2020-12-29', 'Sales', 'OU/165/1', '10201', '0.00', '27650.00', '2', '7', '7', '104', 'Penjualan Product Marlboro Merah', 'Aktif', '1', '2020-12-29 15:46:18', '1', '2020-12-29 15:46:18', '2020-12-29 22:12:13');
INSERT INTO `transaction` VALUES ('543', '2020-12-29', 'Procurement', 'IN/166/1', '10201', '220250.00', '0.00', '2', '2', '1', '65', 'Pembelian Product Gudang Garam Surya 16', 'Aktif', '1', '2020-12-29 15:50:04', '1', '2020-12-29 15:50:04', '2020-12-29 15:50:04');
INSERT INTO `transaction` VALUES ('544', '2020-12-29', 'Procurement', 'IN/166/1', '10101', '0.00', '220250.00', '2', '2', '1', '65', 'Pembelian Product Gudang Garam Surya 16', 'Aktif', '1', '2020-12-29 15:50:04', '1', '2020-12-29 15:50:04', '2020-12-29 15:50:04');
INSERT INTO `transaction` VALUES ('545', '2020-12-29', 'Procurement', 'IN/167/1', '10201', '821250.00', '0.00', '2', '1', '1', '66', 'Pembelian Product Gudang Garam Surya 12', 'Aktif', '1', '2020-12-29 15:51:49', '1', '2020-12-29 15:51:49', '2020-12-29 15:51:49');
INSERT INTO `transaction` VALUES ('546', '2020-12-29', 'Procurement', 'IN/167/1', '10101', '0.00', '821250.00', '2', '1', '1', '66', 'Pembelian Product Gudang Garam Surya 12', 'Aktif', '1', '2020-12-29 15:51:49', '1', '2020-12-29 15:51:49', '2020-12-29 15:51:49');
INSERT INTO `transaction` VALUES ('547', '2020-12-29', 'Procurement', 'IN/168/1', '10201', '825000.00', '0.00', '2', '1', '2', '67', 'Pembelian Product Gudang Garam Surya 12', 'Aktif', '1', '2020-12-29 15:51:55', '1', '2020-12-29 15:51:55', '2020-12-29 15:51:55');
INSERT INTO `transaction` VALUES ('548', '2020-12-29', 'Procurement', 'IN/168/1', '10101', '0.00', '825000.00', '2', '1', '2', '67', 'Pembelian Product Gudang Garam Surya 12', 'Aktif', '1', '2020-12-29 15:51:55', '1', '2020-12-29 15:51:55', '2020-12-29 15:51:55');
INSERT INTO `transaction` VALUES ('549', '2020-12-29', 'Sales', 'OU/169/1', '10101', '2292500.00', '0.00', '2', '1', '7', '101', 'Penjualan Product Gudang Garam Surya 12', 'Aktif', '1', '2020-12-29 16:06:21', '1', '2020-12-29 16:06:21', '2020-12-29 16:06:21');
INSERT INTO `transaction` VALUES ('550', '2020-12-29', 'Sales', 'OU/169/1', '40101', '0.00', '2292500.00', '2', '1', '7', '101', 'Penjualan Product Gudang Garam Surya 12', 'Aktif', '1', '2020-12-29 16:06:21', '1', '2020-12-29 16:06:21', '2020-12-29 16:06:21');
INSERT INTO `transaction` VALUES ('551', '2020-12-29', 'Sales', 'OU/169/1', '50101', '2151675.00', '0.00', '2', '1', '7', '101', 'Penjualan Product Gudang Garam Surya 12', 'Aktif', '1', '2020-12-29 16:06:21', '1', '2020-12-29 16:06:21', '2020-12-29 16:06:21');
INSERT INTO `transaction` VALUES ('552', '2020-12-29', 'Sales', 'OU/169/1', '10201', '0.00', '2151675.00', '2', '1', '7', '101', 'Penjualan Product Gudang Garam Surya 12', 'Aktif', '1', '2020-12-29 16:06:21', '1', '2020-12-29 16:06:21', '2020-12-29 16:06:21');
INSERT INTO `transaction` VALUES ('553', '2021-01-03', 'Sales', 'OU/170/1', '10101', '94000.00', '0.00', '3', '2', '7', '105', 'Penjualan Product Gudang Garam Surya 16', 'Aktif', '1', '2021-01-07 12:53:15', '1', '2021-01-07 12:53:15', '2021-01-07 12:53:15');
INSERT INTO `transaction` VALUES ('554', '2021-01-03', 'Sales', 'OU/170/1', '40101', '0.00', '94000.00', '3', '2', '7', '105', 'Penjualan Product Gudang Garam Surya 16', 'Aktif', '1', '2021-01-07 12:53:15', '1', '2021-01-07 12:53:15', '2021-01-07 12:53:15');
INSERT INTO `transaction` VALUES ('555', '2021-01-03', 'Sales', 'OU/170/1', '50101', '88100.00', '0.00', '3', '2', '7', '105', 'Penjualan Product Gudang Garam Surya 16', 'Aktif', '1', '2021-01-07 12:53:15', '1', '2021-01-07 12:53:15', '2021-01-07 12:53:15');
INSERT INTO `transaction` VALUES ('556', '2021-01-03', 'Sales', 'OU/170/1', '10201', '0.00', '88100.00', '3', '2', '7', '105', 'Penjualan Product Gudang Garam Surya 16', 'Aktif', '1', '2021-01-07 12:53:15', '1', '2021-01-07 12:53:15', '2021-01-07 12:53:15');
INSERT INTO `transaction` VALUES ('557', '2021-01-03', 'Sales', 'OU/171/1', '10101', '105000.00', '0.00', '3', '1', '7', '106', 'Penjualan Product Gudang Garam Surya 12', 'Aktif', '1', '2021-01-07 12:53:19', '1', '2021-01-07 12:53:19', '2021-01-07 12:53:19');
INSERT INTO `transaction` VALUES ('558', '2021-01-03', 'Sales', 'OU/171/1', '40101', '0.00', '105000.00', '3', '1', '7', '106', 'Penjualan Product Gudang Garam Surya 12', 'Aktif', '1', '2021-01-07 12:53:19', '1', '2021-01-07 12:53:19', '2021-01-07 12:53:19');
INSERT INTO `transaction` VALUES ('559', '2021-01-03', 'Sales', 'OU/171/1', '50101', '99000.00', '0.00', '3', '1', '7', '106', 'Penjualan Product Gudang Garam Surya 12', 'Aktif', '1', '2021-01-07 12:53:19', '1', '2021-01-07 12:53:19', '2021-01-07 12:53:19');
INSERT INTO `transaction` VALUES ('560', '2021-01-03', 'Sales', 'OU/171/1', '10201', '0.00', '99000.00', '3', '1', '7', '106', 'Penjualan Product Gudang Garam Surya 12', 'Aktif', '1', '2021-01-07 12:53:19', '1', '2021-01-07 12:53:19', '2021-01-07 12:53:19');
INSERT INTO `transaction` VALUES ('561', '2021-01-03', 'Sales', 'OU/172/1', '10101', '70000.00', '0.00', '3', '1', '7', '107', 'Penjualan Product Gudang Garam Surya 12', 'Aktif', '1', '2021-01-07 12:53:25', '1', '2021-01-07 12:53:25', '2021-01-07 12:53:25');
INSERT INTO `transaction` VALUES ('562', '2021-01-03', 'Sales', 'OU/172/1', '40101', '0.00', '70000.00', '3', '1', '7', '107', 'Penjualan Product Gudang Garam Surya 12', 'Aktif', '1', '2021-01-07 12:53:25', '1', '2021-01-07 12:53:25', '2021-01-07 12:53:25');
INSERT INTO `transaction` VALUES ('563', '2021-01-03', 'Sales', 'OU/172/1', '50101', '65700.00', '0.00', '3', '1', '7', '107', 'Penjualan Product Gudang Garam Surya 12', 'Aktif', '1', '2021-01-07 12:53:25', '1', '2021-01-07 12:53:25', '2021-01-07 12:53:25');
INSERT INTO `transaction` VALUES ('564', '2021-01-03', 'Sales', 'OU/172/1', '10201', '0.00', '65700.00', '3', '1', '7', '107', 'Penjualan Product Gudang Garam Surya 12', 'Aktif', '1', '2021-01-07 12:53:25', '1', '2021-01-07 12:53:25', '2021-01-07 12:53:25');
INSERT INTO `transaction` VALUES ('565', '2021-01-03', 'Sales', 'OU/173/1', '10101', '23500.00', '0.00', '3', '3', '7', '108', 'Penjualan Product Sampoerna Mild 16', 'Aktif', '1', '2021-01-07 12:53:30', '1', '2021-01-07 12:53:30', '2021-01-07 12:53:30');
INSERT INTO `transaction` VALUES ('566', '2021-01-03', 'Sales', 'OU/173/1', '40101', '0.00', '23500.00', '3', '3', '7', '108', 'Penjualan Product Sampoerna Mild 16', 'Aktif', '1', '2021-01-07 12:53:30', '1', '2021-01-07 12:53:30', '2021-01-07 12:53:30');
INSERT INTO `transaction` VALUES ('567', '2021-01-03', 'Sales', 'OU/173/1', '50101', '22025.00', '0.00', '3', '3', '7', '108', 'Penjualan Product Sampoerna Mild 16', 'Aktif', '1', '2021-01-07 12:53:30', '1', '2021-01-07 12:53:30', '2021-01-07 12:53:30');
INSERT INTO `transaction` VALUES ('568', '2021-01-03', 'Sales', 'OU/173/1', '10201', '0.00', '22025.00', '3', '3', '7', '108', 'Penjualan Product Sampoerna Mild 16', 'Aktif', '1', '2021-01-07 12:53:30', '1', '2021-01-07 12:53:30', '2021-01-07 12:53:30');
INSERT INTO `transaction` VALUES ('569', '2021-01-03', 'Sales', 'OU/174/1', '10101', '141000.00', '0.00', '3', '3', '7', '109', 'Penjualan Product Sampoerna Mild 16', 'Aktif', '1', '2021-01-07 12:53:36', '1', '2021-01-07 12:53:36', '2021-01-07 12:53:36');
INSERT INTO `transaction` VALUES ('570', '2021-01-03', 'Sales', 'OU/174/1', '40101', '0.00', '141000.00', '3', '3', '7', '109', 'Penjualan Product Sampoerna Mild 16', 'Aktif', '1', '2021-01-07 12:53:36', '1', '2021-01-07 12:53:36', '2021-01-07 12:53:36');
INSERT INTO `transaction` VALUES ('571', '2021-01-03', 'Sales', 'OU/174/1', '50101', '132000.00', '0.00', '3', '3', '7', '109', 'Penjualan Product Sampoerna Mild 16', 'Aktif', '1', '2021-01-07 12:53:36', '1', '2021-01-07 12:53:36', '2021-01-07 12:53:36');
INSERT INTO `transaction` VALUES ('572', '2021-01-03', 'Sales', 'OU/174/1', '10201', '0.00', '132000.00', '3', '3', '7', '109', 'Penjualan Product Sampoerna Mild 16', 'Aktif', '1', '2021-01-07 12:53:36', '1', '2021-01-07 12:53:36', '2021-01-07 12:53:36');
INSERT INTO `transaction` VALUES ('573', '2021-01-03', 'Sales', 'OU/175/1', '10101', '58000.00', '0.00', '3', '7', '7', '110', 'Penjualan Product Marlboro Merah', 'Aktif', '1', '2021-01-07 12:53:41', '1', '2021-01-07 12:53:41', '2021-01-07 12:53:41');
INSERT INTO `transaction` VALUES ('574', '2021-01-03', 'Sales', 'OU/175/1', '40101', '0.00', '58000.00', '3', '7', '7', '110', 'Penjualan Product Marlboro Merah', 'Aktif', '1', '2021-01-07 12:53:41', '1', '2021-01-07 12:53:41', '2021-01-07 12:53:41');
INSERT INTO `transaction` VALUES ('575', '2021-01-03', 'Sales', 'OU/175/1', '50101', '55300.00', '0.00', '3', '7', '7', '110', 'Penjualan Product Marlboro Merah', 'Aktif', '1', '2021-01-07 12:53:41', '1', '2021-01-07 12:53:41', '2021-01-07 12:53:41');
INSERT INTO `transaction` VALUES ('576', '2021-01-03', 'Sales', 'OU/175/1', '10201', '0.00', '55300.00', '3', '7', '7', '110', 'Penjualan Product Marlboro Merah', 'Aktif', '1', '2021-01-07 12:53:41', '1', '2021-01-07 12:53:41', '2021-01-07 12:53:41');
INSERT INTO `transaction` VALUES ('577', '2021-01-03', 'Sales', 'OU/176/1', '10101', '58000.00', '0.00', '3', '7', '7', '111', 'Penjualan Product Marlboro Merah', 'Aktif', '1', '2021-01-07 12:53:47', '1', '2021-01-07 12:53:47', '2021-01-07 12:53:47');
INSERT INTO `transaction` VALUES ('578', '2021-01-03', 'Sales', 'OU/176/1', '40101', '0.00', '58000.00', '3', '7', '7', '111', 'Penjualan Product Marlboro Merah', 'Aktif', '1', '2021-01-07 12:53:47', '1', '2021-01-07 12:53:47', '2021-01-07 12:53:47');
INSERT INTO `transaction` VALUES ('579', '2021-01-03', 'Sales', 'OU/176/1', '50101', '55150.00', '0.00', '3', '7', '7', '111', 'Penjualan Product Marlboro Merah', 'Aktif', '1', '2021-01-07 12:53:47', '1', '2021-01-07 12:53:47', '2021-01-07 12:53:47');
INSERT INTO `transaction` VALUES ('580', '2021-01-03', 'Sales', 'OU/176/1', '10201', '0.00', '55150.00', '3', '7', '7', '111', 'Penjualan Product Marlboro Merah', 'Aktif', '1', '2021-01-07 12:53:47', '1', '2021-01-07 12:53:47', '2021-01-07 12:53:47');
INSERT INTO `transaction` VALUES ('581', '2021-01-03', 'Sales', 'OU/177/1', '10101', '28500.00', '0.00', '3', '9', '7', '112', 'Penjualan Product Marlboro Hitam', 'Aktif', '1', '2021-01-07 12:53:52', '1', '2021-01-07 12:53:52', '2021-01-07 12:53:52');
INSERT INTO `transaction` VALUES ('582', '2021-01-03', 'Sales', 'OU/177/1', '40101', '0.00', '28500.00', '3', '9', '7', '112', 'Penjualan Product Marlboro Hitam', 'Aktif', '1', '2021-01-07 12:53:52', '1', '2021-01-07 12:53:52', '2021-01-07 12:53:52');
INSERT INTO `transaction` VALUES ('583', '2021-01-03', 'Sales', 'OU/177/1', '50101', '27600.00', '0.00', '3', '9', '7', '112', 'Penjualan Product Marlboro Hitam', 'Aktif', '1', '2021-01-07 12:53:52', '1', '2021-01-07 12:53:52', '2021-01-07 12:53:52');
INSERT INTO `transaction` VALUES ('584', '2021-01-03', 'Sales', 'OU/177/1', '10201', '0.00', '27600.00', '3', '9', '7', '112', 'Penjualan Product Marlboro Hitam', 'Aktif', '1', '2021-01-07 12:53:52', '1', '2021-01-07 12:53:52', '2021-01-07 12:53:52');
INSERT INTO `transaction` VALUES ('585', '2021-01-03', 'Sales', 'OU/178/1', '10101', '17500.00', '0.00', '3', '10', '7', '113', 'Penjualan Product Gudang Garam International', 'Aktif', '1', '2021-01-07 12:53:58', '1', '2021-01-07 12:53:58', '2021-01-07 12:53:58');
INSERT INTO `transaction` VALUES ('586', '2021-01-03', 'Sales', 'OU/178/1', '40101', '0.00', '17500.00', '3', '10', '7', '113', 'Penjualan Product Gudang Garam International', 'Aktif', '1', '2021-01-07 12:53:58', '1', '2021-01-07 12:53:58', '2021-01-07 12:53:58');
INSERT INTO `transaction` VALUES ('587', '2021-01-03', 'Sales', 'OU/178/1', '50101', '16575.00', '0.00', '3', '10', '7', '113', 'Penjualan Product Gudang Garam International', 'Aktif', '1', '2021-01-07 12:53:58', '1', '2021-01-07 12:53:58', '2021-01-07 12:53:58');
INSERT INTO `transaction` VALUES ('588', '2021-01-03', 'Sales', 'OU/178/1', '10201', '0.00', '16575.00', '3', '10', '7', '113', 'Penjualan Product Gudang Garam International', 'Aktif', '1', '2021-01-07 12:53:58', '1', '2021-01-07 12:53:58', '2021-01-07 12:53:58');
INSERT INTO `transaction` VALUES ('589', '2021-01-03', 'Sales', 'OU/179/1', '10101', '19500.00', '0.00', '3', '23', '7', '114', 'Penjualan Product Magnum Mild', 'Aktif', '1', '2021-01-07 12:54:03', '1', '2021-01-07 12:54:03', '2021-01-07 12:54:03');
INSERT INTO `transaction` VALUES ('590', '2021-01-03', 'Sales', 'OU/179/1', '40101', '0.00', '19500.00', '3', '23', '7', '114', 'Penjualan Product Magnum Mild', 'Aktif', '1', '2021-01-07 12:54:03', '1', '2021-01-07 12:54:03', '2021-01-07 12:54:03');
INSERT INTO `transaction` VALUES ('591', '2021-01-03', 'Sales', 'OU/179/1', '50101', '18400.00', '0.00', '3', '23', '7', '114', 'Penjualan Product Magnum Mild', 'Aktif', '1', '2021-01-07 12:54:03', '1', '2021-01-07 12:54:03', '2021-01-07 12:54:03');
INSERT INTO `transaction` VALUES ('592', '2021-01-03', 'Sales', 'OU/179/1', '10201', '0.00', '18400.00', '3', '23', '7', '114', 'Penjualan Product Magnum Mild', 'Aktif', '1', '2021-01-07 12:54:03', '1', '2021-01-07 12:54:03', '2021-01-07 12:54:03');
INSERT INTO `transaction` VALUES ('593', '2021-01-03', 'Sales', 'OU/180/1', '10101', '73500.00', '0.00', '3', '12', '7', '115', 'Penjualan Product LA Bold', 'Aktif', '1', '2021-01-07 12:54:08', '1', '2021-01-07 12:54:08', '2021-01-07 12:54:08');
INSERT INTO `transaction` VALUES ('594', '2021-01-03', 'Sales', 'OU/180/1', '40101', '0.00', '73500.00', '3', '12', '7', '115', 'Penjualan Product LA Bold', 'Aktif', '1', '2021-01-07 12:54:08', '1', '2021-01-07 12:54:08', '2021-01-07 12:54:08');
INSERT INTO `transaction` VALUES ('595', '2021-01-03', 'Sales', 'OU/180/1', '50101', '70875.00', '0.00', '3', '12', '7', '115', 'Penjualan Product LA Bold', 'Aktif', '1', '2021-01-07 12:54:08', '1', '2021-01-07 12:54:08', '2021-01-07 12:54:08');
INSERT INTO `transaction` VALUES ('596', '2021-01-03', 'Sales', 'OU/180/1', '10201', '0.00', '70875.00', '3', '12', '7', '115', 'Penjualan Product LA Bold', 'Aktif', '1', '2021-01-07 12:54:08', '1', '2021-01-07 12:54:08', '2021-01-07 12:54:08');
INSERT INTO `transaction` VALUES ('597', '2021-01-03', 'Sales', 'OU/181/1', '10101', '13500.00', '0.00', '3', '15', '7', '116', 'Penjualan Product Pena Mild', 'Aktif', '1', '2021-01-07 12:54:14', '1', '2021-01-07 12:54:14', '2021-01-07 12:54:14');
INSERT INTO `transaction` VALUES ('598', '2021-01-03', 'Sales', 'OU/181/1', '40101', '0.00', '13500.00', '3', '15', '7', '116', 'Penjualan Product Pena Mild', 'Aktif', '1', '2021-01-07 12:54:14', '1', '2021-01-07 12:54:14', '2021-01-07 12:54:14');
INSERT INTO `transaction` VALUES ('599', '2021-01-03', 'Sales', 'OU/181/1', '50101', '12450.00', '0.00', '3', '15', '7', '116', 'Penjualan Product Pena Mild', 'Aktif', '1', '2021-01-07 12:54:14', '1', '2021-01-07 12:54:14', '2021-01-07 12:54:14');
INSERT INTO `transaction` VALUES ('600', '2021-01-03', 'Sales', 'OU/181/1', '10201', '0.00', '12450.00', '3', '15', '7', '116', 'Penjualan Product Pena Mild', 'Aktif', '1', '2021-01-07 12:54:14', '1', '2021-01-07 12:54:14', '2021-01-07 12:54:14');
INSERT INTO `transaction` VALUES ('601', '2021-01-03', 'Sales', 'OU/182/1', '10101', '32000.00', '0.00', '3', '16', '7', '117', 'Penjualan Product Geo Mild', 'Aktif', '1', '2021-01-07 12:54:19', '1', '2021-01-07 12:54:19', '2021-01-07 12:54:19');
INSERT INTO `transaction` VALUES ('602', '2021-01-03', 'Sales', 'OU/182/1', '40101', '0.00', '32000.00', '3', '16', '7', '117', 'Penjualan Product Geo Mild', 'Aktif', '1', '2021-01-07 12:54:19', '1', '2021-01-07 12:54:19', '2021-01-07 12:54:19');
INSERT INTO `transaction` VALUES ('603', '2021-01-03', 'Sales', 'OU/182/1', '50101', '29500.00', '0.00', '3', '16', '7', '117', 'Penjualan Product Geo Mild', 'Aktif', '1', '2021-01-07 12:54:19', '1', '2021-01-07 12:54:19', '2021-01-07 12:54:19');
INSERT INTO `transaction` VALUES ('604', '2021-01-03', 'Sales', 'OU/182/1', '10201', '0.00', '29500.00', '3', '16', '7', '117', 'Penjualan Product Geo Mild', 'Aktif', '1', '2021-01-07 12:54:19', '1', '2021-01-07 12:54:19', '2021-01-07 12:54:19');
INSERT INTO `transaction` VALUES ('605', '2021-01-03', 'Sales', 'OU/183/1', '10101', '37500.00', '0.00', '3', '24', '7', '118', 'Penjualan Product Aga Kretek', 'Aktif', '1', '2021-01-07 12:54:25', '1', '2021-01-07 12:54:25', '2021-01-07 12:54:25');
INSERT INTO `transaction` VALUES ('606', '2021-01-03', 'Sales', 'OU/183/1', '40101', '0.00', '37500.00', '3', '24', '7', '118', 'Penjualan Product Aga Kretek', 'Aktif', '1', '2021-01-07 12:54:25', '1', '2021-01-07 12:54:25', '2021-01-07 12:54:25');
INSERT INTO `transaction` VALUES ('607', '2021-01-03', 'Sales', 'OU/183/1', '50101', '34200.00', '0.00', '3', '24', '7', '118', 'Penjualan Product Aga Kretek', 'Aktif', '1', '2021-01-07 12:54:25', '1', '2021-01-07 12:54:25', '2021-01-07 12:54:25');
INSERT INTO `transaction` VALUES ('608', '2021-01-03', 'Sales', 'OU/183/1', '10201', '0.00', '34200.00', '3', '24', '7', '118', 'Penjualan Product Aga Kretek', 'Aktif', '1', '2021-01-07 12:54:25', '1', '2021-01-07 12:54:25', '2021-01-07 12:54:25');
INSERT INTO `transaction` VALUES ('609', '2021-01-03', 'Sales', 'OU/184/1', '10101', '12000.00', '0.00', '3', '19', '7', '119', 'Penjualan Product Gudang Garam Surya (Kaleng)', 'Aktif', '1', '2021-01-07 12:54:31', '1', '2021-01-07 12:54:31', '2021-01-07 12:54:31');
INSERT INTO `transaction` VALUES ('610', '2021-01-03', 'Sales', 'OU/184/1', '40101', '0.00', '12000.00', '3', '19', '7', '119', 'Penjualan Product Gudang Garam Surya (Kaleng)', 'Aktif', '1', '2021-01-07 12:54:31', '1', '2021-01-07 12:54:31', '2021-01-07 12:54:31');
INSERT INTO `transaction` VALUES ('611', '2021-01-03', 'Sales', 'OU/184/1', '50101', '10640.00', '0.00', '3', '19', '7', '119', 'Penjualan Product Gudang Garam Surya (Kaleng)', 'Aktif', '1', '2021-01-07 12:54:31', '1', '2021-01-07 12:54:31', '2021-01-07 12:54:31');
INSERT INTO `transaction` VALUES ('612', '2021-01-03', 'Sales', 'OU/184/1', '10201', '0.00', '10640.00', '3', '19', '7', '119', 'Penjualan Product Gudang Garam Surya (Kaleng)', 'Aktif', '1', '2021-01-07 12:54:31', '1', '2021-01-07 12:54:31', '2021-01-07 12:54:31');
INSERT INTO `transaction` VALUES ('613', '2021-01-03', 'Sales', 'OU/185/1', '10101', '14000.00', '0.00', '3', '20', '7', '120', 'Penjualan Product Korek Api', 'Aktif', '1', '2021-01-07 12:54:37', '1', '2021-01-07 12:54:37', '2021-01-07 12:54:37');
INSERT INTO `transaction` VALUES ('614', '2021-01-03', 'Sales', 'OU/185/1', '40104', '0.00', '14000.00', '3', '20', '7', '120', 'Penjualan Product Korek Api', 'Aktif', '1', '2021-01-07 12:54:37', '1', '2021-01-07 12:54:37', '2021-01-07 12:54:37');
INSERT INTO `transaction` VALUES ('615', '2021-01-03', 'Sales', 'OU/185/1', '50104', '11200.00', '0.00', '3', '20', '7', '120', 'Penjualan Product Korek Api', 'Aktif', '1', '2021-01-07 12:54:37', '1', '2021-01-07 12:54:37', '2021-01-07 12:54:37');
INSERT INTO `transaction` VALUES ('616', '2021-01-03', 'Sales', 'OU/185/1', '10204', '0.00', '11200.00', '3', '20', '7', '120', 'Penjualan Product Korek Api', 'Aktif', '1', '2021-01-07 12:54:37', '1', '2021-01-07 12:54:37', '2021-01-07 12:54:37');
INSERT INTO `transaction` VALUES ('617', '2021-01-03', 'Sales', 'OU/186/1', '10101', '235000.00', '0.00', '1', '2', '7', '121', 'Penjualan Product Gudang Garam Surya 16', 'Aktif', '1', '2021-01-07 13:50:55', '1', '2021-01-07 13:50:55', '2021-01-07 13:50:55');
INSERT INTO `transaction` VALUES ('618', '2021-01-03', 'Sales', 'OU/186/1', '40101', '0.00', '235000.00', '1', '2', '7', '121', 'Penjualan Product Gudang Garam Surya 16', 'Aktif', '1', '2021-01-07 13:50:55', '1', '2021-01-07 13:50:55', '2021-01-07 13:50:55');
INSERT INTO `transaction` VALUES ('619', '2021-01-03', 'Sales', 'OU/186/1', '50101', '220250.00', '0.00', '1', '2', '7', '121', 'Penjualan Product Gudang Garam Surya 16', 'Aktif', '1', '2021-01-07 13:50:55', '1', '2021-01-07 13:50:55', '2021-01-07 13:50:55');
INSERT INTO `transaction` VALUES ('620', '2021-01-03', 'Sales', 'OU/186/1', '10201', '0.00', '220250.00', '1', '2', '7', '121', 'Penjualan Product Gudang Garam Surya 16', 'Aktif', '1', '2021-01-07 13:50:55', '1', '2021-01-07 13:50:55', '2021-01-07 13:50:55');
INSERT INTO `transaction` VALUES ('621', '2021-01-03', 'Sales', 'OU/187/1', '10101', '87500.00', '0.00', '1', '1', '7', '122', 'Penjualan Product Gudang Garam Surya 12', 'Aktif', '1', '2021-01-07 13:51:01', '1', '2021-01-07 13:51:01', '2021-01-07 13:51:01');
INSERT INTO `transaction` VALUES ('622', '2021-01-03', 'Sales', 'OU/187/1', '40101', '0.00', '87500.00', '1', '1', '7', '122', 'Penjualan Product Gudang Garam Surya 12', 'Aktif', '1', '2021-01-07 13:51:01', '1', '2021-01-07 13:51:01', '2021-01-07 13:51:01');
INSERT INTO `transaction` VALUES ('623', '2021-01-03', 'Sales', 'OU/187/1', '50101', '82125.00', '0.00', '1', '1', '7', '122', 'Penjualan Product Gudang Garam Surya 12', 'Aktif', '1', '2021-01-07 13:51:01', '1', '2021-01-07 13:51:01', '2021-01-07 13:51:01');
INSERT INTO `transaction` VALUES ('624', '2021-01-03', 'Sales', 'OU/187/1', '10201', '0.00', '82125.00', '1', '1', '7', '122', 'Penjualan Product Gudang Garam Surya 12', 'Aktif', '1', '2021-01-07 13:51:01', '1', '2021-01-07 13:51:01', '2021-01-07 13:51:01');
INSERT INTO `transaction` VALUES ('625', '2021-01-03', 'Sales', 'OU/188/1', '10101', '157500.00', '0.00', '1', '1', '7', '123', 'Penjualan Product Gudang Garam Surya 12', 'Aktif', '1', '2021-01-07 13:51:08', '1', '2021-01-07 13:51:08', '2021-01-07 13:51:08');
INSERT INTO `transaction` VALUES ('626', '2021-01-03', 'Sales', 'OU/188/1', '40101', '0.00', '157500.00', '1', '1', '7', '123', 'Penjualan Product Gudang Garam Surya 12', 'Aktif', '1', '2021-01-07 13:51:08', '1', '2021-01-07 13:51:08', '2021-01-07 13:51:08');
INSERT INTO `transaction` VALUES ('627', '2021-01-03', 'Sales', 'OU/188/1', '50101', '147825.00', '0.00', '1', '1', '7', '123', 'Penjualan Product Gudang Garam Surya 12', 'Aktif', '1', '2021-01-07 13:51:08', '1', '2021-01-07 13:51:08', '2021-01-07 13:51:08');
INSERT INTO `transaction` VALUES ('628', '2021-01-03', 'Sales', 'OU/188/1', '10201', '0.00', '147825.00', '1', '1', '7', '123', 'Penjualan Product Gudang Garam Surya 12', 'Aktif', '1', '2021-01-07 13:51:08', '1', '2021-01-07 13:51:08', '2021-01-07 13:51:08');
INSERT INTO `transaction` VALUES ('629', '2021-01-03', 'Sales', 'OU/189/1', '10101', '23500.00', '0.00', '1', '3', '7', '124', 'Penjualan Product Sampoerna Mild 16', 'Aktif', '1', '2021-01-07 13:51:16', '1', '2021-01-07 13:51:16', '2021-01-07 13:51:16');
INSERT INTO `transaction` VALUES ('630', '2021-01-03', 'Sales', 'OU/189/1', '40101', '0.00', '23500.00', '1', '3', '7', '124', 'Penjualan Product Sampoerna Mild 16', 'Aktif', '1', '2021-01-07 13:51:16', '1', '2021-01-07 13:51:16', '2021-01-07 13:51:16');
INSERT INTO `transaction` VALUES ('631', '2021-01-03', 'Sales', 'OU/189/1', '50101', '22050.00', '0.00', '1', '3', '7', '124', 'Penjualan Product Sampoerna Mild 16', 'Aktif', '1', '2021-01-07 13:51:16', '1', '2021-01-07 13:51:16', '2021-01-07 13:51:16');
INSERT INTO `transaction` VALUES ('632', '2021-01-03', 'Sales', 'OU/189/1', '10201', '0.00', '22050.00', '1', '3', '7', '124', 'Penjualan Product Sampoerna Mild 16', 'Aktif', '1', '2021-01-07 13:51:16', '1', '2021-01-07 13:51:16', '2021-01-07 13:51:16');
INSERT INTO `transaction` VALUES ('633', '2021-01-03', 'Sales', 'OU/190/1', '10101', '23500.00', '0.00', '1', '3', '7', '125', 'Penjualan Product Sampoerna Mild 16', 'Aktif', '1', '2021-01-07 13:51:23', '1', '2021-01-07 13:51:23', '2021-01-07 13:51:23');
INSERT INTO `transaction` VALUES ('634', '2021-01-03', 'Sales', 'OU/190/1', '40101', '0.00', '23500.00', '1', '3', '7', '125', 'Penjualan Product Sampoerna Mild 16', 'Aktif', '1', '2021-01-07 13:51:23', '1', '2021-01-07 13:51:23', '2021-01-07 13:51:23');
INSERT INTO `transaction` VALUES ('635', '2021-01-03', 'Sales', 'OU/190/1', '50101', '22000.00', '0.00', '1', '3', '7', '125', 'Penjualan Product Sampoerna Mild 16', 'Aktif', '1', '2021-01-07 13:51:23', '1', '2021-01-07 13:51:23', '2021-01-07 13:51:23');
INSERT INTO `transaction` VALUES ('636', '2021-01-03', 'Sales', 'OU/190/1', '10201', '0.00', '22000.00', '1', '3', '7', '125', 'Penjualan Product Sampoerna Mild 16', 'Aktif', '1', '2021-01-07 13:51:23', '1', '2021-01-07 13:51:23', '2021-01-07 13:51:23');
INSERT INTO `transaction` VALUES ('637', '2021-01-03', 'Sales', 'OU/191/1', '10101', '17500.00', '0.00', '1', '4', '7', '126', 'Penjualan Product Sampoerna Mild 12', 'Aktif', '1', '2021-01-07 13:51:28', '1', '2021-01-07 13:51:28', '2021-01-07 13:51:28');
INSERT INTO `transaction` VALUES ('638', '2021-01-03', 'Sales', 'OU/191/1', '40101', '0.00', '17500.00', '1', '4', '7', '126', 'Penjualan Product Sampoerna Mild 12', 'Aktif', '1', '2021-01-07 13:51:28', '1', '2021-01-07 13:51:28', '2021-01-07 13:51:28');
INSERT INTO `transaction` VALUES ('639', '2021-01-03', 'Sales', 'OU/191/1', '50101', '16100.00', '0.00', '1', '4', '7', '126', 'Penjualan Product Sampoerna Mild 12', 'Aktif', '1', '2021-01-07 13:51:28', '1', '2021-01-07 13:51:28', '2021-01-07 13:51:28');
INSERT INTO `transaction` VALUES ('640', '2021-01-03', 'Sales', 'OU/191/1', '10201', '0.00', '16100.00', '1', '4', '7', '126', 'Penjualan Product Sampoerna Mild 12', 'Aktif', '1', '2021-01-07 13:51:28', '1', '2021-01-07 13:51:28', '2021-01-07 13:51:28');
INSERT INTO `transaction` VALUES ('641', '2021-01-03', 'Sales', 'OU/192/1', '10101', '21500.00', '0.00', '1', '5', '7', '127', 'Penjualan Product Umild 16', 'Aktif', '1', '2021-01-07 13:51:34', '1', '2021-01-07 13:51:34', '2021-01-07 13:51:34');
INSERT INTO `transaction` VALUES ('642', '2021-01-03', 'Sales', 'OU/192/1', '40101', '0.00', '21500.00', '1', '5', '7', '127', 'Penjualan Product Umild 16', 'Aktif', '1', '2021-01-07 13:51:34', '1', '2021-01-07 13:51:34', '2021-01-07 13:51:34');
INSERT INTO `transaction` VALUES ('643', '2021-01-03', 'Sales', 'OU/192/1', '50101', '20300.00', '0.00', '1', '5', '7', '127', 'Penjualan Product Umild 16', 'Aktif', '1', '2021-01-07 13:51:34', '1', '2021-01-07 13:51:34', '2021-01-07 13:51:34');
INSERT INTO `transaction` VALUES ('644', '2021-01-03', 'Sales', 'OU/192/1', '10201', '0.00', '20300.00', '1', '5', '7', '127', 'Penjualan Product Umild 16', 'Aktif', '1', '2021-01-07 13:51:34', '1', '2021-01-07 13:51:34', '2021-01-07 13:51:34');
INSERT INTO `transaction` VALUES ('645', '2021-01-03', 'Sales', 'OU/193/1', '10101', '29000.00', '0.00', '1', '8', '7', '128', 'Penjualan Product Marlboro Putih', 'Aktif', '1', '2021-01-07 13:51:40', '1', '2021-01-07 13:51:40', '2021-01-07 13:51:40');
INSERT INTO `transaction` VALUES ('646', '2021-01-03', 'Sales', 'OU/193/1', '40101', '0.00', '29000.00', '1', '8', '7', '128', 'Penjualan Product Marlboro Putih', 'Aktif', '1', '2021-01-07 13:51:40', '1', '2021-01-07 13:51:40', '2021-01-07 13:51:40');
INSERT INTO `transaction` VALUES ('647', '2021-01-03', 'Sales', 'OU/193/1', '50101', '27650.00', '0.00', '1', '8', '7', '128', 'Penjualan Product Marlboro Putih', 'Aktif', '1', '2021-01-07 13:51:40', '1', '2021-01-07 13:51:40', '2021-01-07 13:51:40');
INSERT INTO `transaction` VALUES ('648', '2021-01-03', 'Sales', 'OU/193/1', '10201', '0.00', '27650.00', '1', '8', '7', '128', 'Penjualan Product Marlboro Putih', 'Aktif', '1', '2021-01-07 13:51:40', '1', '2021-01-07 13:51:40', '2021-01-07 13:51:40');
INSERT INTO `transaction` VALUES ('649', '2021-01-03', 'Sales', 'OU/194/1', '10101', '28500.00', '0.00', '1', '9', '7', '129', 'Penjualan Product Marlboro Hitam', 'Aktif', '1', '2021-01-07 13:51:46', '1', '2021-01-07 13:51:46', '2021-01-07 13:51:46');
INSERT INTO `transaction` VALUES ('650', '2021-01-03', 'Sales', 'OU/194/1', '40101', '0.00', '28500.00', '1', '9', '7', '129', 'Penjualan Product Marlboro Hitam', 'Aktif', '1', '2021-01-07 13:51:46', '1', '2021-01-07 13:51:46', '2021-01-07 13:51:46');
INSERT INTO `transaction` VALUES ('651', '2021-01-03', 'Sales', 'OU/194/1', '50101', '27600.00', '0.00', '1', '9', '7', '129', 'Penjualan Product Marlboro Hitam', 'Aktif', '1', '2021-01-07 13:51:46', '1', '2021-01-07 13:51:46', '2021-01-07 13:51:46');
INSERT INTO `transaction` VALUES ('652', '2021-01-03', 'Sales', 'OU/194/1', '10201', '0.00', '27600.00', '1', '9', '7', '129', 'Penjualan Product Marlboro Hitam', 'Aktif', '1', '2021-01-07 13:51:46', '1', '2021-01-07 13:51:46', '2021-01-07 13:51:46');
INSERT INTO `transaction` VALUES ('653', '2021-01-03', 'Sales', 'OU/195/1', '10101', '57000.00', '0.00', '1', '9', '7', '130', 'Penjualan Product Marlboro Hitam', 'Aktif', '1', '2021-01-07 13:51:52', '1', '2021-01-07 13:51:52', '2021-01-07 13:51:52');
INSERT INTO `transaction` VALUES ('654', '2021-01-03', 'Sales', 'OU/195/1', '40101', '0.00', '57000.00', '1', '9', '7', '130', 'Penjualan Product Marlboro Hitam', 'Aktif', '1', '2021-01-07 13:51:52', '1', '2021-01-07 13:51:52', '2021-01-07 13:51:52');
INSERT INTO `transaction` VALUES ('655', '2021-01-03', 'Sales', 'OU/195/1', '50101', '55100.00', '0.00', '1', '9', '7', '130', 'Penjualan Product Marlboro Hitam', 'Aktif', '1', '2021-01-07 13:51:52', '1', '2021-01-07 13:51:52', '2021-01-07 13:51:52');
INSERT INTO `transaction` VALUES ('656', '2021-01-03', 'Sales', 'OU/195/1', '10201', '0.00', '55100.00', '1', '9', '7', '130', 'Penjualan Product Marlboro Hitam', 'Aktif', '1', '2021-01-07 13:51:52', '1', '2021-01-07 13:51:52', '2021-01-07 13:51:52');
INSERT INTO `transaction` VALUES ('657', '2021-01-03', 'Sales', 'OU/196/1', '10101', '105000.00', '0.00', '1', '10', '7', '131', 'Penjualan Product Gudang Garam International', 'Aktif', '1', '2021-01-07 13:52:02', '1', '2021-01-07 13:52:02', '2021-01-07 13:52:02');
INSERT INTO `transaction` VALUES ('658', '2021-01-03', 'Sales', 'OU/196/1', '40101', '0.00', '105000.00', '1', '10', '7', '131', 'Penjualan Product Gudang Garam International', 'Aktif', '1', '2021-01-07 13:52:02', '1', '2021-01-07 13:52:02', '2021-01-07 13:52:02');
INSERT INTO `transaction` VALUES ('659', '2021-01-03', 'Sales', 'OU/196/1', '50101', '99450.00', '0.00', '1', '10', '7', '131', 'Penjualan Product Gudang Garam International', 'Aktif', '1', '2021-01-07 13:52:02', '1', '2021-01-07 13:52:02', '2021-01-07 13:52:02');
INSERT INTO `transaction` VALUES ('660', '2021-01-03', 'Sales', 'OU/196/1', '10201', '0.00', '99450.00', '1', '10', '7', '131', 'Penjualan Product Gudang Garam International', 'Aktif', '1', '2021-01-07 13:52:02', '1', '2021-01-07 13:52:02', '2021-01-07 13:52:02');
INSERT INTO `transaction` VALUES ('661', '2021-01-03', 'Sales', 'OU/197/1', '10101', '22500.00', '0.00', '1', '13', '7', '132', 'Penjualan Product Dji Sam Soe', 'Aktif', '1', '2021-01-07 13:52:09', '1', '2021-01-07 13:52:09', '2021-01-07 13:52:09');
INSERT INTO `transaction` VALUES ('662', '2021-01-03', 'Sales', 'OU/197/1', '40101', '0.00', '22500.00', '1', '13', '7', '132', 'Penjualan Product Dji Sam Soe', 'Aktif', '1', '2021-01-07 13:52:09', '1', '2021-01-07 13:52:09', '2021-01-07 13:52:09');
INSERT INTO `transaction` VALUES ('663', '2021-01-03', 'Sales', 'OU/197/1', '50101', '21500.00', '0.00', '1', '13', '7', '132', 'Penjualan Product Dji Sam Soe', 'Aktif', '1', '2021-01-07 13:52:09', '1', '2021-01-07 13:52:09', '2021-01-07 13:52:09');
INSERT INTO `transaction` VALUES ('664', '2021-01-03', 'Sales', 'OU/197/1', '10201', '0.00', '21500.00', '1', '13', '7', '132', 'Penjualan Product Dji Sam Soe', 'Aktif', '1', '2021-01-07 13:52:09', '1', '2021-01-07 13:52:09', '2021-01-07 13:52:09');
INSERT INTO `transaction` VALUES ('669', '2021-01-03', 'Sales', 'OU/199/1', '10101', '12500.00', '0.00', '1', '24', '7', '134', 'Penjualan Product Aga Kretek', 'Aktif', '1', '2021-01-07 13:52:21', '1', '2021-01-07 13:52:21', '2021-01-07 13:52:21');
INSERT INTO `transaction` VALUES ('670', '2021-01-03', 'Sales', 'OU/199/1', '40101', '0.00', '12500.00', '1', '24', '7', '134', 'Penjualan Product Aga Kretek', 'Aktif', '1', '2021-01-07 13:52:21', '1', '2021-01-07 13:52:21', '2021-01-07 13:52:21');
INSERT INTO `transaction` VALUES ('671', '2021-01-03', 'Sales', 'OU/199/1', '50101', '11625.00', '0.00', '1', '24', '7', '134', 'Penjualan Product Aga Kretek', 'Aktif', '1', '2021-01-07 13:52:21', '1', '2021-01-07 13:52:21', '2021-01-07 13:52:21');
INSERT INTO `transaction` VALUES ('672', '2021-01-03', 'Sales', 'OU/199/1', '10201', '0.00', '11625.00', '1', '24', '7', '134', 'Penjualan Product Aga Kretek', 'Aktif', '1', '2021-01-07 13:52:21', '1', '2021-01-07 13:52:21', '2021-01-07 13:52:21');
INSERT INTO `transaction` VALUES ('673', '2021-01-03', 'Sales', 'OU/200/1', '10101', '13500.00', '0.00', '1', '19', '7', '135', 'Penjualan Product Gudang Garam Surya (Kaleng)', 'Aktif', '1', '2021-01-07 13:52:27', '1', '2021-01-07 13:52:27', '2021-01-07 13:52:27');
INSERT INTO `transaction` VALUES ('674', '2021-01-03', 'Sales', 'OU/200/1', '40101', '0.00', '13500.00', '1', '19', '7', '135', 'Penjualan Product Gudang Garam Surya (Kaleng)', 'Aktif', '1', '2021-01-07 13:52:27', '1', '2021-01-07 13:52:27', '2021-01-07 13:52:27');
INSERT INTO `transaction` VALUES ('675', '2021-01-03', 'Sales', 'OU/200/1', '50101', '11970.00', '0.00', '1', '19', '7', '135', 'Penjualan Product Gudang Garam Surya (Kaleng)', 'Aktif', '1', '2021-01-07 13:52:27', '1', '2021-01-07 13:52:27', '2021-01-07 13:52:27');
INSERT INTO `transaction` VALUES ('676', '2021-01-03', 'Sales', 'OU/200/1', '10201', '0.00', '11970.00', '1', '19', '7', '135', 'Penjualan Product Gudang Garam Surya (Kaleng)', 'Aktif', '1', '2021-01-07 13:52:27', '1', '2021-01-07 13:52:27', '2021-01-07 13:52:27');
INSERT INTO `transaction` VALUES ('677', '2021-01-03', 'Sales', 'OU/201/1', '10101', '2000.00', '0.00', '1', '20', '7', '136', 'Penjualan Product Korek Api', 'Aktif', '1', '2021-01-07 13:52:33', '1', '2021-01-07 13:52:33', '2021-01-07 13:52:33');
INSERT INTO `transaction` VALUES ('678', '2021-01-03', 'Sales', 'OU/201/1', '40104', '0.00', '2000.00', '1', '20', '7', '136', 'Penjualan Product Korek Api', 'Aktif', '1', '2021-01-07 13:52:33', '1', '2021-01-07 13:52:33', '2021-01-07 13:52:33');
INSERT INTO `transaction` VALUES ('679', '2021-01-03', 'Sales', 'OU/201/1', '50104', '1600.00', '0.00', '1', '20', '7', '136', 'Penjualan Product Korek Api', 'Aktif', '1', '2021-01-07 13:52:33', '1', '2021-01-07 13:52:33', '2021-01-07 13:52:33');
INSERT INTO `transaction` VALUES ('680', '2021-01-03', 'Sales', 'OU/201/1', '10204', '0.00', '1600.00', '1', '20', '7', '136', 'Penjualan Product Korek Api', 'Aktif', '1', '2021-01-07 13:52:33', '1', '2021-01-07 13:52:33', '2021-01-07 13:52:33');
INSERT INTO `transaction` VALUES ('681', '2021-01-03', 'Procurement', 'IN/202/1', '10201', '328500.00', '0.00', '1', '1', '1', '68', 'Pembelian Product Gudang Garam Surya 12', 'Aktif', '1', '2021-01-07 14:03:18', '1', '2021-01-07 14:03:18', '2021-01-07 14:03:18');
INSERT INTO `transaction` VALUES ('682', '2021-01-03', 'Procurement', 'IN/202/1', '10101', '0.00', '328500.00', '1', '1', '1', '68', 'Pembelian Product Gudang Garam Surya 12', 'Aktif', '1', '2021-01-07 14:03:18', '1', '2021-01-07 14:03:18', '2021-01-07 14:03:18');
INSERT INTO `transaction` VALUES ('683', '2021-01-03', 'Procurement', 'IN/203/1', '10201', '82725.00', '0.00', '1', '8', '1', '69', 'Pembelian Product Marlboro Putih', 'Aktif', '1', '2021-01-07 14:03:25', '1', '2021-01-07 14:03:25', '2021-01-07 14:03:25');
INSERT INTO `transaction` VALUES ('684', '2021-01-03', 'Procurement', 'IN/203/1', '10101', '0.00', '82725.00', '1', '8', '1', '69', 'Pembelian Product Marlboro Putih', 'Aktif', '1', '2021-01-07 14:03:25', '1', '2021-01-07 14:03:25', '2021-01-07 14:03:25');
INSERT INTO `transaction` VALUES ('685', '2021-01-03', 'Procurement', 'IN/204/1', '10201', '66200.00', '0.00', '1', '10', '1', '70', 'Pembelian Product Gudang Garam International', 'Aktif', '1', '2021-01-07 14:03:30', '1', '2021-01-07 14:03:30', '2021-01-07 14:03:30');
INSERT INTO `transaction` VALUES ('686', '2021-01-03', 'Procurement', 'IN/204/1', '10101', '0.00', '66200.00', '1', '10', '1', '70', 'Pembelian Product Gudang Garam International', 'Aktif', '1', '2021-01-07 14:03:30', '1', '2021-01-07 14:03:30', '2021-01-07 14:03:30');
INSERT INTO `transaction` VALUES ('687', '2021-01-03', 'Procurement', 'IN/205/1', '10201', '115150.00', '0.00', '3', '1', '1', '71', 'Pembelian Product Gudang Garam Surya 12', 'Aktif', '1', '2021-01-07 14:03:37', '1', '2021-01-07 14:03:37', '2021-01-07 14:03:37');
INSERT INTO `transaction` VALUES ('688', '2021-01-03', 'Procurement', 'IN/205/1', '10101', '0.00', '115150.00', '3', '1', '1', '71', 'Pembelian Product Gudang Garam Surya 12', 'Aktif', '1', '2021-01-07 14:03:37', '1', '2021-01-07 14:03:37', '2021-01-07 14:03:37');
INSERT INTO `transaction` VALUES ('689', '2021-01-03', 'Procurement', 'IN/206/1', '10201', '220000.00', '0.00', '3', '3', '1', '72', 'Pembelian Product Sampoerna Mild 16', 'Aktif', '1', '2021-01-07 14:03:43', '1', '2021-01-07 14:03:43', '2021-01-07 14:03:43');
INSERT INTO `transaction` VALUES ('690', '2021-01-03', 'Procurement', 'IN/206/1', '10101', '0.00', '220000.00', '3', '3', '1', '72', 'Pembelian Product Sampoerna Mild 16', 'Aktif', '1', '2021-01-07 14:03:43', '1', '2021-01-07 14:03:43', '2021-01-07 14:03:43');
INSERT INTO `transaction` VALUES ('691', '2021-01-03', 'Procurement', 'IN/207/1', '10201', '57000.00', '0.00', '3', '24', '1', '73', 'Pembelian Product Aga Kretek', 'Aktif', '1', '2021-01-07 14:03:48', '1', '2021-01-07 14:03:48', '2021-01-07 14:03:48');
INSERT INTO `transaction` VALUES ('692', '2021-01-03', 'Procurement', 'IN/207/1', '10101', '0.00', '57000.00', '3', '24', '1', '73', 'Pembelian Product Aga Kretek', 'Aktif', '1', '2021-01-07 14:03:48', '1', '2021-01-07 14:03:48', '2021-01-07 14:03:48');
INSERT INTO `transaction` VALUES ('693', '2021-01-03', 'Procurement', 'IN/208/1', '10201', '118125.00', '0.00', '3', '12', '1', '74', 'Pembelian Product LA Bold', 'Aktif', '1', '2021-01-07 14:03:53', '1', '2021-01-07 14:03:53', '2021-01-07 14:03:53');
INSERT INTO `transaction` VALUES ('694', '2021-01-03', 'Procurement', 'IN/208/1', '10101', '0.00', '118125.00', '3', '12', '1', '74', 'Pembelian Product LA Bold', 'Aktif', '1', '2021-01-07 14:03:53', '1', '2021-01-07 14:03:53', '2021-01-07 14:03:53');
INSERT INTO `transaction` VALUES ('695', '2021-01-03', 'Procurement', 'IN/209/1', '10201', '73625.00', '0.00', '3', '16', '1', '75', 'Pembelian Product Geo Mild', 'Aktif', '1', '2021-01-07 14:03:59', '1', '2021-01-07 14:03:59', '2021-01-07 14:03:59');
INSERT INTO `transaction` VALUES ('696', '2021-01-03', 'Procurement', 'IN/209/1', '10101', '0.00', '73625.00', '3', '16', '1', '75', 'Pembelian Product Geo Mild', 'Aktif', '1', '2021-01-07 14:03:59', '1', '2021-01-07 14:03:59', '2021-01-07 14:03:59');
INSERT INTO `transaction` VALUES ('697', '2021-01-03', 'Procurement', 'IN/210/1', '10201', '37800.00', '0.00', '3', '15', '1', '76', 'Pembelian Product Pena Mild', 'Aktif', '1', '2021-01-07 14:04:07', '1', '2021-01-07 14:04:07', '2021-01-07 14:04:07');
INSERT INTO `transaction` VALUES ('698', '2021-01-03', 'Procurement', 'IN/210/1', '10101', '0.00', '37800.00', '3', '15', '1', '76', 'Pembelian Product Pena Mild', 'Aktif', '1', '2021-01-07 14:04:07', '1', '2021-01-07 14:04:07', '2021-01-07 14:04:07');
INSERT INTO `transaction` VALUES ('699', '2021-01-03', 'Procurement', 'IN/211/1', '10201', '164250.00', '0.00', '2', '1', '1', '77', 'Pembelian Product Gudang Garam Surya 12', 'Aktif', '1', '2021-01-07 14:04:15', '1', '2021-01-07 14:04:15', '2021-01-07 14:04:15');
INSERT INTO `transaction` VALUES ('700', '2021-01-03', 'Procurement', 'IN/211/1', '10101', '0.00', '164250.00', '2', '1', '1', '77', 'Pembelian Product Gudang Garam Surya 12', 'Aktif', '1', '2021-01-07 14:04:15', '1', '2021-01-07 14:04:15', '2021-01-07 14:04:15');
INSERT INTO `transaction` VALUES ('701', '2021-01-03', 'Procurement', 'IN/212/1', '10201', '137875.00', '0.00', '4', '7', '1', '78', 'Pembelian Product Marlboro Merah', 'Aktif', '1', '2021-01-07 14:04:20', '1', '2021-01-07 14:04:20', '2021-01-07 14:04:20');
INSERT INTO `transaction` VALUES ('702', '2021-01-03', 'Procurement', 'IN/212/1', '10101', '0.00', '137875.00', '4', '7', '1', '78', 'Pembelian Product Marlboro Merah', 'Aktif', '1', '2021-01-07 14:04:20', '1', '2021-01-07 14:04:20', '2021-01-07 14:04:20');
INSERT INTO `transaction` VALUES ('703', '2021-01-08', 'Sales', 'OU/213/1', '10101', '46000.00', '0.00', '2', '2', '7', '137', 'Penjualan Product Gudang Garam Surya 16', 'Aktif', '1', '2021-01-08 12:07:27', '1', '2021-01-08 12:07:27', '2021-01-08 12:07:27');
INSERT INTO `transaction` VALUES ('704', '2021-01-08', 'Sales', 'OU/213/1', '40101', '0.00', '46000.00', '2', '2', '7', '137', 'Penjualan Product Gudang Garam Surya 16', 'Aktif', '1', '2021-01-08 12:07:27', '1', '2021-01-08 12:07:27', '2021-01-08 12:07:27');
INSERT INTO `transaction` VALUES ('705', '2021-01-08', 'Sales', 'OU/213/1', '50101', '44050.00', '0.00', '2', '2', '7', '137', 'Penjualan Product Gudang Garam Surya 16', 'Aktif', '1', '2021-01-08 12:07:28', '1', '2021-01-08 12:07:28', '2021-01-08 12:07:28');
INSERT INTO `transaction` VALUES ('706', '2021-01-08', 'Sales', 'OU/213/1', '10201', '0.00', '44050.00', '2', '2', '7', '137', 'Penjualan Product Gudang Garam Surya 16', 'Aktif', '1', '2021-01-08 12:07:28', '1', '2021-01-08 12:07:28', '2021-01-08 12:07:28');
INSERT INTO `transaction` VALUES ('707', '2021-01-08', 'Sales', 'OU/214/1', '10101', '138000.00', '0.00', '2', '2', '7', '138', 'Penjualan Product Gudang Garam Surya 16', 'Aktif', '1', '2021-01-08 12:07:33', '1', '2021-01-08 12:07:33', '2021-01-08 12:07:33');
INSERT INTO `transaction` VALUES ('708', '2021-01-08', 'Sales', 'OU/214/1', '40101', '0.00', '138000.00', '2', '2', '7', '138', 'Penjualan Product Gudang Garam Surya 16', 'Aktif', '1', '2021-01-08 12:07:33', '1', '2021-01-08 12:07:33', '2021-01-08 12:07:33');
INSERT INTO `transaction` VALUES ('709', '2021-01-08', 'Sales', 'OU/214/1', '50101', '132150.00', '0.00', '2', '2', '7', '138', 'Penjualan Product Gudang Garam Surya 16', 'Aktif', '1', '2021-01-08 12:07:34', '1', '2021-01-08 12:07:34', '2021-01-08 12:07:34');
INSERT INTO `transaction` VALUES ('710', '2021-01-08', 'Sales', 'OU/214/1', '10201', '0.00', '132150.00', '2', '2', '7', '138', 'Penjualan Product Gudang Garam Surya 16', 'Aktif', '1', '2021-01-08 12:07:34', '1', '2021-01-08 12:07:34', '2021-01-08 12:07:34');
INSERT INTO `transaction` VALUES ('711', '2021-01-08', 'Sales', 'OU/215/1', '10101', '332500.00', '0.00', '2', '1', '7', '139', 'Penjualan Product Gudang Garam Surya 12', 'Aktif', '1', '2021-01-08 12:07:39', '1', '2021-01-08 12:07:39', '2021-01-08 12:07:39');
INSERT INTO `transaction` VALUES ('712', '2021-01-08', 'Sales', 'OU/215/1', '40101', '0.00', '332500.00', '2', '1', '7', '139', 'Penjualan Product Gudang Garam Surya 12', 'Aktif', '1', '2021-01-08 12:07:39', '1', '2021-01-08 12:07:39', '2021-01-08 12:07:39');
INSERT INTO `transaction` VALUES ('713', '2021-01-08', 'Sales', 'OU/215/1', '50101', '312075.00', '0.00', '2', '1', '7', '139', 'Penjualan Product Gudang Garam Surya 12', 'Aktif', '1', '2021-01-08 12:07:39', '1', '2021-01-08 12:07:39', '2021-01-08 12:07:39');
INSERT INTO `transaction` VALUES ('714', '2021-01-08', 'Sales', 'OU/215/1', '10201', '0.00', '312075.00', '2', '1', '7', '139', 'Penjualan Product Gudang Garam Surya 12', 'Aktif', '1', '2021-01-08 12:07:39', '1', '2021-01-08 12:07:39', '2021-01-08 12:07:39');
INSERT INTO `transaction` VALUES ('715', '2021-01-08', 'Sales', 'OU/216/1', '10101', '875000.00', '0.00', '2', '1', '7', '140', 'Penjualan Product Gudang Garam Surya 12', 'Aktif', '1', '2021-01-08 12:07:45', '1', '2021-01-08 12:07:45', '2021-01-08 12:07:45');
INSERT INTO `transaction` VALUES ('716', '2021-01-08', 'Sales', 'OU/216/1', '40101', '0.00', '875000.00', '2', '1', '7', '140', 'Penjualan Product Gudang Garam Surya 12', 'Aktif', '1', '2021-01-08 12:07:45', '1', '2021-01-08 12:07:45', '2021-01-08 12:07:45');
INSERT INTO `transaction` VALUES ('717', '2021-01-08', 'Sales', 'OU/216/1', '50101', '821250.00', '0.00', '2', '1', '7', '140', 'Penjualan Product Gudang Garam Surya 12', 'Aktif', '1', '2021-01-08 12:07:45', '1', '2021-01-08 12:07:45', '2021-01-08 12:07:45');
INSERT INTO `transaction` VALUES ('718', '2021-01-08', 'Sales', 'OU/216/1', '10201', '0.00', '821250.00', '2', '1', '7', '140', 'Penjualan Product Gudang Garam Surya 12', 'Aktif', '1', '2021-01-08 12:07:45', '1', '2021-01-08 12:07:45', '2021-01-08 12:07:45');
INSERT INTO `transaction` VALUES ('719', '2021-01-08', 'Sales', 'OU/217/1', '10101', '630000.00', '0.00', '2', '1', '7', '141', 'Penjualan Product Gudang Garam Surya 12', 'Aktif', '1', '2021-01-08 12:07:51', '1', '2021-01-08 12:07:51', '2021-01-08 12:07:51');
INSERT INTO `transaction` VALUES ('720', '2021-01-08', 'Sales', 'OU/217/1', '40101', '0.00', '630000.00', '2', '1', '7', '141', 'Penjualan Product Gudang Garam Surya 12', 'Aktif', '1', '2021-01-08 12:07:51', '1', '2021-01-08 12:07:51', '2021-01-08 12:07:51');
INSERT INTO `transaction` VALUES ('721', '2021-01-08', 'Sales', 'OU/217/1', '50101', '594000.00', '0.00', '2', '1', '7', '141', 'Penjualan Product Gudang Garam Surya 12', 'Aktif', '1', '2021-01-08 12:07:52', '1', '2021-01-08 12:07:52', '2021-01-08 12:07:52');
INSERT INTO `transaction` VALUES ('722', '2021-01-08', 'Sales', 'OU/217/1', '10201', '0.00', '594000.00', '2', '1', '7', '141', 'Penjualan Product Gudang Garam Surya 12', 'Aktif', '1', '2021-01-08 12:07:52', '1', '2021-01-08 12:07:52', '2021-01-08 12:07:52');
INSERT INTO `transaction` VALUES ('723', '2021-01-08', 'Sales', 'OU/218/1', '10101', '64500.00', '0.00', '2', '5', '7', '142', 'Penjualan Product Umild 16', 'Aktif', '1', '2021-01-08 12:07:57', '1', '2021-01-08 12:07:57', '2021-01-08 12:07:57');
INSERT INTO `transaction` VALUES ('724', '2021-01-08', 'Sales', 'OU/218/1', '40101', '0.00', '64500.00', '2', '5', '7', '142', 'Penjualan Product Umild 16', 'Aktif', '1', '2021-01-08 12:07:57', '1', '2021-01-08 12:07:57', '2021-01-08 12:07:57');
INSERT INTO `transaction` VALUES ('725', '2021-01-08', 'Sales', 'OU/218/1', '50101', '60900.00', '0.00', '2', '5', '7', '142', 'Penjualan Product Umild 16', 'Aktif', '1', '2021-01-08 12:07:57', '1', '2021-01-08 12:07:57', '2021-01-08 12:07:57');
INSERT INTO `transaction` VALUES ('726', '2021-01-08', 'Sales', 'OU/218/1', '10201', '0.00', '60900.00', '2', '5', '7', '142', 'Penjualan Product Umild 16', 'Aktif', '1', '2021-01-08 12:07:57', '1', '2021-01-08 12:07:57', '2021-01-08 12:07:57');
INSERT INTO `transaction` VALUES ('727', '2021-01-08', 'Procurement', 'IN/219/1', '10201', '1155000.00', '0.00', '2', '1', '2', '79', 'Pembelian Product Gudang Garam Surya 12', 'Aktif', '1', '2021-01-13 15:07:32', '1', '2021-01-13 15:07:32', '2021-01-13 15:07:32');
INSERT INTO `transaction` VALUES ('728', '2021-01-08', 'Procurement', 'IN/219/1', '10101', '0.00', '1155000.00', '2', '1', '2', '79', 'Pembelian Product Gudang Garam Surya 12', 'Aktif', '1', '2021-01-13 15:07:32', '1', '2021-01-13 15:07:32', '2021-01-13 15:07:32');
INSERT INTO `transaction` VALUES ('729', '2021-01-08', 'Procurement', 'IN/220/1', '10201', '821250.00', '0.00', '2', '1', '1', '81', 'Pembelian Product Gudang Garam Surya 12', 'Aktif', '1', '2021-01-13 15:07:38', '1', '2021-01-13 15:07:38', '2021-01-13 15:07:38');
INSERT INTO `transaction` VALUES ('730', '2021-01-08', 'Procurement', 'IN/220/1', '10101', '0.00', '821250.00', '2', '1', '1', '81', 'Pembelian Product Gudang Garam Surya 12', 'Aktif', '1', '2021-01-13 15:07:38', '1', '2021-01-13 15:07:38', '2021-01-13 15:07:38');
INSERT INTO `transaction` VALUES ('731', '2021-01-08', 'Procurement', 'IN/221/1', '10201', '220250.00', '0.00', '2', '2', '1', '82', 'Pembelian Product Gudang Garam Surya 16', 'Aktif', '1', '2021-01-13 15:07:44', '1', '2021-01-13 15:07:44', '2021-01-13 15:07:44');
INSERT INTO `transaction` VALUES ('732', '2021-01-08', 'Procurement', 'IN/221/1', '10101', '0.00', '220250.00', '2', '2', '1', '82', 'Pembelian Product Gudang Garam Surya 16', 'Aktif', '1', '2021-01-13 15:07:44', '1', '2021-01-13 15:07:44', '2021-01-13 15:07:44');
INSERT INTO `transaction` VALUES ('733', '2021-01-08', 'Procurement', 'IN/222/1', '10201', '137750.00', '0.00', '1', '9', '1', '83', 'Pembelian Product Marlboro Hitam', 'Aktif', '1', '2021-01-13 15:07:50', '1', '2021-01-13 15:07:50', '2021-01-13 15:07:50');
INSERT INTO `transaction` VALUES ('734', '2021-01-08', 'Procurement', 'IN/222/1', '10101', '0.00', '137750.00', '1', '9', '1', '83', 'Pembelian Product Marlboro Hitam', 'Aktif', '1', '2021-01-13 15:07:50', '1', '2021-01-13 15:07:50', '2021-01-13 15:07:50');
INSERT INTO `transaction` VALUES ('735', '2021-01-08', 'Procurement', 'IN/223/1', '10201', '220250.00', '0.00', '1', '2', '1', '84', 'Pembelian Product Gudang Garam Surya 16', 'Aktif', '1', '2021-01-13 15:07:56', '1', '2021-01-13 15:07:56', '2021-01-13 15:07:56');
INSERT INTO `transaction` VALUES ('736', '2021-01-08', 'Procurement', 'IN/223/1', '10101', '0.00', '220250.00', '1', '2', '1', '84', 'Pembelian Product Gudang Garam Surya 16', 'Aktif', '1', '2021-01-13 15:07:56', '1', '2021-01-13 15:07:56', '2021-01-13 15:07:56');
INSERT INTO `transaction` VALUES ('737', '2021-01-08', 'Procurement', 'IN/224/1', '10201', '164500.00', '0.00', '3', '1', '1', '85', 'Pembelian Product Gudang Garam Surya 12', 'Aktif', '1', '2021-01-13 15:08:01', '1', '2021-01-13 15:08:01', '2021-01-13 15:08:01');
INSERT INTO `transaction` VALUES ('738', '2021-01-08', 'Procurement', 'IN/224/1', '10101', '0.00', '164500.00', '3', '1', '1', '85', 'Pembelian Product Gudang Garam Surya 12', 'Aktif', '1', '2021-01-13 15:08:01', '1', '2021-01-13 15:08:01', '2021-01-13 15:08:01');
INSERT INTO `transaction` VALUES ('739', '2021-01-08', 'Procurement', 'IN/225/1', '10201', '236250.00', '0.00', '3', '12', '1', '86', 'Pembelian Product LA Bold', 'Aktif', '1', '2021-01-13 15:08:07', '1', '2021-01-13 15:08:07', '2021-01-13 15:08:07');
INSERT INTO `transaction` VALUES ('740', '2021-01-08', 'Procurement', 'IN/225/1', '10101', '0.00', '236250.00', '3', '12', '1', '86', 'Pembelian Product LA Bold', 'Aktif', '1', '2021-01-13 15:08:07', '1', '2021-01-13 15:08:07', '2021-01-13 15:08:07');
INSERT INTO `transaction` VALUES ('741', '2021-01-11', 'Sales', 'OU/226/1', '10101', '17500.00', '0.00', '1', '1', '7', '143', 'Penjualan Product Gudang Garam Surya 12', 'Aktif', '1', '2021-01-13 15:34:03', '1', '2021-01-13 15:34:03', '2021-01-13 15:34:03');
INSERT INTO `transaction` VALUES ('742', '2021-01-11', 'Sales', 'OU/226/1', '40101', '0.00', '17500.00', '1', '1', '7', '143', 'Penjualan Product Gudang Garam Surya 12', 'Aktif', '1', '2021-01-13 15:34:03', '1', '2021-01-13 15:34:03', '2021-01-13 15:34:03');
INSERT INTO `transaction` VALUES ('743', '2021-01-11', 'Sales', 'OU/226/1', '50101', '16425.00', '0.00', '1', '1', '7', '143', 'Penjualan Product Gudang Garam Surya 12', 'Aktif', '1', '2021-01-13 15:34:03', '1', '2021-01-13 15:34:03', '2021-01-13 15:34:03');
INSERT INTO `transaction` VALUES ('744', '2021-01-11', 'Sales', 'OU/226/1', '10201', '0.00', '16425.00', '1', '1', '7', '143', 'Penjualan Product Gudang Garam Surya 12', 'Aktif', '1', '2021-01-13 15:34:03', '1', '2021-01-13 15:34:03', '2021-01-13 15:34:03');
INSERT INTO `transaction` VALUES ('745', '2021-01-11', 'Sales', 'OU/227/1', '10101', '175000.00', '0.00', '1', '1', '7', '144', 'Penjualan Product Gudang Garam Surya 12', 'Aktif', '1', '2021-01-13 15:34:09', '1', '2021-01-13 15:34:09', '2021-01-13 15:34:09');
INSERT INTO `transaction` VALUES ('746', '2021-01-11', 'Sales', 'OU/227/1', '40101', '0.00', '175000.00', '1', '1', '7', '144', 'Penjualan Product Gudang Garam Surya 12', 'Aktif', '1', '2021-01-13 15:34:09', '1', '2021-01-13 15:34:09', '2021-01-13 15:34:09');
INSERT INTO `transaction` VALUES ('747', '2021-01-11', 'Sales', 'OU/227/1', '50101', '164250.00', '0.00', '1', '1', '7', '144', 'Penjualan Product Gudang Garam Surya 12', 'Aktif', '1', '2021-01-13 15:34:09', '1', '2021-01-13 15:34:09', '2021-01-13 15:34:09');
INSERT INTO `transaction` VALUES ('748', '2021-01-11', 'Sales', 'OU/227/1', '10201', '0.00', '164250.00', '1', '1', '7', '144', 'Penjualan Product Gudang Garam Surya 12', 'Aktif', '1', '2021-01-13 15:34:09', '1', '2021-01-13 15:34:09', '2021-01-13 15:34:09');
INSERT INTO `transaction` VALUES ('749', '2021-01-11', 'Sales', 'OU/228/1', '10101', '70500.00', '0.00', '1', '3', '7', '145', 'Penjualan Product Sampoerna Mild 16', 'Aktif', '1', '2021-01-13 15:34:15', '1', '2021-01-13 15:34:15', '2021-01-13 15:34:15');
INSERT INTO `transaction` VALUES ('750', '2021-01-11', 'Sales', 'OU/228/1', '40101', '0.00', '70500.00', '1', '3', '7', '145', 'Penjualan Product Sampoerna Mild 16', 'Aktif', '1', '2021-01-13 15:34:15', '1', '2021-01-13 15:34:15', '2021-01-13 15:34:15');
INSERT INTO `transaction` VALUES ('751', '2021-01-11', 'Sales', 'OU/228/1', '50101', '66000.00', '0.00', '1', '3', '7', '145', 'Penjualan Product Sampoerna Mild 16', 'Aktif', '1', '2021-01-13 15:34:15', '1', '2021-01-13 15:34:15', '2021-01-13 15:34:15');
INSERT INTO `transaction` VALUES ('752', '2021-01-11', 'Sales', 'OU/228/1', '10201', '0.00', '66000.00', '1', '3', '7', '145', 'Penjualan Product Sampoerna Mild 16', 'Aktif', '1', '2021-01-13 15:34:15', '1', '2021-01-13 15:34:15', '2021-01-13 15:34:15');
INSERT INTO `transaction` VALUES ('753', '2021-01-11', 'Sales', 'OU/229/1', '10101', '29000.00', '0.00', '1', '7', '7', '146', 'Penjualan Product Marlboro Merah', 'Aktif', '1', '2021-01-13 15:34:22', '1', '2021-01-13 15:34:22', '2021-01-13 15:34:22');
INSERT INTO `transaction` VALUES ('754', '2021-01-11', 'Sales', 'OU/229/1', '40101', '0.00', '29000.00', '1', '7', '7', '146', 'Penjualan Product Marlboro Merah', 'Aktif', '1', '2021-01-13 15:34:22', '1', '2021-01-13 15:34:22', '2021-01-13 15:34:22');
INSERT INTO `transaction` VALUES ('755', '2021-01-11', 'Sales', 'OU/229/1', '50101', '27650.00', '0.00', '1', '7', '7', '146', 'Penjualan Product Marlboro Merah', 'Aktif', '1', '2021-01-13 15:34:22', '1', '2021-01-13 15:34:22', '2021-01-13 15:34:22');
INSERT INTO `transaction` VALUES ('756', '2021-01-11', 'Sales', 'OU/229/1', '10201', '0.00', '27650.00', '1', '7', '7', '146', 'Penjualan Product Marlboro Merah', 'Aktif', '1', '2021-01-13 15:34:22', '1', '2021-01-13 15:34:22', '2021-01-13 15:34:22');
INSERT INTO `transaction` VALUES ('757', '2021-01-11', 'Sales', 'OU/230/1', '10101', '28500.00', '0.00', '1', '9', '7', '147', 'Penjualan Product Marlboro Hitam', 'Aktif', '1', '2021-01-13 15:34:32', '1', '2021-01-13 15:34:32', '2021-01-13 15:34:32');
INSERT INTO `transaction` VALUES ('758', '2021-01-11', 'Sales', 'OU/230/1', '40101', '0.00', '28500.00', '1', '9', '7', '147', 'Penjualan Product Marlboro Hitam', 'Aktif', '1', '2021-01-13 15:34:32', '1', '2021-01-13 15:34:32', '2021-01-13 15:34:32');
INSERT INTO `transaction` VALUES ('759', '2021-01-11', 'Sales', 'OU/230/1', '50101', '27550.00', '0.00', '1', '9', '7', '147', 'Penjualan Product Marlboro Hitam', 'Aktif', '1', '2021-01-13 15:34:32', '1', '2021-01-13 15:34:32', '2021-01-13 15:34:32');
INSERT INTO `transaction` VALUES ('760', '2021-01-11', 'Sales', 'OU/230/1', '10201', '0.00', '27550.00', '1', '9', '7', '147', 'Penjualan Product Marlboro Hitam', 'Aktif', '1', '2021-01-13 15:34:32', '1', '2021-01-13 15:34:32', '2021-01-13 15:34:32');
INSERT INTO `transaction` VALUES ('761', '2021-01-11', 'Sales', 'OU/231/1', '10101', '17500.00', '0.00', '1', '10', '7', '148', 'Penjualan Product Gudang Garam International', 'Aktif', '1', '2021-01-13 15:34:37', '1', '2021-01-13 15:34:37', '2021-01-13 15:34:37');
INSERT INTO `transaction` VALUES ('762', '2021-01-11', 'Sales', 'OU/231/1', '40101', '0.00', '17500.00', '1', '10', '7', '148', 'Penjualan Product Gudang Garam International', 'Aktif', '1', '2021-01-13 15:34:37', '1', '2021-01-13 15:34:37', '2021-01-13 15:34:37');
INSERT INTO `transaction` VALUES ('763', '2021-01-11', 'Sales', 'OU/231/1', '50101', '16575.00', '0.00', '1', '10', '7', '148', 'Penjualan Product Gudang Garam International', 'Aktif', '1', '2021-01-13 15:34:37', '1', '2021-01-13 15:34:37', '2021-01-13 15:34:37');
INSERT INTO `transaction` VALUES ('764', '2021-01-11', 'Sales', 'OU/231/1', '10201', '0.00', '16575.00', '1', '10', '7', '148', 'Penjualan Product Gudang Garam International', 'Aktif', '1', '2021-01-13 15:34:37', '1', '2021-01-13 15:34:37', '2021-01-13 15:34:37');
INSERT INTO `transaction` VALUES ('765', '2021-01-11', 'Sales', 'OU/232/1', '10101', '45000.00', '0.00', '1', '13', '7', '149', 'Penjualan Product Dji Sam Soe', 'Aktif', '1', '2021-01-13 15:34:42', '1', '2021-01-13 15:34:42', '2021-01-13 15:34:42');
INSERT INTO `transaction` VALUES ('766', '2021-01-11', 'Sales', 'OU/232/1', '40101', '0.00', '45000.00', '1', '13', '7', '149', 'Penjualan Product Dji Sam Soe', 'Aktif', '1', '2021-01-13 15:34:42', '1', '2021-01-13 15:34:42', '2021-01-13 15:34:42');
INSERT INTO `transaction` VALUES ('767', '2021-01-11', 'Sales', 'OU/232/1', '50101', '42850.00', '0.00', '1', '13', '7', '149', 'Penjualan Product Dji Sam Soe', 'Aktif', '1', '2021-01-13 15:34:42', '1', '2021-01-13 15:34:42', '2021-01-13 15:34:42');
INSERT INTO `transaction` VALUES ('768', '2021-01-11', 'Sales', 'OU/232/1', '10201', '0.00', '42850.00', '1', '13', '7', '149', 'Penjualan Product Dji Sam Soe', 'Aktif', '1', '2021-01-13 15:34:42', '1', '2021-01-13 15:34:42', '2021-01-13 15:34:42');
INSERT INTO `transaction` VALUES ('769', '2021-01-11', 'Sales', 'OU/233/1', '10101', '39000.00', '0.00', '1', '23', '7', '150', 'Penjualan Product Magnum Mild', 'Aktif', '1', '2021-01-13 15:34:48', '1', '2021-01-13 15:34:48', '2021-01-13 15:34:48');
INSERT INTO `transaction` VALUES ('770', '2021-01-11', 'Sales', 'OU/233/1', '40101', '0.00', '39000.00', '1', '23', '7', '150', 'Penjualan Product Magnum Mild', 'Aktif', '1', '2021-01-13 15:34:48', '1', '2021-01-13 15:34:48', '2021-01-13 15:34:48');
INSERT INTO `transaction` VALUES ('771', '2021-01-11', 'Sales', 'OU/233/1', '50101', '36800.00', '0.00', '1', '23', '7', '150', 'Penjualan Product Magnum Mild', 'Aktif', '1', '2021-01-13 15:34:48', '1', '2021-01-13 15:34:48', '2021-01-13 15:34:48');
INSERT INTO `transaction` VALUES ('772', '2021-01-11', 'Sales', 'OU/233/1', '10201', '0.00', '36800.00', '1', '23', '7', '150', 'Penjualan Product Magnum Mild', 'Aktif', '1', '2021-01-13 15:34:48', '1', '2021-01-13 15:34:48', '2021-01-13 15:34:48');
INSERT INTO `transaction` VALUES ('773', '2021-01-11', 'Sales', 'OU/234/1', '10101', '12500.00', '0.00', '1', '24', '7', '151', 'Penjualan Product Aga Kretek', 'Aktif', '1', '2021-01-13 15:34:53', '1', '2021-01-13 15:34:53', '2021-01-13 15:34:53');
INSERT INTO `transaction` VALUES ('774', '2021-01-11', 'Sales', 'OU/234/1', '40101', '0.00', '12500.00', '1', '24', '7', '151', 'Penjualan Product Aga Kretek', 'Aktif', '1', '2021-01-13 15:34:53', '1', '2021-01-13 15:34:53', '2021-01-13 15:34:53');
INSERT INTO `transaction` VALUES ('775', '2021-01-11', 'Sales', 'OU/234/1', '50101', '11625.00', '0.00', '1', '24', '7', '151', 'Penjualan Product Aga Kretek', 'Aktif', '1', '2021-01-13 15:34:53', '1', '2021-01-13 15:34:53', '2021-01-13 15:34:53');
INSERT INTO `transaction` VALUES ('776', '2021-01-11', 'Sales', 'OU/234/1', '10201', '0.00', '11625.00', '1', '24', '7', '151', 'Penjualan Product Aga Kretek', 'Aktif', '1', '2021-01-13 15:34:53', '1', '2021-01-13 15:34:53', '2021-01-13 15:34:53');
INSERT INTO `transaction` VALUES ('777', '2021-01-11', 'Sales', 'OU/235/1', '10101', '15000.00', '0.00', '1', '19', '7', '152', 'Penjualan Product Gudang Garam Surya (Kaleng)', 'Aktif', '1', '2021-01-13 15:34:59', '1', '2021-01-13 15:34:59', '2021-01-13 15:34:59');
INSERT INTO `transaction` VALUES ('778', '2021-01-11', 'Sales', 'OU/235/1', '40101', '0.00', '15000.00', '1', '19', '7', '152', 'Penjualan Product Gudang Garam Surya (Kaleng)', 'Aktif', '1', '2021-01-13 15:34:59', '1', '2021-01-13 15:34:59', '2021-01-13 15:34:59');
INSERT INTO `transaction` VALUES ('779', '2021-01-11', 'Sales', 'OU/235/1', '50101', '13300.00', '0.00', '1', '19', '7', '152', 'Penjualan Product Gudang Garam Surya (Kaleng)', 'Aktif', '1', '2021-01-13 15:34:59', '1', '2021-01-13 15:34:59', '2021-01-13 15:34:59');
INSERT INTO `transaction` VALUES ('780', '2021-01-11', 'Sales', 'OU/235/1', '10201', '0.00', '13300.00', '1', '19', '7', '152', 'Penjualan Product Gudang Garam Surya (Kaleng)', 'Aktif', '1', '2021-01-13 15:34:59', '1', '2021-01-13 15:34:59', '2021-01-13 15:34:59');
INSERT INTO `transaction` VALUES ('781', '2021-01-11', 'Sales', 'OU/236/1', '10101', '4000.00', '0.00', '1', '20', '7', '153', 'Penjualan Product Korek Api', 'Aktif', '1', '2021-01-13 15:35:04', '1', '2021-01-13 15:35:04', '2021-01-13 15:35:04');
INSERT INTO `transaction` VALUES ('782', '2021-01-11', 'Sales', 'OU/236/1', '40104', '0.00', '4000.00', '1', '20', '7', '153', 'Penjualan Product Korek Api', 'Aktif', '1', '2021-01-13 15:35:04', '1', '2021-01-13 15:35:04', '2021-01-13 15:35:04');
INSERT INTO `transaction` VALUES ('783', '2021-01-11', 'Sales', 'OU/236/1', '50104', '3200.00', '0.00', '1', '20', '7', '153', 'Penjualan Product Korek Api', 'Aktif', '1', '2021-01-13 15:35:04', '1', '2021-01-13 15:35:04', '2021-01-13 15:35:04');
INSERT INTO `transaction` VALUES ('784', '2021-01-11', 'Sales', 'OU/236/1', '10204', '0.00', '3200.00', '1', '20', '7', '153', 'Penjualan Product Korek Api', 'Aktif', '1', '2021-01-13 15:35:04', '1', '2021-01-13 15:35:04', '2021-01-13 15:35:04');
INSERT INTO `transaction` VALUES ('785', '2020-12-24', 'Sales', 'OU/237/1', '10101', '17500.00', '0.00', '4', '1', '7', '100', 'Penjualan Product Gudang Garam Surya 12', 'Aktif', '1', '2021-01-13 15:35:55', '1', '2021-01-13 15:35:55', '2021-01-13 15:35:55');
INSERT INTO `transaction` VALUES ('786', '2020-12-24', 'Sales', 'OU/237/1', '40101', '0.00', '17500.00', '4', '1', '7', '100', 'Penjualan Product Gudang Garam Surya 12', 'Aktif', '1', '2021-01-13 15:35:55', '1', '2021-01-13 15:35:55', '2021-01-13 15:35:55');
INSERT INTO `transaction` VALUES ('787', '2020-12-24', 'Sales', 'OU/237/1', '50101', '16425.00', '0.00', '4', '1', '7', '100', 'Penjualan Product Gudang Garam Surya 12', 'Aktif', '1', '2021-01-13 15:35:55', '1', '2021-01-13 15:35:55', '2021-01-13 15:35:55');
INSERT INTO `transaction` VALUES ('788', '2020-12-24', 'Sales', 'OU/237/1', '10201', '0.00', '16425.00', '4', '1', '7', '100', 'Penjualan Product Gudang Garam Surya 12', 'Aktif', '1', '2021-01-13 15:35:55', '1', '2021-01-13 15:35:55', '2021-01-13 15:35:55');
INSERT INTO `transaction` VALUES ('789', '2021-01-12', 'Sales', 'OU/238/1', '10101', '23500.00', '0.00', '3', '2', '7', '154', 'Penjualan Product Gudang Garam Surya 16', 'Aktif', '1', '2021-01-13 15:47:57', '1', '2021-01-13 15:47:57', '2021-01-13 15:47:57');
INSERT INTO `transaction` VALUES ('790', '2021-01-12', 'Sales', 'OU/238/1', '40101', '0.00', '23500.00', '3', '2', '7', '154', 'Penjualan Product Gudang Garam Surya 16', 'Aktif', '1', '2021-01-13 15:47:57', '1', '2021-01-13 15:47:57', '2021-01-13 15:47:57');
INSERT INTO `transaction` VALUES ('791', '2021-01-12', 'Sales', 'OU/238/1', '50101', '22025.00', '0.00', '3', '2', '7', '154', 'Penjualan Product Gudang Garam Surya 16', 'Aktif', '1', '2021-01-13 15:47:57', '1', '2021-01-13 15:47:57', '2021-01-13 15:47:57');
INSERT INTO `transaction` VALUES ('792', '2021-01-12', 'Sales', 'OU/238/1', '10201', '0.00', '22025.00', '3', '2', '7', '154', 'Penjualan Product Gudang Garam Surya 16', 'Aktif', '1', '2021-01-13 15:47:57', '1', '2021-01-13 15:47:57', '2021-01-13 15:47:57');
INSERT INTO `transaction` VALUES ('793', '2021-01-12', 'Sales', 'OU/239/1', '10101', '47000.00', '0.00', '3', '2', '7', '155', 'Penjualan Product Gudang Garam Surya 16', 'Aktif', '1', '2021-01-13 15:48:03', '1', '2021-01-13 15:48:03', '2021-01-13 15:48:03');
INSERT INTO `transaction` VALUES ('794', '2021-01-12', 'Sales', 'OU/239/1', '40101', '0.00', '47000.00', '3', '2', '7', '155', 'Penjualan Product Gudang Garam Surya 16', 'Aktif', '1', '2021-01-13 15:48:03', '1', '2021-01-13 15:48:03', '2021-01-13 15:48:03');
INSERT INTO `transaction` VALUES ('795', '2021-01-12', 'Sales', 'OU/239/1', '50101', '44050.00', '0.00', '3', '2', '7', '155', 'Penjualan Product Gudang Garam Surya 16', 'Aktif', '1', '2021-01-13 15:48:03', '1', '2021-01-13 15:48:03', '2021-01-13 15:48:03');
INSERT INTO `transaction` VALUES ('796', '2021-01-12', 'Sales', 'OU/239/1', '10201', '0.00', '44050.00', '3', '2', '7', '155', 'Penjualan Product Gudang Garam Surya 16', 'Aktif', '1', '2021-01-13 15:48:03', '1', '2021-01-13 15:48:03', '2021-01-13 15:48:03');
INSERT INTO `transaction` VALUES ('797', '2021-01-12', 'Sales', 'OU/240/1', '10101', '105000.00', '0.00', '3', '1', '7', '156', 'Penjualan Product Gudang Garam Surya 12', 'Aktif', '1', '2021-01-13 15:48:08', '1', '2021-01-13 15:48:08', '2021-01-13 15:48:08');
INSERT INTO `transaction` VALUES ('798', '2021-01-12', 'Sales', 'OU/240/1', '40101', '0.00', '105000.00', '3', '1', '7', '156', 'Penjualan Product Gudang Garam Surya 12', 'Aktif', '1', '2021-01-13 15:48:08', '1', '2021-01-13 15:48:08', '2021-01-13 15:48:08');
INSERT INTO `transaction` VALUES ('799', '2021-01-12', 'Sales', 'OU/240/1', '50101', '98550.00', '0.00', '3', '1', '7', '156', 'Penjualan Product Gudang Garam Surya 12', 'Aktif', '1', '2021-01-13 15:48:08', '1', '2021-01-13 15:48:08', '2021-01-13 15:48:08');
INSERT INTO `transaction` VALUES ('800', '2021-01-12', 'Sales', 'OU/240/1', '10201', '0.00', '98550.00', '3', '1', '7', '156', 'Penjualan Product Gudang Garam Surya 12', 'Aktif', '1', '2021-01-13 15:48:08', '1', '2021-01-13 15:48:08', '2021-01-13 15:48:08');
INSERT INTO `transaction` VALUES ('801', '2021-01-12', 'Sales', 'OU/241/1', '10101', '35000.00', '0.00', '3', '1', '7', '157', 'Penjualan Product Gudang Garam Surya 12', 'Aktif', '1', '2021-01-13 15:48:13', '1', '2021-01-13 15:48:13', '2021-01-13 15:48:13');
INSERT INTO `transaction` VALUES ('802', '2021-01-12', 'Sales', 'OU/241/1', '40101', '0.00', '35000.00', '3', '1', '7', '157', 'Penjualan Product Gudang Garam Surya 12', 'Aktif', '1', '2021-01-13 15:48:13', '1', '2021-01-13 15:48:13', '2021-01-13 15:48:13');
INSERT INTO `transaction` VALUES ('803', '2021-01-12', 'Sales', 'OU/241/1', '50101', '32850.00', '0.00', '3', '1', '7', '157', 'Penjualan Product Gudang Garam Surya 12', 'Aktif', '1', '2021-01-13 15:48:13', '1', '2021-01-13 15:48:13', '2021-01-13 15:48:13');
INSERT INTO `transaction` VALUES ('804', '2021-01-12', 'Sales', 'OU/241/1', '10201', '0.00', '32850.00', '3', '1', '7', '157', 'Penjualan Product Gudang Garam Surya 12', 'Aktif', '1', '2021-01-13 15:48:13', '1', '2021-01-13 15:48:13', '2021-01-13 15:48:13');
INSERT INTO `transaction` VALUES ('805', '2021-01-12', 'Sales', 'OU/242/1', '10101', '17500.00', '0.00', '3', '1', '7', '158', 'Penjualan Product Gudang Garam Surya 12', 'Aktif', '1', '2021-01-13 15:48:18', '1', '2021-01-13 15:48:18', '2021-01-13 15:48:18');
INSERT INTO `transaction` VALUES ('806', '2021-01-12', 'Sales', 'OU/242/1', '40101', '0.00', '17500.00', '3', '1', '7', '158', 'Penjualan Product Gudang Garam Surya 12', 'Aktif', '1', '2021-01-13 15:48:18', '1', '2021-01-13 15:48:18', '2021-01-13 15:48:18');
INSERT INTO `transaction` VALUES ('807', '2021-01-12', 'Sales', 'OU/242/1', '50101', '16450.00', '0.00', '3', '1', '7', '158', 'Penjualan Product Gudang Garam Surya 12', 'Aktif', '1', '2021-01-13 15:48:18', '1', '2021-01-13 15:48:18', '2021-01-13 15:48:18');
INSERT INTO `transaction` VALUES ('808', '2021-01-12', 'Sales', 'OU/242/1', '10201', '0.00', '16450.00', '3', '1', '7', '158', 'Penjualan Product Gudang Garam Surya 12', 'Aktif', '1', '2021-01-13 15:48:18', '1', '2021-01-13 15:48:18', '2021-01-13 15:48:18');
INSERT INTO `transaction` VALUES ('809', '2021-01-12', 'Sales', 'OU/243/1', '10101', '94000.00', '0.00', '3', '3', '7', '159', 'Penjualan Product Sampoerna Mild 16', 'Aktif', '1', '2021-01-13 15:48:23', '1', '2021-01-13 15:48:23', '2021-01-13 15:48:23');
INSERT INTO `transaction` VALUES ('810', '2021-01-12', 'Sales', 'OU/243/1', '40101', '0.00', '94000.00', '3', '3', '7', '159', 'Penjualan Product Sampoerna Mild 16', 'Aktif', '1', '2021-01-13 15:48:23', '1', '2021-01-13 15:48:23', '2021-01-13 15:48:23');
INSERT INTO `transaction` VALUES ('811', '2021-01-12', 'Sales', 'OU/243/1', '50101', '88000.00', '0.00', '3', '3', '7', '159', 'Penjualan Product Sampoerna Mild 16', 'Aktif', '1', '2021-01-13 15:48:23', '1', '2021-01-13 15:48:23', '2021-01-13 15:48:23');
INSERT INTO `transaction` VALUES ('812', '2021-01-12', 'Sales', 'OU/243/1', '10201', '0.00', '88000.00', '3', '3', '7', '159', 'Penjualan Product Sampoerna Mild 16', 'Aktif', '1', '2021-01-13 15:48:23', '1', '2021-01-13 15:48:23', '2021-01-13 15:48:23');
INSERT INTO `transaction` VALUES ('813', '2021-01-12', 'Sales', 'OU/244/1', '10101', '29000.00', '0.00', '3', '7', '7', '160', 'Penjualan Product Marlboro Merah', 'Aktif', '1', '2021-01-13 15:48:36', '1', '2021-01-13 15:48:36', '2021-01-13 15:48:36');
INSERT INTO `transaction` VALUES ('814', '2021-01-12', 'Sales', 'OU/244/1', '40101', '0.00', '29000.00', '3', '7', '7', '160', 'Penjualan Product Marlboro Merah', 'Aktif', '1', '2021-01-13 15:48:36', '1', '2021-01-13 15:48:36', '2021-01-13 15:48:36');
INSERT INTO `transaction` VALUES ('815', '2021-01-12', 'Sales', 'OU/244/1', '50101', '27575.00', '0.00', '3', '7', '7', '160', 'Penjualan Product Marlboro Merah', 'Aktif', '1', '2021-01-13 15:48:36', '1', '2021-01-13 15:48:36', '2021-01-13 15:48:36');
INSERT INTO `transaction` VALUES ('816', '2021-01-12', 'Sales', 'OU/244/1', '10201', '0.00', '27575.00', '3', '7', '7', '160', 'Penjualan Product Marlboro Merah', 'Aktif', '1', '2021-01-13 15:48:36', '1', '2021-01-13 15:48:36', '2021-01-13 15:48:36');
INSERT INTO `transaction` VALUES ('817', '2021-01-12', 'Sales', 'OU/245/1', '10101', '29000.00', '0.00', '3', '7', '7', '161', 'Penjualan Product Marlboro Merah', 'Aktif', '1', '2021-01-13 15:48:44', '1', '2021-01-13 15:48:44', '2021-01-13 15:48:44');
INSERT INTO `transaction` VALUES ('818', '2021-01-12', 'Sales', 'OU/245/1', '40101', '0.00', '29000.00', '3', '7', '7', '161', 'Penjualan Product Marlboro Merah', 'Aktif', '1', '2021-01-13 15:48:44', '1', '2021-01-13 15:48:44', '2021-01-13 15:48:44');
INSERT INTO `transaction` VALUES ('819', '2021-01-12', 'Sales', 'OU/245/1', '50101', '27575.00', '0.00', '3', '7', '7', '161', 'Penjualan Product Marlboro Merah', 'Aktif', '1', '2021-01-13 15:48:44', '1', '2021-01-13 15:48:44', '2021-01-13 15:48:44');
INSERT INTO `transaction` VALUES ('820', '2021-01-12', 'Sales', 'OU/245/1', '10201', '0.00', '27575.00', '3', '7', '7', '161', 'Penjualan Product Marlboro Merah', 'Aktif', '1', '2021-01-13 15:48:44', '1', '2021-01-13 15:48:44', '2021-01-13 15:48:44');
INSERT INTO `transaction` VALUES ('821', '2021-01-12', 'Sales', 'OU/246/1', '10101', '19500.00', '0.00', '3', '23', '7', '162', 'Penjualan Product Magnum Mild', 'Aktif', '1', '2021-01-13 15:48:53', '1', '2021-01-13 15:48:53', '2021-01-13 15:48:53');
INSERT INTO `transaction` VALUES ('822', '2021-01-12', 'Sales', 'OU/246/1', '40101', '0.00', '19500.00', '3', '23', '7', '162', 'Penjualan Product Magnum Mild', 'Aktif', '1', '2021-01-13 15:48:53', '1', '2021-01-13 15:48:53', '2021-01-13 15:48:53');
INSERT INTO `transaction` VALUES ('823', '2021-01-12', 'Sales', 'OU/246/1', '50101', '18375.00', '0.00', '3', '23', '7', '162', 'Penjualan Product Magnum Mild', 'Aktif', '1', '2021-01-13 15:48:53', '1', '2021-01-13 15:48:53', '2021-01-13 15:48:53');
INSERT INTO `transaction` VALUES ('824', '2021-01-12', 'Sales', 'OU/246/1', '10201', '0.00', '18375.00', '3', '23', '7', '162', 'Penjualan Product Magnum Mild', 'Aktif', '1', '2021-01-13 15:48:53', '1', '2021-01-13 15:48:53', '2021-01-13 15:48:53');
INSERT INTO `transaction` VALUES ('825', '2021-01-12', 'Sales', 'OU/247/1', '10101', '73500.00', '0.00', '3', '12', '7', '163', 'Penjualan Product LA Bold', 'Aktif', '1', '2021-01-13 15:48:59', '1', '2021-01-13 15:48:59', '2021-01-13 15:48:59');
INSERT INTO `transaction` VALUES ('826', '2021-01-12', 'Sales', 'OU/247/1', '40101', '0.00', '73500.00', '3', '12', '7', '163', 'Penjualan Product LA Bold', 'Aktif', '1', '2021-01-13 15:48:59', '1', '2021-01-13 15:48:59', '2021-01-13 15:48:59');
INSERT INTO `transaction` VALUES ('827', '2021-01-12', 'Sales', 'OU/247/1', '50101', '70875.00', '0.00', '3', '12', '7', '163', 'Penjualan Product LA Bold', 'Aktif', '1', '2021-01-13 15:48:59', '1', '2021-01-13 15:48:59', '2021-01-13 15:48:59');
INSERT INTO `transaction` VALUES ('828', '2021-01-12', 'Sales', 'OU/247/1', '10201', '0.00', '70875.00', '3', '12', '7', '163', 'Penjualan Product LA Bold', 'Aktif', '1', '2021-01-13 15:48:59', '1', '2021-01-13 15:48:59', '2021-01-13 15:48:59');
INSERT INTO `transaction` VALUES ('829', '2021-01-12', 'Sales', 'OU/248/1', '10101', '48000.00', '0.00', '3', '16', '7', '164', 'Penjualan Product Geo Mild', 'Aktif', '1', '2021-01-13 15:49:04', '1', '2021-01-13 15:49:04', '2021-01-13 15:49:04');
INSERT INTO `transaction` VALUES ('830', '2021-01-12', 'Sales', 'OU/248/1', '40101', '0.00', '48000.00', '3', '16', '7', '164', 'Penjualan Product Geo Mild', 'Aktif', '1', '2021-01-13 15:49:04', '1', '2021-01-13 15:49:04', '2021-01-13 15:49:04');
INSERT INTO `transaction` VALUES ('831', '2021-01-12', 'Sales', 'OU/248/1', '50101', '44175.00', '0.00', '3', '16', '7', '164', 'Penjualan Product Geo Mild', 'Aktif', '1', '2021-01-13 15:49:04', '1', '2021-01-13 15:49:04', '2021-01-13 15:49:04');
INSERT INTO `transaction` VALUES ('832', '2021-01-12', 'Sales', 'OU/248/1', '10201', '0.00', '44175.00', '3', '16', '7', '164', 'Penjualan Product Geo Mild', 'Aktif', '1', '2021-01-13 15:49:04', '1', '2021-01-13 15:49:04', '2021-01-13 15:49:04');
INSERT INTO `transaction` VALUES ('833', '2021-01-12', 'Sales', 'OU/249/1', '10101', '6000.00', '0.00', '3', '20', '7', '165', 'Penjualan Product Korek Api', 'Aktif', '1', '2021-01-13 15:49:10', '1', '2021-01-13 15:49:10', '2021-01-13 15:49:10');
INSERT INTO `transaction` VALUES ('834', '2021-01-12', 'Sales', 'OU/249/1', '40104', '0.00', '6000.00', '3', '20', '7', '165', 'Penjualan Product Korek Api', 'Aktif', '1', '2021-01-13 15:49:10', '1', '2021-01-13 15:49:10', '2021-01-13 15:49:10');
INSERT INTO `transaction` VALUES ('835', '2021-01-12', 'Sales', 'OU/249/1', '50104', '4800.00', '0.00', '3', '20', '7', '165', 'Penjualan Product Korek Api', 'Aktif', '1', '2021-01-13 15:49:10', '1', '2021-01-13 15:49:10', '2021-01-13 15:49:10');
INSERT INTO `transaction` VALUES ('836', '2021-01-12', 'Sales', 'OU/249/1', '10204', '0.00', '4800.00', '3', '20', '7', '165', 'Penjualan Product Korek Api', 'Aktif', '1', '2021-01-13 15:49:10', '1', '2021-01-13 15:49:10', '2021-01-13 15:49:10');
INSERT INTO `transaction` VALUES ('837', '2021-01-16', 'Procurement', 'IN/250/1', '10201', '55125.00', '0.00', '1', '23', '1', '87', 'Pembelian Product Magnum Mild', 'Aktif', '1', '2021-01-17 16:15:51', '1', '2021-01-17 16:15:51', '2021-01-17 16:15:51');
INSERT INTO `transaction` VALUES ('838', '2021-01-16', 'Procurement', 'IN/250/1', '10101', '0.00', '55125.00', '1', '23', '1', '87', 'Pembelian Product Magnum Mild', 'Aktif', '1', '2021-01-17 16:15:51', '1', '2021-01-17 16:15:51', '2021-01-17 16:15:51');
INSERT INTO `transaction` VALUES ('839', '2021-01-16', 'Procurement', 'IN/251/1', '10201', '85700.00', '0.00', '1', '13', '1', '88', 'Pembelian Product Dji Sam Soe', 'Aktif', '1', '2021-01-17 16:15:58', '1', '2021-01-17 16:15:58', '2021-01-17 16:15:58');
INSERT INTO `transaction` VALUES ('840', '2021-01-16', 'Procurement', 'IN/251/1', '10101', '0.00', '85700.00', '1', '13', '1', '88', 'Pembelian Product Dji Sam Soe', 'Aktif', '1', '2021-01-17 16:15:58', '1', '2021-01-17 16:15:58', '2021-01-17 16:15:58');
INSERT INTO `transaction` VALUES ('841', '2021-01-16', 'Procurement', 'IN/252/1', '10201', '45600.00', '0.00', '1', '24', '1', '89', 'Pembelian Product Aga Kretek', 'Aktif', '1', '2021-01-17 16:16:04', '1', '2021-01-17 16:16:04', '2021-01-17 16:16:04');
INSERT INTO `transaction` VALUES ('842', '2021-01-16', 'Procurement', 'IN/252/1', '10101', '0.00', '45600.00', '1', '24', '1', '89', 'Pembelian Product Aga Kretek', 'Aktif', '1', '2021-01-17 16:16:04', '1', '2021-01-17 16:16:04', '2021-01-17 16:16:04');
INSERT INTO `transaction` VALUES ('843', '2021-01-16', 'Procurement', 'IN/253/1', '10201', '14725.00', '0.00', '1', '16', '1', '90', 'Pembelian Product Geo Mild', 'Aktif', '1', '2021-01-17 16:16:10', '1', '2021-01-17 16:16:10', '2021-01-17 16:16:10');
INSERT INTO `transaction` VALUES ('844', '2021-01-16', 'Procurement', 'IN/253/1', '10101', '0.00', '14725.00', '1', '16', '1', '90', 'Pembelian Product Geo Mild', 'Aktif', '1', '2021-01-17 16:16:10', '1', '2021-01-17 16:16:10', '2021-01-17 16:16:10');
INSERT INTO `transaction` VALUES ('845', '2021-01-16', 'Procurement', 'IN/254/1', '10201', '220250.00', '0.00', '1', '2', '1', '91', 'Pembelian Product Gudang Garam Surya 16', 'Aktif', '1', '2021-01-17 16:16:16', '1', '2021-01-17 16:16:16', '2021-01-17 16:16:16');
INSERT INTO `transaction` VALUES ('846', '2021-01-16', 'Procurement', 'IN/254/1', '10101', '0.00', '220250.00', '1', '2', '1', '91', 'Pembelian Product Gudang Garam Surya 16', 'Aktif', '1', '2021-01-17 16:16:16', '1', '2021-01-17 16:16:16', '2021-01-17 16:16:16');
INSERT INTO `transaction` VALUES ('847', '2021-01-16', 'Procurement', 'IN/255/1', '10201', '73625.00', '0.00', '3', '16', '1', '92', 'Pembelian Product Geo Mild', 'Aktif', '1', '2021-01-17 16:16:22', '1', '2021-01-17 16:16:22', '2021-01-17 16:16:22');
INSERT INTO `transaction` VALUES ('848', '2021-01-16', 'Procurement', 'IN/255/1', '10101', '0.00', '73625.00', '3', '16', '1', '92', 'Pembelian Product Geo Mild', 'Aktif', '1', '2021-01-17 16:16:22', '1', '2021-01-17 16:16:22', '2021-01-17 16:16:22');
INSERT INTO `transaction` VALUES ('849', '2021-01-16', 'Procurement', 'IN/256/1', '10201', '45600.00', '0.00', '3', '24', '1', '93', 'Pembelian Product Aga Kretek', 'Aktif', '1', '2021-01-17 16:16:28', '1', '2021-01-17 16:16:28', '2021-01-17 16:16:28');
INSERT INTO `transaction` VALUES ('850', '2021-01-16', 'Procurement', 'IN/256/1', '10101', '0.00', '45600.00', '3', '24', '1', '93', 'Pembelian Product Aga Kretek', 'Aktif', '1', '2021-01-17 16:16:28', '1', '2021-01-17 16:16:28', '2021-01-17 16:16:28');
INSERT INTO `transaction` VALUES ('851', '2021-01-16', 'Procurement', 'IN/257/1', '10201', '220250.00', '0.00', '3', '2', '1', '94', 'Pembelian Product Gudang Garam Surya 16', 'Aktif', '1', '2021-01-17 16:16:34', '1', '2021-01-17 16:16:34', '2021-01-17 16:16:34');
INSERT INTO `transaction` VALUES ('852', '2021-01-16', 'Procurement', 'IN/257/1', '10101', '0.00', '220250.00', '3', '2', '1', '94', 'Pembelian Product Gudang Garam Surya 16', 'Aktif', '1', '2021-01-17 16:16:34', '1', '2021-01-17 16:16:34', '2021-01-17 16:16:34');
INSERT INTO `transaction` VALUES ('853', '2021-01-16', 'Procurement', 'IN/258/1', '10201', '823750.00', '0.00', '2', '1', '1', '95', 'Pembelian Product Gudang Garam Surya 12', 'Aktif', '1', '2021-01-17 16:16:40', '1', '2021-01-17 16:16:40', '2021-01-17 16:16:40');
INSERT INTO `transaction` VALUES ('854', '2021-01-16', 'Procurement', 'IN/258/1', '10101', '0.00', '823750.00', '2', '1', '1', '95', 'Pembelian Product Gudang Garam Surya 12', 'Aktif', '1', '2021-01-17 16:16:40', '1', '2021-01-17 16:16:40', '2021-01-17 16:16:40');
INSERT INTO `transaction` VALUES ('855', '2021-01-16', 'Procurement', 'IN/259/1', '10201', '440500.00', '0.00', '2', '2', '1', '96', 'Pembelian Product Gudang Garam Surya 16', 'Aktif', '1', '2021-01-17 16:16:45', '1', '2021-01-17 16:16:45', '2021-01-17 16:16:45');
INSERT INTO `transaction` VALUES ('856', '2021-01-16', 'Procurement', 'IN/259/1', '10101', '0.00', '440500.00', '2', '2', '1', '96', 'Pembelian Product Gudang Garam Surya 16', 'Aktif', '1', '2021-01-17 16:16:45', '1', '2021-01-17 16:16:45', '2021-01-17 16:16:45');
INSERT INTO `transaction` VALUES ('857', '2021-01-16', 'Sales', 'OU/260/1', '10101', '360000.00', '0.00', '2', '18', '7', '166', 'Penjualan Product Teh Pucuk', 'Aktif', '1', '2021-01-17 16:20:46', '1', '2021-01-17 16:20:46', '2021-01-17 16:20:46');
INSERT INTO `transaction` VALUES ('858', '2021-01-16', 'Sales', 'OU/260/1', '40103', '0.00', '360000.00', '2', '18', '7', '166', 'Penjualan Product Teh Pucuk', 'Aktif', '1', '2021-01-17 16:20:46', '1', '2021-01-17 16:20:46', '2021-01-17 16:20:46');
INSERT INTO `transaction` VALUES ('859', '2021-01-16', 'Sales', 'OU/260/1', '50102', '255000.00', '0.00', '2', '18', '7', '166', 'Penjualan Product Teh Pucuk', 'Aktif', '1', '2021-01-17 16:20:46', '1', '2021-01-17 16:20:46', '2021-01-17 16:20:46');
INSERT INTO `transaction` VALUES ('860', '2021-01-16', 'Sales', 'OU/260/1', '10202', '0.00', '255000.00', '2', '18', '7', '166', 'Penjualan Product Teh Pucuk', 'Aktif', '1', '2021-01-17 16:20:46', '1', '2021-01-17 16:20:46', '2021-01-17 16:20:46');
INSERT INTO `transaction` VALUES ('861', '2021-01-16', 'Sales', 'OU/261/1', '10101', '216000.00', '0.00', '2', '18', '7', '167', 'Penjualan Product Teh Pucuk', 'Aktif', '1', '2021-01-17 16:20:50', '1', '2021-01-17 16:20:50', '2021-01-17 16:20:50');
INSERT INTO `transaction` VALUES ('862', '2021-01-16', 'Sales', 'OU/261/1', '40103', '0.00', '216000.00', '2', '18', '7', '167', 'Penjualan Product Teh Pucuk', 'Aktif', '1', '2021-01-17 16:20:50', '1', '2021-01-17 16:20:50', '2021-01-17 16:20:50');
INSERT INTO `transaction` VALUES ('863', '2021-01-16', 'Sales', 'OU/261/1', '50102', '153000.00', '0.00', '2', '18', '7', '167', 'Penjualan Product Teh Pucuk', 'Aktif', '1', '2021-01-17 16:20:51', '1', '2021-01-17 16:20:51', '2021-01-17 16:20:51');
INSERT INTO `transaction` VALUES ('864', '2021-01-16', 'Sales', 'OU/261/1', '10202', '0.00', '153000.00', '2', '18', '7', '167', 'Penjualan Product Teh Pucuk', 'Aktif', '1', '2021-01-17 16:20:51', '1', '2021-01-17 16:20:51', '2021-01-17 16:20:51');
INSERT INTO `transaction` VALUES ('865', '2021-01-16', 'Sales', 'OU/262/1', '10101', '150000.00', '0.00', '2', '19', '7', '168', 'Penjualan Product Gudang Garam Surya (Kaleng)', 'Aktif', '1', '2021-01-17 16:20:56', '1', '2021-01-17 16:20:56', '2021-01-17 16:20:56');
INSERT INTO `transaction` VALUES ('866', '2021-01-16', 'Sales', 'OU/262/1', '40101', '0.00', '150000.00', '2', '19', '7', '168', 'Penjualan Product Gudang Garam Surya (Kaleng)', 'Aktif', '1', '2021-01-17 16:20:56', '1', '2021-01-17 16:20:56', '2021-01-17 16:20:56');
INSERT INTO `transaction` VALUES ('867', '2021-01-16', 'Sales', 'OU/262/1', '50101', '131800.00', '0.00', '2', '19', '7', '168', 'Penjualan Product Gudang Garam Surya (Kaleng)', 'Aktif', '1', '2021-01-17 16:20:56', '1', '2021-01-17 16:20:56', '2021-01-17 16:20:56');
INSERT INTO `transaction` VALUES ('868', '2021-01-16', 'Sales', 'OU/262/1', '10201', '0.00', '131800.00', '2', '19', '7', '168', 'Penjualan Product Gudang Garam Surya (Kaleng)', 'Aktif', '1', '2021-01-17 16:20:56', '1', '2021-01-17 16:20:56', '2021-01-17 16:20:56');
INSERT INTO `transaction` VALUES ('869', '2021-01-16', 'Jurnal Umum', 'JU/126/2', '10101', '0.00', '0.00', '0', '0', '0', '0', 'Hutang Belanja Rokok', 'Non Aktif', '1', '2020-12-19 17:17:22', '1', '2021-01-16 17:17:22', '2021-01-25 19:42:46');
INSERT INTO `transaction` VALUES ('870', '2021-01-16', 'Jurnal Umum', 'JU/126/2', '20102', '0.00', '0.00', '0', '0', '0', '0', 'Hutang Belanja Rokok', 'Non Aktif', '1', '2020-12-19 17:17:22', '1', '2021-01-16 17:17:22', '2021-01-25 19:42:46');
INSERT INTO `transaction` VALUES ('871', '2021-01-17', 'Procurement', 'IN/263/1', '10205', '30000.00', '0.00', '4', '31', '9', '97', 'Pembelian Product Parfum Bayi', 'Aktif', '1', '2021-01-17 16:35:34', '1', '2021-01-17 16:35:34', '2021-01-17 16:35:34');
INSERT INTO `transaction` VALUES ('872', '2021-01-17', 'Procurement', 'IN/263/1', '10101', '0.00', '30000.00', '4', '31', '9', '97', 'Pembelian Product Parfum Bayi', 'Aktif', '1', '2021-01-17 16:35:34', '1', '2021-01-17 16:35:34', '2021-01-17 16:35:34');
INSERT INTO `transaction` VALUES ('873', '2021-01-17', 'Procurement', 'IN/264/1', '10205', '70000.00', '0.00', '4', '32', '9', '98', 'Pembelian Product Masker Anak 3 P', 'Aktif', '1', '2021-01-17 16:35:40', '1', '2021-01-17 16:35:40', '2021-01-17 16:35:40');
INSERT INTO `transaction` VALUES ('874', '2021-01-17', 'Procurement', 'IN/264/1', '10101', '0.00', '70000.00', '4', '32', '9', '98', 'Pembelian Product Masker Anak 3 P', 'Aktif', '1', '2021-01-17 16:35:40', '1', '2021-01-17 16:35:40', '2021-01-17 16:35:40');
INSERT INTO `transaction` VALUES ('875', '2021-01-17', 'Procurement', 'IN/265/1', '10205', '30000.00', '0.00', '4', '33', '9', '99', 'Pembelian Product Body Trimer', 'Aktif', '1', '2021-01-17 16:35:46', '1', '2021-01-17 16:35:46', '2021-01-17 16:35:46');
INSERT INTO `transaction` VALUES ('876', '2021-01-17', 'Procurement', 'IN/265/1', '10101', '0.00', '30000.00', '4', '33', '9', '99', 'Pembelian Product Body Trimer', 'Aktif', '1', '2021-01-17 16:35:46', '1', '2021-01-17 16:35:46', '2021-01-17 16:35:46');
INSERT INTO `transaction` VALUES ('877', '2021-01-17', 'Sales', 'OU/266/1', '10101', '52500.00', '0.00', '3', '1', '7', '169', 'Penjualan Product Gudang Garam Surya 12', 'Aktif', '1', '2021-01-18 16:20:23', '1', '2021-01-18 16:20:23', '2021-01-18 16:20:23');
INSERT INTO `transaction` VALUES ('878', '2021-01-17', 'Sales', 'OU/266/1', '40101', '0.00', '52500.00', '3', '1', '7', '169', 'Penjualan Product Gudang Garam Surya 12', 'Aktif', '1', '2021-01-18 16:20:23', '1', '2021-01-18 16:20:23', '2021-01-18 16:20:23');
INSERT INTO `transaction` VALUES ('879', '2021-01-17', 'Sales', 'OU/266/1', '50101', '49350.00', '0.00', '3', '1', '7', '169', 'Penjualan Product Gudang Garam Surya 12', 'Aktif', '1', '2021-01-18 16:20:23', '1', '2021-01-18 16:20:23', '2021-01-18 16:20:23');
INSERT INTO `transaction` VALUES ('880', '2021-01-17', 'Sales', 'OU/266/1', '10201', '0.00', '49350.00', '3', '1', '7', '169', 'Penjualan Product Gudang Garam Surya 12', 'Aktif', '1', '2021-01-18 16:20:23', '1', '2021-01-18 16:20:23', '2021-01-18 16:20:23');
INSERT INTO `transaction` VALUES ('881', '2021-01-17', 'Sales', 'OU/267/1', '10101', '70500.00', '0.00', '3', '3', '7', '170', 'Penjualan Product Sampoerna Mild 16', 'Aktif', '1', '2021-01-18 16:20:28', '1', '2021-01-18 16:20:28', '2021-01-18 16:20:28');
INSERT INTO `transaction` VALUES ('882', '2021-01-17', 'Sales', 'OU/267/1', '40101', '0.00', '70500.00', '3', '3', '7', '170', 'Penjualan Product Sampoerna Mild 16', 'Aktif', '1', '2021-01-18 16:20:28', '1', '2021-01-18 16:20:28', '2021-01-18 16:20:28');
INSERT INTO `transaction` VALUES ('883', '2021-01-17', 'Sales', 'OU/267/1', '50101', '66000.00', '0.00', '3', '3', '7', '170', 'Penjualan Product Sampoerna Mild 16', 'Aktif', '1', '2021-01-18 16:20:28', '1', '2021-01-18 16:20:28', '2021-01-18 16:20:28');
INSERT INTO `transaction` VALUES ('884', '2021-01-17', 'Sales', 'OU/267/1', '10201', '0.00', '66000.00', '3', '3', '7', '170', 'Penjualan Product Sampoerna Mild 16', 'Aktif', '1', '2021-01-18 16:20:28', '1', '2021-01-18 16:20:28', '2021-01-18 16:20:28');
INSERT INTO `transaction` VALUES ('885', '2021-01-17', 'Sales', 'OU/268/1', '10101', '17500.00', '0.00', '3', '4', '7', '171', 'Penjualan Product Sampoerna Mild 12', 'Aktif', '1', '2021-01-18 16:20:34', '1', '2021-01-18 16:20:34', '2021-01-18 16:20:34');
INSERT INTO `transaction` VALUES ('886', '2021-01-17', 'Sales', 'OU/268/1', '40101', '0.00', '17500.00', '3', '4', '7', '171', 'Penjualan Product Sampoerna Mild 12', 'Aktif', '1', '2021-01-18 16:20:34', '1', '2021-01-18 16:20:34', '2021-01-18 16:20:34');
INSERT INTO `transaction` VALUES ('887', '2021-01-17', 'Sales', 'OU/268/1', '50101', '16100.00', '0.00', '3', '4', '7', '171', 'Penjualan Product Sampoerna Mild 12', 'Aktif', '1', '2021-01-18 16:20:34', '1', '2021-01-18 16:20:34', '2021-01-18 16:20:34');
INSERT INTO `transaction` VALUES ('888', '2021-01-17', 'Sales', 'OU/268/1', '10201', '0.00', '16100.00', '3', '4', '7', '171', 'Penjualan Product Sampoerna Mild 12', 'Aktif', '1', '2021-01-18 16:20:34', '1', '2021-01-18 16:20:34', '2021-01-18 16:20:34');
INSERT INTO `transaction` VALUES ('889', '2021-01-17', 'Sales', 'OU/269/1', '10101', '29000.00', '0.00', '3', '7', '7', '172', 'Penjualan Product Marlboro Merah', 'Aktif', '1', '2021-01-18 16:20:41', '1', '2021-01-18 16:20:41', '2021-01-18 16:20:41');
INSERT INTO `transaction` VALUES ('890', '2021-01-17', 'Sales', 'OU/269/1', '40101', '0.00', '29000.00', '3', '7', '7', '172', 'Penjualan Product Marlboro Merah', 'Aktif', '1', '2021-01-18 16:20:41', '1', '2021-01-18 16:20:41', '2021-01-18 16:20:41');
INSERT INTO `transaction` VALUES ('891', '2021-01-17', 'Sales', 'OU/269/1', '50101', '27575.00', '0.00', '3', '7', '7', '172', 'Penjualan Product Marlboro Merah', 'Aktif', '1', '2021-01-18 16:20:41', '1', '2021-01-18 16:20:41', '2021-01-18 16:20:41');
INSERT INTO `transaction` VALUES ('892', '2021-01-17', 'Sales', 'OU/269/1', '10201', '0.00', '27575.00', '3', '7', '7', '172', 'Penjualan Product Marlboro Merah', 'Aktif', '1', '2021-01-18 16:20:41', '1', '2021-01-18 16:20:41', '2021-01-18 16:20:41');
INSERT INTO `transaction` VALUES ('893', '2021-01-17', 'Sales', 'OU/270/1', '10101', '24500.00', '0.00', '3', '12', '7', '173', 'Penjualan Product LA Bold', 'Aktif', '1', '2021-01-18 16:20:46', '1', '2021-01-18 16:20:46', '2021-01-18 16:20:46');
INSERT INTO `transaction` VALUES ('894', '2021-01-17', 'Sales', 'OU/270/1', '40101', '0.00', '24500.00', '3', '12', '7', '173', 'Penjualan Product LA Bold', 'Aktif', '1', '2021-01-18 16:20:46', '1', '2021-01-18 16:20:46', '2021-01-18 16:20:46');
INSERT INTO `transaction` VALUES ('895', '2021-01-17', 'Sales', 'OU/270/1', '50101', '23625.00', '0.00', '3', '12', '7', '173', 'Penjualan Product LA Bold', 'Aktif', '1', '2021-01-18 16:20:46', '1', '2021-01-18 16:20:46', '2021-01-18 16:20:46');
INSERT INTO `transaction` VALUES ('896', '2021-01-17', 'Sales', 'OU/270/1', '10201', '0.00', '23625.00', '3', '12', '7', '173', 'Penjualan Product LA Bold', 'Aktif', '1', '2021-01-18 16:20:46', '1', '2021-01-18 16:20:46', '2021-01-18 16:20:46');
INSERT INTO `transaction` VALUES ('897', '2021-01-17', 'Sales', 'OU/271/1', '10101', '15000.00', '0.00', '3', '17', '7', '174', 'Penjualan Product GL Mild', 'Aktif', '1', '2021-01-18 16:20:52', '1', '2021-01-18 16:20:52', '2021-01-18 16:20:52');
INSERT INTO `transaction` VALUES ('898', '2021-01-17', 'Sales', 'OU/271/1', '40101', '0.00', '15000.00', '3', '17', '7', '174', 'Penjualan Product GL Mild', 'Aktif', '1', '2021-01-18 16:20:52', '1', '2021-01-18 16:20:52', '2021-01-18 16:20:52');
INSERT INTO `transaction` VALUES ('899', '2021-01-17', 'Sales', 'OU/271/1', '50101', '14000.00', '0.00', '3', '17', '7', '174', 'Penjualan Product GL Mild', 'Aktif', '1', '2021-01-18 16:20:52', '1', '2021-01-18 16:20:52', '2021-01-18 16:20:52');
INSERT INTO `transaction` VALUES ('900', '2021-01-17', 'Sales', 'OU/271/1', '10201', '0.00', '14000.00', '3', '17', '7', '174', 'Penjualan Product GL Mild', 'Aktif', '1', '2021-01-18 16:20:52', '1', '2021-01-18 16:20:52', '2021-01-18 16:20:52');
INSERT INTO `transaction` VALUES ('901', '2021-01-17', 'Sales', 'OU/272/1', '10101', '20000.00', '0.00', '3', '14', '7', '175', 'Penjualan Product Surya Pro Mild', 'Aktif', '1', '2021-01-18 16:20:57', '1', '2021-01-18 16:20:57', '2021-01-18 16:20:57');
INSERT INTO `transaction` VALUES ('902', '2021-01-17', 'Sales', 'OU/272/1', '40101', '0.00', '20000.00', '3', '14', '7', '175', 'Penjualan Product Surya Pro Mild', 'Aktif', '1', '2021-01-18 16:20:57', '1', '2021-01-18 16:20:57', '2021-01-18 16:20:57');
INSERT INTO `transaction` VALUES ('903', '2021-01-17', 'Sales', 'OU/272/1', '50101', '19000.00', '0.00', '3', '14', '7', '175', 'Penjualan Product Surya Pro Mild', 'Aktif', '1', '2021-01-18 16:20:57', '1', '2021-01-18 16:20:57', '2021-01-18 16:20:57');
INSERT INTO `transaction` VALUES ('904', '2021-01-17', 'Sales', 'OU/272/1', '10201', '0.00', '19000.00', '3', '14', '7', '175', 'Penjualan Product Surya Pro Mild', 'Aktif', '1', '2021-01-18 16:20:57', '1', '2021-01-18 16:20:57', '2021-01-18 16:20:57');
INSERT INTO `transaction` VALUES ('905', '2021-01-17', 'Sales', 'OU/273/1', '10101', '17500.00', '0.00', '3', '25', '7', '176', 'Penjualan Product Dji Sam Soe 12', 'Aktif', '1', '2021-01-18 16:21:02', '1', '2021-01-18 16:21:02', '2021-01-18 16:21:02');
INSERT INTO `transaction` VALUES ('906', '2021-01-17', 'Sales', 'OU/273/1', '40101', '0.00', '17500.00', '3', '25', '7', '176', 'Penjualan Product Dji Sam Soe 12', 'Aktif', '1', '2021-01-18 16:21:02', '1', '2021-01-18 16:21:02', '2021-01-18 16:21:02');
INSERT INTO `transaction` VALUES ('907', '2021-01-17', 'Sales', 'OU/273/1', '50101', '15800.00', '0.00', '3', '25', '7', '176', 'Penjualan Product Dji Sam Soe 12', 'Aktif', '1', '2021-01-18 16:21:02', '1', '2021-01-18 16:21:02', '2021-01-18 16:21:02');
INSERT INTO `transaction` VALUES ('908', '2021-01-17', 'Sales', 'OU/273/1', '10201', '0.00', '15800.00', '3', '25', '7', '176', 'Penjualan Product Dji Sam Soe 12', 'Aktif', '1', '2021-01-18 16:21:02', '1', '2021-01-18 16:21:02', '2021-01-18 16:21:02');
INSERT INTO `transaction` VALUES ('909', '2021-01-17', 'Sales', 'OU/274/1', '10101', '8000.00', '0.00', '3', '20', '7', '177', 'Penjualan Product Korek Api', 'Aktif', '1', '2021-01-18 16:21:07', '1', '2021-01-18 16:21:07', '2021-01-18 16:21:07');
INSERT INTO `transaction` VALUES ('910', '2021-01-17', 'Sales', 'OU/274/1', '40104', '0.00', '8000.00', '3', '20', '7', '177', 'Penjualan Product Korek Api', 'Aktif', '1', '2021-01-18 16:21:07', '1', '2021-01-18 16:21:07', '2021-01-18 16:21:07');
INSERT INTO `transaction` VALUES ('911', '2021-01-17', 'Sales', 'OU/274/1', '50104', '6400.00', '0.00', '3', '20', '7', '177', 'Penjualan Product Korek Api', 'Aktif', '1', '2021-01-18 16:21:07', '1', '2021-01-18 16:21:07', '2021-01-18 16:21:07');
INSERT INTO `transaction` VALUES ('912', '2021-01-17', 'Sales', 'OU/274/1', '10204', '0.00', '6400.00', '3', '20', '7', '177', 'Penjualan Product Korek Api', 'Aktif', '1', '2021-01-18 16:21:07', '1', '2021-01-18 16:21:07', '2021-01-18 16:21:07');
INSERT INTO `transaction` VALUES ('913', '2021-01-18', 'Sales', 'OU/275/1', '10101', '18000.00', '0.00', '4', '31', '7', '178', 'Penjualan Product Parfum Bayi', 'Aktif', '1', '2021-01-18 16:34:20', '1', '2021-01-18 16:34:20', '2021-01-18 16:34:20');
INSERT INTO `transaction` VALUES ('914', '2021-01-18', 'Sales', 'OU/275/1', '40105', '0.00', '18000.00', '4', '31', '7', '178', 'Penjualan Product Parfum Bayi', 'Aktif', '1', '2021-01-18 16:34:20', '1', '2021-01-18 16:34:20', '2021-01-18 16:34:20');
INSERT INTO `transaction` VALUES ('915', '2021-01-18', 'Sales', 'OU/275/1', '50105', '10000.00', '0.00', '4', '31', '7', '178', 'Penjualan Product Parfum Bayi', 'Aktif', '1', '2021-01-18 16:34:20', '1', '2021-01-18 16:34:20', '2021-01-18 16:34:20');
INSERT INTO `transaction` VALUES ('916', '2021-01-18', 'Sales', 'OU/275/1', '10205', '0.00', '10000.00', '4', '31', '7', '178', 'Penjualan Product Parfum Bayi', 'Aktif', '1', '2021-01-18 16:34:20', '1', '2021-01-18 16:34:20', '2021-01-18 16:34:20');
INSERT INTO `transaction` VALUES ('917', '2021-01-18', 'Procurement', 'IN/276/1', '10201', '230000.00', '0.00', '4', '3', '2', '100', 'Pembelian Product Sampoerna Mild 16', 'Aktif', '1', '2021-01-18 16:37:37', '1', '2021-01-18 16:37:37', '2021-01-18 16:37:37');
INSERT INTO `transaction` VALUES ('918', '2021-01-18', 'Procurement', 'IN/276/1', '10101', '0.00', '230000.00', '4', '3', '2', '100', 'Pembelian Product Sampoerna Mild 16', 'Aktif', '1', '2021-01-18 16:37:37', '1', '2021-01-18 16:37:37', '2021-01-18 16:37:37');
INSERT INTO `transaction` VALUES ('919', '2021-01-20', 'Procurement', 'IN/277/1', '10205', '19000.00', '0.00', '4', '34', '9', '101', 'Pembelian Product Mini Sealer', 'Aktif', '1', '2021-01-21 06:26:43', '1', '2021-01-21 06:26:43', '2021-01-21 06:26:43');
INSERT INTO `transaction` VALUES ('920', '2021-01-20', 'Procurement', 'IN/277/1', '10101', '0.00', '19000.00', '4', '34', '9', '101', 'Pembelian Product Mini Sealer', 'Aktif', '1', '2021-01-21 06:26:43', '1', '2021-01-21 06:26:43', '2021-01-21 06:26:43');
INSERT INTO `transaction` VALUES ('921', '2021-01-20', 'Procurement', 'IN/278/1', '10205', '30000.00', '0.00', '4', '35', '9', '102', 'Pembelian Product Basket Vegetable', 'Aktif', '1', '2021-01-21 06:26:53', '1', '2021-01-21 06:26:53', '2021-01-21 06:26:53');
INSERT INTO `transaction` VALUES ('922', '2021-01-20', 'Procurement', 'IN/278/1', '10101', '0.00', '30000.00', '4', '35', '9', '102', 'Pembelian Product Basket Vegetable', 'Aktif', '1', '2021-01-21 06:26:53', '1', '2021-01-21 06:26:53', '2021-01-21 06:26:53');
INSERT INTO `transaction` VALUES ('923', '2021-01-23', 'Procurement', 'IN/279/1', '10205', '57000.00', '0.00', '4', '36', '9', '103', 'Pembelian Product Balmut Dewasa', 'Aktif', '1', '2021-01-25 13:48:26', '1', '2021-01-25 13:48:26', '2021-01-25 13:48:26');
INSERT INTO `transaction` VALUES ('924', '2021-01-23', 'Procurement', 'IN/279/1', '10101', '0.00', '57000.00', '4', '36', '9', '103', 'Pembelian Product Balmut Dewasa', 'Aktif', '1', '2021-01-25 13:48:26', '1', '2021-01-25 13:48:26', '2021-01-25 13:48:26');
INSERT INTO `transaction` VALUES ('925', '2021-01-23', 'Procurement', 'IN/280/1', '10205', '20000.00', '0.00', '4', '37', '9', '104', 'Pembelian Product Boneka Kucing', 'Aktif', '1', '2021-01-25 13:48:31', '1', '2021-01-25 13:48:31', '2021-01-25 13:48:31');
INSERT INTO `transaction` VALUES ('926', '2021-01-23', 'Procurement', 'IN/280/1', '10101', '0.00', '20000.00', '4', '37', '9', '104', 'Pembelian Product Boneka Kucing', 'Aktif', '1', '2021-01-25 13:48:31', '1', '2021-01-25 13:48:31', '2021-01-25 13:48:31');
INSERT INTO `transaction` VALUES ('927', '2021-01-23', 'Procurement', 'IN/281/1', '10205', '6500.00', '0.00', '4', '38', '9', '105', 'Pembelian Product Mangkok Masker', 'Aktif', '1', '2021-01-25 13:48:35', '1', '2021-01-25 13:48:35', '2021-01-25 13:48:35');
INSERT INTO `transaction` VALUES ('928', '2021-01-23', 'Procurement', 'IN/281/1', '10101', '0.00', '6500.00', '4', '38', '9', '105', 'Pembelian Product Mangkok Masker', 'Aktif', '1', '2021-01-25 13:48:35', '1', '2021-01-25 13:48:35', '2021-01-25 13:48:35');
INSERT INTO `transaction` VALUES ('929', '2021-01-23', 'Procurement', 'IN/282/1', '10205', '17000.00', '0.00', '4', '39', '9', '106', 'Pembelian Product Cetakan Donat', 'Aktif', '1', '2021-01-25 13:49:46', '1', '2021-01-25 13:49:46', '2021-01-25 13:49:46');
INSERT INTO `transaction` VALUES ('930', '2021-01-23', 'Procurement', 'IN/282/1', '10101', '0.00', '17000.00', '4', '39', '9', '106', 'Pembelian Product Cetakan Donat', 'Aktif', '1', '2021-01-25 13:49:46', '1', '2021-01-25 13:49:46', '2021-01-25 13:49:46');
INSERT INTO `transaction` VALUES ('931', '2021-01-25', 'Procurement', 'IN/283/1', '10205', '20000.00', '0.00', '4', '40', '9', '107', 'Pembelian Product Lampu Jamur', 'Aktif', '1', '2021-01-25 13:49:51', '1', '2021-01-25 13:49:51', '2021-01-25 13:49:51');
INSERT INTO `transaction` VALUES ('932', '2021-01-25', 'Procurement', 'IN/283/1', '10101', '0.00', '20000.00', '4', '40', '9', '107', 'Pembelian Product Lampu Jamur', 'Aktif', '1', '2021-01-25 13:49:51', '1', '2021-01-25 13:49:51', '2021-01-25 13:49:51');
INSERT INTO `transaction` VALUES ('933', '2021-01-25', 'Procurement', 'IN/284/1', '10205', '10000.00', '0.00', '4', '31', '0', '108', 'Pembelian Product Parfum Bayi', 'Aktif', '1', '2021-01-25 13:49:56', '1', '2021-01-25 13:49:56', '2021-01-25 13:49:56');
INSERT INTO `transaction` VALUES ('934', '2021-01-25', 'Procurement', 'IN/284/1', '10101', '0.00', '10000.00', '4', '31', '0', '108', 'Pembelian Product Parfum Bayi', 'Aktif', '1', '2021-01-25 13:49:56', '1', '2021-01-25 13:49:56', '2021-01-25 13:49:56');
INSERT INTO `transaction` VALUES ('935', '2021-01-17', 'Sales', 'OU/285/1', '10101', '90000.00', '0.00', '4', '32', '7', '179', 'Penjualan Product Masker Anak 3 P', 'Aktif', '1', '2021-01-25 13:51:12', '1', '2021-01-25 13:51:12', '2021-01-25 13:51:12');
INSERT INTO `transaction` VALUES ('936', '2021-01-17', 'Sales', 'OU/285/1', '40105', '0.00', '90000.00', '4', '32', '7', '179', 'Penjualan Product Masker Anak 3 P', 'Aktif', '1', '2021-01-25 13:51:12', '1', '2021-01-25 13:51:12', '2021-01-25 13:51:12');
INSERT INTO `transaction` VALUES ('937', '2021-01-17', 'Sales', 'OU/285/1', '50105', '70000.00', '0.00', '4', '32', '7', '179', 'Penjualan Product Masker Anak 3 P', 'Aktif', '1', '2021-01-25 13:51:12', '1', '2021-01-25 13:51:12', '2021-01-25 13:51:12');
INSERT INTO `transaction` VALUES ('938', '2021-01-17', 'Sales', 'OU/285/1', '10205', '0.00', '70000.00', '4', '32', '7', '179', 'Penjualan Product Masker Anak 3 P', 'Aktif', '1', '2021-01-25 13:51:12', '1', '2021-01-25 13:51:12', '2021-01-25 13:51:12');
INSERT INTO `transaction` VALUES ('939', '2021-01-23', 'Sales', 'OU/286/1', '10101', '10000.00', '0.00', '4', '38', '7', '180', 'Penjualan Product Mangkok Masker', 'Aktif', '1', '2021-01-25 13:51:50', '1', '2021-01-25 13:51:50', '2021-01-25 13:51:50');
INSERT INTO `transaction` VALUES ('940', '2021-01-23', 'Sales', 'OU/286/1', '40105', '0.00', '10000.00', '4', '38', '7', '180', 'Penjualan Product Mangkok Masker', 'Aktif', '1', '2021-01-25 13:51:50', '1', '2021-01-25 13:51:50', '2021-01-25 13:51:50');
INSERT INTO `transaction` VALUES ('941', '2021-01-23', 'Sales', 'OU/286/1', '50105', '6500.00', '0.00', '4', '38', '7', '180', 'Penjualan Product Mangkok Masker', 'Aktif', '1', '2021-01-25 13:51:50', '1', '2021-01-25 13:51:50', '2021-01-25 13:51:50');
INSERT INTO `transaction` VALUES ('942', '2021-01-23', 'Sales', 'OU/286/1', '10205', '0.00', '6500.00', '4', '38', '7', '180', 'Penjualan Product Mangkok Masker', 'Aktif', '1', '2021-01-25 13:51:50', '1', '2021-01-25 13:51:50', '2021-01-25 13:51:50');
INSERT INTO `transaction` VALUES ('943', '2021-01-23', 'Sales', 'OU/287/1', '10101', '65000.00', '0.00', '4', '36', '7', '181', 'Penjualan Product Balmut Dewasa', 'Aktif', '1', '2021-01-25 13:52:40', '1', '2021-01-25 13:52:40', '2021-01-25 13:52:40');
INSERT INTO `transaction` VALUES ('944', '2021-01-23', 'Sales', 'OU/287/1', '40105', '0.00', '65000.00', '4', '36', '7', '181', 'Penjualan Product Balmut Dewasa', 'Aktif', '1', '2021-01-25 13:52:40', '1', '2021-01-25 13:52:40', '2021-01-25 13:52:40');
INSERT INTO `transaction` VALUES ('945', '2021-01-23', 'Sales', 'OU/287/1', '50105', '57000.00', '0.00', '4', '36', '7', '181', 'Penjualan Product Balmut Dewasa', 'Aktif', '1', '2021-01-25 13:52:40', '1', '2021-01-25 13:52:40', '2021-01-25 13:52:40');
INSERT INTO `transaction` VALUES ('946', '2021-01-23', 'Sales', 'OU/287/1', '10205', '0.00', '57000.00', '4', '36', '7', '181', 'Penjualan Product Balmut Dewasa', 'Aktif', '1', '2021-01-25 13:52:40', '1', '2021-01-25 13:52:40', '2021-01-25 13:52:40');
INSERT INTO `transaction` VALUES ('947', '2021-01-24', 'Sales', 'OU/288/1', '10101', '25000.00', '0.00', '4', '37', '7', '182', 'Penjualan Product Boneka Kucing', 'Aktif', '1', '2021-01-25 13:53:43', '1', '2021-01-25 13:53:43', '2021-01-25 13:53:43');
INSERT INTO `transaction` VALUES ('948', '2021-01-24', 'Sales', 'OU/288/1', '40105', '0.00', '25000.00', '4', '37', '7', '182', 'Penjualan Product Boneka Kucing', 'Aktif', '1', '2021-01-25 13:53:43', '1', '2021-01-25 13:53:43', '2021-01-25 13:53:43');
INSERT INTO `transaction` VALUES ('949', '2021-01-24', 'Sales', 'OU/288/1', '50105', '20000.00', '0.00', '4', '37', '7', '182', 'Penjualan Product Boneka Kucing', 'Aktif', '1', '2021-01-25 13:53:43', '1', '2021-01-25 13:53:43', '2021-01-25 13:53:43');
INSERT INTO `transaction` VALUES ('950', '2021-01-24', 'Sales', 'OU/288/1', '10205', '0.00', '20000.00', '4', '37', '7', '182', 'Penjualan Product Boneka Kucing', 'Aktif', '1', '2021-01-25 13:53:43', '1', '2021-01-25 13:53:43', '2021-01-25 13:53:43');
INSERT INTO `transaction` VALUES ('951', '2021-01-23', 'Sales', 'OU/289/1', '10101', '245000.00', '0.00', '2', '1', '7', '183', 'Penjualan Product Gudang Garam Surya 12', 'Aktif', '1', '2021-01-25 14:03:49', '1', '2021-01-25 14:03:49', '2021-01-25 14:03:49');
INSERT INTO `transaction` VALUES ('952', '2021-01-23', 'Sales', 'OU/289/1', '40101', '0.00', '245000.00', '2', '1', '7', '183', 'Penjualan Product Gudang Garam Surya 12', 'Aktif', '1', '2021-01-25 14:03:49', '1', '2021-01-25 14:03:49', '2021-01-25 14:03:49');
INSERT INTO `transaction` VALUES ('953', '2021-01-23', 'Sales', 'OU/289/1', '50101', '231000.00', '0.00', '2', '1', '7', '183', 'Penjualan Product Gudang Garam Surya 12', 'Aktif', '1', '2021-01-25 14:03:49', '1', '2021-01-25 14:03:49', '2021-01-25 14:03:49');
INSERT INTO `transaction` VALUES ('954', '2021-01-23', 'Sales', 'OU/289/1', '10201', '0.00', '231000.00', '2', '1', '7', '183', 'Penjualan Product Gudang Garam Surya 12', 'Aktif', '1', '2021-01-25 14:03:49', '1', '2021-01-25 14:03:49', '2021-01-25 14:03:49');
INSERT INTO `transaction` VALUES ('955', '2021-01-23', 'Sales', 'OU/290/1', '10101', '175000.00', '0.00', '2', '1', '7', '184', 'Penjualan Product Gudang Garam Surya 12', 'Aktif', '1', '2021-01-25 14:03:55', '1', '2021-01-25 14:03:55', '2021-01-25 14:03:55');
INSERT INTO `transaction` VALUES ('956', '2021-01-23', 'Sales', 'OU/290/1', '40101', '0.00', '175000.00', '2', '1', '7', '184', 'Penjualan Product Gudang Garam Surya 12', 'Aktif', '1', '2021-01-25 14:03:55', '1', '2021-01-25 14:03:55', '2021-01-25 14:03:55');
INSERT INTO `transaction` VALUES ('957', '2021-01-23', 'Sales', 'OU/290/1', '50101', '164250.00', '0.00', '2', '1', '7', '184', 'Penjualan Product Gudang Garam Surya 12', 'Aktif', '1', '2021-01-25 14:03:55', '1', '2021-01-25 14:03:55', '2021-01-25 14:03:55');
INSERT INTO `transaction` VALUES ('958', '2021-01-23', 'Sales', 'OU/290/1', '10201', '0.00', '164250.00', '2', '1', '7', '184', 'Penjualan Product Gudang Garam Surya 12', 'Aktif', '1', '2021-01-25 14:03:55', '1', '2021-01-25 14:03:55', '2021-01-25 14:03:55');
INSERT INTO `transaction` VALUES ('959', '2021-01-23', 'Sales', 'OU/291/1', '10101', '1225000.00', '0.00', '2', '1', '7', '185', 'Penjualan Product Gudang Garam Surya 12', 'Aktif', '1', '2021-01-25 14:04:01', '1', '2021-01-25 14:04:01', '2021-01-25 14:04:01');
INSERT INTO `transaction` VALUES ('960', '2021-01-23', 'Sales', 'OU/291/1', '40101', '0.00', '1225000.00', '2', '1', '7', '185', 'Penjualan Product Gudang Garam Surya 12', 'Aktif', '1', '2021-01-25 14:04:01', '1', '2021-01-25 14:04:01', '2021-01-25 14:04:01');
INSERT INTO `transaction` VALUES ('961', '2021-01-23', 'Sales', 'OU/291/1', '50101', '1155000.00', '0.00', '2', '1', '7', '185', 'Penjualan Product Gudang Garam Surya 12', 'Aktif', '1', '2021-01-25 14:04:01', '1', '2021-01-25 14:04:01', '2021-01-25 14:04:01');
INSERT INTO `transaction` VALUES ('962', '2021-01-23', 'Sales', 'OU/291/1', '10201', '0.00', '1155000.00', '2', '1', '7', '185', 'Penjualan Product Gudang Garam Surya 12', 'Aktif', '1', '2021-01-25 14:04:01', '1', '2021-01-25 14:04:01', '2021-01-25 14:04:01');
INSERT INTO `transaction` VALUES ('963', '2021-01-23', 'Sales', 'OU/292/1', '10101', '875000.00', '0.00', '2', '1', '7', '186', 'Penjualan Product Gudang Garam Surya 12', 'Aktif', '1', '2021-01-25 14:04:07', '1', '2021-01-25 14:04:07', '2021-01-25 14:04:07');
INSERT INTO `transaction` VALUES ('964', '2021-01-23', 'Sales', 'OU/292/1', '40101', '0.00', '875000.00', '2', '1', '7', '186', 'Penjualan Product Gudang Garam Surya 12', 'Aktif', '1', '2021-01-25 14:04:07', '1', '2021-01-25 14:04:07', '2021-01-25 14:04:07');
INSERT INTO `transaction` VALUES ('965', '2021-01-23', 'Sales', 'OU/292/1', '50101', '821250.00', '0.00', '2', '1', '7', '186', 'Penjualan Product Gudang Garam Surya 12', 'Aktif', '1', '2021-01-25 14:04:07', '1', '2021-01-25 14:04:07', '2021-01-25 14:04:07');
INSERT INTO `transaction` VALUES ('966', '2021-01-23', 'Sales', 'OU/292/1', '10201', '0.00', '821250.00', '2', '1', '7', '186', 'Penjualan Product Gudang Garam Surya 12', 'Aktif', '1', '2021-01-25 14:04:07', '1', '2021-01-25 14:04:07', '2021-01-25 14:04:07');
INSERT INTO `transaction` VALUES ('967', '2021-01-23', 'Sales', 'OU/293/1', '10101', '595000.00', '0.00', '2', '1', '7', '187', 'Penjualan Product Gudang Garam Surya 12', 'Aktif', '1', '2021-01-25 14:04:12', '1', '2021-01-25 14:04:12', '2021-01-25 14:04:12');
INSERT INTO `transaction` VALUES ('968', '2021-01-23', 'Sales', 'OU/293/1', '40101', '0.00', '595000.00', '2', '1', '7', '187', 'Penjualan Product Gudang Garam Surya 12', 'Aktif', '1', '2021-01-25 14:04:12', '1', '2021-01-25 14:04:12', '2021-01-25 14:04:12');
INSERT INTO `transaction` VALUES ('969', '2021-01-23', 'Sales', 'OU/293/1', '50101', '560150.00', '0.00', '2', '1', '7', '187', 'Penjualan Product Gudang Garam Surya 12', 'Aktif', '1', '2021-01-25 14:04:13', '1', '2021-01-25 14:04:13', '2021-01-25 14:04:13');
INSERT INTO `transaction` VALUES ('970', '2021-01-23', 'Sales', 'OU/293/1', '10201', '0.00', '560150.00', '2', '1', '7', '187', 'Penjualan Product Gudang Garam Surya 12', 'Aktif', '1', '2021-01-25 14:04:13', '1', '2021-01-25 14:04:13', '2021-01-25 14:04:13');
INSERT INTO `transaction` VALUES ('971', '2021-01-23', 'Sales', 'OU/294/1', '10101', '92000.00', '0.00', '2', '2', '7', '188', 'Penjualan Product Gudang Garam Surya 16', 'Aktif', '1', '2021-01-25 14:04:17', '1', '2021-01-25 14:04:17', '2021-01-25 14:04:17');
INSERT INTO `transaction` VALUES ('972', '2021-01-23', 'Sales', 'OU/294/1', '40101', '0.00', '92000.00', '2', '2', '7', '188', 'Penjualan Product Gudang Garam Surya 16', 'Aktif', '1', '2021-01-25 14:04:17', '1', '2021-01-25 14:04:17', '2021-01-25 14:04:17');
INSERT INTO `transaction` VALUES ('973', '2021-01-23', 'Sales', 'OU/294/1', '50101', '88100.00', '0.00', '2', '2', '7', '188', 'Penjualan Product Gudang Garam Surya 16', 'Aktif', '1', '2021-01-25 14:04:17', '1', '2021-01-25 14:04:17', '2021-01-25 14:04:17');
INSERT INTO `transaction` VALUES ('974', '2021-01-23', 'Sales', 'OU/294/1', '10201', '0.00', '88100.00', '2', '2', '7', '188', 'Penjualan Product Gudang Garam Surya 16', 'Aktif', '1', '2021-01-25 14:04:17', '1', '2021-01-25 14:04:17', '2021-01-25 14:04:17');
INSERT INTO `transaction` VALUES ('975', '2021-01-23', 'Sales', 'OU/295/1', '10101', '230000.00', '0.00', '2', '2', '7', '189', 'Penjualan Product Gudang Garam Surya 16', 'Aktif', '1', '2021-01-25 14:04:23', '1', '2021-01-25 14:04:23', '2021-01-25 14:04:23');
INSERT INTO `transaction` VALUES ('976', '2021-01-23', 'Sales', 'OU/295/1', '40101', '0.00', '230000.00', '2', '2', '7', '189', 'Penjualan Product Gudang Garam Surya 16', 'Aktif', '1', '2021-01-25 14:04:23', '1', '2021-01-25 14:04:23', '2021-01-25 14:04:23');
INSERT INTO `transaction` VALUES ('977', '2021-01-23', 'Sales', 'OU/295/1', '50101', '220250.00', '0.00', '2', '2', '7', '189', 'Penjualan Product Gudang Garam Surya 16', 'Aktif', '1', '2021-01-25 14:04:23', '1', '2021-01-25 14:04:23', '2021-01-25 14:04:23');
INSERT INTO `transaction` VALUES ('978', '2021-01-23', 'Sales', 'OU/295/1', '10201', '0.00', '220250.00', '2', '2', '7', '189', 'Penjualan Product Gudang Garam Surya 16', 'Aktif', '1', '2021-01-25 14:04:23', '1', '2021-01-25 14:04:23', '2021-01-25 14:04:23');
INSERT INTO `transaction` VALUES ('979', '2021-01-23', 'Sales', 'OU/296/1', '10101', '107500.00', '0.00', '2', '5', '7', '190', 'Penjualan Product Umild 16', 'Aktif', '1', '2021-01-25 14:04:28', '1', '2021-01-25 14:04:28', '2021-01-25 14:04:28');
INSERT INTO `transaction` VALUES ('980', '2021-01-23', 'Sales', 'OU/296/1', '40101', '0.00', '107500.00', '2', '5', '7', '190', 'Penjualan Product Umild 16', 'Aktif', '1', '2021-01-25 14:04:28', '1', '2021-01-25 14:04:28', '2021-01-25 14:04:28');
INSERT INTO `transaction` VALUES ('981', '2021-01-23', 'Sales', 'OU/296/1', '50101', '101500.00', '0.00', '2', '5', '7', '190', 'Penjualan Product Umild 16', 'Aktif', '1', '2021-01-25 14:04:28', '1', '2021-01-25 14:04:28', '2021-01-25 14:04:28');
INSERT INTO `transaction` VALUES ('982', '2021-01-23', 'Sales', 'OU/296/1', '10201', '0.00', '101500.00', '2', '5', '7', '190', 'Penjualan Product Umild 16', 'Aktif', '1', '2021-01-25 14:04:28', '1', '2021-01-25 14:04:28', '2021-01-25 14:04:28');
INSERT INTO `transaction` VALUES ('983', '2021-01-23', 'Sales', 'OU/297/1', '10101', '58000.00', '0.00', '2', '7', '7', '191', 'Penjualan Product Marlboro Merah', 'Aktif', '1', '2021-01-25 14:04:32', '1', '2021-01-25 14:04:32', '2021-01-25 14:04:32');
INSERT INTO `transaction` VALUES ('984', '2021-01-23', 'Sales', 'OU/297/1', '40101', '0.00', '58000.00', '2', '7', '7', '191', 'Penjualan Product Marlboro Merah', 'Aktif', '1', '2021-01-25 14:04:32', '1', '2021-01-25 14:04:32', '2021-01-25 14:04:32');
INSERT INTO `transaction` VALUES ('985', '2021-01-23', 'Sales', 'OU/297/1', '50101', '55300.00', '0.00', '2', '7', '7', '191', 'Penjualan Product Marlboro Merah', 'Aktif', '1', '2021-01-25 14:04:32', '1', '2021-01-25 14:04:32', '2021-01-25 14:04:32');
INSERT INTO `transaction` VALUES ('986', '2021-01-23', 'Sales', 'OU/297/1', '10201', '0.00', '55300.00', '2', '7', '7', '191', 'Penjualan Product Marlboro Merah', 'Aktif', '1', '2021-01-25 14:04:32', '1', '2021-01-25 14:04:32', '2021-01-25 14:04:32');
INSERT INTO `transaction` VALUES ('987', '2021-01-25', 'Procurement', 'IN/298/1', '10201', '2471250.00', '0.00', '2', '1', '1', '109', 'Pembelian Product Gudang Garam Surya 12', 'Aktif', '1', '2021-01-25 14:54:37', '1', '2021-01-25 14:54:37', '2021-01-25 14:54:37');
INSERT INTO `transaction` VALUES ('988', '2021-01-25', 'Procurement', 'IN/298/1', '10101', '0.00', '2471250.00', '2', '1', '1', '109', 'Pembelian Product Gudang Garam Surya 12', 'Aktif', '1', '2021-01-25 14:54:37', '1', '2021-01-25 14:54:37', '2021-01-25 14:54:37');
INSERT INTO `transaction` VALUES ('989', '2021-01-25', 'Procurement', 'IN/299/1', '10201', '164750.00', '0.00', '1', '1', '1', '110', 'Pembelian Product Gudang Garam Surya 12', 'Aktif', '1', '2021-01-25 14:54:44', '1', '2021-01-25 14:54:44', '2021-01-25 14:54:44');
INSERT INTO `transaction` VALUES ('990', '2021-01-25', 'Procurement', 'IN/299/1', '10101', '0.00', '164750.00', '1', '1', '1', '110', 'Pembelian Product Gudang Garam Surya 12', 'Aktif', '1', '2021-01-25 14:54:44', '1', '2021-01-25 14:54:44', '2021-01-25 14:54:44');
INSERT INTO `transaction` VALUES ('991', '2021-01-21', 'Sales', 'OU/300/1', '10101', '141000.00', '0.00', '1', '2', '7', '192', 'Penjualan Product Gudang Garam Surya 16', 'Aktif', '1', '2021-01-25 15:05:08', '1', '2021-01-25 15:05:08', '2021-01-25 15:05:08');
INSERT INTO `transaction` VALUES ('992', '2021-01-21', 'Sales', 'OU/300/1', '40101', '0.00', '141000.00', '1', '2', '7', '192', 'Penjualan Product Gudang Garam Surya 16', 'Aktif', '1', '2021-01-25 15:05:08', '1', '2021-01-25 15:05:08', '2021-01-25 15:05:08');
INSERT INTO `transaction` VALUES ('993', '2021-01-21', 'Sales', 'OU/300/1', '50101', '132150.00', '0.00', '1', '2', '7', '192', 'Penjualan Product Gudang Garam Surya 16', 'Aktif', '1', '2021-01-25 15:05:08', '1', '2021-01-25 15:05:08', '2021-01-25 15:05:08');
INSERT INTO `transaction` VALUES ('994', '2021-01-21', 'Sales', 'OU/300/1', '10201', '0.00', '132150.00', '1', '2', '7', '192', 'Penjualan Product Gudang Garam Surya 16', 'Aktif', '1', '2021-01-25 15:05:08', '1', '2021-01-25 15:05:08', '2021-01-25 15:05:08');
INSERT INTO `transaction` VALUES ('995', '2021-01-21', 'Sales', 'OU/301/1', '10101', '140000.00', '0.00', '1', '1', '7', '193', 'Penjualan Product Gudang Garam Surya 12', 'Aktif', '1', '2021-01-25 15:05:14', '1', '2021-01-25 15:05:14', '2021-01-25 15:05:14');
INSERT INTO `transaction` VALUES ('996', '2021-01-21', 'Sales', 'OU/301/1', '40101', '0.00', '140000.00', '1', '1', '7', '193', 'Penjualan Product Gudang Garam Surya 12', 'Aktif', '1', '2021-01-25 15:05:14', '1', '2021-01-25 15:05:14', '2021-01-25 15:05:14');
INSERT INTO `transaction` VALUES ('997', '2021-01-21', 'Sales', 'OU/301/1', '50101', '131400.00', '0.00', '1', '1', '7', '193', 'Penjualan Product Gudang Garam Surya 12', 'Aktif', '1', '2021-01-25 15:05:14', '1', '2021-01-25 15:05:14', '2021-01-25 15:05:14');
INSERT INTO `transaction` VALUES ('998', '2021-01-21', 'Sales', 'OU/301/1', '10201', '0.00', '131400.00', '1', '1', '7', '193', 'Penjualan Product Gudang Garam Surya 12', 'Aktif', '1', '2021-01-25 15:05:14', '1', '2021-01-25 15:05:14', '2021-01-25 15:05:14');
INSERT INTO `transaction` VALUES ('999', '2021-01-21', 'Sales', 'OU/302/1', '10101', '117500.00', '0.00', '1', '3', '7', '194', 'Penjualan Product Sampoerna Mild 16', 'Aktif', '1', '2021-01-25 15:05:19', '1', '2021-01-25 15:05:19', '2021-01-25 15:05:19');
INSERT INTO `transaction` VALUES ('1000', '2021-01-21', 'Sales', 'OU/302/1', '40101', '0.00', '117500.00', '1', '3', '7', '194', 'Penjualan Product Sampoerna Mild 16', 'Aktif', '1', '2021-01-25 15:05:19', '1', '2021-01-25 15:05:19', '2021-01-25 15:05:19');
INSERT INTO `transaction` VALUES ('1001', '2021-01-21', 'Sales', 'OU/302/1', '50101', '110000.00', '0.00', '1', '3', '7', '194', 'Penjualan Product Sampoerna Mild 16', 'Aktif', '1', '2021-01-25 15:05:19', '1', '2021-01-25 15:05:19', '2021-01-25 15:05:19');
INSERT INTO `transaction` VALUES ('1002', '2021-01-21', 'Sales', 'OU/302/1', '10201', '0.00', '110000.00', '1', '3', '7', '194', 'Penjualan Product Sampoerna Mild 16', 'Aktif', '1', '2021-01-25 15:05:19', '1', '2021-01-25 15:05:19', '2021-01-25 15:05:19');
INSERT INTO `transaction` VALUES ('1003', '2021-01-21', 'Sales', 'OU/303/1', '10101', '29000.00', '0.00', '1', '7', '7', '195', 'Penjualan Product Marlboro Merah', 'Aktif', '1', '2021-01-25 15:05:24', '1', '2021-01-25 15:05:24', '2021-01-25 15:05:24');
INSERT INTO `transaction` VALUES ('1004', '2021-01-21', 'Sales', 'OU/303/1', '40101', '0.00', '29000.00', '1', '7', '7', '195', 'Penjualan Product Marlboro Merah', 'Aktif', '1', '2021-01-25 15:05:24', '1', '2021-01-25 15:05:24', '2021-01-25 15:05:24');
INSERT INTO `transaction` VALUES ('1005', '2021-01-21', 'Sales', 'OU/303/1', '50101', '27650.00', '0.00', '1', '7', '7', '195', 'Penjualan Product Marlboro Merah', 'Aktif', '1', '2021-01-25 15:05:24', '1', '2021-01-25 15:05:24', '2021-01-25 15:05:24');
INSERT INTO `transaction` VALUES ('1006', '2021-01-21', 'Sales', 'OU/303/1', '10201', '0.00', '27650.00', '1', '7', '7', '195', 'Penjualan Product Marlboro Merah', 'Aktif', '1', '2021-01-25 15:05:24', '1', '2021-01-25 15:05:24', '2021-01-25 15:05:24');
INSERT INTO `transaction` VALUES ('1007', '2021-01-21', 'Sales', 'OU/304/1', '10101', '28500.00', '0.00', '1', '9', '7', '196', 'Penjualan Product Marlboro Hitam', 'Aktif', '1', '2021-01-25 15:05:29', '1', '2021-01-25 15:05:29', '2021-01-25 15:05:29');
INSERT INTO `transaction` VALUES ('1008', '2021-01-21', 'Sales', 'OU/304/1', '40101', '0.00', '28500.00', '1', '9', '7', '196', 'Penjualan Product Marlboro Hitam', 'Aktif', '1', '2021-01-25 15:05:29', '1', '2021-01-25 15:05:29', '2021-01-25 15:05:29');
INSERT INTO `transaction` VALUES ('1009', '2021-01-21', 'Sales', 'OU/304/1', '50101', '27550.00', '0.00', '1', '9', '7', '196', 'Penjualan Product Marlboro Hitam', 'Aktif', '1', '2021-01-25 15:05:29', '1', '2021-01-25 15:05:29', '2021-01-25 15:05:29');
INSERT INTO `transaction` VALUES ('1010', '2021-01-21', 'Sales', 'OU/304/1', '10201', '0.00', '27550.00', '1', '9', '7', '196', 'Penjualan Product Marlboro Hitam', 'Aktif', '1', '2021-01-25 15:05:29', '1', '2021-01-25 15:05:29', '2021-01-25 15:05:29');
INSERT INTO `transaction` VALUES ('1011', '2021-01-21', 'Sales', 'OU/305/1', '10101', '35000.00', '0.00', '1', '10', '7', '197', 'Penjualan Product Gudang Garam International', 'Aktif', '1', '2021-01-25 15:05:34', '1', '2021-01-25 15:05:34', '2021-01-25 15:05:34');
INSERT INTO `transaction` VALUES ('1012', '2021-01-21', 'Sales', 'OU/305/1', '40101', '0.00', '35000.00', '1', '10', '7', '197', 'Penjualan Product Gudang Garam International', 'Aktif', '1', '2021-01-25 15:05:34', '1', '2021-01-25 15:05:34', '2021-01-25 15:05:34');
INSERT INTO `transaction` VALUES ('1013', '2021-01-21', 'Sales', 'OU/305/1', '50101', '33100.00', '0.00', '1', '10', '7', '197', 'Penjualan Product Gudang Garam International', 'Aktif', '1', '2021-01-25 15:05:34', '1', '2021-01-25 15:05:34', '2021-01-25 15:05:34');
INSERT INTO `transaction` VALUES ('1014', '2021-01-21', 'Sales', 'OU/305/1', '10201', '0.00', '33100.00', '1', '10', '7', '197', 'Penjualan Product Gudang Garam International', 'Aktif', '1', '2021-01-25 15:05:34', '1', '2021-01-25 15:05:34', '2021-01-25 15:05:34');
INSERT INTO `transaction` VALUES ('1015', '2021-01-21', 'Sales', 'OU/306/1', '10101', '16000.00', '0.00', '1', '16', '7', '198', 'Penjualan Product Geo Mild', 'Aktif', '1', '2021-01-25 15:05:40', '1', '2021-01-25 15:05:40', '2021-01-25 15:05:40');
INSERT INTO `transaction` VALUES ('1016', '2021-01-21', 'Sales', 'OU/306/1', '40101', '0.00', '16000.00', '1', '16', '7', '198', 'Penjualan Product Geo Mild', 'Aktif', '1', '2021-01-25 15:05:40', '1', '2021-01-25 15:05:40', '2021-01-25 15:05:40');
INSERT INTO `transaction` VALUES ('1017', '2021-01-21', 'Sales', 'OU/306/1', '50101', '14725.00', '0.00', '1', '16', '7', '198', 'Penjualan Product Geo Mild', 'Aktif', '1', '2021-01-25 15:05:40', '1', '2021-01-25 15:05:40', '2021-01-25 15:05:40');
INSERT INTO `transaction` VALUES ('1018', '2021-01-21', 'Sales', 'OU/306/1', '10201', '0.00', '14725.00', '1', '16', '7', '198', 'Penjualan Product Geo Mild', 'Aktif', '1', '2021-01-25 15:05:40', '1', '2021-01-25 15:05:40', '2021-01-25 15:05:40');
INSERT INTO `transaction` VALUES ('1019', '2021-01-21', 'Sales', 'OU/307/1', '10101', '4000.00', '0.00', '1', '20', '7', '199', 'Penjualan Product Korek Api', 'Aktif', '1', '2021-01-25 15:05:45', '1', '2021-01-25 15:05:45', '2021-01-25 15:05:45');
INSERT INTO `transaction` VALUES ('1020', '2021-01-21', 'Sales', 'OU/307/1', '40104', '0.00', '4000.00', '1', '20', '7', '199', 'Penjualan Product Korek Api', 'Aktif', '1', '2021-01-25 15:05:45', '1', '2021-01-25 15:05:45', '2021-01-25 15:05:45');
INSERT INTO `transaction` VALUES ('1021', '2021-01-21', 'Sales', 'OU/307/1', '50104', '3200.00', '0.00', '1', '20', '7', '199', 'Penjualan Product Korek Api', 'Aktif', '1', '2021-01-25 15:05:45', '1', '2021-01-25 15:05:45', '2021-01-25 15:05:45');
INSERT INTO `transaction` VALUES ('1022', '2021-01-21', 'Sales', 'OU/307/1', '10204', '0.00', '3200.00', '1', '20', '7', '199', 'Penjualan Product Korek Api', 'Aktif', '1', '2021-01-25 15:05:45', '1', '2021-01-25 15:05:45', '2021-01-25 15:05:45');
INSERT INTO `transaction` VALUES ('1023', '2021-01-25', 'Sales', 'OU/308/1', '10101', '70500.00', '0.00', '3', '2', '7', '200', 'Penjualan Product Gudang Garam Surya 16', 'Aktif', '1', '2021-01-25 16:05:36', '1', '2021-01-25 16:05:36', '2021-01-25 16:05:36');
INSERT INTO `transaction` VALUES ('1024', '2021-01-25', 'Sales', 'OU/308/1', '40101', '0.00', '70500.00', '3', '2', '7', '200', 'Penjualan Product Gudang Garam Surya 16', 'Aktif', '1', '2021-01-25 16:05:36', '1', '2021-01-25 16:05:36', '2021-01-25 16:05:36');
INSERT INTO `transaction` VALUES ('1025', '2021-01-25', 'Sales', 'OU/308/1', '50101', '66075.00', '0.00', '3', '2', '7', '200', 'Penjualan Product Gudang Garam Surya 16', 'Aktif', '1', '2021-01-25 16:05:36', '1', '2021-01-25 16:05:36', '2021-01-25 16:05:36');
INSERT INTO `transaction` VALUES ('1026', '2021-01-25', 'Sales', 'OU/308/1', '10201', '0.00', '66075.00', '3', '2', '7', '200', 'Penjualan Product Gudang Garam Surya 16', 'Aktif', '1', '2021-01-25 16:05:36', '1', '2021-01-25 16:05:36', '2021-01-25 16:05:36');
INSERT INTO `transaction` VALUES ('1027', '2021-01-25', 'Sales', 'OU/309/1', '10101', '23500.00', '0.00', '3', '2', '7', '201', 'Penjualan Product Gudang Garam Surya 16', 'Aktif', '1', '2021-01-25 16:05:40', '1', '2021-01-25 16:05:40', '2021-01-25 16:05:40');
INSERT INTO `transaction` VALUES ('1028', '2021-01-25', 'Sales', 'OU/309/1', '40101', '0.00', '23500.00', '3', '2', '7', '201', 'Penjualan Product Gudang Garam Surya 16', 'Aktif', '1', '2021-01-25 16:05:40', '1', '2021-01-25 16:05:40', '2021-01-25 16:05:40');
INSERT INTO `transaction` VALUES ('1029', '2021-01-25', 'Sales', 'OU/309/1', '50101', '22025.00', '0.00', '3', '2', '7', '201', 'Penjualan Product Gudang Garam Surya 16', 'Aktif', '1', '2021-01-25 16:05:40', '1', '2021-01-25 16:05:40', '2021-01-25 16:05:40');
INSERT INTO `transaction` VALUES ('1030', '2021-01-25', 'Sales', 'OU/309/1', '10201', '0.00', '22025.00', '3', '2', '7', '201', 'Penjualan Product Gudang Garam Surya 16', 'Aktif', '1', '2021-01-25 16:05:40', '1', '2021-01-25 16:05:40', '2021-01-25 16:05:40');
INSERT INTO `transaction` VALUES ('1031', '2021-01-25', 'Sales', 'OU/310/1', '10101', '52500.00', '0.00', '3', '1', '7', '202', 'Penjualan Product Gudang Garam Surya 12', 'Aktif', '1', '2021-01-25 16:05:44', '1', '2021-01-25 16:05:44', '2021-01-25 16:05:44');
INSERT INTO `transaction` VALUES ('1032', '2021-01-25', 'Sales', 'OU/310/1', '40101', '0.00', '52500.00', '3', '1', '7', '202', 'Penjualan Product Gudang Garam Surya 12', 'Aktif', '1', '2021-01-25 16:05:44', '1', '2021-01-25 16:05:44', '2021-01-25 16:05:44');
INSERT INTO `transaction` VALUES ('1033', '2021-01-25', 'Sales', 'OU/310/1', '50101', '49350.00', '0.00', '3', '1', '7', '202', 'Penjualan Product Gudang Garam Surya 12', 'Aktif', '1', '2021-01-25 16:05:44', '1', '2021-01-25 16:05:44', '2021-01-25 16:05:44');
INSERT INTO `transaction` VALUES ('1034', '2021-01-25', 'Sales', 'OU/310/1', '10201', '0.00', '49350.00', '3', '1', '7', '202', 'Penjualan Product Gudang Garam Surya 12', 'Aktif', '1', '2021-01-25 16:05:44', '1', '2021-01-25 16:05:44', '2021-01-25 16:05:44');
INSERT INTO `transaction` VALUES ('1035', '2021-01-25', 'Sales', 'OU/311/1', '10101', '87500.00', '0.00', '3', '1', '7', '203', 'Penjualan Product Gudang Garam Surya 12', 'Aktif', '1', '2021-01-25 16:05:50', '1', '2021-01-25 16:05:50', '2021-01-25 16:05:50');
INSERT INTO `transaction` VALUES ('1036', '2021-01-25', 'Sales', 'OU/311/1', '40101', '0.00', '87500.00', '3', '1', '7', '203', 'Penjualan Product Gudang Garam Surya 12', 'Aktif', '1', '2021-01-25 16:05:50', '1', '2021-01-25 16:05:50', '2021-01-25 16:05:50');
INSERT INTO `transaction` VALUES ('1037', '2021-01-25', 'Sales', 'OU/311/1', '50101', '82250.00', '0.00', '3', '1', '7', '203', 'Penjualan Product Gudang Garam Surya 12', 'Aktif', '1', '2021-01-25 16:05:50', '1', '2021-01-25 16:05:50', '2021-01-25 16:05:50');
INSERT INTO `transaction` VALUES ('1038', '2021-01-25', 'Sales', 'OU/311/1', '10201', '0.00', '82250.00', '3', '1', '7', '203', 'Penjualan Product Gudang Garam Surya 12', 'Aktif', '1', '2021-01-25 16:05:50', '1', '2021-01-25 16:05:50', '2021-01-25 16:05:50');
INSERT INTO `transaction` VALUES ('1039', '2021-01-25', 'Sales', 'OU/312/1', '10101', '117500.00', '0.00', '3', '3', '7', '204', 'Penjualan Product Sampoerna Mild 16', 'Aktif', '1', '2021-01-25 16:05:56', '1', '2021-01-25 16:05:56', '2021-01-25 16:05:56');
INSERT INTO `transaction` VALUES ('1040', '2021-01-25', 'Sales', 'OU/312/1', '40101', '0.00', '117500.00', '3', '3', '7', '204', 'Penjualan Product Sampoerna Mild 16', 'Aktif', '1', '2021-01-25 16:05:56', '1', '2021-01-25 16:05:56', '2021-01-25 16:05:56');
INSERT INTO `transaction` VALUES ('1041', '2021-01-25', 'Sales', 'OU/312/1', '50101', '110000.00', '0.00', '3', '3', '7', '204', 'Penjualan Product Sampoerna Mild 16', 'Aktif', '1', '2021-01-25 16:05:56', '1', '2021-01-25 16:05:56', '2021-01-25 16:05:56');
INSERT INTO `transaction` VALUES ('1042', '2021-01-25', 'Sales', 'OU/312/1', '10201', '0.00', '110000.00', '3', '3', '7', '204', 'Penjualan Product Sampoerna Mild 16', 'Aktif', '1', '2021-01-25 16:05:56', '1', '2021-01-25 16:05:56', '2021-01-25 16:05:56');
INSERT INTO `transaction` VALUES ('1043', '2021-01-25', 'Sales', 'OU/313/1', '10101', '52500.00', '0.00', '3', '4', '7', '205', 'Penjualan Product Sampoerna Mild 12', 'Aktif', '1', '2021-01-25 16:06:02', '1', '2021-01-25 16:06:02', '2021-01-25 16:06:02');
INSERT INTO `transaction` VALUES ('1044', '2021-01-25', 'Sales', 'OU/313/1', '40101', '0.00', '52500.00', '3', '4', '7', '205', 'Penjualan Product Sampoerna Mild 12', 'Aktif', '1', '2021-01-25 16:06:02', '1', '2021-01-25 16:06:02', '2021-01-25 16:06:02');
INSERT INTO `transaction` VALUES ('1045', '2021-01-25', 'Sales', 'OU/313/1', '50101', '48300.00', '0.00', '3', '4', '7', '205', 'Penjualan Product Sampoerna Mild 12', 'Aktif', '1', '2021-01-25 16:06:02', '1', '2021-01-25 16:06:02', '2021-01-25 16:06:02');
INSERT INTO `transaction` VALUES ('1046', '2021-01-25', 'Sales', 'OU/313/1', '10201', '0.00', '48300.00', '3', '4', '7', '205', 'Penjualan Product Sampoerna Mild 12', 'Aktif', '1', '2021-01-25 16:06:02', '1', '2021-01-25 16:06:02', '2021-01-25 16:06:02');
INSERT INTO `transaction` VALUES ('1047', '2021-01-25', 'Sales', 'OU/314/1', '10101', '29000.00', '0.00', '3', '7', '7', '206', 'Penjualan Product Marlboro Merah', 'Aktif', '1', '2021-01-25 16:06:08', '1', '2021-01-25 16:06:08', '2021-01-25 16:06:08');
INSERT INTO `transaction` VALUES ('1048', '2021-01-25', 'Sales', 'OU/314/1', '40101', '0.00', '29000.00', '3', '7', '7', '206', 'Penjualan Product Marlboro Merah', 'Aktif', '1', '2021-01-25 16:06:08', '1', '2021-01-25 16:06:08', '2021-01-25 16:06:08');
INSERT INTO `transaction` VALUES ('1049', '2021-01-25', 'Sales', 'OU/314/1', '50101', '27575.00', '0.00', '3', '7', '7', '206', 'Penjualan Product Marlboro Merah', 'Aktif', '1', '2021-01-25 16:06:08', '1', '2021-01-25 16:06:08', '2021-01-25 16:06:08');
INSERT INTO `transaction` VALUES ('1050', '2021-01-25', 'Sales', 'OU/314/1', '10201', '0.00', '27575.00', '3', '7', '7', '206', 'Penjualan Product Marlboro Merah', 'Aktif', '1', '2021-01-25 16:06:08', '1', '2021-01-25 16:06:08', '2021-01-25 16:06:08');
INSERT INTO `transaction` VALUES ('1051', '2021-01-25', 'Sales', 'OU/315/1', '10101', '29000.00', '0.00', '3', '7', '7', '207', 'Penjualan Product Marlboro Merah', 'Aktif', '1', '2021-01-25 16:06:13', '1', '2021-01-25 16:06:13', '2021-01-25 16:06:13');
INSERT INTO `transaction` VALUES ('1052', '2021-01-25', 'Sales', 'OU/315/1', '40101', '0.00', '29000.00', '3', '7', '7', '207', 'Penjualan Product Marlboro Merah', 'Aktif', '1', '2021-01-25 16:06:13', '1', '2021-01-25 16:06:13', '2021-01-25 16:06:13');
INSERT INTO `transaction` VALUES ('1053', '2021-01-25', 'Sales', 'OU/315/1', '50101', '27575.00', '0.00', '3', '7', '7', '207', 'Penjualan Product Marlboro Merah', 'Aktif', '1', '2021-01-25 16:06:13', '1', '2021-01-25 16:06:13', '2021-01-25 16:06:13');
INSERT INTO `transaction` VALUES ('1054', '2021-01-25', 'Sales', 'OU/315/1', '10201', '0.00', '27575.00', '3', '7', '7', '207', 'Penjualan Product Marlboro Merah', 'Aktif', '1', '2021-01-25 16:06:13', '1', '2021-01-25 16:06:13', '2021-01-25 16:06:13');
INSERT INTO `transaction` VALUES ('1055', '2021-01-25', 'Sales', 'OU/316/1', '10101', '17500.00', '0.00', '3', '10', '7', '208', 'Penjualan Product Gudang Garam International', 'Aktif', '1', '2021-01-25 16:06:18', '1', '2021-01-25 16:06:18', '2021-01-25 16:06:18');
INSERT INTO `transaction` VALUES ('1056', '2021-01-25', 'Sales', 'OU/316/1', '40101', '0.00', '17500.00', '3', '10', '7', '208', 'Penjualan Product Gudang Garam International', 'Aktif', '1', '2021-01-25 16:06:18', '1', '2021-01-25 16:06:18', '2021-01-25 16:06:18');
INSERT INTO `transaction` VALUES ('1057', '2021-01-25', 'Sales', 'OU/316/1', '50101', '16575.00', '0.00', '3', '10', '7', '208', 'Penjualan Product Gudang Garam International', 'Aktif', '1', '2021-01-25 16:06:19', '1', '2021-01-25 16:06:19', '2021-01-25 16:06:19');
INSERT INTO `transaction` VALUES ('1058', '2021-01-25', 'Sales', 'OU/316/1', '10201', '0.00', '16575.00', '3', '10', '7', '208', 'Penjualan Product Gudang Garam International', 'Aktif', '1', '2021-01-25 16:06:19', '1', '2021-01-25 16:06:19', '2021-01-25 16:06:19');
INSERT INTO `transaction` VALUES ('1059', '2021-01-25', 'Sales', 'OU/317/1', '10101', '24500.00', '0.00', '3', '12', '7', '209', 'Penjualan Product LA Bold', 'Aktif', '1', '2021-01-25 16:06:24', '1', '2021-01-25 16:06:24', '2021-01-25 16:06:24');
INSERT INTO `transaction` VALUES ('1060', '2021-01-25', 'Sales', 'OU/317/1', '40101', '0.00', '24500.00', '3', '12', '7', '209', 'Penjualan Product LA Bold', 'Aktif', '1', '2021-01-25 16:06:24', '1', '2021-01-25 16:06:24', '2021-01-25 16:06:24');
INSERT INTO `transaction` VALUES ('1061', '2021-01-25', 'Sales', 'OU/317/1', '50101', '23625.00', '0.00', '3', '12', '7', '209', 'Penjualan Product LA Bold', 'Aktif', '1', '2021-01-25 16:06:24', '1', '2021-01-25 16:06:24', '2021-01-25 16:06:24');
INSERT INTO `transaction` VALUES ('1062', '2021-01-25', 'Sales', 'OU/317/1', '10201', '0.00', '23625.00', '3', '12', '7', '209', 'Penjualan Product LA Bold', 'Aktif', '1', '2021-01-25 16:06:24', '1', '2021-01-25 16:06:24', '2021-01-25 16:06:24');
INSERT INTO `transaction` VALUES ('1063', '2021-01-25', 'Sales', 'OU/318/1', '10101', '15000.00', '0.00', '3', '17', '7', '210', 'Penjualan Product GL Mild', 'Aktif', '1', '2021-01-25 16:06:30', '1', '2021-01-25 16:06:30', '2021-01-25 16:06:30');
INSERT INTO `transaction` VALUES ('1064', '2021-01-25', 'Sales', 'OU/318/1', '40101', '0.00', '15000.00', '3', '17', '7', '210', 'Penjualan Product GL Mild', 'Aktif', '1', '2021-01-25 16:06:30', '1', '2021-01-25 16:06:30', '2021-01-25 16:06:30');
INSERT INTO `transaction` VALUES ('1065', '2021-01-25', 'Sales', 'OU/318/1', '50101', '14000.00', '0.00', '3', '17', '7', '210', 'Penjualan Product GL Mild', 'Aktif', '1', '2021-01-25 16:06:30', '1', '2021-01-25 16:06:30', '2021-01-25 16:06:30');
INSERT INTO `transaction` VALUES ('1066', '2021-01-25', 'Sales', 'OU/318/1', '10201', '0.00', '14000.00', '3', '17', '7', '210', 'Penjualan Product GL Mild', 'Aktif', '1', '2021-01-25 16:06:30', '1', '2021-01-25 16:06:30', '2021-01-25 16:06:30');
INSERT INTO `transaction` VALUES ('1067', '2021-01-25', 'Sales', 'OU/319/1', '10101', '12500.00', '0.00', '3', '24', '7', '211', 'Penjualan Product Aga Kretek', 'Aktif', '1', '2021-01-25 16:06:34', '1', '2021-01-25 16:06:34', '2021-01-25 16:06:34');
INSERT INTO `transaction` VALUES ('1068', '2021-01-25', 'Sales', 'OU/319/1', '40101', '0.00', '12500.00', '3', '24', '7', '211', 'Penjualan Product Aga Kretek', 'Aktif', '1', '2021-01-25 16:06:34', '1', '2021-01-25 16:06:34', '2021-01-25 16:06:34');
INSERT INTO `transaction` VALUES ('1069', '2021-01-25', 'Sales', 'OU/319/1', '50101', '11400.00', '0.00', '3', '24', '7', '211', 'Penjualan Product Aga Kretek', 'Aktif', '1', '2021-01-25 16:06:34', '1', '2021-01-25 16:06:34', '2021-01-25 16:06:34');
INSERT INTO `transaction` VALUES ('1070', '2021-01-25', 'Sales', 'OU/319/1', '10201', '0.00', '11400.00', '3', '24', '7', '211', 'Penjualan Product Aga Kretek', 'Aktif', '1', '2021-01-25 16:06:34', '1', '2021-01-25 16:06:34', '2021-01-25 16:06:34');
INSERT INTO `transaction` VALUES ('1071', '2021-01-25', 'Sales', 'OU/320/1', '10101', '35000.00', '0.00', '3', '25', '7', '212', 'Penjualan Product Dji Sam Soe 12', 'Aktif', '1', '2021-01-25 16:06:40', '1', '2021-01-25 16:06:40', '2021-01-25 16:06:40');
INSERT INTO `transaction` VALUES ('1072', '2021-01-25', 'Sales', 'OU/320/1', '40101', '0.00', '35000.00', '3', '25', '7', '212', 'Penjualan Product Dji Sam Soe 12', 'Aktif', '1', '2021-01-25 16:06:40', '1', '2021-01-25 16:06:40', '2021-01-25 16:06:40');
INSERT INTO `transaction` VALUES ('1073', '2021-01-25', 'Sales', 'OU/320/1', '50101', '31600.00', '0.00', '3', '25', '7', '212', 'Penjualan Product Dji Sam Soe 12', 'Aktif', '1', '2021-01-25 16:06:40', '1', '2021-01-25 16:06:40', '2021-01-25 16:06:40');
INSERT INTO `transaction` VALUES ('1074', '2021-01-25', 'Sales', 'OU/320/1', '10201', '0.00', '31600.00', '3', '25', '7', '212', 'Penjualan Product Dji Sam Soe 12', 'Aktif', '1', '2021-01-25 16:06:40', '1', '2021-01-25 16:06:40', '2021-01-25 16:06:40');
INSERT INTO `transaction` VALUES ('1075', '2021-01-25', 'Sales', 'OU/321/1', '10101', '1500.00', '0.00', '3', '19', '7', '213', 'Penjualan Product Gudang Garam Surya (Kaleng)', 'Aktif', '1', '2021-01-25 16:06:45', '1', '2021-01-25 16:06:45', '2021-01-25 16:06:45');
INSERT INTO `transaction` VALUES ('1076', '2021-01-25', 'Sales', 'OU/321/1', '40101', '0.00', '1500.00', '3', '19', '7', '213', 'Penjualan Product Gudang Garam Surya (Kaleng)', 'Aktif', '1', '2021-01-25 16:06:45', '1', '2021-01-25 16:06:45', '2021-01-25 16:06:45');
INSERT INTO `transaction` VALUES ('1077', '2021-01-25', 'Sales', 'OU/321/1', '50101', '1330.00', '0.00', '3', '19', '7', '213', 'Penjualan Product Gudang Garam Surya (Kaleng)', 'Aktif', '1', '2021-01-25 16:06:45', '1', '2021-01-25 16:06:45', '2021-01-25 16:06:45');
INSERT INTO `transaction` VALUES ('1078', '2021-01-25', 'Sales', 'OU/321/1', '10201', '0.00', '1330.00', '3', '19', '7', '213', 'Penjualan Product Gudang Garam Surya (Kaleng)', 'Aktif', '1', '2021-01-25 16:06:45', '1', '2021-01-25 16:06:45', '2021-01-25 16:06:45');
INSERT INTO `transaction` VALUES ('1079', '2021-01-25', 'Sales', 'OU/322/1', '10101', '12000.00', '0.00', '3', '20', '7', '214', 'Penjualan Product Korek Api', 'Aktif', '1', '2021-01-25 16:06:50', '1', '2021-01-25 16:06:50', '2021-01-25 16:06:50');
INSERT INTO `transaction` VALUES ('1080', '2021-01-25', 'Sales', 'OU/322/1', '40104', '0.00', '12000.00', '3', '20', '7', '214', 'Penjualan Product Korek Api', 'Aktif', '1', '2021-01-25 16:06:50', '1', '2021-01-25 16:06:50', '2021-01-25 16:06:50');
INSERT INTO `transaction` VALUES ('1081', '2021-01-25', 'Sales', 'OU/322/1', '50104', '9600.00', '0.00', '3', '20', '7', '214', 'Penjualan Product Korek Api', 'Aktif', '1', '2021-01-25 16:06:50', '1', '2021-01-25 16:06:50', '2021-01-25 16:06:50');
INSERT INTO `transaction` VALUES ('1082', '2021-01-25', 'Sales', 'OU/322/1', '10204', '0.00', '9600.00', '3', '20', '7', '214', 'Penjualan Product Korek Api', 'Aktif', '1', '2021-01-25 16:06:50', '1', '2021-01-25 16:06:50', '2021-01-25 16:06:50');
INSERT INTO `transaction` VALUES ('1083', '2021-01-25', 'Sales', 'OU/323/1', '10101', '40000.00', '0.00', '4', '33', '7', '215', 'Penjualan Product Body Trimer', 'Aktif', '1', '2021-01-25 16:17:05', '1', '2021-01-25 16:17:05', '2021-01-25 16:17:05');
INSERT INTO `transaction` VALUES ('1084', '2021-01-25', 'Sales', 'OU/323/1', '40105', '0.00', '40000.00', '4', '33', '7', '215', 'Penjualan Product Body Trimer', 'Aktif', '1', '2021-01-25 16:17:05', '1', '2021-01-25 16:17:05', '2021-01-25 16:17:05');
INSERT INTO `transaction` VALUES ('1085', '2021-01-25', 'Sales', 'OU/323/1', '50105', '30000.00', '0.00', '4', '33', '7', '215', 'Penjualan Product Body Trimer', 'Aktif', '1', '2021-01-25 16:17:05', '1', '2021-01-25 16:17:05', '2021-01-25 16:17:05');
INSERT INTO `transaction` VALUES ('1086', '2021-01-25', 'Sales', 'OU/323/1', '10205', '0.00', '30000.00', '4', '33', '7', '215', 'Penjualan Product Body Trimer', 'Aktif', '1', '2021-01-25 16:17:05', '1', '2021-01-25 16:17:05', '2021-01-25 16:17:05');
INSERT INTO `transaction` VALUES ('1087', '2021-01-27', 'Procurement', 'IN/324/1', '10205', '13000.00', '0.00', '4', '41', '7', '111', 'Pembelian Product Kurir JnT', 'Aktif', '1', '2021-01-27 15:20:05', '1', '2021-01-27 15:20:05', '2021-01-27 15:20:05');
INSERT INTO `transaction` VALUES ('1088', '2021-01-27', 'Procurement', 'IN/324/1', '10101', '0.00', '13000.00', '4', '41', '7', '111', 'Pembelian Product Kurir JnT', 'Aktif', '1', '2021-01-27 15:20:05', '1', '2021-01-27 15:20:05', '2021-01-27 15:20:05');
INSERT INTO `transaction` VALUES ('1089', '2021-01-27', 'Sales', 'OU/325/1', '10101', '280000.00', '0.00', '2', '1', '7', '216', 'Penjualan Product Gudang Garam Surya 12', 'Aktif', '1', '2021-01-27 15:20:52', '1', '2021-01-27 15:20:52', '2021-01-27 15:20:52');
INSERT INTO `transaction` VALUES ('1090', '2021-01-27', 'Sales', 'OU/325/1', '40101', '0.00', '280000.00', '2', '1', '7', '216', 'Penjualan Product Gudang Garam Surya 12', 'Aktif', '1', '2021-01-27 15:20:52', '1', '2021-01-27 15:20:52', '2021-01-27 15:20:52');
INSERT INTO `transaction` VALUES ('1091', '2021-01-27', 'Sales', 'OU/325/1', '50101', '263600.00', '0.00', '2', '1', '7', '216', 'Penjualan Product Gudang Garam Surya 12', 'Aktif', '1', '2021-01-27 15:20:52', '1', '2021-01-27 15:20:52', '2021-01-27 15:20:52');
INSERT INTO `transaction` VALUES ('1092', '2021-01-27', 'Sales', 'OU/325/1', '10201', '0.00', '263600.00', '2', '1', '7', '216', 'Penjualan Product Gudang Garam Surya 12', 'Aktif', '1', '2021-01-27 15:20:52', '1', '2021-01-27 15:20:52', '2021-01-27 15:20:52');
INSERT INTO `transaction` VALUES ('1093', '2021-01-27', 'Sales', 'OU/326/1', '10101', '45000.00', '0.00', '4', '35', '7', '217', 'Penjualan Product Basket Vegetable', 'Aktif', '1', '2021-01-27 15:20:57', '1', '2021-01-27 15:20:57', '2021-01-27 15:20:57');
INSERT INTO `transaction` VALUES ('1094', '2021-01-27', 'Sales', 'OU/326/1', '40105', '0.00', '45000.00', '4', '35', '7', '217', 'Penjualan Product Basket Vegetable', 'Aktif', '1', '2021-01-27 15:20:57', '1', '2021-01-27 15:20:57', '2021-01-27 15:20:57');
INSERT INTO `transaction` VALUES ('1095', '2021-01-27', 'Sales', 'OU/326/1', '50105', '30000.00', '0.00', '4', '35', '7', '217', 'Penjualan Product Basket Vegetable', 'Aktif', '1', '2021-01-27 15:20:57', '1', '2021-01-27 15:20:57', '2021-01-27 15:20:57');
INSERT INTO `transaction` VALUES ('1096', '2021-01-27', 'Sales', 'OU/326/1', '10205', '0.00', '30000.00', '4', '35', '7', '217', 'Penjualan Product Basket Vegetable', 'Aktif', '1', '2021-01-27 15:20:57', '1', '2021-01-27 15:20:57', '2021-01-27 15:20:57');
INSERT INTO `transaction` VALUES ('1097', '2021-01-27', 'Sales', 'OU/327/1', '10101', '30000.00', '0.00', '4', '34', '7', '218', 'Penjualan Product Mini Sealer', 'Aktif', '1', '2021-01-27 15:21:03', '1', '2021-01-27 15:21:03', '2021-01-27 15:21:03');
INSERT INTO `transaction` VALUES ('1098', '2021-01-27', 'Sales', 'OU/327/1', '40105', '0.00', '30000.00', '4', '34', '7', '218', 'Penjualan Product Mini Sealer', 'Aktif', '1', '2021-01-27 15:21:03', '1', '2021-01-27 15:21:03', '2021-01-27 15:21:03');
INSERT INTO `transaction` VALUES ('1099', '2021-01-27', 'Sales', 'OU/327/1', '50105', '19000.00', '0.00', '4', '34', '7', '218', 'Penjualan Product Mini Sealer', 'Aktif', '1', '2021-01-27 15:21:03', '1', '2021-01-27 15:21:03', '2021-01-27 15:21:03');
INSERT INTO `transaction` VALUES ('1100', '2021-01-27', 'Sales', 'OU/327/1', '10205', '0.00', '19000.00', '4', '34', '7', '218', 'Penjualan Product Mini Sealer', 'Aktif', '1', '2021-01-27 15:21:03', '1', '2021-01-27 15:21:03', '2021-01-27 15:21:03');
INSERT INTO `transaction` VALUES ('1101', '2021-01-27', 'Sales', 'OU/328/1', '10101', '13000.00', '0.00', '4', '41', '7', '219', 'Penjualan Product Kurir JnT', 'Aktif', '1', '2021-01-27 15:21:11', '1', '2021-01-27 15:21:11', '2021-01-27 15:21:11');
INSERT INTO `transaction` VALUES ('1102', '2021-01-27', 'Sales', 'OU/328/1', '40105', '0.00', '13000.00', '4', '41', '7', '219', 'Penjualan Product Kurir JnT', 'Aktif', '1', '2021-01-27 15:21:11', '1', '2021-01-27 15:21:11', '2021-01-27 15:21:11');
INSERT INTO `transaction` VALUES ('1103', '2021-01-27', 'Sales', 'OU/328/1', '50105', '13000.00', '0.00', '4', '41', '7', '219', 'Penjualan Product Kurir JnT', 'Aktif', '1', '2021-01-27 15:21:11', '1', '2021-01-27 15:21:11', '2021-01-27 15:21:11');
INSERT INTO `transaction` VALUES ('1104', '2021-01-27', 'Sales', 'OU/328/1', '10205', '0.00', '13000.00', '4', '41', '7', '219', 'Penjualan Product Kurir JnT', 'Aktif', '1', '2021-01-27 15:21:11', '1', '2021-01-27 15:21:11', '2021-01-27 15:21:11');
INSERT INTO `transaction` VALUES ('1105', '2021-01-27', 'Procurement', 'IN/329/1', '10205', '34000.00', '0.00', '4', '42', '9', '112', 'Pembelian Product Bantal Squisy', 'Aktif', '1', '2021-01-27 15:23:12', '1', '2021-01-27 15:23:12', '2021-01-27 15:23:12');
INSERT INTO `transaction` VALUES ('1106', '2021-01-27', 'Procurement', 'IN/329/1', '10101', '0.00', '34000.00', '4', '42', '9', '112', 'Pembelian Product Bantal Squisy', 'Aktif', '1', '2021-01-27 15:23:12', '1', '2021-01-27 15:23:12', '2021-01-27 15:23:12');
INSERT INTO `transaction` VALUES ('1107', '2021-01-27', 'BKK', 'KK/126/2', '20102', '500000.00', '0.00', '0', '0', '10', '0', 'Bayar hutang modal', 'Aktif', '1', '2020-12-19 17:17:22', '1', '2021-01-16 17:17:22', '2021-01-27 21:44:52');
INSERT INTO `transaction` VALUES ('1108', '2021-01-27', 'BKK', 'KK/126/2', '10101', '0.00', '500000.00', '0', '0', '10', '0', 'Bayar hutang modal', 'Aktif', '1', '2020-12-19 17:17:22', '1', '2021-01-16 17:17:22', '2021-01-27 21:44:52');
INSERT INTO `transaction` VALUES ('1109', '2021-01-27', 'Sales', 'OU/330/1', '10101', '13000.00', '0.00', '4', '40', '7', '220', 'Penjualan Product Lampu Jamur', 'Aktif', '1', '2021-01-27 15:47:19', '1', '2021-01-27 15:47:19', '2021-01-27 15:47:19');
INSERT INTO `transaction` VALUES ('1110', '2021-01-27', 'Sales', 'OU/330/1', '40105', '0.00', '13000.00', '4', '40', '7', '220', 'Penjualan Product Lampu Jamur', 'Aktif', '1', '2021-01-27 15:47:19', '1', '2021-01-27 15:47:19', '2021-01-27 15:47:19');
INSERT INTO `transaction` VALUES ('1111', '2021-01-27', 'Sales', 'OU/330/1', '50105', '10000.00', '0.00', '4', '40', '7', '220', 'Penjualan Product Lampu Jamur', 'Aktif', '1', '2021-01-27 15:47:19', '1', '2021-01-27 15:47:19', '2021-01-27 15:47:19');
INSERT INTO `transaction` VALUES ('1112', '2021-01-27', 'Sales', 'OU/330/1', '10205', '0.00', '10000.00', '4', '40', '7', '220', 'Penjualan Product Lampu Jamur', 'Aktif', '1', '2021-01-27 15:47:19', '1', '2021-01-27 15:47:19', '2021-01-27 15:47:19');
INSERT INTO `transaction` VALUES ('1113', '2021-01-29', 'Procurement', 'IN/331/1', '10201', '440500.00', '0.00', '2', '2', '1', '113', 'Pembelian Product Gudang Garam Surya 16', 'Aktif', '1', '2021-01-29 14:25:28', '1', '2021-01-29 14:25:28', '2021-01-29 14:25:28');
INSERT INTO `transaction` VALUES ('1114', '2021-01-29', 'Procurement', 'IN/331/1', '10101', '0.00', '440500.00', '2', '2', '1', '113', 'Pembelian Product Gudang Garam Surya 16', 'Aktif', '1', '2021-01-29 14:25:28', '1', '2021-01-29 14:25:28', '2021-01-29 14:25:28');
INSERT INTO `transaction` VALUES ('1115', '2021-01-29', 'Procurement', 'IN/332/1', '10201', '164750.00', '0.00', '3', '1', '1', '114', 'Pembelian Product Gudang Garam Surya 12', 'Aktif', '1', '2021-01-29 14:25:38', '1', '2021-01-29 14:25:38', '2021-01-29 14:25:38');
INSERT INTO `transaction` VALUES ('1116', '2021-01-29', 'Procurement', 'IN/332/1', '10101', '0.00', '164750.00', '3', '1', '1', '114', 'Pembelian Product Gudang Garam Surya 12', 'Aktif', '1', '2021-01-29 14:25:38', '1', '2021-01-29 14:25:38', '2021-01-29 14:25:38');
INSERT INTO `transaction` VALUES ('1117', '2021-01-29', 'Procurement', 'IN/333/1', '10201', '91700.00', '0.00', '3', '3', '1', '115', 'Pembelian Product Sampoerna Mild 16', 'Aktif', '1', '2021-01-29 14:25:45', '1', '2021-01-29 14:25:45', '2021-01-29 14:25:45');
INSERT INTO `transaction` VALUES ('1118', '2021-01-29', 'Procurement', 'IN/333/1', '10101', '0.00', '91700.00', '3', '3', '1', '115', 'Pembelian Product Sampoerna Mild 16', 'Aktif', '1', '2021-01-29 14:25:45', '1', '2021-01-29 14:25:45', '2021-01-29 14:25:45');
INSERT INTO `transaction` VALUES ('1119', '2021-01-29', 'Procurement', 'IN/334/1', '10201', '47400.00', '0.00', '3', '25', '1', '116', 'Pembelian Product Dji Sam Soe 12', 'Aktif', '1', '2021-01-29 14:25:53', '1', '2021-01-29 14:25:53', '2021-01-29 14:25:53');
INSERT INTO `transaction` VALUES ('1120', '2021-01-29', 'Procurement', 'IN/334/1', '10101', '0.00', '47400.00', '3', '25', '1', '116', 'Pembelian Product Dji Sam Soe 12', 'Aktif', '1', '2021-01-29 14:25:53', '1', '2021-01-29 14:25:53', '2021-01-29 14:25:53');
INSERT INTO `transaction` VALUES ('1121', '2021-01-29', 'Procurement', 'IN/335/1', '10201', '32925.00', '0.00', '3', '43', '1', '117', 'Pembelian Product GL Filter', 'Aktif', '1', '2021-01-29 14:25:59', '1', '2021-01-29 14:25:59', '2021-01-29 14:25:59');
INSERT INTO `transaction` VALUES ('1122', '2021-01-29', 'Procurement', 'IN/335/1', '10101', '0.00', '32925.00', '3', '43', '1', '117', 'Pembelian Product GL Filter', 'Aktif', '1', '2021-01-29 14:25:59', '1', '2021-01-29 14:25:59', '2021-01-29 14:25:59');
INSERT INTO `transaction` VALUES ('1123', '2021-01-29', 'Procurement', 'IN/336/1', '10201', '65100.00', '0.00', '3', '22', '1', '119', 'Pembelian Product Class Mild 16', 'Aktif', '1', '2021-01-29 14:26:07', '1', '2021-01-29 14:26:07', '2021-01-29 14:26:07');
INSERT INTO `transaction` VALUES ('1124', '2021-01-29', 'Procurement', 'IN/336/1', '10101', '0.00', '65100.00', '3', '22', '1', '119', 'Pembelian Product Class Mild 16', 'Aktif', '1', '2021-01-29 14:26:07', '1', '2021-01-29 14:26:07', '2021-01-29 14:26:07');
INSERT INTO `transaction` VALUES ('1125', '2021-01-29', 'Procurement', 'IN/337/1', '10201', '82750.00', '0.00', '1', '10', '1', '120', 'Pembelian Product Gudang Garam International', 'Aktif', '1', '2021-01-29 14:26:14', '1', '2021-01-29 14:26:14', '2021-01-29 14:26:14');
INSERT INTO `transaction` VALUES ('1126', '2021-01-29', 'Procurement', 'IN/337/1', '10101', '0.00', '82750.00', '1', '10', '1', '120', 'Pembelian Product Gudang Garam International', 'Aktif', '1', '2021-01-29 14:26:14', '1', '2021-01-29 14:26:14', '2021-01-29 14:26:14');
INSERT INTO `transaction` VALUES ('1127', '2021-01-29', 'Procurement', 'IN/338/1', '10201', '65100.00', '0.00', '1', '22', '1', '122', 'Pembelian Product Class Mild 16', 'Aktif', '1', '2021-01-29 14:26:20', '1', '2021-01-29 14:26:20', '2021-01-29 14:26:20');
INSERT INTO `transaction` VALUES ('1128', '2021-01-29', 'Procurement', 'IN/338/1', '10101', '0.00', '65100.00', '1', '22', '1', '122', 'Pembelian Product Class Mild 16', 'Aktif', '1', '2021-01-29 14:26:20', '1', '2021-01-29 14:26:20', '2021-01-29 14:26:20');

-- ----------------------------
-- Table structure for transaction_code
-- ----------------------------
DROP TABLE IF EXISTS `transaction_code`;
CREATE TABLE `transaction_code` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code_trx` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of transaction_code
-- ----------------------------
INSERT INTO `transaction_code` VALUES ('1', 'KM');
INSERT INTO `transaction_code` VALUES ('2', 'BM');
INSERT INTO `transaction_code` VALUES ('3', 'KK');
INSERT INTO `transaction_code` VALUES ('4', 'BK');
INSERT INTO `transaction_code` VALUES ('5', 'JU');

-- ----------------------------
-- Table structure for _mst_access
-- ----------------------------
DROP TABLE IF EXISTS `_mst_access`;
CREATE TABLE `_mst_access` (
  `idAccess` int(11) NOT NULL AUTO_INCREMENT,
  `idUser` int(11) DEFAULT NULL,
  `idMenu` int(11) DEFAULT NULL,
  `createTime` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`idAccess`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of _mst_access
-- ----------------------------

-- ----------------------------
-- Table structure for _mst_menu
-- ----------------------------
DROP TABLE IF EXISTS `_mst_menu`;
CREATE TABLE `_mst_menu` (
  `idMenu` int(11) NOT NULL AUTO_INCREMENT,
  `idModul` int(11) DEFAULT NULL,
  `idInduk` int(11) DEFAULT NULL,
  `namaMenu` varchar(50) DEFAULT NULL,
  `targetMenu` varchar(50) DEFAULT NULL,
  `iconMenu` varchar(20) DEFAULT NULL,
  `urutanMenu` int(11) DEFAULT NULL,
  `createBy` int(11) DEFAULT NULL,
  `createTime` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`idMenu`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of _mst_menu
-- ----------------------------
