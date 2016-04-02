/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50711
Source Host           : localhost:3306
Source Database       : ecarchargesys

Target Server Type    : MYSQL
Target Server Version : 50711
File Encoding         : 65001

Date: 2016-03-20 23:04:11
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for t_admin
-- ----------------------------
DROP TABLE IF EXISTS `t_admin`;
CREATE TABLE `t_admin` (
  `admin_pk` varchar(32) NOT NULL,
  `admin_id` varchar(32) DEFAULT NULL,
  `admin_name` varchar(255) DEFAULT NULL,
  `admin_password` varchar(255) DEFAULT NULL,
  `admin_type` varchar(255) DEFAULT NULL,
  `admin_status` varchar(255) DEFAULT NULL,
  `admin_phone` varchar(255) DEFAULT NULL,
  `admin_email` varchar(255) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `modify_date` datetime DEFAULT NULL,
  `delete_date` datetime DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`admin_pk`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_admin
-- ----------------------------

-- ----------------------------
-- Table structure for t_charge_order
-- ----------------------------
DROP TABLE IF EXISTS `t_charge_order`;
CREATE TABLE `t_charge_order` (
  `id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_charge_order
-- ----------------------------

-- ----------------------------
-- Table structure for t_charge_point
-- ----------------------------
DROP TABLE IF EXISTS `t_charge_point`;
CREATE TABLE `t_charge_point` (
  `charge_point_key` varchar(255) DEFAULT NULL,
  `charge_point_name` varchar(255) DEFAULT NULL,
  `province` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `street` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `charge_num` int(11) DEFAULT NULL,
  `charge_price` decimal(10,2) DEFAULT NULL,
  `charge_time` datetime DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `modify_date` datetime DEFAULT NULL,
  `delete_date` datetime DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_charge_point
-- ----------------------------

-- ----------------------------
-- Table structure for t_charge_point_ecar
-- ----------------------------
DROP TABLE IF EXISTS `t_charge_point_ecar`;
CREATE TABLE `t_charge_point_ecar` (
  `id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_charge_point_ecar
-- ----------------------------

-- ----------------------------
-- Table structure for t_ecar
-- ----------------------------
DROP TABLE IF EXISTS `t_ecar`;
CREATE TABLE `t_ecar` (
  `ecar_id` int(11) DEFAULT NULL,
  `ecar_brand_name` varchar(255) DEFAULT NULL,
  `ecar_model` varchar(255) DEFAULT NULL,
  `ecar_pic` varchar(255) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `modify_date` datetime DEFAULT NULL,
  `delete_date` datetime DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_ecar
-- ----------------------------

-- ----------------------------
-- Table structure for t_user
-- ----------------------------
DROP TABLE IF EXISTS `t_user`;
CREATE TABLE `t_user` (
  `user_pk` varchar(32) NOT NULL,
  `user_id` varchar(32) NOT NULL,
  `user_name` varchar(64) NOT NULL,
  `user_password` varchar(64) NOT NULL,
  `user_type` int(1) DEFAULT NULL,
  `user_status` int(1) DEFAULT NULL,
  `user_phone` varchar(255) DEFAULT NULL,
  `user_email` varchar(255) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `modify_date` datetime DEFAULT NULL,
  `delete_date` datetime DEFAULT NULL,
  `status` int(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`user_pk`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_user
-- ----------------------------
INSERT INTO `t_user` VALUES ('234240b4576c43559064fcb56e15d1d9', 'wulonghuai', '吴龙怀', 'wlh1992111', '1', '1', '18046498578', '1053216036@qq.com', '2016-03-19 17:22:26', null, null, '1');
INSERT INTO `t_user` VALUES ('95e5cf2ce4af46518aa2f952dabdf5d9', 'wlh1299', 'wlh1299', 'wlh1992111', '1', '1', '18046498578', '10@qq.com', '2016-03-19 18:25:02', null, null, '1');
INSERT INTO `t_user` VALUES ('9de5c3e9ac03430291a7b6215d0b66cf', 'chj', 'chj', 'chj1234', '1', '1', '18046498578', 'chj@qq.com', '2016-03-19 18:49:59', null, null, '1');

-- ----------------------------
-- Table structure for t_user_ecar
-- ----------------------------
DROP TABLE IF EXISTS `t_user_ecar`;
CREATE TABLE `t_user_ecar` (
  `ref_key` varchar(32) NOT NULL,
  `user_id` varchar(32) DEFAULT NULL,
  `ecar_id` varchar(32) DEFAULT NULL,
  `charge_status` varchar(255) DEFAULT NULL,
  `license_plate` varchar(255) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `modify_date` datetime DEFAULT NULL,
  `delete_date` datetime DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  PRIMARY KEY (`ref_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_user_ecar
-- ----------------------------
