/*
 Navicat Premium Data Transfer

 Source Server         : young
 Source Server Type    : MySQL
 Source Server Version : 50721
 Source Host           : localhost:3306
 Source Schema         : db_dtu_monitor

 Target Server Type    : MySQL
 Target Server Version : 50721
 File Encoding         : 65001

 Date: 08/12/2020 08:42:31
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for doc_cust_info
-- ----------------------------
DROP TABLE IF EXISTS `doc_cust_info`;
CREATE TABLE `doc_cust_info`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '客用户id',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '客户名称',
  `linkman` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '联系人',
  `tel` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '联系电话',
  `user_type` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '用户类型',
  `dict_user_type_id` int(10) DEFAULT NULL COMMENT '用户类型id',
  `addr_id` int(10) DEFAULT NULL COMMENT '地址id',
  `addr_ids` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '地址ID集合',
  `address` varchar(90) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '地址名称',
  `address_more` varchar(90) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '详细地址名称',
  `remarks` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '备注',
  `deleted` tinyint(4) DEFAULT 0 COMMENT '删除状态位0未删除1已删除',
  `enable` tinyint(4) DEFAULT 0 COMMENT '启用状态位0启用1未启用',
  `createBy` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `createTime` datetime(0) DEFAULT NULL,
  `lastUpdateBy` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `lastUpdateTime` datetime(0) DEFAULT NULL,
  `sort` int(10) DEFAULT NULL,
  `tenant_id` int(11) DEFAULT NULL COMMENT '租户id',
  `status` int(10) DEFAULT 0 COMMENT '用户状态0正常1停用2注销',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '客户表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of doc_cust_info
-- ----------------------------
INSERT INTO `doc_cust_info` VALUES (1, '苍南222', '', '', '7', NULL, 48, '48,', NULL, NULL, NULL, 0, 0, 'root', '2020-11-27 19:41:34', NULL, NULL, NULL, 3, 0);

-- ----------------------------
-- Table structure for doc_dtu_info
-- ----------------------------
DROP TABLE IF EXISTS `doc_dtu_info`;
CREATE TABLE `doc_dtu_info`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'dtuid',
  `cust_id` int(10) NOT NULL COMMENT '客户id',
  `factory` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '厂家',
  `dtuType` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '设备类型',
  `dtuModel` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '设备型号',
  `dtuCode` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '设备编号',
  `remarks` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '备注',
  `deleted` tinyint(4) DEFAULT 0 COMMENT '删除状态位0未删除1已删除',
  `enable` tinyint(4) DEFAULT 0 COMMENT '启用状态位0启用1未启用',
  `createBy` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `createTime` datetime(0) DEFAULT NULL,
  `lastUpdateBy` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `lastUpdateTime` datetime(0) DEFAULT NULL,
  `sort` int(10) DEFAULT NULL,
  `tenant_id` int(11) DEFAULT NULL COMMENT '租户id',
  `iccid` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT 'ICCID号',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = 'DTU表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of doc_dtu_info
-- ----------------------------
INSERT INTO `doc_dtu_info` VALUES (1, 1, '10', NULL, '12', '2020', NULL, 0, 0, 'root', '2020-11-27 19:41:34', NULL, NULL, NULL, 3, '1516671');

-- ----------------------------
-- Table structure for doc_terminal_info
-- ----------------------------
DROP TABLE IF EXISTS `doc_terminal_info`;
CREATE TABLE `doc_terminal_info`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '终端id',
  `dtu_id` int(10) DEFAULT NULL COMMENT 'dtuid',
  `factory` varchar(64) CHARACTER SET utf16 COLLATE utf16_general_ci DEFAULT NULL COMMENT '厂家',
  `terminalType` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '设备类型',
  `terminalModel` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '设备型号',
  `tel_num` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '通讯地址',
  `threshold` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '阀值',
  `remarks` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '备注',
  `deleted` tinyint(4) DEFAULT 0 COMMENT '删除状态位0未删除1已删除',
  `enable` tinyint(4) DEFAULT 0 COMMENT '启用状态位0启用1未启用',
  `createBy` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `createTime` datetime(0) DEFAULT NULL,
  `lastUpdateBy` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `lastUpdateTime` datetime(0) DEFAULT NULL,
  `sort` int(10) DEFAULT NULL,
  `tenant_id` int(11) DEFAULT NULL COMMENT '租户id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '终端信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of doc_terminal_info
-- ----------------------------
INSERT INTO `doc_terminal_info` VALUES (1, 1, '34', '0', '35', '1', '', NULL, 0, 0, 'root', '2020-11-27 19:41:34', NULL, NULL, 1, 3);

-- ----------------------------
-- Table structure for msys_addr
-- ----------------------------
DROP TABLE IF EXISTS `msys_addr`;
CREATE TABLE `msys_addr`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `parent_id` int(10) NOT NULL,
  `name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '地址名称',
  `level` int(10) NOT NULL COMMENT '级别',
  `remarks` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '备注',
  `deleted` tinyint(4) DEFAULT 0 COMMENT '删除状态位0未删除1已删除',
  `createBy` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `createTime` datetime(0) DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  `lastUpdateBy` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `lastUpdateTime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  `sort` int(10) DEFAULT NULL,
  `tenant_id` int(11) DEFAULT NULL COMMENT '租户ID',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 49 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of msys_addr
-- ----------------------------
INSERT INTO `msys_addr` VALUES (43, 0, '济宁市', 1, NULL, 0, 'root', '2020-07-31 14:16:11', NULL, '2020-07-31 14:16:11', 0, 1);
INSERT INTO `msys_addr` VALUES (44, 43, '高新区', 2, NULL, 0, 'root', '2020-07-31 14:16:25', NULL, '2020-07-31 14:16:25', 0, 1);
INSERT INTO `msys_addr` VALUES (45, 44, '嘉达路', 3, NULL, 0, 'root', '2020-07-31 14:16:36', NULL, '2020-07-31 14:16:36', 0, 1);
INSERT INTO `msys_addr` VALUES (48, 0, '济宁', 1, NULL, 0, 'root', '2020-11-27 19:41:04', NULL, '2020-11-27 19:41:04', 0, 3);

-- ----------------------------
-- Table structure for msys_dict
-- ----------------------------
DROP TABLE IF EXISTS `msys_dict`;
CREATE TABLE `msys_dict`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `parent_id` int(10) NOT NULL,
  `name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '字典类型名称',
  `label` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '字典名称',
  `value` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '字典值',
  `remarks` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '备注',
  `deleted` tinyint(4) DEFAULT 0 COMMENT '删除状态位0未删除1已删除',
  `enable` tinyint(4) DEFAULT 0 COMMENT '启用状态位0启用1未启用',
  `createBy` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `createTime` datetime(0) DEFAULT NULL,
  `lastUpdateBy` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `lastUpdateTime` timestamp(0) NOT NULL ON UPDATE CURRENT_TIMESTAMP(0),
  `sort` int(10) DEFAULT NULL,
  `tenant_id` int(11) DEFAULT NULL COMMENT '租户ID',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 42 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of msys_dict
-- ----------------------------
INSERT INTO `msys_dict` VALUES (3, 0, 'DTU厂家字典', 'DTU厂家字典', NULL, NULL, 0, 0, 'root', '2020-07-18 11:06:57', '2020-07-20 16:39:08', '2020-07-31 16:05:08', 0, 1);
INSERT INTO `msys_dict` VALUES (5, 0, '客户类型字典', '客户类型', NULL, NULL, 0, 0, 'root', '2020-07-20 15:31:15', '2020-07-20 15:34:48', '2020-07-31 16:05:09', 0, 1);
INSERT INTO `msys_dict` VALUES (6, 5, '客户类型', '民用', NULL, NULL, 0, 1, 'root', '2020-07-20 15:32:52', '2020-07-20 15:39:56', '2020-07-31 16:05:12', 0, 1);
INSERT INTO `msys_dict` VALUES (7, 5, '客户类型', '工业', NULL, NULL, 0, 0, 'root', '2020-07-20 15:33:16', '2020-07-20 15:33:35', '2020-07-31 16:05:15', 0, 1);
INSERT INTO `msys_dict` VALUES (10, 3, 'DTU厂家', '天和', NULL, NULL, 0, 0, 'root', '2020-07-20 16:39:34', NULL, '2020-07-31 16:05:18', 0, 1);
INSERT INTO `msys_dict` VALUES (12, 10, 'DTU型号', 'TH-DTU-001', NULL, NULL, 0, 0, 'root', '2020-07-20 16:42:42', '2020-07-31 16:06:11', '2020-07-31 16:05:21', 0, 1);
INSERT INTO `msys_dict` VALUES (14, 0, '终端厂家字典', '终端厂家字典', NULL, NULL, 0, 0, 'root', '2020-07-20 16:48:12', NULL, '2020-07-31 16:05:24', 0, 1);
INSERT INTO `msys_dict` VALUES (15, 14, '终端厂家', '0(研宏)', NULL, NULL, 0, 0, 'root', '2020-07-20 16:48:37', '2020-07-24 17:56:56', '2020-07-31 16:05:25', 0, 1);
INSERT INTO `msys_dict` VALUES (16, 15, '终端型号', '1(积算仪)', NULL, NULL, 0, 0, 'root', '2020-07-20 16:48:55', '2020-07-31 16:07:05', '2020-07-31 16:05:26', 0, 1);
INSERT INTO `msys_dict` VALUES (19, 16, '版本号', '0(ModbusV1.0)', NULL, NULL, 0, 0, 'root', '2020-07-23 09:48:52', '2020-07-31 16:15:32', '2020-07-31 16:05:28', 1, 1);
INSERT INTO `msys_dict` VALUES (20, 16, '波特率', '9600()', NULL, NULL, 0, 0, 'root', '2020-07-23 09:49:16', NULL, '2020-07-31 16:05:29', 2, 1);
INSERT INTO `msys_dict` VALUES (21, 16, '数据位', '8()', NULL, NULL, 0, 0, 'root', '2020-07-23 09:49:34', NULL, '2020-07-31 16:05:30', 3, 1);
INSERT INTO `msys_dict` VALUES (23, 16, '停止位', '1()', NULL, NULL, 0, 0, 'root', '2020-07-23 09:50:19', NULL, '2020-07-31 16:05:32', 4, 1);
INSERT INTO `msys_dict` VALUES (24, 16, '校验位', '无()', NULL, NULL, 0, 0, 'root', '2020-07-23 09:50:49', '2020-07-24 19:28:46', '2020-07-31 16:05:33', 5, 1);
INSERT INTO `msys_dict` VALUES (25, 16, '命令', '01030000000EC40E()', NULL, NULL, 0, 0, 'root', '2020-07-23 09:51:20', '2020-07-24 17:58:00', '2020-07-31 16:05:34', 6, 1);
INSERT INTO `msys_dict` VALUES (26, 14, '终端厂家', '1(爱知)', NULL, NULL, 0, 0, 'root', '2020-11-27 16:59:47', NULL, '0000-00-00 00:00:00', 0, NULL);
INSERT INTO `msys_dict` VALUES (27, 26, '终端型号', '1(流量计)', NULL, NULL, 0, 0, 'root', '2020-11-27 17:00:15', NULL, '0000-00-00 00:00:00', 0, NULL);
INSERT INTO `msys_dict` VALUES (28, 27, '版本号', '0(AS超声波)', NULL, NULL, 0, 0, 'root', '2020-11-27 17:02:07', NULL, '0000-00-00 00:00:00', 0, NULL);
INSERT INTO `msys_dict` VALUES (29, 27, '波特率', '9600()', NULL, NULL, 0, 0, 'root', '2020-11-27 17:02:38', NULL, '0000-00-00 00:00:00', 0, NULL);
INSERT INTO `msys_dict` VALUES (30, 27, '数据位', '8()', NULL, NULL, 0, 0, 'root', '2020-11-27 17:03:03', NULL, '0000-00-00 00:00:00', 0, NULL);
INSERT INTO `msys_dict` VALUES (31, 27, '停止位', '1()', NULL, NULL, 0, 0, 'root', '2020-11-27 17:03:24', NULL, '0000-00-00 00:00:00', 0, NULL);
INSERT INTO `msys_dict` VALUES (32, 27, '校验位', '无()', NULL, NULL, 0, 0, 'root', '2020-11-27 17:03:46', '2020-11-27 17:11:11', '0000-00-00 00:00:00', 0, NULL);
INSERT INTO `msys_dict` VALUES (33, 27, '命令', '030301FF000F35E0()', NULL, NULL, 0, 0, 'root', '2020-11-27 17:06:00', NULL, '0000-00-00 00:00:00', 0, NULL);
INSERT INTO `msys_dict` VALUES (34, 14, '终端厂家', '3(苍南)', NULL, NULL, 0, 0, 'root', '2020-11-27 17:07:22', NULL, '0000-00-00 00:00:00', 0, NULL);
INSERT INTO `msys_dict` VALUES (35, 34, '终端型号', '1(流量计)', NULL, NULL, 0, 0, 'root', '2020-11-27 17:07:58', NULL, '0000-00-00 00:00:00', 0, NULL);
INSERT INTO `msys_dict` VALUES (36, 35, '版本号', '0(MODBUS RTU 2.0.E)', NULL, NULL, 0, 0, 'root', '2020-11-27 17:09:03', NULL, '0000-00-00 00:00:00', 0, NULL);
INSERT INTO `msys_dict` VALUES (37, 35, '波特率', '9600()', NULL, NULL, 0, 0, 'root', '2020-11-27 17:09:28', NULL, '0000-00-00 00:00:00', 0, NULL);
INSERT INTO `msys_dict` VALUES (38, 35, '数据位', '8()', NULL, NULL, 0, 0, 'root', '2020-11-27 17:09:48', NULL, '0000-00-00 00:00:00', 0, NULL);
INSERT INTO `msys_dict` VALUES (39, 35, '停止位', '1()', NULL, NULL, 0, 0, 'root', '2020-11-27 17:10:11', NULL, '0000-00-00 00:00:00', 0, NULL);
INSERT INTO `msys_dict` VALUES (40, 35, '校验位', '奇()', NULL, NULL, 0, 0, 'root', '2020-11-27 17:10:57', NULL, '0000-00-00 00:00:00', 0, NULL);
INSERT INTO `msys_dict` VALUES (41, 35, '命令', '1703000A0015A6F1()', NULL, NULL, 0, 0, 'root', '2020-11-27 17:12:17', NULL, '2020-11-27 19:20:45', 0, NULL);

-- ----------------------------
-- Table structure for op_instruction_record
-- ----------------------------
DROP TABLE IF EXISTS `op_instruction_record`;
CREATE TABLE `op_instruction_record`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `dtu_id` int(10) DEFAULT NULL COMMENT 'dtuid',
  `cust_id` int(10) DEFAULT NULL COMMENT '客户id',
  `record_id` int(10) DEFAULT NULL COMMENT '记录的id',
  `pktSer` int(10) DEFAULT NULL COMMENT '包序号',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '客户名称',
  `linkman` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '联系人',
  `tel` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '联系电话',
  `user_type` int(64) DEFAULT NULL COMMENT '用户类型',
  `address` varchar(90) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '地址名称',
  `factory` int(64) DEFAULT NULL COMMENT '厂家',
  `dtuType` int(64) DEFAULT NULL COMMENT '设备类型',
  `dtuModel` int(64) DEFAULT NULL COMMENT '设备型号',
  `dtuCode` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '设备编号',
  `remarks` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '备注',
  `params` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '指令参数',
  `str` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '指令串',
  `status` int(10) DEFAULT NULL COMMENT '指令执行状态',
  `createBy` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `createTime` datetime(0) DEFAULT NULL,
  `lastUpdateBy` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `lastUpdateTime` datetime(0) DEFAULT NULL,
  `sort` int(10) DEFAULT NULL,
  `tenant_id` int(11) DEFAULT NULL COMMENT '租户id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = 'dtu上报信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of op_instruction_record
-- ----------------------------
INSERT INTO `op_instruction_record` VALUES (1, 1, 1, NULL, 1, '苍南222', '', '', 7, NULL, 10, NULL, 12, '2020', '开户指令', '{deviceType=0, deviceAddr=2020, termParityBit=奇, termEnable=启用, protocolVer=1.0, termCompany=3, termStopBit=1, termDataBit=8, termType=1, commCmd=1703000A0015A6F1, companyNum=3, termProtocol=0, termAddr=1, pktSer=1, termBaud=9600}', 'AA000100264264000300000007E4010100030001000025800801011703000A0015A6F154E955', 2, 'root', '2020-11-27 19:41:34', NULL, NULL, NULL, 3);

-- ----------------------------
-- Table structure for op_recharge_record
-- ----------------------------
DROP TABLE IF EXISTS `op_recharge_record`;
CREATE TABLE `op_recharge_record`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `dtu_id` int(10) DEFAULT NULL COMMENT 'dtuid',
  `cust_id` int(10) DEFAULT NULL COMMENT '客户id',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '客户名称',
  `linkman` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '联系人',
  `tel` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '联系电话',
  `user_type` int(64) DEFAULT NULL COMMENT '用户类型',
  `address` varchar(90) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '地址名称',
  `factory` int(64) DEFAULT NULL COMMENT '厂家',
  `dtuType` int(64) DEFAULT NULL COMMENT '设备类型',
  `dtuModel` int(64) DEFAULT NULL COMMENT '设备型号',
  `dtuCode` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '设备编号',
  `rechargeGas` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '充值金额',
  `rechargeType` int(10) DEFAULT NULL COMMENT '充值类型0充值，1退费，2补气',
  `status` int(10) DEFAULT NULL COMMENT '指令执行状态',
  `remarks` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '备注',
  `createBy` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `createTime` datetime(0) DEFAULT NULL,
  `lastUpdateBy` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `lastUpdateTime` datetime(0) DEFAULT NULL,
  `tenant_id` int(11) DEFAULT NULL COMMENT '租户id',
  `befChargeVolume` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '0' COMMENT '充值前',
  `aftChargeVolume` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '0' COMMENT '充值后',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '充值记录' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ota_upgrade_package
-- ----------------------------
DROP TABLE IF EXISTS `ota_upgrade_package`;
CREATE TABLE `ota_upgrade_package`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `byte_array` mediumblob COMMENT '2进制字节数组',
  `hex_string` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci COMMENT '16进制字符串',
  `name` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '升级包名称',
  `version` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '升级包版本',
  `deleted` tinyint(4) DEFAULT 0 COMMENT '删除状态位0未删除1已删除',
  `enable` tinyint(4) DEFAULT 0 COMMENT '启用状态位0发送至网关1未发送',
  `remarks` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '备注',
  `createBy` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `createTime` datetime(0) DEFAULT NULL,
  `lastUpdateBy` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `lastUpdateTime` datetime(0) DEFAULT NULL,
  `sort` int(10) DEFAULT NULL,
  `tenant_id` int(11) DEFAULT NULL COMMENT '租户id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = 'ota升级包管理' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for social_userconnection
-- ----------------------------
DROP TABLE IF EXISTS `social_userconnection`;
CREATE TABLE `social_userconnection`  (
  `userId` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `providerId` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `providerUserId` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `rank` int(11) NOT NULL,
  `displayName` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `profileUrl` varchar(512) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `imageUrl` varchar(512) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `accessToken` varchar(512) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `secret` varchar(512) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `refreshToken` varchar(512) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `expireTime` bigint(20) DEFAULT NULL,
  `create_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `tenant_id` int(11) DEFAULT NULL COMMENT '租户id',
  PRIMARY KEY (`userId`, `providerId`, `providerUserId`) USING BTREE,
  UNIQUE INDEX `UserConnectionRank`(`userId`, `providerId`, `rank`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '社交登录表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of social_userconnection
-- ----------------------------
INSERT INTO `social_userconnection` VALUES ('4', 'gitee', '1758995', 1, '小东啊', 'https://gitee.com/li_haodong', 'https://gitee.com/assets/no_portrait.png', 'c1fca8c75ab27aaca5dfb5a6eace6399', NULL, 'dfb4a011a1f64b84351ed105e34a9ef606dc2b79c89c524e021b16a5a231b192', 1565078033891, '2019-07-22 13:29:56', 1);
INSERT INTO `social_userconnection` VALUES ('4', 'github', '34288907', 1, 'LiHaodong888', 'https://github.com/34288907', 'https://avatars1.githubusercontent.com/u/34288907?v=4', 'f67968d673df3cba6b844792dc0f13202dc4d7c5', NULL, NULL, NULL, '2019-08-05 11:37:43', 1);
INSERT INTO `social_userconnection` VALUES ('4', 'qq', '50C4D34B696F544B6D7768D6EAB1E9EE', 1, '旧情书。', NULL, 'http://thirdqq.qlogo.cn/g?b=oidb&k=ct6ia1Gv2PgIDQvMltfB1XA&s=40&t=1555562263', '2AF1394759F6B346007DC780ECAF31BE', NULL, 'BA0D2EDD55D0055AB6C2305FDD2B57E4', 1572923822297, '2019-08-07 11:11:13', 1);
INSERT INTO `social_userconnection` VALUES ('4', 'weixin', 'ooAdzwJY_uPdf9wEZtYFTrWnv9bc', 1, '小东啊', NULL, 'http://thirdwx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTJfRDzSZlwKOfYOywzGU2RxBfreicz4Q5alcYlzzUlvML295UW3Gr6S2NVFJsoiaGUYiatmaxib4gnEibg/132', '24_1OaDjCScr8b4URArw1UVcf9YJ9Q6id1Y5_xc7SMa5RqkkiJNK_hU6IGfegwe8ygZ5TPqjstKXbjuC1KUibPnmqdui1SWfdw1oZkESggDOqY', NULL, '24_YLfiVQJPMnGzAUjkyquwU722nCJlHHNWowxtMl6VQhF7JygDTajqYVtqKmOuraTrtaFvZULGR7eNmC2Qr713wKKAJVBxTE3wqh3p86kX44U', 1566557314755, '2019-08-23 16:46:11', 1);

-- ----------------------------
-- Table structure for sys_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_dept`;
CREATE TABLE `sys_dept`  (
  `dept_id` int(20) NOT NULL AUTO_INCREMENT COMMENT '部门主键ID',
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL COMMENT '部门名称',
  `sort` int(11) DEFAULT NULL COMMENT '排序',
  `create_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '修改时间',
  `del_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT '0' COMMENT '是否删除  -1：已删除  0：正常',
  `parent_id` int(11) DEFAULT NULL COMMENT '上级部门',
  `tenant_id` int(11) DEFAULT NULL COMMENT '租户id',
  PRIMARY KEY (`dept_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 28 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin COMMENT = '部门管理' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_dept
-- ----------------------------
INSERT INTO `sys_dept` VALUES (25, '运营部', 0, '2020-08-07 14:07:33', '2020-08-07 14:22:41', '0', 0, 1);
INSERT INTO `sys_dept` VALUES (26, '默认部门', 0, '2020-08-07 14:25:44', '2020-08-07 14:25:44', '0', 0, 2);
INSERT INTO `sys_dept` VALUES (27, '默认部门', 0, '2020-11-27 17:16:25', '2020-11-27 18:43:10', '0', 0, 3);

-- ----------------------------
-- Table structure for sys_dict
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict`;
CREATE TABLE `sys_dict`  (
  `id` int(64) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `dict_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '名称',
  `dict_code` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '字典编码',
  `description` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '描述',
  `sort` int(4) DEFAULT NULL COMMENT '排序（升序）',
  `create_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '更新时间',
  `remark` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '备注信息',
  `del_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '0' COMMENT '删除标记',
  `tenant_id` int(11) DEFAULT NULL COMMENT '租户Id',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `sys_dict_del_flag`(`del_flag`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '字典表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_dict
-- ----------------------------
INSERT INTO `sys_dict` VALUES (1, '用户状态', 'lock_flag', '用户是否正常还是锁定', NULL, '2019-12-16 13:35:43', '2019-12-17 21:24:29', NULL, '0', 1);
INSERT INTO `sys_dict` VALUES (2, '菜单类型', 'menu_type', '菜单类型 （类型   0：目录   1：菜单   2：按钮）', NULL, '2019-12-16 13:42:46', '2019-12-17 21:24:29', NULL, '0', 1);

-- ----------------------------
-- Table structure for sys_dict_item
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_item`;
CREATE TABLE `sys_dict_item`  (
  `id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `dict_id` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '字典id',
  `item_text` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '字典项文本',
  `item_value` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '字典项值',
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '描述',
  `status` int(11) DEFAULT NULL COMMENT '状态（1启用 0不启用）',
  `create_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `index_table_dict_id`(`dict_id`) USING BTREE,
  INDEX `index_table_dict_status`(`status`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '字典详情表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_dict_item
-- ----------------------------
INSERT INTO `sys_dict_item` VALUES ('0c8f86876bfc7c59a5236010fdcaa07e', '2', '目录', '1', '', NULL, '2019-12-16 13:57:39', '2019-12-16 13:57:39');
INSERT INTO `sys_dict_item` VALUES ('3fe7ad23294384de45197f3379b8d658', '1', '锁定', '1', '0-正常，1-锁定', NULL, '2019-12-16 13:39:56', '2019-12-16 13:39:56');
INSERT INTO `sys_dict_item` VALUES ('5ace75b3caf31b86efa50430954d624f', '2', '按钮', '3', '', NULL, '2019-12-16 13:57:55', '2019-12-16 13:57:55');
INSERT INTO `sys_dict_item` VALUES ('6ea98d652a06220c99b9468ead68e6f9', '2', '菜单', '1', '', NULL, '2019-12-16 13:57:48', '2019-12-16 13:57:48');
INSERT INTO `sys_dict_item` VALUES ('f27a639dee243eef860f453c2ab8547e', '1', '正常', '0', '0-正常，1-锁定', NULL, '2019-12-16 13:39:45', '2019-12-16 13:39:45');

-- ----------------------------
-- Table structure for sys_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_log`;
CREATE TABLE `sys_log`  (
  `id` int(18) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `ip` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '操作IP',
  `type` int(3) DEFAULT NULL COMMENT '操作类型 1 操作记录2异常记录',
  `user_name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '操作人',
  `description` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '操作描述',
  `action_method` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '请求方法',
  `action_url` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `params` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '请求参数',
  `browser` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '浏览器',
  `class_path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '类路径',
  `request_method` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '请求方法',
  `start_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '开始时间',
  `finish_time` timestamp(0) NOT NULL COMMENT '完成时间',
  `consuming_time` bigint(11) DEFAULT NULL COMMENT '消耗时间',
  `ex_desc` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '异常详情信息',
  `ex_detail` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci COMMENT '异常描述',
  `tenant_id` int(11) DEFAULT NULL COMMENT '租户id',
  `location` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '操作地点',
  `os` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '操作系统',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '系统日志' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu`  (
  `menu_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '菜单ID',
  `name` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '菜单名称',
  `perms` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL COMMENT '菜单权限标识',
  `path` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL COMMENT '前端跳转URL',
  `component` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL COMMENT '菜单组件',
  `parent_id` int(11) DEFAULT NULL COMMENT '父菜单ID',
  `icon` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL COMMENT '图标',
  `sort` int(11) DEFAULT 1 COMMENT '排序',
  `type` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL COMMENT '菜单类型 （类型   0：目录   1：菜单   2：按钮）',
  `create_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '更新时间',
  `del_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT '0' COMMENT '逻辑删除标记(0--正常 1--删除)',
  `is_frame` tinyint(1) DEFAULT NULL COMMENT '是否为外链',
  PRIMARY KEY (`menu_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 92 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin COMMENT = '菜单权限表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
INSERT INTO `sys_menu` VALUES (1, '权限管理', '', 'admin', '', 0, 'authority', 3, '0', '2019-04-21 22:45:08', '2020-08-04 10:36:15', '0', 1);
INSERT INTO `sys_menu` VALUES (2, '用户管理', '', 'user', 'admin/user', 1, 'user', 1, '1', '2019-04-21 22:49:22', '2019-05-12 19:02:34', '0', 1);
INSERT INTO `sys_menu` VALUES (3, '部门管理', '', 'dept', 'admin/dept', 1, 'dept', 2, '1', '2019-04-21 22:52:11', '2019-05-12 21:25:14', '0', 1);
INSERT INTO `sys_menu` VALUES (5, '用户新增', 'sys:user:add', '', NULL, 2, '', 0, '2', '2019-04-22 13:09:11', '2019-06-08 11:21:07', '0', 1);
INSERT INTO `sys_menu` VALUES (6, '系统管理', '', 'sys', '', 0, 'sys', 4, '0', '2019-04-22 23:48:02', '2020-08-04 10:36:24', '0', 1);
INSERT INTO `sys_menu` VALUES (11, '部门新增', 'sys:dept:add', '', NULL, 3, '', 0, '2', '2019-04-25 11:09:50', '2019-06-08 13:13:45', '0', 1);
INSERT INTO `sys_menu` VALUES (13, '角色管理', '', 'role', 'admin/role', 1, 'peoples', 1, '1', '2019-04-29 21:08:28', '2019-05-05 20:20:53', '0', 1);
INSERT INTO `sys_menu` VALUES (14, '用户修改', 'sys:user:update', '', NULL, 2, '', 0, '2', '2019-04-30 23:43:31', '2019-06-08 11:22:23', '0', 1);
INSERT INTO `sys_menu` VALUES (15, '角色新增', 'sys:role:add', '', NULL, 13, '', 0, '2', '2019-05-01 08:49:21', '2019-06-09 16:39:48', '0', 1);
INSERT INTO `sys_menu` VALUES (16, '菜单管理', '', 'menu', 'admin/menu', 1, 'menu', 3, '1', '2019-05-03 15:26:58', '2019-05-05 20:20:56', '0', 1);
INSERT INTO `sys_menu` VALUES (28, '菜单增加', 'sys:menu:add', '', '', 16, '', 0, '2', '2019-05-08 16:09:43', '2019-06-08 13:14:02', '0', 1);
INSERT INTO `sys_menu` VALUES (29, '菜单修改', 'sys:menu:update', '', '', 16, '', 0, '2', '2019-05-08 16:10:06', '2019-06-08 13:14:05', '0', 1);
INSERT INTO `sys_menu` VALUES (30, '部门修改', 'sys:dept:update', '', '', 3, '', 0, '2', '2019-05-08 23:49:54', '2019-06-08 13:13:49', '0', 1);
INSERT INTO `sys_menu` VALUES (31, '部门删除', 'sys:dept:delete', '', '', 3, '', 0, '2', '2019-05-08 23:53:41', '2019-06-08 13:13:52', '0', 1);
INSERT INTO `sys_menu` VALUES (33, '用户查看', 'sys:user:view', '', '', 2, '', 0, '2', '2019-05-12 18:59:46', '2019-06-08 11:23:01', '0', 1);
INSERT INTO `sys_menu` VALUES (34, '角色修改', 'sys:role:update', '', '', 13, '', 0, '2', '2019-05-12 19:05:03', '2019-06-08 13:13:29', '0', 1);
INSERT INTO `sys_menu` VALUES (35, '用户删除', 'sys:user:delete', '', '', 2, '', 0, '2', '2019-05-12 19:08:13', '2019-06-08 11:23:07', '0', 1);
INSERT INTO `sys_menu` VALUES (36, '菜单删除', 'sys:menu:delete', '', '', 16, '', 0, '2', '2019-05-12 19:10:02', '2019-06-08 13:14:09', '0', 1);
INSERT INTO `sys_menu` VALUES (37, '角色删除', 'sys:role:delete', '', '', 13, '', 0, '2', '2019-05-12 19:11:14', '2019-06-08 13:13:34', '0', 1);
INSERT INTO `sys_menu` VALUES (38, '角色查看', 'sys:role:view', '', '', 13, '', 0, '2', '2019-05-12 19:11:37', '2019-06-08 13:13:37', '0', 1);
INSERT INTO `sys_menu` VALUES (43, '系统字典', '', 'dict', 'sys/dict', 6, 'tag', 0, '1', '2019-05-16 18:17:32', '2020-07-15 19:42:16', '0', 1);
INSERT INTO `sys_menu` VALUES (44, '部门查看', 'sys:dept:view', '', '', 3, '', 0, '2', '2019-06-07 20:50:31', '2019-06-08 13:13:55', '0', 1);
INSERT INTO `sys_menu` VALUES (45, '字典查看', 'sys:dipt:view', '', '', 43, '', 0, '2', '2019-06-07 20:55:42', '2019-06-08 13:14:56', '0', 1);
INSERT INTO `sys_menu` VALUES (46, '菜单查看', 'sys:menu:view', '', '', 16, '', 0, '2', '2019-06-08 13:14:32', '2020-07-17 14:12:51', '0', 1);
INSERT INTO `sys_menu` VALUES (47, '修改密码', 'sys:user:updatePass', '', '', 2, '', 0, '2', '2019-06-15 09:43:20', '2019-06-15 09:43:20', '0', 1);
INSERT INTO `sys_menu` VALUES (48, '修改邮箱', 'sys:user:updateEmail', '', '', 2, '', 0, '2', '2019-06-15 09:43:58', '2019-06-15 09:43:58', '0', 1);
INSERT INTO `sys_menu` VALUES (56, '租户管理', '', 'tenant', 'admin/tenant', 1, 'guide', 5, '1', '2019-08-10 10:52:26', '2019-08-10 10:54:11', '0', 1);
INSERT INTO `sys_menu` VALUES (68, '添加字典', 'sys:dict:add', '', '', 43, '', 0, '2', '2019-12-15 21:16:09', '2019-12-15 21:16:09', '0', 1);
INSERT INTO `sys_menu` VALUES (69, '添加字典详情', 'sys:dictItem:add', '', '', 43, '', 0, '2', '2019-12-15 22:08:01', '2019-12-15 22:08:01', '0', 1);
INSERT INTO `sys_menu` VALUES (70, '更新字典详情', 'sys:dictItem:edit', '', '', 43, '', 0, '2', '2019-12-16 12:19:53', '2019-12-16 12:19:53', '0', 1);
INSERT INTO `sys_menu` VALUES (71, '更新字典', 'sys:dict:edit', '', '', 43, '', 0, '2', '2019-12-16 13:44:01', '2019-12-16 13:44:01', '0', 1);
INSERT INTO `sys_menu` VALUES (72, '添加租户', 'sys:tenant:add', '', '', 56, '', 0, '2', '2019-12-17 21:29:52', '2019-12-17 21:29:52', '0', 1);
INSERT INTO `sys_menu` VALUES (73, '档案管理', '', 'customer', '', 0, 'guide', 0, '0', '2020-07-15 11:22:24', '2020-08-05 15:35:43', '0', 1);
INSERT INTO `sys_menu` VALUES (74, '客户建档', '', 'customer/add', 'customer/add', 73, 'log', 0, '1', '2020-07-15 11:27:26', '2020-07-15 11:29:57', '0', 1);
INSERT INTO `sys_menu` VALUES (75, '档案修改', '', 'Edit', 'customer/edit', 73, 'edit', 0, '1', '2020-07-15 11:36:13', '2020-08-05 15:35:25', '0', 1);
INSERT INTO `sys_menu` VALUES (76, '地址维护', '', 'Addr', 'customer/addr', 6, 'international', 0, '1', '2020-07-15 19:38:28', '2020-07-15 19:38:28', '0', 1);
INSERT INTO `sys_menu` VALUES (77, '数据字典', '', 'MyDict', 'customer/mydict', 6, 'blog', 0, '1', '2020-07-16 17:45:09', '2020-07-16 17:45:09', '0', 1);
INSERT INTO `sys_menu` VALUES (78, 'DTU档案', '', 'DtuInfo', 'customer/dtuInfo', 73, 'blogLink', 0, '1', '2020-07-20 20:22:33', '2020-08-05 15:36:10', '0', 1);
INSERT INTO `sys_menu` VALUES (79, '终端档案', '', 'terminalInfo', 'customer/terminalInfo', 73, 'dashboard', 0, '1', '2020-07-20 20:28:13', '2020-08-05 15:36:17', '0', 1);
INSERT INTO `sys_menu` VALUES (80, '报表统计', '', '', '', 0, 'chart', 2, '0', '2020-07-20 20:59:52', '2020-08-04 10:35:57', '0', 1);
INSERT INTO `sys_menu` VALUES (81, '充值记录', '', 'recharge', 'reportForm/rechargeRecord', 80, 'log', 0, '1', '2020-07-20 21:03:45', '2020-07-25 08:52:16', '0', 1);
INSERT INTO `sys_menu` VALUES (82, '上报信息(列表)', '', 'reportInfo', 'reportForm/reportInfoRecord', 80, 'log', 0, '1', '2020-07-21 08:35:26', '2020-08-03 10:29:27', '0', 1);
INSERT INTO `sys_menu` VALUES (83, '业务管理', '', 'business', '', 0, 'international', 1, '0', '2020-07-25 08:54:08', '2020-08-04 10:35:38', '0', 1);
INSERT INTO `sys_menu` VALUES (84, '客户充值', '', 'recharge', 'business/recharge', 83, 'money', 0, '1', '2020-07-25 08:57:24', '2020-07-25 09:03:23', '0', 1);
INSERT INTO `sys_menu` VALUES (85, '重发指令', '', 'resendInstruction', 'business/resendInstruction', 83, 'tag', 0, '1', '2020-07-25 09:01:59', '2020-07-25 09:03:36', '0', 1);
INSERT INTO `sys_menu` VALUES (86, '上报信息(曲线)', '', 'dtuInfo', 'reportForm/dtuInfo', 80, 'blogLink', 0, '1', '2020-07-28 09:25:05', '2020-08-03 10:29:43', '0', 1);
INSERT INTO `sys_menu` VALUES (87, '硬件管理', '', 'hardware', 'sys/hardware', 6, 'link', 0, '1', '2020-07-29 15:03:03', '2020-07-29 15:07:00', '0', 1);
INSERT INTO `sys_menu` VALUES (88, '升 级 包', '', 'otaUpdatePackage', 'sys/otaUpdatePackage', 6, '信息', 0, '1', '2020-07-29 20:19:08', '2020-07-31 13:31:02', '0', 1);
INSERT INTO `sys_menu` VALUES (89, '配置回复信息', '', 'ReadDtuParamsReply', 'reportForm/readDtuParamsReply', 80, 'tree', 0, '1', '2020-08-05 11:48:10', '2020-08-05 11:48:10', '0', 1);
INSERT INTO `sys_menu` VALUES (90, '编辑租户', 'sys:tenant:update', '', '', 56, '', 0, '2', '2020-08-07 15:48:02', '2020-08-07 15:48:02', '0', 1);
INSERT INTO `sys_menu` VALUES (91, '删除租户', 'sys:tenant:del', '', '', 56, '', 0, '2', '2020-08-07 15:48:30', '2020-08-07 15:48:30', '0', 1);

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role`  (
  `role_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '角色主键',
  `role_name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '角色名称',
  `role_code` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL COMMENT '角色标识',
  `role_desc` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL COMMENT '角色描述',
  `create_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '更新时间',
  `del_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT '0' COMMENT '删除标识（0-正常,1-删除）',
  `ds_type` int(1) DEFAULT NULL COMMENT '数据权限类型',
  `ds_scope` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL COMMENT '数据权限范围 1 全部 2 本级 3 本级以及子级 4 自定义',
  `tenant_id` int(11) DEFAULT NULL COMMENT '租户id',
  PRIMARY KEY (`role_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 15 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin COMMENT = '系统角色表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES (10, '默认角色', 'ROLE_ADMIN', '超级管理员', '2020-07-14 18:26:18', '2020-08-07 14:06:06', '0', 1, '6,7,12,14', 1);
INSERT INTO `sys_role` VALUES (14, '默认角色', 'ROLE_ADMIN', NULL, '2020-11-27 17:16:25', '2020-11-27 18:42:56', '0', 1, '27', 3);

-- ----------------------------
-- Table structure for sys_role_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_dept`;
CREATE TABLE `sys_role_dept`  (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '部门主键ID',
  `role_id` int(20) DEFAULT NULL COMMENT '角色ID',
  `dept_id` int(20) DEFAULT NULL COMMENT '部门ID',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 347 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin COMMENT = '角色与部门对应关系' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_role_dept
-- ----------------------------
INSERT INTO `sys_role_dept` VALUES (346, 10, 25);

-- ----------------------------
-- Table structure for sys_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_menu`;
CREATE TABLE `sys_role_menu`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `role_id` int(11) NOT NULL COMMENT '角色ID',
  `menu_id` int(11) NOT NULL COMMENT '菜单ID',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `index_role_id`(`role_id`) USING BTREE COMMENT '角色Id',
  INDEX `index_menu_id`(`menu_id`) USING BTREE COMMENT '菜单Id'
) ENGINE = InnoDB AUTO_INCREMENT = 4693 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin COMMENT = '角色菜单表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_role_menu
-- ----------------------------
INSERT INTO `sys_role_menu` VALUES (4525, 10, 73);
INSERT INTO `sys_role_menu` VALUES (4526, 10, 74);
INSERT INTO `sys_role_menu` VALUES (4527, 10, 75);
INSERT INTO `sys_role_menu` VALUES (4528, 10, 78);
INSERT INTO `sys_role_menu` VALUES (4529, 10, 79);
INSERT INTO `sys_role_menu` VALUES (4530, 10, 83);
INSERT INTO `sys_role_menu` VALUES (4531, 10, 84);
INSERT INTO `sys_role_menu` VALUES (4532, 10, 85);
INSERT INTO `sys_role_menu` VALUES (4535, 10, 80);
INSERT INTO `sys_role_menu` VALUES (4536, 10, 81);
INSERT INTO `sys_role_menu` VALUES (4537, 10, 82);
INSERT INTO `sys_role_menu` VALUES (4538, 10, 86);
INSERT INTO `sys_role_menu` VALUES (4539, 10, 89);
INSERT INTO `sys_role_menu` VALUES (4540, 10, 1);
INSERT INTO `sys_role_menu` VALUES (4541, 10, 2);
INSERT INTO `sys_role_menu` VALUES (4542, 10, 5);
INSERT INTO `sys_role_menu` VALUES (4543, 10, 14);
INSERT INTO `sys_role_menu` VALUES (4544, 10, 33);
INSERT INTO `sys_role_menu` VALUES (4545, 10, 35);
INSERT INTO `sys_role_menu` VALUES (4546, 10, 47);
INSERT INTO `sys_role_menu` VALUES (4547, 10, 48);
INSERT INTO `sys_role_menu` VALUES (4548, 10, 13);
INSERT INTO `sys_role_menu` VALUES (4549, 10, 15);
INSERT INTO `sys_role_menu` VALUES (4550, 10, 34);
INSERT INTO `sys_role_menu` VALUES (4551, 10, 37);
INSERT INTO `sys_role_menu` VALUES (4552, 10, 38);
INSERT INTO `sys_role_menu` VALUES (4553, 10, 3);
INSERT INTO `sys_role_menu` VALUES (4554, 10, 11);
INSERT INTO `sys_role_menu` VALUES (4555, 10, 30);
INSERT INTO `sys_role_menu` VALUES (4556, 10, 31);
INSERT INTO `sys_role_menu` VALUES (4557, 10, 44);
INSERT INTO `sys_role_menu` VALUES (4558, 10, 16);
INSERT INTO `sys_role_menu` VALUES (4559, 10, 28);
INSERT INTO `sys_role_menu` VALUES (4560, 10, 29);
INSERT INTO `sys_role_menu` VALUES (4561, 10, 36);
INSERT INTO `sys_role_menu` VALUES (4562, 10, 46);
INSERT INTO `sys_role_menu` VALUES (4563, 10, 56);
INSERT INTO `sys_role_menu` VALUES (4564, 10, 72);
INSERT INTO `sys_role_menu` VALUES (4567, 10, 6);
INSERT INTO `sys_role_menu` VALUES (4568, 10, 45);
INSERT INTO `sys_role_menu` VALUES (4569, 10, 68);
INSERT INTO `sys_role_menu` VALUES (4570, 10, 69);
INSERT INTO `sys_role_menu` VALUES (4571, 10, 70);
INSERT INTO `sys_role_menu` VALUES (4572, 10, 71);
INSERT INTO `sys_role_menu` VALUES (4574, 10, 76);
INSERT INTO `sys_role_menu` VALUES (4575, 10, 77);
INSERT INTO `sys_role_menu` VALUES (4576, 10, 87);
INSERT INTO `sys_role_menu` VALUES (4577, 10, 88);
INSERT INTO `sys_role_menu` VALUES (4580, 13, 1);
INSERT INTO `sys_role_menu` VALUES (4581, 13, 2);
INSERT INTO `sys_role_menu` VALUES (4582, 13, 3);
INSERT INTO `sys_role_menu` VALUES (4583, 13, 5);
INSERT INTO `sys_role_menu` VALUES (4584, 13, 6);
INSERT INTO `sys_role_menu` VALUES (4586, 13, 11);
INSERT INTO `sys_role_menu` VALUES (4587, 13, 13);
INSERT INTO `sys_role_menu` VALUES (4588, 13, 14);
INSERT INTO `sys_role_menu` VALUES (4589, 13, 15);
INSERT INTO `sys_role_menu` VALUES (4590, 13, 16);
INSERT INTO `sys_role_menu` VALUES (4592, 13, 28);
INSERT INTO `sys_role_menu` VALUES (4593, 13, 29);
INSERT INTO `sys_role_menu` VALUES (4594, 13, 30);
INSERT INTO `sys_role_menu` VALUES (4595, 13, 31);
INSERT INTO `sys_role_menu` VALUES (4596, 13, 33);
INSERT INTO `sys_role_menu` VALUES (4597, 13, 34);
INSERT INTO `sys_role_menu` VALUES (4598, 13, 35);
INSERT INTO `sys_role_menu` VALUES (4599, 13, 36);
INSERT INTO `sys_role_menu` VALUES (4600, 13, 37);
INSERT INTO `sys_role_menu` VALUES (4601, 13, 38);
INSERT INTO `sys_role_menu` VALUES (4602, 13, 43);
INSERT INTO `sys_role_menu` VALUES (4603, 13, 44);
INSERT INTO `sys_role_menu` VALUES (4604, 13, 45);
INSERT INTO `sys_role_menu` VALUES (4605, 13, 46);
INSERT INTO `sys_role_menu` VALUES (4606, 13, 47);
INSERT INTO `sys_role_menu` VALUES (4607, 13, 48);
INSERT INTO `sys_role_menu` VALUES (4621, 13, 68);
INSERT INTO `sys_role_menu` VALUES (4622, 13, 69);
INSERT INTO `sys_role_menu` VALUES (4623, 13, 70);
INSERT INTO `sys_role_menu` VALUES (4624, 13, 71);
INSERT INTO `sys_role_menu` VALUES (4625, 13, 73);
INSERT INTO `sys_role_menu` VALUES (4626, 13, 74);
INSERT INTO `sys_role_menu` VALUES (4627, 13, 75);
INSERT INTO `sys_role_menu` VALUES (4628, 13, 76);
INSERT INTO `sys_role_menu` VALUES (4629, 13, 77);
INSERT INTO `sys_role_menu` VALUES (4630, 13, 78);
INSERT INTO `sys_role_menu` VALUES (4631, 13, 79);
INSERT INTO `sys_role_menu` VALUES (4632, 13, 80);
INSERT INTO `sys_role_menu` VALUES (4633, 13, 81);
INSERT INTO `sys_role_menu` VALUES (4634, 13, 82);
INSERT INTO `sys_role_menu` VALUES (4635, 13, 83);
INSERT INTO `sys_role_menu` VALUES (4636, 13, 84);
INSERT INTO `sys_role_menu` VALUES (4637, 13, 85);
INSERT INTO `sys_role_menu` VALUES (4638, 13, 86);
INSERT INTO `sys_role_menu` VALUES (4639, 13, 87);
INSERT INTO `sys_role_menu` VALUES (4640, 13, 88);
INSERT INTO `sys_role_menu` VALUES (4641, 13, 89);
INSERT INTO `sys_role_menu` VALUES (4642, 10, 90);
INSERT INTO `sys_role_menu` VALUES (4643, 10, 91);
INSERT INTO `sys_role_menu` VALUES (4644, 13, 90);
INSERT INTO `sys_role_menu` VALUES (4645, 13, 91);
INSERT INTO `sys_role_menu` VALUES (4646, 14, 1);
INSERT INTO `sys_role_menu` VALUES (4647, 14, 2);
INSERT INTO `sys_role_menu` VALUES (4648, 14, 3);
INSERT INTO `sys_role_menu` VALUES (4649, 14, 5);
INSERT INTO `sys_role_menu` VALUES (4650, 14, 6);
INSERT INTO `sys_role_menu` VALUES (4651, 14, 11);
INSERT INTO `sys_role_menu` VALUES (4652, 14, 13);
INSERT INTO `sys_role_menu` VALUES (4653, 14, 14);
INSERT INTO `sys_role_menu` VALUES (4654, 14, 15);
INSERT INTO `sys_role_menu` VALUES (4655, 14, 16);
INSERT INTO `sys_role_menu` VALUES (4656, 14, 28);
INSERT INTO `sys_role_menu` VALUES (4657, 14, 29);
INSERT INTO `sys_role_menu` VALUES (4658, 14, 30);
INSERT INTO `sys_role_menu` VALUES (4659, 14, 31);
INSERT INTO `sys_role_menu` VALUES (4660, 14, 33);
INSERT INTO `sys_role_menu` VALUES (4661, 14, 34);
INSERT INTO `sys_role_menu` VALUES (4662, 14, 35);
INSERT INTO `sys_role_menu` VALUES (4663, 14, 36);
INSERT INTO `sys_role_menu` VALUES (4664, 14, 37);
INSERT INTO `sys_role_menu` VALUES (4665, 14, 38);
INSERT INTO `sys_role_menu` VALUES (4666, 14, 43);
INSERT INTO `sys_role_menu` VALUES (4667, 14, 44);
INSERT INTO `sys_role_menu` VALUES (4668, 14, 45);
INSERT INTO `sys_role_menu` VALUES (4669, 14, 46);
INSERT INTO `sys_role_menu` VALUES (4670, 14, 47);
INSERT INTO `sys_role_menu` VALUES (4671, 14, 48);
INSERT INTO `sys_role_menu` VALUES (4672, 14, 68);
INSERT INTO `sys_role_menu` VALUES (4673, 14, 69);
INSERT INTO `sys_role_menu` VALUES (4674, 14, 70);
INSERT INTO `sys_role_menu` VALUES (4675, 14, 71);
INSERT INTO `sys_role_menu` VALUES (4676, 14, 73);
INSERT INTO `sys_role_menu` VALUES (4677, 14, 74);
INSERT INTO `sys_role_menu` VALUES (4678, 14, 75);
INSERT INTO `sys_role_menu` VALUES (4679, 14, 76);
INSERT INTO `sys_role_menu` VALUES (4680, 14, 77);
INSERT INTO `sys_role_menu` VALUES (4681, 14, 78);
INSERT INTO `sys_role_menu` VALUES (4682, 14, 79);
INSERT INTO `sys_role_menu` VALUES (4683, 14, 80);
INSERT INTO `sys_role_menu` VALUES (4684, 14, 81);
INSERT INTO `sys_role_menu` VALUES (4685, 14, 82);
INSERT INTO `sys_role_menu` VALUES (4686, 14, 83);
INSERT INTO `sys_role_menu` VALUES (4687, 14, 84);
INSERT INTO `sys_role_menu` VALUES (4688, 14, 85);
INSERT INTO `sys_role_menu` VALUES (4689, 14, 86);
INSERT INTO `sys_role_menu` VALUES (4690, 14, 87);
INSERT INTO `sys_role_menu` VALUES (4691, 14, 88);
INSERT INTO `sys_role_menu` VALUES (4692, 14, 89);

-- ----------------------------
-- Table structure for sys_tenant
-- ----------------------------
DROP TABLE IF EXISTS `sys_tenant`;
CREATE TABLE `sys_tenant`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '租户id',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '租户名称',
  `code` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '租户编号',
  `start_time` datetime(0) DEFAULT NULL COMMENT '授权开始时间',
  `end_time` datetime(0) DEFAULT NULL COMMENT '授权结束时间',
  `status` int(11) NOT NULL DEFAULT 0 COMMENT '0正常 9-冻结',
  `del_flag` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '0' COMMENT '删除标记',
  `create_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '租户表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_tenant
-- ----------------------------
INSERT INTO `sys_tenant` VALUES (1, '超级租户', '001', '2020-07-13 00:00:00', '2020-07-14 18:26:09', 0, '0', '2020-07-14 18:26:18', '2020-07-31 14:06:32');
INSERT INTO `sys_tenant` VALUES (3, '测试租户', NULL, '2020-11-27 00:00:00', '2020-11-27 17:16:14', 0, '0', '2020-11-27 17:16:25', '2020-11-27 19:47:49');

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user`  (
  `user_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `username` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '用户名',
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '密码',
  `dept_id` int(10) DEFAULT NULL COMMENT '部门ID',
  `job_id` int(10) DEFAULT NULL COMMENT '岗位ID',
  `email` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL COMMENT '邮箱',
  `phone` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL COMMENT '手机号',
  `avatar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL COMMENT '头像',
  `create_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '修改时间',
  `lock_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT '0' COMMENT '0-正常，1-锁定',
  `del_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT '0' COMMENT '0-正常，1-删除',
  `tenant_id` int(11) DEFAULT NULL COMMENT '租户id',
  PRIMARY KEY (`user_id`) USING BTREE,
  INDEX `user_idx_dept_id`(`dept_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin COMMENT = '用户表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES (11, 'root', '$2a$10$wjqW9lzHbIrDksmKy/v8Iuv3TxUZLerXonqccudfzLKF9wuDTyx6S', 25, NULL, NULL, NULL, NULL, '2020-07-14 18:26:18', '2020-11-27 16:28:49', '0', '0', 1);
INSERT INTO `sys_user` VALUES (13, 'root', '$2a$10$02x2X50tDubNFxvpx0147eScydoz5qJ6BPEsObgiLTp7vH.Wu9fUi', 27, NULL, NULL, NULL, NULL, '2020-11-27 17:16:25', '2020-11-27 18:42:44', '0', '0', 3);

-- ----------------------------
-- Table structure for sys_user_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `user_id` int(10) NOT NULL COMMENT '用户ID',
  `role_id` int(10) NOT NULL COMMENT '角色ID',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 54 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin COMMENT = '用户角色表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------
INSERT INTO `sys_user_role` VALUES (48, 11, 10);
INSERT INTO `sys_user_role` VALUES (52, 12, 13);
INSERT INTO `sys_user_role` VALUES (53, 13, 14);

-- ----------------------------
-- Table structure for up_dtu_datalog
-- ----------------------------
DROP TABLE IF EXISTS `up_dtu_datalog`;
CREATE TABLE `up_dtu_datalog`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `dtu_id` int(10) DEFAULT NULL COMMENT 'dtuid',
  `cust_id` int(10) DEFAULT NULL COMMENT '客户id',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '客户名称',
  `linkman` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '联系人',
  `tel` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '联系电话',
  `user_type` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '用户类型',
  `address` varchar(90) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '地址名称',
  `pktSer` int(10) DEFAULT NULL COMMENT '包序号',
  `pktLen` int(10) DEFAULT NULL COMMENT '指令长度',
  `resType` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '指令类型',
  `protocolVer` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '协议版本',
  `companyNum` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '公司号',
  `deviceType` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '设备类型',
  `deviceAddr` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '设备地址',
  `programVer` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '程序版本',
  `reportType` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '上报类型',
  `singalPower` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '信号强度',
  `powerMode` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '供电方式',
  `powerVotage` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '电源电压',
  `batteryVotage` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '电池电压',
  `termNums` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '终端数量',
  `termAddr` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '终端地址',
  `term1DataLen` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '终端数据长度',
  `term1CommState` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '终端状态',
  `term1DevCompany` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '终端厂家',
  `term1DevType` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '终端类型',
  `term1DevProtocol` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '终端协议版本',
  `term1Data` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '终端1返回数据',
  `term1WenDu` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '终端1温度',
  `term1YaLi` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '终端1压力',
  `term1SSLLGK` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '瞬时工况',
  `term1SSLLBK` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '瞬时工况',
  `term1LJLLGK` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '瞬时工况',
  `term1LJLLBK` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '瞬时工况',
  `term1YuLiang` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '余量',
  `term2DataLen` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '终端数据长度',
  `term2CommState` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '终端状态',
  `term2DevCompany` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '终端厂家',
  `term2DevType` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '终端类型',
  `term2DevProtocol` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '终端协议版本',
  `term2Data` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '终端1返回数据',
  `term2WenDu` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '终端1温度',
  `term2YaLi` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '终端1压力',
  `term2SSLLGK` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '瞬时工况',
  `term2SSLLBK` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '瞬时工况',
  `term2LJLLGK` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '瞬时工况',
  `term2LJLLBK` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '瞬时工况',
  `term2YuLiang` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '余量',
  `term3DataLen` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '终端数据长度',
  `term3CommState` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '终端状态',
  `term3DevCompany` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '终端厂家',
  `term3DevType` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '终端类型',
  `term3DevProtocol` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '终端协议版本',
  `term3Data` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '终端1返回数据',
  `term3WenDu` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '终端1温度',
  `term3YaLi` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '终端1压力',
  `term3SSLLGK` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '瞬时工况',
  `term3SSLLBK` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '瞬时工况',
  `term3LJLLGK` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '瞬时工况',
  `term3LJLLBK` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '瞬时工况',
  `term3YuLiang` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '余量',
  `term4DataLen` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '终端数据长度',
  `term4CommState` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '终端状态',
  `term4DevCompany` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '终端厂家',
  `term4DevType` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '终端类型',
  `term4DevProtocol` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '终端协议版本',
  `term4Data` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '终端1返回数据',
  `term4WenDu` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '终端1温度',
  `term4YaLi` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '终端1压力',
  `term4SSLLGK` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '瞬时工况',
  `term4SSLLBK` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '瞬时工况',
  `term4LJLLGK` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '瞬时工况',
  `term4LJLLBK` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '瞬时工况',
  `term4YuLiang` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '余量',
  `term5Data` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '终端5数据',
  `term6Data` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '终端5数据',
  `term7Data` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '终端5数据',
  `term8Data` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '终端5数据',
  `term9Data` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '终端5数据',
  `term10Data` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '终端5数据',
  `reportTime` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '上报时间',
  `rechargeType` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '充值类型',
  `cmdRes` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '执行结果',
  `befChargeVolume` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '充值前',
  `chargeVolume` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '充值气量',
  `aftChargeVolume` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '充值后',
  `createBy` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `createTime` datetime(0) DEFAULT NULL,
  `lastUpdateBy` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `lastUpdateTime` datetime(0) DEFAULT NULL,
  `tenant_id` int(11) DEFAULT NULL COMMENT '租户id',
  `addr_id` int(11) DEFAULT NULL COMMENT '地址id',
  `firmPktSer` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '包序号',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = 'dtu上报信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of up_dtu_datalog
-- ----------------------------
INSERT INTO `up_dtu_datalog` VALUES (1, 1, 1, '苍南222', '', '', '7', NULL, 1, 25, NULL, '100.0', '3', 'DTU设备', '2020', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-11-27 19:41:43', NULL, '执行成功', NULL, NULL, NULL, NULL, '2020-11-27 19:41:43', NULL, NULL, 3, NULL, NULL);

-- ----------------------------
-- Table structure for up_read_dtu_paras_reply
-- ----------------------------
DROP TABLE IF EXISTS `up_read_dtu_paras_reply`;
CREATE TABLE `up_read_dtu_paras_reply`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `dtu_id` int(10) DEFAULT NULL COMMENT 'dtuid',
  `cust_id` int(10) DEFAULT NULL COMMENT '客户id',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '客户名称',
  `linkman` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '联系人',
  `tel` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '联系电话',
  `user_type` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '用户类型',
  `address` varchar(90) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '地址名称',
  `pktSer` int(10) DEFAULT NULL COMMENT '包序号',
  `pktLen` int(10) DEFAULT NULL COMMENT '指令长度',
  `protocolVer` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '协议版本',
  `companyNum` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '公司号',
  `deviceType` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '设备类型',
  `deviceAddr` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '设备地址',
  `appServerIp` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '应用IP',
  `appServerPort` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '应用端口',
  `confServerIp` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '服务IP',
  `confServerPort` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '服务端口',
  `onlineTime` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '上线时间',
  `onlineInterval` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '上线间隔',
  `termNums` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '终端数量',
  `term1Addr` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '终端地址',
  `term1Type` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '终端类型',
  `term1TermEnable` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '启用状态',
  `term1Company` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '终端厂家',
  `term1Model` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '终端类型',
  `term1Protocol` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '终端协议版本',
  `term1Baud` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '终端1波特率',
  `term1DataBit` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '数据位',
  `term1StopBit` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '停止位',
  `term1ParityBit` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '校验位',
  `term1CommCmd` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '终端1命令',
  `term2Addr` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '终端地址',
  `term2Type` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '终端类型',
  `term2TermEnable` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '启用状态',
  `term2Company` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '终端厂家',
  `term2Model` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '终端类型',
  `term2Protocol` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '终端协议版本',
  `term2Baud` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '终端1波特率',
  `term2DataBit` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '数据位',
  `term2StopBit` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '停止位',
  `term2ParityBit` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '校验位',
  `term2CommCmd` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '终端1命令',
  `term3Addr` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '终端地址',
  `term3Type` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '终端类型',
  `term3TermEnable` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '启用状态',
  `term3Company` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '终端厂家',
  `term3Model` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '终端类型',
  `term3Protocol` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '终端协议版本',
  `term3Baud` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '终端1波特率',
  `term3DataBit` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '数据位',
  `term3StopBit` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '停止位',
  `term3ParityBit` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '校验位',
  `term3CommCmd` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '终端1命令',
  `term4Addr` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '终端地址',
  `term4Type` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '终端类型',
  `term4TermEnable` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '启用状态',
  `term4Company` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '终端厂家',
  `term4Model` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '终端类型',
  `term4Protocol` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '终端协议版本',
  `term4Baud` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '终端1波特率',
  `term4DataBit` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '数据位',
  `term4StopBit` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '停止位',
  `term4ParityBit` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '校验位',
  `term4CommCmd` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '终端1命令',
  `term5Addr` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '地址',
  `term5Type` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '类型',
  `term5TermEnable` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '终端1命令',
  `term6Addr` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '停止位',
  `term6Type` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '校验位',
  `term6TermEnable` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '终端1命令',
  `term7Addr` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '停止位',
  `term7Type` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '校验位',
  `term7TermEnable` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '终端1命令',
  `term8Addr` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '停止位',
  `term8Type` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '校验位',
  `term8TermEnable` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '终端1命令',
  `term9Addr` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '停止位',
  `term9Type` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '校验位',
  `term9TermEnable` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '终端1命令',
  `term10Addr` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '停止位',
  `term10Type` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '校验位',
  `term10TermEnable` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '终端1命令',
  `reportTime` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '上报时间',
  `createBy` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `createTime` datetime(0) DEFAULT NULL,
  `lastUpdateBy` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `lastUpdateTime` datetime(0) DEFAULT NULL,
  `tenant_id` int(11) DEFAULT NULL COMMENT '租户id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '读dtu配置回复表' ROW_FORMAT = Dynamic;

SET FOREIGN_KEY_CHECKS = 1;
