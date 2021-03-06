/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 50736
 Source Host           : localhost:3306
 Source Schema         : oes

 Target Server Type    : MySQL
 Target Server Version : 50736
 File Encoding         : 65001

 Date: 17/02/2022 13:41:43
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `aid` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `aname` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `apass` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `id`(`id`) USING BTREE,
  UNIQUE INDEX `aid`(`aid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES (1, '0001', 'admin', 'admin');
INSERT INTO `admin` VALUES (2, '0002', 'admin2', 'admin2');
INSERT INTO `admin` VALUES (3, '0003', 'admin3', 'admin3');

-- ----------------------------
-- Table structure for course
-- ----------------------------
DROP TABLE IF EXISTS `course`;
CREATE TABLE `course`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cid` varchar(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `cname` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `ccapacity` int(11) NULL DEFAULT NULL,
  `cplace` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `ctime` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `ccredit` float NULL DEFAULT NULL,
  `c_tid` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `id`(`id`) USING BTREE,
  UNIQUE INDEX `cid`(`cid`) USING BTREE,
  INDEX `c_tid`(`c_tid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 11 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of course
-- ----------------------------
INSERT INTO `course` VALUES (1, '0001', '????????????', 60, '1???206', '???1,1-2???', 3, '19990001');
INSERT INTO `course` VALUES (2, '0002', '???????????????', 20, '2???306', '???2,3-4???', 1, '20050054');
INSERT INTO `course` VALUES (3, '0003', '????????????', 30, '1???302', '???3,1-2???', 4.5, '20070014');
INSERT INTO `course` VALUES (4, '0004', '??????????????????', 50, '2???402', '???2,5-6???', 4, '20030001');
INSERT INTO `course` VALUES (5, '0005', '???????????????', 10, '3???302', '???5,7-8???', 2, '19780001');
INSERT INTO `course` VALUES (6, '0006', '???????????????', 22, '1???303', '???4,9-10???', 5, '19920004');
INSERT INTO `course` VALUES (7, '0007', '????????????', 30, '5???203', '???3,1-2???', 3.5, '20060006');
INSERT INTO `course` VALUES (8, '0008', 'oop??????', 70, '6???205', '???6,3-4???', 2.5, '20030049');
INSERT INTO `course` VALUES (9, '0009', '????????????????????????', 90, '1???202', '???7,5-6???', 4, '19890007');
INSERT INTO `course` VALUES (10, '0010', '???????????????', 100, '6???206', '???6,3-4???', 5, '20050055');

-- ----------------------------
-- Table structure for dept
-- ----------------------------
DROP TABLE IF EXISTS `dept`;
CREATE TABLE `dept`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `did` varchar(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `dname` varchar(40) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `dinfo` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `id`(`id`) USING BTREE,
  UNIQUE INDEX `did`(`did`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 14 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of dept
-- ----------------------------
INSERT INTO `dept` VALUES (1, '01000', '????????????', NULL);
INSERT INTO `dept` VALUES (2, '02000', '?????????????????????', NULL);
INSERT INTO `dept` VALUES (3, '03000', '??????????????????????????????', NULL);
INSERT INTO `dept` VALUES (4, '04000', '??????????????????', NULL);
INSERT INTO `dept` VALUES (5, '05000', '????????????????????????', NULL);
INSERT INTO `dept` VALUES (6, '06000', '????????????', NULL);
INSERT INTO `dept` VALUES (7, '07000', '??????????????????????????????', NULL);
INSERT INTO `dept` VALUES (8, '08000', '??????????????????', NULL);
INSERT INTO `dept` VALUES (9, '09000', '???????????????????????????', NULL);
INSERT INTO `dept` VALUES (10, '10000', '??????????????????', NULL);
INSERT INTO `dept` VALUES (11, '11000', '???????????????', NULL);
INSERT INTO `dept` VALUES (12, '20000', '??????????????????', NULL);
INSERT INTO `dept` VALUES (13, '21000', '??????????????????', NULL);

-- ----------------------------
-- Table structure for sc
-- ----------------------------
DROP TABLE IF EXISTS `sc`;
CREATE TABLE `sc`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sc_cid` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `sc_sid` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `score` float NULL DEFAULT NULL,
  `credit_get` float NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `id`(`id`) USING BTREE,
  INDEX `sc_sid`(`sc_sid`) USING BTREE,
  INDEX `sc_cid`(`sc_cid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 9 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sc
-- ----------------------------
INSERT INTO `sc` VALUES (1, '0001', '20720310307', NULL, NULL);
INSERT INTO `sc` VALUES (2, '0002', '20720310307', NULL, NULL);
INSERT INTO `sc` VALUES (3, '0003', '20720310306', NULL, NULL);
INSERT INTO `sc` VALUES (4, '0004', '20720310306', NULL, NULL);
INSERT INTO `sc` VALUES (5, '0003', '20720310307', NULL, NULL);
INSERT INTO `sc` VALUES (6, '0004', '20720310307', NULL, NULL);
INSERT INTO `sc` VALUES (7, '0006', '20720310306', NULL, NULL);
INSERT INTO `sc` VALUES (8, '0007', '20720310306', NULL, NULL);

-- ----------------------------
-- Table structure for student
-- ----------------------------
DROP TABLE IF EXISTS `student`;
CREATE TABLE `student`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sid` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `sname` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `spass` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `s_did` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `id`(`id`) USING BTREE,
  UNIQUE INDEX `sid`(`sid`) USING BTREE,
  INDEX `s_did`(`s_did`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 29 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of student
-- ----------------------------
INSERT INTO `student` VALUES (1, '20620310326', '??????', '123456', '01000');
INSERT INTO `student` VALUES (2, '20720310112', '??????', '123456', '02000');
INSERT INTO `student` VALUES (3, '20720310301', '?????????', '123456', '03000');
INSERT INTO `student` VALUES (4, '20720310302', '?????????', '123456', '04000');
INSERT INTO `student` VALUES (5, '20720310303', '?????????', '123456', '04000');
INSERT INTO `student` VALUES (6, '20720310304', '?????????', '123456', '04000');
INSERT INTO `student` VALUES (7, '20720310305', '?????????', '123456', '04000');
INSERT INTO `student` VALUES (8, '20720310306', '??????', '123456', '04000');
INSERT INTO `student` VALUES (9, '20720310307', '?????????', '123456', '01000');
INSERT INTO `student` VALUES (10, '20720310308', '?????????', '123456', '01000');
INSERT INTO `student` VALUES (11, '20720310309', '??????', '123456', '08000');
INSERT INTO `student` VALUES (12, '20720310310', '?????????', '123456', '07000');
INSERT INTO `student` VALUES (13, '20720310311', '?????????', '123456', '08000');
INSERT INTO `student` VALUES (14, '20720310312', '?????????', '123456', '07000');
INSERT INTO `student` VALUES (15, '20720310313', '??????', '123456', '08000');
INSERT INTO `student` VALUES (16, '20720310314', '??????', '123456', '10000');
INSERT INTO `student` VALUES (17, '20720310315', '??????', '123456', '05000');
INSERT INTO `student` VALUES (18, '20720310316', '??????', '123456', '06000');
INSERT INTO `student` VALUES (19, '20720310317', '??????', '123456', '21000');
INSERT INTO `student` VALUES (20, '20720310318', '?????????', '123456', '05000');
INSERT INTO `student` VALUES (21, '20720310319', '??????', '123456', '06000');
INSERT INTO `student` VALUES (22, '20720310320', '??????', '123456', '10000');
INSERT INTO `student` VALUES (23, '20720310321', '??????', '123456', '06000');
INSERT INTO `student` VALUES (24, '20720310322', '?????????', '123456', '20000');
INSERT INTO `student` VALUES (25, '20720310323', '??????', '123456', '10000');
INSERT INTO `student` VALUES (26, '20720310324', '??????', '123456', '10000');
INSERT INTO `student` VALUES (27, '20720310325', '?????????', '123456', '21000');
INSERT INTO `student` VALUES (28, '20720310326', '?????????', '123456', '05000');

-- ----------------------------
-- Table structure for teacher
-- ----------------------------
DROP TABLE IF EXISTS `teacher`;
CREATE TABLE `teacher`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tid` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `tname` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `tpass` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `t_did` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `id`(`id`) USING BTREE,
  UNIQUE INDEX `tid`(`tid`) USING BTREE,
  INDEX `t_did`(`t_did`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 12 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of teacher
-- ----------------------------
INSERT INTO `teacher` VALUES (1, '19990001', '?????????', '123456', '05000');
INSERT INTO `teacher` VALUES (2, '20050054', '??????', '123456', '05000');
INSERT INTO `teacher` VALUES (3, '20070014', '??????', '123456', '02000');
INSERT INTO `teacher` VALUES (4, '20030001', '?????????', '123456', '03000');
INSERT INTO `teacher` VALUES (5, '19780001', '??????', '123456', '07000');
INSERT INTO `teacher` VALUES (6, '19920004', '?????????', '123456', '20000');
INSERT INTO `teacher` VALUES (7, '20060006', '??????', '123456', '02000');
INSERT INTO `teacher` VALUES (8, '20030049', '?????????', '123456', '10000');
INSERT INTO `teacher` VALUES (9, '19890007', '?????????', '123456', '11000');
INSERT INTO `teacher` VALUES (10, '20050055', '??????', '123456', '05000');
INSERT INTO `teacher` VALUES (11, '20020010', '??????', '123456', '21000');

SET FOREIGN_KEY_CHECKS = 1;
