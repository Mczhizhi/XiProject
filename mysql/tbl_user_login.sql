/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 50725 (5.7.25)
 Source Host           : localhost:3306
 Source Schema         : ssm_db

 Target Server Type    : MySQL
 Target Server Version : 50725 (5.7.25)
 File Encoding         : 65001

 Date: 10/09/2023 17:33:38
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for tbl_user_login
-- ----------------------------
DROP TABLE IF EXISTS `tbl_user_login`;
CREATE TABLE `tbl_user_login`  (
  `id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `user` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_user_login
-- ----------------------------
INSERT INTO `tbl_user_login` VALUES (1, 'Yan Xiaoming', 'K6ZkM09NVJ', 'BBSdH9vSiC');
INSERT INTO `tbl_user_login` VALUES (2, 'Shi Jiehong', 'zS42ee6bC8', '3DccSOVwMM');
INSERT INTO `tbl_user_login` VALUES (3, 'Song Yuning', 'veJ1BErJuX', 'gYZL8WOmB5');
INSERT INTO `tbl_user_login` VALUES (4, 'Lei Yunxi', 'hVamPi0vVC', 'EOB3cfwIjI');
INSERT INTO `tbl_user_login` VALUES (5, 'Lok Hui Mei', 'MWLyfGJKlC', 'ZyOceflFRN');
INSERT INTO `tbl_user_login` VALUES (6, 'Ronald Marshall', 'CRdOSO5CHT', 'IiAaFMuhu3');
INSERT INTO `tbl_user_login` VALUES (7, 'Nishimura Ayato', 'AL815UZpoc', 'rlHbFG2fR2');
INSERT INTO `tbl_user_login` VALUES (8, 'Jeffery Thompson', 'mbZXT2j8Um', 'BzRnvSfCkZ');
INSERT INTO `tbl_user_login` VALUES (9, 'Tang Anqi', 'Rc4JYu7CJm', 'J6YgVwAa4r');
INSERT INTO `tbl_user_login` VALUES (10, 'Bryan Morgan', 'o6UZFMSApu', 'Aui9bDZiTV');
INSERT INTO `tbl_user_login` VALUES (11, '123', '123', '123');

SET FOREIGN_KEY_CHECKS = 1;
