/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 50744
 Source Host           : localhost:3306
 Source Schema         : python_travel2

 Target Server Type    : MySQL
 Target Server Version : 50744
 File Encoding         : 65001

 Date: 06/06/2024 21:12:44
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for auth_group
-- ----------------------------
DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE `auth_group`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `name`(`name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_group
-- ----------------------------

-- ----------------------------
-- Table structure for auth_group_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_group_permissions`;
CREATE TABLE `auth_group_permissions`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_group_permissions_group_id_permission_id_0cd325b0_uniq`(`group_id`, `permission_id`) USING BTREE,
  INDEX `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm`(`permission_id`) USING BTREE,
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_group_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for auth_permission
-- ----------------------------
DROP TABLE IF EXISTS `auth_permission`;
CREATE TABLE `auth_permission`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_permission_content_type_id_codename_01ab375a_uniq`(`content_type_id`, `codename`) USING BTREE,
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 73 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_permission
-- ----------------------------
INSERT INTO `auth_permission` VALUES (1, 'Can add log entry', 1, 'add_logentry');
INSERT INTO `auth_permission` VALUES (2, 'Can change log entry', 1, 'change_logentry');
INSERT INTO `auth_permission` VALUES (3, 'Can delete log entry', 1, 'delete_logentry');
INSERT INTO `auth_permission` VALUES (4, 'Can view log entry', 1, 'view_logentry');
INSERT INTO `auth_permission` VALUES (5, 'Can add permission', 2, 'add_permission');
INSERT INTO `auth_permission` VALUES (6, 'Can change permission', 2, 'change_permission');
INSERT INTO `auth_permission` VALUES (7, 'Can delete permission', 2, 'delete_permission');
INSERT INTO `auth_permission` VALUES (8, 'Can view permission', 2, 'view_permission');
INSERT INTO `auth_permission` VALUES (9, 'Can add group', 3, 'add_group');
INSERT INTO `auth_permission` VALUES (10, 'Can change group', 3, 'change_group');
INSERT INTO `auth_permission` VALUES (11, 'Can delete group', 3, 'delete_group');
INSERT INTO `auth_permission` VALUES (12, 'Can view group', 3, 'view_group');
INSERT INTO `auth_permission` VALUES (13, 'Can add user', 4, 'add_user');
INSERT INTO `auth_permission` VALUES (14, 'Can change user', 4, 'change_user');
INSERT INTO `auth_permission` VALUES (15, 'Can delete user', 4, 'delete_user');
INSERT INTO `auth_permission` VALUES (16, 'Can view user', 4, 'view_user');
INSERT INTO `auth_permission` VALUES (17, 'Can add content type', 5, 'add_contenttype');
INSERT INTO `auth_permission` VALUES (18, 'Can change content type', 5, 'change_contenttype');
INSERT INTO `auth_permission` VALUES (19, 'Can delete content type', 5, 'delete_contenttype');
INSERT INTO `auth_permission` VALUES (20, 'Can view content type', 5, 'view_contenttype');
INSERT INTO `auth_permission` VALUES (21, 'Can add session', 6, 'add_session');
INSERT INTO `auth_permission` VALUES (22, 'Can change session', 6, 'change_session');
INSERT INTO `auth_permission` VALUES (23, 'Can delete session', 6, 'delete_session');
INSERT INTO `auth_permission` VALUES (24, 'Can view session', 6, 'view_session');
INSERT INTO `auth_permission` VALUES (25, 'Can add ad', 7, 'add_ad');
INSERT INTO `auth_permission` VALUES (26, 'Can change ad', 7, 'change_ad');
INSERT INTO `auth_permission` VALUES (27, 'Can delete ad', 7, 'delete_ad');
INSERT INTO `auth_permission` VALUES (28, 'Can view ad', 7, 'view_ad');
INSERT INTO `auth_permission` VALUES (29, 'Can add classification', 8, 'add_classification');
INSERT INTO `auth_permission` VALUES (30, 'Can change classification', 8, 'change_classification');
INSERT INTO `auth_permission` VALUES (31, 'Can delete classification', 8, 'delete_classification');
INSERT INTO `auth_permission` VALUES (32, 'Can view classification', 8, 'view_classification');
INSERT INTO `auth_permission` VALUES (33, 'Can add error log', 9, 'add_errorlog');
INSERT INTO `auth_permission` VALUES (34, 'Can change error log', 9, 'change_errorlog');
INSERT INTO `auth_permission` VALUES (35, 'Can delete error log', 9, 'delete_errorlog');
INSERT INTO `auth_permission` VALUES (36, 'Can view error log', 9, 'view_errorlog');
INSERT INTO `auth_permission` VALUES (37, 'Can add login log', 10, 'add_loginlog');
INSERT INTO `auth_permission` VALUES (38, 'Can change login log', 10, 'change_loginlog');
INSERT INTO `auth_permission` VALUES (39, 'Can delete login log', 10, 'delete_loginlog');
INSERT INTO `auth_permission` VALUES (40, 'Can view login log', 10, 'view_loginlog');
INSERT INTO `auth_permission` VALUES (41, 'Can add notice', 11, 'add_notice');
INSERT INTO `auth_permission` VALUES (42, 'Can change notice', 11, 'change_notice');
INSERT INTO `auth_permission` VALUES (43, 'Can delete notice', 11, 'delete_notice');
INSERT INTO `auth_permission` VALUES (44, 'Can view notice', 11, 'view_notice');
INSERT INTO `auth_permission` VALUES (45, 'Can add op log', 12, 'add_oplog');
INSERT INTO `auth_permission` VALUES (46, 'Can change op log', 12, 'change_oplog');
INSERT INTO `auth_permission` VALUES (47, 'Can delete op log', 12, 'delete_oplog');
INSERT INTO `auth_permission` VALUES (48, 'Can view op log', 12, 'view_oplog');
INSERT INTO `auth_permission` VALUES (49, 'Can add user', 13, 'add_user');
INSERT INTO `auth_permission` VALUES (50, 'Can change user', 13, 'change_user');
INSERT INTO `auth_permission` VALUES (51, 'Can delete user', 13, 'delete_user');
INSERT INTO `auth_permission` VALUES (52, 'Can view user', 13, 'view_user');
INSERT INTO `auth_permission` VALUES (53, 'Can add thing', 14, 'add_thing');
INSERT INTO `auth_permission` VALUES (54, 'Can change thing', 14, 'change_thing');
INSERT INTO `auth_permission` VALUES (55, 'Can delete thing', 14, 'delete_thing');
INSERT INTO `auth_permission` VALUES (56, 'Can view thing', 14, 'view_thing');
INSERT INTO `auth_permission` VALUES (57, 'Can add record', 15, 'add_record');
INSERT INTO `auth_permission` VALUES (58, 'Can change record', 15, 'change_record');
INSERT INTO `auth_permission` VALUES (59, 'Can delete record', 15, 'delete_record');
INSERT INTO `auth_permission` VALUES (60, 'Can view record', 15, 'view_record');
INSERT INTO `auth_permission` VALUES (61, 'Can add order', 16, 'add_order');
INSERT INTO `auth_permission` VALUES (62, 'Can change order', 16, 'change_order');
INSERT INTO `auth_permission` VALUES (63, 'Can delete order', 16, 'delete_order');
INSERT INTO `auth_permission` VALUES (64, 'Can view order', 16, 'view_order');
INSERT INTO `auth_permission` VALUES (65, 'Can add comment', 17, 'add_comment');
INSERT INTO `auth_permission` VALUES (66, 'Can change comment', 17, 'change_comment');
INSERT INTO `auth_permission` VALUES (67, 'Can delete comment', 17, 'delete_comment');
INSERT INTO `auth_permission` VALUES (68, 'Can view comment', 17, 'view_comment');
INSERT INTO `auth_permission` VALUES (69, 'Can add feedback', 18, 'add_feedback');
INSERT INTO `auth_permission` VALUES (70, 'Can change feedback', 18, 'change_feedback');
INSERT INTO `auth_permission` VALUES (71, 'Can delete feedback', 18, 'delete_feedback');
INSERT INTO `auth_permission` VALUES (72, 'Can view feedback', 18, 'view_feedback');

-- ----------------------------
-- Table structure for auth_user
-- ----------------------------
DROP TABLE IF EXISTS `auth_user`;
CREATE TABLE `auth_user`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `last_login` datetime(6) NULL DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `first_name` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `last_name` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `email` varchar(254) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `username`(`username`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_user
-- ----------------------------

-- ----------------------------
-- Table structure for auth_user_groups
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_groups`;
CREATE TABLE `auth_user_groups`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_user_groups_user_id_group_id_94350c0c_uniq`(`user_id`, `group_id`) USING BTREE,
  INDEX `auth_user_groups_group_id_97559544_fk_auth_group_id`(`group_id`) USING BTREE,
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_user_groups
-- ----------------------------

-- ----------------------------
-- Table structure for auth_user_user_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_user_permissions`;
CREATE TABLE `auth_user_user_permissions`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq`(`user_id`, `permission_id`) USING BTREE,
  INDEX `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm`(`permission_id`) USING BTREE,
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_user_user_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for b_ad
-- ----------------------------
DROP TABLE IF EXISTS `b_ad`;
CREATE TABLE `b_ad`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `image` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `link` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` datetime(6) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_ad
-- ----------------------------
INSERT INTO `b_ad` VALUES (1, 'ad/1717593454802.jpeg', 'https://www.baidu.com/', '2024-06-05 21:17:46.388918');
INSERT INTO `b_ad` VALUES (2, 'ad/1717593470489.jpeg', 'https://www.gitapp.cn', '2024-06-05 21:17:53.854946');

-- ----------------------------
-- Table structure for b_classification
-- ----------------------------
DROP TABLE IF EXISTS `b_classification`;
CREATE TABLE `b_classification`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` datetime(6) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_classification
-- ----------------------------
INSERT INTO `b_classification` VALUES (1, '观光游览', '2024-06-05 20:28:24.692537');
INSERT INTO `b_classification` VALUES (2, '历史古迹', '2024-06-05 20:28:29.844431');
INSERT INTO `b_classification` VALUES (3, '民俗风情', '2024-06-05 20:28:38.214504');
INSERT INTO `b_classification` VALUES (4, '文学艺术', '2024-06-05 20:28:47.589835');
INSERT INTO `b_classification` VALUES (5, '科学探险', '2024-06-05 20:28:53.507602');
INSERT INTO `b_classification` VALUES (6, '网红风情', '2024-06-05 20:29:09.926362');
INSERT INTO `b_classification` VALUES (7, '农家风情', '2024-06-05 20:29:19.159722');
INSERT INTO `b_classification` VALUES (8, '古风特色', '2024-06-05 20:29:37.659187');

-- ----------------------------
-- Table structure for b_comment
-- ----------------------------
DROP TABLE IF EXISTS `b_comment`;
CREATE TABLE `b_comment`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `content` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `comment_time` datetime(6) NULL DEFAULT NULL,
  `like_count` int(11) NOT NULL,
  `thing_id` bigint(20) NULL DEFAULT NULL,
  `user_id` bigint(20) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `b_comment_thing_id_57ab492b_fk_b_thing_id`(`thing_id`) USING BTREE,
  INDEX `b_comment_user_id_46f0670f_fk_b_user_id`(`user_id`) USING BTREE,
  CONSTRAINT `b_comment_thing_id_57ab492b_fk_b_thing_id` FOREIGN KEY (`thing_id`) REFERENCES `b_thing` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `b_comment_user_id_46f0670f_fk_b_user_id` FOREIGN KEY (`user_id`) REFERENCES `b_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 26 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_comment
-- ----------------------------
INSERT INTO `b_comment` VALUES (1, '332', '2024-06-05 20:58:56.151712', 0, 4, 3);
INSERT INTO `b_comment` VALUES (2, '111', '2024-06-05 21:21:44.841534', 2, 3, 3);
INSERT INTO `b_comment` VALUES (3, '322', '2024-06-05 21:22:08.588072', 0, 3, 3);
INSERT INTO `b_comment` VALUES (4, 'ggg', '2024-06-06 20:43:41.455425', 0, 9, 3);
INSERT INTO `b_comment` VALUES (5, 'sdf', '2024-06-06 20:43:43.826517', 0, 9, 3);
INSERT INTO `b_comment` VALUES (6, 'dd', '2024-06-06 20:44:53.549469', 0, 14, 4);
INSERT INTO `b_comment` VALUES (7, 'ff', '2024-06-06 20:44:53.573510', 0, 14, 4);
INSERT INTO `b_comment` VALUES (8, 'sss', '2024-06-06 20:44:56.241291', 0, 14, 4);
INSERT INTO `b_comment` VALUES (9, 'dass', '2024-06-06 20:44:57.924899', 0, 14, 4);
INSERT INTO `b_comment` VALUES (10, 'fddd', '2024-06-06 20:44:59.774890', 0, 14, 4);
INSERT INTO `b_comment` VALUES (11, '33444444', '2024-06-06 20:45:02.581713', 0, 14, 4);
INSERT INTO `b_comment` VALUES (12, 'aaaaaa', '2024-06-06 20:45:04.534843', 0, 14, 4);
INSERT INTO `b_comment` VALUES (13, 'sssss', '2024-06-06 20:45:06.251730', 0, 14, 4);
INSERT INTO `b_comment` VALUES (14, '哈哈哈哈', '2024-06-06 20:45:10.935516', 0, 14, 4);
INSERT INTO `b_comment` VALUES (15, '哈哈哈哈哈', '2024-06-06 20:45:13.351449', 0, 14, 4);
INSERT INTO `b_comment` VALUES (16, '哈哈哈', '2024-06-06 20:45:19.570072', 0, 4, 4);
INSERT INTO `b_comment` VALUES (17, '哈哈哈哈', '2024-06-06 20:45:22.338989', 1, 4, 4);
INSERT INTO `b_comment` VALUES (18, '哈哈哈哈哈', '2024-06-06 20:45:24.754453', 1, 4, 4);
INSERT INTO `b_comment` VALUES (19, '哈哈哈', '2024-06-06 20:45:35.673127', 0, 3, 4);
INSERT INTO `b_comment` VALUES (20, '5666', '2024-06-06 20:45:43.268362', 0, 1, 4);
INSERT INTO `b_comment` VALUES (21, '555', '2024-06-06 20:45:44.484463', 0, 1, 4);
INSERT INTO `b_comment` VALUES (22, '444', '2024-06-06 20:45:45.604366', 0, 1, 4);
INSERT INTO `b_comment` VALUES (23, '55', '2024-06-06 20:45:46.614093', 0, 1, 4);
INSERT INTO `b_comment` VALUES (24, '333', '2024-06-06 20:45:48.310578', 0, 1, 4);
INSERT INTO `b_comment` VALUES (25, '443', '2024-06-06 20:45:52.891301', 0, 2, 4);

-- ----------------------------
-- Table structure for b_error_log
-- ----------------------------
DROP TABLE IF EXISTS `b_error_log`;
CREATE TABLE `b_error_log`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `ip` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `url` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `method` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `content` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `log_time` datetime(6) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_error_log
-- ----------------------------
INSERT INTO `b_error_log` VALUES (1, '127.0.0.1', '/myapp/index/thing/getCollectThingList', 'GET', '操作失败User matching query does not exist.', '2024-06-03 22:30:02.603225');
INSERT INTO `b_error_log` VALUES (2, '127.0.0.1', '/myapp/index/thing/getWishThingList', 'GET', '操作失败User matching query does not exist.', '2024-06-03 22:30:02.607851');

-- ----------------------------
-- Table structure for b_feedback
-- ----------------------------
DROP TABLE IF EXISTS `b_feedback`;
CREATE TABLE `b_feedback`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `content` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `email` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `mobile` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` datetime(6) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_feedback
-- ----------------------------
INSERT INTO `b_feedback` VALUES (1, '测试反馈221111', 'dasdf', '刘德华', '', NULL, '2024-06-05 21:19:44.587632');
INSERT INTO `b_feedback` VALUES (2, '王丽丽', '哈哈哈哈很好2233', '王宝强', '222011@gmail.com', '23581651333', '2024-06-05 21:20:16.108955');
INSERT INTO `b_feedback` VALUES (3, '测试反馈99999', 'hhhhhhhhhhhhello hello', 'tom', '9881@gmail.com', '9876789', '2024-06-05 21:20:53.168362');
INSERT INTO `b_feedback` VALUES (4, '测试999888', '测试哈哈哈哈', '刘德华', '33311@gmail.com', '332221651534', '2024-06-06 20:51:57.769357');
INSERT INTO `b_feedback` VALUES (5, '测试反馈123', '哈哈哈顶顶顶32222', '小明', '211ww2011@gmail.com', '32581651534', '2024-06-06 20:52:34.173015');

-- ----------------------------
-- Table structure for b_login_log
-- ----------------------------
DROP TABLE IF EXISTS `b_login_log`;
CREATE TABLE `b_login_log`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ip` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ua` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `log_time` datetime(6) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_login_log
-- ----------------------------
INSERT INTO `b_login_log` VALUES (1, 'admin', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '2024-06-03 22:29:23.817478');
INSERT INTO `b_login_log` VALUES (2, 'admin123', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '2024-06-03 22:29:46.135929');
INSERT INTO `b_login_log` VALUES (3, 'admin', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '2024-06-03 22:29:53.947562');
INSERT INTO `b_login_log` VALUES (4, 'ddd', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '2024-06-03 22:30:15.897142');
INSERT INTO `b_login_log` VALUES (5, 'ddd', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '2024-06-05 20:59:02.936170');
INSERT INTO `b_login_log` VALUES (6, 'ccc', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '2024-06-06 20:44:23.585430');

-- ----------------------------
-- Table structure for b_notice
-- ----------------------------
DROP TABLE IF EXISTS `b_notice`;
CREATE TABLE `b_notice`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `content` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` datetime(6) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_notice
-- ----------------------------
INSERT INTO `b_notice` VALUES (1, '测试服务333', '哈哈哈哈你好', '2024-06-05 21:18:04.789204');
INSERT INTO `b_notice` VALUES (2, '五一泰山通知', '测试通知22211', '2024-06-05 21:18:34.006212');
INSERT INTO `b_notice` VALUES (3, '十一北京景区', '哈哈哈哈99888', '2024-06-05 21:18:45.559508');
INSERT INTO `b_notice` VALUES (4, '测试通知8877', '00998876哈哈哈哈', '2024-06-05 21:18:58.346794');

-- ----------------------------
-- Table structure for b_op_log
-- ----------------------------
DROP TABLE IF EXISTS `b_op_log`;
CREATE TABLE `b_op_log`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `re_ip` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `re_time` datetime(6) NULL DEFAULT NULL,
  `re_url` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `re_method` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `re_content` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `access_time` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1580 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_op_log
-- ----------------------------
INSERT INTO `b_op_log` VALUES (1286, '127.0.0.1', '2024-06-06 20:48:59.934669', '/myapp/admin/opLog/clear', 'POST', NULL, '42');
INSERT INTO `b_op_log` VALUES (1287, '127.0.0.1', '2024-06-06 20:49:01.151435', '/myapp/admin/errorLog/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (1288, '127.0.0.1', '2024-06-06 20:49:01.743321', '/myapp/admin/loginLog/list', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (1289, '127.0.0.1', '2024-06-06 20:49:10.284707', '/myapp/admin/opLog/list', 'GET', NULL, '35');
INSERT INTO `b_op_log` VALUES (1290, '127.0.0.1', '2024-06-06 20:49:12.093524', '/myapp/admin/overview/count', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (1291, '127.0.0.1', '2024-06-06 20:49:14.972431', '/myapp/admin/feedback/list', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (1292, '127.0.0.1', '2024-06-06 20:49:17.144066', '/myapp/admin/overview/sysInfo', 'GET', NULL, '1097');
INSERT INTO `b_op_log` VALUES (1293, '127.0.0.1', '2024-06-06 20:51:34.031295', '/myapp/index/user/info', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (1294, '127.0.0.1', '2024-06-06 20:51:34.039262', '/myapp/index/user/info', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (1295, '127.0.0.1', '2024-06-06 20:51:57.777682', '/myapp/index/feedback/create', 'POST', NULL, '8');
INSERT INTO `b_op_log` VALUES (1296, '127.0.0.1', '2024-06-06 20:52:00.216717', '/myapp/index/user/info', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (1297, '127.0.0.1', '2024-06-06 20:52:00.232068', '/myapp/index/user/info', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (1298, '127.0.0.1', '2024-06-06 20:52:01.231537', '/myapp/admin/feedback/list', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (1299, '127.0.0.1', '2024-06-06 20:52:34.185122', '/myapp/index/feedback/create', 'POST', NULL, '20');
INSERT INTO `b_op_log` VALUES (1300, '127.0.0.1', '2024-06-06 20:52:37.951448', '/myapp/admin/overview/count', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (1301, '127.0.0.1', '2024-06-06 20:52:38.430399', '/myapp/index/user/info', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (1302, '127.0.0.1', '2024-06-06 20:52:38.430399', '/myapp/index/user/info', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (1303, '127.0.0.1', '2024-06-06 20:52:38.598716', '/myapp/admin/feedback/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (1304, '127.0.0.1', '2024-06-06 20:52:46.292068', '/myapp/index/user/info', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (1305, '127.0.0.1', '2024-06-06 20:52:46.297075', '/myapp/index/user/info', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (1306, '127.0.0.1', '2024-06-06 20:52:46.301320', '/myapp/index/user/info', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (1307, '127.0.0.1', '2024-06-06 20:52:46.346505', '/myapp/index/user/info', 'GET', NULL, '77');
INSERT INTO `b_op_log` VALUES (1308, '127.0.0.1', '2024-06-06 20:52:46.417166', '/upload/cover/1717677397280.jpeg', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (1309, '127.0.0.1', '2024-06-06 20:52:46.417166', '/upload/cover/1717677397280.jpeg', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (1310, '127.0.0.1', '2024-06-06 20:52:46.434595', '/upload/cover/1717677359494.jpeg', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (1311, '127.0.0.1', '2024-06-06 20:52:46.442672', '/upload/cover/1717677359494.jpeg', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (1312, '127.0.0.1', '2024-06-06 20:52:46.442672', '/upload/cover/1717677213029.jpeg', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (1313, '127.0.0.1', '2024-06-06 20:52:46.446536', '/upload/cover/1717677213029.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (1314, '127.0.0.1', '2024-06-06 20:52:46.458356', '/upload/cover/1717677259228.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (1315, '127.0.0.1', '2024-06-06 20:52:46.469857', '/upload/cover/1717677259228.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (1316, '127.0.0.1', '2024-06-06 20:52:48.650005', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (1317, '127.0.0.1', '2024-06-06 20:52:48.655163', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (1318, '127.0.0.1', '2024-06-06 20:52:48.693823', '/myapp/index/user/info', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (1319, '127.0.0.1', '2024-06-06 20:52:48.698179', '/myapp/index/user/info', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (1320, '127.0.0.1', '2024-06-06 20:52:48.712357', '/myapp/index/user/info', 'GET', NULL, '34');
INSERT INTO `b_op_log` VALUES (1321, '127.0.0.1', '2024-06-06 20:52:48.731807', '/myapp/index/user/info', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (1322, '127.0.0.1', '2024-06-06 20:52:55.994197', '/myapp/index/user/update', 'POST', NULL, '49');
INSERT INTO `b_op_log` VALUES (1323, '127.0.0.1', '2024-06-06 20:52:57.899504', '/myapp/index/user/info', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (1324, '127.0.0.1', '2024-06-06 20:52:57.917319', '/myapp/index/user/info', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (1325, '127.0.0.1', '2024-06-06 20:52:57.931839', '/myapp/index/user/info', 'GET', NULL, '47');
INSERT INTO `b_op_log` VALUES (1326, '127.0.0.1', '2024-06-06 20:52:57.953269', '/myapp/index/user/info', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (1327, '127.0.0.1', '2024-06-06 20:52:57.969752', '/upload/avatar/1717678373633.jpeg', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (1328, '127.0.0.1', '2024-06-06 20:52:57.996167', '/myapp/index/user/info', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (1329, '127.0.0.1', '2024-06-06 20:52:57.999789', '/myapp/index/user/info', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (1330, '127.0.0.1', '2024-06-06 20:53:55.238053', '/myapp/index/user/update', 'POST', NULL, '40');
INSERT INTO `b_op_log` VALUES (1331, '127.0.0.1', '2024-06-06 20:54:27.950494', '/myapp/index/order/list', 'GET', NULL, '41');
INSERT INTO `b_op_log` VALUES (1332, '127.0.0.1', '2024-06-06 20:54:28.024995', '/upload/cover/1717677436900.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (1333, '127.0.0.1', '2024-06-06 20:54:28.026080', '/upload/cover/1717677436900.jpeg', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (1334, '127.0.0.1', '2024-06-06 20:54:29.099541', '/myapp/index/user/info', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (1335, '127.0.0.1', '2024-06-06 20:54:29.153892', '/upload/avatar/1717678373633.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (1336, '127.0.0.1', '2024-06-06 20:54:35.574349', '/myapp/index/user/update', 'POST', NULL, '30');
INSERT INTO `b_op_log` VALUES (1337, '127.0.0.1', '2024-06-06 20:54:37.047178', '/myapp/index/thing/getWishThingList', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (1338, '127.0.0.1', '2024-06-06 20:54:37.057297', '/myapp/index/thing/getWishThingList', 'GET', NULL, '39');
INSERT INTO `b_op_log` VALUES (1339, '127.0.0.1', '2024-06-06 20:54:37.082805', '/myapp/index/thing/getWishThingList', 'GET', NULL, '66');
INSERT INTO `b_op_log` VALUES (1340, '127.0.0.1', '2024-06-06 20:54:37.099194', '/myapp/index/user/info', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (1341, '127.0.0.1', '2024-06-06 20:54:37.119325', '/upload/avatar/1717678474365.jpeg', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (1342, '127.0.0.1', '2024-06-06 20:54:37.152281', '/myapp/index/user/info', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (1343, '127.0.0.1', '2024-06-06 20:54:37.152281', '/myapp/index/user/info', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (1344, '127.0.0.1', '2024-06-06 20:54:39.755505', '/myapp/index/thing/listUserThing', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (1345, '127.0.0.1', '2024-06-06 20:54:39.760907', '/myapp/index/thing/listUserThing', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (1346, '127.0.0.1', '2024-06-06 20:54:41.696694', '/myapp/index/order/list', 'GET', NULL, '48');
INSERT INTO `b_op_log` VALUES (1347, '127.0.0.1', '2024-06-06 20:54:43.762308', '/myapp/index/comment/listMyComments', 'GET', NULL, '107');
INSERT INTO `b_op_log` VALUES (1348, '127.0.0.1', '2024-06-06 20:54:47.081338', '/myapp/index/user/info', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (1349, '127.0.0.1', '2024-06-06 20:54:49.582560', '/myapp/index/notice/list_api', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (1350, '127.0.0.1', '2024-06-06 20:55:58.002189', '/myapp/admin/feedback/list', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (1351, '127.0.0.1', '2024-06-06 20:55:58.400106', '/myapp/index/thing/list', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (1352, '127.0.0.1', '2024-06-06 20:55:58.400106', '/myapp/index/thing/list', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (1353, '127.0.0.1', '2024-06-06 20:55:58.411443', '/myapp/index/thing/list', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (1354, '127.0.0.1', '2024-06-06 20:55:58.458437', '/upload/avatar/1717678474365.jpeg', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (1355, '127.0.0.1', '2024-06-06 20:55:58.474844', '/upload/avatar/1717678474365.jpeg', 'GET', NULL, '40');
INSERT INTO `b_op_log` VALUES (1356, '127.0.0.1', '2024-06-06 20:55:58.517604', '/upload/cover/1717677472977.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (1357, '127.0.0.1', '2024-06-06 20:55:58.517923', '/upload/cover/1717677306235.jpeg', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (1358, '127.0.0.1', '2024-06-06 20:55:58.524802', '/upload/cover/1717677306235.jpeg', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (1359, '127.0.0.1', '2024-06-06 20:55:58.548515', '/upload/cover/1717677213029.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (1360, '127.0.0.1', '2024-06-06 20:55:58.548515', '/upload/cover/1717677213029.jpeg', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (1361, '127.0.0.1', '2024-06-06 20:55:59.970339', '/myapp/index/thing/getWishThingList', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (1362, '127.0.0.1', '2024-06-06 20:55:59.993201', '/myapp/index/thing/getWishThingList', 'GET', NULL, '34');
INSERT INTO `b_op_log` VALUES (1363, '127.0.0.1', '2024-06-06 20:56:00.043440', '/myapp/index/notice/list_api', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (1364, '127.0.0.1', '2024-06-06 20:56:00.051687', '/myapp/index/notice/list_api', 'GET', NULL, '35');
INSERT INTO `b_op_log` VALUES (1365, '127.0.0.1', '2024-06-06 20:56:00.064690', '/myapp/index/notice/list_api', 'GET', NULL, '43');
INSERT INTO `b_op_log` VALUES (1366, '127.0.0.1', '2024-06-06 20:56:00.066171', '/myapp/index/notice/list_api', 'GET', NULL, '49');
INSERT INTO `b_op_log` VALUES (1367, '127.0.0.1', '2024-06-06 20:56:03.294197', '/myapp/index/thing/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (1368, '127.0.0.1', '2024-06-06 20:56:03.294197', '/myapp/index/thing/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (1369, '127.0.0.1', '2024-06-06 20:56:03.313559', '/myapp/index/thing/list', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (1370, '127.0.0.1', '2024-06-06 20:56:03.379207', '/myapp/index/thing/list', 'GET', NULL, '94');
INSERT INTO `b_op_log` VALUES (1371, '127.0.0.1', '2024-06-06 21:00:55.008773', '/myapp/index/user/info', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (1372, '127.0.0.1', '2024-06-06 21:00:55.008773', '/myapp/index/user/info', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (1373, '127.0.0.1', '2024-06-06 21:00:55.026837', '/myapp/index/user/info', 'GET', NULL, '35');
INSERT INTO `b_op_log` VALUES (1374, '127.0.0.1', '2024-06-06 21:00:55.058359', '/upload/avatar/1717678474365.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (1375, '127.0.0.1', '2024-06-06 21:00:55.064960', '/upload/avatar/1717678474365.jpeg', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (1376, '127.0.0.1', '2024-06-06 21:00:55.106310', '/upload/cover/1717677397280.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (1377, '127.0.0.1', '2024-06-06 21:00:55.108418', '/upload/cover/1717677397280.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (1378, '127.0.0.1', '2024-06-06 21:00:55.108418', '/upload/cover/1717677359494.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (1379, '127.0.0.1', '2024-06-06 21:00:55.113746', '/upload/cover/1717677259228.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (1380, '127.0.0.1', '2024-06-06 21:00:55.127450', '/upload/cover/1717677259228.jpeg', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (1381, '127.0.0.1', '2024-06-06 21:00:55.127450', '/upload/cover/1717677259228.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (1382, '127.0.0.1', '2024-06-06 21:00:55.127450', '/upload/cover/1717674643980.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (1383, '127.0.0.1', '2024-06-06 21:00:55.127450', '/upload/cover/1717677213029.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (1384, '127.0.0.1', '2024-06-06 21:01:02.203510', '/myapp/index/thing/getRecommend', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (1385, '127.0.0.1', '2024-06-06 21:01:02.208169', '/myapp/index/thing/getRecommend', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (1386, '127.0.0.1', '2024-06-06 21:01:02.257866', '/myapp/index/thing/getRecommend', 'GET', NULL, '74');
INSERT INTO `b_op_log` VALUES (1387, '127.0.0.1', '2024-06-06 21:01:02.858746', '/myapp/index/thing/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (1388, '127.0.0.1', '2024-06-06 21:01:02.873680', '/myapp/index/thing/list', 'GET', NULL, '39');
INSERT INTO `b_op_log` VALUES (1389, '127.0.0.1', '2024-06-06 21:01:02.890326', '/myapp/index/thing/list', 'GET', NULL, '56');
INSERT INTO `b_op_log` VALUES (1390, '127.0.0.1', '2024-06-06 21:01:02.925575', '/myapp/index/thing/list', 'GET', NULL, '91');
INSERT INTO `b_op_log` VALUES (1391, '127.0.0.1', '2024-06-06 21:02:16.797805', '/myapp/index/thing/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (1392, '127.0.0.1', '2024-06-06 21:02:16.810386', '/myapp/index/thing/list', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (1393, '127.0.0.1', '2024-06-06 21:02:16.810386', '/myapp/index/thing/list', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (1394, '127.0.0.1', '2024-06-06 21:02:16.843870', '/upload/avatar/1717678474365.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (1395, '127.0.0.1', '2024-06-06 21:02:16.861592', '/upload/avatar/1717678474365.jpeg', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (1396, '127.0.0.1', '2024-06-06 21:02:19.954239', '/myapp/index/user/info', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (1397, '127.0.0.1', '2024-06-06 21:02:19.966209', '/myapp/index/user/info', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (1398, '127.0.0.1', '2024-06-06 21:02:20.022041', '/myapp/index/user/info', 'GET', NULL, '73');
INSERT INTO `b_op_log` VALUES (1399, '127.0.0.1', '2024-06-06 21:02:20.868738', '/myapp/index/user/info', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (1400, '127.0.0.1', '2024-06-06 21:02:20.872398', '/myapp/index/user/info', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (1401, '127.0.0.1', '2024-06-06 21:02:20.901567', '/myapp/index/user/info', 'GET', NULL, '50');
INSERT INTO `b_op_log` VALUES (1402, '127.0.0.1', '2024-06-06 21:02:20.936844', '/myapp/index/user/info', 'GET', NULL, '79');
INSERT INTO `b_op_log` VALUES (1403, '127.0.0.1', '2024-06-06 21:02:23.446352', '/myapp/admin/classification/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (1404, '127.0.0.1', '2024-06-06 21:02:23.557063', '/myapp/admin/classification/list', 'GET', NULL, '118');
INSERT INTO `b_op_log` VALUES (1405, '127.0.0.1', '2024-06-06 21:03:12.090913', '/myapp/index/thing/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (1406, '127.0.0.1', '2024-06-06 21:03:12.104703', '/myapp/index/thing/list', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (1407, '127.0.0.1', '2024-06-06 21:03:12.090913', '/myapp/index/thing/list', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (1408, '127.0.0.1', '2024-06-06 21:03:12.160957', '/upload/avatar/1717678474365.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (1409, '127.0.0.1', '2024-06-06 21:03:12.177155', '/upload/avatar/1717678474365.jpeg', 'GET', NULL, '42');
INSERT INTO `b_op_log` VALUES (1410, '127.0.0.1', '2024-06-06 21:03:12.222889', '/upload/cover/1717677259228.jpeg', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (1411, '127.0.0.1', '2024-06-06 21:03:12.222889', '/upload/cover/1717677259228.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (1412, '127.0.0.1', '2024-06-06 21:03:12.222889', '/upload/cover/1717677259228.jpeg', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (1413, '127.0.0.1', '2024-06-06 21:03:12.222889', '/upload/cover/1717677259228.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (1414, '127.0.0.1', '2024-06-06 21:03:12.236194', '/upload/cover/1717677259228.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (1415, '127.0.0.1', '2024-06-06 21:03:12.240336', '/upload/cover/1717677259228.jpeg', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (1416, '127.0.0.1', '2024-06-06 21:03:12.261006', '/upload/cover/1717674643980.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (1417, '127.0.0.1', '2024-06-06 21:03:12.261006', '/upload/cover/1717674643980.jpeg', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (1418, '127.0.0.1', '2024-06-06 21:03:18.381128', '/myapp/index/thing/getRecommend', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (1419, '127.0.0.1', '2024-06-06 21:03:18.393469', '/myapp/index/thing/getRecommend', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (1420, '127.0.0.1', '2024-06-06 21:03:18.440117', '/myapp/index/thing/getRecommend', 'GET', NULL, '72');
INSERT INTO `b_op_log` VALUES (1421, '127.0.0.1', '2024-06-06 21:03:19.959199', '/myapp/index/thing/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (1422, '127.0.0.1', '2024-06-06 21:03:19.975824', '/myapp/index/thing/list', 'GET', NULL, '34');
INSERT INTO `b_op_log` VALUES (1423, '127.0.0.1', '2024-06-06 21:03:19.979647', '/myapp/index/thing/list', 'GET', NULL, '40');
INSERT INTO `b_op_log` VALUES (1424, '127.0.0.1', '2024-06-06 21:03:20.022991', '/myapp/index/thing/list', 'GET', NULL, '83');
INSERT INTO `b_op_log` VALUES (1425, '127.0.0.1', '2024-06-06 21:03:33.584237', '/myapp/index/thing/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (1426, '127.0.0.1', '2024-06-06 21:03:33.591356', '/myapp/index/thing/list', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (1427, '127.0.0.1', '2024-06-06 21:03:33.591356', '/myapp/index/thing/list', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (1428, '127.0.0.1', '2024-06-06 21:03:33.626752', '/upload/avatar/1717678474365.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (1429, '127.0.0.1', '2024-06-06 21:03:33.660384', '/upload/avatar/1717678474365.jpeg', 'GET', NULL, '46');
INSERT INTO `b_op_log` VALUES (1430, '127.0.0.1', '2024-06-06 21:03:33.754763', '/upload/cover/1717677259228.jpeg', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (1431, '127.0.0.1', '2024-06-06 21:03:33.755144', '/upload/cover/1717677259228.jpeg', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (1432, '127.0.0.1', '2024-06-06 21:03:33.756598', '/upload/cover/1717677259228.jpeg', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (1433, '127.0.0.1', '2024-06-06 21:03:33.756598', '/upload/cover/1717677259228.jpeg', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (1434, '127.0.0.1', '2024-06-06 21:03:33.759442', '/upload/cover/1717677259228.jpeg', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (1435, '127.0.0.1', '2024-06-06 21:03:33.760837', '/upload/cover/1717677259228.jpeg', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (1436, '127.0.0.1', '2024-06-06 21:03:35.779650', '/myapp/admin/classification/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (1437, '127.0.0.1', '2024-06-06 21:03:35.905836', '/myapp/admin/classification/list', 'GET', NULL, '149');
INSERT INTO `b_op_log` VALUES (1438, '127.0.0.1', '2024-06-06 21:03:36.805301', '/myapp/admin/classification/list', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (1439, '127.0.0.1', '2024-06-06 21:03:37.975659', '/myapp/admin/comment/list', 'GET', NULL, '91');
INSERT INTO `b_op_log` VALUES (1440, '127.0.0.1', '2024-06-06 21:03:38.782550', '/myapp/admin/user/list', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (1441, '127.0.0.1', '2024-06-06 21:03:39.672150', '/myapp/admin/order/list', 'GET', NULL, '58');
INSERT INTO `b_op_log` VALUES (1442, '127.0.0.1', '2024-06-06 21:03:40.876550', '/myapp/admin/overview/count', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (1443, '127.0.0.1', '2024-06-06 21:03:42.123913', '/myapp/admin/feedback/list', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (1444, '127.0.0.1', '2024-06-06 21:03:44.080228', '/myapp/admin/overview/count', 'GET', NULL, '42');
INSERT INTO `b_op_log` VALUES (1445, '127.0.0.1', '2024-06-06 21:03:44.198882', '/myapp/admin/overview/count', 'GET', NULL, '160');
INSERT INTO `b_op_log` VALUES (1446, '127.0.0.1', '2024-06-06 21:03:45.280297', '/myapp/admin/feedback/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (1447, '127.0.0.1', '2024-06-06 21:03:46.948650', '/myapp/admin/comment/list', 'GET', NULL, '137');
INSERT INTO `b_op_log` VALUES (1448, '127.0.0.1', '2024-06-06 21:03:47.576058', '/myapp/admin/classification/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (1449, '127.0.0.1', '2024-06-06 21:03:48.255180', '/myapp/admin/thing/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (1450, '127.0.0.1', '2024-06-06 21:03:48.415493', '/myapp/admin/thing/list', 'GET', NULL, '178');
INSERT INTO `b_op_log` VALUES (1451, '127.0.0.1', '2024-06-06 21:03:49.989035', '/myapp/admin/user/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (1452, '127.0.0.1', '2024-06-06 21:03:51.432469', '/myapp/admin/order/list', 'GET', NULL, '51');
INSERT INTO `b_op_log` VALUES (1453, '127.0.0.1', '2024-06-06 21:03:56.897100', '/myapp/index/user/info', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (1454, '127.0.0.1', '2024-06-06 21:03:56.909677', '/myapp/index/user/info', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (1455, '127.0.0.1', '2024-06-06 21:03:56.937970', '/myapp/index/user/info', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (1456, '127.0.0.1', '2024-06-06 21:03:56.952831', '/myapp/index/user/info', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (1457, '127.0.0.1', '2024-06-06 21:03:56.955615', '/myapp/index/user/info', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (1458, '127.0.0.1', '2024-06-06 21:03:56.988409', '/myapp/index/user/info', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (1459, '127.0.0.1', '2024-06-06 21:03:58.339213', '/myapp/index/thing/listUserThing', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (1460, '127.0.0.1', '2024-06-06 21:03:58.339213', '/myapp/index/thing/listUserThing', 'GET', NULL, '68');
INSERT INTO `b_op_log` VALUES (1461, '127.0.0.1', '2024-06-06 21:04:08.302853', '/myapp/index/order/list', 'GET', NULL, '42');
INSERT INTO `b_op_log` VALUES (1462, '127.0.0.1', '2024-06-06 21:04:45.681200', '/myapp/index/thing/listUserThing', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (1463, '127.0.0.1', '2024-06-06 21:04:45.691036', '/myapp/index/thing/listUserThing', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (1464, '127.0.0.1', '2024-06-06 21:04:46.755122', '/myapp/index/order/list', 'GET', NULL, '60');
INSERT INTO `b_op_log` VALUES (1465, '127.0.0.1', '2024-06-06 21:04:47.585511', '/myapp/index/comment/listMyComments', 'GET', NULL, '122');
INSERT INTO `b_op_log` VALUES (1466, '127.0.0.1', '2024-06-06 21:04:48.108629', '/myapp/index/user/info', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (1467, '127.0.0.1', '2024-06-06 21:04:48.158360', '/upload/avatar/1717678474365.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (1468, '127.0.0.1', '2024-06-06 21:04:49.974292', '/myapp/index/thing/listUserThing', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (1469, '127.0.0.1', '2024-06-06 21:04:49.987416', '/myapp/index/thing/listUserThing', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (1470, '127.0.0.1', '2024-06-06 21:05:25.496007', '/myapp/index/comment/listMyComments', 'GET', NULL, '86');
INSERT INTO `b_op_log` VALUES (1471, '127.0.0.1', '2024-06-06 21:05:26.640259', '/myapp/index/order/list', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (1472, '127.0.0.1', '2024-06-06 21:05:54.570289', '/myapp/index/comment/listMyComments', 'GET', NULL, '84');
INSERT INTO `b_op_log` VALUES (1473, '127.0.0.1', '2024-06-06 21:05:55.603453', '/myapp/index/thing/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (1474, '127.0.0.1', '2024-06-06 21:05:55.619663', '/myapp/index/thing/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (1475, '127.0.0.1', '2024-06-06 21:05:55.619663', '/myapp/index/thing/list', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (1476, '127.0.0.1', '2024-06-06 21:05:55.669802', '/myapp/index/thing/list', 'GET', NULL, '58');
INSERT INTO `b_op_log` VALUES (1477, '127.0.0.1', '2024-06-06 21:06:23.489974', '/myapp/admin/order/list', 'GET', NULL, '55');
INSERT INTO `b_op_log` VALUES (1478, '127.0.0.1', '2024-06-06 21:06:23.602992', '/myapp/index/thing/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (1479, '127.0.0.1', '2024-06-06 21:06:23.604025', '/myapp/index/thing/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (1480, '127.0.0.1', '2024-06-06 21:06:23.610401', '/myapp/index/thing/list', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (1481, '127.0.0.1', '2024-06-06 21:06:23.654002', '/myapp/index/thing/list', 'GET', NULL, '68');
INSERT INTO `b_op_log` VALUES (1482, '127.0.0.1', '2024-06-06 21:06:23.693883', '/upload/avatar/1717678474365.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (1483, '127.0.0.1', '2024-06-06 21:06:23.719457', '/upload/cover/1717677306235.jpeg', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (1484, '127.0.0.1', '2024-06-06 21:06:23.719457', '/upload/cover/1717677306235.jpeg', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (1485, '127.0.0.1', '2024-06-06 21:06:23.719457', '/upload/cover/1717677306235.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (1486, '127.0.0.1', '2024-06-06 21:06:23.734018', '/upload/cover/1717677306235.jpeg', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (1487, '127.0.0.1', '2024-06-06 21:06:23.735604', '/upload/cover/1717677306235.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (1488, '127.0.0.1', '2024-06-06 21:06:23.735604', '/upload/cover/1717677213029.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (1489, '127.0.0.1', '2024-06-06 21:06:24.386523', '/myapp/index/thing/getRecommend', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (1490, '127.0.0.1', '2024-06-06 21:06:24.389447', '/myapp/index/thing/getRecommend', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (1491, '127.0.0.1', '2024-06-06 21:06:24.421920', '/myapp/index/thing/getRecommend', 'GET', NULL, '48');
INSERT INTO `b_op_log` VALUES (1492, '127.0.0.1', '2024-06-06 21:06:25.089628', '/myapp/index/thing/getWishThingList', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (1493, '127.0.0.1', '2024-06-06 21:06:25.111502', '/myapp/index/thing/getWishThingList', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (1494, '127.0.0.1', '2024-06-06 21:06:25.105159', '/myapp/index/thing/getWishThingList', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (1495, '127.0.0.1', '2024-06-06 21:06:25.123176', '/myapp/index/user/info', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (1496, '127.0.0.1', '2024-06-06 21:06:25.136664', '/myapp/index/user/info', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (1497, '127.0.0.1', '2024-06-06 21:06:25.155311', '/myapp/index/user/info', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (1498, '127.0.0.1', '2024-06-06 21:06:25.869729', '/myapp/index/thing/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (1499, '127.0.0.1', '2024-06-06 21:06:25.869729', '/myapp/index/thing/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (1500, '127.0.0.1', '2024-06-06 21:06:25.869729', '/myapp/index/thing/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (1501, '127.0.0.1', '2024-06-06 21:06:25.916224', '/myapp/index/thing/list', 'GET', NULL, '63');
INSERT INTO `b_op_log` VALUES (1502, '127.0.0.1', '2024-06-06 21:06:34.999940', '/myapp/index/thing/getRecommend', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (1503, '127.0.0.1', '2024-06-06 21:06:35.009201', '/myapp/index/thing/getRecommend', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (1504, '127.0.0.1', '2024-06-06 21:06:35.058812', '/myapp/index/thing/getRecommend', 'GET', NULL, '66');
INSERT INTO `b_op_log` VALUES (1505, '127.0.0.1', '2024-06-06 21:06:35.737891', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (1506, '127.0.0.1', '2024-06-06 21:06:35.737891', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (1507, '127.0.0.1', '2024-06-06 21:06:35.776789', '/myapp/index/user/info', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (1508, '127.0.0.1', '2024-06-06 21:06:35.790251', '/myapp/index/user/info', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (1509, '127.0.0.1', '2024-06-06 21:06:35.804802', '/myapp/index/user/info', 'GET', NULL, '41');
INSERT INTO `b_op_log` VALUES (1510, '127.0.0.1', '2024-06-06 21:06:35.824814', '/myapp/index/user/info', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (1511, '127.0.0.1', '2024-06-06 21:06:37.119583', '/myapp/index/order/list', 'GET', NULL, '45');
INSERT INTO `b_op_log` VALUES (1512, '127.0.0.1', '2024-06-06 21:06:38.002442', '/myapp/index/comment/listMyComments', 'GET', NULL, '95');
INSERT INTO `b_op_log` VALUES (1513, '127.0.0.1', '2024-06-06 21:06:40.451715', '/myapp/index/user/info', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (1514, '127.0.0.1', '2024-06-06 21:06:43.955679', '/myapp/index/notice/list_api', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (1515, '127.0.0.1', '2024-06-06 21:06:47.402254', '/myapp/index/order/list', 'GET', NULL, '52');
INSERT INTO `b_op_log` VALUES (1516, '127.0.0.1', '2024-06-06 21:06:52.318833', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '43');
INSERT INTO `b_op_log` VALUES (1517, '127.0.0.1', '2024-06-06 21:06:55.729607', '/myapp/index/thing/getWishThingList', 'GET', NULL, '41');
INSERT INTO `b_op_log` VALUES (1518, '127.0.0.1', '2024-06-06 21:06:58.243238', '/myapp/index/order/list', 'GET', NULL, '72');
INSERT INTO `b_op_log` VALUES (1519, '127.0.0.1', '2024-06-06 21:07:00.168511', '/myapp/index/comment/listMyComments', 'GET', NULL, '106');
INSERT INTO `b_op_log` VALUES (1520, '127.0.0.1', '2024-06-06 21:07:01.122668', '/myapp/index/order/list', 'GET', NULL, '54');
INSERT INTO `b_op_log` VALUES (1521, '127.0.0.1', '2024-06-06 21:07:02.290150', '/myapp/index/user/info', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (1522, '127.0.0.1', '2024-06-06 21:07:03.308102', '/myapp/index/order/list', 'GET', NULL, '51');
INSERT INTO `b_op_log` VALUES (1523, '127.0.0.1', '2024-06-06 21:07:04.631067', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '35');
INSERT INTO `b_op_log` VALUES (1524, '127.0.0.1', '2024-06-06 21:07:05.571485', '/myapp/index/thing/getWishThingList', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (1525, '127.0.0.1', '2024-06-06 21:07:07.069562', '/myapp/index/order/list', 'GET', NULL, '49');
INSERT INTO `b_op_log` VALUES (1526, '127.0.0.1', '2024-06-06 21:07:08.068947', '/myapp/index/comment/listMyComments', 'GET', NULL, '87');
INSERT INTO `b_op_log` VALUES (1527, '127.0.0.1', '2024-06-06 21:07:09.489167', '/myapp/index/user/info', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (1528, '127.0.0.1', '2024-06-06 21:07:11.333541', '/myapp/index/order/list', 'GET', NULL, '52');
INSERT INTO `b_op_log` VALUES (1529, '127.0.0.1', '2024-06-06 21:07:12.588969', '/myapp/index/notice/list_api', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (1530, '127.0.0.1', '2024-06-06 21:07:13.794177', '/myapp/index/comment/listMyComments', 'GET', NULL, '129');
INSERT INTO `b_op_log` VALUES (1531, '127.0.0.1', '2024-06-06 21:07:14.302007', '/myapp/index/order/list', 'GET', NULL, '48');
INSERT INTO `b_op_log` VALUES (1532, '127.0.0.1', '2024-06-06 21:07:15.969739', '/myapp/index/comment/listMyComments', 'GET', NULL, '105');
INSERT INTO `b_op_log` VALUES (1533, '127.0.0.1', '2024-06-06 21:07:19.946397', '/myapp/index/thing/getRecommend', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (1534, '127.0.0.1', '2024-06-06 21:07:19.953612', '/myapp/index/thing/getRecommend', 'GET', NULL, '39');
INSERT INTO `b_op_log` VALUES (1535, '127.0.0.1', '2024-06-06 21:07:19.999279', '/myapp/index/thing/getRecommend', 'GET', NULL, '80');
INSERT INTO `b_op_log` VALUES (1536, '127.0.0.1', '2024-06-06 21:07:20.030602', '/upload/cover/1717677259228.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (1537, '127.0.0.1', '2024-06-06 21:07:22.237346', '/myapp/index/thing/getWishThingList', 'GET', NULL, '37');
INSERT INTO `b_op_log` VALUES (1538, '127.0.0.1', '2024-06-06 21:07:22.237346', '/myapp/index/thing/getWishThingList', 'GET', NULL, '39');
INSERT INTO `b_op_log` VALUES (1539, '127.0.0.1', '2024-06-06 21:07:22.265523', '/myapp/index/user/info', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (1540, '127.0.0.1', '2024-06-06 21:07:22.285794', '/myapp/index/user/info', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (1541, '127.0.0.1', '2024-06-06 21:07:22.301946', '/myapp/index/user/info', 'GET', NULL, '35');
INSERT INTO `b_op_log` VALUES (1542, '127.0.0.1', '2024-06-06 21:07:22.349494', '/myapp/index/user/info', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (1543, '127.0.0.1', '2024-06-06 21:07:23.537243', '/myapp/index/thing/list', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (1544, '127.0.0.1', '2024-06-06 21:07:23.555532', '/myapp/index/thing/list', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (1545, '127.0.0.1', '2024-06-06 21:07:23.560443', '/myapp/index/thing/list', 'GET', NULL, '44');
INSERT INTO `b_op_log` VALUES (1546, '127.0.0.1', '2024-06-06 21:07:23.608548', '/myapp/index/thing/list', 'GET', NULL, '93');
INSERT INTO `b_op_log` VALUES (1547, '127.0.0.1', '2024-06-06 21:07:24.707977', '/myapp/index/thing/getRecommend', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (1548, '127.0.0.1', '2024-06-06 21:07:24.738952', '/myapp/index/thing/getRecommend', 'GET', NULL, '51');
INSERT INTO `b_op_log` VALUES (1549, '127.0.0.1', '2024-06-06 21:07:24.780469', '/myapp/index/thing/getRecommend', 'GET', NULL, '92');
INSERT INTO `b_op_log` VALUES (1550, '127.0.0.1', '2024-06-06 21:07:32.526869', '/myapp/index/classification/list', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (1551, '127.0.0.1', '2024-06-06 21:07:32.543180', '/myapp/index/classification/list', 'GET', NULL, '43');
INSERT INTO `b_op_log` VALUES (1552, '127.0.0.1', '2024-06-06 21:07:32.559501', '/myapp/index/classification/list', 'GET', NULL, '59');
INSERT INTO `b_op_log` VALUES (1553, '127.0.0.1', '2024-06-06 21:07:32.600005', '/myapp/index/classification/list', 'GET', NULL, '99');
INSERT INTO `b_op_log` VALUES (1554, '127.0.0.1', '2024-06-06 21:07:47.057799', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (1555, '127.0.0.1', '2024-06-06 21:07:47.074839', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (1556, '127.0.0.1', '2024-06-06 21:07:47.109244', '/myapp/index/user/info', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (1557, '127.0.0.1', '2024-06-06 21:07:47.125144', '/myapp/index/user/info', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (1558, '127.0.0.1', '2024-06-06 21:07:47.134724', '/myapp/index/user/info', 'GET', NULL, '41');
INSERT INTO `b_op_log` VALUES (1559, '127.0.0.1', '2024-06-06 21:07:47.171850', '/myapp/index/user/info', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (1560, '127.0.0.1', '2024-06-06 21:07:47.836938', '/myapp/index/thing/getRecommend', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (1561, '127.0.0.1', '2024-06-06 21:07:47.858767', '/myapp/index/thing/getRecommend', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (1562, '127.0.0.1', '2024-06-06 21:07:47.923890', '/myapp/index/thing/getRecommend', 'GET', NULL, '92');
INSERT INTO `b_op_log` VALUES (1563, '127.0.0.1', '2024-06-06 21:07:48.462951', '/myapp/index/thing/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (1564, '127.0.0.1', '2024-06-06 21:07:48.477443', '/myapp/index/thing/list', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (1565, '127.0.0.1', '2024-06-06 21:07:48.493704', '/myapp/index/thing/list', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (1566, '127.0.0.1', '2024-06-06 21:07:48.539452', '/myapp/index/thing/list', 'GET', NULL, '87');
INSERT INTO `b_op_log` VALUES (1567, '127.0.0.1', '2024-06-06 21:08:13.438379', '/myapp/admin/classification/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (1568, '127.0.0.1', '2024-06-06 21:08:13.554599', '/myapp/admin/classification/list', 'GET', NULL, '132');
INSERT INTO `b_op_log` VALUES (1569, '127.0.0.1', '2024-06-06 21:08:14.285424', '/myapp/admin/classification/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (1570, '127.0.0.1', '2024-06-06 21:08:15.372373', '/myapp/admin/comment/list', 'GET', NULL, '129');
INSERT INTO `b_op_log` VALUES (1571, '127.0.0.1', '2024-06-06 21:08:17.204809', '/myapp/admin/user/list', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (1572, '127.0.0.1', '2024-06-06 21:08:18.367844', '/myapp/admin/order/list', 'GET', NULL, '72');
INSERT INTO `b_op_log` VALUES (1573, '127.0.0.1', '2024-06-06 21:08:19.076057', '/myapp/admin/user/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (1574, '127.0.0.1', '2024-06-06 21:08:20.648126', '/myapp/admin/comment/list', 'GET', NULL, '137');
INSERT INTO `b_op_log` VALUES (1575, '127.0.0.1', '2024-06-06 21:08:26.602584', '/myapp/admin/order/list', 'GET', NULL, '42');
INSERT INTO `b_op_log` VALUES (1576, '127.0.0.1', '2024-06-06 21:08:28.846693', '/myapp/admin/overview/count', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (1577, '127.0.0.1', '2024-06-06 21:08:30.099512', '/myapp/admin/feedback/list', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (1578, '127.0.0.1', '2024-06-06 21:08:32.308850', '/myapp/admin/loginLog/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (1579, '127.0.0.1', '2024-06-06 21:08:32.835841', '/myapp/admin/opLog/list', 'GET', NULL, '19');

-- ----------------------------
-- Table structure for b_order
-- ----------------------------
DROP TABLE IF EXISTS `b_order`;
CREATE TABLE `b_order`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `order_number` varchar(13) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `count` int(11) NOT NULL,
  `status` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `order_time` datetime(6) NULL DEFAULT NULL,
  `receiver_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `receiver_address` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `receiver_phone` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `remark` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `thing_id` bigint(20) NULL DEFAULT NULL,
  `user_id` bigint(20) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `b_order_thing_id_4e345e2c_fk_b_thing_id`(`thing_id`) USING BTREE,
  INDEX `b_order_user_id_64854046_fk_b_user_id`(`user_id`) USING BTREE,
  CONSTRAINT `b_order_thing_id_4e345e2c_fk_b_thing_id` FOREIGN KEY (`thing_id`) REFERENCES `b_thing` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `b_order_user_id_64854046_fk_b_user_id` FOREIGN KEY (`user_id`) REFERENCES `b_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_order
-- ----------------------------
INSERT INTO `b_order` VALUES (1, '1717593100397', 4, '2', '2024-06-05 21:11:40.400457', '刘德华', '', '1233', '12222', 4, 3);
INSERT INTO `b_order` VALUES (2, '1717678034124', 1, '1', '2024-06-06 20:47:14.133305', '刘德华', '', '', '', 13, 4);
INSERT INTO `b_order` VALUES (3, '1717678055422', 2, '1', '2024-06-06 20:47:35.433287', '王小明', '', '123333222', '', 4, 4);
INSERT INTO `b_order` VALUES (4, '1717678081932', 3, '1', '2024-06-06 20:48:01.933232', '刘文文', '', '909887', '', 12, 4);

-- ----------------------------
-- Table structure for b_record
-- ----------------------------
DROP TABLE IF EXISTS `b_record`;
CREATE TABLE `b_record`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `thing_id` bigint(20) NULL DEFAULT NULL,
  `score` int(11) NOT NULL,
  `ip` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `b_record_thing_id_d8e773c0_fk_b_thing_id`(`thing_id`) USING BTREE,
  CONSTRAINT `b_record_thing_id_d8e773c0_fk_b_thing_id` FOREIGN KEY (`thing_id`) REFERENCES `b_thing` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_record
-- ----------------------------
INSERT INTO `b_record` VALUES (1, 1, 13, '127.0.0.1');
INSERT INTO `b_record` VALUES (2, 3, 19, '127.0.0.1');
INSERT INTO `b_record` VALUES (3, 4, 21, '127.0.0.1');
INSERT INTO `b_record` VALUES (4, 2, 10, '127.0.0.1');
INSERT INTO `b_record` VALUES (5, 14, 2, '127.0.0.1');
INSERT INTO `b_record` VALUES (6, 12, 3, '127.0.0.1');
INSERT INTO `b_record` VALUES (7, 11, 1, '127.0.0.1');
INSERT INTO `b_record` VALUES (8, 9, 2, '127.0.0.1');
INSERT INTO `b_record` VALUES (9, 10, 1, '127.0.0.1');
INSERT INTO `b_record` VALUES (10, 6, 1, '127.0.0.1');
INSERT INTO `b_record` VALUES (11, 13, 3, '127.0.0.1');

-- ----------------------------
-- Table structure for b_thing
-- ----------------------------
DROP TABLE IF EXISTS `b_thing`;
CREATE TABLE `b_thing`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `cover` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `description` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `price` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `status` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `create_time` datetime(6) NULL DEFAULT NULL,
  `pv` int(11) NOT NULL,
  `recommend_count` int(11) NOT NULL,
  `wish_count` int(11) NOT NULL,
  `collect_count` int(11) NOT NULL,
  `classification_id` bigint(20) NULL DEFAULT NULL,
  `user_id` bigint(20) NULL DEFAULT NULL,
  `rate` int(11) NOT NULL,
  `address` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `level` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `repertory` int(11) NOT NULL,
  `yy_time` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `b_thing_classification_id_47675ac4_fk_b_classification_id`(`classification_id`) USING BTREE,
  INDEX `b_thing_user_id_9918a633_fk_b_user_id`(`user_id`) USING BTREE,
  CONSTRAINT `b_thing_classification_id_47675ac4_fk_b_classification_id` FOREIGN KEY (`classification_id`) REFERENCES `b_classification` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `b_thing_user_id_9918a633_fk_b_user_id` FOREIGN KEY (`user_id`) REFERENCES `b_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 15 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_thing
-- ----------------------------
INSERT INTO `b_thing` VALUES (1, '济南大明湖', 'cover/1717590807812.jpeg', '该景区位于大自然的怀抱中，被誉为天然的乐园，以其绝美的风景和宁静的氛围吸引着无数游人前来观赏。\r\n\r\n蜿蜒的小径延伸在郁郁葱葱的树林中，清澈的溪流潺潺流淌，悠然地倒映着青山绿水，犹如一首柔美的诗篇。在细密的枝叶间，小鸟欢快地歌唱，似乎为这美丽的景致增添了一抹活泼和灵动。\r\n\r\n沿着山间小径缓步而行，远处的山峰云雾缭绕，仿佛置身仙境般令人神往。踏上山巅，鸟瞰整个景区，湖光山色尽收眼底，美不胜收。阳光洒下，湖水泛起金光，树荫下鸟鸣不绝，令人心旷神怡，尽情感受大自然的奇妙之美。\r\n\r\n在这片风景如画的景区里，游客们可以尽享大自然的馈赠，感受到与自然融为一体的幸福和宁静。漫步在这里，仿佛走进了一幅神奇的画卷，让人感受到大自然恩赐的美好和宁静。这里不仅是一个风景如诗如画的胜地，更是一个让人身心得到放松和治愈的静谧之地，成为无数游客流连忘返的美好回忆。', '32', '0', '2024-06-05 20:33:39.472029', 13, 0, 1, 1, 3, NULL, 3, '北京市文化西路99号', '2A级', 32, '周一至周五8点到20点');
INSERT INTO `b_thing` VALUES (2, '八达岭长城', 'cover/1717591455830.jpeg', '该景区位于大自然的怀抱中，被誉为天然的乐园，以其绝美的风景和宁静的氛围吸引着无数游人前来观赏。\r\n\r\n蜿蜒的小径延伸在郁郁葱葱的树林中，清澈的溪流潺潺流淌，悠然地倒映着青山绿水，犹如一首柔美的诗篇。在细密的枝叶间，小鸟欢快地歌唱，似乎为这美丽的景致增添了一抹活泼和灵动。\r\n\r\n沿着山间小径缓步而行，远处的山峰云雾缭绕，仿佛置身仙境般令人神往。踏上山巅，鸟瞰整个景区，湖光山色尽收眼底，美不胜收。阳光洒下，湖水泛起金光，树荫下鸟鸣不绝，令人心旷神怡，尽情感受大自然的奇妙之美。\r\n\r\n在这片风景如画的景区里，游客们可以尽享大自然的馈赠，感受到与自然融为一体的幸福和宁静。漫步在这里，仿佛走进了一幅神奇的画卷，让人感受到大自然恩赐的美好和宁静。这里不仅是一个风景如诗如画的胜地，更是一个让人身心得到放松和治愈的静谧之地，成为无数游客流连忘返的美好回忆。', '23', '0', '2024-06-05 20:45:00.213629', 10, 0, 1, 1, 1, NULL, 3, '北京市昌平区文化路99号', '5A级', 232, '周六8点到20点');
INSERT INTO `b_thing` VALUES (3, '测试服务333', 'cover/1717591652892.jpeg', '该景区位于大自然的怀抱中，被誉为天然的乐园，以其绝美的风景和宁静的氛围吸引着无数游人前来观赏。\r\n\r\n蜿蜒的小径延伸在郁郁葱葱的树林中，清澈的溪流潺潺流淌，悠然地倒映着青山绿水，犹如一首柔美的诗篇。在细密的枝叶间，小鸟欢快地歌唱，似乎为这美丽的景致增添了一抹活泼和灵动。\r\n\r\n沿着山间小径缓步而行，远处的山峰云雾缭绕，仿佛置身仙境般令人神往。踏上山巅，鸟瞰整个景区，湖光山色尽收眼底，美不胜收。阳光洒下，湖水泛起金光，树荫下鸟鸣不绝，令人心旷神怡，尽情感受大自然的奇妙之美。\r\n\r\n在这片风景如画的景区里，游客们可以尽享大自然的馈赠，感受到与自然融为一体的幸福和宁静。漫步在这里，仿佛走进了一幅神奇的画卷，让人感受到大自然恩赐的美好和宁静。这里不仅是一个风景如诗如画的胜地，更是一个让人身心得到放松和治愈的静谧之地，成为无数游客流连忘返的美好回忆。', '432', '0', '2024-06-05 20:47:58.139616', 19, 0, 2, 2, 5, NULL, 3, '上海市文化东路', '4A级', 211, '周一至周五');
INSERT INTO `b_thing` VALUES (4, '崂山风景区', 'cover/1717591702179.jpeg', '该景区位于大自然的怀抱中，被誉为天然的乐园，以其绝美的风景和宁静的氛围吸引着无数游人前来观赏。\r\n\r\n蜿蜒的小径延伸在郁郁葱葱的树林中，清澈的溪流潺潺流淌，悠然地倒映着青山绿水，犹如一首柔美的诗篇。在细密的枝叶间，小鸟欢快地歌唱，似乎为这美丽的景致增添了一抹活泼和灵动。\r\n\r\n沿着山间小径缓步而行，远处的山峰云雾缭绕，仿佛置身仙境般令人神往。踏上山巅，鸟瞰整个景区，湖光山色尽收眼底，美不胜收。阳光洒下，湖水泛起金光，树荫下鸟鸣不绝，令人心旷神怡，尽情感受大自然的奇妙之美。\r\n\r\n在这片风景如画的景区里，游客们可以尽享大自然的馈赠，感受到与自然融为一体的幸福和宁静。漫步在这里，仿佛走进了一幅神奇的画卷，让人感受到大自然恩赐的美好和宁静。这里不仅是一个风景如诗如画的胜地，更是一个让人身心得到放松和治愈的静谧之地，成为无数游客流连忘返的美好回忆。', '321', '0', '2024-06-05 20:49:00.745601', 21, 0, 1, 1, 6, NULL, 3, '青岛市香港西路88号', '4A级', 3215, '周一到周五全天');
INSERT INTO `b_thing` VALUES (6, '云南大理运河景区', 'cover/1717674643980.jpeg', '绝美的风景和宁静的氛围吸引着无数游人前来观赏。\r\n\r\n蜿蜒的小径延伸在郁郁葱葱的树林中，清澈的溪流潺潺流淌，悠然地倒映着青山绿水，犹如一首柔美的诗篇。在细密的枝叶间，小鸟欢快地歌唱，似乎为这美丽的景致增添了一抹活泼和灵动。\r\n\r\n沿着山间小径缓步而行，远处的山峰云雾缭绕，仿佛置身仙境般令人神往。踏上山巅，鸟瞰整个景区，湖光山色尽收眼底，美不胜收。阳光洒下，湖水泛起金光，树荫下鸟鸣不绝，令人心旷神怡，尽情感受大自然的奇妙之美。\r\n\r\n在这片风景如画的景区里，游客们可以尽享大自然的馈赠，感受到与自然融为一体的幸福和宁静。漫步在这里，仿佛走进了一幅神奇的画卷，让人感受到大自然恩赐的美好和宁静。这里不仅是一个风景如诗如画的胜地，更是一个让人身心得到放松和治愈的静谧之地，成为无数游客流连忘返的美好回忆。', '321', '0', '2024-06-06 19:51:37.477752', 1, 0, 0, 0, 8, NULL, 3, '昆明市南路', '4A级', 3212, '周五上午');
INSERT INTO `b_thing` VALUES (8, '大雁塔风景区', 'cover/1717677213029.jpeg', '绝美的风景和宁静的氛围吸引着无数游人前来观赏。\r\n\r\n蜿蜒的小径延伸在郁郁葱葱的树林中，清澈的溪流潺潺流淌，悠然地倒映着青山绿水，犹如一首柔美的诗篇。在细密的枝叶间，小鸟欢快地歌唱，似乎为这美丽的景致增添了一抹活泼和灵动。\r\n\r\n沿着山间小径缓步而行，远处的山峰云雾缭绕，仿佛置身仙境般令人神往。踏上山巅，鸟瞰整个景区，湖光山色尽收眼底，美不胜收。阳光洒下，湖水泛起金光，树荫下鸟鸣不绝，令人心旷神怡，尽情感受大自然的奇妙之美。\r\n\r\n在这片风景如画的景区里，游客们可以尽享大自然的馈赠，感受到与自然融为一体的幸福和宁静。漫步在这里，仿佛走进了一幅神奇的画卷，让人感受到大自然恩赐的美好和宁静。这里不仅是一个风景如诗如画的胜地，更是一个让人身心得到放松和治愈的静谧之地，成为无数游客流连忘返的美好回忆。', '87', '0', '2024-06-06 20:34:03.918733', 0, 0, 0, 0, 6, NULL, 3, '西安市文化路', '3A级', 4321, '周一到周五全天');
INSERT INTO `b_thing` VALUES (9, '西西里园区', 'cover/1717677259228.jpeg', '绝美的风景和宁静的氛围吸引着无数游人前来观赏。\r\n\r\n蜿蜒的小径延伸在郁郁葱葱的树林中，清澈的溪流潺潺流淌，悠然地倒映着青山绿水，犹如一首柔美的诗篇。在细密的枝叶间，小鸟欢快地歌唱，似乎为这美丽的景致增添了一抹活泼和灵动。\r\n\r\n沿着山间小径缓步而行，远处的山峰云雾缭绕，仿佛置身仙境般令人神往。踏上山巅，鸟瞰整个景区，湖光山色尽收眼底，美不胜收。阳光洒下，湖水泛起金光，树荫下鸟鸣不绝，令人心旷神怡，尽情感受大自然的奇妙之美。\r\n\r\n在这片风景如画的景区里，游客们可以尽享大自然的馈赠，感受到与自然融为一体的幸福和宁静。漫步在这里，仿佛走进了一幅神奇的画卷，让人感受到大自然恩赐的美好和宁静。这里不仅是一个风景如诗如画的胜地，更是一个让人身心得到放松和治愈的静谧之地，成为无数游客流连忘返的美好回忆。', '90', '0', '2024-06-06 20:34:42.779090', 2, 0, 0, 0, 5, NULL, 3, '拉萨市西北角', '2A级', 9098, '周五上午');
INSERT INTO `b_thing` VALUES (10, '天山民俗风景区', 'cover/1717677306235.jpeg', '绝美的风景和宁静的氛围吸引着无数游人前来观赏。\r\n\r\n蜿蜒的小径延伸在郁郁葱葱的树林中，清澈的溪流潺潺流淌，悠然地倒映着青山绿水，犹如一首柔美的诗篇。在细密的枝叶间，小鸟欢快地歌唱，似乎为这美丽的景致增添了一抹活泼和灵动。\r\n\r\n沿着山间小径缓步而行，远处的山峰云雾缭绕，仿佛置身仙境般令人神往。踏上山巅，鸟瞰整个景区，湖光山色尽收眼底，美不胜收。阳光洒下，湖水泛起金光，树荫下鸟鸣不绝，令人心旷神怡，尽情感受大自然的奇妙之美。\r\n\r\n在这片风景如画的景区里，游客们可以尽享大自然的馈赠，感受到与自然融为一体的幸福和宁静。漫步在这里，仿佛走进了一幅神奇的画卷，让人感受到大自然恩赐的美好和宁静。这里不仅是一个风景如诗如画的胜地，更是一个让人身心得到放松和治愈的静谧之地，成为无数游客流连忘返的美好回忆。', '60', '0', '2024-06-06 20:35:37.805648', 1, 0, 0, 0, 4, NULL, 3, '乌鲁木齐市西北角', 'A级', 32, '周一到周五');
INSERT INTO `b_thing` VALUES (11, '测试景区888', 'cover/1717677359494.jpeg', '绝美的风景和宁静的氛围吸引着无数游人前来观赏。\r\n\r\n蜿蜒的小径延伸在郁郁葱葱的树林中，清澈的溪流潺潺流淌，悠然地倒映着青山绿水，犹如一首柔美的诗篇。在细密的枝叶间，小鸟欢快地歌唱，似乎为这美丽的景致增添了一抹活泼和灵动。\r\n\r\n沿着山间小径缓步而行，远处的山峰云雾缭绕，仿佛置身仙境般令人神往。踏上山巅，鸟瞰整个景区，湖光山色尽收眼底，美不胜收。阳光洒下，湖水泛起金光，树荫下鸟鸣不绝，令人心旷神怡，尽情感受大自然的奇妙之美。\r\n\r\n在这片风景如画的景区里，游客们可以尽享大自然的馈赠，感受到与自然融为一体的幸福和宁静。漫步在这里，仿佛走进了一幅神奇的画卷，让人感受到大自然恩赐的美好和宁静。这里不仅是一个风景如诗如画的胜地，更是一个让人身心得到放松和治愈的静谧之地，成为无数游客流连忘返的美好回忆。', '32', '0', '2024-06-06 20:36:18.001567', 1, 0, 0, 0, 3, NULL, 3, '北京南路', '4A级', 321, '周一到周五');
INSERT INTO `b_thing` VALUES (12, '黑河保护区景区', 'cover/1717677397280.jpeg', '绝美的风景和宁静的氛围吸引着无数游人前来观赏。\r\n\r\n蜿蜒的小径延伸在郁郁葱葱的树林中，清澈的溪流潺潺流淌，悠然地倒映着青山绿水，犹如一首柔美的诗篇。在细密的枝叶间，小鸟欢快地歌唱，似乎为这美丽的景致增添了一抹活泼和灵动。\r\n\r\n沿着山间小径缓步而行，远处的山峰云雾缭绕，仿佛置身仙境般令人神往。踏上山巅，鸟瞰整个景区，湖光山色尽收眼底，美不胜收。阳光洒下，湖水泛起金光，树荫下鸟鸣不绝，令人心旷神怡，尽情感受大自然的奇妙之美。\r\n\r\n在这片风景如画的景区里，游客们可以尽享大自然的馈赠，感受到与自然融为一体的幸福和宁静。漫步在这里，仿佛走进了一幅神奇的画卷，让人感受到大自然恩赐的美好和宁静。这里不仅是一个风景如诗如画的胜地，更是一个让人身心得到放松和治愈的静谧之地，成为无数游客流连忘返的美好回忆。', '54', '0', '2024-06-06 20:36:59.242829', 3, 0, 0, 0, 2, NULL, 3, '北京市民俗街', '3A级', 4321, '周一到周五');
INSERT INTO `b_thing` VALUES (13, '齐齐哈尔河道景区', 'cover/1717677436900.jpeg', '这片风景如画的景区里绝美的风景和宁静的氛围吸引着无数游人前来观赏。\r\n\r\n蜿蜒的小径延伸在郁郁葱葱的树林中，清澈的溪流潺潺流淌，悠然地倒映着青山绿水，犹如一首柔美的诗篇。在细密的枝叶间，小鸟欢快地歌唱，似乎为这美丽的景致增添了一抹活泼和灵动。\r\n\r\n沿着山间小径缓步而行，远处的山峰云雾缭绕，仿佛置身仙境般令人神往。踏上山巅，鸟瞰整个景区，湖光山色尽收眼底，美不胜收。阳光洒下，湖水泛起金光，树荫下鸟鸣不绝，令人心旷神怡，尽情感受大自然的奇妙之美。\r\n\r\n在这片风景如画的景区里，游客们可以尽享大自然的馈赠，感受到与自然融为一体的幸福和宁静。漫步在这里，仿佛走进了一幅神奇的画卷，让人感受到大自然恩赐的美好和宁静。这里不仅是一个风景如诗如画的胜地，更是一个让人身心得到放松和治愈的静谧之地，成为无数游客流连忘返的美好回忆。', '45', '0', '2024-06-06 20:37:38.242472', 3, 0, 0, 0, 1, NULL, 3, '上海南路', '4A级', 908, '周一到周五');
INSERT INTO `b_thing` VALUES (14, '南京风情街', 'cover/1717677472977.jpeg', '这片风景如画的景区里绝美的风景和宁静的氛围吸引着无数游人前来观赏。\r\n\r\n蜿蜒的小径延伸在郁郁葱葱的树林中，清澈的溪流潺潺流淌，悠然地倒映着青山绿水，犹如一首柔美的诗篇。在细密的枝叶间，小鸟欢快地歌唱，似乎为这美丽的景致增添了一抹活泼和灵动。\r\n\r\n沿着山间小径缓步而行，远处的山峰云雾缭绕，仿佛置身仙境般令人神往。踏上山巅，鸟瞰整个景区，湖光山色尽收眼底，美不胜收。阳光洒下，湖水泛起金光，树荫下鸟鸣不绝，令人心旷神怡，尽情感受大自然的奇妙之美。\r\n\r\n在这片风景如画的景区里，游客们可以尽享大自然的馈赠，感受到与自然融为一体的幸福和宁静。漫步在这里，仿佛走进了一幅神奇的画卷，让人感受到大自然恩赐的美好和宁静。这里不仅是一个风景如诗如画的胜地，更是一个让人身心得到放松和治愈的静谧之地，成为无数游客流连忘返的美好回忆。', '54', '0', '2024-06-06 20:38:13.597175', 2, 0, 0, 0, 7, NULL, 3, '南京路99号', '5A级', 4532, '周一到周五');

-- ----------------------------
-- Table structure for b_thing_collect
-- ----------------------------
DROP TABLE IF EXISTS `b_thing_collect`;
CREATE TABLE `b_thing_collect`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `thing_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `b_thing_collect_thing_id_user_id_45b9f252_uniq`(`thing_id`, `user_id`) USING BTREE,
  INDEX `b_thing_collect_user_id_e5d69968_fk_b_user_id`(`user_id`) USING BTREE,
  CONSTRAINT `b_thing_collect_thing_id_8edce8b3_fk_b_thing_id` FOREIGN KEY (`thing_id`) REFERENCES `b_thing` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `b_thing_collect_user_id_e5d69968_fk_b_user_id` FOREIGN KEY (`user_id`) REFERENCES `b_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_thing_collect
-- ----------------------------
INSERT INTO `b_thing_collect` VALUES (2, 1, 3);
INSERT INTO `b_thing_collect` VALUES (4, 2, 4);
INSERT INTO `b_thing_collect` VALUES (3, 3, 3);
INSERT INTO `b_thing_collect` VALUES (5, 3, 4);
INSERT INTO `b_thing_collect` VALUES (1, 4, 3);

-- ----------------------------
-- Table structure for b_thing_wish
-- ----------------------------
DROP TABLE IF EXISTS `b_thing_wish`;
CREATE TABLE `b_thing_wish`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `thing_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `b_thing_wish_thing_id_user_id_9d647bbb_uniq`(`thing_id`, `user_id`) USING BTREE,
  INDEX `b_thing_wish_user_id_e2d94f6c_fk_b_user_id`(`user_id`) USING BTREE,
  CONSTRAINT `b_thing_wish_thing_id_f0864b16_fk_b_thing_id` FOREIGN KEY (`thing_id`) REFERENCES `b_thing` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `b_thing_wish_user_id_e2d94f6c_fk_b_user_id` FOREIGN KEY (`user_id`) REFERENCES `b_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_thing_wish
-- ----------------------------
INSERT INTO `b_thing_wish` VALUES (2, 1, 3);
INSERT INTO `b_thing_wish` VALUES (5, 2, 4);
INSERT INTO `b_thing_wish` VALUES (4, 3, 3);
INSERT INTO `b_thing_wish` VALUES (6, 3, 4);
INSERT INTO `b_thing_wish` VALUES (1, 4, 3);

-- ----------------------------
-- Table structure for b_user
-- ----------------------------
DROP TABLE IF EXISTS `b_user`;
CREATE TABLE `b_user`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `password` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `role` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `status` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `nickname` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `avatar` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `mobile` varchar(13) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `gender` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `description` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `create_time` datetime(6) NULL DEFAULT NULL,
  `score` int(11) NULL DEFAULT NULL,
  `push_email` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `push_switch` tinyint(1) NULL DEFAULT NULL,
  `admin_token` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `token` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_user
-- ----------------------------
INSERT INTO `b_user` VALUES (1, 'admin', '78aafd3207ec4ef6d16f9fc07e95ebc3', '1', '0', NULL, '', NULL, NULL, NULL, NULL, '2024-05-04 16:37:10.143202', 0, NULL, 0, '21232f297a57a5a743894a0e4a801fc3', NULL);
INSERT INTO `b_user` VALUES (2, 'admin123', '0192023a7bbd73250516f069df18b500', '3', '0', NULL, '', NULL, NULL, NULL, NULL, '2024-06-03 22:29:41.994561', 0, NULL, 0, '0192023a7bbd73250516f069df18b500', NULL);
INSERT INTO `b_user` VALUES (3, 'ddd', '77963b7a931377ad4ab5ad6a9cd718aa', '2', '0', 'dasdfa', 'avatar/1717592351709.jpeg', NULL, NULL, NULL, NULL, '2024-06-03 22:30:13.009902', 0, NULL, 0, NULL, '77963b7a931377ad4ab5ad6a9cd718aa');
INSERT INTO `b_user` VALUES (4, 'ccc', '9df62e693988eb4e1e1444ece0578579', '2', '0', 'dasd', 'avatar/1717678474365.jpeg', '333', NULL, NULL, NULL, '2024-06-06 20:44:20.902482', 0, NULL, 0, NULL, '9df62e693988eb4e1e1444ece0578579');

-- ----------------------------
-- Table structure for django_admin_log
-- ----------------------------
DROP TABLE IF EXISTS `django_admin_log`;
CREATE TABLE `django_admin_log`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `object_repr` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL,
  `change_message` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `content_type_id` int(11) NULL DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `django_admin_log_content_type_id_c4bce8eb_fk_django_co`(`content_type_id`) USING BTREE,
  INDEX `django_admin_log_user_id_c564eba6_fk_auth_user_id`(`user_id`) USING BTREE,
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_admin_log
-- ----------------------------

-- ----------------------------
-- Table structure for django_content_type
-- ----------------------------
DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE `django_content_type`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `model` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `django_content_type_app_label_model_76bd3d3b_uniq`(`app_label`, `model`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 19 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_content_type
-- ----------------------------
INSERT INTO `django_content_type` VALUES (1, 'admin', 'logentry');
INSERT INTO `django_content_type` VALUES (3, 'auth', 'group');
INSERT INTO `django_content_type` VALUES (2, 'auth', 'permission');
INSERT INTO `django_content_type` VALUES (4, 'auth', 'user');
INSERT INTO `django_content_type` VALUES (5, 'contenttypes', 'contenttype');
INSERT INTO `django_content_type` VALUES (7, 'myapp', 'ad');
INSERT INTO `django_content_type` VALUES (8, 'myapp', 'classification');
INSERT INTO `django_content_type` VALUES (17, 'myapp', 'comment');
INSERT INTO `django_content_type` VALUES (9, 'myapp', 'errorlog');
INSERT INTO `django_content_type` VALUES (18, 'myapp', 'feedback');
INSERT INTO `django_content_type` VALUES (10, 'myapp', 'loginlog');
INSERT INTO `django_content_type` VALUES (11, 'myapp', 'notice');
INSERT INTO `django_content_type` VALUES (12, 'myapp', 'oplog');
INSERT INTO `django_content_type` VALUES (16, 'myapp', 'order');
INSERT INTO `django_content_type` VALUES (15, 'myapp', 'record');
INSERT INTO `django_content_type` VALUES (14, 'myapp', 'thing');
INSERT INTO `django_content_type` VALUES (13, 'myapp', 'user');
INSERT INTO `django_content_type` VALUES (6, 'sessions', 'session');

-- ----------------------------
-- Table structure for django_migrations
-- ----------------------------
DROP TABLE IF EXISTS `django_migrations`;
CREATE TABLE `django_migrations`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 25 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_migrations
-- ----------------------------
INSERT INTO `django_migrations` VALUES (1, 'contenttypes', '0001_initial', '2024-06-03 22:25:44.960175');
INSERT INTO `django_migrations` VALUES (2, 'auth', '0001_initial', '2024-06-03 22:25:45.255386');
INSERT INTO `django_migrations` VALUES (3, 'admin', '0001_initial', '2024-06-03 22:25:45.332062');
INSERT INTO `django_migrations` VALUES (4, 'admin', '0002_logentry_remove_auto_add', '2024-06-03 22:25:45.349284');
INSERT INTO `django_migrations` VALUES (5, 'admin', '0003_logentry_add_action_flag_choices', '2024-06-03 22:25:45.361696');
INSERT INTO `django_migrations` VALUES (6, 'contenttypes', '0002_remove_content_type_name', '2024-06-03 22:25:45.456942');
INSERT INTO `django_migrations` VALUES (7, 'auth', '0002_alter_permission_name_max_length', '2024-06-03 22:25:45.506576');
INSERT INTO `django_migrations` VALUES (8, 'auth', '0003_alter_user_email_max_length', '2024-06-03 22:25:45.560736');
INSERT INTO `django_migrations` VALUES (9, 'auth', '0004_alter_user_username_opts', '2024-06-03 22:25:45.580174');
INSERT INTO `django_migrations` VALUES (10, 'auth', '0005_alter_user_last_login_null', '2024-06-03 22:25:45.628878');
INSERT INTO `django_migrations` VALUES (11, 'auth', '0006_require_contenttypes_0002', '2024-06-03 22:25:45.634138');
INSERT INTO `django_migrations` VALUES (12, 'auth', '0007_alter_validators_add_error_messages', '2024-06-03 22:25:45.649110');
INSERT INTO `django_migrations` VALUES (13, 'auth', '0008_alter_user_username_max_length', '2024-06-03 22:25:45.699928');
INSERT INTO `django_migrations` VALUES (14, 'auth', '0009_alter_user_last_name_max_length', '2024-06-03 22:25:45.756672');
INSERT INTO `django_migrations` VALUES (15, 'auth', '0010_alter_group_name_max_length', '2024-06-03 22:25:45.812908');
INSERT INTO `django_migrations` VALUES (16, 'auth', '0011_update_proxy_permissions', '2024-06-03 22:25:45.832870');
INSERT INTO `django_migrations` VALUES (17, 'auth', '0012_alter_user_first_name_max_length', '2024-06-03 22:25:45.896973');
INSERT INTO `django_migrations` VALUES (18, 'myapp', '0001_initial', '2024-06-03 22:25:46.709329');
INSERT INTO `django_migrations` VALUES (19, 'myapp', '0002_thing_user', '2024-06-03 22:25:46.765157');
INSERT INTO `django_migrations` VALUES (20, 'myapp', '0003_auto_20240504_1643', '2024-06-03 22:25:46.952533');
INSERT INTO `django_migrations` VALUES (21, 'myapp', '0004_auto_20240504_1700', '2024-06-03 22:25:47.049812');
INSERT INTO `django_migrations` VALUES (22, 'myapp', '0005_auto_20240603_2225', '2024-06-03 22:25:47.380075');
INSERT INTO `django_migrations` VALUES (23, 'sessions', '0001_initial', '2024-06-03 22:25:47.429409');
INSERT INTO `django_migrations` VALUES (24, 'myapp', '0006_auto_20240605_2024', '2024-06-05 20:24:54.932834');

-- ----------------------------
-- Table structure for django_session
-- ----------------------------
DROP TABLE IF EXISTS `django_session`;
CREATE TABLE `django_session`  (
  `session_key` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `session_data` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`) USING BTREE,
  INDEX `django_session_expire_date_a5c62663`(`expire_date`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_session
-- ----------------------------

SET FOREIGN_KEY_CHECKS = 1;
