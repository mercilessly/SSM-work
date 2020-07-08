/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 100315
 Source Host           : localhost:3306
 Source Schema         : boot_work

 Target Server Type    : MySQL
 Target Server Version : 100315
 File Encoding         : 65001

 Date: 04/07/2019 18:15:20
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for feedback
-- ----------------------------
DROP TABLE IF EXISTS `feedback`;
CREATE TABLE `feedback`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `member_code` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `email` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `phone` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `text` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `status` int(1) NULL DEFAULT 1,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 19 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of feedback
-- ----------------------------
INSERT INTO `feedback` VALUES (1, '100', '张三', '215315@qq.com', '153245512', 'dafmakfnsdjnfvnfkefo', 1);
INSERT INTO `feedback` VALUES (2, '101', 'das', '2422', '24222', '2\\2\\2\\', 0);
INSERT INTO `feedback` VALUES (4, '100', '4242', '42424', '272757', '727272', 1);
INSERT INTO `feedback` VALUES (5, '103', '2427', '7577', '57575', '7575', 1);
INSERT INTO `feedback` VALUES (6, '104', '225', '2377', 'hhfg', 'dfgdf', 1);
INSERT INTO `feedback` VALUES (7, '100', '22', 'gdhhd', 'dhdfhfh', 'dfhdfhd', 1);
INSERT INTO `feedback` VALUES (8, '100', '245274', '242424@qq.cc', '245757', '745452424', 0);
INSERT INTO `feedback` VALUES (9, '100', '2424', '242424@hfjf', '212424', 'kghcjcgfjfcx', 1);

-- ----------------------------
-- Table structure for member
-- ----------------------------
DROP TABLE IF EXISTS `member`;
CREATE TABLE `member`  (
  `id` int(32) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `member_code` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '编号',
  `member_password` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '密码',
  `member_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '姓名',
  `member_gender` varchar(12) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '性别',
  `member_create_code` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人id',
  `member_status` int(1) NULL DEFAULT NULL COMMENT '会员状态0(停用),1(正常)',
  `member_email` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邮箱',
  `member_phone` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '电话',
  `member_address` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '联系地址',
  `member_createtime` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `member_photo_path` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '图片地址',
  `member_photo_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '图片名字',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 214 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of member
-- ----------------------------
INSERT INTO `member` VALUES (1, '100', '123', '小张', '男', 'm100', 1, '164846@163.com', '13848399998', '北京昌平区西三旗', '2016-04-08 16:32:01', '/upload/1561119102451.jpg', '1561119102451.jpg');
INSERT INTO `member` VALUES (2, '101', '123', '小李', '男', 'm100', 1, '24545846@163.com', '13888888888', '北京昌平区西三旗', '2016-04-08 16:32:01', '/upload/1561128759565.jpg', '1561128759565.jpg');
INSERT INTO `member` VALUES (3, '102', '123', '小雪', '女', 'm100', 0, '635341641@163.com', '13848399998', '北京昌平区西三旗', '2019-06-11 22:31:39', '', '1561038909808.ico');
INSERT INTO `member` VALUES (4, '103', '123', '小雪', '女', 'm100', 1, '635341641@163.com', '13848399998', '北京昌平区西三旗', '2019-06-11 22:31:39', '/upload/1561445096445.jpg', '1561445096445.jpg');
INSERT INTO `member` VALUES (5, '104', '123', '小雪', '女', 'm100', 1, '635341641@163.com', '13848399998', '北京昌平区西三旗', '2019-06-11 22:31:39', NULL, NULL);
INSERT INTO `member` VALUES (6, '105', '123', '小雪', '女', 'm100', 1, '635341641@163.com', '13848399998', '北京昌平区西三旗', '2019-06-11 22:31:39', NULL, NULL);
INSERT INTO `member` VALUES (7, '106', '123', '小雪', '女', 'm100', 1, '635341641@163.com', '13848399998', '北京昌平区西三旗', '2019-06-11 22:31:39', NULL, NULL);
INSERT INTO `member` VALUES (8, '107', '123', '小雪', '女', 'm100', 1, '635341641@163.com', '13848399998', '北京昌平区西三旗', '2019-06-11 22:31:39', NULL, NULL);
INSERT INTO `member` VALUES (9, '108', '123', '小雪', '女', 'm100', 1, '635341641@163.com', '13848399998', '北京昌平区西三旗', '2019-06-11 22:31:39', NULL, NULL);
INSERT INTO `member` VALUES (10, '109', '123', '小雪', '女', 'm100', 1, '635341641@163.com', '13848399998', '北京昌平区西三旗', '2019-06-11 22:31:39', NULL, NULL);
INSERT INTO `member` VALUES (183, '15415', '1513', 'twa', '男', 'm001', 1, 'fdaf@163.com', '232453244', 'afafatfta', '2019-06-16 05:14:36', NULL, NULL);
INSERT INTO `member` VALUES (184, '115', '123', '李四', '男', 'm001', 1, '164646@163.com', '15464646', 'dafdafa', '2019-06-17 05:16:33', NULL, NULL);
INSERT INTO `member` VALUES (186, '2424', '2424', '242', '424242', 'm001', 1, '244242', '24242', '424', '2019-06-18 03:39:42', NULL, NULL);
INSERT INTO `member` VALUES (195, '1223', '1234', '成大幅', '男', '自我注册', 1, '425454@qq.com', '1543468', 'fafatfga', '2019-07-03 08:59:17', NULL, NULL);
INSERT INTO `member` VALUES (196, '1223', '1234', '成大幅', '女', '自我注册', 1, '24242', '1543468', '2424274', '2019-07-03 09:01:04', NULL, NULL);
INSERT INTO `member` VALUES (202, '1223', '1234', '1111111', '男', '自我注册', 1, '425454@qq.com', '1543468', 'fafatfga', '2019-07-03 09:50:00', NULL, NULL);

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user`  (
  `user_id` int(32) NOT NULL AUTO_INCREMENT COMMENT '用户id',
  `user_code` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户账号',
  `user_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户名称',
  `user_password` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户密码',
  `user_state` int(1) NOT NULL COMMENT '1:正常,0:暂停',
  `user_power` int(1) NULL DEFAULT NULL COMMENT '1:无敌2:',
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES (1, 'm001', '王林成', '1234', 1, 1);
INSERT INTO `sys_user` VALUES (5, 'm002', 'jack', '1234', 1, 2);
INSERT INTO `sys_user` VALUES (6, 'm003', 'jerry', '1234', 0, 2);
INSERT INTO `sys_user` VALUES (9, '242', '2424', '2424', 0, 2);

-- ----------------------------
-- Table structure for tupian
-- ----------------------------
DROP TABLE IF EXISTS `tupian`;
CREATE TABLE `tupian`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `page` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `text` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `photo_path` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 35 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tupian
-- ----------------------------
INSERT INTO `tupian` VALUES (1, '高中数学', 'learn', '学习阶段', '', 'images/1.jpg');
INSERT INTO `tupian` VALUES (2, '高考英语', 'learn', '学习阶段', NULL, 'images/index_top.jpg');
INSERT INTO `tupian` VALUES (3, '高考物理化', 'learn', '学习阶段', NULL, 'images/online_training.jpg');
INSERT INTO `tupian` VALUES (4, '中考英语', 'learn', '学习阶段', NULL, 'images/feedback.jpg');
INSERT INTO `tupian` VALUES (5, '中考数学', 'learn', '学习阶段', NULL, 'images/7.jpg');
INSERT INTO `tupian` VALUES (6, '中考物化生', 'learn', '学习阶段', NULL, 'images/8.jpg');
INSERT INTO `tupian` VALUES (7, '小学英语', 'learn', '学习阶段', NULL, 'images/9.jpg');
INSERT INTO `tupian` VALUES (8, '小学数学', 'learn', '学习阶段', NULL, 'images/financial_consultation.jpg');
INSERT INTO `tupian` VALUES (9, '小学思维能力', 'learn', '学习阶段', NULL, 'images/training_admission.jpg');
INSERT INTO `tupian` VALUES (10, '棋牌书法', 'learn', '文艺修养', '课程从基本笔画开始讲解，然后到疑难偏旁、结构规律，中间穿插作品创作，通过精选例字让学员能举一反三、触类旁通，学习欧楷的精髓。.', 'images/b1.png');
INSERT INTO `tupian` VALUES (11, '益智休闲', 'learn', '文艺修养', '记忆九段是一套科学且系统的快速记忆课程，融入了周强老师八年的教学经验。同时也是一套与国际接轨的记忆力评级标准。\r\n                        学习超强记忆方法，练就最强大脑。记忆是一件轻松简单又很愉快的事！.', 'images/b2.jpg');
INSERT INTO `tupian` VALUES (12, '传统文化', 'learn', '文艺修养', '传统文化(Traditional culture)就是文明演化而汇集成的一种反映民族特质和风貌的文化，是民族历史上各种思想文化、观念形态的总体表现。\r\n                    世界各地，各民族都有自己的传统文化。中国的传统文化有道家、墨家、法家、名家、释教类、回教类、西学格致类、近代西方文化等文化形态，\r\n                    包括:古文、诗、词、曲、赋、民族音乐、民族戏剧、曲艺、国画、书法、对联、灯谜、射覆、酒令、歇后语等。.', 'images/b3.png');
INSERT INTO `tupian` VALUES (13, '手工手艺', 'learn', '文艺修养', '适合适合零基础的新手以及想要深入学习发展的手绳编织爱好者；职业手作人，手工工作室及珠宝行业从业人员；希望掌握一门手工技能，修养身心的手绳爱好者。\r\n                    实行小班开课，线上视频+语音教学+课堂作业+课后点评辅导.', 'images/b4.jpg');
INSERT INTO `tupian` VALUES (15, '夏斌 国务院参事、国务院发展研究中心金融研究所名誉所长', 'financial_consulting', '领衔专家', '主要研究方向为宏观经济政策、货币政策、金融监管和中国资本市场发展。', 'images/2-5.jpg');
INSERT INTO `tupian` VALUES (16, '陆磊 中国人民银行研究局局长', 'financial_consulting', '领衔专家', '研究领域集中于货币经济学、转型金融学、腐败经济学、公共经济学与公共政策、开放经济背景下的资本流动和均衡汇率、中央银行制度等。', 'images/2-6.jpg');
INSERT INTO `tupian` VALUES (17, '白景明 财政部财政科学研究所副所长', 'financial_consulting', '领衔专家', '著有《公共经济》、《资金市场》、《财政与发展》、《服务经济学》等6本著作，在国内报刊发表论文、经济评论200余篇', 'images/2-7.jpg');
INSERT INTO `tupian` VALUES (18, '黄震 中央财经大学金融法研究所所长、教授，互联网金融千人会创始人', 'financial_consulting', '领衔专家', '主要从事：民间金融、互联网金融、金融法、法律文化、公益慈善事业等领域研究。', 'images/2-8.jpg');
INSERT INTO `tupian` VALUES (19, '王振中 中国社会科学院经济研究所原副所长、研究员、博士生导师', 'financial_consulting', '领衔专家', '主要研究领域为:经济学基础理论、国际贸易与国际投资、转型经济 。', 'images/2-9.jpg');
INSERT INTO `tupian` VALUES (20, '宋丙涛 中国留美经济学会副会长', 'financial_consulting', '领衔专家', '主要研究兴趣与领域：公共经济学的理论体系，公共经济制度变迁模型研究，中国公共财政体系建设过程研究等', 'images/2-10.jpg');
INSERT INTO `tupian` VALUES (21, '新东方', 'enterprise_residence', '培训企业', '新东方厨师就嫁了吧', 'images/g1.jpg');
INSERT INTO `tupian` VALUES (22, '汉唐金融', 'enterprise_residence', '培训企业', '中国金融资讯专业平台', 'images/g2.jpg');
INSERT INTO `tupian` VALUES (23, '233网校', 'enterprise_residence', '培训企业', '回归初心，坚守品质', 'images/g3.jpg');
INSERT INTO `tupian` VALUES (24, '学科网', 'enterprise_residence', '培训企业', '孩子的成长家园', 'images/g4.jpg');
INSERT INTO `tupian` VALUES (25, '中国慕课网', 'enterprise_residence', '培训企业', '国家精品课程在线学习', 'images/g5.jpg');
INSERT INTO `tupian` VALUES (26, 'csdn', 'enterprise_residence', '培训企业', '专业it技术社区', 'images/g6.jpg');
INSERT INTO `tupian` VALUES (27, '最代码', 'enterprise_residence', '培训企业', '程序猿交流平台', 'images/g7.jpg');
INSERT INTO `tupian` VALUES (28, '黑马程序员', 'enterprise_residence', '培训企业', '程序员的梦工厂', 'images/g8.jpg');
INSERT INTO `tupian` VALUES (29, '中国传统文化网', 'enterprise_residence', '培训企业', '继承发扬传统文化', 'images/g9.jpg');
INSERT INTO `tupian` VALUES (30, '网络课程', 'index', '产品介绍', '<p>网络课程全称：网络课程与网络资源开发</p><br/>\r\n                <p>网络课程就是通过某种软件在网络上进行的远程课程。</p><br/>\r\n                <p>开设机构:加州大学伯克利分校，麻省理工学院</p>', 'images/timg.jpg');
INSERT INTO `tupian` VALUES (31, '线上培训', 'index', '产品介绍', '<p>优势：时间短，快捷，方便</p><br/>\r\n                <p>作用：实现员工的自动化管理。</p><br/>', 'images/online_training.jpg');
INSERT INTO `tupian` VALUES (32, '金融咨询', 'index', '产品介绍', '<p>范围：管控模式与组织设计、人力资源管理、财务管理</p><br/>\r\n                <p>服务对象：商业银行、保险公司、证券公司与投资银行、基金与资产管理公司</p><br/>\r\n                <p>优势领域：金融政策、金融市场进入策略、金融市场竞争战略</p>', 'images/financial_consultation.jpg');
INSERT INTO `tupian` VALUES (33, '培训企业入驻', 'index', '产品介绍', '<p>培训类型：以能力为主，以绩效为主，以岗位为主</p><br/>\r\n                <p>组合：跨国连锁企业能力为主线+岗位为主线+课程为主线</p><br/>', 'images/training_admission.jpg');
INSERT INTO `tupian` VALUES (34, '客户售后反馈', 'index', '产品介绍', '<p>网络课程全称：网络课程与网络资源开发</p><br/>\r\n                <p>网络课程就是通过某种软件在网络上进行的远程课程。</p><br/>\r\n                <p>开设机构:加州大学伯克利分校，麻省理工学院</p>', 'images/feedback.jpg');

SET FOREIGN_KEY_CHECKS = 1;
