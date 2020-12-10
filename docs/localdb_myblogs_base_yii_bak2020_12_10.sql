/*
 Navicat Premium Data Transfer

 Source Server         : 坤时--测试-本地mysql
 Source Server Type    : MySQL
 Source Server Version : 50732
 Source Host           : localhost:3306
 Source Schema         : localdb_myblogs_base_yii

 Target Server Type    : MySQL
 Target Server Version : 50732
 File Encoding         : 65001

 Date: 10/12/2020 23:16:58
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for #@__ad
-- ----------------------------
DROP TABLE IF EXISTS `#@__ad`;
CREATE TABLE `#@__ad` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `title` varchar(50) NOT NULL COMMENT '广告名称',
  `title_alias` char(40) NOT NULL DEFAULT '' COMMENT '标识',
  `link_url` varchar(255) NOT NULL DEFAULT '' COMMENT '链接地址',
  `image_url` varchar(255) NOT NULL DEFAULT '' COMMENT '图片地址',
  `width` varchar(10) NOT NULL DEFAULT '' COMMENT '图片宽',
  `height` varchar(10) NOT NULL DEFAULT '' COMMENT '图片高',
  `intro` text COMMENT '广告描述',
  `click_count` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '点击数',
  `start_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '开始时间',
  `expired_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '过期时间',
  `attach_file` varchar(100) NOT NULL DEFAULT '' COMMENT '附件',
  `sort_order` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  `status_is` enum('Y','N') NOT NULL DEFAULT 'Y' COMMENT '状态',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '录入时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='广告';

-- ----------------------------
-- Records of #@__ad
-- ----------------------------
BEGIN;
INSERT INTO `#@__ad` VALUES (1, '首页banner', 'index_banner', 'http://www.bagecms.com', '', '', '', '', 0, 1379520000, 1546272000, 'uploads/201309/523a2c04a37a1.jpg', 8, 'Y', 1379544068);
INSERT INTO `#@__ad` VALUES (2, '首页banner', 'index_banner', '', '', '', '', '', 0, 1379520000, 1546272000, 'uploads/201309/523a2c4baba12.jpg', 9, 'Y', 1379544139);
INSERT INTO `#@__ad` VALUES (3, '首页banner', 'index_banner', '', '', '', '', '', 0, 1379520000, 1379606400, 'uploads/201309/523a2ca7b51ce.jpg', 10, 'Y', 1379544231);
COMMIT;

-- ----------------------------
-- Table structure for #@__admin
-- ----------------------------
DROP TABLE IF EXISTS `#@__admin`;
CREATE TABLE `#@__admin` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` char(50) NOT NULL COMMENT '用户',
  `password` char(32) NOT NULL COMMENT '密码',
  `realname` varchar(100) NOT NULL DEFAULT '' COMMENT '真实姓名',
  `group_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '用户组',
  `email` varchar(100) NOT NULL DEFAULT '' COMMENT '邮箱',
  `qq` varchar(15) NOT NULL DEFAULT '0' COMMENT 'QQ',
  `notebook` text COMMENT '备忘',
  `mobile` varchar(20) NOT NULL DEFAULT '' COMMENT '电话',
  `telephone` varchar(20) NOT NULL DEFAULT '' COMMENT '手机',
  `last_login_ip` char(15) NOT NULL DEFAULT '127' COMMENT '最后登录ip',
  `last_login_time` int(10) NOT NULL DEFAULT '0' COMMENT '最后登录时间',
  `login_count` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '登录次数',
  `status_is` enum('Y','N') NOT NULL DEFAULT 'Y' COMMENT '用户状态',
  `create_time` int(10) NOT NULL DEFAULT '0' COMMENT '录入时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='管理员';

-- ----------------------------
-- Table structure for #@__admin_group
-- ----------------------------
DROP TABLE IF EXISTS `#@__admin_group`;
CREATE TABLE `#@__admin_group` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `group_name` varchar(50) NOT NULL COMMENT '组名称',
  `acl` text NOT NULL COMMENT '权限',
  `status_is` enum('Y','N') NOT NULL DEFAULT 'Y' COMMENT '状态',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '录入时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='管理员组';

-- ----------------------------
-- Table structure for #@__admin_logger
-- ----------------------------
DROP TABLE IF EXISTS `#@__admin_logger`;
CREATE TABLE `#@__admin_logger` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '用户id',
  `catalog` enum('login','create','update','delete','other','browse') NOT NULL DEFAULT 'other' COMMENT '类型',
  `url` varchar(255) NOT NULL DEFAULT '' COMMENT 'url',
  `intro` text COMMENT '操作',
  `ip` char(15) NOT NULL DEFAULT '127.0.0.1' COMMENT '操作ip',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '操作时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='管理员日志';

-- ----------------------------
-- Table structure for #@__attr
-- ----------------------------
DROP TABLE IF EXISTS `#@__attr`;
CREATE TABLE `#@__attr` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `scope` enum('config','post','page') NOT NULL DEFAULT 'post' COMMENT '使用范围',
  `attr_name` varchar(50) NOT NULL COMMENT '字段名称',
  `attr_name_alias` char(50) NOT NULL DEFAULT '' COMMENT '字段别名',
  `catalog_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '所属栏目',
  `tips` varchar(255) NOT NULL DEFAULT '' COMMENT '说明',
  `sort_order` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  `attr_type` enum('select','input','file','checkbox','textarea','radio') NOT NULL DEFAULT 'input' COMMENT '字段类型',
  `data_default` text COMMENT '字段默认数据',
  `max_lenght` int(11) NOT NULL DEFAULT '0' COMMENT '长度',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '录入时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='扩展字段管理';

-- ----------------------------
-- Records of #@__attr
-- ----------------------------
BEGIN;
INSERT INTO `#@__attr` VALUES (1, 'config', '手机', 'mobile', 0, '', 0, 'input', '', 0, 1379553842);
INSERT INTO `#@__attr` VALUES (2, 'config', '传真', 'fax', 0, '', 0, 'input', '', 0, 1379553920);
INSERT INTO `#@__attr` VALUES (3, 'config', '电话', 'telephone', 0, '', 0, 'input', '', 0, 1379553920);
INSERT INTO `#@__attr` VALUES (4, 'config', '400电话', 'telephone_400', 0, '', 0, 'input', '', 0, 1379553920);
INSERT INTO `#@__attr` VALUES (5, 'config', '地址', 'address', 0, '', 0, 'input', '', 0, 1379553920);
COMMIT;

-- ----------------------------
-- Table structure for #@__attr_val
-- ----------------------------
DROP TABLE IF EXISTS `#@__attr_val`;
CREATE TABLE `#@__attr_val` (
  `val_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '内容编号',
  `attr_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '属性编号',
  `attr_name` varchar(60) NOT NULL DEFAULT '' COMMENT '属性名称',
  `attr_val` text COMMENT '属性内容',
  PRIMARY KEY (`val_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='属性内容';

-- ----------------------------
-- Table structure for #@__catalog
-- ----------------------------
DROP TABLE IF EXISTS `#@__catalog`;
CREATE TABLE `#@__catalog` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '上级分类',
  `catalog_name` varchar(100) NOT NULL COMMENT '名称',
  `catalog_name_second` varchar(100) DEFAULT '' COMMENT '副名称',
  `catalog_name_alias` varchar(100) NOT NULL DEFAULT '' COMMENT '别名',
  `content` text COMMENT '详细介绍',
  `seo_title` varchar(100) NOT NULL DEFAULT '' COMMENT 'seo标题',
  `seo_keywords` varchar(255) NOT NULL DEFAULT '' COMMENT 'seo关键字',
  `seo_description` text COMMENT 'seo描述',
  `attach_file` varchar(100) DEFAULT '' COMMENT '附件',
  `attach_thumb` varchar(100) DEFAULT '' COMMENT '缩略图',
  `sort_order` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  `data_count` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '数据量',
  `page_size` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '每页显示数量',
  `status_is` enum('Y','N') NOT NULL DEFAULT 'Y' COMMENT '状态',
  `menu_is` enum('Y','N') DEFAULT 'N' COMMENT '是否导航显示',
  `redirect_url` varchar(255) NOT NULL DEFAULT '' COMMENT '跳转地址',
  `display_type` enum('page','list') NOT NULL DEFAULT 'list' COMMENT '显示方式',
  `template_list` varchar(100) NOT NULL DEFAULT '' COMMENT '列表模板',
  `template_page` varchar(100) NOT NULL DEFAULT '' COMMENT '单页模板',
  `template_show` varchar(100) NOT NULL DEFAULT '' COMMENT '内容页模板',
  `acl_browser` varchar(255) NOT NULL DEFAULT '' COMMENT '浏览权限',
  `acl_operate` varchar(255) NOT NULL DEFAULT '' COMMENT '操作权限',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '录入时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='全局分类';

-- ----------------------------
-- Records of #@__catalog
-- ----------------------------
BEGIN;
INSERT INTO `#@__catalog` VALUES (1, 0, '新闻', '新闻', 'news', '新闻栏目介绍', '', '', '', '', '', 0, 0, 0, 'Y', 'N', '', 'list', 'list_text', 'list_page', 'show_post', '', '', 1379545020);
INSERT INTO `#@__catalog` VALUES (2, 1, '公司动态', '公司动态', 'company-news', '公司动态栏目介绍', '', '', '', '', '', 0, 0, 0, 'Y', 'N', '', 'list', 'list_text', 'list_page', 'show_post', '', '', 1379545199);
INSERT INTO `#@__catalog` VALUES (3, 1, '行业新闻', '行业新闻', 'industry-news', '行业新闻栏目介绍', '', '', '', '', '', 0, 0, 0, 'Y', 'N', '', 'list', 'list_text', 'list_page', 'show_post', '', '', 1379545248);
INSERT INTO `#@__catalog` VALUES (4, 0, '产品', '产品', 'goods', '产品栏目介绍', '', '', '', '', '', 0, 0, 0, 'Y', 'N', '', 'list', 'list_goods', 'list_page', 'show_goods', '', '', 1379545330);
INSERT INTO `#@__catalog` VALUES (5, 4, '新品上市', '新品上市', 'new-arrival', '新品上市栏目介绍', '', '', '', '', '', 0, 0, 0, 'Y', 'N', '', 'list', 'list_goods', 'list_page', 'show_goods', '', '', 1379545388);
INSERT INTO `#@__catalog` VALUES (6, 4, '特价商品', '特价商品', 'sales-goods', '特价商品栏目介绍', '', '', '', '', '', 0, 0, 0, 'Y', 'N', '', 'list', 'list_goods', 'list_page', 'show_goods', '', '', 1379545435);
COMMIT;

-- ----------------------------
-- Table structure for #@__config
-- ----------------------------
DROP TABLE IF EXISTS `#@__config`;
CREATE TABLE `#@__config` (
  `scope` char(20) NOT NULL DEFAULT '' COMMENT '范围',
  `variable` varchar(50) NOT NULL COMMENT '变量',
  `value` text COMMENT '值',
  `description` varchar(255) NOT NULL DEFAULT '' COMMENT '描述',
  PRIMARY KEY (`variable`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='系统配置';

-- ----------------------------
-- Records of #@__config
-- ----------------------------
BEGIN;
INSERT INTO `#@__config` VALUES ('base', 'site_name', '八哥网站内容管理系统', '');
INSERT INTO `#@__config` VALUES ('base', 'site_domain', 'http://www.bagecms.com', '');
INSERT INTO `#@__config` VALUES ('base', 'admin_email', 'abc@qq.com', '');
INSERT INTO `#@__config` VALUES ('base', 'site_icp', '', '');
INSERT INTO `#@__config` VALUES ('base', 'site_closed_summary', '系统维护中，请稍候......', '');
INSERT INTO `#@__config` VALUES ('base', 'site_stats', '', '');
INSERT INTO `#@__config` VALUES ('base', 'seo_title', '网站标题-网站标题', '');
INSERT INTO `#@__config` VALUES ('base', 'seo_description', '网站描述-seo_description', '');
INSERT INTO `#@__config` VALUES ('base', 'seo_keywords', '网站关键字-seo_keywords', '');
INSERT INTO `#@__config` VALUES ('base', 'admin_telephone', '18606712910', '');
INSERT INTO `#@__config` VALUES ('base', 'site_status', 'open', '');
INSERT INTO `#@__config` VALUES ('base', 'site_status_intro', '网站升级中..........', '');
INSERT INTO `#@__config` VALUES ('base', 'admin_logger', 'open', '');
INSERT INTO `#@__config` VALUES ('base', 'user_status', 'open', '');
INSERT INTO `#@__config` VALUES ('base', 'user_mail_verify', 'open', '');
INSERT INTO `#@__config` VALUES ('base', 'site_copyright', 'COPYRIGHT © 2012 - 2014 BageCMS. ALL RIGHTS RESERVED.八哥内容管理系统 版权所有', '');
INSERT INTO `#@__config` VALUES ('base', 'upload_water_size', '100x100', '');
INSERT INTO `#@__config` VALUES ('base', 'upload_water_file', 'static/watermark.png', '');
INSERT INTO `#@__config` VALUES ('base', 'upload_water_status', 'close', '');
INSERT INTO `#@__config` VALUES ('base', 'upload_allow_ext', 'jpg,gif,bmp,jpeg,png,doc,zip,rar,7z,txt,sql,pdf', '');
INSERT INTO `#@__config` VALUES ('base', 'upload_max_size', '200', '');
INSERT INTO `#@__config` VALUES ('base', 'upload_water_scope', '100x100', '');
INSERT INTO `#@__config` VALUES ('base', 'upload_water_position', '5', '');
INSERT INTO `#@__config` VALUES ('base', 'upload_water_padding', '5', '');
INSERT INTO `#@__config` VALUES ('base', 'upload_water_trans', '30', '');
INSERT INTO `#@__config` VALUES ('custom', '_address', '浙江省杭州市西湖区请填写详细地址', '');
INSERT INTO `#@__config` VALUES ('custom', '_fasdf', 'fasfcccccccccccc', '');
INSERT INTO `#@__config` VALUES ('custom', '_telephone', '(+86 10) 5992 8888', '');
INSERT INTO `#@__config` VALUES ('custom', '_telephone_400', '400 888 888', '');
INSERT INTO `#@__config` VALUES ('custom', '_fax', '传真:(+86 10) 5992 0000', '');
INSERT INTO `#@__config` VALUES ('custom', '_mobile', '18600000000', '');
COMMIT;

-- ----------------------------
-- Table structure for #@__link
-- ----------------------------
DROP TABLE IF EXISTS `#@__link`;
CREATE TABLE `#@__link` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `site_name` varchar(100) NOT NULL COMMENT '名称',
  `site_url` varchar(255) NOT NULL COMMENT '链接地址',
  `sort_order` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  `click_count` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '点击次数',
  `link_type` enum('image','txt') NOT NULL DEFAULT 'txt' COMMENT '链接类型',
  `attach_file` varchar(100) NOT NULL DEFAULT '' COMMENT '链接图片',
  `status_is` enum('Y','N') NOT NULL DEFAULT 'Y' COMMENT '显示状态',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '录入时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='友情链接';

-- ----------------------------
-- Table structure for #@__page
-- ----------------------------
DROP TABLE IF EXISTS `#@__page`;
CREATE TABLE `#@__page` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL COMMENT '标题',
  `title_second` varchar(100) NOT NULL DEFAULT '' COMMENT '副标题',
  `title_alias` char(40) NOT NULL COMMENT '标签',
  `html_path` varchar(100) NOT NULL DEFAULT '' COMMENT 'html路径',
  `html_file` varchar(100) NOT NULL DEFAULT '' COMMENT 'html文件',
  `intro` text COMMENT '简单描述',
  `content` mediumtext NOT NULL COMMENT '内容',
  `seo_title` varchar(255) NOT NULL DEFAULT '' COMMENT 'SEO标题',
  `seo_keywords` varchar(255) NOT NULL DEFAULT '' COMMENT 'SEO KEYWORDS',
  `seo_description` text COMMENT 'SEO DESCRIPTION',
  `template` varchar(30) NOT NULL DEFAULT '' COMMENT '模板',
  `attach_file` varchar(60) NOT NULL DEFAULT '' COMMENT '附件',
  `attach_thumb` varchar(60) NOT NULL DEFAULT '' COMMENT '附件小图',
  `sort_order` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  `view_count` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '查看次数',
  `status_is` enum('Y','N') NOT NULL DEFAULT 'Y' COMMENT '状态',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='单页';

-- ----------------------------
-- Records of #@__page
-- ----------------------------
BEGIN;
INSERT INTO `#@__page` VALUES (1, '关于我们', '', 'about', '', '', 'BageCms是一款基于php5+mysql5开发的多功能开源的网站内容管理系统。使用高性能的PHP5的web应用程序开发框架YII构建，具有操作简单、稳定、安全、高效、跨平台等特点。采用MVC设计模式，模板定制方便灵活，内置小挂工具，方便制作各类功能和效果，BageCms可用于企业建站、个人博客、资讯门户、图片站等各类型站点', '<p>\r\n	BageCms是一款基于php5+mysql5开发的多功能开源的网站内容管理系统。使用高性能的PHP5的web应用程序开发框架YII构建，具有操作简单、稳定、安全、高效、跨平台等特点。采用MVC设计模式，模板定制方便灵活，内置小挂工具，方便制作各类功能和效果，BageCms可用于企业建站、个人博客、资讯门户、图片站等各类型站点。<br />\r\n<br />\r\n特点：<br />\r\n<br />\r\n1.开源免费<br />\r\n无论是个人还是企业展示型网站均可用本系统来完成<br />\r\n<br />\r\n2.数据调用方便快捷<br />\r\n自主研发的数据调用模块，能快速调用各类型数据，方便建站<br />\r\n<br />\r\n3.应用范围广<br />\r\n这套系统不是企业网站管理系统，也不是博客程序，更不是专业的图片管理系统，但它却具备大部分企业站、博客站、图片站的功能<br />\r\n<br />\r\n4.安全高性能<br />\r\n基于高性能的PHP5的web应用程序开发框架YII构建具有稳定、安全、高效、跨平台等特点<br />\r\n<br />\r\n5.URL自定义<br />\r\n系统支持自定义伪静态显示方式，良好的支持搜索引擎SEO。个性化设置每个栏目、内容的标题标签、描述标签、关键词标签<br />\r\n<br />\r\n6.自定义数据模型<br />\r\n系统可自定义数据模型满足各种表示形式和字段需求<br />\r\n<br />\r\n7.完善的后台权限控制<br />\r\n特有的管理员权限管理机制，可以灵活设置管理员的栏目管理权限、网站信息的添加、修改、删除权限等<br />\r\n<br />\r\n<br />\r\n系统运行环境：<br />\r\n数据库： mysql5+<br />\r\nPHP版本：php5.2.+<br />\r\n服务器：linux,unix,freebsd等<br />\r\n<br />\r\n官方网址：http://www.bagecms.com<br />\r\n下载地址：http://www.bagecms.com/download/bagecms<br />\r\n<br />\r\n演示地址：http://demo.bagecms.com<br />\r\n后台地址：http://demo.bagecms.com/admini<br />\r\n用户：bagecms<br />\r\n密码：bagecms\r\n</p>\r\n<p>\r\n	<br />\r\n</p>', '', '', '', '', 'uploads/201309/logo.jpg', 'uploads/201309/logo.jpg', 0, 0, 'Y', 1322999570);
INSERT INTO `#@__page` VALUES (2, '联系我们', '', 'contact', '', '', '', '<p>\r\n	QQ:5565907\r\n</p>\r\n<p>\r\n	QQ群：139869141\r\n</p>\r\n<p>\r\n	BageCMS官方网站：<a href=\"http://www.bagecms.com\" target=\"_blank\">http://www.bagecms.com</a>\r\n</p>\r\n<p>\r\n	八哥软件官方网站：<a href=\"http://www.bagesoft.cn\" target=\"_blank\">http://www.bagesoft.cn</a>\r\n</p>', '', '', '', '', '', '', 0, 0, 'Y', 1322999588);
INSERT INTO `#@__page` VALUES (3, '企业文化', '', 'cultural', '', '', '企业文化是企业为解决生存和发展的问题的而树立形成的，被组织成员认为有效而共享，并共同遵循的基本信念和认知。 企业文化集中体现了一个企业经营管理的核心主张，以及由此产生的组织行为。', '<div>\r\n	<div>\r\n		迪尔和肯尼迪把企业文化整个理论系统概述为5个要素，即企业环境、价值观、英雄人物、文化仪式和文化网络。\r\n	</div>\r\n	<div>\r\n		企业环境是指企业的性质、企业的经营方向、外部环境、企业的社会形象、与外界的联系等方面。它往往决定企业的行为。\r\n	</div>\r\n	<div>\r\n		价值观是指企业内成员对某个事件或某种行为好与坏、善与恶、正确与错误、是否值得仿效的一致认识。价值观是企业文化的核心，统一的价值观使企业内成员在判断自己行为时具有统一的标准，并以此来选择自己的行为。\r\n	</div>\r\n	<div>\r\n		英雄人物是指企业文化的核心人物或企业文化的人格化，其作用在于作为一种活的样板，给企业中其他员工提供可供仿效的榜样，对企业文化的形成和强化起着极为重要的作用。\r\n	</div>\r\n	<div>\r\n		文化仪式是指企业内的各种表彰、奖励活动、聚会以及文娱活动等，它可以把企业中发生的某些事情戏剧化和形象化，来生动的宣传和体现本企业的价值观，使人们通过这些生动活泼的活动来领会企业文化的内涵，使企业文化“寓教于乐”之中。\r\n	</div>\r\n	<div>\r\n		文化网络是指非正式的信息传递渠道，主要是传播文化信息。它是由某种非正式的组织和人群，以及某一特定场合所组成，它所传递出的信息往往能反映出职工的愿望和心态。\r\n	</div>\r\n	<h3>\r\n		产生\r\n	</h3>\r\n	<div>\r\n		企业领导者把文化的变化人的功能应用于企业，以解决现代企业管理中的问题，就有了企业文化。企业管理理论和企业文化管理理论都追求效益。但前者为追求效益而把人当作客体，后者为追求效益把文化概念自觉应用于企业，把具有丰富创造性的人作为管理理论的中心。这种指导思想反映到企业管理中去，就有了人们称之为企业文化的种种观念。\r\n	</div>\r\n	<h3>\r\n		认识\r\n	</h3>\r\n	<div>\r\n		从企业文化的现实出发，进行深入的调查研究，把握企业文化各种现象之间的本质联系。依据实践经验，从感认认识到理性认识，进行科学的概括、总结。\r\n	</div>\r\n	<h3>\r\n		意义\r\n	</h3>\r\n	<div>\r\n		一．企业文化能激发员工的使命感。不管是什么企业都有它的责任和使命，企业使命感是全体员工工作的目标和方向，是企业不断发展或前进的动力之源。\r\n	</div>\r\n	<div>\r\n		二．企业文化能凝聚员工的归属感。　企业文化的作用就是通过企业价值观的提炼和传播，让一群来自不同地方的人共同追求同一个梦想。\r\n	</div>\r\n	<div>\r\n		三．企业文化能加强员工的责任感。企业要通过大量的资料和文件宣传员工责任感的重要性，管理人员要给全体员工灌输责任意识，危机意识和团队意识，要让大家清楚地认识企业是全体员工共同的企业。\r\n	</div>\r\n	<div>\r\n		四．企业文化能赋予员工的荣誉感。每个人都要在自己的工作岗位，工作领域，多做贡献，多出成绩，多追求荣誉感。\r\n	</div>\r\n	<div>\r\n		五．企业文化能实现员工的成就感。一个企业的繁荣昌盛关系到每一个公司员工的生存，企业繁荣了，员工们就会引以为豪，会更积极努力的进取，荣耀越高，成就感就越大，越明显。\r\n	</div>\r\n</div>\r\n<div>\r\n</div>', '', '', '', '', '', '', 0, 0, 'Y', 1331877791);
INSERT INTO `#@__page` VALUES (4, '管理团队', '', 'team', '', '', '团队是现代企业管理中战斗的核心，几乎没有一家企业不谈团队，好象团队就是企业做大做强的灵丹妙药，只要抓紧团队建设就能有锦锈前程了。团队是个好东西，但怎样的团队才算一个好团队，怎样才能运作好一个团队呢？却是许多企业管理者不甚了然的，于是在企业团队建设的过程中就出现了许多弊病，例如从理论著作中生搬硬套到团队运作里面，是很难产生好团队的。', '<div>\r\n	<div>\r\n		团队是现代企业管理中战斗的核心，几乎没有一家企业不谈团队，好象团队就是企业做大做强的灵丹妙药，只要抓紧团队建设就能有锦锈前程了。团队是个好东西，但怎样的团队才算一个好团队，怎样才能运作好一个团队呢？却是许多企业管理者不甚了然的，于是在企业团队建设的过程中就出现了许多弊病，例如从理论著作中生搬硬套到团队运作里面，是很难产生好团队的。任何理念都不能执着，执着生僵化，就会蜕变为形式主义，后果很糟糕。在如今企业管理者热火朝天进行的团队建设中就存在这个问题，将团队作为企业文化建设的至上准则是不恰当的，是不符合多元化的现实状况的。\r\n	</div>\r\n	<div>\r\n		一个优秀的企业管理者，应该怎样管理员工?道理也很简单，那就是要给员工创造一个充分利用自己的个性将工作干得最好的条件。不一定什么都要团队化，太死板了。虽然现在的企业也都提倡创新，但如果管理者过分强调团队精神，则员工的创新精神必然受到压抑。压抑个性就是压抑创新，没有个性哪来的创新?说得极端一点，企业管理者要谨防团队建设法西斯化。团队是需要的，企业管理者在团队建设的同时要遵循一个原则，不能压抑员工的个性。在团队内部，企业管理者要给员工充分的自由，少说几句少数服从多数，要知道，聪明的人在世界上还就占少数。\r\n	</div>\r\n	<div>\r\n		企业管理者应该解放思想，要有多元化的思维。不同的企业，团队的性质也不一样。要量体裁衣建设符合企业内在要求的团队，要灵活变化，别搞一刀切。如果该企业是劳动密集型企业，那你可以建设一支高度纪律性组织性的团队。如果该企业是知识密集型企业，那就要以自由主义来管理员工了，建立一支人尽其才的团队是最重要的，严格说算不上是团队，也没必要强调团队，更注重的应该是员工的个人创造力，千万别让团队束缚住员工的头脑，当然应该有的纪律和合作也是不可少的。如果企业既有创造型员工也有操作型员工，那可将团队建设重点放到操作型员工身上。需要注意的一点是，越聪明的人越倾向个人主义，这个情况，企业管理者要注意有的放矢。\r\n	</div>\r\n</div>\r\n<div>\r\n</div>', '', '', '', '', '', '', 0, 0, 'Y', 1379392484);
COMMIT;

-- ----------------------------
-- Table structure for #@__post
-- ----------------------------
DROP TABLE IF EXISTS `#@__post`;
CREATE TABLE `#@__post` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL DEFAULT '1' COMMENT '用户',
  `nickname` varchar(30) NOT NULL DEFAULT '' COMMENT '用户名',
  `author` varchar(100) NOT NULL DEFAULT '' COMMENT '作者',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `title_second` varchar(255) NOT NULL DEFAULT '' COMMENT '副标题',
  `title_alias` char(50) NOT NULL DEFAULT '' COMMENT '别名 ',
  `title_style` varchar(255) NOT NULL DEFAULT '' COMMENT '标题样式',
  `title_style_serialize` varchar(255) NOT NULL DEFAULT '' COMMENT '标题样式序列化',
  `html_path` varchar(100) NOT NULL DEFAULT '' COMMENT 'html路径',
  `html_file` varchar(100) NOT NULL DEFAULT '' COMMENT 'html文件名',
  `template` varchar(60) NOT NULL DEFAULT '' COMMENT '模板',
  `catalog_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '分类',
  `special_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '专题编号',
  `intro` text COMMENT '摘要',
  `image_list` text COMMENT '组图',
  `seo_title` varchar(255) NOT NULL DEFAULT '' COMMENT 'SEO标题',
  `seo_description` text COMMENT 'SEO描述',
  `seo_keywords` varchar(255) NOT NULL DEFAULT '' COMMENT 'SEO关键字',
  `content` mediumtext NOT NULL COMMENT '内容',
  `copy_from` varchar(100) NOT NULL DEFAULT '' COMMENT '来源',
  `copy_url` varchar(255) NOT NULL DEFAULT '' COMMENT '来源url',
  `redirect_url` varchar(255) NOT NULL DEFAULT '' COMMENT '跳转URL',
  `tags` varchar(255) NOT NULL DEFAULT '' COMMENT 'tags',
  `view_count` int(10) unsigned NOT NULL DEFAULT '1' COMMENT '查看次数',
  `commend` enum('Y','N') NOT NULL DEFAULT 'N' COMMENT '推荐',
  `attach_status` enum('Y','N') NOT NULL DEFAULT 'N' COMMENT '是否上传附件',
  `attach_file` varchar(255) NOT NULL DEFAULT '' COMMENT '附件名称',
  `attach_thumb` varchar(255) NOT NULL DEFAULT '' COMMENT '附件缩略图',
  `favorite_count` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '收藏数量',
  `attention_count` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '关注次数',
  `top_line` enum('Y','N') NOT NULL DEFAULT 'N' COMMENT '头条',
  `last_update_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '最后更新时间',
  `reply_count` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '回复次数',
  `reply_allow` enum('Y','N') NOT NULL DEFAULT 'Y' COMMENT '允许评论',
  `sort_desc` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  `acl` varchar(100) NOT NULL DEFAULT 'Y' COMMENT '权限检测',
  `status_is` enum('Y','N') NOT NULL DEFAULT 'Y' COMMENT '新闻状态',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '录入时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COMMENT='内容管理';

-- ----------------------------
-- Records of #@__post
-- ----------------------------
BEGIN;
INSERT INTO `#@__post` VALUES (1, 1, '', '', '价值1960元JJ林俊杰「时线Time Line」世界巡回演唱会北京站VIP门票2张，百度团购免费送啦！9月28日首都体育馆', '', '', '', '', '', '', '', 5, 0, '', '', '', '', '', '【中奖号码计算方法】：开奖日前一天的“全国福利彩票新3D开奖号码”+“全国体育彩票排列5开奖号码”+“百度收盘股价小数点后两位” = 10位数（即3组数字合并，10位均按顺序排列，此10位数若首位为0则去掉）。<br />\r\n★ 以此10位数整除以活动截止日（xxx年x月xx日 23:59:59）的所有抽奖人数（每个抽奖号即为一个抽奖人数），得到的余数+1即为本次活动的获奖号码<br />\r\n① 若获奖号码不足7位，则再加上本次所有抽奖人数，直至加到不为空的抽奖号码为止，此号码为本次活动的中奖号码。<br />\r\n② 获奖号码满足7位，但中奖号码为空，则再减去本次抽奖人数之和，直至减不为空的抽奖号码为止，此号码为本次活动的中奖号码。<br />\r\n③ 如彩票开奖方开奖时间滞后,或股票交易所休市则本活动开奖日也将进行相应的顺延；<br />\r\n④如果当天需要开多个奖，则用此号码分别+011 +021 +031……得出当天其他获奖号码。如果开奖最后一天抽奖号码加值后超过了总参加人数，则将抽奖号码减去总参加人数得到新的抽奖号码。<br />\r\n<p>\r\n	若您的“抽奖号”与最终获奖号码完全一致，就可以获得本次活动的大奖啦！\r\n</p>\r\n<p>\r\n	<img src=\"/cms/uploads/201309/523a32fdf1f07.jpg\" alt=\"\" /> \r\n</p>\r\n★ 例如：<br />\r\n如2013年7月10日<br />\r\n新3D号码：4,8,7<br />\r\n排列5号码：8，2，9，0，5<br />\r\n百度股票收盘价：93.43 小数点后2位：4,3<br />\r\n将这3组数依序合并后得到4878290543<br />\r\n如果截止至7月15日23:59:59活动结束时的抽奖人数为28999<br />\r\n以4878290543整除以28999，商为168222，余数：20765&nbsp;<br />\r\n得到余数加1， 20765+1=20766。<br />\r\n不足7位数，则20766+28999+……+28999=1006732<br />\r\n：【兑奖流程】：1、我们的客服人员会与中奖者电话联系，并核实百度账号和手机号码等，确认获奖信息和使用规则。<br />\r\n2、中奖用户在体验特权前1天内，请电话联系团团。（4000-998-998）<br />\r\n3、若因信息错误或无效等造成的开奖后15个工作日内无法联系到中奖者，视为中奖者自动放弃该奖品，中奖号码+1顺延下一位。', '', '', '', '', 4, 'N', 'Y', 'uploads/201309/523a32e18f2c4.jpg', 'uploads/201309/thumb_523a32e18f2c4.jpg', 0, 0, 'N', 1379545939, 0, 'Y', 0, '', 'Y', 1379545825);
INSERT INTO `#@__post` VALUES (2, 1, '', '', '仅售30.9元，最高价值85元单人影票（含3D）！无需预约，不限时段，全场通兑', '', '', '', '', '', '', '', 5, 2, '', '', '', '', '', '<h2>\r\n	套餐介绍\r\n</h2>\r\n<div>\r\n	- 单人观影票1张<br />\r\n&nbsp;&nbsp;3D通兑，不限影厅，不限时间，不限影片<br />\r\n- 3D眼镜无需押金<br />\r\n- 不涉及明星见面会及首映礼<br />\r\n- 2月22日上映的霍比特人需到电影院另付10元<br />\r\n</div>\r\n<h2>\r\n	购买须知\r\n</h2>\r\n<div>\r\n	1、糯米券有效期：2013年05月02日-2013年09月30日&nbsp;<br />\r\n2、春节期间（2013年2月9日-14日）不可使用&nbsp;<br />\r\n3、影院营业时间：10:00-22:00&nbsp;<br />\r\n4、无需预约，在影城现场可凭糯米券提前兑换影票，具体场次请咨询影院&nbsp;<br />\r\n5、影院咨询电话：0571-86506355&nbsp;<br />\r\n6、8月13日，18:00以后不能使用糯米券&nbsp;<br />\r\n7、1.1米（含）以下儿童免费，1.1-1.3米儿童收取半价（影院正价的一半），1.3米（含）以上儿童全价&nbsp;<br />\r\n8、具体影片放映安排以影院档期为准，建议尽量避开周二、周三观影高峰&nbsp;<br />\r\n9、糯米券不限购买，每张糯米券限1人使用&nbsp;<br />\r\n10、不与其他优惠同享&nbsp;\r\n</div>', '', '', '', '', 1, 'N', 'Y', 'uploads/201309/523a334c32afc.jpg', 'uploads/201309/thumb_523a334c32afc.jpg', 0, 0, 'N', 1379548554, 0, 'Y', 0, '', 'Y', 1379545932);
INSERT INTO `#@__post` VALUES (3, 1, '', '', '仅售39元！价值50元的吴哥厨房代金券1张，仅适用于菜品全场通用，可自由叠加使用', '', '', '', '', '', '', '', 5, 1, '', '', '', '', '', '<table>\r\n	<tbody>\r\n		<tr>\r\n			<th>\r\n				内容\r\n			</th>\r\n			<th>\r\n				单价\r\n			</th>\r\n			<th>\r\n				数量/规格\r\n			</th>\r\n			<th>\r\n				小计\r\n			</th>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n				代金券\r\n			</td>\r\n			<td>\r\n				50元\r\n			</td>\r\n			<td>\r\n				1张\r\n			</td>\r\n			<td>\r\n				50元\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n<p>\r\n	价值：50元\r\n</p>\r\n<p>\r\n	美团价：39元\r\n</p>\r\n<ul>\r\n	<li>\r\n		适用范围：仅适用于菜品，全场通用\r\n	</li>\r\n	<li>\r\n		店内人均消费参考价格：40元\r\n	</li>\r\n	<li>\r\n		店内部分菜品价格参考：<br />\r\n吴哥红烧肉（42元/份）<br />\r\n开屏武鲳鱼（39元/份）<br />\r\n窝蛋肥牛（30元/份）<br />\r\n窜烤芋饺（20元/份）<br />\r\n香酱扒时蔬（18元/份）<br />\r\n糖醋里脊（18元/份）<br />\r\n金针菇沃豆腐（12元/份）<br />\r\n豉酱扇贝（6元/份）<br />\r\n水果红豆挞（3元/份）\r\n	</li>\r\n</ul>\r\n<div>\r\n	<h5>\r\n		购买须知\r\n	</h5>\r\n有效期：2013.8.21 至 2013.12.20（周末、法定节假日通用）使用时间：11:00-14:00预约提醒：无需预约，消费高峰可能需要等位使用规则：\r\n	<ul>\r\n		<li>\r\n			凭美团券到店消费不可同时享受店内其他优惠\r\n		</li>\r\n		<li>\r\n			代金券可自由叠加使用，不找零、不兑现\r\n		</li>\r\n		<li>\r\n			堂食外带均可，如需打包，请支付打包费1元/盒\r\n		</li>\r\n		<li>\r\n			仅限大厅用餐，不可使用包间\r\n		</li>\r\n		<li>\r\n			酒水、饮料等问题请致电商家咨询，以商家反馈为准\r\n		</li>\r\n	</ul>\r\n</div>', '', '', '', '', 1, 'N', 'Y', 'uploads/201309/523a33ba3f56d.jpg', 'uploads/201309/thumb_523a33ba3f56d.jpg', 0, 0, 'N', 1379548577, 0, 'Y', 0, '', 'Y', 1379546042);
INSERT INTO `#@__post` VALUES (4, 1, '', '', '仅售118元,价值198元贵族养生1次!套餐可升级,满足您不一样的追求!', '', '', '', '', '', '', '', 5, 2, '', '', '', '', '', '<div>\r\n	凭大众点评网团购券可享受以下内容：<br />\r\n<br />\r\n	<p>\r\n		金足阁养生（1次，约60分钟，价值198元）<br />\r\n- 后肩、背、腿部按摩&nbsp;<br />\r\n- 背、肾、腰部精油指压&nbsp;<br />\r\n- 臀部热油提拉手法&nbsp;<br />\r\n- 胸腹部按摩&nbsp;<br />\r\n- 肾经保健&nbsp;<br />\r\n- 腿部放松&nbsp;<br />\r\n注：<br />\r\n到店加付38元可升级为<br />\r\n水晶之恋（1次，约60分钟，价值268元）<br />\r\n- 后肩、背、腿部按摩&nbsp;<br />\r\n- 背、肾、腰部精油指压&nbsp;<br />\r\n- 臀部热油提拉手法&nbsp;<br />\r\n- 全身冰火护理<br />\r\n- 肾经保健&nbsp;&nbsp;<br />\r\n- 腿部放松<br />\r\n到店加付88元可升级为<br />\r\n木桶泡澡（1次，约90分钟，价值298元）<br />\r\n- 养生木桶泡澡<br />\r\n- 按摩床全身搓背<br />\r\n- 后肩、背、腿部按摩&nbsp;<br />\r\n- 背、肾、腰部精油指压&nbsp;<br />\r\n- 臀部热油提拉手法&nbsp;<br />\r\n- 胸腹部按摩&nbsp;<br />\r\n- 肾经保健&nbsp;&nbsp;<br />\r\n- 腿部放松<br />\r\n- 赠送<br />\r\n&nbsp; 茶水<br />\r\n- 免费提供停车位\r\n	</p>\r\n<br />\r\n</div>\r\n<br />\r\n<div>\r\n	<h3>\r\n		特别提示\r\n	</h3>\r\n	<p>\r\n		有效期：2013-09-02 至 2014-03-01\r\n	</p>\r\n	<p>\r\n		本团购券可使用商户详见页面右侧/手机客户端“查看适用商户”\r\n	</p>\r\n	<p>\r\n		无需预约\r\n	</p>\r\n	<p>\r\n		本店承诺无任何变相附加费用\r\n	</p>\r\n	<p>\r\n		请进店先验证后消费\r\n	</p>\r\n	<p>\r\n		本团购券限1人使用\r\n	</p>\r\n	<p>\r\n		团购产品须一次性体验完\r\n	</p>\r\n	<p>\r\n		不可与其他优惠同享\r\n	</p>\r\n	<p>\r\n		友情提醒：如需团购券发票，请在消费时向商户提出\r\n	</p>\r\n</div>', '', '', '', '贵族养生,休闲放松', 2, 'N', 'Y', 'uploads/201309/523a33e4d9ca8.jpg', 'uploads/201309/thumb_523a33e4d9ca8.jpg', 0, 0, 'N', 1379547366, 0, 'Y', 0, '', 'Y', 1379546084);
INSERT INTO `#@__post` VALUES (5, 1, '', '', '仅售139元，最高价值347元4-6人火锅套餐，荤素搭配涮菜，打造最精致时尚火锅美味', '', '', '', '', '', '', '', 5, 2, '', '', '', '', '', '<h2>\r\n	套餐介绍\r\n</h2>\r\n<div>\r\n	<p>\r\n		凭糯米券可享最高价值347元杭州海底捞餐饮有限公司4-6人火锅套餐，包含：\r\n	</p>\r\n- 海鲜：<br />\r\n&nbsp; 虾滑（1份，价值38元）<br />\r\n&nbsp; 鲍鱼条（1份，价值29元）<br />\r\n- 肉类：<br />\r\n&nbsp; 雪花肥牛（1份，价值68元）<br />\r\n&nbsp; 雪花肥羊（1份，价值38元）<br />\r\n&nbsp; 养生乌鸡卷（1份，价值38元）<br />\r\n&nbsp; 撒尿牛丸（1份，价值23元）<br />\r\n&nbsp; 牛百叶（1份，价值18元）<br />\r\n- 素菜：<br />\r\n&nbsp; 金针菇（1份，价值13元）<br />\r\n&nbsp; 生菜（1份，价值10元）<br />\r\n&nbsp; 木耳（1份，价值10元）<br />\r\n&nbsp; 粉条（1份，价值10元）<br />\r\n&nbsp; 油豆腐（1份，价值8元）<br />\r\n&nbsp; 油条（1份，价值6元）<br />\r\n- 以下火锅锅底3选1：<br />\r\n&nbsp; 清凉清汤锅（1份，价值38元）<br />\r\n&nbsp; 番茄鸳鸯锅（1份，价值38元）&nbsp;<br />\r\n&nbsp; 红汤鸳鸯锅（1份，价值28元）<br />\r\n- 餐具免费<br />\r\n- 到店另付5元/位，可享调料+酸梅汁，爆米花无限供应<br />\r\n</div>\r\n<h2>\r\n	购买须知\r\n</h2>\r\n<div>\r\n	1、糯米券有效期2012年09月29日至2013年11月29日&nbsp;<br />\r\n2、营业时间：11:00-22:00&nbsp;<br />\r\n3、消费请提前24小时预约，电话：0571-86981777；0571-86731717&nbsp;<br />\r\n4、糯米券可购多张，每桌限用1张糯米券，每张券不限使用人数，但建议4-6人享用&nbsp;<br />\r\n5、糯米券节假日通用&nbsp;<br />\r\n6、糯米券不可与其他优惠同享\r\n</div>', '', '', '', '', 1, 'N', 'Y', 'uploads/201309/523a34556cfae.jpg', 'uploads/201309/thumb_523a34556cfae.jpg', 0, 0, 'N', 1379547360, 0, 'Y', 0, '', 'Y', 1379546197);
INSERT INTO `#@__post` VALUES (6, 1, '', '', '仅售4.8元，市场价600元的麦乐迪KTV欢唱券一张，可升级，欢乐齐声唱，让我们唱出精彩', '', '', '', '', '', '', '', 5, 2, '', '', '', '', '', '<h2>\r\n	购买须知\r\n</h2>\r\n<div>\r\n	·拉手券于2013年6月24日（周一）生效&nbsp;<br />\r\n·拉手券有效期截止至2013年10月30日，节假日通用&nbsp;<br />\r\n·营业时间：请见地址信息栏&nbsp;<br />\r\n·为了您更好的消费，请至少提前1天预约，商家于2013年6月24日开始接受预约，预约电话详见地址信息栏，预约时无需出示拉手券密码&nbsp;<br />\r\n·每人每次不限使用拉手券张数，迷你包2张起唱，小包4张起唱，中包6张起唱，中大包8张起唱，大包10张起唱&nbsp;<br />\r\n·商家根据实际人数提供包厢，详情请咨询商家&nbsp;<br />\r\n·本次团购内容需一次性消费完成，商家谢绝自带酒水食品入内，敬请谅解<br />\r\n·拉手券不与店内其他优惠同享&nbsp;<br />\r\n</div>\r\n<h2>\r\n	详情介绍\r\n</h2>\r\n<div>\r\n	<h4>\r\n		【本单详情】\r\n	</h4>\r\n	<p>\r\n		凭拉手券享受麦乐迪KTV欢唱券一张：仅限下午场（12:00-18:00）/午夜场（23:30-次日凌晨05:50），2选1使用，最多连续欢唱6小时，每人每次不限使用拉手券张数，迷你包2张起唱，小包4张起唱，中包6张起唱，中大包8张起唱，大包10张起唱！怎能错过每一个high歌的机会！市场价600元，现在团购仅售4.8元！\r\n	</p>\r\n	<p>\r\n		迷你包建议1-2人，小包建议3-4人，中包建议5-6人，中大包建议7-8人，大包建议8-12人\r\n	</p>\r\n	<h4>\r\n		【温馨提示】\r\n	</h4>\r\n	<ul>\r\n		<li>\r\n			拉手券于2013年6月24日（周一）生效\r\n		</li>\r\n		<li>\r\n			拉手券有效期截止至2013年10月30日，节假日通用\r\n		</li>\r\n		<li>\r\n			营业时间：请见地址信息栏\r\n		</li>\r\n		<li>\r\n			为了您更好的消费，请至少提前1天预约，商家于2013年6月24日开始接受预约，预约电话详见地址信息栏，预约时无需出示拉手券密码\r\n		</li>\r\n		<li>\r\n			每人每次不限使用拉手券张数，迷你包2张起唱，小包4张起唱，中包6张起唱，中大包8张起唱，大包10张起唱\r\n		</li>\r\n		<li>\r\n			商家根据实际人数提供包厢，详情请咨询商家\r\n		</li>\r\n		<li>\r\n			本次团购内容需一次性消费完成，商家谢绝自带酒水食品入内，敬请谅解\r\n		</li>\r\n	</ul>\r\n</div>', '', '', '', '麦乐迪,KTV', 1, 'N', 'Y', 'uploads/201309/523a34b4821e3.jpg', 'uploads/201309/thumb_523a34b4821e3.jpg', 0, 0, 'N', 1379547353, 0, 'Y', 0, '', 'Y', 1379546248);
INSERT INTO `#@__post` VALUES (7, 1, '', '', 'iOS 7正式面向普通用户发布：采用全新图标设计', '', '', '', '', '', '', '', 2, 1, '', '', '', '', '', '<p>\r\n	腾讯科技 金铎 9月19日报道\r\n</p>\r\n<p>\r\n	苹果周三正式面向普通用户开放了iOS 7更新，全新的iOS 7支持以下设备：iPhone 4/4S/5，iPhone 5c和iPhone 5s；iPad 2/3/4，iPad mini；iPod touch 5。\r\n</p>\r\n<p>\r\n	iOS 7是iOS系统自2007年iPhone发布以来最大一次升级，它 采用全新的图标界面设计，总计有上百项改动，其中包括控制中心 、通知中心、多任务处理能力等等。\r\n</p>\r\n<p>\r\n	为了适应iOS 7，Safari网络浏览器也作出了相应的调整和改进，首先就是外表更加的简洁，以顺应扁平化的核心设计理念。Safari的标签页面是最大的突破，因为采用了3D网页标签，而且每一个标签页都有自己的概览显示。\r\n</p>\r\n<p>\r\n	iOS 7新增了一个无线点对点分享工具AirDrop，让iPhone之间可以通过WiFi交换文件。AirDrop可以自动显示身边的联系人，选定联系人和内容就可以发送给对方，无需设置网络，而且有完整加密。\r\n</p>\r\n<p>\r\n	iOS 7对相机功能也有改进，最大的特色就是在不同模式之间转换比以往更加方便。还有一点需要指出的是，iOS 7下的相机安装了类似于Instagram的滤镜。\r\n</p>\r\n<p>\r\n	此外，iOS 7下全新的照片应用程序能够根据拍摄时间和地点自动生成相册，用户也可以通过iCloud、电子邮件、Facebook或者Twitter等和好友分享照片。\r\n</p>', '', '', '', 'iOS7,普通用户,全新图标设计', 2, 'N', 'Y', 'uploads/201309/523a36f528948.jpg', 'uploads/201309/thumb_523a36f528948.jpg', 0, 0, 'N', 1379547345, 0, 'Y', 0, '', 'Y', 1379546869);
INSERT INTO `#@__post` VALUES (8, 1, '', '', '阿里金融再发力 小贷证券化产品登陆深交所', '', '', '', '', '', '', '', 2, 1, '9月18日，阿里巴巴的两只小额贷款资产证券化产品在深交所挂牌上市。对阿里巴巴而言，此举盘活了存量资产，有效地解决了小贷公司因不能吸收存款而带来的发展难题，也让阿里巴巴在互联网企业的“金融战”中赢得了先机。\r\n这是阿里巴巴的一大步，也可能是整个中国金融产品大发展进程中的一大步。阿里巴巴成功将信贷资产证券化并在交易所挂牌交易，这对错失先机的传统银行业而言无疑是一个巨大的刺激——潜在竞争者已跑在前面；不过，银行业也尽可以为此事欢呼——既然阿里能够这样做，为何银行业不可？', '', '', '', '', '<p style=\"font-size:16px;color:#333333;font-family:微软雅黑, Tahoma, Verdana, 宋体;background-color:#FFFFFF;text-indent:2em;\">\r\n	9月18日，<a class=\"a-tips-Article-QQ\" href=\"http://stockhtm.finance.qq.com/hk/ggcx/01688.htm\" target=\"_blank\">阿里巴巴</a>的两只小额贷款资产证券化产品在深交所挂牌上市。对阿里巴巴而言，此举盘活了存量资产，有效地解决了小贷公司因不能吸收存款而带来的发展难题，也让阿里巴巴在互联网企业的“金融战”中赢得了先机。\r\n</p>\r\n<p style=\"font-size:16px;color:#333333;font-family:微软雅黑, Tahoma, Verdana, 宋体;background-color:#FFFFFF;text-indent:2em;\">\r\n	这是阿里巴巴的一大步，也可能是整个中国金融产品大发展进程中的一大步。阿里巴巴成功将信贷资产证券化并在交易所挂牌交易，这对错失先机的传统银行业而言无疑是一个巨大的刺激——潜在竞争者已跑在前面；不过，银行业也尽可以为此事欢呼——既然阿里能够这样做，为何银行业不可？\r\n</p>\r\n<p style=\"font-size:16px;color:#333333;font-family:微软雅黑, Tahoma, Verdana, 宋体;background-color:#FFFFFF;text-indent:2em;\">\r\n	自阿里巴巴架构调整后，阿里金融正在以加速度发展。\r\n</p>\r\n<p style=\"font-size:16px;color:#333333;font-family:微软雅黑, Tahoma, Verdana, 宋体;background-color:#FFFFFF;text-indent:2em;\">\r\n	<img src=\"/cms/uploads/201309/523a374c27077.jpg\" alt=\"\" /> \r\n</p>\r\n<p style=\"font-size:16px;color:#333333;font-family:微软雅黑, Tahoma, Verdana, 宋体;background-color:#FFFFFF;text-indent:2em;\">\r\n	昨日东证资管-阿里巴巴1号、2号专项资产管理计划正式在深交所挂牌流通，这也是我国首只券商类信贷资产证券化产品。\r\n</p>\r\n<p style=\"font-size:16px;color:#333333;font-family:微软雅黑, Tahoma, Verdana, 宋体;background-color:#FFFFFF;text-indent:2em;\">\r\n	阿里巴巴相关人士在接受记者采访时透露，这一项目的整体规模大概在50亿元左右。\r\n</p>\r\n<p style=\"font-size:16px;color:#333333;font-family:微软雅黑, Tahoma, Verdana, 宋体;background-color:#FFFFFF;text-indent:2em;\">\r\n	业内人士分析，对阿里小贷而言，除了自身收益方面的考虑，涉足资产证券化更重要的意义在于提高流动性，一定程度上能够加速其小贷业务的发展。\r\n</p>\r\n<p style=\"font-size:16px;color:#333333;font-family:微软雅黑, Tahoma, Verdana, 宋体;background-color:#FFFFFF;text-indent:2em;\">\r\n	<strong>小贷公司试水资产证券化</strong> \r\n</p>\r\n<p style=\"font-size:16px;color:#333333;font-family:微软雅黑, Tahoma, Verdana, 宋体;background-color:#FFFFFF;text-indent:2em;\">\r\n	“东证资管-阿里巴巴”不仅是首只券商设立的信贷资产证券化产品，也是首只小额贷款资产证券化产品。\r\n</p>\r\n<p style=\"font-size:16px;color:#333333;font-family:微软雅黑, Tahoma, Verdana, 宋体;background-color:#FFFFFF;text-indent:2em;\">\r\n	东方证券资产管理公司发布的公告显示，阿里巴巴1号计划从7月26日起向机构投资者进行推广，已于7月29日结束推广期，最终获得全额申购，成立规模为5亿元。到期日为2014年10月28日。\r\n</p>\r\n<p style=\"font-size:16px;color:#333333;font-family:微软雅黑, Tahoma, Verdana, 宋体;background-color:#FFFFFF;text-indent:2em;\">\r\n	资料显示，阿里巴巴1号中优先级的评级为AAA，预期年化收益率6.2%，成立规模为3.75亿元；次优级未评级，预期年化收益率为11%，成立规模为7500万元；次级成立规模5000万元。\r\n</p>\r\n<p style=\"font-size:16px;color:#333333;font-family:微软雅黑, Tahoma, Verdana, 宋体;background-color:#FFFFFF;text-indent:2em;\">\r\n	阿里巴巴2号的与之类似。“东证资管-阿里巴巴”专项资管共分为10期，每期发行额度为2亿元至5亿元。每期产品都进行三级分级，其中优先级和次优级为公开募集，次级则由阿里金融自己认购。这意味着后续三年内还将有8只同类产品面世，募资总规模还有16亿元～40亿元。\r\n</p>\r\n<p style=\"font-size:16px;color:#333333;font-family:微软雅黑, Tahoma, Verdana, 宋体;background-color:#FFFFFF;text-indent:2em;\">\r\n	此外，在交易结构上，东证资管-阿里巴巴专项计划采取了循环购买基础资产的方式，在项目的运营管理上，相较于之前获批的专项计划有了较大的突破。\r\n</p>\r\n<p style=\"font-size:16px;color:#333333;font-family:微软雅黑, Tahoma, Verdana, 宋体;background-color:#FFFFFF;text-indent:2em;\">\r\n	而在发行模式上，东证资管-阿里巴巴专项资管计划采取了统一结构、一次审批、分次发行的模式，以更好地满足电子商务平台上小微企业的资金需求节奏。\r\n</p>\r\n<p style=\"font-size:16px;color:#333333;font-family:微软雅黑, Tahoma, Verdana, 宋体;background-color:#FFFFFF;text-indent:2em;\">\r\n	据前述阿里巴巴相关人士介绍，在日常投资管理过程中，这项计划还引入了自动化的资产筛选系统和支付宝公司提供的资金归集和支付服务。“毕竟我们是一个互联网的平台，只有这样才能更好地适应阿里小贷基于大数据的业务模式。”\r\n</p>\r\n<p style=\"font-size:16px;color:#333333;font-family:微软雅黑, Tahoma, Verdana, 宋体;background-color:#FFFFFF;text-indent:2em;\">\r\n	知名财经评论人士叶檀在接受记者采访时说：“证券资产化产品的推出，是阿里打通资金循环的一个很重要的环节。因为小贷公司的杠杆资金只有50%，没有吸纳存款的能力，只能向金融机构拿钱。所以，它此前的资金来源渠道是非常不畅通的，现在通过东方证券这个券商来发行产品，可以获得更多的资金来支持其小贷业务。”\r\n</p>\r\n<p style=\"font-size:16px;color:#333333;font-family:微软雅黑, Tahoma, Verdana, 宋体;background-color:#FFFFFF;text-indent:2em;\">\r\n	<strong>未寄望网络银行</strong> \r\n</p>\r\n<p style=\"font-size:16px;color:#333333;font-family:微软雅黑, Tahoma, Verdana, 宋体;background-color:#FFFFFF;text-indent:2em;\">\r\n	对阿里巴巴而言，吸纳更多的资金迫在眉睫，尤其是苏宁在金融领域的激进举措，也使得阿里小贷不得不去寻找新的资金来源。\r\n</p>\r\n<p style=\"font-size:16px;color:#333333;font-family:微软雅黑, Tahoma, Verdana, 宋体;background-color:#FFFFFF;text-indent:2em;\">\r\n	2012年12月，苏宁注资3亿元设立重庆苏宁小额贷款有限公司。今年8月，苏宁云商宣布设立苏宁银行，成为A股首家宣布试水民营银行的上市公司。9月12日，苏宁在设立民营银行的道路上又迈了一步，其申请的苏宁银行名称获得工商总局核准。而苏宁小贷公司也将在10月试运行。\r\n</p>\r\n<p style=\"font-size:16px;color:#333333;font-family:微软雅黑, Tahoma, Verdana, 宋体;background-color:#FFFFFF;text-indent:2em;\">\r\n	与此同时，也有消息称，阿里巴巴也正打算成立网络银行。但前述阿里相关人士依然对记者否认提交了申请。“这个事情还是很遥远的，即便是现在有企业获得了核准，但具体的推出时间还是一个未知数。”\r\n</p>\r\n<p style=\"font-size:16px;color:#333333;font-family:微软雅黑, Tahoma, Verdana, 宋体;background-color:#FFFFFF;text-indent:2em;\">\r\n	尽管阿里巴巴依然否认将成立网络银行，但业界对其成立银行的呼声依然很高。\r\n</p>\r\n<p style=\"font-size:16px;color:#333333;font-family:微软雅黑, Tahoma, Verdana, 宋体;background-color:#FFFFFF;text-indent:2em;\">\r\n	“建议给阿里小贷和支付宝发放银行牌照，让银行间更充分竞争。”中国人民银行原副行长吴晓灵日前在某论坛上如此表示。\r\n</p>\r\n<p style=\"font-size:16px;color:#333333;font-family:微软雅黑, Tahoma, Verdana, 宋体;background-color:#FFFFFF;text-indent:2em;\">\r\n	吴晓灵认为，互联网金融有四种形式，包括阿里小贷这样的小额贷款机构、支付宝这样的第三方支付、余额宝这类基于支付账户的标准化金融产品销售，以及P2P平台。但是，目前这四种互联网金融形式都是单向的，不能吸收存款，也未形成银行那样的存放汇优势。\r\n</p>\r\n<p style=\"font-size:16px;color:#333333;font-family:微软雅黑, Tahoma, Verdana, 宋体;background-color:#FFFFFF;text-indent:2em;\">\r\n	在吴晓灵看来，现在鼓励民营资本创办民营银行，只有给阿里小贷、支付宝等发放银行牌照，让它们既能办理结算，又能吸收存款，发放贷款，细分客户市场，这才是可行的，才能办成互联网时代的特色银行。\r\n</p>\r\n<p style=\"font-size:16px;color:#333333;font-family:微软雅黑, Tahoma, Verdana, 宋体;background-color:#FFFFFF;text-indent:2em;\">\r\n	不过，也有业内人士并不认同这一观点。叶檀分析认为，阿里巴巴成立网络银行对传统金融业的冲击肯定非常大，且以阿里巴巴的业务形态来看也没有必要走传统银行老路。“从该产品设计来看，90%的资金可以向投资者发行，说明阿里已经解决了小贷资金来源的问题，且登陆深交所以后可以实现交易转让，也意味着有更多投资机构来共担风险。\r\n</p>\r\n<p style=\"font-size:16px;color:#333333;font-family:微软雅黑, Tahoma, Verdana, 宋体;background-color:#FFFFFF;text-indent:2em;\">\r\n	叶檀认为，阿里巴巴在银行成立之前找到了一条替代储蓄的路，所以是否成立网络银行，依然还是很遥远的事情。\r\n</p>', '', '', '', '', 9, 'N', 'Y', 'uploads/201309/523a3737db503.jpg', 'uploads/201309/thumb_523a3737db503.jpg', 0, 0, 'N', 1379547338, 0, 'Y', 0, '', 'Y', 1379546936);
INSERT INTO `#@__post` VALUES (9, 1, '', '', '甲骨文第一财季净利润21.9亿美元 同比增长7.9%', '', '', '', '', '', '', '', 3, 1, '', '', '', '', '', '<p style=\"font-size:16px;color:#333333;font-family:微软雅黑, Tahoma, Verdana, 宋体;background-color:#FFFFFF;text-indent:2em;\">\r\n	<strong><img src=\"/cms/uploads/201309/523a3780beb37.jpg\" alt=\"\" /><br />\r\n</strong> \r\n</p>\r\n<p style=\"font-size:16px;color:#333333;font-family:微软雅黑, Tahoma, Verdana, 宋体;background-color:#FFFFFF;text-indent:2em;\">\r\n	<strong>腾讯科技 金铎 9月19日编译</strong> \r\n</p>\r\n<p style=\"font-size:16px;color:#333333;font-family:微软雅黑, Tahoma, Verdana, 宋体;background-color:#FFFFFF;text-indent:2em;\">\r\n	<a class=\"a-tips-Article-QQ\" href=\"http://stockhtm.finance.qq.com/astock/ggcx/ORCL.OQ.htm\" target=\"_blank\">甲骨文</a>公司（Oracle Corp. ）周三报告称，公司2014财年第一季度实现净利润21.9亿美元，同比增长7.9%，合每股收益47美分；去年同期业绩为净利润20.3亿美元，合每股收益41美分。\r\n</p>\r\n<p style=\"font-size:16px;color:#333333;font-family:微软雅黑, Tahoma, Verdana, 宋体;background-color:#FFFFFF;text-indent:2em;\">\r\n	期内公司营收由去年同期的81.8亿美元增长至83.7亿美元，增幅为2.3%。经过调整后的盈利为每股收益59美分。FactSet汇总的分析师平均预期为每股收益56美分（调整后），收入为84.8亿美元。\r\n</p>\r\n<p style=\"font-size:16px;color:#333333;font-family:微软雅黑, Tahoma, Verdana, 宋体;background-color:#FFFFFF;text-indent:2em;\">\r\n	第一财季，甲骨文软件营收为60.84亿美元，比去年同期增长6%；硬件系统营收为12.61亿美元，比去年同期下滑7%。\r\n</p>\r\n<p style=\"font-size:16px;color:#333333;font-family:微软雅黑, Tahoma, Verdana, 宋体;background-color:#FFFFFF;text-indent:2em;\">\r\n	甲骨文股价在当天常规交易中上涨1.83%，收于33.87没有。发布财报后，该股在盘后交易中，截至发稿，股价上涨近1%。\r\n</p>', '', '', '', '甲骨文,净利润', 1, 'N', 'Y', 'uploads/201309/523a379a5e8f5.jpg', 'uploads/201309/thumb_523a379a5e8f5.jpg', 0, 0, 'N', 1379547330, 0, 'Y', 0, '', 'Y', 1379547034);
INSERT INTO `#@__post` VALUES (10, 1, '', '', '凤凰古韵摄影 仅售398元，价值1288元古装写真套系', '', '', '', '', '', '', '', 6, 1, '化妆造型：精美古装3套，造型3次（但不包括孙子大传系列、龙袍），免费提供化妆品、安瓶以及妆后的洗面奶、卸妆油、卸妆棉、护肤品，免除您的后顾之忧，按套系免费使用精美古装饰品，道具等物品\r\n古典至美纯外场景：长桥阔石板湿地公园', '', '', '', '', '<div>\r\n	- 古装写真（1套，价值1288元）<br />\r\n- 化妆造型：精美古装3套，造型3次（但不包括孙子大传系列、龙袍），免费提供化妆品、安瓶以及妆后的洗面奶、卸妆油、卸妆棉、护肤品，免除您的后顾之忧，按套系免费使用精美古装饰品，道具等物品<br />\r\n- 古典至美纯外场景：长桥阔石板湿地公园<br />\r\n- 照片提供：全程拍摄不少于60张，精修18张入册<br />\r\n- 专属相册：<br />\r\n&nbsp; 古典高档绢丝挂轴1副<br />\r\n&nbsp; 杂志册1本（8P，16张）<br />\r\n&nbsp; 8寸版画1幅<br />\r\n&nbsp; 16寸海报1张<br />\r\n&nbsp; 皮夹照2张<br />\r\n- 到店即送价值15元精美桃木梳1把<br />\r\n- 拍摄时间：4-8个小时<br />\r\n- 底片全部赠送，请自带2G以上U盘拷片<br />\r\n</div>\r\n<h2>\r\n	【消费提示】\r\n</h2>\r\n<div>\r\n	1、糯米券有效期为2013年07月19日-2013年10月19日&nbsp;<br />\r\n（每周一不可用）&nbsp;<br />\r\n2、糯米券使用时间：09:00-20:00&nbsp;<br />\r\n3、消费前请提前168小时致电预约，电话：0571-85350301&nbsp;<br />\r\n4、每人可购买多张糯米券，每人限使用1张糯米券&nbsp;<br />\r\n5、套餐内容不兑现，不找零，不与店内其他优惠同时享用&nbsp;<br />\r\n6、建议用户在糯米券有效期内完成拍摄并取得成品。如用户与商家另行约定的拍摄时间或取成品时间不在糯米券有效期内的而导致用户最终无法完成拍摄或取得成品的，糯米网不承担任何责任&nbsp;\r\n</div>', '', '', '', '', 3, 'N', 'Y', 'uploads/201309/523a5063ae6b3.jpg', 'uploads/201309/thumb_523a5063ae6b3.jpg', 0, 0, 'N', 0, 0, 'Y', 0, '', 'Y', 1379553379);
INSERT INTO `#@__post` VALUES (11, 1, '', '', '谷歌拟推新追踪工具AdID 广告市场或面临洗牌', '', '', '', '', '', '', '', 2, 2, '', '', '', '', '', '<p>\r\n	全球最大的互联网搜索引擎谷歌(微博)正在考虑对如何追踪用户上网浏览活动的方法做出重大调整，此举或许能够重塑年营收规模达1,200亿美元的数字广告市场的格局。\r\n</p>\r\n<p>\r\n	据《今日美国报》网站援引一位熟悉谷歌该计划的匿名人士透露的消息称，谷歌正在开发一种匿名广告标识符（AdID），用来替代广告商出于营销目的追踪用户网上浏览活动的第三方Cookie。谷歌目前在全球在线广告营收的占比约为三分之一。\r\n</p>\r\n<p>\r\n	这个AdID只会被转到此前同意遵守某些基本规范的广告商和广告网络，从而在控制网页浏览的方式上，赋予用户更大的自主权和更多的隐私。\r\n</p>\r\n<p>\r\n	据该匿名消息人士透露，只有在遵循AdID相关服务条款的广告商和广告网络才有权使用这一工具，而且该工具可以让用户对自己的隐私以及上网习惯等信息拥有更多的控制权。该消息人士拒绝具名，因为谷歌还没有正式对外宣布推出这一新工具的计划。但该公司计划在接下来的几周和几个月里与业内人士、政府机构和消费者组织进行沟通。\r\n</p>\r\n<p>\r\n	<img src=\"/cms/uploads/201309/523a53bd105ee.jpg\" alt=\"\" />\r\n</p>\r\n<p>\r\n	谷歌发言人罗布•辛尔金（Rob Shilkin）表示：“技术进步在提升用户安全的同时也能够确保互联网的经济性。谷歌和其他公司在这个领域有很多想法，不过这些想法都处在早期阶段。”他拒绝做进一步评论。\r\n</p>\r\n<p>\r\n	谷歌的一举一动都会受到广告行业的密切关注，因为该公司不仅是在线广告市场的领导者，而且该公司的Chrome浏览器已经在过去几年先后超越微软IE浏览器、Mozilla Firefox浏览器和苹果公司Safari浏览器，成为目前全球最流行的浏览器。\r\n</p>\r\n<p>\r\n	Cookie是带有识别标签的一小串文本字符，并被集成到浏览器中。多年以来Cookie始终是识别用户上网活动的主要方式。正常的Cookie会被网站运营商存储在用户电脑上，而第三方Cookie则来自于以收集用户浏览活动数据为目的的其他实体。\r\n</p>\r\n<p>\r\n	广告公司利用这种技术来了解用户的兴趣，然后通过网络向他们显示更具相关性的广告。然而，Cookie也引来了诸多争议，因为追踪技术已经发展得十分先进，并引发了隐私担忧。\r\n</p>\r\n<p>\r\n	自2003年推出以来，苹果Safari浏览器就封杀了第三方Cookie。去年苹果公司还针对iOS移动平台推出了自己的广告标识符。一些广告产业内部人士认为，如果谷歌真的推出AdID，那么可以让用户对自己的上网活动如何被追踪拥有更多的控制权。然而，这种措施同时也让苹果和谷歌这两大科技巨头可以更多地掌握用户浏览活动的数据。\r\n</p>\r\n<p>\r\n	广告技术公司Triggit的首席执行官扎克•科里奥斯（Zach Coelius）表示：“限制第三方Cookie不会让精准的广告投放消失，只能让大型科技公司掌握更多的控制权。”\r\n</p>\r\n<p>\r\n	美国数字广告行业组织交互式广告局（Interactive Advertising Bureau，以下简称IAB）的总法律顾问迈克•扎涅斯（Mike Zaneis）指出，IAB希望广告客户能使用某种形式的跟踪技术，比如第三方Cookie或其他技术。但是，让少数公司掌控跟踪技术不是一种理想的解决方案，他们可能会突然对用户ID进行限制，而且还会危及数十亿美元的网络广告支出。\r\n</p>\r\n<p>\r\n	谷歌推出匿名广告标示符的做法并不算特别激进，因为该公司开发的AdID只是作为广告商所使用追踪工具的一种选择而已。但据消息人士表示，AdID新工具可以让用户通过对浏览器设置，对广告商的追踪活动作出限制。\r\n</p>', '', '', '', '谷歌,追踪工具,AdID,洗牌', 1, 'N', 'Y', 'uploads/201309/523a53d233f15.jpg', 'uploads/201309/thumb_523a53d233f15.jpg', 0, 0, 'N', 0, 0, 'Y', 0, '', 'Y', 1379554258);
INSERT INTO `#@__post` VALUES (12, 1, '', '', '微软公布Windows 8.1售价 基本版售价119.99美元', '', '', '', '', '', '', '', 2, 2, '', '', '', '', '', '<p>\r\n	微软周二正式公布了Windows 8.1操作系统的售价。在Windows 8用户将能够免费升级至Windows 8.1的同时，如果用户运行的是Windows XP、Vista或是Windows 7操作系统，想要升级至Windows 8.1基本版的价格为119.99美元，升级至Windows 8.1 Pro版的价格为199.99美元。\r\n</p>\r\n<p>\r\n	Windows 8.1的升级费用与此前用户升级至Windows 8操作系统的升级费用相同，不过这一次微软并未向去年用户升级至Windows 8操作系统时那样，提供任何的促销价格。\r\n</p>\r\n<p>\r\n	微软当前还计划对Windows 8.1的销售方式进行更改。此前，用户必须在线购买Windows 8操作系统的升级版本，或是前往零售店购买，微软从未提供完整版。用户将可以通过零售店购买Windows 8.1，或是通过下载选项购买微软所谓的“完整版软件”（full version software）。\r\n</p>\r\n<p>\r\n	此举旨在为希望在虚拟环境下运行Windows 8.1操作系统的用户做出回应。如果用户购买一套Windows 8.1，它将是完全版，而不是升级版本。\r\n</p>\r\n<p>\r\n	对Windows XP或是Windows Vista操作系统用户而言，如果想要从现有操作系统升级至Windows 8.1，此次将会有略微的调整。微软此前支持从Windows XP或是Windows Vista操作系统升级至Windows 8的基础升级路径，但是针对Windows 8.1则采用了完全不同的方式。\r\n</p>\r\n<p>\r\n	如果Windows XP或是Windows Vista操作系统用户想要直接升级至Windows 8.1，用户需要完全重新安装。微软就此表示，这是因为“Windows 8.1并不是为运行Windows XP或是Windows Vista操作系统的操作系统设计的。”Windows XP或是Windows Vista操作系统用户需要从零售店购买DVD光盘，而不能选在在线升级。\r\n</p>\r\n<p>\r\n	对Windows 7用户而言，在升级完成之后，他们必须重新安装台式应用程序，如Office等。微软的这种做法可能会令一些商业和企业用户感到极度不满。\r\n</p>\r\n<p>\r\n	随着搭载Windows 8.1操作系统的设备将从10月18日开始蜂拥进入市场，微软同时还提供了从基本版Windows 8.1升级至Windows 8.1 Pro版和Windows Media Center版的方式。\r\n</p>\r\n<p>\r\n	购买搭载基本版Windows 8.1操作系统的用户，升级至Windows 8.1 Pro需花费99.99美元；Windows 8.1 Pro用户可花费9.99美元升级至Windows Media Center。Windows 8.1将于10月17日在微软零售店开始销售，搭载Windows 8.1操作系统的设备和零售DVD将于10月18日开始销售。<span id=\"__kindeditor_bookmark_end_10__\"></span>\r\n</p>', '', '', '', '微软,Windows8.1,基本版售价', 1, 'N', 'Y', 'uploads/201309/523a540d7a921.jpg', 'uploads/201309/thumb_523a540d7a921.jpg', 0, 0, 'N', 0, 0, 'Y', 0, '', 'Y', 1379554317);
INSERT INTO `#@__post` VALUES (13, 1, '', '', '三星智能手表遭冷落 已着手研发二代产品', '', '', '', '', '', '', '', 2, 1, '', '', '', '', '', '<p>\r\n	在本月早些时候的新品发布会上，三星如外界所料般率先出手，发布了旗下首款可穿戴计算设备Galaxy Gear智能手表。\r\n</p>\r\n<p>\r\n	Galaxy Gear采用金属拉丝表面，拥有六种采用橡胶材质的不同颜色表带。在具体配置方面，Galaxy Gear拥有一块1.63英寸Super AMOLED屏幕，分辨率为320x320，搭载了800MHz单核处理器，190万像素摄像头，512MB内存，4GB存储空间，315mAh不可拆卸电池，内置扬声器、蓝牙4.0、加速度计、陀螺仪和两个麦克风。\r\n</p>\r\n<p>\r\n	但是，日前据韩国媒体《数码时代》(Digital Times)的报道称，这一产品有可能成为史上最为短命的可穿戴式计算设备，因为三星目前已经开始研发其下一代产品。\r\n</p>\r\n<p>\r\n	事实上，自从Galaxy Gear于9月4日在柏林首次与外界接触以来，消费者对于这款产品的反映一直十分平静。不少批评者则抱怨称，Galaxy Gear 25个小时的电池续航时间太短，而能够同其配合使用的智能设备也实在太过有限。\r\n</p>\r\n<p>\r\n	目前，仅有三星Galaxy Note 3智能手机和Galaxy Note 10.1平板电脑能够同其进行连接。但三星方面表示，未来将有更多设备支持Galaxy Gear。\r\n</p>\r\n<p>\r\n	对于三星此次发布Galaxy Gear，外界的普遍看法是该公司为了赶在苹果发布传言已久的“iWatch智能手表”之前而匆匆发布了一款自己的可穿戴式计算设备以抢占市场先机。而且，在苹果在日本地区申请了“iWatch商标”，并在全新iPhone 5s中配置了一个专门管理设备上各类传感器和动作的“M7”协处理芯片后，外界对于iWatch的期待更是有增无减。\r\n</p>\r\n<p>\r\n	与此同时，知名市场调研机构IHS移动和通讯总监伊恩-弗格(Ian Fogg)曾评价道：\r\n</p>\r\n<p>\r\n	“三星的Galaxy Gear只是一个披着消费者电子产品外衣的原型机，正因为如此，该产品将很难在市场中取得成功。从目前来看，该设备拥有许多不足的地方，比如售价过高、电池续航能力不佳、必须配合智能手机使用的局限性等等。总的来说就是，这一产品恐怕很难取得成功，而三星则需要凭借一款设计更加精良的设备来再次向这一市场发起攻势。”\r\n</p>\r\n<p>\r\n	与此同时，其他一些测试者则表示，Galaxy Gear的操作存在着延迟的情况，系统菜单设计令人困惑，而其299美元的售价也有些过高。\r\n</p>\r\n<p>\r\n	据位于三星总部所在地的韩国门户网站Daum报道，第一款Galaxy Gear仅仅属于三星的一款“试水产品”而已，该公司希望通过这一产品收集市场反馈，然后在以此作为依据开发出第二代Galaxy Gear。Daum预计，三星有可能会在明年1月的国际消费电子展(Consumer Electronics Show)，或者在明年3月的移动世界大会(Mobile World Congress)上发布新一代Galaxy Gear 2智能手表。而且，第二代Galaxy Gear很有可以会基于内置的GPS定位芯片而推出一些基于地理位置的服务。\r\n</p>\r\n<p>\r\n	三星方面拒绝对此发表置评。\r\n</p>', '', '', '', '三星,智能手表,二代产品', 1, 'N', 'Y', 'uploads/201309/523a545da4d37.jpg', 'uploads/201309/thumb_523a545da4d37.jpg', 0, 0, 'N', 0, 0, 'Y', 0, '', 'Y', 1379554397);
INSERT INTO `#@__post` VALUES (14, 1, '', '', 'App Annie获1500万美元投资 将持续扩展国际业务', '', '', '', '', '', '', '', 2, 1, '', '', '', '', '', '<p>\r\n	（朱旭冬）9月18日晚间消息，移动智能市场数据平台App Annie 今日宣布完成一轮总金额为1500万美元的融资，由红杉资本的美国基金领投，现有投资者IDG资本、Greycroft 、e.Ventures 和 Infinity Venture 参与跟投。\r\n</p>\r\n<p>\r\n	红杉资本硅谷办事处合伙人 Tim Lee 与 uSamp 首席执行官 Alan Gould 将加入App Annie董事会。\r\n</p>\r\n<p>\r\n	App Annie 表示，此轮融得的资金将用于加速 App Annie 的产品开发、增长其销售额并壮大其设在旧金山的营销总部，并扩大其遍布亚洲和欧洲的办事处。\r\n</p>\r\n<p>\r\n	随着今年全球智能手机出货量将超过1 亿部的预期，应用软件和数字内容经济大幅增长。App Annie 在过去12个月内用户数扩大两倍，每月营收增长三倍。App Annie 首席执行官Bertrand Schmitt 表示，增长的用户群证明公司重塑企业分析和提取适合商业用途的有用洞察信息的方式是成功的。\r\n</p>\r\n<p>\r\n	红杉资本硅谷办事处合伙人 Tim Lee 认为， App Annie 在新数字经济分析领域处于极为有利的地位。“App Annie 的产品对从事移动通信行业的每位从业者来说都是必备的。在红杉资本，我们多年来一直使用他们的产品帮助我们找到有突破力的创业公司。 App Annie 在新数字经济分析领域处于极为有利的地位，并将成为黄金标准。”他说。\r\n</p>\r\n<p>\r\n	Bertrand Schmitt 则表示， “对我们来说，红杉资本不仅仅是投资者，同时也是合作伙伴和顾问，它将帮助我们加速我们扩大平台的计划，这样所有企业都可了解全球应用软件和数字内容生态系统。”\r\n</p>\r\n<p>\r\n	App Annie 的商业智能平台由 Analytics、Store Stats 和 Intelligence 组成。现今，收益排名前 100 位的 iOS 应用发行商中超过 90% 在使用App Annie 的产品，这其中包含 Google、微软和腾讯。\r\n</p>', '', '', '', 'App,Annie,美元投资,国际业务', 1, 'N', 'Y', 'uploads/201309/523a549bd42fe.jpg', 'uploads/201309/thumb_523a549bd42fe.jpg', 0, 0, 'N', 0, 0, 'Y', 0, '', 'Y', 1379554460);
INSERT INTO `#@__post` VALUES (15, 1, '', '', 'Groupon收购本地体验初创公司SideTour', '', '', '', '', '', '', '', 2, 1, '', '', '', '', '', '<p>\r\n	据国外媒体报道，团购巨人Groupon今日宣布，公司已经收购了本地体验初创公司SideTour。后者是一个帮助人们发现、预订和参加本地活动的市场平台，Groupon没有透露这项收购交易的具体条款。\r\n</p>\r\n<p>\r\n	SideTour精选了一些独具特色且有人主持的聚会类活动，让客户们能够与相应领域的资深专家面对面地交流，从而更加了解自己所在的城市和他们关心的事。\r\n</p>\r\n<p>\r\n	GrouponLive业务总经理格雷格鲁丁（Greg Rudin）称：“SideTour精心策划的各种本地体验将进一步拓展Groupon的愿景，也就是将Groupon打造成消费者可以随时随地访问的平台。如果Groupon能够提供这些极具个性化的活动、旅游和值得铭记的聚会，我们就能够为我们的客户提供更多有趣的方法，帮助他们探索和发现最好的本地体验。”\r\n</p>\r\n<p>\r\n	那些活动大多为私人聚会，人数平均在12人左右，涵盖的行业包括视频、饮料、建筑、历史、艺术等等。SideTour目前提供的公开和私人聚会多达500多种，使用这个平台的聚会主持超过了400人。那些主持者包括厨师、艺术家、奥运金牌获得者、星探和品酒师等等。\r\n</p>\r\n<p>\r\n	SideTour的首席执行官韦平戈亚尔（Vipin Goyal）称：“我们很高兴有机会把我们独创的聚会服务提供给这么多热衷于本地体验的人。Groupon可以帮助我们发现更多的本地专家并为他们提供一个与更多客户沟通的平台。”\r\n</p>\r\n<p>\r\n	SideTour将继续独立经营一段时间，Groupon将通过其电子邮件、网页和移动渠道向它的4300万活跃用户推广SideTour的聚会服务。\r\n</p>\r\n<p>\r\n	SideTour创立于2011年，目前在芝加哥、纽约、费城和华盛顿特区设有办事机构。它计划在未来几个月里开辟更多的市场。\r\n</p>', '', '', '', '', 1, 'N', 'Y', 'uploads/201309/523a54c220262.jpg', 'uploads/201309/thumb_523a54c220262.jpg', 0, 0, 'N', 0, 0, 'Y', 0, '', 'Y', 1379554498);
INSERT INTO `#@__post` VALUES (16, 1, '', '', '美国下令FCC修改规定 禁止运营商锁定所售手机', '', '', '', '', '', '', '', 2, 1, '', '', '', '', '', '<p>\r\n	在手机解锁上，美国消费者和运营商展开持久战，美国政府和白宫逐渐站在消费者一边。\r\n</p>\r\n<p>\r\n	近日美国电信和信息管理局（NTIA）正式向联邦通信委员会（FCC）发函，要求修改规定，未来移动运营商销售给用户的手机、平板等，均不能锁定于网络。\r\n</p>\r\n<p>\r\n	所谓“锁定”，指的是运营商通过技术手段，限制某一部手机和平板，只能使用自家的移动网络进行通信。\r\n</p>\r\n<p>\r\n	上述机构对FCC表示，消费者应该获得更多自由，选择不同的移动通信服务商，自由使用自己合法购买的移动设备，对相关规定进行修改之后，可以增强移动通信市场的竞争，增加消费者满意度。\r\n</p>\r\n<p>\r\n	目前还不清楚FCC是否会痛快答应修改规定的要求。众所周知的是，美国电信行业，也雇请了游说团体，捍卫对手机锁定的做法。\r\n</p>\r\n<p>\r\n	据报道，1990年代以前，美国电信运营商销售的手机，均未锁定于自家网络。此后，为了降低用户流失率，运营商开始锁定手机。不过，对于熟悉IT知识的民间高手来说，根据网络资源对手机进行解锁，难度并不大。\r\n</p>\r\n<p>\r\n	1998年，美国通过《千年数字版权法》，法律本意是要抑制盗版，但最后却禁止了用户对手机解锁。从2006年以来，支持消费者的美国议员们，也屡屡要求修改法律，允许用户自由解锁。\r\n</p>\r\n<p>\r\n	在移动运营商看来，他们对用户购买手机的价格进行了大额补贴，目的是通过用户在一年或两年的合同期限内，用花费流量费的消费，弥补运营商购机补贴。如果让用户自由解锁，将损害运营商的利益。\r\n</p>\r\n<p>\r\n	以苹果手机为例，运营商捆绑两年合约的补贴价格为199美元，但是其裸机零售价超过600美元，这400多美元其实由运营商买单。\r\n</p>\r\n<p>\r\n	上述机构NTIA还指出，只要是消费者承诺继续使用某种服务，或是针对提前结束合约支付了违约罚金等，美国的运营商就应该免费帮助用户进行解锁。\r\n</p>', '', '', '', '美国,,禁止运营商,锁定手机', 1, 'N', 'Y', 'uploads/201309/523a54f7d9591.jpg', 'uploads/201309/thumb_523a54f7d9591.jpg', 0, 0, 'N', 0, 0, 'Y', 0, '', 'Y', 1379554552);
INSERT INTO `#@__post` VALUES (17, 1, '', '', 'Facebook高管离职投奔阿里巴巴', '', '', '', '', '', '', '', 2, 1, '', '', '', '', '', '<p>\r\n	Facebook马上就要失去两个关键员工：视频广告产品经理贾斯汀·谢弗（Justin Shaffer）和企业沟通团队经理阿什利·詹迪(Ashley Zandy)。\r\n</p>\r\n<p>\r\n	Facebook已经证实了这两位高管即将离职的消息。作为一个仍在快速成长的高科技公司，Facebook近年来员工人数显著增加，这两位关键人物的突然离职令人意外。\r\n</p>\r\n<p>\r\n	据知情人士透露，谢弗没有正式宣布他的下一个去向，但已经明确表示将离开Facebook。今年，谢弗和产品营销总监吉姆·斯夸尔斯（Jim Squires）领导下的Facebook视频广告业务出现下滑，原因是一些广告主感到受挫。\r\n</p>\r\n<p>\r\n	据到Facebook 透露，谢弗在Faceboo将于下周三后正式离职。谢弗拒绝发表评论。\r\n</p>\r\n<p>\r\n	谢弗是Facebook的知名经理，曾经参与领导过该公司的多个项目——包括“Group”和签到工具“Places”——的开发。谢弗于2010年加盟Facebook，当时，他的初创公司Hot Potato被Facebook收购。在创办Hot Potato之前，他还曾在MLB(美国职棒大联盟)的数字部门MLB Advanced Media工作了数年时间，参与创建了MLB.com网。\r\n</p>\r\n<p>\r\n	知情人士还透露，谢弗正在考虑创办一个创投基金。\r\n</p>\r\n<p>\r\n	另一位即将离职的高管詹迪在Facebook工作超过两年，离职后将加盟阿里巴巴集团，出任该公司的国际企业事务副总监。詹迪将在硅谷办公，负责领导阿里巴巴公司在中国大陆以外地区的所有企业和财务沟通事物。在加入Facebook之前，詹迪曾在博然思维集团(Brunswick Group)工作5年多时间。\r\n</p>\r\n<p>\r\n	今年以来，Facebook依然在努力扩张，尤其是在移动业务领域。马克·扎克伯格（Mark Zuckerberg）多次表示，Facebook在2013年将继续在基础设施和团队扩张方面大举投资。\r\n</p>\r\n<p>\r\n	今年6月底，Facebook拥有5,299名员工，相比去年年底增长了15％ 。最近加盟Facebook的重要员工包括其第一任首席营销官格雷·布里吉斯(Gary Briggs)，格雷来自谷歌(微博)，在加入Facebook之前担任摩托罗拉移动公司的营销部门高级副总裁。\r\n</p>\r\n<p>\r\n	另一方面，Facebook最近也有几位重要人物离职。今年5月，Facebook首席法律顾问尤罗特(Ted Ullyot)离开。最近，Facebook的顶级广告经理戈库尔·拉贾兰（Gokul Rajaram）宣布离开，加入了数字支付公司Square。\r\n</p>', '', '', '', 'Facebook,高管,离职,投奔,阿里巴巴', 1, 'N', 'Y', 'uploads/201309/523a554c026c4.jpg', 'uploads/201309/thumb_523a554c026c4.jpg', 0, 0, 'N', 0, 0, 'Y', 0, '', 'Y', 1379554636);
INSERT INTO `#@__post` VALUES (18, 1, '', '', '诺基亚宣布10月22日发布新品 或推Lumia1520', '', '', '', '', '', '', '', 2, 2, '', '', '', '', '', '<p>\r\n	不少人都在期待诺基亚Lumia1520的到来，但这款旗舰机型将会延迟发布的传闻令人非常失望。而现在，诺基亚官方在推特上消息则给人们：“从未停止创新，10月22日将揭晓。”此举在外界看来，或许意味着此前曝光的诺基亚Lumia1520和10.1英寸的Windows RT平板电脑届时将会正式发布。\r\n</p>\r\n<p>\r\n	10月22日发布新机\r\n</p>\r\n<p>\r\n	对于诺基亚这场发布会，人们可谓期待已久。此前网络上曾经传出诺基亚将于9月26日在纽约召开发布会，正式推出诺基亚Lumia1520和Windows RT平板电脑的消息。不过，随后又有爆料大神evleaks大神发布信息称，诺基亚已经将发布会日期推迟至10月22日。\r\n</p>\r\n<p>\r\n	而现在，传闻最终成真。诺基亚发布推文表示：“创新从未停止，10月22日将揭晓。”正式确认将在下月底举办发布会推出新款智能机型。至于诺基亚延迟发布会的主要原因，路透社给出的消息称，主要还是因为微软对诺基亚设备和服务部门的收购案影响所致。此外，爆料大神evleaks还最新曝光了本次诺基亚发布会的举办地点在阿联酋的阿布扎比。\r\n</p>\r\n<p>\r\n	诺基亚Lumia1520将是主角\r\n</p>\r\n<p>\r\n	尽管诺基亚并未透露本次发布会将推出怎样的新品，但此前频繁曝光的诺基亚Lumia1520到时候将作为主角登场已是毫无悬念。作为诺基亚未来的旗舰机型，诺基亚Lumia1520最大的特色是配有6英寸触控屏，并支持1080p全高清分辨率,搭载有WP8 GDR3系统版本和内置高通骁龙800处理器，拥有2GB的内存和32GB储存容量，并支持存储卡扩展。\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	诺基亚Lumia1520还具备出色的拍照功能，内置2000万像素摄像头，能够同时拍摄一张500万像素照片用于分享；一张 1600万像素照片用于保存。而根据国外媒体披露的消息称，该机将于11月18日由美国运营商AT&amp;T发售，裸机价格为699美元（约合人民币4278元），将有红、黑、黄、白等四种色彩款式选择。\r\n</p>\r\n<p>\r\n	平板同步登场\r\n</p>\r\n<p>\r\n	除此之外，代号“Sirius”的诺基亚Windows RT平板电脑也可能会在本次发布会上同步推出。根据此前泄露的信息显示，诺基亚这款平板还会配备10.1英寸1080p分辨率触控屏，搭载Windows RT系统，并拥有高通骁龙800处理器，支持LTE网络和内置了670万像素摄像头，具备10小时的电池续航时间。\r\n</p>\r\n<p>\r\n	诺基亚还为这款Windows RT平板配备了2GB的RAM内存和支持存储卡扩展，拥有200万像素前置摄像头，支持Skype Calls、普通视频以及照片捕捉。并提供了Micro-HDMI 和 Micro-USB接口，与微软 Surface 平板非常相似。据悉，诺基亚这款平板的售价为为499美元起（约合人民币3053元左右）。\r\n</p>\r\n<p>\r\n	<br />\r\n</p>', '', '', '', '诺基亚,宣布,Lumia1520', 1, 'N', 'Y', 'uploads/201309/523a558840c6d.jpg', 'uploads/201309/thumb_523a558840c6d.jpg', 0, 0, 'N', 0, 0, 'Y', 0, '', 'Y', 1379554696);
COMMIT;

-- ----------------------------
-- Table structure for #@__post_2tags
-- ----------------------------
DROP TABLE IF EXISTS `#@__post_2tags`;
CREATE TABLE `#@__post_2tags` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '标题ID',
  `tag_name` char(30) NOT NULL COMMENT '标签名称',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=35 DEFAULT CHARSET=utf8 COMMENT='内容关联标签';

-- ----------------------------
-- Records of #@__post_2tags
-- ----------------------------
BEGIN;
INSERT INTO `#@__post_2tags` VALUES (1, 4, '贵族养生');
INSERT INTO `#@__post_2tags` VALUES (2, 4, '休闲放松');
INSERT INTO `#@__post_2tags` VALUES (3, 6, '麦乐迪');
INSERT INTO `#@__post_2tags` VALUES (4, 6, 'KTV');
INSERT INTO `#@__post_2tags` VALUES (5, 7, 'iOS7');
INSERT INTO `#@__post_2tags` VALUES (6, 7, '普通用户');
INSERT INTO `#@__post_2tags` VALUES (7, 7, '全新图标设计');
INSERT INTO `#@__post_2tags` VALUES (8, 9, '甲骨文');
INSERT INTO `#@__post_2tags` VALUES (9, 9, '净利润');
INSERT INTO `#@__post_2tags` VALUES (10, 11, '谷歌');
INSERT INTO `#@__post_2tags` VALUES (11, 11, '追踪工具');
INSERT INTO `#@__post_2tags` VALUES (12, 11, 'AdID');
INSERT INTO `#@__post_2tags` VALUES (13, 11, '洗牌');
INSERT INTO `#@__post_2tags` VALUES (14, 12, '微软');
INSERT INTO `#@__post_2tags` VALUES (15, 12, 'Windows8.1');
INSERT INTO `#@__post_2tags` VALUES (16, 12, '基本版售价');
INSERT INTO `#@__post_2tags` VALUES (17, 13, '三星');
INSERT INTO `#@__post_2tags` VALUES (18, 13, '智能手表');
INSERT INTO `#@__post_2tags` VALUES (19, 13, '二代产品');
INSERT INTO `#@__post_2tags` VALUES (20, 14, 'App');
INSERT INTO `#@__post_2tags` VALUES (21, 14, 'Annie');
INSERT INTO `#@__post_2tags` VALUES (22, 14, '美元投资');
INSERT INTO `#@__post_2tags` VALUES (23, 14, '国际业务');
INSERT INTO `#@__post_2tags` VALUES (24, 16, '美国');
INSERT INTO `#@__post_2tags` VALUES (25, 16, '禁止运营商');
INSERT INTO `#@__post_2tags` VALUES (26, 16, '锁定手机');
INSERT INTO `#@__post_2tags` VALUES (27, 17, 'Facebook');
INSERT INTO `#@__post_2tags` VALUES (28, 17, '高管');
INSERT INTO `#@__post_2tags` VALUES (29, 17, '离职');
INSERT INTO `#@__post_2tags` VALUES (30, 17, '投奔');
INSERT INTO `#@__post_2tags` VALUES (31, 17, '阿里巴巴');
INSERT INTO `#@__post_2tags` VALUES (32, 18, '诺基亚');
INSERT INTO `#@__post_2tags` VALUES (33, 18, '宣布');
INSERT INTO `#@__post_2tags` VALUES (34, 18, 'Lumia1520');
COMMIT;

-- ----------------------------
-- Table structure for #@__post_album
-- ----------------------------
DROP TABLE IF EXISTS `#@__post_album`;
CREATE TABLE `#@__post_album` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '用户名',
  `content_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '内容编号',
  `catalog` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '类别',
  `folder` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '文件夹',
  `real_name` varchar(255) NOT NULL DEFAULT '' COMMENT '原始文件名称',
  `file_name` char(100) NOT NULL DEFAULT '' COMMENT '带路径文件名',
  `thumb_name` varchar(255) NOT NULL DEFAULT '' COMMENT '缩略图',
  `save_path` varchar(100) NOT NULL DEFAULT '' COMMENT '保存路径',
  `save_name` varchar(100) NOT NULL DEFAULT '' COMMENT '保存文件名不带路径',
  `hash` char(32) NOT NULL DEFAULT '' COMMENT 'hash',
  `file_ext` char(5) NOT NULL DEFAULT 'jpg' COMMENT '扩展名称',
  `file_mime` varchar(50) NOT NULL DEFAULT '' COMMENT '文件头信息',
  `file_size` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '文件大小',
  `down_count` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '下载次数',
  `access` varchar(255) NOT NULL DEFAULT '' COMMENT '权限控制',
  `sort_order` int(11) NOT NULL DEFAULT '0' COMMENT '排序',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '上传时间',
  PRIMARY KEY (`id`),
  KEY `album` (`content_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='图片相册';

-- ----------------------------
-- Table structure for #@__post_comment
-- ----------------------------
DROP TABLE IF EXISTS `#@__post_comment`;
CREATE TABLE `#@__post_comment` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `post_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '标题id',
  `user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '用户ID',
  `nickname` varchar(60) NOT NULL DEFAULT 'guest' COMMENT '用户名',
  `email` varchar(50) NOT NULL DEFAULT '' COMMENT '邮箱',
  `content` text NOT NULL COMMENT '评论内容',
  `status_is` enum('Y','N') NOT NULL DEFAULT 'Y' COMMENT '状态',
  `status_answer` enum('Y','N') NOT NULL DEFAULT 'N',
  `answer_content` text COMMENT '回复内容',
  `client_ip` char(5) NOT NULL DEFAULT '127' COMMENT '评论ip',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '录入时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='新闻评论';

-- ----------------------------
-- Table structure for #@__post_tags
-- ----------------------------
DROP TABLE IF EXISTS `#@__post_tags`;
CREATE TABLE `#@__post_tags` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `catalog_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '分类',
  `tag_name` char(30) NOT NULL COMMENT 'tag名称',
  `data_count` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '数据总数',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '录入时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=35 DEFAULT CHARSET=utf8 COMMENT='新闻标签';

-- ----------------------------
-- Records of #@__post_tags
-- ----------------------------
BEGIN;
INSERT INTO `#@__post_tags` VALUES (1, 5, '贵族养生', 1, 1379546108);
INSERT INTO `#@__post_tags` VALUES (2, 5, '休闲放松', 1, 1379546108);
INSERT INTO `#@__post_tags` VALUES (3, 5, '麦乐迪', 1, 1379546248);
INSERT INTO `#@__post_tags` VALUES (4, 5, 'KTV', 1, 1379546248);
INSERT INTO `#@__post_tags` VALUES (5, 2, 'iOS7', 1, 1379546869);
INSERT INTO `#@__post_tags` VALUES (6, 2, '普通用户', 1, 1379546869);
INSERT INTO `#@__post_tags` VALUES (7, 2, '全新图标设计', 1, 1379546869);
INSERT INTO `#@__post_tags` VALUES (8, 3, '甲骨文', 1, 1379547034);
INSERT INTO `#@__post_tags` VALUES (9, 3, '净利润', 1, 1379547034);
INSERT INTO `#@__post_tags` VALUES (10, 2, '谷歌', 1, 1379554258);
INSERT INTO `#@__post_tags` VALUES (11, 2, '追踪工具', 1, 1379554258);
INSERT INTO `#@__post_tags` VALUES (12, 2, 'AdID', 1, 1379554258);
INSERT INTO `#@__post_tags` VALUES (13, 2, '洗牌', 1, 1379554258);
INSERT INTO `#@__post_tags` VALUES (14, 2, '微软', 1, 1379554317);
INSERT INTO `#@__post_tags` VALUES (15, 2, 'Windows8.1', 1, 1379554317);
INSERT INTO `#@__post_tags` VALUES (16, 2, '基本版售价', 1, 1379554317);
INSERT INTO `#@__post_tags` VALUES (17, 2, '三星', 1, 1379554397);
INSERT INTO `#@__post_tags` VALUES (18, 2, '智能手表', 1, 1379554397);
INSERT INTO `#@__post_tags` VALUES (19, 2, '二代产品', 1, 1379554397);
INSERT INTO `#@__post_tags` VALUES (20, 2, 'App', 1, 1379554460);
INSERT INTO `#@__post_tags` VALUES (21, 2, 'Annie', 1, 1379554460);
INSERT INTO `#@__post_tags` VALUES (22, 2, '美元投资', 1, 1379554460);
INSERT INTO `#@__post_tags` VALUES (23, 2, '国际业务', 1, 1379554460);
INSERT INTO `#@__post_tags` VALUES (24, 2, '美国', 1, 1379554552);
INSERT INTO `#@__post_tags` VALUES (25, 2, '禁止运营商', 1, 1379554552);
INSERT INTO `#@__post_tags` VALUES (26, 2, '锁定手机', 1, 1379554552);
INSERT INTO `#@__post_tags` VALUES (27, 2, 'Facebook', 1, 1379554636);
INSERT INTO `#@__post_tags` VALUES (28, 2, '高管', 1, 1379554636);
INSERT INTO `#@__post_tags` VALUES (29, 2, '离职', 1, 1379554636);
INSERT INTO `#@__post_tags` VALUES (30, 2, '投奔', 1, 1379554636);
INSERT INTO `#@__post_tags` VALUES (31, 2, '阿里巴巴', 1, 1379554636);
INSERT INTO `#@__post_tags` VALUES (32, 2, '诺基亚', 1, 1379554696);
INSERT INTO `#@__post_tags` VALUES (33, 2, '宣布', 1, 1379554696);
INSERT INTO `#@__post_tags` VALUES (34, 2, 'Lumia1520', 1, 1379554696);
COMMIT;

-- ----------------------------
-- Table structure for #@__question
-- ----------------------------
DROP TABLE IF EXISTS `#@__question`;
CREATE TABLE `#@__question` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '用户',
  `scope` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '所属分类',
  `username` varchar(100) NOT NULL DEFAULT '' COMMENT '用户名',
  `realname` varchar(50) NOT NULL DEFAULT '' COMMENT '真实姓名',
  `email` varchar(60) NOT NULL DEFAULT '' COMMENT '邮箱',
  `telephone` varchar(20) NOT NULL DEFAULT '' COMMENT '电话',
  `question` text NOT NULL COMMENT '内容',
  `contact_other` varchar(100) NOT NULL DEFAULT '' COMMENT '其它联系方式',
  `answer_status` enum('Y','N') NOT NULL DEFAULT 'N' COMMENT '回复状态',
  `answer_content` text COMMENT '回复内容',
  `status_is` enum('Y','N') NOT NULL DEFAULT 'Y' COMMENT '状态',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '发送时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='客服';

-- ----------------------------
-- Records of #@__question
-- ----------------------------
BEGIN;
INSERT INTO `#@__question` VALUES (1, 0, 0, '', '八哥软件', '5565907@qq.com', '', 'BageCms是一款基于php5+mysql5开发的多功能开源的网站内容管理系统。使用高性能的PHP5的web应用程序开发框架YII构建，具有操作简单、稳定、安全、高效、跨平台等特点。采用MVC设计模式，模板定制方便灵活，内置小挂工具，方便制作各类功能和效果，BageCms可用于企业建站、个人博客、资讯门户、图片站等各类型站点。', '', 'N', '如果您需要购买商业程序、项目外包订制、交流合作的，欢迎使用以下方式和我们联系\r\nhttp://www.bagecms.com\r\nhttp://www.bagesoft.cn', 'Y', 1379546643);
COMMIT;

-- ----------------------------
-- Table structure for #@__special
-- ----------------------------
DROP TABLE IF EXISTS `#@__special`;
CREATE TABLE `#@__special` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL DEFAULT '' COMMENT '标题',
  `title_alias` varchar(255) NOT NULL DEFAULT '' COMMENT '标题别名',
  `intro` text COMMENT '描述',
  `content` text COMMENT '详细介绍',
  `attach_thumb` varchar(255) NOT NULL DEFAULT '' COMMENT '附件缩略图',
  `attach_file` varchar(255) NOT NULL DEFAULT '' COMMENT '附件名称',
  `seo_title` varchar(255) NOT NULL DEFAULT '' COMMENT 'seo标题',
  `seo_keywords` varchar(255) NOT NULL DEFAULT '' COMMENT 'seo关键字',
  `seo_description` varchar(255) NOT NULL DEFAULT '' COMMENT 'seo描述',
  `template` varchar(50) NOT NULL DEFAULT '' COMMENT '模板',
  `status_is` enum('Y','N') NOT NULL DEFAULT 'Y' COMMENT '状态',
  `sort_order` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  `view_count` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '点击次数',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '入库时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='专题';

-- ----------------------------
-- Records of #@__special
-- ----------------------------
BEGIN;
INSERT INTO `#@__special` VALUES (1, '特斯拉将在三年内推出自动驾驶汽车', 'test1', '美国特斯拉电动汽车公司（Tesla Motors）首席执行官艾伦•马斯克（Elon Musk）周二表示，该公司力争在未来三年里推出能够“自动驾驶”的汽车，从而正式加入到拥有谷歌(微博)和多家汽车厂商的无人驾驶汽车市场的争夺之中', '<p style=\"font-size:16px;color:#333333;font-family:微软雅黑, Tahoma, Verdana, 宋体;background-color:#FFFFFF;text-indent:2em;\">\r\n	美国特斯拉电动汽车公司（Tesla Motors）首席执行官艾伦•马斯克（Elon Musk）周二表示，该公司力争在未来三年里推出能够“自动驾驶”的汽车，从而正式加入到拥有<a class=\"a-tips-Article-QQ\" href=\"http://stockhtm.finance.qq.com/astock/ggcx/GOOG.OQ.htm\" target=\"_blank\">谷歌</a>(<a href=\"http://t.qq.com/googlechina#pref=qqcom.keyword\" target=\"_blank\">微博</a>)和多家汽车厂商的无人驾驶汽车市场的争夺之中。\r\n</p>\r\n<p style=\"font-size:16px;color:#333333;font-family:微软雅黑, Tahoma, Verdana, 宋体;background-color:#FFFFFF;text-indent:2em;\">\r\n	马斯克在接受英国《金融时报》的采访时表示，特斯拉自动驾驶汽车将会让司机把90%的驾驶权转交给汽车的电脑系统，而全自动无人驾驶汽车则需要更长的研发时间。\r\n</p>\r\n<p style=\"font-size:16px;color:#333333;font-family:微软雅黑, Tahoma, Verdana, 宋体;background-color:#FFFFFF;text-indent:2em;\">\r\n	马斯克指出，特斯拉的自动驾驶汽车将由该公司采用自有技术进行内部研发，并不会外包给其他公司。这一点也得到了该公司一位新闻发言人的证实。\r\n</p>\r\n<p style=\"font-size:16px;color:#333333;font-family:微软雅黑, Tahoma, Verdana, 宋体;background-color:#FFFFFF;text-indent:2em;\">\r\n	特斯拉官网近日发布了一个招聘“高级驾驶员辅助系统控制工程师”的启示，负责帮助“特斯拉成为自动驾驶汽车市场的领导者”。\r\n</p>', 'uploads/201309/thumb_523a37e62e9a8.jpg', 'uploads/201309/523a37e62e9a8.jpg', '', '', '', '', 'Y', 0, 4, 1379547110);
INSERT INTO `#@__special` VALUES (2, '美国餐厅如何利用桌面服务系统扩大销售额？', 'test2', '', '<p style=\"font-size:16px;color:#333333;font-family:微软雅黑, Tahoma, Verdana, 宋体;background-color:#FFFFFF;text-indent:2em;\">\r\n	随着移动科技的不断发展，人们生活的方方面面都感受到了新科技所带来的巨大影响，餐饮领域自然也不例外。无论是在餐馆的餐桌上放置平板电脑、还是推出可互动的点菜、买单应用都是餐饮企业为进一步促进消费者来店消费所想出的妙招。其中，美国知名餐厅运营商Brinker International.Inc旗下Chili\'s Grill &amp; Bar最近做出的动作便是移动化大潮来袭下的一个最好示范。\r\n</p>\r\n<p style=\"font-size:16px;color:#333333;font-family:微软雅黑, Tahoma, Verdana, 宋体;background-color:#FFFFFF;text-indent:2em;\">\r\n	<img src=\"/cms/uploads/201309/523a380d1d4c0.jpg\" alt=\"\" />\r\n</p>\r\n<p style=\"font-size:16px;color:#333333;font-family:微软雅黑, Tahoma, Verdana, 宋体;background-color:#FFFFFF;text-indent:2em;\">\r\n	目前，该公司已经在旗下部分餐厅中测试由Ziosk研发的桌面服务系统，该系统可以使消费者在无需服务员出现的情况完成点菜、买单等操作，甚至还可以利用该系统玩游戏。对此，Chili\'s Grill &amp; Bar品牌战略高级副总裁表示，“由于消费者更倾向于在配备了这类桌面系统的餐厅花费更多金钱，因此这一科技可以帮助公司有效提高销售额。”\r\n</p>\r\n<p style=\"font-size:16px;color:#333333;font-family:微软雅黑, Tahoma, Verdana, 宋体;background-color:#FFFFFF;text-indent:2em;\">\r\n	事实上，由于桌面服务系统会时不时的显示一些甜品的图片，Chili\'s Grill &amp; Bar餐厅的甜品销量已经迎来了大约20%的提升。因此我们不难想象，如果Chili\'s Grill &amp; Bar未来将这一图片展示的范围扩大到酒精类饮品和其他拥有更大利润率的菜品时能够取得怎样的效果。\r\n</p>\r\n<p style=\"font-size:16px;color:#333333;font-family:微软雅黑, Tahoma, Verdana, 宋体;background-color:#FFFFFF;text-indent:2em;\">\r\n	与此同时，桌面服务设备中自带的那些看似不起眼的小游戏也有望为餐厅带来额外收入。比如，Chili\'s Grill &amp; Bar会向每位需要使用游戏服务的消费者收取0.99美元的费用，其中Chili\'s Grill &amp; Bar将可以拿到50%的分成，而另一半则由Ziosk收取。考虑到Chili\'s Grill &amp; Bar目前仅仅是从Ziosk处以租赁的形式拿到这些设备的这一事实，这样的分成比例还算比较公平。\r\n</p>', 'uploads/201309/thumb_523a381039dc7.jpg', 'uploads/201309/523a381039dc7.jpg', '', '', '', '', 'Y', 0, 23, 1379547152);
COMMIT;

-- ----------------------------
-- Table structure for #@__upload
-- ----------------------------
DROP TABLE IF EXISTS `#@__upload`;
CREATE TABLE `#@__upload` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '用户名',
  `scope` enum('content','image') NOT NULL DEFAULT 'content' COMMENT '范围',
  `folder` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '文件夹',
  `real_name` varchar(255) NOT NULL DEFAULT '' COMMENT '原始文件名称',
  `file_name` char(100) NOT NULL DEFAULT '' COMMENT '带路径文件名',
  `thumb_name` varbinary(255) NOT NULL DEFAULT '' COMMENT '缩略图',
  `save_path` varchar(100) NOT NULL DEFAULT '' COMMENT '保存路径',
  `save_name` varchar(100) NOT NULL DEFAULT '' COMMENT '保存文件名不带路径',
  `hash` char(32) NOT NULL DEFAULT '' COMMENT 'hash',
  `file_ext` char(5) NOT NULL DEFAULT 'jpg' COMMENT '扩展名称',
  `file_mime` varchar(50) NOT NULL DEFAULT '' COMMENT '文件头信息',
  `file_size` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '文件大小',
  `down_count` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '下载次数',
  `access` varchar(255) NOT NULL DEFAULT '' COMMENT '权限控制',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '上传时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='附件';

-- ----------------------------
-- Records of #@__upload
-- ----------------------------
BEGIN;
INSERT INTO `#@__upload` VALUES (1, 0, 'content', 0, '1f178a82b9014a90244a438dab773912b31bee8e.jpg', 'uploads/201309/523a32fdf1f07.jpg', '', 'uploads/201309/', '523a32fdf1f07.jpg', 'd0dcf27f87ec506ee9000740455782b3', 'jpg', 'image/jpeg', 399821, 0, '', 1379545854);
INSERT INTO `#@__upload` VALUES (2, 0, 'content', 0, 'QQ截图20130919070700.jpg', 'uploads/201309/523a374c27077.jpg', '', 'uploads/201309/', '523a374c27077.jpg', '377780c977f89e6ef9b571eb0cc28925', 'jpg', 'image/jpeg', 45836, 0, '', 1379546956);
INSERT INTO `#@__upload` VALUES (3, 0, 'content', 0, 'QQ截图20130919070700.jpg', 'uploads/201309/523a3780beb37.jpg', '', 'uploads/201309/', '523a3780beb37.jpg', '3ee5075e0b22e43c779138733c84da76', 'jpg', 'image/jpeg', 74073, 0, '', 1379547008);
INSERT INTO `#@__upload` VALUES (4, 0, 'content', 0, 'QQ截图20130919070700.jpg', 'uploads/201309/523a380d1d4c0.jpg', '', 'uploads/201309/', '523a380d1d4c0.jpg', 'b5977602ec0d3f902ffec8520f88bbde', 'jpg', 'image/jpeg', 40911, 0, '', 1379547149);
INSERT INTO `#@__upload` VALUES (5, 0, 'content', 0, 'QQ截图20130919070700.jpg', 'uploads/201309/523a53bd105ee.jpg', '', 'uploads/201309/', '523a53bd105ee.jpg', 'eff9746a7d60f290070df3e30f493d98', 'jpg', 'image/jpeg', 25761, 0, '', 1379554237);
COMMIT;

-- ----------------------------
-- Table structure for bage_ad
-- ----------------------------
DROP TABLE IF EXISTS `bage_ad`;
CREATE TABLE `bage_ad` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `title` varchar(50) NOT NULL COMMENT '广告名称',
  `title_alias` char(40) NOT NULL DEFAULT '' COMMENT '标识',
  `link_url` varchar(255) NOT NULL DEFAULT '' COMMENT '链接地址',
  `image_url` varchar(255) NOT NULL DEFAULT '' COMMENT '图片地址',
  `width` varchar(10) NOT NULL DEFAULT '' COMMENT '图片宽',
  `height` varchar(10) NOT NULL DEFAULT '' COMMENT '图片高',
  `intro` text COMMENT '广告描述',
  `click_count` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '点击数',
  `start_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '开始时间',
  `expired_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '过期时间',
  `attach_file` varchar(100) NOT NULL DEFAULT '' COMMENT '附件',
  `sort_order` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  `status_is` enum('Y','N') NOT NULL DEFAULT 'Y' COMMENT '状态',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '录入时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='广告';

-- ----------------------------
-- Records of bage_ad
-- ----------------------------
BEGIN;
INSERT INTO `bage_ad` VALUES (1, '首页banner', 'index_banner', 'http://www.bagecms.com', '', '', '', '', 0, 1379520000, 1546272000, 'uploads/201309/523a2c04a37a1.jpg', 8, 'Y', 1379544068);
INSERT INTO `bage_ad` VALUES (2, '首页banner', 'index_banner', '', '', '', '', '', 0, 1379520000, 1546272000, 'uploads/201801/301f519303dc3207258484cb4780eec6.jpg', 9, 'Y', 1379544139);
INSERT INTO `bage_ad` VALUES (3, '首页banner', 'index_banner', '', '', '', '', '', 0, 1379520000, 1379606400, 'uploads/201309/523a2ca7b51ce.jpg', 10, 'Y', 1379544231);
COMMIT;

-- ----------------------------
-- Table structure for bage_admin
-- ----------------------------
DROP TABLE IF EXISTS `bage_admin`;
CREATE TABLE `bage_admin` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` char(50) NOT NULL COMMENT '用户',
  `password` char(32) NOT NULL COMMENT '密码',
  `realname` varchar(100) NOT NULL DEFAULT '' COMMENT '真实姓名',
  `group_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '用户组',
  `email` varchar(100) NOT NULL DEFAULT '' COMMENT '邮箱',
  `qq` varchar(15) NOT NULL DEFAULT '0' COMMENT 'QQ',
  `notebook` text COMMENT '备忘',
  `mobile` varchar(20) NOT NULL DEFAULT '' COMMENT '电话',
  `telephone` varchar(20) NOT NULL DEFAULT '' COMMENT '手机',
  `last_login_ip` char(15) NOT NULL DEFAULT '127' COMMENT '最后登录ip',
  `last_login_time` int(10) NOT NULL DEFAULT '0' COMMENT '最后登录时间',
  `login_count` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '登录次数',
  `status_is` enum('Y','N') NOT NULL DEFAULT 'Y' COMMENT '用户状态',
  `create_time` int(10) NOT NULL DEFAULT '0' COMMENT '录入时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='管理员';

-- ----------------------------
-- Records of bage_admin
-- ----------------------------
BEGIN;
INSERT INTO `bage_admin` VALUES (1, 'admin', '21232f297a57a5a743894a0e4a801fc3', '', 1, 'tann1013@gmail.com', '0', '每个礼拜五推送精选WEB资讯---PHPclub;nnn 注意更改涉及安全的数据', '', '', '127.0.0.1', 1607612987, 408, 'Y', 1409819170);
INSERT INTO `bage_admin` VALUES (2, 'user', 'e10adc3949ba59abbe56e057f20f883e', '', 3, 'user@g.com', '0', '', '', '', '127.0.0.1', 1413184114, 1, 'Y', 1413184076);
INSERT INTO `bage_admin` VALUES (3, 'tann1013', 'e10adc3949ba59abbe56e057f20f883e', '', 3, '', '0', '', '', '', '127', 1413191175, 0, 'Y', 1413191175);
INSERT INTO `bage_admin` VALUES (4, 'test', 'e10adc3949ba59abbe56e057f20f883e', '', 3, '', '0', '', '', '', '127', 1413191187, 0, 'Y', 1413191187);
COMMIT;

-- ----------------------------
-- Table structure for bage_admin3
-- ----------------------------
DROP TABLE IF EXISTS `bage_admin3`;
CREATE TABLE `bage_admin3` (
  `id` int(10) unsigned NOT NULL DEFAULT '0',
  `username` char(50) CHARACTER SET utf8 NOT NULL COMMENT '用户',
  `password` char(32) CHARACTER SET utf8 NOT NULL COMMENT '密码',
  `realname` varchar(100) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '真实姓名',
  `group_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '用户组',
  `email` varchar(100) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '邮箱',
  `qq` varchar(15) CHARACTER SET utf8 NOT NULL DEFAULT '0' COMMENT 'QQ',
  `notebook` text CHARACTER SET utf8 COMMENT '备忘',
  `mobile` varchar(20) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '电话',
  `telephone` varchar(20) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '手机',
  `last_login_ip` char(15) CHARACTER SET utf8 NOT NULL DEFAULT '127' COMMENT '最后登录ip',
  `last_login_time` int(10) NOT NULL DEFAULT '0' COMMENT '最后登录时间',
  `login_count` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '登录次数',
  `status_is` enum('Y','N') CHARACTER SET utf8 NOT NULL DEFAULT 'Y' COMMENT '用户状态',
  `create_time` int(10) NOT NULL DEFAULT '0' COMMENT '录入时间'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of bage_admin3
-- ----------------------------
BEGIN;
INSERT INTO `bage_admin3` VALUES (4, 'test', 'e10adc3949ba59abbe56e057f20f883e', '', 3, '', '0', '', '', '', '127', 1413191187, 0, 'Y', 1413191187);
COMMIT;

-- ----------------------------
-- Table structure for bage_admin_group
-- ----------------------------
DROP TABLE IF EXISTS `bage_admin_group`;
CREATE TABLE `bage_admin_group` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `group_name` varchar(50) NOT NULL COMMENT '组名称',
  `acl` text NOT NULL COMMENT '权限',
  `status_is` enum('Y','N') NOT NULL DEFAULT 'Y' COMMENT '状态',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '录入时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='管理员组';

-- ----------------------------
-- Records of bage_admin_group
-- ----------------------------
BEGIN;
INSERT INTO `bage_admin_group` VALUES (2, '禁用', 'administrator', 'Y', 0);
INSERT INTO `bage_admin_group` VALUES (3, '测试组', 'home_index,config_catalog,catalog_create,catalog_update,catalog_delete,catalog_sort_order,config,config_index,config_seo,config_upload,config_custom,config_sms,config_mail,config_ebank,config_userConfig,post,post_index,post_create,post_update,post_verify,post_commend,post_delete,post_comment,post_comment_update,post_comment_delete,post_special,post_special_create,post_special_update,post_special_delete,page_index,page_create,page_update,page_delete,user,admin_index,admin_create,admin_update,admin_delete,admin_group,admin_group_create,admin_group_update,admin_group_delete,admin_logger,admin_logger_delete,question_index,question_update,question_delete', 'Y', 1413184039);
COMMIT;

-- ----------------------------
-- Table structure for bage_admin_logger
-- ----------------------------
DROP TABLE IF EXISTS `bage_admin_logger`;
CREATE TABLE `bage_admin_logger` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '用户id',
  `catalog` enum('login','create','update','delete','other','browse') NOT NULL DEFAULT 'other' COMMENT '类型',
  `url` varchar(255) NOT NULL DEFAULT '' COMMENT 'url',
  `intro` text COMMENT '操作',
  `ip` char(15) NOT NULL DEFAULT '127.0.0.1' COMMENT '操作ip',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '操作时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=942 DEFAULT CHARSET=utf8 COMMENT='管理员日志';

-- ----------------------------
-- Records of bage_admin_logger
-- ----------------------------
BEGIN;
INSERT INTO `bage_admin_logger` VALUES (153, 1, 'login', '/index.php?r=admini/public/login', '用户登录成功:admin', '106.120.139.2', 1414983757);
INSERT INTO `bage_admin_logger` VALUES (152, 1, 'login', '/index.php?r=admini/public/login', '用户登录成功:admin', '111.161.17.71', 1414910303);
INSERT INTO `bage_admin_logger` VALUES (151, 1, 'create', '/index.php?r=admini/post/create', '录入内容,ID:25', '221.194.177.21', 1414767765);
INSERT INTO `bage_admin_logger` VALUES (150, 1, 'update', '/index.php?r=admini/post/commentUpdate&id=6', '编辑内容评论，ID:6', '221.194.177.21', 1414767322);
INSERT INTO `bage_admin_logger` VALUES (149, 1, 'login', '/index.php?r=admini/public/login', '用户登录成功:admin', '221.194.177.21', 1414767265);
INSERT INTO `bage_admin_logger` VALUES (148, 1, 'login', '/index.php?r=admini/public/login', '用户登录成功:admin', '106.120.139.2', 1414742524);
INSERT INTO `bage_admin_logger` VALUES (147, 1, 'update', '/index.php?r=admini/post/update&id=23', '编辑内容,ID:23', '106.120.139.2', 1414741656);
INSERT INTO `bage_admin_logger` VALUES (146, 1, 'login', '/index.php?r=admini/public/login', '用户登录成功:admin', '106.120.139.2', 1414741027);
INSERT INTO `bage_admin_logger` VALUES (145, 1, 'login', '/index.php?r=admini/public/login', '用户登录成功:admin', '106.120.139.2', 1414741027);
INSERT INTO `bage_admin_logger` VALUES (144, 1, 'update', '/index.php?r=admini/post/update&id=23', '编辑内容,ID:23', '106.120.139.2', 1414739308);
INSERT INTO `bage_admin_logger` VALUES (143, 1, 'update', '/index.php?r=admini/post/update&id=23', '编辑内容,ID:23', '106.120.139.2', 1414739130);
INSERT INTO `bage_admin_logger` VALUES (142, 1, 'login', '/index.php?r=admini/public/login', '用户登录成功:admin', '106.120.139.2', 1414739085);
INSERT INTO `bage_admin_logger` VALUES (141, 1, 'update', '/index.php?r=admini/post/update&id=24', '编辑内容,ID:24', '111.161.17.72', 1414595151);
INSERT INTO `bage_admin_logger` VALUES (140, 1, 'create', '/index.php?r=admini/post/create', '录入内容,ID:24', '111.161.17.72', 1414595138);
INSERT INTO `bage_admin_logger` VALUES (139, 1, 'create', '/index.php?r=admini/post/create', '录入内容,ID:23', '111.161.17.72', 1414594922);
INSERT INTO `bage_admin_logger` VALUES (138, 1, 'create', '/index.php?r=admini/catalog/create', '录入全局分类,ID:名称：PHP', '111.161.17.72', 1414593100);
INSERT INTO `bage_admin_logger` VALUES (137, 1, 'update', '/index.php?r=admini/catalog/update&id=9', '编辑全局分类,ID:9,名称：日志', '111.161.17.72', 1414593041);
INSERT INTO `bage_admin_logger` VALUES (136, 1, 'login', '/index.php?r=admini/public/login', '用户登录成功:admin', '111.161.17.72', 1414592882);
INSERT INTO `bage_admin_logger` VALUES (135, 1, 'delete', '/index.php?r=admini/post/batch&command=specialDelete&id=1', '删除内容，ID:1', '106.120.139.2', 1414573481);
INSERT INTO `bage_admin_logger` VALUES (134, 1, 'update', '/index.php?r=admini/config/index', '更新系统配置，模块：index', '106.120.139.2', 1414573470);
INSERT INTO `bage_admin_logger` VALUES (133, 1, 'login', '/index.php?r=admini/public/login', '用户登录成功:admin', '106.120.139.2', 1414573418);
INSERT INTO `bage_admin_logger` VALUES (132, 0, 'login', '/index.php?r=admini/public/login', '登录失败，密码不正确:admin，使用密码：TANJIAN421970+', '106.120.139.2', 1414573414);
INSERT INTO `bage_admin_logger` VALUES (131, 0, 'login', '/index.php?r=admini/public/login', '登录失败，密码不正确:admin，使用密码：TANJIAN421970+', '106.120.139.2', 1414573398);
INSERT INTO `bage_admin_logger` VALUES (130, 0, 'login', '/index.php?r=admini/public/login', '登录失败，密码不正确:admin，使用密码：TANJIAN421970+', '106.120.139.2', 1414573384);
INSERT INTO `bage_admin_logger` VALUES (129, 0, 'login', '/index.php?r=admini/public/login', '登录失败，密码不正确:admin，使用密码：TANJIAN421970+', '106.120.139.2', 1414573384);
INSERT INTO `bage_admin_logger` VALUES (114, 0, 'login', '/index.php?r=admini/public/login', '登录失败，密码不正确:admin，使用密码：tanjian421970', '60.194.113.3', 1414314676);
INSERT INTO `bage_admin_logger` VALUES (115, 1, 'login', '/index.php?r=admini/public/login', '用户登录成功:admin', '60.194.113.3', 1414314687);
INSERT INTO `bage_admin_logger` VALUES (116, 1, 'create', '/index.php?r=admini/post/create', '录入内容,ID:21', '60.194.113.3', 1414315067);
INSERT INTO `bage_admin_logger` VALUES (117, 1, 'update', '/index.php?r=admini/post/specialUpdate&id=2', '专题更新,ID:2', '60.194.113.3', 1414315627);
INSERT INTO `bage_admin_logger` VALUES (118, 1, 'update', '/index.php?r=admini/post/specialUpdate&id=2', '专题更新,ID:2', '60.194.113.3', 1414315647);
INSERT INTO `bage_admin_logger` VALUES (119, 1, 'update', '/index.php?r=admini/post/specialUpdate&id=2', '专题更新,ID:2', '60.194.113.3', 1414315772);
INSERT INTO `bage_admin_logger` VALUES (120, 1, 'update', '/index.php?r=admini/post/update&id=21', '编辑内容,ID:21', '60.194.113.3', 1414315815);
INSERT INTO `bage_admin_logger` VALUES (121, 1, 'login', '/index.php?r=admini/public/login', '用户登录成功:admin', '60.194.113.3', 1414334719);
INSERT INTO `bage_admin_logger` VALUES (122, 1, 'login', '/index.php?r=admini/public/login', '用户登录成功:admin', '124.202.190.93', 1414424719);
INSERT INTO `bage_admin_logger` VALUES (123, 1, 'create', '/index.php?r=admini/post/create', '录入内容,ID:22', '124.202.190.93', 1414424809);
INSERT INTO `bage_admin_logger` VALUES (124, 1, 'update', '/index.php?r=admini/post/update&id=22', '编辑内容,ID:22', '124.202.190.93', 1414424966);
INSERT INTO `bage_admin_logger` VALUES (125, 1, 'login', '/index.php?r=admini/public/login', '用户登录成功:admin', '106.120.139.2', 1414463943);
INSERT INTO `bage_admin_logger` VALUES (126, 1, 'update', '/index.php?r=admini/config/index', '更新系统配置，模块：index', '106.120.139.2', 1414464103);
INSERT INTO `bage_admin_logger` VALUES (127, 1, 'update', '/index.php?r=admini/config/seo', '更新系统配置，模块：seo', '106.120.139.2', 1414464126);
INSERT INTO `bage_admin_logger` VALUES (128, 0, 'login', '/index.php?r=admini/public/login', '登录失败，密码不正确:admin，使用密码：TANJIAN421970+', '106.120.139.2', 1414573376);
INSERT INTO `bage_admin_logger` VALUES (178, 1, 'update', '/index.php?r=admini/post/update&id=27', '编辑内容,ID:27', '106.120.139.2', 1416468116);
INSERT INTO `bage_admin_logger` VALUES (177, 1, 'login', '/index.php?r=admini/public/login', '用户登录成功:admin', '106.120.139.2', 1416468052);
INSERT INTO `bage_admin_logger` VALUES (176, 1, 'login', '/index.php?r=admini/public/login', '用户登录成功:admin', '106.120.139.2', 1416468052);
INSERT INTO `bage_admin_logger` VALUES (175, 1, 'update', '/index.php?r=admini/post/update&id=27', '编辑内容,ID:27', '106.120.139.2', 1416452007);
INSERT INTO `bage_admin_logger` VALUES (174, 1, 'update', '/index.php?r=admini/post/update&id=27', '编辑内容,ID:27', '106.120.139.2', 1416451712);
INSERT INTO `bage_admin_logger` VALUES (173, 1, 'update', '/index.php?r=admini/post/update&id=27', '编辑内容,ID:27', '106.120.139.2', 1416451535);
INSERT INTO `bage_admin_logger` VALUES (172, 1, 'create', '/index.php?r=admini/post/create', '录入内容,ID:27', '106.120.139.2', 1416451395);
INSERT INTO `bage_admin_logger` VALUES (171, 1, 'login', '/index.php?r=admini/public/login', '用户登录成功:admin', '106.120.139.2', 1416451187);
INSERT INTO `bage_admin_logger` VALUES (170, 1, 'update', '/index.php?r=admini/post/update&id=25', '编辑内容,ID:25', '114.111.167.199', 1415802197);
INSERT INTO `bage_admin_logger` VALUES (169, 1, 'login', '/index.php?r=admini/public/login', '用户登录成功:admin', '114.111.167.199', 1415800722);
INSERT INTO `bage_admin_logger` VALUES (168, 1, 'update', '/index.php?r=admini/post/batch', '批量取消内容审核，ID:25', '106.39.255.202', 1415627551);
INSERT INTO `bage_admin_logger` VALUES (167, 1, 'update', '/index.php?r=admini/post/update&id=25', '编辑内容,ID:25', '106.39.255.202', 1415627497);
INSERT INTO `bage_admin_logger` VALUES (166, 1, 'update', '/index.php?r=admini/post/update&id=25', '编辑内容,ID:25', '106.39.255.202', 1415625616);
INSERT INTO `bage_admin_logger` VALUES (165, 1, 'login', '/index.php?r=admini/public/login', '用户登录成功:admin', '106.39.255.202', 1415625581);
INSERT INTO `bage_admin_logger` VALUES (164, 1, 'delete', '/index.php?r=admini/catalog/batch&command=delete&id=12', '删除全局分类，ID:12', '114.111.167.195', 1415453418);
INSERT INTO `bage_admin_logger` VALUES (163, 1, 'create', '/index.php?r=admini/catalog/create', '录入全局分类,ID:名称：周记', '114.111.167.195', 1415453377);
INSERT INTO `bage_admin_logger` VALUES (162, 1, 'login', '/index.php?r=admini/public/login', '用户登录成功:admin', '114.111.167.195', 1415453199);
INSERT INTO `bage_admin_logger` VALUES (161, 1, 'login', '/index.php?r=admini/public/login', '用户登录成功:admin', '106.120.139.2', 1415263925);
INSERT INTO `bage_admin_logger` VALUES (160, 1, 'login', '/index.php?r=admini/public/login', '用户登录成功:admin', '106.120.139.2', 1415263925);
INSERT INTO `bage_admin_logger` VALUES (159, 0, 'login', '/index.php?r=admini/public/login', '登录失败，密码不正确:admin，使用密码：tanjian421302+', '106.120.139.2', 1415263908);
INSERT INTO `bage_admin_logger` VALUES (154, 1, 'login', '/index.php?r=admini/public/login', '用户登录成功:admin', '106.120.139.2', 1414983758);
INSERT INTO `bage_admin_logger` VALUES (155, 1, 'create', '/index.php?r=admini/post/create', '录入内容,ID:26', '106.120.139.2', 1414985672);
INSERT INTO `bage_admin_logger` VALUES (156, 1, 'update', '/index.php?r=admini/post/update&id=26', '编辑内容,ID:26', '106.120.139.2', 1414987030);
INSERT INTO `bage_admin_logger` VALUES (157, 0, 'login', '/index.php?r=admini/public/login', '登录失败，密码不正确:admin，使用密码：tanjian421302', '106.120.139.2', 1415263882);
INSERT INTO `bage_admin_logger` VALUES (158, 0, 'login', '/index.php?r=admini/public/login', '登录失败，密码不正确:admin，使用密码：tanjian421302+', '106.120.139.2', 1415263908);
INSERT INTO `bage_admin_logger` VALUES (208, 1, 'login', '/index.php?r=admini/public/login', '用户登录成功:admin', '106.120.139.2', 1420680629);
INSERT INTO `bage_admin_logger` VALUES (207, 1, 'login', '/index.php?r=admini/public/login', '用户登录成功:admin', '106.120.139.2', 1420680616);
INSERT INTO `bage_admin_logger` VALUES (206, 1, 'login', '/index.php?r=admini/public/login', '用户登录成功:admin', '106.120.139.2', 1420680616);
INSERT INTO `bage_admin_logger` VALUES (205, 0, 'login', '/index.php?r=admini/public/login', '登录失败，密码不正确:admin，使用密码：tanjian421970', '106.120.139.2', 1420680608);
INSERT INTO `bage_admin_logger` VALUES (204, 1, 'update', '/index.php?r=admini/config/index', '更新系统配置，模块：index', '124.207.139.145', 1418917812);
INSERT INTO `bage_admin_logger` VALUES (203, 1, 'update', '/index.php?r=admini/config/seo', '更新系统配置，模块：seo', '124.207.139.145', 1418917788);
INSERT INTO `bage_admin_logger` VALUES (202, 1, 'update', '/index.php?r=admini/config/index', '更新系统配置，模块：index', '124.207.139.145', 1418917612);
INSERT INTO `bage_admin_logger` VALUES (201, 1, 'update', '/index.php?r=admini/config/seo', '更新系统配置，模块：seo', '124.207.139.145', 1418917586);
INSERT INTO `bage_admin_logger` VALUES (200, 1, 'create', '/index.php?r=admini/catalog/create', '录入全局分类,ID:名称：CodeLib', '124.207.139.145', 1418917236);
INSERT INTO `bage_admin_logger` VALUES (199, 1, 'update', '/index.php?r=admini/config/seo', '更新系统配置，模块：seo', '124.207.139.145', 1418917123);
INSERT INTO `bage_admin_logger` VALUES (198, 1, 'login', '/index.php?r=admini/public/login', '用户登录成功:admin', '124.207.139.145', 1418916747);
INSERT INTO `bage_admin_logger` VALUES (197, 1, 'update', '/index.php?r=admini/post/update&id=29', '编辑内容,ID:29', '106.120.139.2', 1418639425);
INSERT INTO `bage_admin_logger` VALUES (196, 1, 'update', '/index.php?r=admini/post/update&id=29', '编辑内容,ID:29', '106.120.139.2', 1418639128);
INSERT INTO `bage_admin_logger` VALUES (195, 1, 'update', '/index.php?r=admini/post/update&id=29', '编辑内容,ID:29', '106.120.139.2', 1418638954);
INSERT INTO `bage_admin_logger` VALUES (194, 1, 'update', '/index.php?r=admini/post/update&id=29', '编辑内容,ID:29', '106.120.139.2', 1418638922);
INSERT INTO `bage_admin_logger` VALUES (193, 1, 'login', '/index.php?r=admini/public/login', '用户登录成功:admin', '106.120.139.2', 1418638812);
INSERT INTO `bage_admin_logger` VALUES (192, 1, 'update', '/index.php?r=admini/post/update&id=29', '编辑内容,ID:29', '106.120.139.2', 1418638415);
INSERT INTO `bage_admin_logger` VALUES (191, 1, 'update', '/index.php?r=admini/post/update&id=29', '编辑内容,ID:29', '106.120.139.2', 1418638373);
INSERT INTO `bage_admin_logger` VALUES (190, 1, 'login', '/index.php?r=admini/public/login', '用户登录成功:admin', '106.120.139.2', 1418638007);
INSERT INTO `bage_admin_logger` VALUES (189, 1, 'update', '/index.php?r=admini/post/update&id=29', '编辑内容,ID:29', '106.120.139.2', 1418637236);
INSERT INTO `bage_admin_logger` VALUES (188, 1, 'update', '/index.php?r=admini/post/update&id=29', '编辑内容,ID:29', '106.120.139.2', 1418637180);
INSERT INTO `bage_admin_logger` VALUES (187, 1, 'update', '/index.php?r=admini/post/update&id=29', '编辑内容,ID:29', '106.120.139.2', 1418637117);
INSERT INTO `bage_admin_logger` VALUES (186, 1, 'create', '/index.php?r=admini/post/create', '录入内容,ID:29', '106.120.139.2', 1418636908);
INSERT INTO `bage_admin_logger` VALUES (185, 1, 'login', '/index.php?r=admini/public/login', '用户登录成功:admin', '106.120.139.2', 1418633845);
INSERT INTO `bage_admin_logger` VALUES (184, 1, 'login', '/index.php?r=admini/public/login', '用户登录成功:admin', '60.194.194.8', 1418133839);
INSERT INTO `bage_admin_logger` VALUES (183, 1, 'login', '/index.php?r=admini/public/login', '用户登录成功:admin', '114.111.167.197', 1416644374);
INSERT INTO `bage_admin_logger` VALUES (182, 1, 'update', '/index.php?r=admini/post/update&id=28', '编辑内容,ID:28', '106.120.139.2', 1416558157);
INSERT INTO `bage_admin_logger` VALUES (181, 1, 'create', '/index.php?r=admini/post/create', '录入内容,ID:28', '106.120.139.2', 1416558076);
INSERT INTO `bage_admin_logger` VALUES (180, 1, 'login', '/index.php?r=admini/public/login', '用户登录成功:admin', '106.120.139.2', 1416557938);
INSERT INTO `bage_admin_logger` VALUES (179, 1, 'login', '/index.php?r=admini/public/login', '用户登录成功:admin', '106.120.139.2', 1416557937);
INSERT INTO `bage_admin_logger` VALUES (113, 1, 'login', '/index.php?r=admini/public/login', '用户登录成功:admin', '123.123.222.229', 1414220651);
INSERT INTO `bage_admin_logger` VALUES (112, 1, 'delete', '/index.php?r=admini/logger/batch', '删除管理员操作日志', '106.120.139.2', 1414139686);
INSERT INTO `bage_admin_logger` VALUES (209, 0, 'login', '/index.php?r=admini/public/login', '登录失败，密码不正确:admin，使用密码：admin', '106.120.139.2', 1420706812);
INSERT INTO `bage_admin_logger` VALUES (210, 1, 'login', '/index.php?r=admini/public/login', '用户登录成功:admin', '106.120.139.2', 1420706848);
INSERT INTO `bage_admin_logger` VALUES (211, 1, 'login', '/index.php?r=admini/public/login', '用户登录成功:admin', '60.194.194.4', 1420724618);
INSERT INTO `bage_admin_logger` VALUES (212, 1, 'create', '/index.php?r=admini/post/create', '录入内容,ID:30', '60.194.194.4', 1420724843);
INSERT INTO `bage_admin_logger` VALUES (213, 1, 'login', '/index.php?r=admini/public/login', '用户登录成功:admin', '60.194.194.4', 1420735899);
INSERT INTO `bage_admin_logger` VALUES (214, 1, 'create', '/index.php?r=admini/post/create', '录入内容,ID:31', '60.194.194.4', 1420736532);
INSERT INTO `bage_admin_logger` VALUES (215, 1, 'update', '/index.php?r=admini/post/update&id=31', '编辑内容,ID:31', '60.194.194.4', 1420736717);
INSERT INTO `bage_admin_logger` VALUES (216, 1, 'login', '/index.php?r=admini/public/login', '用户登录成功:admin', '106.39.255.195', 1420814992);
INSERT INTO `bage_admin_logger` VALUES (217, 1, 'create', '/index.php?r=admini/post/create', '录入内容,ID:32', '106.39.255.195', 1420816474);
INSERT INTO `bage_admin_logger` VALUES (218, 1, 'login', '/index.php?r=admini/public/login', '用户登录成功:admin', '114.111.167.178', 1420902096);
INSERT INTO `bage_admin_logger` VALUES (219, 1, 'update', '/index.php?r=admini/post/specialCreate', '专题录入：post,ID:', '114.111.167.178', 1420902403);
INSERT INTO `bage_admin_logger` VALUES (220, 1, 'create', '/index.php?r=admini/post/create', '录入内容,ID:33', '114.111.167.178', 1420906448);
INSERT INTO `bage_admin_logger` VALUES (221, 1, 'update', '/index.php?r=admini/post/update&id=33', '编辑内容,ID:33', '114.111.167.178', 1420906530);
INSERT INTO `bage_admin_logger` VALUES (222, 1, 'login', '/index.php?r=admini/public/login', '用户登录成功:admin', '106.120.139.2', 1421056877);
INSERT INTO `bage_admin_logger` VALUES (223, 1, 'login', '/index.php?r=admini/public/login', '用户登录成功:admin', '114.111.167.186', 1421161044);
INSERT INTO `bage_admin_logger` VALUES (224, 1, 'update', '/index.php?r=admini/post/update&id=33', '编辑内容,ID:33', '114.111.167.186', 1421161105);
INSERT INTO `bage_admin_logger` VALUES (225, 1, 'login', '/index.php?r=admini/public/login', '用户登录成功:admin', '106.39.255.204', 1421244398);
INSERT INTO `bage_admin_logger` VALUES (226, 1, 'login', '/index.php?r=admini/public/login', '用户登录成功:admin', '106.39.255.204', 1421246055);
INSERT INTO `bage_admin_logger` VALUES (227, 1, 'login', '/index.php?r=admini/public/login', '用户登录成功:admin', '60.194.194.2', 1421497481);
INSERT INTO `bage_admin_logger` VALUES (228, 1, 'login', '/index.php?r=admini/public/login', '用户登录成功:admin', '60.194.194.3', 1423574441);
INSERT INTO `bage_admin_logger` VALUES (229, 1, 'update', '/index.php?r=admini/config/upload', '更新系统配置，模块：upload', '60.194.194.3', 1423574630);
INSERT INTO `bage_admin_logger` VALUES (230, 1, 'delete', '/index.php?r=admini/other/batch&command=attachDelete&id=9', '删除附件，ID:9', '60.194.194.3', 1423574703);
INSERT INTO `bage_admin_logger` VALUES (231, 1, 'delete', '/index.php?r=admini/other/batch', '删除附件，ID:14,13,12,11,10,8,7,5,4,3,2,1', '60.194.194.3', 1423574739);
INSERT INTO `bage_admin_logger` VALUES (232, 1, 'delete', '/index.php?r=admini/attr/batch&command=delete&id=1', '属性删除，ID:1', '60.194.194.3', 1423574749);
INSERT INTO `bage_admin_logger` VALUES (233, 1, 'delete', '/index.php?r=admini/attr/batch&command=delete&id=6', '属性删除，ID:6', '60.194.194.3', 1423574752);
INSERT INTO `bage_admin_logger` VALUES (234, 1, 'login', '/index.php?r=admini/public/login', '用户登录成功:admin', '60.194.194.3', 1423574999);
INSERT INTO `bage_admin_logger` VALUES (235, 1, 'login', '/index.php?r=admini/public/login', '用户登录成功:admin', '60.194.194.3', 1423574999);
INSERT INTO `bage_admin_logger` VALUES (236, 1, 'update', '/index.php?r=admini/post/update&id=33', '编辑内容,ID:33', '60.194.194.3', 1423575031);
INSERT INTO `bage_admin_logger` VALUES (237, 1, 'update', '/index.php?r=admini/post/update&id=32', '编辑内容,ID:32', '60.194.194.3', 1423575070);
INSERT INTO `bage_admin_logger` VALUES (238, 1, 'login', '/index.php?r=admini/public/login', '用户登录成功:admin', '106.120.139.2', 1423648289);
INSERT INTO `bage_admin_logger` VALUES (239, 1, 'login', '/index.php?r=admini/public/login', '用户登录成功:admin', '106.39.255.206', 1423668621);
INSERT INTO `bage_admin_logger` VALUES (240, 1, 'login', '/index.php?r=admini/public/login', '用户登录成功:admin', '106.39.255.206', 1423668621);
INSERT INTO `bage_admin_logger` VALUES (241, 1, 'create', '/index.php?r=admini/post/create', '录入内容,ID:34', '106.39.255.206', 1423669298);
INSERT INTO `bage_admin_logger` VALUES (242, 1, 'login', '/index.php?r=admini/public/login', '用户登录成功:admin', '106.120.139.2', 1425022479);
INSERT INTO `bage_admin_logger` VALUES (243, 1, 'login', '/index.php?r=admini/public/login', '用户登录成功:admin', '106.120.139.2', 1425022480);
INSERT INTO `bage_admin_logger` VALUES (244, 1, 'create', '/index.php?r=admini/post/create', '录入内容,ID:35', '106.120.139.2', 1425022977);
INSERT INTO `bage_admin_logger` VALUES (245, 1, 'login', '/index.php?r=admini/public/login', '用户登录成功:admin', '114.111.167.184', 1425301049);
INSERT INTO `bage_admin_logger` VALUES (246, 1, 'login', '/index.php?r=admini/public/login', '用户登录成功:admin', '114.111.167.184', 1425301049);
INSERT INTO `bage_admin_logger` VALUES (247, 1, 'login', '/index.php?r=admini/public/login', '用户登录成功:admin', '60.194.194.7', 1426002282);
INSERT INTO `bage_admin_logger` VALUES (248, 1, 'login', '/index.php?r=admini/public/login', '用户登录成功:admin', '60.194.194.7', 1426002282);
INSERT INTO `bage_admin_logger` VALUES (249, 1, 'create', '/index.php?r=admini/post/create', '录入内容,ID:36', '60.194.194.7', 1426002360);
INSERT INTO `bage_admin_logger` VALUES (250, 1, 'login', '/index.php?r=admini/public/login', '用户登录成功:admin', '106.120.139.2', 1426733542);
INSERT INTO `bage_admin_logger` VALUES (251, 1, 'create', '/index.php?r=admini/post/create', '录入内容,ID:37', '106.120.139.2', 1426733675);
INSERT INTO `bage_admin_logger` VALUES (252, 1, 'create', '/index.php?r=admini/post/create', '录入内容,ID:38', '106.120.139.2', 1426733675);
INSERT INTO `bage_admin_logger` VALUES (253, 1, 'create', '/index.php?r=admini/post/create', '录入内容,ID:39', '106.120.139.2', 1426733675);
INSERT INTO `bage_admin_logger` VALUES (254, 1, 'create', '/index.php?r=admini/post/create', '录入内容,ID:40', '106.120.139.2', 1426733675);
INSERT INTO `bage_admin_logger` VALUES (255, 1, 'delete', '/index.php?r=admini/post/batch&command=delete&id=40', '删除内容，ID:40', '106.120.139.2', 1426733683);
INSERT INTO `bage_admin_logger` VALUES (256, 1, 'delete', '/index.php?r=admini/post/batch&command=delete&id=39', '删除内容，ID:39', '106.120.139.2', 1426733691);
INSERT INTO `bage_admin_logger` VALUES (257, 1, 'delete', '/index.php?r=admini/post/batch&command=delete&id=38', '删除内容，ID:38', '106.120.139.2', 1426733731);
INSERT INTO `bage_admin_logger` VALUES (258, 1, 'login', '/index.php?r=admini/public/login', '用户登录成功:admin', '114.111.167.182', 1427293458);
INSERT INTO `bage_admin_logger` VALUES (259, 1, 'login', '/index.php?r=admini/public/login', '用户登录成功:admin', '114.111.167.182', 1427293458);
INSERT INTO `bage_admin_logger` VALUES (260, 1, 'create', '/index.php?r=admini/post/create', '录入内容,ID:41', '114.111.167.182', 1427293826);
INSERT INTO `bage_admin_logger` VALUES (261, 1, 'delete', '/index.php?r=admini/post/batch&command=delete&id=37', '删除内容，ID:37', '114.111.167.182', 1427293899);
INSERT INTO `bage_admin_logger` VALUES (262, 1, 'delete', '/index.php?r=admini/catalog/batch&command=delete&id=13', '删除全局分类，ID:13', '114.111.167.182', 1427294087);
INSERT INTO `bage_admin_logger` VALUES (263, 1, 'login', '/index.php?r=admini/public/login', '用户登录成功:admin', '106.39.255.200', 1427374500);
INSERT INTO `bage_admin_logger` VALUES (264, 1, 'login', '/index.php?r=admini/public/login', '用户登录成功:admin', '106.39.255.200', 1427374500);
INSERT INTO `bage_admin_logger` VALUES (265, 1, 'delete', '/index.php?r=admini/post/batch&command=specialDelete&id=4', '删除内容，ID:4', '106.39.255.200', 1427374628);
INSERT INTO `bage_admin_logger` VALUES (266, 1, 'create', '/index.php?r=admini/post/create', '录入内容,ID:42', '106.39.255.200', 1427374744);
INSERT INTO `bage_admin_logger` VALUES (267, 1, 'update', '/index.php?r=admini/post/update&id=42', '编辑内容,ID:42', '106.39.255.200', 1427375917);
INSERT INTO `bage_admin_logger` VALUES (268, 1, 'login', '/index.php?r=admini/public/login', '用户登录成功:admin', '106.39.255.200', 1427387761);
INSERT INTO `bage_admin_logger` VALUES (269, 1, 'login', '/index.php?r=admini/public/login', '用户登录成功:admin', '106.39.255.200', 1427387762);
INSERT INTO `bage_admin_logger` VALUES (270, 1, 'update', '/index.php?r=admini/post/update&id=42', '编辑内容,ID:42', '106.39.255.200', 1427388007);
INSERT INTO `bage_admin_logger` VALUES (271, 1, 'update', '/index.php?r=admini/config/upload', '更新系统配置，模块：upload', '106.39.255.200', 1427388057);
INSERT INTO `bage_admin_logger` VALUES (272, 1, 'update', '/index.php?r=admini/post/update&id=42', '编辑内容,ID:42', '106.39.255.200', 1427388085);
INSERT INTO `bage_admin_logger` VALUES (273, 0, 'login', '/index.php?r=admini/public/login', '登录失败，密码不正确:admin，使用密码：tanjian421970', '60.194.194.3', 1427552996);
INSERT INTO `bage_admin_logger` VALUES (274, 0, 'login', '/index.php?r=admini/public/login', '登录失败，密码不正确:admin，使用密码：tanjian421970', '60.194.194.3', 1427553009);
INSERT INTO `bage_admin_logger` VALUES (275, 1, 'login', '/index.php?r=admini/public/login', '用户登录成功:admin', '60.194.194.3', 1427553027);
INSERT INTO `bage_admin_logger` VALUES (276, 1, 'create', '/index.php?r=admini/post/create', '录入内容,ID:43', '60.194.194.3', 1427553206);
INSERT INTO `bage_admin_logger` VALUES (277, 1, 'login', '/index.php?r=admini/public/login', '用户登录成功:admin', '106.120.139.2', 1427767980);
INSERT INTO `bage_admin_logger` VALUES (278, 1, 'update', '/index.php?r=admini/post/update&id=43', '编辑内容,ID:43', '106.120.139.2', 1427770673);
INSERT INTO `bage_admin_logger` VALUES (279, 0, 'login', '/index.php?r=admini/public/login', '登录失败，密码不正确:admin，使用密码：tanjian421970', '124.205.254.64', 1427802160);
INSERT INTO `bage_admin_logger` VALUES (280, 0, 'login', '/index.php?r=admini/public/login', '登录失败，密码不正确:admin，使用密码：tanjian421970', '124.205.254.64', 1427802160);
INSERT INTO `bage_admin_logger` VALUES (281, 0, 'login', '/index.php?r=admini/public/login', '登录失败，密码不正确:admin，使用密码：tanjian421970', '124.205.254.64', 1427802165);
INSERT INTO `bage_admin_logger` VALUES (282, 0, 'login', '/index.php?r=admini/public/login', '登录失败，密码不正确:admin，使用密码：tanjian421970', '124.205.254.64', 1427802175);
INSERT INTO `bage_admin_logger` VALUES (283, 1, 'login', '/index.php?r=admini/public/login', '用户登录成功:admin', '124.205.254.64', 1427802182);
INSERT INTO `bage_admin_logger` VALUES (284, 1, 'login', '/index.php?r=admini/public/login', '用户登录成功:admin', '124.205.254.64', 1427802182);
INSERT INTO `bage_admin_logger` VALUES (285, 1, 'update', '/index.php?r=admini/post/update&id=43', '编辑内容,ID:43', '124.205.254.64', 1427802273);
INSERT INTO `bage_admin_logger` VALUES (286, 1, 'login', '/index.php?r=admini/public/login', '用户登录成功:admin', '106.120.139.2', 1427943431);
INSERT INTO `bage_admin_logger` VALUES (287, 1, 'create', '/index.php?r=admini/post/create', '录入内容,ID:44', '106.120.139.2', 1427943560);
INSERT INTO `bage_admin_logger` VALUES (288, 1, 'create', '/index.php?r=admini/post/create', '录入内容,ID:45', '106.120.139.2', 1427943849);
INSERT INTO `bage_admin_logger` VALUES (289, 0, 'login', '/index.php?r=admini/public/login', '登录失败，密码不正确:admin，使用密码：tanjian4213970', '114.111.167.178', 1428082385);
INSERT INTO `bage_admin_logger` VALUES (290, 1, 'login', '/index.php?r=admini/public/login', '用户登录成功:admin', '114.111.167.178', 1428082401);
INSERT INTO `bage_admin_logger` VALUES (291, 1, 'create', '/index.php?r=admini/post/create', '录入内容,ID:46', '114.111.167.178', 1428082575);
INSERT INTO `bage_admin_logger` VALUES (292, 1, 'update', '/index.php?r=admini/post/update&id=46', '编辑内容,ID:46', '114.111.167.178', 1428082665);
INSERT INTO `bage_admin_logger` VALUES (293, 1, 'login', '/index.php?r=admini/public/login', '用户登录成功:admin', '106.39.255.192', 1428315169);
INSERT INTO `bage_admin_logger` VALUES (294, 1, 'login', '/index.php?r=admini/public/login', '用户登录成功:admin', '106.39.255.192', 1428315170);
INSERT INTO `bage_admin_logger` VALUES (295, 1, 'update', '/index.php?r=admini/post/update&id=46', '编辑内容,ID:46', '106.39.255.192', 1428315496);
INSERT INTO `bage_admin_logger` VALUES (296, 1, 'create', '/index.php?r=admini/post/create', '录入内容,ID:47', '106.39.255.192', 1428334159);
INSERT INTO `bage_admin_logger` VALUES (297, 1, 'create', '/index.php?r=admini/post/create', '录入内容,ID:48', '106.39.255.192', 1428334393);
INSERT INTO `bage_admin_logger` VALUES (298, 1, 'login', '/index.php?r=admini/public/login', '用户登录成功:admin', '60.194.194.8', 1428421815);
INSERT INTO `bage_admin_logger` VALUES (299, 1, 'login', '/index.php?r=admini/public/login', '用户登录成功:admin', '60.194.194.8', 1428421815);
INSERT INTO `bage_admin_logger` VALUES (300, 1, 'update', '/index.php?r=admini/post/update&id=44', '编辑内容,ID:44', '60.194.194.8', 1428422007);
INSERT INTO `bage_admin_logger` VALUES (301, 1, 'update', '/index.php?r=admini/post/update&id=44', '编辑内容,ID:44', '60.194.194.8', 1428422101);
INSERT INTO `bage_admin_logger` VALUES (302, 1, 'update', '/index.php?r=admini/post/update&id=44', '编辑内容,ID:44', '60.194.194.8', 1428422346);
INSERT INTO `bage_admin_logger` VALUES (303, 1, 'update', '/index.php?r=admini/post/update&id=44', '编辑内容,ID:44', '60.194.194.8', 1428422426);
INSERT INTO `bage_admin_logger` VALUES (304, 1, 'update', '/index.php?r=admini/post/update&id=44', '编辑内容,ID:44', '60.194.194.8', 1428422552);
INSERT INTO `bage_admin_logger` VALUES (305, 1, 'update', '/index.php?r=admini/post/update&id=44', '编辑内容,ID:44', '60.194.194.8', 1428422601);
INSERT INTO `bage_admin_logger` VALUES (306, 0, 'login', '/index.php?r=admini/public/login', '登录失败，密码不正确:admin，使用密码：tanjian421970', '106.39.255.197', 1428817360);
INSERT INTO `bage_admin_logger` VALUES (307, 1, 'login', '/index.php?r=admini/public/login', '用户登录成功:admin', '106.39.255.197', 1428817374);
INSERT INTO `bage_admin_logger` VALUES (308, 1, 'login', '/index.php?r=admini/public/login', '用户登录成功:admin', '106.39.255.197', 1428817374);
INSERT INTO `bage_admin_logger` VALUES (309, 1, 'create', '/index.php?r=admini/post/create', '录入内容,ID:49', '106.39.255.197', 1428817517);
INSERT INTO `bage_admin_logger` VALUES (310, 1, 'login', '/index.php?r=admini/public/login', '用户登录成功:admin', '106.39.255.197', 1428820289);
INSERT INTO `bage_admin_logger` VALUES (311, 1, 'create', '/index.php?r=admini/post/create', '录入内容,ID:50', '106.39.255.197', 1428820405);
INSERT INTO `bage_admin_logger` VALUES (312, 1, 'create', '/index.php?r=admini/post/create', '录入内容,ID:51', '114.111.167.181', 1428831296);
INSERT INTO `bage_admin_logger` VALUES (313, 1, 'update', '/index.php?r=admini/post/update&id=51', '编辑内容,ID:51', '114.111.167.181', 1428831648);
INSERT INTO `bage_admin_logger` VALUES (314, 1, 'login', '/index.php?r=admini/public/login', '用户登录成功:admin', '114.111.167.178', 1429025391);
INSERT INTO `bage_admin_logger` VALUES (315, 1, 'create', '/index.php?r=admini/post/create', '录入内容,ID:52', '114.111.167.178', 1429025913);
INSERT INTO `bage_admin_logger` VALUES (316, 1, 'create', '/index.php?r=admini/post/create', '录入内容,ID:53', '114.111.167.178', 1429025913);
INSERT INTO `bage_admin_logger` VALUES (317, 1, 'login', '/index.php?r=admini/public/login', '用户登录成功:admin', '106.39.255.207', 1429107799);
INSERT INTO `bage_admin_logger` VALUES (318, 1, 'login', '/index.php?r=admini/public/login', '用户登录成功:admin', '106.39.255.207', 1429107800);
INSERT INTO `bage_admin_logger` VALUES (319, 1, 'update', '/index.php?r=admini/config/index', '更新系统配置，模块：index', '106.39.255.207', 1429107874);
INSERT INTO `bage_admin_logger` VALUES (320, 1, 'update', '/index.php?r=admini/config/index', '更新系统配置，模块：index', '106.39.255.207', 1429107906);
INSERT INTO `bage_admin_logger` VALUES (321, 1, 'delete', '/index.php?r=admini/post/batch&command=delete&id=53', '删除内容，ID:53', '106.39.255.207', 1429107917);
INSERT INTO `bage_admin_logger` VALUES (322, 1, 'create', '/index.php?r=admini/post/create', '录入内容,ID:54', '106.39.255.207', 1429108264);
INSERT INTO `bage_admin_logger` VALUES (323, 1, 'update', '/index.php?r=admini/post/update&id=54', '编辑内容,ID:54', '106.39.255.207', 1429108751);
INSERT INTO `bage_admin_logger` VALUES (324, 1, 'login', '/index.php?r=admini/public/login', '用户登录成功:admin', '106.39.255.201', 1429331257);
INSERT INTO `bage_admin_logger` VALUES (325, 1, 'update', '/index.php?r=admini/post/update&id=23', '编辑内容,ID:23', '106.39.255.201', 1429331329);
INSERT INTO `bage_admin_logger` VALUES (326, 1, 'update', '/index.php?r=admini/post/update&id=21', '编辑内容,ID:21', '106.39.255.201', 1429332284);
INSERT INTO `bage_admin_logger` VALUES (327, 1, 'login', '/index.php?r=admini/public/login', '用户登录成功:admin', '114.111.167.183', 1429448986);
INSERT INTO `bage_admin_logger` VALUES (328, 1, 'login', '/index.php?r=admini/public/login', '用户登录成功:admin', '114.111.167.183', 1429449008);
INSERT INTO `bage_admin_logger` VALUES (329, 1, 'login', '/index.php?r=admini/public/login', '用户登录成功:admin', '114.111.167.183', 1429449009);
INSERT INTO `bage_admin_logger` VALUES (330, 1, 'create', '/index.php?r=admini/post/create', '录入内容,ID:55', '114.111.167.183', 1429450971);
INSERT INTO `bage_admin_logger` VALUES (331, 1, 'update', '/index.php?r=admini/post/update&id=55', '编辑内容,ID:55', '114.111.167.183', 1429451061);
INSERT INTO `bage_admin_logger` VALUES (332, 1, 'update', '/index.php?r=admini/post/update&id=55', '编辑内容,ID:55', '114.111.167.183', 1429451253);
INSERT INTO `bage_admin_logger` VALUES (333, 1, 'update', '/index.php?r=admini/post/update&id=55', '编辑内容,ID:55', '114.111.167.183', 1429451375);
INSERT INTO `bage_admin_logger` VALUES (334, 1, 'login', '/index.php?r=admini/public/login', '用户登录成功:admin', '106.39.255.202', 1429533339);
INSERT INTO `bage_admin_logger` VALUES (335, 1, 'create', '/index.php?r=admini/catalog/create', '录入全局分类,ID:名称：旅行', '106.39.255.202', 1429535495);
INSERT INTO `bage_admin_logger` VALUES (336, 1, 'create', '/index.php?r=admini/catalog/create', '录入全局分类,ID:名称：linux相关', '106.39.255.202', 1429535558);
INSERT INTO `bage_admin_logger` VALUES (337, 1, 'update', '/index.php?r=admini/catalog/update&id=11', '编辑全局分类,ID:11,名称：PHP', '106.39.255.202', 1429535652);
INSERT INTO `bage_admin_logger` VALUES (338, 1, 'update', '/index.php?r=admini/catalog/update&id=11', '编辑全局分类,ID:11,名称：PHP', '106.39.255.202', 1429535659);
INSERT INTO `bage_admin_logger` VALUES (339, 1, 'update', '/index.php?r=admini/catalog/update&id=15', '编辑全局分类,ID:15,名称：linux相关', '106.39.255.202', 1429535679);
INSERT INTO `bage_admin_logger` VALUES (340, 1, 'update', '/index.php?r=admini/catalog/update&id=14', '编辑全局分类,ID:14,名称：旅行', '106.39.255.202', 1429535691);
INSERT INTO `bage_admin_logger` VALUES (341, 1, 'update', '/index.php?r=admini/catalog/update&id=15', '编辑全局分类,ID:15,名称：linux', '106.39.255.202', 1429536011);
INSERT INTO `bage_admin_logger` VALUES (342, 1, 'update', '/index.php?r=admini/post/update&id=55', '编辑内容,ID:55', '106.39.255.202', 1429536079);
INSERT INTO `bage_admin_logger` VALUES (343, 1, 'create', '/index.php?r=admini/catalog/create', '录入全局分类,ID:名称：数据库', '106.39.255.202', 1429536154);
INSERT INTO `bage_admin_logger` VALUES (344, 1, 'update', '/index.php?r=admini/post/update&id=52', '编辑内容,ID:52', '106.39.255.202', 1429536196);
INSERT INTO `bage_admin_logger` VALUES (345, 1, 'update', '/index.php?r=admini/post/update&id=51', '编辑内容,ID:51', '106.39.255.202', 1429536243);
INSERT INTO `bage_admin_logger` VALUES (346, 1, 'login', '/index.php?r=admini/public/login', '用户登录成功:admin', '106.39.255.202', 1429540797);
INSERT INTO `bage_admin_logger` VALUES (347, 1, 'login', '/index.php?r=admini/public/login', '用户登录成功:admin', '106.39.255.202', 1429540835);
INSERT INTO `bage_admin_logger` VALUES (348, 1, 'login', '/index.php?r=admini/public/login', '用户登录成功:admin', '106.39.255.202', 1429540836);
INSERT INTO `bage_admin_logger` VALUES (349, 1, 'update', '/index.php?r=admini/post/update&id=52', '编辑内容,ID:52', '106.39.255.202', 1429541995);
INSERT INTO `bage_admin_logger` VALUES (350, 1, 'create', '/index.php?r=admini/post/create', '录入内容,ID:56', '106.39.255.202', 1429542273);
INSERT INTO `bage_admin_logger` VALUES (351, 1, 'login', '/index.php?r=admini/public/login', '用户登录成功:admin', '114.111.167.181', 1429717006);
INSERT INTO `bage_admin_logger` VALUES (352, 1, 'create', '/index.php?r=admini/post/create', '录入内容,ID:57', '114.111.167.181', 1429717049);
INSERT INTO `bage_admin_logger` VALUES (353, 1, 'update', '/index.php?r=admini/post/update&id=57', '编辑内容,ID:57', '114.111.167.181', 1429717122);
INSERT INTO `bage_admin_logger` VALUES (354, 1, 'login', '/index.php?r=admini/public/login', '用户登录成功:admin', '114.111.167.191', 1429955863);
INSERT INTO `bage_admin_logger` VALUES (355, 1, 'login', '/index.php?r=admini/public/login', '用户登录成功:admin', '114.111.167.191', 1429955863);
INSERT INTO `bage_admin_logger` VALUES (356, 1, 'create', '/index.php?r=admini/post/create', '录入内容,ID:58', '114.111.167.191', 1429956376);
INSERT INTO `bage_admin_logger` VALUES (357, 1, 'update', '/index.php?r=admini/post/update&id=58', '编辑内容,ID:58', '114.111.167.191', 1429956460);
INSERT INTO `bage_admin_logger` VALUES (358, 1, 'login', '/index.php?r=admini/public/login', '用户登录成功:admin', '114.111.167.189', 1430409362);
INSERT INTO `bage_admin_logger` VALUES (359, 0, 'login', '/index.php?r=admini/public/login', '登录失败，密码不正确:admin，使用密码：tanjian421`970+', '114.111.167.189', 1430409365);
INSERT INTO `bage_admin_logger` VALUES (360, 1, 'login', '/index.php?r=admini/public/login', '用户登录成功:admin', '114.111.167.189', 1430409368);
INSERT INTO `bage_admin_logger` VALUES (361, 1, 'login', '/index.php?r=admini/public/login', '用户登录成功:admin', '114.111.167.189', 1430409405);
INSERT INTO `bage_admin_logger` VALUES (362, 1, 'login', '/index.php?r=admini/public/login', '用户登录成功:admin', '114.111.167.189', 1430409406);
INSERT INTO `bage_admin_logger` VALUES (363, 1, 'create', '/index.php?r=admini/post/create', '录入内容,ID:59', '114.111.167.189', 1430410261);
INSERT INTO `bage_admin_logger` VALUES (364, 1, 'login', '/index.php?r=admini/public/login', '用户登录成功:admin', '106.39.255.198', 1430925768);
INSERT INTO `bage_admin_logger` VALUES (365, 1, 'create', '/index.php?r=admini/post/create', '录入内容,ID:60', '106.39.255.198', 1430925917);
INSERT INTO `bage_admin_logger` VALUES (366, 1, 'create', '/index.php?r=admini/post/create', '录入内容,ID:61', '106.39.255.198', 1430926035);
INSERT INTO `bage_admin_logger` VALUES (367, 1, 'login', '/index.php?r=admini/public/login', '用户登录成功:admin', '106.39.102.136', 1430997281);
INSERT INTO `bage_admin_logger` VALUES (368, 1, 'create', '/index.php?r=admini/post/create', '录入内容,ID:62', '106.39.102.136', 1430997297);
INSERT INTO `bage_admin_logger` VALUES (369, 1, 'login', '/index.php?r=admini/public/login', '用户登录成功:admin', '218.240.149.50', 1431428325);
INSERT INTO `bage_admin_logger` VALUES (370, 1, 'create', '/index.php?r=admini/post/create', '录入内容,ID:63', '218.240.149.50', 1431428380);
INSERT INTO `bage_admin_logger` VALUES (371, 1, 'login', '/index.php?r=admini/public/login', '用户登录成功:admin', '123.125.212.105', 1431445429);
INSERT INTO `bage_admin_logger` VALUES (372, 1, 'create', '/index.php?r=admini/post/create', '录入内容,ID:64', '123.125.212.105', 1431445550);
INSERT INTO `bage_admin_logger` VALUES (373, 1, 'update', '/index.php?r=admini/post/update&id=64', '编辑内容,ID:64', '123.125.212.105', 1431445631);
INSERT INTO `bage_admin_logger` VALUES (374, 1, 'update', '/index.php?r=admini/post/update&id=64', '编辑内容,ID:64', '123.125.212.105', 1431445664);
INSERT INTO `bage_admin_logger` VALUES (375, 1, 'login', '/index.php?r=admini/public/login', '用户登录成功:admin', '218.240.149.50', 1431483094);
INSERT INTO `bage_admin_logger` VALUES (376, 1, 'update', '/index.php?r=admini/config/index', '更新系统配置，模块：index', '218.240.149.50', 1431483116);
INSERT INTO `bage_admin_logger` VALUES (377, 1, 'create', '/index.php?r=admini/post/create', '录入内容,ID:65', '218.240.149.50', 1431483158);
INSERT INTO `bage_admin_logger` VALUES (378, 1, 'login', '/index.php?r=admini/public/login', '用户登录成功:admin', '114.111.167.191', 1431645071);
INSERT INTO `bage_admin_logger` VALUES (379, 1, 'login', '/index.php?r=admini/public/login', '用户登录成功:admin', '114.111.167.191', 1431645071);
INSERT INTO `bage_admin_logger` VALUES (380, 1, 'create', '/index.php?r=admini/post/create', '录入内容,ID:66', '114.111.167.191', 1431645164);
INSERT INTO `bage_admin_logger` VALUES (381, 1, 'update', '/index.php?r=admini/post/update&id=66', '编辑内容,ID:66', '114.111.167.191', 1431645247);
INSERT INTO `bage_admin_logger` VALUES (382, 1, 'login', '/index.php?r=admini/public/login', '用户登录成功:admin', '124.205.254.66', 1431871553);
INSERT INTO `bage_admin_logger` VALUES (383, 1, 'update', '/index.php?r=admini/post/update&id=54', '编辑内容,ID:54', '124.205.254.66', 1431871842);
INSERT INTO `bage_admin_logger` VALUES (384, 1, 'login', '/index.php?r=admini/public/login', '用户登录成功:admin', '114.111.167.181', 1432048100);
INSERT INTO `bage_admin_logger` VALUES (385, 1, 'login', '/index.php?r=admini/public/login', '用户登录成功:admin', '114.111.167.181', 1432048100);
INSERT INTO `bage_admin_logger` VALUES (386, 1, 'login', '/index.php?r=admini/public/login', '用户登录成功:admin', '114.111.167.181', 1432048220);
INSERT INTO `bage_admin_logger` VALUES (387, 1, 'create', '/index.php?r=admini/post/create', '录入内容,ID:67', '114.111.167.181', 1432048300);
INSERT INTO `bage_admin_logger` VALUES (388, 1, 'update', '/index.php?r=admini/post/update&id=67', '编辑内容,ID:67', '114.111.167.181', 1432048381);
INSERT INTO `bage_admin_logger` VALUES (389, 1, 'login', '/index.php?r=admini/public/login', '用户登录成功:admin', '114.111.167.181', 1432097307);
INSERT INTO `bage_admin_logger` VALUES (390, 1, 'update', '/index.php?r=admini/post/update&id=67', '编辑内容,ID:67', '114.111.167.181', 1432097331);
INSERT INTO `bage_admin_logger` VALUES (391, 1, 'delete', '/index.php?r=admini/post/batch&command=delete&id=63', '删除内容，ID:63', '114.111.167.181', 1432097449);
INSERT INTO `bage_admin_logger` VALUES (392, 1, 'login', '/index.php?r=admini/public/login', '用户登录成功:admin', '124.205.254.67', 1432561988);
INSERT INTO `bage_admin_logger` VALUES (393, 1, 'create', '/index.php?r=admini/post/create', '录入内容,ID:68', '124.205.254.67', 1432562400);
INSERT INTO `bage_admin_logger` VALUES (394, 1, 'update', '/index.php?r=admini/post/update&id=68', '编辑内容,ID:68', '124.205.254.67', 1432562454);
INSERT INTO `bage_admin_logger` VALUES (395, 1, 'login', '/index.php?r=admini/public/login', '用户登录成功:admin', '123.125.212.106', 1432632797);
INSERT INTO `bage_admin_logger` VALUES (396, 1, 'update', '/index.php?r=admini/post/update&id=68', '编辑内容,ID:68', '123.125.212.106', 1432632841);
INSERT INTO `bage_admin_logger` VALUES (397, 1, 'login', '/index.php?r=admini/public/login', '用户登录成功:admin', '219.142.118.233', 1432803713);
INSERT INTO `bage_admin_logger` VALUES (398, 1, 'update', '/index.php?r=admini/post/update&id=68', '编辑内容,ID:68', '219.142.118.233', 1432803785);
INSERT INTO `bage_admin_logger` VALUES (399, 1, 'login', '/index.php?r=admini/public/login', '用户登录成功:admin', '123.125.212.111', 1432999275);
INSERT INTO `bage_admin_logger` VALUES (400, 1, 'login', '/index.php?r=admini/public/login', '用户登录成功:admin', '123.125.212.111', 1432999275);
INSERT INTO `bage_admin_logger` VALUES (401, 1, 'update', '/index.php?r=admini/post/update&id=68', '编辑内容,ID:68', '123.125.212.111', 1432999384);
INSERT INTO `bage_admin_logger` VALUES (402, 1, 'create', '/index.php?r=admini/post/create', '录入内容,ID:69', '123.125.212.111', 1432999813);
INSERT INTO `bage_admin_logger` VALUES (403, 1, 'create', '/index.php?r=admini/post/create', '录入内容,ID:70', '123.125.212.111', 1432999929);
INSERT INTO `bage_admin_logger` VALUES (404, 1, 'login', '/index.php?r=admini/public/login', '用户登录成功:admin', '114.245.40.119', 1433683984);
INSERT INTO `bage_admin_logger` VALUES (405, 1, 'create', '/index.php?r=admini/post/create', '录入内容,ID:71', '114.245.40.119', 1433686522);
INSERT INTO `bage_admin_logger` VALUES (406, 1, 'update', '/index.php?r=admini/post/update&id=71', '编辑内容,ID:71', '114.245.40.119', 1433686666);
INSERT INTO `bage_admin_logger` VALUES (407, 1, 'login', '/index.php?r=admini/public/login', '用户登录成功:admin', '114.245.39.248', 1433807270);
INSERT INTO `bage_admin_logger` VALUES (408, 1, 'login', '/index.php?r=admini/public/login', '用户登录成功:admin', '114.245.39.248', 1433807271);
INSERT INTO `bage_admin_logger` VALUES (409, 1, 'create', '/index.php?r=admini/post/create', '录入内容,ID:72', '114.245.39.248', 1433807476);
INSERT INTO `bage_admin_logger` VALUES (410, 1, 'login', '/index.php?r=admini/public/login', '用户登录成功:admin', '123.118.219.159', 1434036589);
INSERT INTO `bage_admin_logger` VALUES (411, 1, 'update', '/index.php?r=admini/post/update&id=72', '编辑内容,ID:72', '123.118.219.159', 1434036953);
INSERT INTO `bage_admin_logger` VALUES (412, 1, 'login', '/index.php?r=admini/public/login', '用户登录成功:admin', '114.245.45.247', 1434196756);
INSERT INTO `bage_admin_logger` VALUES (413, 1, 'login', '/index.php?r=admini/public/login', '用户登录成功:admin', '114.245.45.247', 1434196757);
INSERT INTO `bage_admin_logger` VALUES (414, 1, 'create', '/index.php?r=admini/post/create', '录入内容,ID:73', '114.245.45.247', 1434196986);
INSERT INTO `bage_admin_logger` VALUES (415, 1, 'login', '/index.php?r=admini/public/login', '用户登录成功:admin', '219.142.118.233', 1434534274);
INSERT INTO `bage_admin_logger` VALUES (416, 1, 'login', '/index.php?r=admini/public/login', '用户登录成功:admin', '219.142.118.233', 1434534274);
INSERT INTO `bage_admin_logger` VALUES (417, 1, 'update', '/index.php?r=admini/post/update&id=73', '编辑内容,ID:73', '219.142.118.233', 1434534432);
INSERT INTO `bage_admin_logger` VALUES (418, 1, 'login', '/index.php?r=admini/public/login', '用户登录成功:admin', '114.249.241.178', 1435673027);
INSERT INTO `bage_admin_logger` VALUES (419, 1, 'login', '/index.php?r=admini/public/login', '用户登录成功:admin', '114.249.241.178', 1435673027);
INSERT INTO `bage_admin_logger` VALUES (420, 1, 'update', '/index.php?r=admini/config/index', '更新系统配置，模块：index', '114.249.241.178', 1435673043);
INSERT INTO `bage_admin_logger` VALUES (421, 1, 'update', '/index.php?r=admini/config/index', '更新系统配置，模块：index', '114.249.241.178', 1435673080);
INSERT INTO `bage_admin_logger` VALUES (422, 1, 'login', '/index.php?r=admini/public/login', '用户登录成功:admin', '114.249.241.178', 1435673548);
INSERT INTO `bage_admin_logger` VALUES (423, 1, 'login', '/index.php?r=admini/public/login', '用户登录成功:admin', '114.249.241.178', 1435675151);
INSERT INTO `bage_admin_logger` VALUES (424, 1, 'login', '/index.php?r=admini/public/login', '用户登录成功:admin', '114.249.241.178', 1435675181);
INSERT INTO `bage_admin_logger` VALUES (425, 1, 'login', '/index.php?r=admini/public/login', '用户登录成功:admin', '114.249.241.178', 1435675181);
INSERT INTO `bage_admin_logger` VALUES (426, 1, 'update', '/index.php?r=admini/config/index', '更新系统配置，模块：index', '114.249.241.178', 1435675192);
INSERT INTO `bage_admin_logger` VALUES (427, 1, 'login', '/index.php?r=admini/public/login', '用户登录成功:admin', '114.249.241.178', 1435676805);
INSERT INTO `bage_admin_logger` VALUES (428, 1, 'update', '/index.php?r=admini/config/index', '更新系统配置，模块：index', '114.249.241.178', 1435676843);
INSERT INTO `bage_admin_logger` VALUES (429, 1, 'login', '/index.php?r=admini/public/login', '用户登录成功:admin', '202.106.169.231', 1435850302);
INSERT INTO `bage_admin_logger` VALUES (430, 1, 'login', '/index.php?r=admini/public/login', '用户登录成功:admin', '202.106.169.231', 1435850303);
INSERT INTO `bage_admin_logger` VALUES (431, 1, 'update', '/index.php?r=admini/config/index', '更新系统配置，模块：index', '202.106.169.231', 1435850339);
INSERT INTO `bage_admin_logger` VALUES (432, 1, 'update', '/index.php?r=admini/config/index', '更新系统配置，模块：index', '202.106.169.231', 1435850553);
INSERT INTO `bage_admin_logger` VALUES (433, 1, 'login', '/index.php?r=admini/public/login', '用户登录成功:admin', '222.129.33.21', 1436632331);
INSERT INTO `bage_admin_logger` VALUES (434, 1, 'login', '/index.php?r=admini/public/login', '用户登录成功:admin', '222.129.33.21', 1436632332);
INSERT INTO `bage_admin_logger` VALUES (435, 1, 'login', '/index.php?r=admini/public/login', '用户登录成功:admin', '222.129.44.118', 1436687740);
INSERT INTO `bage_admin_logger` VALUES (436, 1, 'login', '/index.php?r=admini/public/login', '用户登录成功:admin', '202.106.169.231', 1437492397);
INSERT INTO `bage_admin_logger` VALUES (437, 1, 'login', '/index.php?r=admini/public/login', '用户登录成功:admin', '202.106.169.231', 1437492397);
INSERT INTO `bage_admin_logger` VALUES (438, 1, 'delete', '/index.php?r=admini/post/batch&command=delete&id=67', '删除内容，ID:67', '202.106.169.231', 1437492548);
INSERT INTO `bage_admin_logger` VALUES (439, 1, 'login', '/index.php?r=admini/public/login', '用户登录成功:admin', '219.142.118.233', 1438241145);
INSERT INTO `bage_admin_logger` VALUES (440, 1, 'login', '/index.php?r=admini/public/login', '用户登录成功:admin', '219.142.118.233', 1438241156);
INSERT INTO `bage_admin_logger` VALUES (441, 1, 'login', '/index.php?r=admini/public/login', '用户登录成功:admin', '219.142.118.233', 1438241157);
INSERT INTO `bage_admin_logger` VALUES (442, 1, 'update', '/index.php?r=admini/config/index', '更新系统配置，模块：index', '219.142.118.233', 1438241211);
INSERT INTO `bage_admin_logger` VALUES (443, 0, 'login', '/index.php?r=admini/public/login', '登录失败，密码不正确:tann1013，使用密码：tanjian421970+', '123.118.214.96', 1438527101);
INSERT INTO `bage_admin_logger` VALUES (444, 0, 'login', '/index.php?r=admini/public/login', '登录失败，密码不正确:tann1013，使用密码：tanjian421970+', '123.118.214.96', 1438527109);
INSERT INTO `bage_admin_logger` VALUES (445, 0, 'login', '/index.php?r=admini/public/login', '登录失败，密码不正确:tann1013，使用密码：tanjian421970+', '123.118.214.96', 1438527111);
INSERT INTO `bage_admin_logger` VALUES (446, 0, 'login', '/index.php?r=admini/public/login', '登录失败，密码不正确:tann1013，使用密码：tanjian421970+', '123.118.214.96', 1438527117);
INSERT INTO `bage_admin_logger` VALUES (447, 0, 'login', '/index.php?r=admini/public/login', '登录失败，密码不正确:tann1013，使用密码：tanjian421970+', '123.118.214.96', 1438527117);
INSERT INTO `bage_admin_logger` VALUES (448, 0, 'login', '/index.php?r=admini/public/login', '登录失败，密码不正确:tann1013，使用密码：tanjian421970+', '123.118.214.96', 1438527121);
INSERT INTO `bage_admin_logger` VALUES (449, 0, 'login', '/index.php?r=admini/public/login', '登录失败，密码不正确:tann1013，使用密码：tanjian421970+', '123.118.214.96', 1438527137);
INSERT INTO `bage_admin_logger` VALUES (450, 0, 'login', '/index.php?r=admini/public/login', '登录失败，密码不正确:tann1013，使用密码：tanjian421970+', '123.118.214.96', 1438527138);
INSERT INTO `bage_admin_logger` VALUES (451, 1, 'login', '/index.php?r=admini/public/login', '用户登录成功:admin', '123.118.214.96', 1438527160);
INSERT INTO `bage_admin_logger` VALUES (452, 1, 'login', '/index.php?r=admini/public/login', '用户登录成功:admin', '123.118.214.96', 1438527161);
INSERT INTO `bage_admin_logger` VALUES (453, 1, 'update', '/index.php?r=admini/config/seo', '更新系统配置，模块：seo', '123.118.214.96', 1438527218);
INSERT INTO `bage_admin_logger` VALUES (454, 1, 'update', '/index.php?r=admini/config/seo', '更新系统配置，模块：seo', '123.118.214.96', 1438527251);
INSERT INTO `bage_admin_logger` VALUES (455, 1, 'update', '/index.php?r=admini/config/seo', '更新系统配置，模块：seo', '123.118.214.96', 1438527298);
INSERT INTO `bage_admin_logger` VALUES (456, 1, 'create', '/index.php?r=admini/post/create', '录入内容,ID:74', '123.118.214.96', 1438527427);
INSERT INTO `bage_admin_logger` VALUES (457, 1, 'login', '/index.php?r=admini/public/login', '用户登录成功:admin', '123.118.215.39', 1438684347);
INSERT INTO `bage_admin_logger` VALUES (458, 1, 'login', '/index.php?r=admini/public/login', '用户登录成功:admin', '219.142.118.233', 1438774127);
INSERT INTO `bage_admin_logger` VALUES (459, 1, 'login', '/index.php?r=admini/public/login', '用户登录成功:admin', '219.142.118.233', 1438774127);
INSERT INTO `bage_admin_logger` VALUES (460, 1, 'create', '/index.php?r=admini/catalog/create', '录入全局分类,ID:名称：足球', '219.142.118.233', 1438774390);
INSERT INTO `bage_admin_logger` VALUES (461, 1, 'login', '/index.php?r=admini/public/login', '用户登录成功:admin', '202.106.169.231', 1439216842);
INSERT INTO `bage_admin_logger` VALUES (462, 1, 'login', '/index.php?r=admini/public/login', '用户登录成功:admin', '202.106.169.231', 1439216842);
INSERT INTO `bage_admin_logger` VALUES (463, 1, 'create', '/index.php?r=admini/post/create', '录入内容,ID:75', '202.106.169.231', 1439216923);
INSERT INTO `bage_admin_logger` VALUES (464, 1, 'login', '/index.php?r=admini/public/login', '用户登录成功:admin', '219.142.118.233', 1439283749);
INSERT INTO `bage_admin_logger` VALUES (465, 1, 'delete', '/index.php?r=admini/catalog/batch&command=delete&id=17', '删除全局分类，ID:17', '219.142.118.233', 1439283785);
INSERT INTO `bage_admin_logger` VALUES (466, 1, 'login', '/index.php?r=admini/public/login', '用户登录成功:admin', '219.142.118.233', 1439776287);
INSERT INTO `bage_admin_logger` VALUES (467, 1, 'login', '/index.php?r=admini/public/login', '用户登录成功:admin', '219.142.118.233', 1439776287);
INSERT INTO `bage_admin_logger` VALUES (468, 1, 'create', '/index.php?r=admini/post/create', '录入内容,ID:76', '219.142.118.233', 1439776347);
INSERT INTO `bage_admin_logger` VALUES (469, 1, 'login', '/index.php?r=admini/public/login', '用户登录成功:admin', '114.245.36.87', 1439905499);
INSERT INTO `bage_admin_logger` VALUES (470, 1, 'login', '/index.php?r=admini/public/login', '用户登录成功:admin', '114.245.36.87', 1439905500);
INSERT INTO `bage_admin_logger` VALUES (471, 1, 'login', '/index.php?r=admini/public/login', '用户登录成功:admin', '219.142.118.233', 1442903386);
INSERT INTO `bage_admin_logger` VALUES (472, 1, 'login', '/index.php?r=admini/public/login', '用户登录成功:admin', '222.129.54.223', 1458744346);
INSERT INTO `bage_admin_logger` VALUES (473, 1, 'login', '/index.php?r=admini/public/login', '用户登录成功:admin', '222.129.54.223', 1458744347);
INSERT INTO `bage_admin_logger` VALUES (474, 1, 'update', '/index.php?r=admini/config/index', '更新系统配置，模块：index', '222.129.54.223', 1458744551);
INSERT INTO `bage_admin_logger` VALUES (475, 1, 'update', '/index.php?r=admini/config/index', '更新系统配置，模块：index', '222.129.54.223', 1458744666);
INSERT INTO `bage_admin_logger` VALUES (476, 1, 'delete', '/index.php?r=admini/catalog/batch&command=delete&id=14', '删除全局分类，ID:14', '222.129.54.223', 1458744718);
INSERT INTO `bage_admin_logger` VALUES (477, 1, 'delete', '/index.php?r=admini/catalog/batch&command=delete&id=16', '删除全局分类，ID:16', '222.129.54.223', 1458744721);
INSERT INTO `bage_admin_logger` VALUES (478, 1, 'delete', '/index.php?r=admini/catalog/batch&command=delete&id=15', '删除全局分类，ID:15', '222.129.54.223', 1458744726);
INSERT INTO `bage_admin_logger` VALUES (479, 1, 'delete', '/index.php?r=admini/catalog/batch&command=delete&id=9', '删除全局分类，ID:9', '222.129.54.223', 1458744732);
INSERT INTO `bage_admin_logger` VALUES (480, 1, 'delete', '/index.php?r=admini/post/batch', '删除内容，ID:76,74,73,72,71,68,65,64,62', '222.129.54.223', 1458744776);
INSERT INTO `bage_admin_logger` VALUES (481, 1, 'delete', '/index.php?r=admini/post/batch', '删除内容，ID:51,50,49,45,44,43,36,35', '222.129.54.223', 1458744821);
INSERT INTO `bage_admin_logger` VALUES (482, 1, 'delete', '/index.php?r=admini/post/batch', '删除内容，ID:75,60,59,58,57,56,55,54,52', '222.129.54.223', 1458744869);
INSERT INTO `bage_admin_logger` VALUES (483, 1, 'update', '/index.php?r=admini/config/index', '更新系统配置，模块：index', '222.129.54.223', 1458745050);
INSERT INTO `bage_admin_logger` VALUES (484, 1, 'login', '/index.php?r=admini/public/login', '用户登录成功:admin', '222.129.46.35', 1459333498);
INSERT INTO `bage_admin_logger` VALUES (485, 1, 'create', '/index.php?r=admini/post/create', '录入内容,ID:77', '222.129.46.35', 1459333648);
INSERT INTO `bage_admin_logger` VALUES (486, 1, 'login', '/index.php?r=admini/public/login', '用户登录成功:admin', '202.85.212.2', 1459818269);
INSERT INTO `bage_admin_logger` VALUES (487, 1, 'create', '/index.php?r=admini/post/create', '录入内容,ID:78', '202.85.212.2', 1459819689);
INSERT INTO `bage_admin_logger` VALUES (488, 1, 'update', '/index.php?r=admini/post/update&id=78', '编辑内容,ID:78', '202.85.212.2', 1459820090);
INSERT INTO `bage_admin_logger` VALUES (489, 1, 'update', '/index.php?r=admini/post/update&id=78', '编辑内容,ID:78', '202.85.212.2', 1459821203);
INSERT INTO `bage_admin_logger` VALUES (490, 1, 'update', '/index.php?r=admini/post/update&id=78', '编辑内容,ID:78', '202.85.212.2', 1459821589);
INSERT INTO `bage_admin_logger` VALUES (491, 1, 'delete', '/index.php?r=admini/post/batch&command=delete&id=77', '删除内容，ID:77', '202.85.212.2', 1459822015);
INSERT INTO `bage_admin_logger` VALUES (492, 1, 'update', '/index.php?r=admini/post/update&id=78', '编辑内容,ID:78', '202.85.212.2', 1459822236);
INSERT INTO `bage_admin_logger` VALUES (493, 1, 'login', '/index.php?r=admini/public/login', '用户登录成功:admin', '114.245.45.233', 1459869853);
INSERT INTO `bage_admin_logger` VALUES (494, 1, 'login', '/index.php?r=admini/public/login', '用户登录成功:admin', '114.245.45.233', 1459871148);
INSERT INTO `bage_admin_logger` VALUES (495, 1, 'login', '/index.php?r=admini/public/login', '用户登录成功:admin', '202.85.212.2', 1459919324);
INSERT INTO `bage_admin_logger` VALUES (496, 1, 'login', '/index.php?r=admini/public/login', '用户登录成功:admin', '202.85.212.2', 1459919325);
INSERT INTO `bage_admin_logger` VALUES (497, 1, 'create', '/index.php?r=admini/post/create', '录入内容,ID:79', '202.85.212.2', 1459931555);
INSERT INTO `bage_admin_logger` VALUES (498, 1, 'update', '/index.php?r=admini/post/update&id=79', '编辑内容,ID:79', '202.85.212.2', 1459931729);
INSERT INTO `bage_admin_logger` VALUES (499, 1, 'login', '/index.php?r=admini/public/login', '用户登录成功:admin', '202.85.212.2', 1460006711);
INSERT INTO `bage_admin_logger` VALUES (500, 1, 'login', '/index.php?r=admini/public/login', '用户登录成功:admin', '202.85.212.2', 1460006722);
INSERT INTO `bage_admin_logger` VALUES (501, 1, 'update', '/index.php?r=admini/post/update&id=79', '编辑内容,ID:79', '202.85.212.2', 1460007897);
INSERT INTO `bage_admin_logger` VALUES (502, 1, 'login', '/index.php?r=admini/public/login', '用户登录成功:admin', '123.118.214.235', 1460033975);
INSERT INTO `bage_admin_logger` VALUES (503, 1, 'login', '/index.php?r=admini/public/login', '用户登录成功:admin', '123.118.214.235', 1460033975);
INSERT INTO `bage_admin_logger` VALUES (504, 1, 'login', '/index.php?r=admini/public/login', '用户登录成功:admin', '123.118.214.235', 1460037536);
INSERT INTO `bage_admin_logger` VALUES (505, 1, 'login', '/index.php?r=admini/public/login', '用户登录成功:admin', '123.118.214.235', 1460037536);
INSERT INTO `bage_admin_logger` VALUES (506, 1, 'login', '/index.php?r=admini/public/login', '用户登录成功:admin', '123.118.214.235', 1460117511);
INSERT INTO `bage_admin_logger` VALUES (507, 1, 'login', '/index.php?r=admini/public/login', '用户登录成功:admin', '123.118.214.235', 1460117511);
INSERT INTO `bage_admin_logger` VALUES (508, 1, 'login', '/index.php?r=admini/public/login', '用户登录成功:admin', '123.118.214.235', 1460216027);
INSERT INTO `bage_admin_logger` VALUES (509, 1, 'login', '/index.php?r=admini/public/login', '用户登录成功:admin', '123.118.214.235', 1460216027);
INSERT INTO `bage_admin_logger` VALUES (510, 1, 'login', '/index.php?r=admini/public/login', '用户登录成功:admin', '202.85.212.2', 1460432968);
INSERT INTO `bage_admin_logger` VALUES (511, 1, 'login', '/index.php?r=admini/public/login', '用户登录成功:admin', '202.85.212.2', 1460450021);
INSERT INTO `bage_admin_logger` VALUES (512, 1, 'login', '/index.php?r=admini/public/login', '用户登录成功:admin', '202.85.212.2', 1460450022);
INSERT INTO `bage_admin_logger` VALUES (513, 1, 'create', '/index.php?r=admini/post/create', '录入内容,ID:80', '202.85.212.2', 1460450143);
INSERT INTO `bage_admin_logger` VALUES (514, 1, 'login', '/index.php?r=admini/public/login', '用户登录成功:admin', '123.118.217.253', 1460556085);
INSERT INTO `bage_admin_logger` VALUES (515, 1, 'login', '/index.php?r=admini/public/login', '用户登录成功:admin', '123.118.217.253', 1460556085);
INSERT INTO `bage_admin_logger` VALUES (516, 1, 'login', '/index.php?r=admini/public/login', '用户登录成功:admin', '114.245.38.96', 1461506938);
INSERT INTO `bage_admin_logger` VALUES (517, 1, 'login', '/index.php?r=admini/public/login', '用户登录成功:admin', '61.148.202.10', 1461757920);
INSERT INTO `bage_admin_logger` VALUES (518, 1, 'login', '/index.php?r=admini/public/login', '用户登录成功:admin', '222.129.47.161', 1462630586);
INSERT INTO `bage_admin_logger` VALUES (519, 1, 'login', '/index.php?r=admini/public/login', '用户登录成功:admin', '222.129.47.161', 1462630598);
INSERT INTO `bage_admin_logger` VALUES (520, 1, 'login', '/index.php?r=admini/public/login', '用户登录成功:admin', '222.129.47.161', 1462630599);
INSERT INTO `bage_admin_logger` VALUES (521, 1, 'login', '/index.php?r=admini/public/login', '用户登录成功:admin', '222.129.47.161', 1462630599);
INSERT INTO `bage_admin_logger` VALUES (522, 1, 'login', '/index.php?r=admini/public/login', '用户登录成功:admin', '61.148.202.10', 1465990209);
INSERT INTO `bage_admin_logger` VALUES (523, 1, 'login', '/index.php?r=admini/public/login', '用户登录成功:admin', '61.148.202.10', 1465990209);
INSERT INTO `bage_admin_logger` VALUES (524, 1, 'login', '/index.php?r=admini/public/login', '用户登录成功:admin', '61.148.202.10', 1467625713);
INSERT INTO `bage_admin_logger` VALUES (525, 0, 'login', '/index.php?r=admini/public/login', '登录失败，密码不正确:tann1013，使用密码：tanjian421970+', '61.148.202.10', 1467871258);
INSERT INTO `bage_admin_logger` VALUES (526, 1, 'login', '/index.php?r=admini/public/login', '用户登录成功:admin', '61.148.202.10', 1467871809);
INSERT INTO `bage_admin_logger` VALUES (527, 1, 'login', '/index.php?r=admini/public/login', '用户登录成功:admin', '61.148.202.10', 1467871809);
INSERT INTO `bage_admin_logger` VALUES (528, 1, 'delete', '/index.php?r=admini/post/batch&command=delete&id=78', '删除内容，ID:78', '61.148.202.10', 1467872100);
INSERT INTO `bage_admin_logger` VALUES (529, 1, 'login', '/index.php?r=admini/public/login', '用户登录成功:admin', '61.148.202.10', 1468411139);
INSERT INTO `bage_admin_logger` VALUES (530, 1, 'login', '/index.php?r=admini/public/login', '用户登录成功:admin', '61.148.202.10', 1468411157);
INSERT INTO `bage_admin_logger` VALUES (531, 1, 'login', '/index.php?r=admini/public/login', '用户登录成功:admin', '61.148.202.10', 1468411158);
INSERT INTO `bage_admin_logger` VALUES (532, 1, 'login', '/index.php?r=admini/public/login', '用户登录成功:admin', '61.148.202.10', 1469761742);
INSERT INTO `bage_admin_logger` VALUES (533, 1, 'login', '/index.php?r=admini/public/login', '用户登录成功:admin', '61.148.202.10', 1469761742);
INSERT INTO `bage_admin_logger` VALUES (534, 1, 'create', '/index.php?r=admini/post/create', '录入内容,ID:81', '61.148.202.10', 1469761875);
INSERT INTO `bage_admin_logger` VALUES (535, 1, 'login', '/index.php?r=admini/public/login', '用户登录成功:admin', '61.148.202.10', 1470275829);
INSERT INTO `bage_admin_logger` VALUES (536, 1, 'login', '/index.php?r=admini/public/login', '用户登录成功:admin', '61.148.202.10', 1470275829);
INSERT INTO `bage_admin_logger` VALUES (537, 1, 'login', '/index.php?r=admini/public/login', '用户登录成功:admin', '61.148.202.10', 1470289397);
INSERT INTO `bage_admin_logger` VALUES (538, 1, 'login', '/index.php?r=admini/public/login', '用户登录成功:admin', '61.148.202.10', 1470289397);
INSERT INTO `bage_admin_logger` VALUES (539, 1, 'login', '/index.php?r=admini/public/login', '用户登录成功:admin', '61.148.202.10', 1470289416);
INSERT INTO `bage_admin_logger` VALUES (540, 1, 'login', '/index.php?r=admini/public/login', '用户登录成功:admin', '61.148.202.10', 1470289417);
INSERT INTO `bage_admin_logger` VALUES (541, 1, 'create', '/index.php?r=admini/post/create', '录入内容,ID:82', '61.148.202.10', 1470289539);
INSERT INTO `bage_admin_logger` VALUES (542, 1, 'login', '/index.php?r=admini/public/login', '用户登录成功:admin', '61.148.202.10', 1471422865);
INSERT INTO `bage_admin_logger` VALUES (543, 1, 'login', '/index.php?r=admini/public/login', '用户登录成功:admin', '61.148.202.10', 1476438678);
INSERT INTO `bage_admin_logger` VALUES (544, 1, 'delete', '/index.php?r=admini/post/batch', '删除内容，ID:82,81,80,79,70,69,66,61,48,47,46,42,41', '61.148.202.10', 1476438694);
INSERT INTO `bage_admin_logger` VALUES (545, 1, 'delete', '/index.php?r=admini/post/batch', '删除内容，ID:34,33,32,31,30,29,28,27,26,25,24,23,22', '61.148.202.10', 1476438705);
INSERT INTO `bage_admin_logger` VALUES (546, 1, 'delete', '/index.php?r=admini/post/batch', '删除内容，ID:21,20', '61.148.202.10', 1476438718);
INSERT INTO `bage_admin_logger` VALUES (547, 1, 'create', '/index.php?r=admini/post/create', '录入内容,ID:83', '61.148.202.10', 1476438767);
INSERT INTO `bage_admin_logger` VALUES (548, 1, 'login', '/index.php?r=admini/public/login', '用户登录成功:admin', '61.148.202.10', 1476696807);
INSERT INTO `bage_admin_logger` VALUES (549, 1, 'create', '/index.php?r=admini/post/create', '录入内容,ID:84', '61.148.202.10', 1476696924);
INSERT INTO `bage_admin_logger` VALUES (550, 1, 'login', '/index.php?r=admini/public/login', '用户登录成功:admin', '61.148.202.10', 1476957696);
INSERT INTO `bage_admin_logger` VALUES (551, 1, 'create', '/index.php?r=admini/post/create', '录入内容,ID:85', '61.148.202.10', 1476957768);
INSERT INTO `bage_admin_logger` VALUES (552, 1, 'login', '/index.php?r=admini/public/login', '用户登录成功:admin', '61.148.202.10', 1477036297);
INSERT INTO `bage_admin_logger` VALUES (553, 1, 'update', '/index.php?r=admini/post/update&id=85', '编辑内容,ID:85', '61.148.202.10', 1477036734);
INSERT INTO `bage_admin_logger` VALUES (554, 1, 'login', '/index.php?r=admini/public/login', '用户登录成功:admin', '61.148.202.10', 1477618748);
INSERT INTO `bage_admin_logger` VALUES (555, 1, 'login', '/index.php?r=admini/public/login', '用户登录成功:admin', '61.148.202.10', 1477618748);
INSERT INTO `bage_admin_logger` VALUES (556, 1, 'login', '/index.php?r=admini/public/login', '用户登录成功:admin', '61.148.202.10', 1478147931);
INSERT INTO `bage_admin_logger` VALUES (557, 1, 'login', '/index.php?r=admini/public/login', '用户登录成功:admin', '61.148.202.10', 1478147931);
INSERT INTO `bage_admin_logger` VALUES (558, 1, 'login', '/index.php?r=admini/public/login', '用户登录成功:admin', '222.129.42.73', 1478435104);
INSERT INTO `bage_admin_logger` VALUES (559, 1, 'create', '/index.php?r=admini/post/create', '录入内容,ID:86', '222.129.42.73', 1478435394);
INSERT INTO `bage_admin_logger` VALUES (560, 1, 'login', '/index.php?r=admini/public/login', '用户登录成功:admin', '222.129.42.73', 1478435816);
INSERT INTO `bage_admin_logger` VALUES (561, 1, 'login', '/index.php?r=admini/public/login', '用户登录成功:admin', '222.129.42.73', 1478435817);
INSERT INTO `bage_admin_logger` VALUES (562, 1, 'update', '/index.php?r=admini/post/update&id=86', '编辑内容,ID:86', '222.129.42.73', 1478435950);
INSERT INTO `bage_admin_logger` VALUES (563, 1, 'login', '/index.php?r=admini/public/login', '用户登录成功:admin', '221.219.37.192', 1479136776);
INSERT INTO `bage_admin_logger` VALUES (564, 1, 'create', '/index.php?r=admini/post/create', '录入内容,ID:87', '221.219.37.192', 1479136976);
INSERT INTO `bage_admin_logger` VALUES (565, 1, 'login', '/index.php?r=admini/public/login', '用户登录成功:admin', '61.148.202.10', 1480559293);
INSERT INTO `bage_admin_logger` VALUES (566, 1, 'login', '/index.php?r=admini/public/login', '用户登录成功:admin', '111.193.114.82', 1481037281);
INSERT INTO `bage_admin_logger` VALUES (567, 1, 'delete', '/index.php?r=admini/post/batch&command=delete&id=85', '删除内容，ID:85', '111.193.114.82', 1481037380);
INSERT INTO `bage_admin_logger` VALUES (568, 1, 'update', '/index.php?r=admini/post/update&id=87', '编辑内容,ID:87', '111.193.114.82', 1481037921);
INSERT INTO `bage_admin_logger` VALUES (569, 1, 'login', '/index.php?r=admini/public/login', '用户登录成功:admin', '111.193.126.100', 1481470083);
INSERT INTO `bage_admin_logger` VALUES (570, 1, 'create', '/index.php?r=admini/post/create', '录入内容,ID:88', '111.193.126.100', 1481470204);
INSERT INTO `bage_admin_logger` VALUES (571, 1, 'login', '/index.php?r=admini/public/login', '用户登录成功:admin', '111.193.126.100', 1481630968);
INSERT INTO `bage_admin_logger` VALUES (572, 1, 'update', '/index.php?r=admini/post/update&id=88', '编辑内容,ID:88', '111.193.126.100', 1481631034);
INSERT INTO `bage_admin_logger` VALUES (573, 1, 'update', '/index.php?r=admini/post/update&id=88', '编辑内容,ID:88', '111.193.126.100', 1481631633);
INSERT INTO `bage_admin_logger` VALUES (574, 1, 'login', '/index.php?r=admini/public/login', '用户登录成功:admin', '111.193.127.129', 1482045546);
INSERT INTO `bage_admin_logger` VALUES (575, 1, 'create', '/index.php?r=admini/post/create', '录入内容,ID:89', '111.193.127.129', 1482046221);
INSERT INTO `bage_admin_logger` VALUES (576, 1, 'update', '/index.php?r=admini/post/update&id=88', '编辑内容,ID:88', '111.193.127.129', 1482046327);
INSERT INTO `bage_admin_logger` VALUES (577, 1, 'delete', '/index.php?r=admini/post/batch&command=delete&id=87', '删除内容，ID:87', '111.193.127.129', 1482046495);
INSERT INTO `bage_admin_logger` VALUES (578, 1, 'update', '/index.php?r=admini/post/update&id=88', '编辑内容,ID:88', '111.193.127.129', 1482047285);
INSERT INTO `bage_admin_logger` VALUES (579, 1, 'login', '/index.php?r=admini/public/login', '用户登录成功:admin', '111.193.127.129', 1482293672);
INSERT INTO `bage_admin_logger` VALUES (580, 1, 'login', '/index.php?r=admini/public/login', '用户登录成功:admin', '114.249.72.97', 1482585508);
INSERT INTO `bage_admin_logger` VALUES (581, 1, 'login', '/index.php?r=admini/public/login', '用户登录成功:admin', '114.249.72.97', 1482585516);
INSERT INTO `bage_admin_logger` VALUES (582, 1, 'login', '/index.php?r=admini/public/login', '用户登录成功:admin', '114.249.72.97', 1482585516);
INSERT INTO `bage_admin_logger` VALUES (583, 1, 'update', '/index.php?r=admini/post/update&id=89', '编辑内容,ID:89', '114.249.72.97', 1482585891);
INSERT INTO `bage_admin_logger` VALUES (584, 1, 'update', '/index.php?r=admini/post/batch', '批量取消内容审核，ID:86', '114.249.72.97', 1482585971);
INSERT INTO `bage_admin_logger` VALUES (585, 1, 'update', '/index.php?r=admini/post/batch', '批量取消内容审核，ID:86', '114.249.72.97', 1482585985);
INSERT INTO `bage_admin_logger` VALUES (586, 1, 'update', '/index.php?r=admini/post/update&id=88', '编辑内容,ID:88', '114.249.72.97', 1482586147);
INSERT INTO `bage_admin_logger` VALUES (587, 1, 'login', '/index.php?r=admini/public/login', '用户登录成功:admin', '123.116.119.50', 1482915723);
INSERT INTO `bage_admin_logger` VALUES (588, 1, 'login', '/index.php?r=admini/public/login', '用户登录成功:admin', '123.123.154.119', 1482939570);
INSERT INTO `bage_admin_logger` VALUES (589, 1, 'create', '/index.php?r=admini/post/create', '录入内容,ID:90', '123.123.154.119', 1482940357);
INSERT INTO `bage_admin_logger` VALUES (590, 1, 'update', '/index.php?r=admini/post/update&id=90', '编辑内容,ID:90', '123.123.154.119', 1482940442);
INSERT INTO `bage_admin_logger` VALUES (591, 1, 'login', '/index.php?r=admini/public/login', '用户登录成功:admin', '123.123.154.119', 1482948467);
INSERT INTO `bage_admin_logger` VALUES (592, 1, 'login', '/index.php?r=admini/public/login', '用户登录成功:admin', '114.243.55.109', 1483195811);
INSERT INTO `bage_admin_logger` VALUES (593, 1, 'login', '/index.php?r=admini/public/login', '用户登录成功:admin', '114.243.55.109', 1483241323);
INSERT INTO `bage_admin_logger` VALUES (594, 1, 'login', '/index.php?r=admini/public/login', '用户登录成功:admin', '114.243.55.109', 1483344562);
INSERT INTO `bage_admin_logger` VALUES (595, 1, 'login', '/index.php?r=admini/public/login', '用户登录成功:admin', '114.243.55.109', 1483616797);
INSERT INTO `bage_admin_logger` VALUES (596, 1, 'login', '/index.php?r=admini/public/login', '用户登录成功:admin', '114.243.55.109', 1483618226);
INSERT INTO `bage_admin_logger` VALUES (597, 1, 'login', '/index.php?r=admini/public/login', '用户登录成功:admin', '106.121.76.7', 1483626134);
INSERT INTO `bage_admin_logger` VALUES (598, 1, 'login', '/index.php?r=admini/public/login', '用户登录成功:admin', '114.243.55.109', 1483630988);
INSERT INTO `bage_admin_logger` VALUES (599, 1, 'login', '/index.php?r=admini/public/login', '用户登录成功:admin', '123.116.93.0', 1483720399);
INSERT INTO `bage_admin_logger` VALUES (600, 1, 'login', '/index.php?r=admini/public/login', '用户登录成功:admin', '123.116.93.0', 1483801542);
INSERT INTO `bage_admin_logger` VALUES (601, 1, 'login', '/index.php?r=admini/public/login', '用户登录成功:admin', '123.116.93.0', 1484132214);
INSERT INTO `bage_admin_logger` VALUES (602, 1, 'login', '/index.php?r=admini/public/login', '用户登录成功:admin', '106.121.11.249', 1484548254);
INSERT INTO `bage_admin_logger` VALUES (603, 1, 'update', '/index.php?r=admini/config/index', '更新系统配置，模块：index', '106.121.11.249', 1484548281);
INSERT INTO `bage_admin_logger` VALUES (604, 1, 'login', '/index.php?r=admini/public/login', '用户登录成功:admin', '203.86.47.85', 1485136398);
INSERT INTO `bage_admin_logger` VALUES (605, 1, 'update', '/index.php?r=admini/config/index', '更新系统配置，模块：index', '203.86.47.85', 1485136514);
INSERT INTO `bage_admin_logger` VALUES (606, 1, 'update', '/index.php?r=admini/post/update&id=90', '编辑内容,ID:90', '203.86.47.85', 1485136562);
INSERT INTO `bage_admin_logger` VALUES (607, 1, 'update', '/index.php?r=admini/post/update&id=89', '编辑内容,ID:89', '203.86.47.85', 1485136579);
INSERT INTO `bage_admin_logger` VALUES (608, 1, 'update', '/index.php?r=admini/post/update&id=88', '编辑内容,ID:88', '203.86.47.85', 1485136597);
INSERT INTO `bage_admin_logger` VALUES (609, 1, 'update', '/index.php?r=admini/config/index', '更新系统配置，模块：index', '203.86.47.85', 1485136641);
INSERT INTO `bage_admin_logger` VALUES (610, 1, 'login', '/index.php?r=admini/public/login', '用户登录成功:admin', '203.86.47.85', 1486179416);
INSERT INTO `bage_admin_logger` VALUES (611, 1, 'login', '/index.php?r=admini/public/login', '用户登录成功:admin', '104.168.26.61', 1486529080);
INSERT INTO `bage_admin_logger` VALUES (612, 1, 'login', '/index.php?r=admini/public/login', '用户登录成功:admin', '104.168.26.61', 1486529080);
INSERT INTO `bage_admin_logger` VALUES (613, 1, 'update', '/index.php?r=admini/post/update&id=90', '编辑内容,ID:90', '104.168.26.61', 1486529145);
INSERT INTO `bage_admin_logger` VALUES (614, 1, 'delete', '/index.php?r=admini/post/batch&command=delete&id=90', '删除内容，ID:90', '104.168.26.61', 1486529169);
INSERT INTO `bage_admin_logger` VALUES (615, 1, 'update', '/index.php?r=admini/post/update&id=88', '编辑内容,ID:88', '104.168.26.61', 1486529257);
INSERT INTO `bage_admin_logger` VALUES (616, 1, 'delete', '/index.php?r=admini/post/batch&command=delete&id=86', '删除内容，ID:86', '104.168.26.61', 1486529262);
INSERT INTO `bage_admin_logger` VALUES (617, 1, 'delete', '/index.php?r=admini/post/batch&command=delete&id=83', '删除内容，ID:83', '104.168.26.61', 1486529268);
INSERT INTO `bage_admin_logger` VALUES (618, 1, 'update', '/index.php?r=admini/post/update&id=89', '编辑内容,ID:89', '104.168.26.61', 1486529338);
INSERT INTO `bage_admin_logger` VALUES (619, 1, 'update', '/index.php?r=admini/post/update&id=89', '编辑内容,ID:89', '104.168.26.61', 1486529385);
INSERT INTO `bage_admin_logger` VALUES (620, 1, 'login', '/index.php?r=admini/public/login', '用户登录成功:admin', '123.116.64.86', 1487088680);
INSERT INTO `bage_admin_logger` VALUES (621, 1, 'login', '/index.php?r=admini/public/login', '用户登录成功:admin', '123.116.64.86', 1487088680);
INSERT INTO `bage_admin_logger` VALUES (622, 1, 'login', '/index.php?r=admini/public/login', '用户登录成功:admin', '114.243.63.233', 1487491067);
INSERT INTO `bage_admin_logger` VALUES (623, 1, 'delete', '/index.php?r=admini/post/batch', '删除内容，ID:5,3,2', '114.243.63.233', 1487491105);
INSERT INTO `bage_admin_logger` VALUES (624, 1, 'update', '/index.php?r=admini/post/update&id=89', '编辑内容,ID:89', '114.243.63.233', 1487491230);
INSERT INTO `bage_admin_logger` VALUES (625, 1, 'create', '/index.php?r=admini/catalog/create', '录入全局分类,ID:名称：每周笔记', '114.243.63.233', 1487491955);
INSERT INTO `bage_admin_logger` VALUES (626, 1, 'update', '/index.php?r=admini/post/update&id=89', '编辑内容,ID:89', '114.243.63.233', 1487493081);
INSERT INTO `bage_admin_logger` VALUES (627, 1, 'login', '/index.php?r=admini/public/login', '用户登录成功:admin', '114.243.63.233', 1487498081);
INSERT INTO `bage_admin_logger` VALUES (628, 1, 'delete', '/index.php?r=admini/post/batch&command=delete&id=84', '删除内容，ID:84', '114.243.63.233', 1487498474);
INSERT INTO `bage_admin_logger` VALUES (629, 1, 'login', '/index.php?r=admini/public/login', '用户登录成功:admin', '45.62.112.50', 1487902273);
INSERT INTO `bage_admin_logger` VALUES (630, 1, 'login', '/index.php?r=admini/public/login', '用户登录成功:admin', '123.116.72.65', 1488111776);
INSERT INTO `bage_admin_logger` VALUES (631, 1, 'login', '/index.php?r=admini/public/login', '用户登录成功:admin', '123.116.72.65', 1488111776);
INSERT INTO `bage_admin_logger` VALUES (632, 1, 'login', '/index.php?r=admini/public/login', '用户登录成功:admin', '45.62.112.50', 1488422057);
INSERT INTO `bage_admin_logger` VALUES (633, 1, 'login', '/index.php?r=admini/public/login', '用户登录成功:admin', '45.62.112.50', 1488422072);
INSERT INTO `bage_admin_logger` VALUES (634, 1, 'login', '/index.php?r=admini/public/login', '用户登录成功:admin', '45.62.112.50', 1488422086);
INSERT INTO `bage_admin_logger` VALUES (635, 1, 'login', '/index.php?r=admini/public/login', '用户登录成功:admin', '45.62.112.50', 1488422086);
INSERT INTO `bage_admin_logger` VALUES (636, 1, 'login', '/index.php?r=admini/public/login', '用户登录成功:admin', '123.116.80.162', 1488470037);
INSERT INTO `bage_admin_logger` VALUES (637, 1, 'login', '/index.php?r=admini/public/login', '用户登录成功:admin', '203.86.47.85', 1489025306);
INSERT INTO `bage_admin_logger` VALUES (638, 1, 'login', '/index.php?r=admini/public/login', '用户登录成功:admin', '23.95.113.157', 1490088449);
INSERT INTO `bage_admin_logger` VALUES (639, 1, 'login', '/index.php?r=admini/public/login', '用户登录成功:admin', '23.95.113.157', 1490088449);
INSERT INTO `bage_admin_logger` VALUES (640, 1, 'login', '/index.php?r=admini/public/login', '用户登录成功:admin', '203.86.47.85', 1490152090);
INSERT INTO `bage_admin_logger` VALUES (641, 1, 'login', '/index.php?r=admini/public/login', '用户登录成功:admin', '203.86.47.85', 1490152090);
INSERT INTO `bage_admin_logger` VALUES (642, 1, 'create', '/index.php?r=admini/catalog/create', '录入全局分类,ID:名称：我的游记', '203.86.47.85', 1490152243);
INSERT INTO `bage_admin_logger` VALUES (643, 1, 'login', '/index.php?r=admini/public/login', '用户登录成功:admin', '123.116.82.255', 1490281511);
INSERT INTO `bage_admin_logger` VALUES (644, 1, 'login', '/index.php?r=admini/public/login', '用户登录成功:admin', '123.116.82.255', 1490281511);
INSERT INTO `bage_admin_logger` VALUES (645, 1, 'login', '/index.php?r=admini/public/login', '用户登录成功:admin', '203.86.47.85', 1491011820);
INSERT INTO `bage_admin_logger` VALUES (646, 1, 'create', '/index.php?r=admini/post/create', '录入内容,ID:91', '203.86.47.85', 1491011978);
INSERT INTO `bage_admin_logger` VALUES (647, 1, 'login', '/index.php?r=admini/public/login', '用户登录成功:admin', '222.131.66.224', 1491640463);
INSERT INTO `bage_admin_logger` VALUES (648, 1, 'login', '/index.php?r=admini/public/login', '用户登录成功:admin', '222.131.76.46', 1491642104);
INSERT INTO `bage_admin_logger` VALUES (649, 0, 'login', '/index.php?r=admini/public/login', '登录失败，密码不正确:admin，使用密码：=tanjian421302+', '203.86.47.85', 1493690977);
INSERT INTO `bage_admin_logger` VALUES (650, 1, 'login', '/index.php?r=admini/public/login', '用户登录成功:admin', '203.86.47.85', 1493690979);
INSERT INTO `bage_admin_logger` VALUES (651, 1, 'login', '/index.php?r=admini/public/login', '用户登录成功:admin', '203.86.47.85', 1493691010);
INSERT INTO `bage_admin_logger` VALUES (652, 1, 'login', '/index.php?r=admini/public/login', '用户登录成功:admin', '203.86.47.85', 1493691010);
INSERT INTO `bage_admin_logger` VALUES (653, 1, 'update', '/index.php?r=admini/post/update&id=91', '编辑内容,ID:91', '203.86.47.85', 1493691206);
INSERT INTO `bage_admin_logger` VALUES (654, 1, 'create', '/index.php?r=admini/post/create', '录入内容,ID:92', '203.86.47.85', 1493691349);
INSERT INTO `bage_admin_logger` VALUES (655, 1, 'login', '/index.php?r=admini/public/login', '用户登录成功:admin', '203.86.47.85', 1493713141);
INSERT INTO `bage_admin_logger` VALUES (656, 1, 'login', '/index.php?r=admini/public/login', '用户登录成功:admin', '123.116.73.48', 1494671970);
INSERT INTO `bage_admin_logger` VALUES (657, 1, 'login', '/index.php?r=admini/public/login', '用户登录成功:admin', '123.116.73.48', 1494749506);
INSERT INTO `bage_admin_logger` VALUES (658, 1, 'update', '/index.php?r=admini/post/update&id=92', '编辑内容,ID:92', '123.116.73.48', 1494750877);
INSERT INTO `bage_admin_logger` VALUES (659, 1, 'update', '/index.php?r=admini/post/update&id=92', '编辑内容,ID:92', '123.116.73.48', 1494751114);
INSERT INTO `bage_admin_logger` VALUES (660, 1, 'create', '/index.php?r=admini/post/create', '录入内容,ID:93', '123.116.73.48', 1494754987);
INSERT INTO `bage_admin_logger` VALUES (661, 1, 'update', '/index.php?r=admini/post/update&id=93', '编辑内容,ID:93', '123.116.73.48', 1494755655);
INSERT INTO `bage_admin_logger` VALUES (662, 1, 'update', '/index.php?r=admini/post/update&id=93', '编辑内容,ID:93', '123.116.73.48', 1494755949);
INSERT INTO `bage_admin_logger` VALUES (663, 1, 'update', '/index.php?r=admini/post/update&id=89', '编辑内容,ID:89', '123.116.73.48', 1494756118);
INSERT INTO `bage_admin_logger` VALUES (664, 1, 'update', '/index.php?r=admini/post/update&id=93', '编辑内容,ID:93', '123.116.73.48', 1494756471);
INSERT INTO `bage_admin_logger` VALUES (665, 1, 'update', '/index.php?r=admini/post/update&id=93', '编辑内容,ID:93', '123.116.73.48', 1494756518);
INSERT INTO `bage_admin_logger` VALUES (666, 1, 'login', '/index.php?r=admini/public/login', '用户登录成功:admin', '203.86.47.85', 1494986184);
INSERT INTO `bage_admin_logger` VALUES (667, 1, 'login', '/index.php?r=admini/public/login', '用户登录成功:admin', '203.86.47.85', 1494986184);
INSERT INTO `bage_admin_logger` VALUES (668, 1, 'create', '/index.php?r=admini/post/create', '录入内容,ID:94', '203.86.47.85', 1494986396);
INSERT INTO `bage_admin_logger` VALUES (669, 1, 'login', '/index.php?r=admini/public/login', '用户登录成功:admin', '203.86.47.85', 1495426593);
INSERT INTO `bage_admin_logger` VALUES (670, 1, 'login', '/index.php?r=admini/public/login', '用户登录成功:admin', '203.86.47.85', 1495426594);
INSERT INTO `bage_admin_logger` VALUES (671, 1, 'login', '/index.php?r=admini/public/login', '用户登录成功:admin', '203.86.47.85', 1495783945);
INSERT INTO `bage_admin_logger` VALUES (672, 1, 'login', '/index.php?r=admini/public/login', '用户登录成功:admin', '203.86.47.85', 1495783946);
INSERT INTO `bage_admin_logger` VALUES (673, 1, 'login', '/index.php?r=admini/public/login', '用户登录成功:admin', '123.116.75.177', 1496581321);
INSERT INTO `bage_admin_logger` VALUES (674, 1, 'login', '/index.php?r=admini/public/login', '用户登录成功:admin', '123.116.75.177', 1496581322);
INSERT INTO `bage_admin_logger` VALUES (675, 1, 'create', '/index.php?r=admini/post/create', '录入内容,ID:95', '123.116.75.177', 1496581838);
INSERT INTO `bage_admin_logger` VALUES (676, 1, 'login', '/index.php?r=admini/public/login', '用户登录成功:admin', '123.116.75.177', 1496582026);
INSERT INTO `bage_admin_logger` VALUES (677, 1, 'update', '/index.php?r=admini/post/update&id=95', '编辑内容,ID:95', '123.116.75.177', 1496594254);
INSERT INTO `bage_admin_logger` VALUES (678, 1, 'login', '/index.php?r=admini/public/login', '用户登录成功:admin', '203.86.47.85', 1496735424);
INSERT INTO `bage_admin_logger` VALUES (679, 1, 'update', '/index.php?r=admini/post/update&id=91', '编辑内容,ID:91', '203.86.47.85', 1496736303);
INSERT INTO `bage_admin_logger` VALUES (680, 1, 'update', '/index.php?r=admini/post/update&id=95', '编辑内容,ID:95', '203.86.47.85', 1496740615);
INSERT INTO `bage_admin_logger` VALUES (681, 1, 'update', '/index.php?r=admini/post/update&id=91', '编辑内容,ID:91', '203.86.47.85', 1496740738);
INSERT INTO `bage_admin_logger` VALUES (682, 1, 'login', '/index.php?r=admini/public/login', '用户登录成功:admin', '203.86.47.85', 1496745250);
INSERT INTO `bage_admin_logger` VALUES (683, 1, 'login', '/index.php?r=admini/public/login', '用户登录成功:admin', '203.86.47.85', 1496745255);
INSERT INTO `bage_admin_logger` VALUES (684, 1, 'login', '/index.php?r=admini/public/login', '用户登录成功:admin', '203.86.47.85', 1496745256);
INSERT INTO `bage_admin_logger` VALUES (685, 1, 'update', '/index.php?r=admini/post/update&id=95', '编辑内容,ID:95', '203.86.47.85', 1496745375);
INSERT INTO `bage_admin_logger` VALUES (686, 1, 'login', '/index.php?r=admini/public/login', '用户登录成功:admin', '203.86.47.85', 1496745787);
INSERT INTO `bage_admin_logger` VALUES (687, 1, 'update', '/index.php?r=admini/post/update&id=95', '编辑内容,ID:95', '203.86.47.85', 1496746357);
INSERT INTO `bage_admin_logger` VALUES (688, 1, 'login', '/index.php?r=admini/public/login', '用户登录成功:admin', '203.86.47.85', 1496800726);
INSERT INTO `bage_admin_logger` VALUES (689, 1, 'login', '/index.php?r=admini/public/login', '用户登录成功:admin', '203.86.47.85', 1496800726);
INSERT INTO `bage_admin_logger` VALUES (690, 1, 'login', '/index.php?r=admini/public/login', '用户登录成功:admin', '123.116.87.10', 1497023195);
INSERT INTO `bage_admin_logger` VALUES (691, 1, 'login', '/index.php?r=admini/public/login', '用户登录成功:admin', '123.116.87.10', 1497023196);
INSERT INTO `bage_admin_logger` VALUES (692, 1, 'login', '/index.php?r=admini/public/login', '用户登录成功:admin', '123.116.87.10', 1497023198);
INSERT INTO `bage_admin_logger` VALUES (693, 1, 'create', '/index.php?r=admini/post/create', '录入内容,ID:96', '123.116.87.10', 1497023411);
INSERT INTO `bage_admin_logger` VALUES (694, 1, 'update', '/index.php?r=admini/post/update&id=96', '编辑内容,ID:96', '123.116.87.10', 1497023808);
INSERT INTO `bage_admin_logger` VALUES (695, 1, 'login', '/index.php?r=admini/public/login', '用户登录成功:admin', '123.116.87.10', 1497076748);
INSERT INTO `bage_admin_logger` VALUES (696, 1, 'login', '/index.php?r=admini/public/login', '用户登录成功:admin', '123.116.87.10', 1497076749);
INSERT INTO `bage_admin_logger` VALUES (697, 1, 'login', '/index.php?r=admini/public/login', '用户登录成功:admin', '123.116.87.10', 1497092087);
INSERT INTO `bage_admin_logger` VALUES (698, 1, 'login', '/index.php?r=admini/public/login', '用户登录成功:admin', '123.116.87.10', 1497147987);
INSERT INTO `bage_admin_logger` VALUES (699, 1, 'login', '/index.php?r=admini/public/login', '用户登录成功:admin', '203.86.47.85', 1497250079);
INSERT INTO `bage_admin_logger` VALUES (700, 1, 'login', '/index.php?r=admini/public/login', '用户登录成功:admin', '203.86.47.85', 1497250079);
INSERT INTO `bage_admin_logger` VALUES (701, 1, 'login', '/index.php?r=admini/public/login', '用户登录成功:admin', '203.86.47.85', 1497409589);
INSERT INTO `bage_admin_logger` VALUES (702, 1, 'login', '/index.php?r=admini/public/login', '用户登录成功:admin', '203.86.47.85', 1497837213);
INSERT INTO `bage_admin_logger` VALUES (703, 1, 'update', '/index.php?r=admini/post/update&id=94', '编辑内容,ID:94', '203.86.47.85', 1497837756);
INSERT INTO `bage_admin_logger` VALUES (704, 1, 'update', '/index.php?r=admini/post/update&id=94', '编辑内容,ID:94', '203.86.47.85', 1497838293);
INSERT INTO `bage_admin_logger` VALUES (705, 1, 'login', '/index.php?r=admini/public/login', '用户登录成功:admin', '203.86.47.85', 1497839887);
INSERT INTO `bage_admin_logger` VALUES (706, 1, 'login', '/index.php?r=admini/public/login', '用户登录成功:admin', '203.86.47.85', 1497839888);
INSERT INTO `bage_admin_logger` VALUES (707, 1, 'update', '/index.php?r=admini/post/update&id=94', '编辑内容,ID:94', '203.86.47.85', 1497840095);
INSERT INTO `bage_admin_logger` VALUES (708, 1, 'update', '/index.php?r=admini/post/update&id=94', '编辑内容,ID:94', '203.86.47.85', 1497840227);
INSERT INTO `bage_admin_logger` VALUES (709, 1, 'login', '/index.php?r=admini/public/login', '用户登录成功:admin', '203.86.47.85', 1497867188);
INSERT INTO `bage_admin_logger` VALUES (710, 1, 'login', '/index.php?r=admini/public/login', '用户登录成功:admin', '203.86.47.85', 1497922489);
INSERT INTO `bage_admin_logger` VALUES (711, 1, 'update', '/index.php?r=admini/post/update&id=94', '编辑内容,ID:94', '203.86.47.85', 1497922548);
INSERT INTO `bage_admin_logger` VALUES (712, 1, 'update', '/index.php?r=admini/post/update&id=89', '编辑内容,ID:89', '203.86.47.85', 1497923166);
INSERT INTO `bage_admin_logger` VALUES (713, 1, 'update', '/index.php?r=admini/post/update&id=89', '编辑内容,ID:89', '203.86.47.85', 1497923234);
INSERT INTO `bage_admin_logger` VALUES (714, 1, 'update', '/index.php?r=admini/post/update&id=89', '编辑内容,ID:89', '203.86.47.85', 1497923311);
INSERT INTO `bage_admin_logger` VALUES (715, 1, 'delete', '/index.php?r=admini/post/batch', '删除内容，ID:7,6', '203.86.47.85', 1497923372);
INSERT INTO `bage_admin_logger` VALUES (716, 1, 'update', '/index.php?r=admini/catalog/update&id=19', '编辑全局分类,ID:19,名称：我的游记', '203.86.47.85', 1497923408);
INSERT INTO `bage_admin_logger` VALUES (717, 1, 'update', '/index.php?r=admini/post/update&id=92', '编辑内容,ID:92', '203.86.47.85', 1497923473);
INSERT INTO `bage_admin_logger` VALUES (718, 1, 'update', '/index.php?r=admini/post/update&id=92', '编辑内容,ID:92', '203.86.47.85', 1497923528);
INSERT INTO `bage_admin_logger` VALUES (719, 1, 'login', '/index.php?r=admini/public/login', '用户登录成功:admin', '203.86.47.85', 1498011726);
INSERT INTO `bage_admin_logger` VALUES (720, 1, 'login', '/index.php?r=admini/public/login', '用户登录成功:admin', '203.86.47.85', 1498011732);
INSERT INTO `bage_admin_logger` VALUES (721, 1, 'login', '/index.php?r=admini/public/login', '用户登录成功:admin', '203.86.47.85', 1498111080);
INSERT INTO `bage_admin_logger` VALUES (722, 1, 'login', '/index.php?r=admini/public/login', '用户登录成功:admin', '203.86.47.85', 1498203930);
INSERT INTO `bage_admin_logger` VALUES (723, 1, 'login', '/index.php?r=admini/public/login', '用户登录成功:admin', '123.116.75.243', 1498399034);
INSERT INTO `bage_admin_logger` VALUES (724, 1, 'login', '/index.php?r=admini/public/login', '用户登录成功:admin', '123.116.75.243', 1498399034);
INSERT INTO `bage_admin_logger` VALUES (725, 1, 'delete', '/index.php?r=admini/post/batch&command=delete&id=88', '删除内容，ID:88', '123.116.75.243', 1498399104);
INSERT INTO `bage_admin_logger` VALUES (726, 1, 'login', '/index.php?r=admini/public/login', '用户登录成功:admin', '203.86.47.85', 1498620586);
INSERT INTO `bage_admin_logger` VALUES (727, 1, 'login', '/index.php?r=admini/public/login', '用户登录成功:admin', '203.86.47.85', 1498620586);
INSERT INTO `bage_admin_logger` VALUES (728, 1, 'login', '/index.php?r=admini/public/login', '用户登录成功:admin', '203.86.47.85', 1498620594);
INSERT INTO `bage_admin_logger` VALUES (729, 1, 'login', '/index.php?r=admini/public/login', '用户登录成功:admin', '203.86.47.85', 1498620598);
INSERT INTO `bage_admin_logger` VALUES (730, 1, 'login', '/index.php?r=admini/public/login', '用户登录成功:admin', '23.95.113.157', 1502679018);
INSERT INTO `bage_admin_logger` VALUES (731, 1, 'login', '/index.php?r=admini/public/login', '用户登录成功:admin', '23.95.113.157', 1502679018);
INSERT INTO `bage_admin_logger` VALUES (732, 1, 'login', '/index.php?r=admini/public/login', '用户登录成功:admin', '203.86.47.85', 1505180990);
INSERT INTO `bage_admin_logger` VALUES (733, 1, 'login', '/index.php?r=admini/public/login', '用户登录成功:admin', '203.86.47.85', 1505181018);
INSERT INTO `bage_admin_logger` VALUES (734, 1, 'login', '/index.php?r=admini/public/login', '用户登录成功:admin', '203.86.47.85', 1505181018);
INSERT INTO `bage_admin_logger` VALUES (735, 1, 'login', '/index.php?r=admini/public/login', '用户登录成功:admin', '121.69.48.140', 1509264916);
INSERT INTO `bage_admin_logger` VALUES (736, 1, 'login', '/index.php?r=admini/public/login', '用户登录成功:admin', '123.116.94.52', 1512217722);
INSERT INTO `bage_admin_logger` VALUES (737, 1, 'create', '/index.php?r=admini/post/create', '录入内容,ID:97', '123.116.94.52', 1512223240);
INSERT INTO `bage_admin_logger` VALUES (738, 1, 'update', '/index.php?r=admini/post/update&id=97', '编辑内容,ID:97', '123.116.94.52', 1512227949);
INSERT INTO `bage_admin_logger` VALUES (739, 1, 'login', '/index.php?r=admini/public/login', '用户登录成功:admin', '123.116.94.52', 1512278506);
INSERT INTO `bage_admin_logger` VALUES (740, 1, 'login', '/index.php?r=admini/public/login', '用户登录成功:admin', '123.116.94.52', 1512278507);
INSERT INTO `bage_admin_logger` VALUES (741, 1, 'login', '/index.php?r=admini/public/login', '用户登录成功:admin', '203.86.47.85', 1514184929);
INSERT INTO `bage_admin_logger` VALUES (742, 1, 'create', '/index.php?r=admini/post/create', '录入内容,ID:98', '203.86.47.85', 1514185011);
INSERT INTO `bage_admin_logger` VALUES (743, 1, 'login', '/index.php?r=admini/public/login', '用户登录成功:admin', '123.116.90.124', 1514215998);
INSERT INTO `bage_admin_logger` VALUES (744, 1, 'update', '/index.php?r=admini/post/update&id=98', '编辑内容,ID:98', '123.116.90.124', 1514216041);
INSERT INTO `bage_admin_logger` VALUES (745, 1, 'login', '/index.php?r=admini/public/login', '用户登录成功:admin', '123.116.64.186', 1515254534);
INSERT INTO `bage_admin_logger` VALUES (746, 1, 'delete', '/index.php?r=admini/post/batch&command=delete&id=91', '删除内容，ID:91', '123.116.64.186', 1515254593);
INSERT INTO `bage_admin_logger` VALUES (747, 0, 'login', '/index.php?r=admini/public/login', '登录失败，密码不正确:admin，使用密码：tanjian421302+', '183.156.36.11', 1515636397);
INSERT INTO `bage_admin_logger` VALUES (748, 0, 'login', '/index.php?r=admini/public/login', '登录失败，密码不正确:admin，使用密码：tanjian421302+', '183.156.36.11', 1515636397);
INSERT INTO `bage_admin_logger` VALUES (749, 1, 'login', '/index.php?r=admini/public/login', '用户登录成功:admin', '183.156.36.11', 1515636414);
INSERT INTO `bage_admin_logger` VALUES (750, 1, 'create', '/index.php?r=admini/post/create', '录入内容,ID:99', '183.156.36.11', 1515636582);
INSERT INTO `bage_admin_logger` VALUES (751, 1, 'login', '/index.php?r=admini/public/login', '用户登录成功:admin', '183.157.45.243', 1516367866);
INSERT INTO `bage_admin_logger` VALUES (752, 1, 'delete', '/index.php?r=admini/post/batch&command=delete&id=99', '删除内容，ID:99', '183.157.45.243', 1516367912);
INSERT INTO `bage_admin_logger` VALUES (753, 1, 'create', '/index.php?r=admini/post/create', '录入内容,ID:100', '183.157.45.243', 1516376327);
INSERT INTO `bage_admin_logger` VALUES (754, 1, 'login', '/index.php?r=admini/public/login', '用户登录成功:admin', '183.157.47.170', 1516610138);
INSERT INTO `bage_admin_logger` VALUES (755, 1, 'login', '/index.php?r=admini/public/login', '用户登录成功:admin', '183.157.47.170', 1516610139);
INSERT INTO `bage_admin_logger` VALUES (756, 1, 'delete', '/index.php?r=admini/attr/batch&command=delete&id=5', '属性删除，ID:5', '183.157.47.170', 1516623333);
INSERT INTO `bage_admin_logger` VALUES (757, 1, 'update', '/index.php?r=admini/operation/adUpdate&id=2', '编辑广告，ID:2', '183.157.47.170', 1516623374);
INSERT INTO `bage_admin_logger` VALUES (758, 1, 'update', '/index.php?r=admini/catalog/update&id=19', '编辑全局分类,ID:19,名称：我的游记', '183.157.47.170', 1516623625);
INSERT INTO `bage_admin_logger` VALUES (759, 1, 'delete', '/index.php?r=admini/catalog/batch&command=delete&id=11', '删除全局分类，ID:11', '183.157.47.170', 1516623837);
INSERT INTO `bage_admin_logger` VALUES (760, 1, 'update', '/index.php?r=admini/config/seo', '更新系统配置，模块：seo', '183.157.47.170', 1516624198);
INSERT INTO `bage_admin_logger` VALUES (761, 1, 'update', '/index.php?r=admini/post/commentUpdate&id=23', '编辑内容评论，ID:23', '183.157.47.170', 1516625833);
INSERT INTO `bage_admin_logger` VALUES (762, 1, 'update', '/index.php?r=admini/post/update&id=100', '编辑内容,ID:100', '183.157.47.170', 1516628011);
INSERT INTO `bage_admin_logger` VALUES (763, 1, 'update', '/index.php?r=admini/post/update&id=98', '编辑内容,ID:98', '183.157.47.170', 1516628161);
INSERT INTO `bage_admin_logger` VALUES (764, 1, 'update', '/index.php?r=admini/post/update&id=98', '编辑内容,ID:98', '183.157.47.170', 1516628162);
INSERT INTO `bage_admin_logger` VALUES (765, 1, 'update', '/index.php?r=admini/catalog/update&id=18', '编辑全局分类,ID:18,名称：每周笔记', '183.157.47.170', 1516635552);
INSERT INTO `bage_admin_logger` VALUES (766, 1, 'update', '/index.php?r=admini/post/update&id=93', '编辑内容,ID:93', '183.157.47.170', 1516635649);
INSERT INTO `bage_admin_logger` VALUES (767, 0, 'login', '/index.php?r=admini/public/login', '登录失败，用户不存在:root', '36.23.181.104', 1516773738);
INSERT INTO `bage_admin_logger` VALUES (768, 1, 'login', '/index.php?r=admini/public/login', '用户登录成功:admin', '36.23.181.104', 1516773783);
INSERT INTO `bage_admin_logger` VALUES (769, 1, 'delete', '/index.php?r=admini/post/batch&command=delete&id=94', '删除内容，ID:94', '36.23.181.104', 1516773799);
INSERT INTO `bage_admin_logger` VALUES (770, 1, 'update', '/index.php?r=admini/post/update&id=96', '编辑内容,ID:96', '36.23.181.104', 1516773871);
INSERT INTO `bage_admin_logger` VALUES (771, 1, 'update', '/index.php?r=admini/post/update&id=96', '编辑内容,ID:96', '36.23.181.104', 1516774216);
INSERT INTO `bage_admin_logger` VALUES (772, 1, 'update', '/index.php?r=admini/post/update&id=97', '编辑内容,ID:97', '36.23.181.104', 1516774476);
INSERT INTO `bage_admin_logger` VALUES (773, 1, 'login', '/index.php?r=admini/public/login', '用户登录成功:admin', '183.157.57.30', 1516978484);
INSERT INTO `bage_admin_logger` VALUES (774, 0, 'login', '/index.php?r=admini/public/login', '登录失败，密码不正确:admin，使用密码：654321', '183.157.57.30', 1516978488);
INSERT INTO `bage_admin_logger` VALUES (775, 1, 'login', '/index.php?r=admini/public/login', '用户登录成功:admin', '183.157.57.30', 1516978512);
INSERT INTO `bage_admin_logger` VALUES (776, 1, 'create', '/index.php?r=admini/post/create', '录入内容,ID:101', '183.157.57.30', 1516978624);
INSERT INTO `bage_admin_logger` VALUES (777, 1, 'update', '/index.php?r=admini/post/update&id=101', '编辑内容,ID:101', '183.157.57.30', 1516978912);
INSERT INTO `bage_admin_logger` VALUES (778, 1, 'update', '/index.php?r=admini/post/update&id=101', '编辑内容,ID:101', '183.157.57.30', 1516979099);
INSERT INTO `bage_admin_logger` VALUES (779, 1, 'update', '/index.php?r=admini/post/update&id=101', '编辑内容,ID:101', '183.157.57.30', 1516979149);
INSERT INTO `bage_admin_logger` VALUES (780, 1, 'update', '/index.php?r=admini/post/update&id=101', '编辑内容,ID:101', '183.157.57.30', 1516979207);
INSERT INTO `bage_admin_logger` VALUES (781, 1, 'update', '/index.php?r=admini/post/update&id=101', '编辑内容,ID:101', '183.157.57.30', 1516979572);
INSERT INTO `bage_admin_logger` VALUES (782, 1, 'update', '/index.php?r=admini/post/update&id=101', '编辑内容,ID:101', '183.157.57.30', 1516979607);
INSERT INTO `bage_admin_logger` VALUES (783, 1, 'login', '/index.php?r=admini/public/login', '用户登录成功:admin', '183.156.41.106', 1517212508);
INSERT INTO `bage_admin_logger` VALUES (784, 1, 'create', '/index.php?r=admini/catalog/create', '录入全局分类,ID:名称：interest', '183.156.41.106', 1517212577);
INSERT INTO `bage_admin_logger` VALUES (785, 1, 'update', '/index.php?r=admini/catalog/update&id=20', '编辑全局分类,ID:20,名称：INTEREST', '183.156.41.106', 1517212617);
INSERT INTO `bage_admin_logger` VALUES (786, 1, 'login', '/index.php?r=admini/public/login', '用户登录成功:admin', '183.156.41.106', 1517318864);
INSERT INTO `bage_admin_logger` VALUES (787, 1, 'update', '/index.php?r=admini/config/index', '更新系统配置，模块：index', '183.156.41.106', 1517322094);
INSERT INTO `bage_admin_logger` VALUES (788, 1, 'update', '/index.php?r=admini/page/update&id=1', '编辑单页，ID:1', '183.156.41.106', 1517322421);
INSERT INTO `bage_admin_logger` VALUES (789, 1, 'update', '/index.php?r=admini/page/update&id=1', '编辑单页，ID:1', '183.156.41.106', 1517322459);
INSERT INTO `bage_admin_logger` VALUES (790, 1, 'update', '/index.php?r=admini/page/update&id=3', '编辑单页，ID:3', '183.156.41.106', 1517322611);
INSERT INTO `bage_admin_logger` VALUES (791, 1, 'update', '/index.php?r=admini/page/update&id=4', '编辑单页，ID:4', '183.156.41.106', 1517322685);
INSERT INTO `bage_admin_logger` VALUES (792, 1, 'update', '/index.php?r=admini/page/update&id=2', '编辑单页，ID:2', '183.156.41.106', 1517322712);
INSERT INTO `bage_admin_logger` VALUES (793, 1, 'update', '/index.php?r=admini/page/update&id=4', '编辑单页，ID:4', '183.156.41.106', 1517322741);
INSERT INTO `bage_admin_logger` VALUES (794, 1, 'create', '/index.php?r=admini/post/create', '录入内容,ID:102', '183.156.41.106', 1517327796);
INSERT INTO `bage_admin_logger` VALUES (795, 1, 'update', '/index.php?r=admini/post/update&id=102', '编辑内容,ID:102', '183.156.41.106', 1517327851);
INSERT INTO `bage_admin_logger` VALUES (796, 1, 'update', '/index.php?r=admini/post/update&id=102', '编辑内容,ID:102', '183.156.41.106', 1517328176);
INSERT INTO `bage_admin_logger` VALUES (797, 1, 'update', '/index.php?r=admini/post/update&id=102', '编辑内容,ID:102', '183.156.41.106', 1517328381);
INSERT INTO `bage_admin_logger` VALUES (798, 1, 'update', '/index.php?r=admini/post/update&id=102', '编辑内容,ID:102', '183.156.41.106', 1517328585);
INSERT INTO `bage_admin_logger` VALUES (799, 1, 'login', '/index.php?r=admini/public/login', '用户登录成功:admin', '183.156.41.106', 1517386038);
INSERT INTO `bage_admin_logger` VALUES (800, 1, 'update', '/index.php?r=admini/post/update&id=102', '编辑内容,ID:102', '183.156.41.106', 1517386082);
INSERT INTO `bage_admin_logger` VALUES (801, 1, 'update', '/index.php?r=admini/post/update&id=95', '编辑内容,ID:95', '183.156.41.106', 1517398063);
INSERT INTO `bage_admin_logger` VALUES (802, 1, 'login', '/index.php?r=admini/public/login', '用户登录成功:admin', '122.235.169.247', 1517479419);
INSERT INTO `bage_admin_logger` VALUES (803, 1, 'create', '/index.php?r=admini/post/create', '录入内容,ID:103', '122.235.169.247', 1517479554);
INSERT INTO `bage_admin_logger` VALUES (804, 1, 'update', '/index.php?r=admini/post/update&id=103', '编辑内容,ID:103', '122.235.169.247', 1517479671);
INSERT INTO `bage_admin_logger` VALUES (805, 1, 'create', '/index.php?r=admini/post/create', '录入内容,ID:104', '122.235.169.247', 1517486297);
INSERT INTO `bage_admin_logger` VALUES (806, 1, 'update', '/index.php?r=admini/post/update&id=104', '编辑内容,ID:104', '122.235.169.247', 1517486606);
INSERT INTO `bage_admin_logger` VALUES (807, 1, 'update', '/index.php?r=admini/post/update&id=104', '编辑内容,ID:104', '122.235.169.247', 1517487279);
INSERT INTO `bage_admin_logger` VALUES (808, 1, 'login', '/index.php?r=admini/public/login', '用户登录成功:admin', '183.156.41.106', 1517500657);
INSERT INTO `bage_admin_logger` VALUES (809, 1, 'login', '/index.php?r=admini/public/login', '用户登录成功:admin', '125.120.189.18', 1517584912);
INSERT INTO `bage_admin_logger` VALUES (810, 1, 'create', '/index.php?r=admini/post/create', '录入内容,ID:105', '125.120.189.18', 1517585241);
INSERT INTO `bage_admin_logger` VALUES (811, 1, 'login', '/index.php?r=admini/public/login', '用户登录成功:admin', '125.120.189.18', 1517650062);
INSERT INTO `bage_admin_logger` VALUES (812, 1, 'update', '/index.php?r=admini/template/updateTpl&filename=X2luY2x1ZGUvc2lkZWJhcl9wb3N0LnBocA', '编辑模板', '125.120.189.18', 1517650129);
INSERT INTO `bage_admin_logger` VALUES (813, 0, 'login', '/index.php?r=admini/public/login', '登录失败，密码不正确:admin，使用密码：654321', '183.157.62.147', 1517848838);
INSERT INTO `bage_admin_logger` VALUES (814, 0, 'login', '/index.php?r=admini/public/login', '登录失败，密码不正确:admin，使用密码：654321', '183.157.62.147', 1517848838);
INSERT INTO `bage_admin_logger` VALUES (815, 0, 'login', '/index.php?r=admini/public/login', '登录失败，密码不正确:admin，使用密码：654321', '183.157.62.147', 1517848839);
INSERT INTO `bage_admin_logger` VALUES (816, 1, 'login', '/index.php?r=admini/public/login', '用户登录成功:admin', '183.157.62.147', 1517848874);
INSERT INTO `bage_admin_logger` VALUES (817, 1, 'login', '/index.php?r=admini/public/login', '用户登录成功:admin', '183.157.62.147', 1517848921);
INSERT INTO `bage_admin_logger` VALUES (818, 1, 'login', '/index.php?r=admini/public/login', '用户登录成功:admin', '183.157.62.147', 1517848921);
INSERT INTO `bage_admin_logger` VALUES (819, 1, 'create', '/index.php?r=admini/post/create', '录入内容,ID:106', '183.157.62.147', 1517850270);
INSERT INTO `bage_admin_logger` VALUES (820, 1, 'update', '/index.php?r=admini/post/update&id=106', '编辑内容,ID:106', '183.157.62.147', 1517850367);
INSERT INTO `bage_admin_logger` VALUES (821, 1, 'update', '/index.php?r=admini/post/update&id=106', '编辑内容,ID:106', '183.157.62.147', 1517850558);
INSERT INTO `bage_admin_logger` VALUES (822, 1, 'login', '/index.php?r=admini/public/login', '用户登录成功:admin', '183.157.62.147', 1517930294);
INSERT INTO `bage_admin_logger` VALUES (823, 1, 'update', '/index.php?r=admini/page/update&id=1', '编辑单页，ID:1', '183.157.62.147', 1517931080);
INSERT INTO `bage_admin_logger` VALUES (824, 1, 'update', '/index.php?r=admini/page/update&id=1', '编辑单页，ID:1', '183.157.62.147', 1517931183);
INSERT INTO `bage_admin_logger` VALUES (825, 1, 'update', '/index.php?r=admini/page/update&id=1', '编辑单页，ID:1', '183.157.62.147', 1517932050);
INSERT INTO `bage_admin_logger` VALUES (826, 1, 'update', '/index.php?r=admini/page/update&id=1', '编辑单页，ID:1', '183.157.62.147', 1517932136);
INSERT INTO `bage_admin_logger` VALUES (827, 1, 'update', '/index.php?r=admini/page/update&id=1', '编辑单页，ID:1', '183.157.62.147', 1517932244);
INSERT INTO `bage_admin_logger` VALUES (828, 1, 'login', '/index.php?r=admini/public/login', '用户登录成功:admin', '183.157.62.147', 1517977948);
INSERT INTO `bage_admin_logger` VALUES (829, 1, 'update', '/index.php?r=admini/page/update&id=1', '编辑单页，ID:1', '183.157.62.147', 1517979359);
INSERT INTO `bage_admin_logger` VALUES (830, 1, 'login', '/index.php?r=admini/public/login', '用户登录成功:admin', '183.156.40.197', 1518257223);
INSERT INTO `bage_admin_logger` VALUES (831, 1, 'login', '/index.php?r=admini/public/login', '用户登录成功:admin', '183.156.40.197', 1518356448);
INSERT INTO `bage_admin_logger` VALUES (832, 1, 'login', '/index.php?r=admini/public/login', '用户登录成功:admin', '183.156.40.197', 1518356448);
INSERT INTO `bage_admin_logger` VALUES (833, 1, 'create', '/index.php?r=admini/post/create', '录入内容,ID:107', '183.156.40.197', 1518356672);
INSERT INTO `bage_admin_logger` VALUES (834, 0, 'login', '/index.php?r=admini/public/login', '登录失败，密码不正确:admin，使用密码：tann1013', '183.156.41.12', 1519635773);
INSERT INTO `bage_admin_logger` VALUES (835, 0, 'login', '/index.php?r=admini/public/login', '登录失败，密码不正确:admin，使用密码：654321', '183.156.41.12', 1519635784);
INSERT INTO `bage_admin_logger` VALUES (836, 0, 'login', '/index.php?r=admini/public/login', '登录失败，密码不正确:admin，使用密码：654321', '183.156.41.12', 1519635784);
INSERT INTO `bage_admin_logger` VALUES (837, 0, 'login', '/index.php?r=admini/public/login', '登录失败，密码不正确:admin，使用密码：654321', '183.156.41.12', 1519635791);
INSERT INTO `bage_admin_logger` VALUES (838, 1, 'login', '/index.php?r=admini/public/login', '用户登录成功:admin', '183.156.41.12', 1519635811);
INSERT INTO `bage_admin_logger` VALUES (839, 1, 'login', '/index.php?r=admini/public/login', '用户登录成功:admin', '183.156.41.12', 1519635812);
INSERT INTO `bage_admin_logger` VALUES (840, 1, 'login', '/index.php?r=admini/public/login', '用户登录成功:admin', '183.156.41.12', 1519635817);
INSERT INTO `bage_admin_logger` VALUES (841, 1, 'login', '/index.php?r=admini/public/login', '用户登录成功:admin', '183.156.41.12', 1519635818);
INSERT INTO `bage_admin_logger` VALUES (842, 1, 'create', '/index.php?r=admini/post/create', '录入内容,ID:108', '183.156.41.12', 1519635857);
INSERT INTO `bage_admin_logger` VALUES (843, 0, 'login', '/index.php?r=admini/public/login', '登录失败，密码不正确:admin，使用密码：asdf@421302+', '115.205.243.156', 1521022489);
INSERT INTO `bage_admin_logger` VALUES (844, 0, 'login', '/index.php?r=admini/public/login', '登录失败，密码不正确:admin，使用密码：654321', '115.205.243.156', 1521022501);
INSERT INTO `bage_admin_logger` VALUES (845, 0, 'login', '/index.php?r=admini/public/login', '登录失败，密码不正确:admin，使用密码：123456', '115.205.243.156', 1521022515);
INSERT INTO `bage_admin_logger` VALUES (846, 0, 'login', '/index.php?r=admini/public/login', '登录失败，密码不正确:admin，使用密码：123456', '115.205.243.156', 1521022525);
INSERT INTO `bage_admin_logger` VALUES (847, 0, 'login', '/index.php?r=admini/public/login', '登录失败，密码不正确:admin，使用密码：123456', '115.205.243.156', 1521022525);
INSERT INTO `bage_admin_logger` VALUES (848, 0, 'login', '/index.php?r=admini/public/login', '登录失败，密码不正确:admin，使用密码：tanjian421302+', '115.205.243.156', 1521022542);
INSERT INTO `bage_admin_logger` VALUES (849, 0, 'login', '/index.php?r=admini/public/login', '登录失败，密码不正确:admin，使用密码：tanjian421302+', '115.205.243.156', 1521022548);
INSERT INTO `bage_admin_logger` VALUES (850, 0, 'login', '/index.php?r=admini/public/login', '登录失败，密码不正确:admin，使用密码：tanjian421302+', '115.205.243.156', 1521022553);
INSERT INTO `bage_admin_logger` VALUES (851, 0, 'login', '/index.php?r=admini/public/login', '登录失败，密码不正确:admin，使用密码：654321', '115.205.243.156', 1521022570);
INSERT INTO `bage_admin_logger` VALUES (852, 0, 'login', '/index.php?r=admini/public/login', '登录失败，密码不正确:admin，使用密码：123456', '115.205.243.156', 1521023017);
INSERT INTO `bage_admin_logger` VALUES (853, 0, 'login', '/index.php?r=admini/public/login', '登录失败，密码不正确:admin，使用密码：123456', '115.205.243.156', 1521023026);
INSERT INTO `bage_admin_logger` VALUES (854, 0, 'login', '/index.php?r=admini/public/login', '登录失败，密码不正确:admin，使用密码：654321', '115.205.243.156', 1521023063);
INSERT INTO `bage_admin_logger` VALUES (855, 0, 'login', '/index.php?r=admini/public/login', '登录失败，密码不正确:admin，使用密码：tanjian421302', '115.205.243.156', 1521023087);
INSERT INTO `bage_admin_logger` VALUES (856, 0, 'login', '/index.php?r=admini/public/login', '登录失败，密码不正确:admin，使用密码：123456', '115.205.243.156', 1521023102);
INSERT INTO `bage_admin_logger` VALUES (857, 0, 'login', '/index.php?r=admini/public/login', '登录失败，密码不正确:admin，使用密码：654321', '115.205.243.156', 1521023126);
INSERT INTO `bage_admin_logger` VALUES (858, 0, 'login', '/index.php?r=admini/public/login', '登录失败，密码不正确:admin，使用密码：tanjian@421302+', '115.205.243.156', 1521023239);
INSERT INTO `bage_admin_logger` VALUES (859, 0, 'login', '/index.php?r=admini/public/login', '登录失败，密码不正确:admin，使用密码：tanjian@421302+', '115.205.243.156', 1521023239);
INSERT INTO `bage_admin_logger` VALUES (860, 0, 'login', '/index.php?r=admini/public/login', '登录失败，密码不正确:admin，使用密码：tanjian@421970+', '115.205.243.156', 1521023259);
INSERT INTO `bage_admin_logger` VALUES (861, 0, 'login', '/index.php?r=admini/public/login', '登录失败，密码不正确:admin，使用密码：tanjian@421970', '115.205.243.156', 1521023266);
INSERT INTO `bage_admin_logger` VALUES (862, 0, 'login', '/index.php?r=admini/public/login', '登录失败，密码不正确:admin，使用密码：tanjian@421970', '115.205.243.156', 1521023266);
INSERT INTO `bage_admin_logger` VALUES (863, 0, 'login', '/index.php?r=admini/public/login', '登录失败，密码不正确:admin，使用密码：tanjian421302+', '115.205.243.156', 1521023309);
INSERT INTO `bage_admin_logger` VALUES (864, 0, 'login', '/index.php?r=admini/public/login', '登录失败，密码不正确:admin，使用密码：tanjian421970', '115.205.243.156', 1521023330);
INSERT INTO `bage_admin_logger` VALUES (865, 0, 'login', '/index.php?r=admini/public/login', '登录失败，密码不正确:admin，使用密码：tanjian421970', '115.205.243.156', 1521023340);
INSERT INTO `bage_admin_logger` VALUES (866, 0, 'login', '/index.php?r=admini/public/login', '登录失败，密码不正确:admin，使用密码：tanjian421970', '115.205.243.156', 1521023351);
INSERT INTO `bage_admin_logger` VALUES (867, 0, 'login', '/index.php?r=admini/public/login', '登录失败，密码不正确:admin，使用密码：tanjian421970', '115.205.243.156', 1521023351);
INSERT INTO `bage_admin_logger` VALUES (868, 0, 'login', '/index.php?r=admini/public/login', '登录失败，密码不正确:admin，使用密码：tanjian421970', '115.205.243.156', 1521023368);
INSERT INTO `bage_admin_logger` VALUES (869, 0, 'login', '/index.php?r=admini/public/login', '登录失败，密码不正确:admin，使用密码：tanjian421302+', '115.205.243.156', 1521023427);
INSERT INTO `bage_admin_logger` VALUES (870, 0, 'login', '/index.php?r=admini/public/login', '登录失败，密码不正确:admin，使用密码：654321', '115.205.243.156', 1521023456);
INSERT INTO `bage_admin_logger` VALUES (871, 0, 'login', '/index.php?r=admini/public/login', '登录失败，密码不正确:admin，使用密码：654321', '115.205.243.156', 1521023469);
INSERT INTO `bage_admin_logger` VALUES (872, 0, 'login', '/index.php?r=admini/public/login', '登录失败，密码不正确:admin，使用密码：654321', '115.205.243.156', 1521023515);
INSERT INTO `bage_admin_logger` VALUES (873, 0, 'login', '/index.php?r=admini/public/login', '登录失败，密码不正确:admin，使用密码：654321', '115.205.243.156', 1521023515);
INSERT INTO `bage_admin_logger` VALUES (874, 0, 'login', '/index.php?r=admini/public/login', '登录失败，密码不正确:admin，使用密码：tanjian@421302+', '115.205.243.156', 1521023591);
INSERT INTO `bage_admin_logger` VALUES (875, 0, 'login', '/index.php?r=admini/public/login', '登录失败，密码不正确:admin，使用密码：tanjian@421302+', '115.205.243.156', 1521023592);
INSERT INTO `bage_admin_logger` VALUES (876, 0, 'login', '/index.php?r=admini/public/login', '登录失败，密码不正确:admin，使用密码：tanjian421302', '115.205.243.156', 1521023748);
INSERT INTO `bage_admin_logger` VALUES (877, 0, 'login', '/index.php?r=admini/public/login', '登录失败，密码不正确:admin，使用密码：tanjian421302', '115.205.243.156', 1521023934);
INSERT INTO `bage_admin_logger` VALUES (878, 0, 'login', '/index.php?r=admini/public/login', '登录失败，密码不正确:admin，使用密码：tanjian421302', '115.205.243.156', 1521023934);
INSERT INTO `bage_admin_logger` VALUES (879, 0, 'login', '/index.php?r=admini/public/login', '登录失败，密码不正确:admin，使用密码：tanjian421970', '115.205.243.156', 1521023970);
INSERT INTO `bage_admin_logger` VALUES (880, 0, 'login', '/index.php?r=admini/public/login', '登录失败，密码不正确:admin，使用密码：tanjian421970', '115.205.243.156', 1521023970);
INSERT INTO `bage_admin_logger` VALUES (881, 1, 'login', '/index.php?r=admini/public/login', '用户登录成功:admin', '115.205.243.156', 1521023976);
INSERT INTO `bage_admin_logger` VALUES (882, 0, 'login', '/index.php?r=admini/public/login', '登录失败，密码不正确:admin，使用密码：tann1013', '115.205.243.156', 1521024015);
INSERT INTO `bage_admin_logger` VALUES (883, 0, 'login', '/index.php?r=admini/public/login', '登录失败，密码不正确:admin，使用密码：admin', '115.205.243.156', 1521024048);
INSERT INTO `bage_admin_logger` VALUES (884, 0, 'login', '/index.php?r=admini/public/login', '登录失败，密码不正确:admin，使用密码：admin', '115.205.243.156', 1521024058);
INSERT INTO `bage_admin_logger` VALUES (885, 0, 'login', '/index.php?r=admini/public/login', '登录失败，密码不正确:admin，使用密码：123456', '115.205.243.156', 1521024063);
INSERT INTO `bage_admin_logger` VALUES (886, 0, 'login', '/index.php?r=admini/public/login', '登录失败，密码不正确:admin，使用密码：123456', '115.205.243.156', 1521024070);
INSERT INTO `bage_admin_logger` VALUES (887, 0, 'login', '/index.php?r=admini/public/login', '登录失败，密码不正确:admin，使用密码：tanjian421302+', '115.205.243.156', 1521024079);
INSERT INTO `bage_admin_logger` VALUES (888, 0, 'login', '/index.php?r=admini/public/login', '登录失败，密码不正确:admin，使用密码：tanjian421302+', '115.205.243.156', 1521024079);
INSERT INTO `bage_admin_logger` VALUES (889, 0, 'login', '/index.php?r=admini/public/login', '登录失败，密码不正确:admin，使用密码：tanjian@421302+', '115.205.243.156', 1521024095);
INSERT INTO `bage_admin_logger` VALUES (890, 0, 'login', '/index.php?r=admini/public/login', '登录失败，密码不正确:admin，使用密码：tanjian@421302+', '115.205.243.156', 1521024095);
INSERT INTO `bage_admin_logger` VALUES (891, 0, 'login', '/index.php?r=admini/public/login', '登录失败，密码不正确:admin，使用密码：654321', '122.233.162.93', 1521171454);
INSERT INTO `bage_admin_logger` VALUES (892, 0, 'login', '/index.php?r=admini/public/login', '登录失败，密码不正确:admin，使用密码：654321', '122.233.162.93', 1521171459);
INSERT INTO `bage_admin_logger` VALUES (893, 0, 'login', '/index.php?r=admini/public/login', '登录失败，密码不正确:admin，使用密码：654321', '122.233.162.93', 1521171483);
INSERT INTO `bage_admin_logger` VALUES (894, 0, 'login', '/index.php?r=admini/public/login', '登录失败，密码不正确:admin，使用密码：421302', '115.205.243.19', 1521542053);
INSERT INTO `bage_admin_logger` VALUES (895, 0, 'login', '/index.php?r=admini/public/login', '登录失败，密码不正确:admin，使用密码：654321', '115.205.243.19', 1521542058);
INSERT INTO `bage_admin_logger` VALUES (896, 0, 'login', '/index.php?r=admini/public/login', '登录失败，密码不正确:admin，使用密码：654321', '115.205.243.19', 1521542058);
INSERT INTO `bage_admin_logger` VALUES (897, 0, 'login', '/index.php?r=admini/public/login', '登录失败，密码不正确:admin，使用密码：tanjian421970', '115.205.243.19', 1521542097);
INSERT INTO `bage_admin_logger` VALUES (898, 1, 'login', '/index.php?r=admini/public/login', '用户登录成功:admin', '115.205.243.19', 1521542098);
INSERT INTO `bage_admin_logger` VALUES (899, 1, 'login', '/index.php?r=admini/public/login', '用户登录成功:admin', '115.205.243.19', 1521542099);
INSERT INTO `bage_admin_logger` VALUES (900, 1, 'login', '/index.php?r=admini/public/login', '用户登录成功:admin', '115.205.243.19', 1521542181);
INSERT INTO `bage_admin_logger` VALUES (901, 1, 'login', '/index.php?r=admini/public/login', '用户登录成功:admin', '115.205.243.19', 1521542185);
INSERT INTO `bage_admin_logger` VALUES (902, 0, 'login', '/index.php?r=admini/public/login', '登录失败，密码不正确:admin，使用密码：tann1013', '183.157.60.44', 1521807700);
INSERT INTO `bage_admin_logger` VALUES (903, 1, 'login', '/index.php?r=admini/public/login', '用户登录成功:admin', '183.157.60.44', 1521807745);
INSERT INTO `bage_admin_logger` VALUES (904, 1, 'login', '/index.php?r=admini/public/login', '用户登录成功:admin', '183.157.60.44', 1521807745);
INSERT INTO `bage_admin_logger` VALUES (905, 1, 'create', '/index.php?r=admini/post/create', '录入内容,ID:109', '183.157.60.44', 1521807813);
INSERT INTO `bage_admin_logger` VALUES (906, 1, 'update', '/index.php?r=admini/post/update&id=109', '编辑内容,ID:109', '183.157.60.44', 1521807842);
INSERT INTO `bage_admin_logger` VALUES (907, 1, 'login', '/index.php?r=admini/public/login', '用户登录成功:admin', '183.129.208.50', 1522485342);
INSERT INTO `bage_admin_logger` VALUES (908, 1, 'login', '/index.php?r=admini/public/login', '用户登录成功:admin', '183.129.208.50', 1522485342);
INSERT INTO `bage_admin_logger` VALUES (909, 1, 'create', '/index.php?r=admini/post/create', '录入内容,ID:110', '183.129.208.50', 1522485408);
INSERT INTO `bage_admin_logger` VALUES (910, 1, 'login', '/index.php?r=admini/public/login', '用户登录成功:admin', '183.129.208.50', 1523177053);
INSERT INTO `bage_admin_logger` VALUES (911, 1, 'login', '/index.php?r=admini/public/login', '用户登录成功:admin', '183.129.208.50', 1523177053);
INSERT INTO `bage_admin_logger` VALUES (912, 1, 'login', '/index.php?r=admini/public/login', '用户登录成功:admin', '183.156.36.208', 1523285042);
INSERT INTO `bage_admin_logger` VALUES (913, 1, 'login', '/index.php?r=admini/public/login', '用户登录成功:admin', '115.198.109.69', 1524999046);
INSERT INTO `bage_admin_logger` VALUES (914, 1, 'login', '/index.php?r=admini/public/login', '用户登录成功:admin', '115.198.109.69', 1524999046);
INSERT INTO `bage_admin_logger` VALUES (915, 1, 'delete', '/index.php?r=admini/post/batch&command=delete&id=110', '删除内容，ID:110', '115.198.109.69', 1524999058);
INSERT INTO `bage_admin_logger` VALUES (916, 1, 'delete', '/index.php?r=admini/post/batch&command=delete&id=108', '删除内容，ID:108', '115.198.109.69', 1524999063);
INSERT INTO `bage_admin_logger` VALUES (917, 1, 'login', '/index.php?r=admini/public/login', '用户登录成功:admin', '183.156.35.34', 1525534580);
INSERT INTO `bage_admin_logger` VALUES (918, 1, 'login', '/index.php?r=admini/public/login', '用户登录成功:admin', '183.156.35.34', 1525534580);
INSERT INTO `bage_admin_logger` VALUES (919, 0, 'login', '/index.php?r=admini/public/login', '登录失败，密码不正确:admin，使用密码：admin', '127.0.0.1', 1607570617);
INSERT INTO `bage_admin_logger` VALUES (920, 0, 'login', '/index.php?r=admini/public/login', '登录失败，密码不正确:admin，使用密码：admin', '127.0.0.1', 1607570640);
INSERT INTO `bage_admin_logger` VALUES (921, 0, 'login', '/index.php?r=admini/public/login', '登录失败，密码不正确:admin，使用密码：admin', '127.0.0.1', 1607570650);
INSERT INTO `bage_admin_logger` VALUES (922, 0, 'login', '/index.php?r=admini/public/login', '登录失败，密码不正确:admin，使用密码：admin', '127.0.0.1', 1607570652);
INSERT INTO `bage_admin_logger` VALUES (923, 0, 'login', '/index.php?r=admini/public/login', '登录失败，密码不正确:admin，使用密码：admin', '127.0.0.1', 1607570658);
INSERT INTO `bage_admin_logger` VALUES (924, 0, 'login', '/index.php?r=admini/public/login', '登录失败，密码不正确:admin，使用密码：admin', '127.0.0.1', 1607570663);
INSERT INTO `bage_admin_logger` VALUES (925, 1, 'login', '/index.php?r=admini/public/login', '用户登录成功:admin', '127.0.0.1', 1607570676);
INSERT INTO `bage_admin_logger` VALUES (926, 1, 'login', '/index.php?r=admini/public/login', '用户登录成功:admin', '127.0.0.1', 1607570698);
INSERT INTO `bage_admin_logger` VALUES (927, 1, 'login', '/index.php?r=admini/public/login', '用户登录成功:admin', '127.0.0.1', 1607570699);
INSERT INTO `bage_admin_logger` VALUES (928, 0, 'login', '/index.php?r=admini/public/login', '登录失败，密码不正确:admin，使用密码：admin', '127.0.0.1', 1607571016);
INSERT INTO `bage_admin_logger` VALUES (929, 0, 'login', '/index.php?r=admini/public/login', '登录失败，密码不正确:admin，使用密码：admin', '127.0.0.1', 1607571017);
INSERT INTO `bage_admin_logger` VALUES (930, 0, 'login', '/index.php?r=admini/public/login', '登录失败，密码不正确:admin，使用密码：admin', '127.0.0.1', 1607571021);
INSERT INTO `bage_admin_logger` VALUES (931, 0, 'login', '/index.php?r=admini/public/login', '登录失败，密码不正确:admin，使用密码：admin', '127.0.0.1', 1607571025);
INSERT INTO `bage_admin_logger` VALUES (932, 0, 'login', '/index.php?r=admini/public/login', '登录失败，密码不正确:admin，使用密码：123456', '127.0.0.1', 1607571030);
INSERT INTO `bage_admin_logger` VALUES (933, 1, 'login', '/index.php?r=admini/public/login', '用户登录成功:admin', '127.0.0.1', 1607612380);
INSERT INTO `bage_admin_logger` VALUES (934, 1, 'login', '/index.php?r=admini/public/login', '用户登录成功:admin', '127.0.0.1', 1607612381);
INSERT INTO `bage_admin_logger` VALUES (935, 1, 'update', '/index.php?r=admini/admin/update&id=1', '更新管理员资料:admin', '127.0.0.1', 1607612408);
INSERT INTO `bage_admin_logger` VALUES (936, 0, 'login', '/index.php?r=admini/public/login', '登录失败，密码不正确:admin，使用密码：admin22222', '127.0.0.1', 1607612603);
INSERT INTO `bage_admin_logger` VALUES (937, 1, 'login', '/index.php?r=admini/public/login', '用户登录成功:admin', '127.0.0.1', 1607612951);
INSERT INTO `bage_admin_logger` VALUES (938, 0, 'login', '/index.php?r=admini/public/login', '登录失败，密码不正确:admin，使用密码：222admin', '127.0.0.1', 1607612954);
INSERT INTO `bage_admin_logger` VALUES (939, 1, 'login', '/index.php?r=admini/public/login', '用户登录成功:admin', '127.0.0.1', 1607612961);
INSERT INTO `bage_admin_logger` VALUES (940, 1, 'login', '/index.php?r=admini/public/login', '用户登录成功:admin', '127.0.0.1', 1607612986);
INSERT INTO `bage_admin_logger` VALUES (941, 1, 'login', '/index.php?r=admini/public/login', '用户登录成功:admin', '127.0.0.1', 1607612987);
COMMIT;

-- ----------------------------
-- Table structure for bage_attr
-- ----------------------------
DROP TABLE IF EXISTS `bage_attr`;
CREATE TABLE `bage_attr` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `scope` enum('config','post','page') NOT NULL DEFAULT 'post' COMMENT '使用范围',
  `attr_name` varchar(50) NOT NULL COMMENT '字段名称',
  `attr_name_alias` char(50) NOT NULL DEFAULT '' COMMENT '字段别名',
  `catalog_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '所属栏目',
  `tips` varchar(255) NOT NULL DEFAULT '' COMMENT '说明',
  `sort_order` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  `attr_type` enum('select','input','file','checkbox','textarea','radio') NOT NULL DEFAULT 'input' COMMENT '字段类型',
  `data_default` text COMMENT '字段默认数据',
  `max_lenght` int(11) NOT NULL DEFAULT '0' COMMENT '长度',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '录入时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='扩展字段管理';

-- ----------------------------
-- Table structure for bage_attr_val
-- ----------------------------
DROP TABLE IF EXISTS `bage_attr_val`;
CREATE TABLE `bage_attr_val` (
  `val_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '内容编号',
  `attr_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '属性编号',
  `attr_name` varchar(60) NOT NULL DEFAULT '' COMMENT '属性名称',
  `attr_val` text COMMENT '属性内容',
  PRIMARY KEY (`val_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='属性内容';

-- ----------------------------
-- Table structure for bage_bill
-- ----------------------------
DROP TABLE IF EXISTS `bage_bill`;
CREATE TABLE `bage_bill` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(2) DEFAULT NULL,
  `op_eat` int(2) DEFAULT NULL,
  `op_traffic` int(2) DEFAULT NULL,
  `op_other` int(2) DEFAULT NULL,
  `op_other_notes` varchar(200) DEFAULT NULL,
  `total` int(2) DEFAULT NULL,
  `addtime` date DEFAULT NULL,
  `op_today_profit` varchar(5) DEFAULT NULL COMMENT '每日理财收益',
  PRIMARY KEY (`id`),
  KEY `addtime` (`addtime`)
) ENGINE=MyISAM AUTO_INCREMENT=268 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bage_bill
-- ----------------------------
BEGIN;
INSERT INTO `bage_bill` VALUES (1, 10, 16, 8, 130, '物美超市购买生活用品和下周的晚饭菜等', 154, '2015-06-28', '0');
INSERT INTO `bage_bill` VALUES (2, 10, 35, 2, 1, 'null', 38, '2015-06-29', '0');
INSERT INTO `bage_bill` VALUES (3, 10, 33, 2, 1, '', 36, '2015-06-30', '0');
INSERT INTO `bage_bill` VALUES (4, 10, 21, 5, 1, '', 27, '2015-07-01', '0');
INSERT INTO `bage_bill` VALUES (5, 10, 21, 10, 1, '', 32, '2015-07-02', '0');
INSERT INTO `bage_bill` VALUES (6, 10, 17, 7, 170, '', 194, '2015-07-12', '0');
INSERT INTO `bage_bill` VALUES (7, 10, 20, 17, 65, '', 102, '2015-07-21', '0');
INSERT INTO `bage_bill` VALUES (8, 10, 30, 20, 120, '买衣服', 170, '2015-08-04', '0');
INSERT INTO `bage_bill` VALUES (9, 10, 13, 1, 1, '', 15, '2015-08-03', '0');
INSERT INTO `bage_bill` VALUES (10, 10, 38, 1, 1, '', 40, '2015-08-05', '0');
INSERT INTO `bage_bill` VALUES (11, 10, 18, 1, 321, '买鞋', 340, '2015-08-06', '0');
INSERT INTO `bage_bill` VALUES (12, 10, 30, 4, 1, '', 35, '2015-08-07', '0');
INSERT INTO `bage_bill` VALUES (13, 10, 3, 1, 1, '', 5, '2015-08-08', '0');
INSERT INTO `bage_bill` VALUES (14, 10, 11, 13, 60, '买桌子60', 84, '2015-08-09', '0');
INSERT INTO `bage_bill` VALUES (15, 10, 35, 5, 16, '饮料和沐浴露', 56, '2015-08-10', '0');
INSERT INTO `bage_bill` VALUES (16, 10, 27, 10, 2, '可乐', 39, '2015-08-11', '0');
INSERT INTO `bage_bill` VALUES (17, 10, 23, 10, 0, '', 33, '2015-08-12', '0');
INSERT INTO `bage_bill` VALUES (18, 10, 22, 7, 16, '超市购买水果', 45, '2015-08-13', '0');
INSERT INTO `bage_bill` VALUES (19, 10, 23, 10, 0, '', 33, '2015-08-14', '0');
INSERT INTO `bage_bill` VALUES (20, 10, 0, 8, 47, '超市买牛肉等', 55, '2015-08-16', '0');
INSERT INTO `bage_bill` VALUES (21, 10, 34, 8, 0, '', 42, '2015-08-17', '0');
INSERT INTO `bage_bill` VALUES (22, 10, 16, 65, 0, '', 81, '2015-08-19', '0');
INSERT INTO `bage_bill` VALUES (23, 10, 34, 30, 0, '打车费21', 64, '2015-08-20', '0');
INSERT INTO `bage_bill` VALUES (24, 10, 24, 0, 0, '', 24, '2015-08-21', '0');
INSERT INTO `bage_bill` VALUES (25, 10, 26, 0, 0, '', 26, '2015-08-22', '0');
INSERT INTO `bage_bill` VALUES (26, 10, 140, 0, 0, '心情不好请大家吃饭。', 140, '2015-08-23', '0');
INSERT INTO `bage_bill` VALUES (27, 10, 36, 5, 0, '', 41, '2015-08-27', '0');
INSERT INTO `bage_bill` VALUES (28, 10, 18, 5, 34, '超市买水果', 57, '2015-08-28', '0');
INSERT INTO `bage_bill` VALUES (29, 10, 4, 10, 0, '', 14, '2015-08-29', '0');
INSERT INTO `bage_bill` VALUES (30, 10, 15, 10, 52, '超市购买牛奶等', 77, '2015-08-30', '0');
INSERT INTO `bage_bill` VALUES (31, 10, 33, 5, 0, '', 38, '2015-08-31', '0');
INSERT INTO `bage_bill` VALUES (32, 10, 34, 10, 0, '', 44, '2015-09-01', '0');
INSERT INTO `bage_bill` VALUES (33, 10, 23, 10, 0, '', 33, '2015-09-06', '0');
INSERT INTO `bage_bill` VALUES (34, 10, 30, 0, 0, '', 30, '2015-09-07', '0');
INSERT INTO `bage_bill` VALUES (35, 10, 15, 5, 0, '', 20, '2015-09-09', '0');
INSERT INTO `bage_bill` VALUES (36, 10, 34, 10, 0, '', 44, '2015-09-10', '0');
INSERT INTO `bage_bill` VALUES (37, 10, 22, 10, 225, '手机套和衣服', 257, '2015-09-12', '0');
INSERT INTO `bage_bill` VALUES (38, 10, 15, 0, 130, '130登山杖', 145, '2015-09-13', '0');
INSERT INTO `bage_bill` VALUES (39, 10, 18, 10, 0, '', 28, '2015-09-21', '0');
INSERT INTO `bage_bill` VALUES (40, 10, 32, 6, 0, '', 38, '2016-03-23', '0');
INSERT INTO `bage_bill` VALUES (41, 10, 32, 13, 70, '看电影', 115, '2016-03-27', '0');
INSERT INTO `bage_bill` VALUES (42, 10, 36, 0, 7, '', 43, '2016-04-05', '0');
INSERT INTO `bage_bill` VALUES (43, 10, 51, 6, 0, '没有啦', 57, '2016-04-06', '0');
INSERT INTO `bage_bill` VALUES (44, 10, 49, 6, 20, '水果', 75, '2016-04-07', '0');
INSERT INTO `bage_bill` VALUES (45, 10, 50, 6, 0, '', 56, '2016-04-08', '0');
INSERT INTO `bage_bill` VALUES (46, 10, 40, 11, 158, '去了趟超市', 209, '2016-04-09', '0');
INSERT INTO `bage_bill` VALUES (47, 10, 0, 21, 0, '', 21, '2016-04-10', '0');
INSERT INTO `bage_bill` VALUES (48, 10, 49, 6, 0, '', 55, '2016-04-11', '0');
INSERT INTO `bage_bill` VALUES (49, 10, 78, 7, 0, '', 85, '2016-04-13', '0');
INSERT INTO `bage_bill` VALUES (50, 10, 53, 0, 0, '', 53, '2016-04-14', '0');
INSERT INTO `bage_bill` VALUES (51, 10, 27, 18, 100, '地铁充值100', 145, '2016-04-15', '0');
INSERT INTO `bage_bill` VALUES (52, 10, 15, 12, 130, '和朋友出去玩吃饭', 157, '2016-04-17', '0');
INSERT INTO `bage_bill` VALUES (53, 10, 69, 15, 5000, '信用卡还款', 5084, '2016-04-18', '0');
INSERT INTO `bage_bill` VALUES (54, 10, 60, 17, 5, '打针', 82, '2016-04-19', '0');
INSERT INTO `bage_bill` VALUES (55, 10, 17, 8, 15, '注射和财付通', 40, '2016-04-23', '0');
INSERT INTO `bage_bill` VALUES (56, 10, 25, 1, 100, '食堂充卡108', 126, '2016-04-25', '0');
INSERT INTO `bage_bill` VALUES (57, 10, 79, 0, 0, '', 79, '2016-04-26', '0');
INSERT INTO `bage_bill` VALUES (58, 10, 20, 271, 150, '请朋友吃饭和打火车到大连考试', 441, '2016-05-13', '0');
INSERT INTO `bage_bill` VALUES (59, 10, 20, 261, 630, '买回京车票释放压力，住宿130', 911, '2016-05-14', '0');
INSERT INTO `bage_bill` VALUES (60, 10, 24, 5, 110, '请吃饭110', 139, '2016-05-27', '0');
INSERT INTO `bage_bill` VALUES (61, 10, 33, 5, 0, '', 38, '2016-05-28', '0');
INSERT INTO `bage_bill` VALUES (62, 10, 18, 5, 0, '', 23, '2016-05-29', '0');
INSERT INTO `bage_bill` VALUES (63, 10, 16, 15, 230, '请周卓大排档130和买衬衫100', 261, '2016-06-05', '0');
INSERT INTO `bage_bill` VALUES (64, 10, 24, 10, 39, '和兴旺看X战警', 73, '2016-06-06', '0');
INSERT INTO `bage_bill` VALUES (65, 10, 15, 10, 90, '看电影吃饭', 115, '2016-06-08', '0');
INSERT INTO `bage_bill` VALUES (66, 10, 25, 10, 135, '请大家吃饭135', 170, '2016-06-10', '0');
INSERT INTO `bage_bill` VALUES (67, 10, 39, 10, 10, '', 59, '2016-07-12', '0');
INSERT INTO `bage_bill` VALUES (68, 10, 18, 8, 0, '', 26, '2016-07-20', '0');
INSERT INTO `bage_bill` VALUES (69, 10, 0, 250, 570, '0', 820, '2016-07-23', '0');
INSERT INTO `bage_bill` VALUES (70, 10, 110, 10, 0, '和马吃烧烤80', 120, '2016-08-19', '0');
INSERT INTO `bage_bill` VALUES (71, 10, 220, 10, 5, '买', 235, '2016-09-09', '0');
INSERT INTO `bage_bill` VALUES (72, 10, 35, 10, 0, '0', 45, '2016-09-08', '0');
INSERT INTO `bage_bill` VALUES (73, 10, 0, 0, 0, '0', 0, '2016-09-10', '0');
INSERT INTO `bage_bill` VALUES (74, 10, 46, 10, 0, '', 56, '2016-09-12', '0');
INSERT INTO `bage_bill` VALUES (75, 10, 21, 11, 0, '', 32, '2016-09-13', '0');
INSERT INTO `bage_bill` VALUES (76, 10, 37, 10, 1300, '购买衣服和鞋子1300', 1347, '2016-10-02', '0');
INSERT INTO `bage_bill` VALUES (77, 10, 53, 8, 0, '', 61, '2016-10-21', '0');
INSERT INTO `bage_bill` VALUES (78, 10, 48, 20, 0, '1300', 68, '2016-10-23', '0');
INSERT INTO `bage_bill` VALUES (79, 10, 54, 5, 0, '', 59, '2016-10-27', '0');
INSERT INTO `bage_bill` VALUES (80, 10, 30, 11, 0, '', 41, '2016-11-04', '0');
INSERT INTO `bage_bill` VALUES (81, 10, 38, 10, 0, '', 48, '2016-11-15', '0');
INSERT INTO `bage_bill` VALUES (82, 10, 25, 10, 0, '', 35, '2016-12-05', '0');
INSERT INTO `bage_bill` VALUES (83, 10, 22, 0, 0, '0', 22, '2016-12-06', '0');
INSERT INTO `bage_bill` VALUES (84, 10, 45, 0, 28, '', 73, '2016-12-07', '0');
INSERT INTO `bage_bill` VALUES (85, 10, 56, 10, 15, 'coffee', 81, '2016-12-08', '0');
INSERT INTO `bage_bill` VALUES (86, 10, 28, 0, 0, '0', 28, '2016-12-11', '0');
INSERT INTO `bage_bill` VALUES (87, 10, 50, 0, 0, '0', 50, '2016-12-10', '0');
INSERT INTO `bage_bill` VALUES (88, 10, 71, 10, 0, '', 81, '2016-12-12', '0');
INSERT INTO `bage_bill` VALUES (89, 10, 35, 0, 0, '', 35, '2016-12-15', '0');
INSERT INTO `bage_bill` VALUES (90, 10, 83, 10, 0, '', 93, '2016-12-14', '0');
INSERT INTO `bage_bill` VALUES (91, 10, 3, 10, 100, '交通卡充值100', 113, '2016-12-17', '0');
INSERT INTO `bage_bill` VALUES (92, 10, 58, 0, 0, '', 58, '2016-12-18', '0');
INSERT INTO `bage_bill` VALUES (93, 10, 51, 15, 1070, '中关村配眼镜-1070', 1136, '2016-12-20', '0');
INSERT INTO `bage_bill` VALUES (94, 10, 44, 0, 100, '嘴唇上火看医生加上最近失眠看doctor消费100元', 144, '2016-12-21', '0');
INSERT INTO `bage_bill` VALUES (95, 10, 68, 0, 0, '', 68, '2016-12-22', '0');
INSERT INTO `bage_bill` VALUES (96, 10, 55, 10, 0, '', 65, '2016-12-23', '0');
INSERT INTO `bage_bill` VALUES (97, 10, 57, 0, 0, '', 57, '2016-12-24', '0');
INSERT INTO `bage_bill` VALUES (98, 10, 24, 0, 0, '0', 24, '2016-12-25', '0');
INSERT INTO `bage_bill` VALUES (99, 10, 59, 11, 1450, '换表带20，京东购买送自己的2016年的礼物1430', 1520, '2016-12-26', '0');
INSERT INTO `bage_bill` VALUES (100, 10, 38, 0, 48, '买些水果和写字板等48', 86, '2016-12-27', '0');
INSERT INTO `bage_bill` VALUES (101, 10, 53, 10, 25, '超市购买水等等', 88, '2016-12-28', '0');
INSERT INTO `bage_bill` VALUES (102, 10, 0, 0, 1, '', 1, '2016-12-30', '0');
INSERT INTO `bage_bill` VALUES (103, 10, 0, 7, 2, '共享单车2元', 9, '2016-12-31', '0');
INSERT INTO `bage_bill` VALUES (104, 10, 26, 2, 0, '', 28, '2017-01-01', '0');
INSERT INTO `bage_bill` VALUES (105, 10, 10, 2, 0, '35', 12, '2017-01-02', '0');
INSERT INTO `bage_bill` VALUES (106, 10, 12, 11, 0, '', 23, '2017-01-03', '0');
INSERT INTO `bage_bill` VALUES (107, 10, 46, 12, 0, '', 58, '2017-01-04', '0');
INSERT INTO `bage_bill` VALUES (108, 10, 0, 1, 1, '', 2, '2017-01-05', '0');
INSERT INTO `bage_bill` VALUES (109, 10, 53, 12, 0, '', 65, '2017-01-06', '0');
INSERT INTO `bage_bill` VALUES (110, 10, 24, 2, 0, '', 26, '2017-01-07', '0');
INSERT INTO `bage_bill` VALUES (111, 10, 27, 13, 0, '', 40, '2017-01-09', '0');
INSERT INTO `bage_bill` VALUES (112, 10, 38, 10, 7, '日用品', 55, '2017-01-10', '0');
INSERT INTO `bage_bill` VALUES (113, 10, 21, 3, 4, '网吧上网4', 28, '2017-01-11', '0');
INSERT INTO `bage_bill` VALUES (114, 10, 38, 20, 0, '', 58, '2017-01-12', '0');
INSERT INTO `bage_bill` VALUES (115, 10, 30, 600, 0, '高铁500', 630, '2017-01-24', '0');
INSERT INTO `bage_bill` VALUES (116, 10, 10, 0, 1600, '买衣服', 1610, '2017-01-26', '0');
INSERT INTO `bage_bill` VALUES (117, 10, 50, 10, 300, '超市购买做饭工具等', 360, '2017-02-05', '0');
INSERT INTO `bage_bill` VALUES (118, 10, 54, 10, 0, '', 64, '2017-02-06', '0');
INSERT INTO `bage_bill` VALUES (119, 10, 31, 10, 0, '', 41, '2017-02-08', '0');
INSERT INTO `bage_bill` VALUES (120, 10, 23, 15, 260, '超市购买下周的牛奶等等生活必备。', 298, '2017-02-11', '0');
INSERT INTO `bage_bill` VALUES (121, 10, 5, 10, 100, '充值公交卡', 115, '2017-02-12', '0');
INSERT INTO `bage_bill` VALUES (122, 10, 45, 10, 0, '', 55, '2017-02-14', '0');
INSERT INTO `bage_bill` VALUES (123, 10, 32, 10, 18, '', 60, '2017-02-17', '0');
INSERT INTO `bage_bill` VALUES (124, 10, 18, 0, 0, '', 18, '2017-02-18', '0');
INSERT INTO `bage_bill` VALUES (125, 10, 17, 0, 36, '超市水果', 53, '2017-02-19', '0');
INSERT INTO `bage_bill` VALUES (126, 10, 50, 10, 0, '', 60, '2017-02-20', '0');
INSERT INTO `bage_bill` VALUES (127, 10, 39, 10, 0, '', 49, '2017-02-21', '0');
INSERT INTO `bage_bill` VALUES (128, 10, 0, 15, 130, '聚餐', 145, '2017-02-25', '0');
INSERT INTO `bage_bill` VALUES (129, 10, 11, 10, 210, '买毛衣', 231, '2017-02-28', '0');
INSERT INTO `bage_bill` VALUES (130, 10, 51, 10, 0, '', 61, '2017-03-02', '0');
INSERT INTO `bage_bill` VALUES (131, 10, 56, 10, 0, '', 66, '2017-03-07', '0');
INSERT INTO `bage_bill` VALUES (132, 10, 53, 10, 0, '', 63, '2017-03-09', '0');
INSERT INTO `bage_bill` VALUES (133, 10, 45, 10, 0, '', 55, '2017-03-15', '0');
INSERT INTO `bage_bill` VALUES (134, 10, 56, 10, 179, '买衣服', 245, '2017-03-16', '0');
INSERT INTO `bage_bill` VALUES (135, 10, 20, 10, 200, '', 230, '2017-03-20', '0');
INSERT INTO `bage_bill` VALUES (136, 10, 30, 10, 0, '', 40, '2017-03-22', '0');
INSERT INTO `bage_bill` VALUES (137, 10, 33, 10, 50, '注销189号码补交欠费', 93, '2017-03-23', '0');
INSERT INTO `bage_bill` VALUES (138, 10, 0, 10, 70, '周黑鸭70', 80, '2017-03-26', '0');
INSERT INTO `bage_bill` VALUES (139, 10, 41, 10, 0, '', 51, '2017-03-27', '0');
INSERT INTO `bage_bill` VALUES (140, 10, 26, 10, 0, '0', 36, '2017-03-28', '0');
INSERT INTO `bage_bill` VALUES (141, 10, 15, 10, 0, '', 25, '2017-03-31', '0');
INSERT INTO `bage_bill` VALUES (142, 10, 22, 0, 0, '', 22, '2017-04-08', '0');
INSERT INTO `bage_bill` VALUES (143, 10, 46, 10, 0, '', 56, '2017-04-10', '0');
INSERT INTO `bage_bill` VALUES (144, 10, 49, 10, 120, '超市购买生活用品', 179, '2017-04-26', '0');
INSERT INTO `bage_bill` VALUES (145, 10, 43, 10, 0, '', 53, '2017-05-02', '0');
INSERT INTO `bage_bill` VALUES (146, 10, 0, 1, 3, '商店购买可乐3和共享单车1', 4, '2017-05-13', '0');
INSERT INTO `bage_bill` VALUES (147, 10, 49, 0, 75, '超市购买水果等和停车费20', 124, '2017-05-20', '0');
INSERT INTO `bage_bill` VALUES (148, 10, 34, 70, 370, '50超市，120汽车补胎，199电饭煲', 474, '2017-05-22', '0');
INSERT INTO `bage_bill` VALUES (149, 10, 45, 10, 0, '', 55, '2017-05-27', '0');
INSERT INTO `bage_bill` VALUES (150, 10, 0, 12, 0, '', 12, '2017-06-01', '0');
INSERT INTO `bage_bill` VALUES (151, 10, 54, 10, 0, '0', 64, '2017-06-02', '0');
INSERT INTO `bage_bill` VALUES (152, 10, 5, 0, 0, '0', 5, '2017-06-03', '0');
INSERT INTO `bage_bill` VALUES (153, 10, 20, 0, 102, '超市购买下周口粮', 122, '2017-06-04', '0');
INSERT INTO `bage_bill` VALUES (154, 10, 62, 10, 0, '', 72, '2017-06-05', '0');
INSERT INTO `bage_bill` VALUES (155, 10, 38, 10, 0, '0', 48, '2017-06-07', '0');
INSERT INTO `bage_bill` VALUES (156, 10, 62, 10, 0, '0', 72, '2017-06-08', '0');
INSERT INTO `bage_bill` VALUES (157, 10, 55, 10, 0, '0', 65, '2017-06-09', '0');
INSERT INTO `bage_bill` VALUES (158, 10, 14, 0, 68, '超市购买水果等', 82, '2017-06-11', '0');
INSERT INTO `bage_bill` VALUES (159, 10, 34, 10, 0, '', 44, '2017-06-13', '0');
INSERT INTO `bage_bill` VALUES (160, 10, 30, 10, 10, '咖啡', 50, '2017-06-14', '0');
INSERT INTO `bage_bill` VALUES (161, 10, 40, 10, 0, '', 50, '2017-06-15', '0');
INSERT INTO `bage_bill` VALUES (162, 10, 39, 10, 0, '', 49, '2017-06-16', '0');
INSERT INTO `bage_bill` VALUES (163, 10, 11, 0, 325, '买三条短裤', 336, '2017-06-17', '0');
INSERT INTO `bage_bill` VALUES (164, 10, 39, 10, 0, '', 49, '2017-06-19', '0');
INSERT INTO `bage_bill` VALUES (165, 10, 56, 10, 0, '', 66, '2017-06-21', '0');
INSERT INTO `bage_bill` VALUES (166, 10, 54, 10, 0, '', 64, '2017-06-22', '0');
INSERT INTO `bage_bill` VALUES (167, 10, 0, 10, 29, '和朋友出去玩kfc消费29', 39, '2017-06-24', '0');
INSERT INTO `bage_bill` VALUES (168, 10, 34, 0, 30, '理发30', 64, '2017-06-25', '0');
INSERT INTO `bage_bill` VALUES (169, 10, 64, 10, 0, '', 74, '2017-06-27', '0');
INSERT INTO `bage_bill` VALUES (170, 10, 49, 10, 198, '深马购买衣服', 257, '2017-06-26', '0');
INSERT INTO `bage_bill` VALUES (171, 10, 18, 6, 22, '0', 46, '2017-07-12', '0');
INSERT INTO `bage_bill` VALUES (172, 10, 0, 0, 182, '超市购买下周生活用品', 182, '2017-07-15', '0');
INSERT INTO `bage_bill` VALUES (173, 10, 52, 10, 36, '手表换表带30', 98, '2017-07-14', '0');
INSERT INTO `bage_bill` VALUES (174, 10, 40, 10, 1200, '给老板买手表1200', 1250, '2017-07-13', '0');
INSERT INTO `bage_bill` VALUES (175, 10, 46, 6, 0, '0', 52, '2017-07-27', '0');
INSERT INTO `bage_bill` VALUES (176, 10, 61, 10, 0, '', 71, '2017-09-01', '0');
INSERT INTO `bage_bill` VALUES (177, 10, 41, 10, 0, '0', 51, '2017-09-11', '0');
INSERT INTO `bage_bill` VALUES (178, 10, 49, 10, 6, '', 65, '2017-09-12', '0');
INSERT INTO `bage_bill` VALUES (179, 10, 37, 10, 0, '', 47, '2017-09-13', '0');
INSERT INTO `bage_bill` VALUES (180, 10, 0, 2, 1000, '买药700，换眼镜框300', 1002, '2017-09-17', '0');
INSERT INTO `bage_bill` VALUES (181, 10, 49, 10, 0, '0', 59, '2017-09-19', '0');
INSERT INTO `bage_bill` VALUES (182, 10, 57, 10, 0, '', 67, '2017-11-21', '0');
INSERT INTO `bage_bill` VALUES (183, 10, 47, 6, 0, '', 53, '2017-11-22', '0');
INSERT INTO `bage_bill` VALUES (184, 10, 1, 1, 1, '', 3, '2017-11-23', '0');
INSERT INTO `bage_bill` VALUES (185, 10, 78, 160, 330, '购买稻香村和住宿', 568, '2017-11-25', '0');
INSERT INTO `bage_bill` VALUES (186, 10, 18, 340, 0, '购买返程车票', 358, '2017-11-26', '0');
INSERT INTO `bage_bill` VALUES (187, 10, 45, 10, 0, '', 55, '2017-11-27', '0');
INSERT INTO `bage_bill` VALUES (188, 10, 40, 10, 0, '', 50, '2017-11-28', '0');
INSERT INTO `bage_bill` VALUES (189, 10, 57, 10, 0, '', 67, '2017-11-29', '0');
INSERT INTO `bage_bill` VALUES (190, 10, 27, 10, 0, '', 37, '2017-12-01', '0');
INSERT INTO `bage_bill` VALUES (191, 10, 0, 0, 210, '超市180，理发30', 210, '2017-12-02', '0');
INSERT INTO `bage_bill` VALUES (192, 10, 14, 10, 0, '', 24, '2017-12-03', '0');
INSERT INTO `bage_bill` VALUES (193, 10, 30, 7, 0, '', 37, '2017-12-04', '0');
INSERT INTO `bage_bill` VALUES (194, 10, 45, 7, 0, '', 52, '2017-12-05', '0');
INSERT INTO `bage_bill` VALUES (195, 10, 34, 7, 0, '', 41, '2017-12-06', '0');
INSERT INTO `bage_bill` VALUES (196, 10, 17, 7, 60, '两杯咖啡60', 84, '2017-12-08', '0');
INSERT INTO `bage_bill` VALUES (197, 10, 32, 10, 0, '', 42, '2017-12-09', '0');
INSERT INTO `bage_bill` VALUES (198, 10, 22, 0, 0, '', 22, '2017-12-10', '0');
INSERT INTO `bage_bill` VALUES (199, 10, 30, 7, 0, '', 37, '2017-12-12', '0');
INSERT INTO `bage_bill` VALUES (200, 10, 26, 7, 31, '咖啡', 64, '2017-12-13', '0');
INSERT INTO `bage_bill` VALUES (201, 10, 43, 7, 31, '咖啡', 81, '2017-12-14', '0');
INSERT INTO `bage_bill` VALUES (202, 10, 74, 100, 0, '', 174, '2017-12-16', '0');
INSERT INTO `bage_bill` VALUES (203, 10, 55, 7, 0, '', 62, '2017-12-17', '0');
INSERT INTO `bage_bill` VALUES (204, 10, 40, 7, 0, '', 47, '2017-12-19', '0');
INSERT INTO `bage_bill` VALUES (205, 10, 255, 0, 0, '聚餐255', 255, '2017-12-23', '0');
INSERT INTO `bage_bill` VALUES (206, 10, 44, 7, 0, '', 51, '2017-12-25', '0');
INSERT INTO `bage_bill` VALUES (207, 10, 17, 300, 180, '郑州住宿', 497, '2017-12-27', '0');
INSERT INTO `bage_bill` VALUES (208, 10, 27, 740, 240, '深圳住宿240', 1007, '2017-12-28', '0');
INSERT INTO `bage_bill` VALUES (209, 10, 70, 80, 2200, '租房子2000和超市购买生活用品', 2350, '2017-12-31', '0');
INSERT INTO `bage_bill` VALUES (210, 10, 60, 7, 0, '', 67, '2018-01-03', '0');
INSERT INTO `bage_bill` VALUES (211, 10, 60, 7, 0, '', 67, '2018-01-03', '0');
INSERT INTO `bage_bill` VALUES (212, 10, 36, 7, 0, '', 43, '2018-01-04', '0');
INSERT INTO `bage_bill` VALUES (213, 10, 0, 7, 400, '朋友聚餐', 407, '2018-01-07', '0');
INSERT INTO `bage_bill` VALUES (214, 10, 50, 30, 350, '寄送生活用品到杭州', 430, '2018-01-08', '0');
INSERT INTO `bage_bill` VALUES (215, 10, 24, 25, 21, '药', 70, '2018-01-09', '0');
INSERT INTO `bage_bill` VALUES (216, 10, 32, 0, 75, '超市购买生活用品', 107, '2018-01-13', '0');
INSERT INTO `bage_bill` VALUES (217, 10, 45, 3, 0, '', 48, '2018-01-14', '0');
INSERT INTO `bage_bill` VALUES (218, 10, 44, 6, 0, '', 50, '2018-01-17', '0');
INSERT INTO `bage_bill` VALUES (219, 10, 46, 0, 0, '', 46, '2018-01-18', '0');
INSERT INTO `bage_bill` VALUES (220, 10, 64, 10, 117, '充值公交卡100+买水果17', 191, '2018-01-19', '0');
INSERT INTO `bage_bill` VALUES (221, 10, 31, 1, 11, '11电费', 43, '2018-01-20', '0');
INSERT INTO `bage_bill` VALUES (222, 10, 50, 5, 45, '干洗衣服45', 100, '2018-01-21', '0');
INSERT INTO `bage_bill` VALUES (227, 10, 36, 10, 11, '', 57, '2018-01-30', '-30');
INSERT INTO `bage_bill` VALUES (228, 10, 27, 0, 10, '咖啡10', 37, '2018-01-31', '41');
INSERT INTO `bage_bill` VALUES (229, 10, 22, 10, 69, '', 101, '2018-02-01', '-100');
INSERT INTO `bage_bill` VALUES (230, 10, 38, 10, 46, '打车46', 94, '2018-02-02', '72');
INSERT INTO `bage_bill` VALUES (231, 10, 18, 0, 0, '', 18, '2018-02-03', '0');
INSERT INTO `bage_bill` VALUES (232, 10, 37, 0, 35, '理发35', 72, '2018-02-05', '-52');
INSERT INTO `bage_bill` VALUES (233, 10, 57, 1, 27, '', 85, '2018-02-09', '-304');
INSERT INTO `bage_bill` VALUES (234, 10, 26, 0, 0, '0', 26, '2018-02-10', '0');
INSERT INTO `bage_bill` VALUES (235, 10, 45, 0, 0, '', 45, '2018-02-11', '0');
INSERT INTO `bage_bill` VALUES (236, 10, 32, 2, 7101, '搬家140，换地方押一付三7061', 7135, '2018-02-25', '0');
INSERT INTO `bage_bill` VALUES (237, 10, 39, 399, 0, '返程回杭州399', 438, '2018-02-24', '0');
INSERT INTO `bage_bill` VALUES (238, 10, 55, 12, 0, '', 67, '2018-02-26', '160');
INSERT INTO `bage_bill` VALUES (239, 10, 39, 0, 0, '', 39, '2018-02-27', '-63');
INSERT INTO `bage_bill` VALUES (240, 10, 33, 2, 260, '100超市生活用品，160购买在线软件', 295, '2018-03-01', '114');
INSERT INTO `bage_bill` VALUES (241, 10, 32, 10, 130, '', 172, '2018-03-02', '-80');
INSERT INTO `bage_bill` VALUES (242, 10, 28, 0, 0, '', 28, '2018-03-05', '16');
INSERT INTO `bage_bill` VALUES (243, 10, 45, 10, 500, '换眼镜框500', 555, '2018-03-06', '138');
INSERT INTO `bage_bill` VALUES (244, 10, 38, 10, 0, '', 48, '2018-03-09', '0');
INSERT INTO `bage_bill` VALUES (245, 10, 40, 5, 240, '去郑州240', 285, '2018-03-16', '0');
INSERT INTO `bage_bill` VALUES (246, 10, 81, 10, 0, '', 91, '2018-03-20', '25');
INSERT INTO `bage_bill` VALUES (247, 10, 52, 32, 300, '', 384, '2018-03-22', '0');
INSERT INTO `bage_bill` VALUES (248, 10, 40, 10, 151, '电脑包和烟12', 201, '2018-03-28', '0');
INSERT INTO `bage_bill` VALUES (249, 10, 42, 10, 21, '超市咖啡20', 73, '2018-03-31', '0');
INSERT INTO `bage_bill` VALUES (250, 10, 31, 14, 0, '', 45, '2018-04-06', '0');
INSERT INTO `bage_bill` VALUES (251, 10, 43, 0, 0, '0', 43, '2018-04-07', '0');
INSERT INTO `bage_bill` VALUES (252, 10, 50, 12, 0, '0', 62, '2018-04-08', '0');
INSERT INTO `bage_bill` VALUES (253, 10, 33, 12, 7, '0', 52, '2018-04-09', '0');
INSERT INTO `bage_bill` VALUES (254, 10, 63, 10, 0, '', 73, '2018-04-11', '0');
INSERT INTO `bage_bill` VALUES (255, 10, 63, 10, 0, '', 73, '2018-04-10', '0');
INSERT INTO `bage_bill` VALUES (256, 10, 27, 10, 150, '吃坏肚子去医院150', 187, '2018-04-13', '0');
INSERT INTO `bage_bill` VALUES (257, 10, 41, 4, 0, '', 45, '2018-04-15', '0');
INSERT INTO `bage_bill` VALUES (258, 10, 49, 8, 0, '0', 57, '2018-04-18', '0');
INSERT INTO `bage_bill` VALUES (259, 10, 49, 8, 0, '0', 57, '2018-04-17', '0');
INSERT INTO `bage_bill` VALUES (260, 10, 66, 8, 7, '打车70', 81, '2018-04-20', '0');
INSERT INTO `bage_bill` VALUES (261, 10, 29, 58, 1814, '约会53，买衣服1097，hdmi线34', 1901, '2018-04-21', '0');
INSERT INTO `bage_bill` VALUES (262, 10, 49, 10, 30, '回来打不到公交车打车30', 89, '2018-04-22', '0');
INSERT INTO `bage_bill` VALUES (263, 10, 38, 8, 0, '', 46, '2018-04-23', '0');
INSERT INTO `bage_bill` VALUES (264, 10, 9, 8, 34, '咖啡和wl沟通事情', 51, '2018-04-24', '0');
INSERT INTO `bage_bill` VALUES (265, 10, 33, 32, 813, '鞋子260和眼镜框', 878, '2018-04-30', '0');
INSERT INTO `bage_bill` VALUES (266, 10, 49, 0, 88, '最近工作压力大减压88', 137, '2018-04-29', '0');
INSERT INTO `bage_bill` VALUES (267, 10, 35, 4, 14, '饮料14', 53, '2018-05-01', '0');
COMMIT;

-- ----------------------------
-- Table structure for bage_catalog
-- ----------------------------
DROP TABLE IF EXISTS `bage_catalog`;
CREATE TABLE `bage_catalog` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '上级分类',
  `catalog_name` varchar(100) NOT NULL COMMENT '名称',
  `catalog_name_second` varchar(100) DEFAULT '' COMMENT '副名称',
  `catalog_name_alias` varchar(100) NOT NULL DEFAULT '' COMMENT '别名',
  `content` text COMMENT '详细介绍',
  `seo_title` varchar(100) NOT NULL DEFAULT '' COMMENT 'seo标题',
  `seo_keywords` varchar(255) NOT NULL DEFAULT '' COMMENT 'seo关键字',
  `seo_description` text COMMENT 'seo描述',
  `attach_file` varchar(100) DEFAULT '' COMMENT '附件',
  `attach_thumb` varchar(100) DEFAULT '' COMMENT '缩略图',
  `sort_order` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  `data_count` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '数据量',
  `page_size` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '每页显示数量',
  `status_is` enum('Y','N') NOT NULL DEFAULT 'Y' COMMENT '状态',
  `menu_is` enum('Y','N') DEFAULT 'N' COMMENT '是否导航显示',
  `redirect_url` varchar(255) NOT NULL DEFAULT '' COMMENT '跳转地址',
  `display_type` enum('page','list') NOT NULL DEFAULT 'list' COMMENT '显示方式',
  `template_list` varchar(100) NOT NULL DEFAULT '' COMMENT '列表模板',
  `template_page` varchar(100) NOT NULL DEFAULT '' COMMENT '单页模板',
  `template_show` varchar(100) NOT NULL DEFAULT '' COMMENT '内容页模板',
  `acl_browser` varchar(255) NOT NULL DEFAULT '' COMMENT '浏览权限',
  `acl_operate` varchar(255) NOT NULL DEFAULT '' COMMENT '操作权限',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '录入时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COMMENT='全局分类';

-- ----------------------------
-- Records of bage_catalog
-- ----------------------------
BEGIN;
INSERT INTO `bage_catalog` VALUES (18, 0, '每周笔记', '每周技术博客', 'weeklythinking', '', '', '', '', '', '', 1, 0, 0, 'Y', 'N', '', 'list', 'list_text', 'list_page', 'show_post', '', '', 1487491955);
INSERT INTO `bage_catalog` VALUES (19, 0, '我的游记', 'mytravel', 'mytravel', '', '', '', '', '', '', 2, 0, 0, 'Y', 'N', '', 'list', 'list_text', 'list_page', 'show_post', '', '', 1490152243);
INSERT INTO `bage_catalog` VALUES (2, 1, '公司动态', '公司动态', 'company-news', '公司动态栏目介绍', '', '', '', '', '', 0, 0, 0, 'Y', 'N', '', 'list', 'list_text', 'list_page', 'show_post', '', '', 1379545199);
INSERT INTO `bage_catalog` VALUES (3, 1, '行业新闻', '行业新闻', 'industry-news', '行业新闻栏目介绍', '', '', '', '', '', 0, 0, 0, 'Y', 'N', '', 'list', 'list_text', 'list_page', 'show_post', '', '', 1379545248);
INSERT INTO `bage_catalog` VALUES (5, 4, '新品上市', '新品上市', 'new-arrival', '新品上市栏目介绍', '', '', '', '', '', 0, 0, 0, 'Y', 'N', '', 'list', 'list_goods', 'list_page', 'show_goods', '', '', 1379545388);
INSERT INTO `bage_catalog` VALUES (6, 4, '特价商品', '特价商品', 'sales-goods', '特价商品栏目介绍', '', '', '', '', '', 0, 0, 0, 'Y', 'N', '', 'list', 'list_goods', 'list_page', 'show_goods', '', '', 1379545435);
INSERT INTO `bage_catalog` VALUES (20, 0, 'INTEREST', 'interest', 'interest', 'my&nbsp;interest。', '', '', '', '', '', 0, 0, 0, 'Y', 'N', '', 'list', 'list_text', 'list_page', 'show_post', '', '', 1517212577);
COMMIT;

-- ----------------------------
-- Table structure for bage_config
-- ----------------------------
DROP TABLE IF EXISTS `bage_config`;
CREATE TABLE `bage_config` (
  `scope` char(20) NOT NULL DEFAULT '' COMMENT '范围',
  `variable` varchar(50) NOT NULL COMMENT '变量',
  `value` text COMMENT '值',
  `description` varchar(255) NOT NULL DEFAULT '' COMMENT '描述',
  PRIMARY KEY (`variable`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='系统配置';

-- ----------------------------
-- Records of bage_config
-- ----------------------------
BEGIN;
INSERT INTO `bage_config` VALUES ('base', 'site_domain', 'http://www.vandin.net', '');
INSERT INTO `bage_config` VALUES ('base', 'admin_email', 'tann1013@gmail.com', '');
INSERT INTO `bage_config` VALUES ('base', 'site_icp', 'xxxxxxxx', '');
INSERT INTO `bage_config` VALUES ('base', 'site_closed_summary', '系统维护中，请稍候......', '');
INSERT INTO `bage_config` VALUES ('base', 'site_stats', '', '');
INSERT INTO `bage_config` VALUES ('base', 'seo_title', '程序员|谭建的博客', '');
INSERT INTO `bage_config` VALUES ('base', 'seo_description', '程序员|谭建的博客', '');
INSERT INTO `bage_config` VALUES ('base', 'seo_keywords', '程序员|谭建的博客', '');
INSERT INTO `bage_config` VALUES ('base', 'admin_telephone', '18606712910', '');
INSERT INTO `bage_config` VALUES ('base', 'site_status', 'open', '');
INSERT INTO `bage_config` VALUES ('base', 'site_status_intro', '网站升级中..........rntann1013#hotmail.com', '');
INSERT INTO `bage_config` VALUES ('base', 'admin_logger', 'open', '');
INSERT INTO `bage_config` VALUES ('base', 'user_status', 'open', '');
INSERT INTO `bage_config` VALUES ('base', 'user_mail_verify', 'open', '');
INSERT INTO `bage_config` VALUES ('base', 'site_copyright', 'copyright © vandin.net', '');
INSERT INTO `bage_config` VALUES ('base', 'upload_water_size', '100x100', '');
INSERT INTO `bage_config` VALUES ('base', 'upload_water_file', 'static/watermark.png', '');
INSERT INTO `bage_config` VALUES ('base', 'upload_water_status', 'close', '');
INSERT INTO `bage_config` VALUES ('base', 'upload_allow_ext', 'jpg,gif,bmp,jpeg,png,doc,zip,rar,7z,txt,sql,pdf', '');
INSERT INTO `bage_config` VALUES ('base', 'upload_max_size', '200', '');
INSERT INTO `bage_config` VALUES ('base', 'upload_water_scope', '100x100', '');
INSERT INTO `bage_config` VALUES ('base', 'upload_water_position', '5', '');
INSERT INTO `bage_config` VALUES ('base', 'upload_water_padding', '5', '');
INSERT INTO `bage_config` VALUES ('base', 'upload_water_trans', '30', '');
INSERT INTO `bage_config` VALUES ('custom', '_fasdf', 'fasfcccccccccccc', '');
INSERT INTO `bage_config` VALUES ('base', 'site_name', '程序员|谭建的博客', '');
COMMIT;

-- ----------------------------
-- Table structure for bage_link
-- ----------------------------
DROP TABLE IF EXISTS `bage_link`;
CREATE TABLE `bage_link` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `site_name` varchar(100) NOT NULL COMMENT '名称',
  `site_url` varchar(255) NOT NULL COMMENT '链接地址',
  `sort_order` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  `click_count` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '点击次数',
  `link_type` enum('image','txt') NOT NULL DEFAULT 'txt' COMMENT '链接类型',
  `attach_file` varchar(100) NOT NULL DEFAULT '' COMMENT '链接图片',
  `status_is` enum('Y','N') NOT NULL DEFAULT 'Y' COMMENT '显示状态',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '录入时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='友情链接';

-- ----------------------------
-- Table structure for bage_page
-- ----------------------------
DROP TABLE IF EXISTS `bage_page`;
CREATE TABLE `bage_page` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL COMMENT '标题',
  `title_second` varchar(100) NOT NULL DEFAULT '' COMMENT '副标题',
  `title_alias` char(40) NOT NULL COMMENT '标签',
  `html_path` varchar(100) NOT NULL DEFAULT '' COMMENT 'html路径',
  `html_file` varchar(100) NOT NULL DEFAULT '' COMMENT 'html文件',
  `intro` text COMMENT '简单描述',
  `content` mediumtext NOT NULL COMMENT '内容',
  `seo_title` varchar(255) NOT NULL DEFAULT '' COMMENT 'SEO标题',
  `seo_keywords` varchar(255) NOT NULL DEFAULT '' COMMENT 'SEO KEYWORDS',
  `seo_description` text COMMENT 'SEO DESCRIPTION',
  `template` varchar(30) NOT NULL DEFAULT '' COMMENT '模板',
  `attach_file` varchar(60) NOT NULL DEFAULT '' COMMENT '附件',
  `attach_thumb` varchar(60) NOT NULL DEFAULT '' COMMENT '附件小图',
  `sort_order` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  `view_count` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '查看次数',
  `status_is` enum('Y','N') NOT NULL DEFAULT 'Y' COMMENT '状态',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='单页';

-- ----------------------------
-- Records of bage_page
-- ----------------------------
BEGIN;
INSERT INTO `bage_page` VALUES (4, '爱好', '', 'team', '', '', '团队是现代企业管理中战斗的核心，几乎没有一家企业不谈团队，好象团队就是企业做大做强的灵丹妙药，只要抓紧团队建设就能有锦锈前程了。团队是个好东西，但怎样的团队才算一个好团队，怎样才能运作好一个团队呢？却是许多企业管理者不甚了然的，于是在企业团队建设的过程中就出现了许多弊病，例如从理论著作中生搬硬套到团队运作里面，是很难产生好团队的。', '<p>\r\n	技术栈\r\n</p>\r\n<p>\r\n	LNMP\r\n</p>\r\n<p>\r\n	爱好\r\n</p>\r\n<p>\r\n	围棋、编程、足球\r\n</p>', '', '', '', '', '', '', 0, 0, 'Y', 1379392484);
COMMIT;

-- ----------------------------
-- Table structure for bage_post
-- ----------------------------
DROP TABLE IF EXISTS `bage_post`;
CREATE TABLE `bage_post` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL DEFAULT '1' COMMENT '用户',
  `nickname` varchar(30) NOT NULL DEFAULT '' COMMENT '用户名',
  `author` varchar(100) NOT NULL DEFAULT '' COMMENT '作者',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `title_second` varchar(255) NOT NULL DEFAULT '' COMMENT '副标题',
  `title_alias` char(50) NOT NULL DEFAULT '' COMMENT '别名 ',
  `title_style` varchar(255) NOT NULL DEFAULT '' COMMENT '标题样式',
  `title_style_serialize` varchar(255) NOT NULL DEFAULT '' COMMENT '标题样式序列化',
  `html_path` varchar(100) NOT NULL DEFAULT '' COMMENT 'html路径',
  `html_file` varchar(100) NOT NULL DEFAULT '' COMMENT 'html文件名',
  `template` varchar(60) NOT NULL DEFAULT '' COMMENT '模板',
  `catalog_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '分类',
  `special_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '专题编号',
  `intro` text COMMENT '摘要',
  `image_list` text COMMENT '组图',
  `seo_title` varchar(255) NOT NULL DEFAULT '' COMMENT 'SEO标题',
  `seo_description` text COMMENT 'SEO描述',
  `seo_keywords` varchar(255) NOT NULL DEFAULT '' COMMENT 'SEO关键字',
  `content` mediumtext NOT NULL COMMENT '内容',
  `copy_from` varchar(100) NOT NULL DEFAULT '' COMMENT '来源',
  `copy_url` varchar(255) NOT NULL DEFAULT '' COMMENT '来源url',
  `redirect_url` varchar(255) NOT NULL DEFAULT '' COMMENT '跳转URL',
  `tags` varchar(255) NOT NULL DEFAULT '' COMMENT 'tags',
  `view_count` int(10) unsigned NOT NULL DEFAULT '1' COMMENT '查看次数',
  `commend` enum('Y','N') NOT NULL DEFAULT 'N' COMMENT '推荐',
  `attach_status` enum('Y','N') NOT NULL DEFAULT 'N' COMMENT '是否上传附件',
  `attach_file` varchar(255) NOT NULL DEFAULT '' COMMENT '附件名称',
  `attach_thumb` varchar(255) NOT NULL DEFAULT '' COMMENT '附件缩略图',
  `favorite_count` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '收藏数量',
  `attention_count` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '关注次数',
  `top_line` enum('Y','N') NOT NULL DEFAULT 'N' COMMENT '头条',
  `last_update_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '最后更新时间',
  `reply_count` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '回复次数',
  `reply_allow` enum('Y','N') NOT NULL DEFAULT 'Y' COMMENT '允许评论',
  `sort_desc` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  `acl` varchar(100) NOT NULL DEFAULT 'Y' COMMENT '权限检测',
  `status_is` enum('Y','N') NOT NULL DEFAULT 'Y' COMMENT '新闻状态',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '录入时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=111 DEFAULT CHARSET=utf8 COMMENT='内容管理';

-- ----------------------------
-- Records of bage_post
-- ----------------------------
BEGIN;
INSERT INTO `bage_post` VALUES (100, 1, '', '', '面试题目setcookie的尴尬', '', '', '', '', '', '', '', 18, 0, '面试题目setcookie', '', '', '', '', '<span>&nbsp; &nbsp; &nbsp;今天参见面试被问到一个关于cookie的问题。问题大概是这样的，若不使用</span><span style=\"font-family:&quot;font-size:14px;background-color:#FFFFFF;color:#0000BB;\">setcookie</span><span style=\"font-family:&quot;font-size:14px;background-color:#FFFFFF;color:#007700;\">(</span><span style=\"font-family:&quot;font-size:14px;background-color:#FFFFFF;color:#DD0000;\">\"TestCookie\"</span><span style=\"font-family:&quot;font-size:14px;background-color:#FFFFFF;color:#007700;\">,&nbsp;</span><span style=\"font-family:&quot;font-size:14px;background-color:#FFFFFF;color:#0000BB;\">$value</span><span style=\"font-family:&quot;font-size:14px;background-color:#FFFFFF;color:#007700;\">,&nbsp;</span><span style=\"font-family:&quot;font-size:14px;background-color:#FFFFFF;color:#0000BB;\">time</span><span style=\"font-family:&quot;font-size:14px;background-color:#FFFFFF;color:#007700;\">()+</span><span style=\"font-family:&quot;font-size:14px;background-color:#FFFFFF;color:#0000BB;\">3600</span><span style=\"font-family:&quot;font-size:14px;background-color:#FFFFFF;color:#007700;\">); 函数，有没有其他的方式种cookie。这个问题当时的第一感觉，实在考察curl。</span><span style=\"font-family:&quot;font-size:14px;background-color:#FFFFFF;color:#007700;\">查询资料才知道，原来是考察setrawcookie函数。这个函数和setcookie共同的作用，向客户端发送一个cookie，唯一的区别就是<strong><span style=\"background-color:#E53333;color:#E53333;\"></span></strong><strong><span style=\"background-color:#FFFFFF;color:#E53333;\">setrawcookie发送的cookie未经过URL编码</span></strong>。</span>', '', '', '', '', 85, 'N', 'N', '', '', 0, 0, 'N', 1516628011, 0, 'Y', 0, '', 'Y', 1516376327);
INSERT INTO `bage_post` VALUES (92, 1, '', '', '五一京北城市承德之行', '', '', '', '', '', '', '', 19, 0, '', '', '五一京北城市承德之行', '五一京北城市承德之行', '五一京北城市承德之行', '<p>rn	&nbsp; &nbsp; &nbsp;走大广京承高速段用时六小时全程往返五百公里。自15年公司组织去过草原感受草原风情，途径承德，觉得城市环境依山伴水，环境应该不错，又有避暑山庄胜地，便一直打算去京北一走。约大学同学成斌、老贺和军军加我四个人便下午四点从北京出发。一路我一直开到密云都是车水马龙，后一直按照导航推荐行驶，后发现导航软件和成斌的不同，原来导航设置错误，一直走的是国道，耽搁一些时间，直到约九点才抵达市内，后来是找好酒店住下。第二天，去了所谓的五a和世界文化遗产的避暑山庄。如下图，大家觉得如何呢？rn</p>rn<p>rn	避暑山庄（图）rn</p>rn<p>rn	<br />rn</p>rn<p>rn	&nbsp; &nbsp; &nbsp;后来我们中午便找个地方好好的吃上一顿。如下图。rn</p>rn<p>rn	&nbsp; &nbsp; &nbsp;酒足饭饱之后，便开始启程回京，自己估计再也不会来这里了，这个地方确实很一般，起初觉得这个地方应该是和颐和园相当，事实是差距悬殊。在回京的路上，到司马台长城附近，便和大家商量住一晚上明天去司马台长城一看，毕竟这里的长城使出了名的险峻。可出师不利，正好感到景区入口再修路，因全是锋利的石头便放弃了，继续回京，可这一路很是拥堵，至少八起以上的交通事故，所以这一路甚是辛苦，这次自驾让我对京北城市没了好感，也让我第一次知道当司机一定得肾好，遇上堵车更是麻烦，还有就是提前做好准备功课（1、景点和目的地的确认，口碑如何，2、路况的了解 &nbsp;3、提前定好酒店和规划旅游路线 ）rn</p>rn<p>rn	<br />rn</p>rn<p>rn	<br />rn</p>rn<p>rn	<br />rn</p>rn<p>rn	<br />rn</p>rn<p>rn	<br />rn</p>rn<p>rn	<br />rn</p>rn<p>rn	<br />rn</p>rn<p>rn	<br />rn</p>', '', '', '', '承德,五一,自驾', 223, 'N', 'N', '', '', 0, 0, 'N', 1497923528, 0, 'Y', 0, '', 'Y', 1493691349);
INSERT INTO `bage_post` VALUES (93, 1, '', '', '移动端开发工具分享和一些坑', '', '', '', '', '', '', '', 18, 0, '现在移动端唱主角的时代，作为PHP工程师，会经常和移动端的同事配合进行接口的开发，具体的交付物就是接口文档。', '', '移动端开发工具分享', '移动端开发工具分享和一些坑', '移动端开发工具分享', '<p>\r\n	现在移动端唱主角的时代，作为PHP工程师，会经常和移动端的同事配合进行接口的开发，具体的交付物就是接口文档。\r\n</p>\r\n<p>\r\n	一、工具分享rn\r\n</p>\r\n<p>\r\n	文档书写工具markdown。（教程如下）&nbsp;\r\n</p>\r\n<p>\r\n	接口测试工具postmanrn 移动端抓包工具Charless，这个先确保手机和pc 在同一个网段，可以给手机设置代理。Charless有许多功能，具体使用我会在后续的博客单独说明。\r\n</p>\r\n<p>\r\n	二、和移动端同事沟通的专业术语整理rn\r\n</p>\r\n<p>\r\n	数据字典、token\r\n</p>\r\n<p>\r\n	三、设计API一般流程和注意事项\r\n</p>\r\n<p>\r\n	四、实际开发的一些坑<span style=\"line-height:1.5;\"><span style=\"line-height:2.5;\"><span style=\"line-height:1;\"></span></span></span> rn\r\n</p>', '', '', '', '', 348, 'N', 'N', '', '', 0, 0, 'N', 1516635649, 0, 'Y', 0, '', 'Y', 1494754987);
INSERT INTO `bage_post` VALUES (97, 1, '', '', '48周笔记之我在校内外技术要点整理', '', '', '', '', '', '', '', 18, 0, '去年一月十七号至今已有快一年的时间了，在此期间有许多的开发工具都是第一次使用，也都能比较熟练操作了，但是并非完全的掌握其中的技能（比如，从搭建到运用和解决常见问题的技巧等等），所以打算进行总结总结。', '', '', '', '', '&nbsp; &nbsp;去年一月十七号至今已有快一年的时间了，在此期间有许多的开发工具都是第一次使用，也都能比较熟练操作了，但是并非完全的掌握和理解其中的道道（比如，从搭建到运用和解决常见问题的技巧等等），所以打算总结出要点，后续再做进一步深入。&nbsp;<br />\r\n1、电脑，Mac Pro，本机搭建docker环境，giT环境，一些实用的脚本，如G，F 。&nbsp;<br />\r\n2、运维容器工具，docker&nbsp;<br />\r\n3、版本控制，giT&nbsp;<br />\r\n4、接口调试工具，Charles，postMan&nbsp;<br />\r\n5、数据库，MySQL，Redis，memecached&nbsp;<br />\r\n6、文档书写，gitlab,Markdown&nbsp;<br />\r\n7、PHP框架，laravel5.4&nbsp;<br />\r\n8、IDE，phpstpm,vim&nbsp;<br />\r\n9、前端框架：Vue，smarty&nbsp;<br />\r\n10、队列，rabitmq&nbsp;<br />\r\n11、搜索，elasticsearch，sphinx&nbsp;<br />\r\n12、 PHP用来管理依赖关系的工具 ，composer&nbsp;<br />\r\n13、邮件第三方服务，sendcloud，mailgun&nbsp;<br />\r\n14、单元测试，phpunit&nbsp;<br />\r\n15、代码规范，参考阿里巴巴代码规范&nbsp;<br />\r\n16、代码审查机制，gitMergeRequest&nbsp;<br />\r\n17、代码快速上线和普通版本迭代机制，周迭代，149，develop，alpha各个环境之间的代码通讯机制，hotfix。&nbsp;<br />\r\n18、定时计划任务和有用的脚本，cronjob，g 等等。<br />\r\n19、移动端接口开发规范和大致流程。&nbsp;<br />\r\n20、移动端版本控制大致流程。&nbsp;<br />\r\n21、移动支付，微信，支付宝，银联。&nbsp;<br />\r\n22、网易直播jdk&nbsp;<br />\r\n23、班级空间数据缓存机制&nbsp;<br />\r\n24、班级空间数据架构，读写分离，缓存机制&nbsp;<br />\r\n25、等想到了在做补充。。。&nbsp;<br />\r\n<div>\r\n	<br />\r\n</div>\r\n<div id=\"2674-1512218076275\" style=\"font-size:14px;\">\r\n</div>\r\n<!--5f39ae17-8c62-4a45-bc43-b32064c9388a:W3siYmxvY2tJZCI6IjI2NzQtMTUxMjIxODA3NjI3NSIsImJsb2NrVHlwZSI6ImhlYWRpbmciLCJzdHlsZXMiOnt9LCJ0eXBlIjoiaGVhZGluZyIsInRleHQiOnsiZGF0YSI6W3siY2hhciI6IuWOuyIsInN0eWxlcyI6eyJib2xkIjp0cnVlLCJmb250LXNpemUiOjE4LCJjb2xvciI6IiM1OTU5NTkifX0seyJjaGFyIjoi5bm0Iiwic3R5bGVzIjp7ImJvbGQiOnRydWUsImZvbnQtc2l6ZSI6MTgsImNvbG9yIjoiIzU5NTk1OSJ9fSx7ImNoYXIiOiLkuIAiLCJzdHlsZXMiOnsiYm9sZCI6dHJ1ZSwiZm9udC1zaXplIjoxOCwiY29sb3IiOiIjNTk1OTU5In19LHsiY2hhciI6IuaciCIsInN0eWxlcyI6eyJib2xkIjp0cnVlLCJmb250LXNpemUiOjE4LCJjb2xvciI6IiM1OTU5NTkifX0seyJjaGFyIjoi5Y2BIiwic3R5bGVzIjp7ImJvbGQiOnRydWUsImZvbnQtc2l6ZSI6MTgsImNvbG9yIjoiIzU5NTk1OSJ9fSx7ImNoYXIiOiLkuIMiLCJzdHlsZXMiOnsiYm9sZCI6dHJ1ZSwiZm9udC1zaXplIjoxOCwiY29sb3IiOiIjNTk1OTU5In19LHsiY2hhciI6IuWPtyIsInN0eWxlcyI6eyJib2xkIjp0cnVlLCJmb250LXNpemUiOjE4LCJjb2xvciI6IiM1OTU5NTkifX0seyJjaGFyIjoi6IezIiwic3R5bGVzIjp7ImJvbGQiOnRydWUsImZvbnQtc2l6ZSI6MTgsImNvbG9yIjoiIzU5NTk1OSJ9fSx7ImNoYXIiOiLku4oiLCJzdHlsZXMiOnsiYm9sZCI6dHJ1ZSwiZm9udC1zaXplIjoxOCwiY29sb3IiOiIjNTk1OTU5In19LHsiY2hhciI6IuW3siIsInN0eWxlcyI6eyJib2xkIjp0cnVlLCJmb250LXNpemUiOjE4LCJjb2xvciI6IiM1OTU5NTkifX0seyJjaGFyIjoi5pyJIiwic3R5bGVzIjp7ImJvbGQiOnRydWUsImZvbnQtc2l6ZSI6MTgsImNvbG9yIjoiIzU5NTk1OSJ9fSx7ImNoYXIiOiLlv6siLCJzdHlsZXMiOnsiYm9sZCI6dHJ1ZSwiZm9udC1zaXplIjoxOCwiY29sb3IiOiIjNTk1OTU5In19LHsiY2hhciI6IuS4gCIsInN0eWxlcyI6eyJib2xkIjp0cnVlLCJmb250LXNpemUiOjE4LCJjb2xvciI6IiM1OTU5NTkifX0seyJjaGFyIjoi5bm0Iiwic3R5bGVzIjp7ImJvbGQiOnRydWUsImZvbnQtc2l6ZSI6MTgsImNvbG9yIjoiIzU5NTk1OSJ9fSx7ImNoYXIiOiLnmoQiLCJzdHlsZXMiOnsiYm9sZCI6dHJ1ZSwiZm9udC1zaXplIjoxOCwiY29sb3IiOiIjNTk1OTU5In19LHsiY2hhciI6IuaXtiIsInN0eWxlcyI6eyJib2xkIjp0cnVlLCJmb250LXNpemUiOjE4LCJjb2xvciI6IiM1OTU5NTkifX0seyJjaGFyIjoi6Ze0Iiwic3R5bGVzIjp7ImJvbGQiOnRydWUsImZvbnQtc2l6ZSI6MTgsImNvbG9yIjoiIzU5NTk1OSJ9fSx7ImNoYXIiOiLkuoYiLCJzdHlsZXMiOnsiYm9sZCI6dHJ1ZSwiZm9udC1zaXplIjoxOCwiY29sb3IiOiIjNTk1OTU5In19LHsiY2hhciI6Iu+8jCIsInN0eWxlcyI6eyJib2xkIjp0cnVlLCJmb250LXNpemUiOjE4LCJjb2xvciI6IiM1OTU5NTkifX0seyJjaGFyIjoi5ZyoIiwic3R5bGVzIjp7ImJvbGQiOnRydWUsImZvbnQtc2l6ZSI6MTgsImNvbG9yIjoiIzU5NTk1OSJ9fSx7ImNoYXIiOiLmraQiLCJzdHlsZXMiOnsiYm9sZCI6dHJ1ZSwiZm9udC1zaXplIjoxOCwiY29sb3IiOiIjNTk1OTU5In19LHsiY2hhciI6IuacnyIsInN0eWxlcyI6eyJib2xkIjp0cnVlLCJmb250LXNpemUiOjE4LCJjb2xvciI6IiM1OTU5NTkifX0seyJjaGFyIjoi6Ze0Iiwic3R5bGVzIjp7ImJvbGQiOnRydWUsImZvbnQtc2l6ZSI6MTgsImNvbG9yIjoiIzU5NTk1OSJ9fSx7ImNoYXIiOiLmnIkiLCJzdHlsZXMiOnsiYm9sZCI6dHJ1ZSwiZm9udC1zaXplIjoxOCwiY29sb3IiOiIjNTk1OTU5In19LHsiY2hhciI6IuiuuCIsInN0eWxlcyI6eyJib2xkIjp0cnVlLCJmb250LXNpemUiOjE4LCJjb2xvciI6IiM1OTU5NTkifX0seyJjaGFyIjoi5aSaIiwic3R5bGVzIjp7ImJvbGQiOnRydWUsImZvbnQtc2l6ZSI6MTgsImNvbG9yIjoiIzU5NTk1OSJ9fSx7ImNoYXIiOiLnmoQiLCJzdHlsZXMiOnsiYm9sZCI6dHJ1ZSwiZm9udC1zaXplIjoxOCwiY29sb3IiOiIjNTk1OTU5In19LHsiY2hhciI6IuW8gCIsInN0eWxlcyI6eyJib2xkIjp0cnVlLCJmb250LXNpemUiOjE4LCJjb2xvciI6IiM1OTU5NTkifX0seyJjaGFyIjoi5Y+RIiwic3R5bGVzIjp7ImJvbGQiOnRydWUsImZvbnQtc2l6ZSI6MTgsImNvbG9yIjoiIzU5NTk1OSJ9fSx7ImNoYXIiOiLlt6UiLCJzdHlsZXMiOnsiYm9sZCI6dHJ1ZSwiZm9udC1zaXplIjoxOCwiY29sb3IiOiIjNTk1OTU5In19LHsiY2hhciI6IuWFtyIsInN0eWxlcyI6eyJib2xkIjp0cnVlLCJmb250LXNpemUiOjE4LCJjb2xvciI6IiM1OTU5NTkifX0seyJjaGFyIjoi6YO9Iiwic3R5bGVzIjp7ImJvbGQiOnRydWUsImZvbnQtc2l6ZSI6MTgsImNvbG9yIjoiIzU5NTk1OSJ9fSx7ImNoYXIiOiLmmK8iLCJzdHlsZXMiOnsiYm9sZCI6dHJ1ZSwiZm9udC1zaXplIjoxOCwiY29sb3IiOiIjNTk1OTU5In19LHsiY2hhciI6IuesrCIsInN0eWxlcyI6eyJib2xkIjp0cnVlLCJmb250LXNpemUiOjE4LCJjb2xvciI6IiM1OTU5NTkifX0seyJjaGFyIjoi5LiAIiwic3R5bGVzIjp7ImJvbGQiOnRydWUsImZvbnQtc2l6ZSI6MTgsImNvbG9yIjoiIzU5NTk1OSJ9fSx7ImNoYXIiOiLmrKEiLCJzdHlsZXMiOnsiYm9sZCI6dHJ1ZSwiZm9udC1zaXplIjoxOCwiY29sb3IiOiIjNTk1OTU5In19LHsiY2hhciI6IuS9vyIsInN0eWxlcyI6eyJib2xkIjp0cnVlLCJmb250LXNpemUiOjE4LCJjb2xvciI6IiM1OTU5NTkifX0seyJjaGFyIjoi55SoIiwic3R5bGVzIjp7ImJvbGQiOnRydWUsImZvbnQtc2l6ZSI6MTgsImNvbG9yIjoiIzU5NTk1OSJ9fSx7ImNoYXIiOiLvvIwiLCJzdHlsZXMiOnsiYm9sZCI6dHJ1ZSwiZm9udC1zaXplIjoxOCwiY29sb3IiOiIjNTk1OTU5In19LHsiY2hhciI6IuS5nyIsInN0eWxlcyI6eyJib2xkIjp0cnVlLCJmb250LXNpemUiOjE4LCJjb2xvciI6IiM1OTU5NTkifX0seyJjaGFyIjoi6YO9Iiwic3R5bGVzIjp7ImJvbGQiOnRydWUsImZvbnQtc2l6ZSI6MTgsImNvbG9yIjoiIzU5NTk1OSJ9fSx7ImNoYXIiOiLog70iLCJzdHlsZXMiOnsiYm9sZCI6dHJ1ZSwiZm9udC1zaXplIjoxOCwiY29sb3IiOiIjNTk1OTU5In19LHsiY2hhciI6IuavlCIsInN0eWxlcyI6eyJib2xkIjp0cnVlLCJmb250LXNpemUiOjE4LCJjb2xvciI6IiM1OTU5NTkifX0seyJjaGFyIjoi6L6DIiwic3R5bGVzIjp7ImJvbGQiOnRydWUsImZvbnQtc2l6ZSI6MTgsImNvbG9yIjoiIzU5NTk1OSJ9fSx7ImNoYXIiOiLnhp8iLCJzdHlsZXMiOnsiYm9sZCI6dHJ1ZSwiZm9udC1zaXplIjoxOCwiY29sb3IiOiIjNTk1OTU5In19LHsiY2hhciI6Iue7gyIsInN0eWxlcyI6eyJib2xkIjp0cnVlLCJmb250LXNpemUiOjE4LCJjb2xvciI6IiM1OTU5NTkifX0seyJjaGFyIjoi5pONIiwic3R5bGVzIjp7ImJvbGQiOnRydWUsImZvbnQtc2l6ZSI6MTgsImNvbG9yIjoiIzU5NTk1OSJ9fSx7ImNoYXIiOiLkvZwiLCJzdHlsZXMiOnsiYm9sZCI6dHJ1ZSwiZm9udC1zaXplIjoxOCwiY29sb3IiOiIjNTk1OTU5In19LHsiY2hhciI6IuS6hiIsInN0eWxlcyI6eyJib2xkIjp0cnVlLCJmb250LXNpemUiOjE4LCJjb2xvciI6IiM1OTU5NTkifX0seyJjaGFyIjoi77yMIiwic3R5bGVzIjp7ImJvbGQiOnRydWUsImZvbnQtc2l6ZSI6MTgsImNvbG9yIjoiIzU5NTk1OSJ9fSx7ImNoYXIiOiLkvYYiLCJzdHlsZXMiOnsiYm9sZCI6dHJ1ZSwiZm9udC1zaXplIjoxOCwiY29sb3IiOiIjNTk1OTU5In19LHsiY2hhciI6IuaYryIsInN0eWxlcyI6eyJib2xkIjp0cnVlLCJmb250LXNpemUiOjE4LCJjb2xvciI6IiM1OTU5NTkifX0seyJjaGFyIjoi5bm2Iiwic3R5bGVzIjp7ImJvbGQiOnRydWUsImZvbnQtc2l6ZSI6MTgsImNvbG9yIjoiIzU5NTk1OSJ9fSx7ImNoYXIiOiLpnZ4iLCJzdHlsZXMiOnsiYm9sZCI6dHJ1ZSwiZm9udC1zaXplIjoxOCwiY29sb3IiOiIjNTk1OTU5In19LHsiY2hhciI6IuWujCIsInN0eWxlcyI6eyJib2xkIjp0cnVlLCJmb250LXNpemUiOjE4LCJjb2xvciI6IiM1OTU5NTkifX0seyJjaGFyIjoi5YWoIiwic3R5bGVzIjp7ImJvbGQiOnRydWUsImZvbnQtc2l6ZSI6MTgsImNvbG9yIjoiIzU5NTk1OSJ9fSx7ImNoYXIiOiLnmoQiLCJzdHlsZXMiOnsiYm9sZCI6dHJ1ZSwiZm9udC1zaXplIjoxOCwiY29sb3IiOiIjNTk1OTU5In19LHsiY2hhciI6IuaOjCIsInN0eWxlcyI6eyJib2xkIjp0cnVlLCJmb250LXNpemUiOjE4LCJjb2xvciI6IiM1OTU5NTkifX0seyJjaGFyIjoi5o+hIiwic3R5bGVzIjp7ImJvbGQiOnRydWUsImZvbnQtc2l6ZSI6MTgsImNvbG9yIjoiIzU5NTk1OSJ9fSx7ImNoYXIiOiLlhbYiLCJzdHlsZXMiOnsiYm9sZCI6dHJ1ZSwiZm9udC1zaXplIjoxOCwiY29sb3IiOiIjNTk1OTU5In19LHsiY2hhciI6IuS4rSIsInN0eWxlcyI6eyJib2xkIjp0cnVlLCJmb250LXNpemUiOjE4LCJjb2xvciI6IiM1OTU5NTkifX0seyJjaGFyIjoi55qEIiwic3R5bGVzIjp7ImJvbGQiOnRydWUsImZvbnQtc2l6ZSI6MTgsImNvbG9yIjoiIzU5NTk1OSJ9fSx7ImNoYXIiOiLmioAiLCJzdHlsZXMiOnsiYm9sZCI6dHJ1ZSwiZm9udC1zaXplIjoxOCwiY29sb3IiOiIjNTk1OTU5In19LHsiY2hhciI6IuiDvSIsInN0eWxlcyI6eyJib2xkIjp0cnVlLCJmb250LXNpemUiOjE4LCJjb2xvciI6IiM1OTU5NTkifX0seyJjaGFyIjoi77yIIiwic3R5bGVzIjp7ImJvbGQiOnRydWUsImZvbnQtc2l6ZSI6MTgsImNvbG9yIjoiIzU5NTk1OSJ9fSx7ImNoYXIiOiLmr5QiLCJzdHlsZXMiOnsiYm9sZCI6dHJ1ZSwiZm9udC1zaXplIjoxOCwiY29sb3IiOiIjNTk1OTU5In19LHsiY2hhciI6IuWmgiIsInN0eWxlcyI6eyJib2xkIjp0cnVlLCJmb250LXNpemUiOjE4LCJjb2xvciI6IiM1OTU5NTkifX0seyJjaGFyIjoi77yMIiwic3R5bGVzIjp7ImJvbGQiOnRydWUsImZvbnQtc2l6ZSI6MTgsImNvbG9yIjoiIzU5NTk1OSJ9fSx7ImNoYXIiOiLku44iLCJzdHlsZXMiOnsiYm9sZCI6dHJ1ZSwiZm9udC1zaXplIjoxOCwiY29sb3IiOiIjNTk1OTU5In19LHsiY2hhciI6IuaQrSIsInN0eWxlcyI6eyJib2xkIjp0cnVlLCJmb250LXNpemUiOjE4LCJjb2xvciI6IiM1OTU5NTkifX0seyJjaGFyIjoi5bu6Iiwic3R5bGVzIjp7ImJvbGQiOnRydWUsImZvbnQtc2l6ZSI6MTgsImNvbG9yIjoiIzU5NTk1OSJ9fSx7ImNoYXIiOiLliLAiLCJzdHlsZXMiOnsiYm9sZCI6dHJ1ZSwiZm9udC1zaXplIjoxOCwiY29sb3IiOiIjNTk1OTU5In19LHsiY2hhciI6Iui/kCIsInN0eWxlcyI6eyJib2xkIjp0cnVlLCJmb250LXNpemUiOjE4LCJjb2xvciI6IiM1OTU5NTkifX0seyJjaGFyIjoi55SoIiwic3R5bGVzIjp7ImJvbGQiOnRydWUsImZvbnQtc2l6ZSI6MTgsImNvbG9yIjoiIzU5NTk1OSJ9fSx7ImNoYXIiOiLlkowiLCJzdHlsZXMiOnsiYm9sZCI6dHJ1ZSwiZm9udC1zaXplIjoxOCwiY29sb3IiOiIjNTk1OTU5In19LHsiY2hhciI6IuinoyIsInN0eWxlcyI6eyJib2xkIjp0cnVlLCJmb250LXNpemUiOjE4LCJjb2xvciI6IiM1OTU5NTkifX0seyJjaGFyIjoi5YazIiwic3R5bGVzIjp7ImJvbGQiOnRydWUsImZvbnQtc2l6ZSI6MTgsImNvbG9yIjoiIzU5NTk1OSJ9fSx7ImNoYXIiOiLluLgiLCJzdHlsZXMiOnsiYm9sZCI6dHJ1ZSwiZm9udC1zaXplIjoxOCwiY29sb3IiOiIjNTk1OTU5In19LHsiY2hhciI6IuingSIsInN0eWxlcyI6eyJib2xkIjp0cnVlLCJmb250LXNpemUiOjE4LCJjb2xvciI6IiM1OTU5NTkifX0seyJjaGFyIjoi6ZeuIiwic3R5bGVzIjp7ImJvbGQiOnRydWUsImZvbnQtc2l6ZSI6MTgsImNvbG9yIjoiIzU5NTk1OSJ9fSx7ImNoYXIiOiLpopgiLCJzdHlsZXMiOnsiYm9sZCI6dHJ1ZSwiZm9udC1zaXplIjoxOCwiY29sb3IiOiIjNTk1OTU5In19LHsiY2hhciI6IueahCIsInN0eWxlcyI6eyJib2xkIjp0cnVlLCJmb250LXNpemUiOjE4LCJjb2xvciI6IiM1OTU5NTkifX0seyJjaGFyIjoi5oqAIiwic3R5bGVzIjp7ImJvbGQiOnRydWUsImZvbnQtc2l6ZSI6MTgsImNvbG9yIjoiIzU5NTk1OSJ9fSx7ImNoYXIiOiLlt6ciLCJzdHlsZXMiOnsiYm9sZCI6dHJ1ZSwiZm9udC1zaXplIjoxOCwiY29sb3IiOiIjNTk1OTU5In19LHsiY2hhciI6IuetiSIsInN0eWxlcyI6eyJib2xkIjp0cnVlLCJmb250LXNpemUiOjE4LCJjb2xvciI6IiM1OTU5NTkifX0seyJjaGFyIjoi562JIiwic3R5bGVzIjp7ImJvbGQiOnRydWUsImZvbnQtc2l6ZSI6MTgsImNvbG9yIjoiIzU5NTk1OSJ9fSx7ImNoYXIiOiLvvIkiLCJzdHlsZXMiOnsiYm9sZCI6dHJ1ZSwiZm9udC1zaXplIjoxOCwiY29sb3IiOiIjNTk1OTU5In19LHsiY2hhciI6Iu+8jCIsInN0eWxlcyI6eyJib2xkIjp0cnVlLCJmb250LXNpemUiOjE4LCJjb2xvciI6IiM1OTU5NTkifX0seyJjaGFyIjoi5omAIiwic3R5bGVzIjp7ImJvbGQiOnRydWUsImZvbnQtc2l6ZSI6MTgsImNvbG9yIjoiIzU5NTk1OSJ9fSx7ImNoYXIiOiLku6UiLCJzdHlsZXMiOnsiYm9sZCI6dHJ1ZSwiZm9udC1zaXplIjoxOCwiY29sb3IiOiIjNTk1OTU5In19LHsiY2hhciI6IuaJkyIsInN0eWxlcyI6eyJib2xkIjp0cnVlLCJmb250LXNpemUiOjE4LCJjb2xvciI6IiM1OTU5NTkifX0seyJjaGFyIjoi566XIiwic3R5bGVzIjp7ImJvbGQiOnRydWUsImZvbnQtc2l6ZSI6MTgsImNvbG9yIjoiIzU5NTk1OSJ9fSx7ImNoYXIiOiLov5siLCJzdHlsZXMiOnsiYm9sZCI6dHJ1ZSwiZm9udC1zaXplIjoxOCwiY29sb3IiOiIjNTk1OTU5In19LHsiY2hhciI6IuihjCIsInN0eWxlcyI6eyJib2xkIjp0cnVlLCJmb250LXNpemUiOjE4LCJjb2xvciI6IiM1OTU5NTkifX0seyJjaGFyIjoi5oC7Iiwic3R5bGVzIjp7ImJvbGQiOnRydWUsImZvbnQtc2l6ZSI6MTgsImNvbG9yIjoiIzU5NTk1OSJ9fSx7ImNoYXIiOiLnu5MiLCJzdHlsZXMiOnsiYm9sZCI6dHJ1ZSwiZm9udC1zaXplIjoxOCwiY29sb3IiOiIjNTk1OTU5In19LHsiY2hhciI6IuaAuyIsInN0eWxlcyI6eyJib2xkIjp0cnVlLCJmb250LXNpemUiOjE4LCJjb2xvciI6IiM1OTU5NTkifX0seyJjaGFyIjoi57uTIiwic3R5bGVzIjp7ImJvbGQiOnRydWUsImZvbnQtc2l6ZSI6MTgsImNvbG9yIjoiIzU5NTk1OSJ9fSx7ImNoYXIiOiLjgIIiLCJzdHlsZXMiOnsiYm9sZCI6dHJ1ZSwiZm9udC1zaXplIjoxOCwiY29sb3IiOiIjNTk1OTU5In19XSwiaXNSaWNoVGV4dCI6dHJ1ZSwia2VlcExpbmVCcmVhayI6dHJ1ZX0sInJpY2hUZXh0Ijp7ImRhdGEiOlt7ImNoYXIiOiLljrsiLCJzdHlsZXMiOnsiYm9sZCI6dHJ1ZSwiZm9udC1zaXplIjoxOCwiY29sb3IiOiIjNTk1OTU5In19LHsiY2hhciI6IuW5tCIsInN0eWxlcyI6eyJib2xkIjp0cnVlLCJmb250LXNpemUiOjE4LCJjb2xvciI6IiM1OTU5NTkifX0seyJjaGFyIjoi5LiAIiwic3R5bGVzIjp7ImJvbGQiOnRydWUsImZvbnQtc2l6ZSI6MTgsImNvbG9yIjoiIzU5NTk1OSJ9fSx7ImNoYXIiOiLmnIgiLCJzdHlsZXMiOnsiYm9sZCI6dHJ1ZSwiZm9udC1zaXplIjoxOCwiY29sb3IiOiIjNTk1OTU5In19LHsiY2hhciI6IuWNgSIsInN0eWxlcyI6eyJib2xkIjp0cnVlLCJmb250LXNpemUiOjE4LCJjb2xvciI6IiM1OTU5NTkifX0seyJjaGFyIjoi5LiDIiwic3R5bGVzIjp7ImJvbGQiOnRydWUsImZvbnQtc2l6ZSI6MTgsImNvbG9yIjoiIzU5NTk1OSJ9fSx7ImNoYXIiOiLlj7ciLCJzdHlsZXMiOnsiYm9sZCI6dHJ1ZSwiZm9udC1zaXplIjoxOCwiY29sb3IiOiIjNTk1OTU5In19LHsiY2hhciI6IuiHsyIsInN0eWxlcyI6eyJib2xkIjp0cnVlLCJmb250LXNpemUiOjE4LCJjb2xvciI6IiM1OTU5NTkifX0seyJjaGFyIjoi5LuKIiwic3R5bGVzIjp7ImJvbGQiOnRydWUsImZvbnQtc2l6ZSI6MTgsImNvbG9yIjoiIzU5NTk1OSJ9fSx7ImNoYXIiOiLlt7IiLCJzdHlsZXMiOnsiYm9sZCI6dHJ1ZSwiZm9udC1zaXplIjoxOCwiY29sb3IiOiIjNTk1OTU5In19LHsiY2hhciI6IuaciSIsInN0eWxlcyI6eyJib2xkIjp0cnVlLCJmb250LXNpemUiOjE4LCJjb2xvciI6IiM1OTU5NTkifX0seyJjaGFyIjoi5b+rIiwic3R5bGVzIjp7ImJvbGQiOnRydWUsImZvbnQtc2l6ZSI6MTgsImNvbG9yIjoiIzU5NTk1OSJ9fSx7ImNoYXIiOiLkuIAiLCJzdHlsZXMiOnsiYm9sZCI6dHJ1ZSwiZm9udC1zaXplIjoxOCwiY29sb3IiOiIjNTk1OTU5In19LHsiY2hhciI6IuW5tCIsInN0eWxlcyI6eyJib2xkIjp0cnVlLCJmb250LXNpemUiOjE4LCJjb2xvciI6IiM1OTU5NTkifX0seyJjaGFyIjoi55qEIiwic3R5bGVzIjp7ImJvbGQiOnRydWUsImZvbnQtc2l6ZSI6MTgsImNvbG9yIjoiIzU5NTk1OSJ9fSx7ImNoYXIiOiLml7YiLCJzdHlsZXMiOnsiYm9sZCI6dHJ1ZSwiZm9udC1zaXplIjoxOCwiY29sb3IiOiIjNTk1OTU5In19LHsiY2hhciI6IumXtCIsInN0eWxlcyI6eyJib2xkIjp0cnVlLCJmb250LXNpemUiOjE4LCJjb2xvciI6IiM1OTU5NTkifX0seyJjaGFyIjoi5LqGIiwic3R5bGVzIjp7ImJvbGQiOnRydWUsImZvbnQtc2l6ZSI6MTgsImNvbG9yIjoiIzU5NTk1OSJ9fSx7ImNoYXIiOiLvvIwiLCJzdHlsZXMiOnsiYm9sZCI6dHJ1ZSwiZm9udC1zaXplIjoxOCwiY29sb3IiOiIjNTk1OTU5In19LHsiY2hhciI6IuWcqCIsInN0eWxlcyI6eyJib2xkIjp0cnVlLCJmb250LXNpemUiOjE4LCJjb2xvciI6IiM1OTU5NTkifX0seyJjaGFyIjoi5q2kIiwic3R5bGVzIjp7ImJvbGQiOnRydWUsImZvbnQtc2l6ZSI6MTgsImNvbG9yIjoiIzU5NTk1OSJ9fSx7ImNoYXIiOiLmnJ8iLCJzdHlsZXMiOnsiYm9sZCI6dHJ1ZSwiZm9udC1zaXplIjoxOCwiY29sb3IiOiIjNTk1OTU5In19LHsiY2hhciI6IumXtCIsInN0eWxlcyI6eyJib2xkIjp0cnVlLCJmb250LXNpemUiOjE4LCJjb2xvciI6IiM1OTU5NTkifX0seyJjaGFyIjoi5pyJIiwic3R5bGVzIjp7ImJvbGQiOnRydWUsImZvbnQtc2l6ZSI6MTgsImNvbG9yIjoiIzU5NTk1OSJ9fSx7ImNoYXIiOiLorrgiLCJzdHlsZXMiOnsiYm9sZCI6dHJ1ZSwiZm9udC1zaXplIjoxOCwiY29sb3IiOiIjNTk1OTU5In19LHsiY2hhciI6IuWkmiIsInN0eWxlcyI6eyJib2xkIjp0cnVlLCJmb250LXNpemUiOjE4LCJjb2xvciI6IiM1OTU5NTkifX0seyJjaGFyIjoi55qEIiwic3R5bGVzIjp7ImJvbGQiOnRydWUsImZvbnQtc2l6ZSI6MTgsImNvbG9yIjoiIzU5NTk1OSJ9fSx7ImNoYXIiOiLlvIAiLCJzdHlsZXMiOnsiYm9sZCI6dHJ1ZSwiZm9udC1zaXplIjoxOCwiY29sb3IiOiIjNTk1OTU5In19LHsiY2hhciI6IuWPkSIsInN0eWxlcyI6eyJib2xkIjp0cnVlLCJmb250LXNpemUiOjE4LCJjb2xvciI6IiM1OTU5NTkifX0seyJjaGFyIjoi5belIiwic3R5bGVzIjp7ImJvbGQiOnRydWUsImZvbnQtc2l6ZSI6MTgsImNvbG9yIjoiIzU5NTk1OSJ9fSx7ImNoYXIiOiLlhbciLCJzdHlsZXMiOnsiYm9sZCI6dHJ1ZSwiZm9udC1zaXplIjoxOCwiY29sb3IiOiIjNTk1OTU5In19LHsiY2hhciI6IumDvSIsInN0eWxlcyI6eyJib2xkIjp0cnVlLCJmb250LXNpemUiOjE4LCJjb2xvciI6IiM1OTU5NTkifX0seyJjaGFyIjoi5pivIiwic3R5bGVzIjp7ImJvbGQiOnRydWUsImZvbnQtc2l6ZSI6MTgsImNvbG9yIjoiIzU5NTk1OSJ9fSx7ImNoYXIiOiLnrKwiLCJzdHlsZXMiOnsiYm9sZCI6dHJ1ZSwiZm9udC1zaXplIjoxOCwiY29sb3IiOiIjNTk1OTU5In19LHsiY2hhciI6IuS4gCIsInN0eWxlcyI6eyJib2xkIjp0cnVlLCJmb250LXNpemUiOjE4LCJjb2xvciI6IiM1OTU5NTkifX0seyJjaGFyIjoi5qyhIiwic3R5bGVzIjp7ImJvbGQiOnRydWUsImZvbnQtc2l6ZSI6MTgsImNvbG9yIjoiIzU5NTk1OSJ9fSx7ImNoYXIiOiLkvb8iLCJzdHlsZXMiOnsiYm9sZCI6dHJ1ZSwiZm9udC1zaXplIjoxOCwiY29sb3IiOiIjNTk1OTU5In19LHsiY2hhciI6IueUqCIsInN0eWxlcyI6eyJib2xkIjp0cnVlLCJmb250LXNpemUiOjE4LCJjb2xvciI6IiM1OTU5NTkifX0seyJjaGFyIjoi77yMIiwic3R5bGVzIjp7ImJvbGQiOnRydWUsImZvbnQtc2l6ZSI6MTgsImNvbG9yIjoiIzU5NTk1OSJ9fSx7ImNoYXIiOiLkuZ8iLCJzdHlsZXMiOnsiYm9sZCI6dHJ1ZSwiZm9udC1zaXplIjoxOCwiY29sb3IiOiIjNTk1OTU5In19LHsiY2hhciI6IumDvSIsInN0eWxlcyI6eyJib2xkIjp0cnVlLCJmb250LXNpemUiOjE4LCJjb2xvciI6IiM1OTU5NTkifX0seyJjaGFyIjoi6IO9Iiwic3R5bGVzIjp7ImJvbGQiOnRydWUsImZvbnQtc2l6ZSI6MTgsImNvbG9yIjoiIzU5NTk1OSJ9fSx7ImNoYXIiOiLmr5QiLCJzdHlsZXMiOnsiYm9sZCI6dHJ1ZSwiZm9udC1zaXplIjoxOCwiY29sb3IiOiIjNTk1OTU5In19LHsiY2hhciI6Iui+gyIsInN0eWxlcyI6eyJib2xkIjp0cnVlLCJmb250LXNpemUiOjE4LCJjb2xvciI6IiM1OTU5NTkifX0seyJjaGFyIjoi54afIiwic3R5bGVzIjp7ImJvbGQiOnRydWUsImZvbnQtc2l6ZSI6MTgsImNvbG9yIjoiIzU5NTk1OSJ9fSx7ImNoYXIiOiLnu4MiLCJzdHlsZXMiOnsiYm9sZCI6dHJ1ZSwiZm9udC1zaXplIjoxOCwiY29sb3IiOiIjNTk1OTU5In19LHsiY2hhciI6IuaTjSIsInN0eWxlcyI6eyJib2xkIjp0cnVlLCJmb250LXNpemUiOjE4LCJjb2xvciI6IiM1OTU5NTkifX0seyJjaGFyIjoi5L2cIiwic3R5bGVzIjp7ImJvbGQiOnRydWUsImZvbnQtc2l6ZSI6MTgsImNvbG9yIjoiIzU5NTk1OSJ9fSx7ImNoYXIiOiLkuoYiLCJzdHlsZXMiOnsiYm9sZCI6dHJ1ZSwiZm9udC1zaXplIjoxOCwiY29sb3IiOiIjNTk1OTU5In19LHsiY2hhciI6Iu+8jCIsInN0eWxlcyI6eyJib2xkIjp0cnVlLCJmb250LXNpemUiOjE4LCJjb2xvciI6IiM1OTU5NTkifX0seyJjaGFyIjoi5L2GIiwic3R5bGVzIjp7ImJvbGQiOnRydWUsImZvbnQtc2l6ZSI6MTgsImNvbG9yIjoiIzU5NTk1OSJ9fSx7ImNoYXIiOiLmmK8iLCJzdHlsZXMiOnsiYm9sZCI6dHJ1ZSwiZm9udC1zaXplIjoxOCwiY29sb3IiOiIjNTk1OTU5In19LHsiY2hhciI6IuW5tiIsInN0eWxlcyI6eyJib2xkIjp0cnVlLCJmb250LXNpemUiOjE4LCJjb2xvciI6IiM1OTU5NTkifX0seyJjaGFyIjoi6Z2eIiwic3R5bGVzIjp7ImJvbGQiOnRydWUsImZvbnQtc2l6ZSI6MTgsImNvbG9yIjoiIzU5NTk1OSJ9fSx7ImNoYXIiOiLlrowiLCJzdHlsZXMiOnsiYm9sZCI6dHJ1ZSwiZm9udC1zaXplIjoxOCwiY29sb3IiOiIjNTk1OTU5In19LHsiY2hhciI6IuWFqCIsInN0eWxlcyI6eyJib2xkIjp0cnVlLCJmb250LXNpemUiOjE4LCJjb2xvciI6IiM1OTU5NTkifX0seyJjaGFyIjoi55qEIiwic3R5bGVzIjp7ImJvbGQiOnRydWUsImZvbnQtc2l6ZSI6MTgsImNvbG9yIjoiIzU5NTk1OSJ9fSx7ImNoYXIiOiLmjowiLCJzdHlsZXMiOnsiYm9sZCI6dHJ1ZSwiZm9udC1zaXplIjoxOCwiY29sb3IiOiIjNTk1OTU5In19LHsiY2hhciI6IuaPoSIsInN0eWxlcyI6eyJib2xkIjp0cnVlLCJmb250LXNpemUiOjE4LCJjb2xvciI6IiM1OTU5NTkifX0seyJjaGFyIjoi5YW2Iiwic3R5bGVzIjp7ImJvbGQiOnRydWUsImZvbnQtc2l6ZSI6MTgsImNvbG9yIjoiIzU5NTk1OSJ9fSx7ImNoYXIiOiLkuK0iLCJzdHlsZXMiOnsiYm9sZCI6dHJ1ZSwiZm9udC1zaXplIjoxOCwiY29sb3IiOiIjNTk1OTU5In19LHsiY2hhciI6IueahCIsInN0eWxlcyI6eyJib2xkIjp0cnVlLCJmb250LXNpemUiOjE4LCJjb2xvciI6IiM1OTU5NTkifX0seyJjaGFyIjoi5oqAIiwic3R5bGVzIjp7ImJvbGQiOnRydWUsImZvbnQtc2l6ZSI6MTgsImNvbG9yIjoiIzU5NTk1OSJ9fSx7ImNoYXIiOiLog70iLCJzdHlsZXMiOnsiYm9sZCI6dHJ1ZSwiZm9udC1zaXplIjoxOCwiY29sb3IiOiIjNTk1OTU5In19LHsiY2hhciI6Iu+8iCIsInN0eWxlcyI6eyJib2xkIjp0cnVlLCJmb250LXNpemUiOjE4LCJjb2xvciI6IiM1OTU5NTkifX0seyJjaGFyIjoi5q+UIiwic3R5bGVzIjp7ImJvbGQiOnRydWUsImZvbnQtc2l6ZSI6MTgsImNvbG9yIjoiIzU5NTk1OSJ9fSx7ImNoYXIiOiLlpoIiLCJzdHlsZXMiOnsiYm9sZCI6dHJ1ZSwiZm9udC1zaXplIjoxOCwiY29sb3IiOiIjNTk1OTU5In19LHsiY2hhciI6Iu+8jCIsInN0eWxlcyI6eyJib2xkIjp0cnVlLCJmb250LXNpemUiOjE4LCJjb2xvciI6IiM1OTU5NTkifX0seyJjaGFyIjoi5LuOIiwic3R5bGVzIjp7ImJvbGQiOnRydWUsImZvbnQtc2l6ZSI6MTgsImNvbG9yIjoiIzU5NTk1OSJ9fSx7ImNoYXIiOiLmkK0iLCJzdHlsZXMiOnsiYm9sZCI6dHJ1ZSwiZm9udC1zaXplIjoxOCwiY29sb3IiOiIjNTk1OTU5In19LHsiY2hhciI6IuW7uiIsInN0eWxlcyI6eyJib2xkIjp0cnVlLCJmb250LXNpemUiOjE4LCJjb2xvciI6IiM1OTU5NTkifX0seyJjaGFyIjoi5YiwIiwic3R5bGVzIjp7ImJvbGQiOnRydWUsImZvbnQtc2l6ZSI6MTgsImNvbG9yIjoiIzU5NTk1OSJ9fSx7ImNoYXIiOiLov5AiLCJzdHlsZXMiOnsiYm9sZCI6dHJ1ZSwiZm9udC1zaXplIjoxOCwiY29sb3IiOiIjNTk1OTU5In19LHsiY2hhciI6IueUqCIsInN0eWxlcyI6eyJib2xkIjp0cnVlLCJmb250LXNpemUiOjE4LCJjb2xvciI6IiM1OTU5NTkifX0seyJjaGFyIjoi5ZKMIiwic3R5bGVzIjp7ImJvbGQiOnRydWUsImZvbnQtc2l6ZSI6MTgsImNvbG9yIjoiIzU5NTk1OSJ9fSx7ImNoYXIiOiLop6MiLCJzdHlsZXMiOnsiYm9sZCI6dHJ1ZSwiZm9udC1zaXplIjoxOCwiY29sb3IiOiIjNTk1OTU5In19LHsiY2hhciI6IuWGsyIsInN0eWxlcyI6eyJib2xkIjp0cnVlLCJmb250LXNpemUiOjE4LCJjb2xvciI6IiM1OTU5NTkifX0seyJjaGFyIjoi5bi4Iiwic3R5bGVzIjp7ImJvbGQiOnRydWUsImZvbnQtc2l6ZSI6MTgsImNvbG9yIjoiIzU5NTk1OSJ9fSx7ImNoYXIiOiLop4EiLCJzdHlsZXMiOnsiYm9sZCI6dHJ1ZSwiZm9udC1zaXplIjoxOCwiY29sb3IiOiIjNTk1OTU5In19LHsiY2hhciI6IumXriIsInN0eWxlcyI6eyJib2xkIjp0cnVlLCJmb250LXNpemUiOjE4LCJjb2xvciI6IiM1OTU5NTkifX0seyJjaGFyIjoi6aKYIiwic3R5bGVzIjp7ImJvbGQiOnRydWUsImZvbnQtc2l6ZSI6MTgsImNvbG9yIjoiIzU5NTk1OSJ9fSx7ImNoYXIiOiLnmoQiLCJzdHlsZXMiOnsiYm9sZCI6dHJ1ZSwiZm9udC1zaXplIjoxOCwiY29sb3IiOiIjNTk1OTU5In19LHsiY2hhciI6IuaKgCIsInN0eWxlcyI6eyJib2xkIjp0cnVlLCJmb250LXNpemUiOjE4LCJjb2xvciI6IiM1OTU5NTkifX0seyJjaGFyIjoi5benIiwic3R5bGVzIjp7ImJvbGQiOnRydWUsImZvbnQtc2l6ZSI6MTgsImNvbG9yIjoiIzU5NTk1OSJ9fSx7ImNoYXIiOiLnrYkiLCJzdHlsZXMiOnsiYm9sZCI6dHJ1ZSwiZm9udC1zaXplIjoxOCwiY29sb3IiOiIjNTk1OTU5In19LHsiY2hhciI6IuetiSIsInN0eWxlcyI6eyJib2xkIjp0cnVlLCJmb250LXNpemUiOjE4LCJjb2xvciI6IiM1OTU5NTkifX0seyJjaGFyIjoi77yJIiwic3R5bGVzIjp7ImJvbGQiOnRydWUsImZvbnQtc2l6ZSI6MTgsImNvbG9yIjoiIzU5NTk1OSJ9fSx7ImNoYXIiOiLvvIwiLCJzdHlsZXMiOnsiYm9sZCI6dHJ1ZSwiZm9udC1zaXplIjoxOCwiY29sb3IiOiIjNTk1OTU5In19LHsiY2hhciI6IuaJgCIsInN0eWxlcyI6eyJib2xkIjp0cnVlLCJmb250LXNpemUiOjE4LCJjb2xvciI6IiM1OTU5NTkifX0seyJjaGFyIjoi5LulIiwic3R5bGVzIjp7ImJvbGQiOnRydWUsImZvbnQtc2l6ZSI6MTgsImNvbG9yIjoiIzU5NTk1OSJ9fSx7ImNoYXIiOiLmiZMiLCJzdHlsZXMiOnsiYm9sZCI6dHJ1ZSwiZm9udC1zaXplIjoxOCwiY29sb3IiOiIjNTk1OTU5In19LHsiY2hhciI6IueulyIsInN0eWxlcyI6eyJib2xkIjp0cnVlLCJmb250LXNpemUiOjE4LCJjb2xvciI6IiM1OTU5NTkifX0seyJjaGFyIjoi6L+bIiwic3R5bGVzIjp7ImJvbGQiOnRydWUsImZvbnQtc2l6ZSI6MTgsImNvbG9yIjoiIzU5NTk1OSJ9fSx7ImNoYXIiOiLooYwiLCJzdHlsZXMiOnsiYm9sZCI6dHJ1ZSwiZm9udC1zaXplIjoxOCwiY29sb3IiOiIjNTk1OTU5In19LHsiY2hhciI6IuaAuyIsInN0eWxlcyI6eyJib2xkIjp0cnVlLCJmb250LXNpemUiOjE4LCJjb2xvciI6IiM1OTU5NTkifX0seyJjaGFyIjoi57uTIiwic3R5bGVzIjp7ImJvbGQiOnRydWUsImZvbnQtc2l6ZSI6MTgsImNvbG9yIjoiIzU5NTk1OSJ9fSx7ImNoYXIiOiLmgLsiLCJzdHlsZXMiOnsiYm9sZCI6dHJ1ZSwiZm9udC1zaXplIjoxOCwiY29sb3IiOiIjNTk1OTU5In19LHsiY2hhciI6Iue7kyIsInN0eWxlcyI6eyJib2xkIjp0cnVlLCJmb250LXNpemUiOjE4LCJjb2xvciI6IiM1OTU5NTkifX0seyJjaGFyIjoi44CCIiwic3R5bGVzIjp7ImJvbGQiOnRydWUsImZvbnQtc2l6ZSI6MTgsImNvbG9yIjoiIzU5NTk1OSJ9fV0sImlzUmljaFRleHQiOnRydWUsImtlZXBMaW5lQnJlYWsiOnRydWV9LCJsZXZlbCI6ImIifSx7ImJsb2NrSWQiOiI2ODE5LTE1MTIyMjA3NzA1NzIiLCJibG9ja1R5cGUiOiJwYXJhZ3JhcGgiLCJzdHlsZXMiOnt9LCJ0eXBlIjoicGFyYWdyYXBoIiwidGV4dCI6eyJkYXRhIjpbeyJjaGFyIjoiMSJ9LHsiY2hhciI6IuOAgSJ9LHsiY2hhciI6IueUtSJ9LHsiY2hhciI6IuiEkSJ9LHsiY2hhciI6Iu+8jCJ9LHsiY2hhciI6Ik0ifSx7ImNoYXIiOiJhIn0seyJjaGFyIjoiYyJ9LHsiY2hhciI6IiAifSx7ImNoYXIiOiJQIn0seyJjaGFyIjoiciJ9LHsiY2hhciI6Im8ifSx7ImNoYXIiOiLvvIwifSx7ImNoYXIiOiLmnKwifSx7ImNoYXIiOiLmnLoifSx7ImNoYXIiOiLmkK0ifSx7ImNoYXIiOiLlu7oifSx7ImNoYXIiOiJkIn0seyJjaGFyIjoibyJ9LHsiY2hhciI6ImMifSx7ImNoYXIiOiJrIn0seyJjaGFyIjoiZSJ9LHsiY2hhciI6InIifSx7ImNoYXIiOiLnjq8ifSx7ImNoYXIiOiLlooMifSx7ImNoYXIiOiLvvIwifSx7ImNoYXIiOiJnIn0seyJjaGFyIjoiaSJ9LHsiY2hhciI6IlQifSx7ImNoYXIiOiLnjq8ifSx7ImNoYXIiOiLlooMifSx7ImNoYXIiOiLvvIwifSx7ImNoYXIiOiLkuIAifSx7ImNoYXIiOiLkupsifSx7ImNoYXIiOiLlrp4ifSx7ImNoYXIiOiLnlKgifSx7ImNoYXIiOiLnmoQifSx7ImNoYXIiOiLohJoifSx7ImNoYXIiOiLmnKwifSx7ImNoYXIiOiLvvIwifSx7ImNoYXIiOiLlpoIifSx7ImNoYXIiOiJHIn0seyJjaGFyIjoi77yMIn0seyJjaGFyIjoiRiJ9LHsiY2hhciI6IiAifSx7ImNoYXIiOiLjgIIifV0sImlzUmljaFRleHQiOnRydWUsImtlZXBMaW5lQnJlYWsiOnRydWV9fSx7ImJsb2NrSWQiOiI2MDg5LTE1MTIyMjExNTQ5MDAiLCJibG9ja1R5cGUiOiJwYXJhZ3JhcGgiLCJzdHlsZXMiOnt9LCJ0eXBlIjoicGFyYWdyYXBoIiwidGV4dCI6eyJkYXRhIjpbeyJjaGFyIjoiMiJ9LHsiY2hhciI6IuOAgSJ9LHsiY2hhciI6Iui/kCJ9LHsiY2hhciI6Iue7tCJ9LHsiY2hhciI6IuWuuSJ9LHsiY2hhciI6IuWZqCJ9LHsiY2hhciI6IuW3pSJ9LHsiY2hhciI6IuWFtyJ9LHsiY2hhciI6Iu+8jCJ9LHsiY2hhciI6ImQifSx7ImNoYXIiOiJvIn0seyJjaGFyIjoiYyJ9LHsiY2hhciI6ImsifSx7ImNoYXIiOiJlIn0seyJjaGFyIjoiciJ9XSwiaXNSaWNoVGV4dCI6dHJ1ZSwia2VlcExpbmVCcmVhayI6dHJ1ZX19LHsiYmxvY2tJZCI6Ijc0NzMtMTUxMjIyMTE3MDcwNyIsImJsb2NrVHlwZSI6InBhcmFncmFwaCIsInN0eWxlcyI6e30sInR5cGUiOiJwYXJhZ3JhcGgiLCJ0ZXh0Ijp7ImRhdGEiOlt7ImNoYXIiOiIzIn0seyJjaGFyIjoi44CBIn0seyJjaGFyIjoi54mIIn0seyJjaGFyIjoi5pysIn0seyJjaGFyIjoi5o6nIn0seyJjaGFyIjoi5Yi2In0seyJjaGFyIjoi77yMIn0seyJjaGFyIjoiZyJ9LHsiY2hhciI6ImkifSx7ImNoYXIiOiJUIn1dLCJpc1JpY2hUZXh0Ijp0cnVlLCJrZWVwTGluZUJyZWFrIjp0cnVlfX0seyJibG9ja0lkIjoiNjk1My0xNTEyMjIxMTk1NzYzIiwiYmxvY2tUeXBlIjoicGFyYWdyYXBoIiwic3R5bGVzIjp7fSwidHlwZSI6InBhcmFncmFwaCIsInRleHQiOnsiZGF0YSI6W3siY2hhciI6IjQifSx7ImNoYXIiOiLjgIEifSx7ImNoYXIiOiLmjqUifSx7ImNoYXIiOiLlj6MifSx7ImNoYXIiOiLosIMifSx7ImNoYXIiOiLor5UifSx7ImNoYXIiOiLlt6UifSx7ImNoYXIiOiLlhbcifSx7ImNoYXIiOiLvvIwifSx7ImNoYXIiOiJDIn0seyJjaGFyIjoiaCJ9LHsiY2hhciI6ImEifSx7ImNoYXIiOiJyIn0seyJjaGFyIjoibCJ9LHsiY2hhciI6ImUifSx7ImNoYXIiOiJzIn0seyJjaGFyIjoi77yMIn0seyJjaGFyIjoicCJ9LHsiY2hhciI6Im8ifSx7ImNoYXIiOiJzIn0seyJjaGFyIjoidCJ9LHsiY2hhciI6Ik0ifSx7ImNoYXIiOiJhIn0seyJjaGFyIjoibiJ9XSwiaXNSaWNoVGV4dCI6dHJ1ZSwia2VlcExpbmVCcmVhayI6dHJ1ZX19LHsiYmxvY2tJZCI6IjE2ODUtMTUxMjIyMTQ3NDUwNSIsImJsb2NrVHlwZSI6InBhcmFncmFwaCIsInN0eWxlcyI6e30sInR5cGUiOiJwYXJhZ3JhcGgiLCJ0ZXh0Ijp7ImRhdGEiOlt7ImNoYXIiOiI1In0seyJjaGFyIjoi44CBIn0seyJjaGFyIjoi5pWwIn0seyJjaGFyIjoi5o2uIn0seyJjaGFyIjoi5bqTIn0seyJjaGFyIjoi77yMIn0seyJjaGFyIjoiTSJ9LHsiY2hhciI6InkifSx7ImNoYXIiOiJTIn0seyJjaGFyIjoiUSJ9LHsiY2hhciI6IkwifSx7ImNoYXIiOiLvvIwifSx7ImNoYXIiOiJSIn0seyJjaGFyIjoiZSJ9LHsiY2hhciI6ImQifSx7ImNoYXIiOiJpIn0seyJjaGFyIjoicyJ9LHsiY2hhciI6Iu+8jCJ9LHsiY2hhciI6Im0ifSx7ImNoYXIiOiJlIn0seyJjaGFyIjoibSJ9LHsiY2hhciI6ImUifSx7ImNoYXIiOiJjIn0seyJjaGFyIjoiYSJ9LHsiY2hhciI6ImMifSx7ImNoYXIiOiJoIn0seyJjaGFyIjoiZSJ9LHsiY2hhciI6ImQifV0sImlzUmljaFRleHQiOnRydWUsImtlZXBMaW5lQnJlYWsiOnRydWV9fSx7ImJsb2NrSWQiOiI0NjczLTE1MTIyMjE1MzIwMTUiLCJibG9ja1R5cGUiOiJwYXJhZ3JhcGgiLCJzdHlsZXMiOnt9LCJ0eXBlIjoicGFyYWdyYXBoIiwidGV4dCI6eyJkYXRhIjpbeyJjaGFyIjoiNiJ9LHsiY2hhciI6IuOAgSJ9LHsiY2hhciI6IuaWhyJ9LHsiY2hhciI6IuahoyJ9LHsiY2hhciI6IuS5piJ9LHsiY2hhciI6IuWGmSJ9LHsiY2hhciI6Iu+8jCJ9LHsiY2hhciI6ImcifSx7ImNoYXIiOiJpIn0seyJjaGFyIjoidCJ9LHsiY2hhciI6ImwifSx7ImNoYXIiOiJhIn0seyJjaGFyIjoiYiJ9LHsiY2hhciI6IiwifSx7ImNoYXIiOiJNIn0seyJjaGFyIjoiYSJ9LHsiY2hhciI6InIifSx7ImNoYXIiOiJrIn0seyJjaGFyIjoiZCJ9LHsiY2hhciI6Im8ifSx7ImNoYXIiOiJ3In0seyJjaGFyIjoibiJ9XSwiaXNSaWNoVGV4dCI6dHJ1ZSwia2VlcExpbmVCcmVhayI6dHJ1ZX19LHsiYmxvY2tJZCI6IjU5ODItMTUxMjIyMTU1Mzg3MyIsImJsb2NrVHlwZSI6InBhcmFncmFwaCIsInN0eWxlcyI6e30sInR5cGUiOiJwYXJhZ3JhcGgiLCJ0ZXh0Ijp7ImRhdGEiOlt7ImNoYXIiOiI3In0seyJjaGFyIjoi44CBIn0seyJjaGFyIjoiUCJ9LHsiY2hhciI6IkgifSx7ImNoYXIiOiJQIn0seyJjaGFyIjoi5qGGIn0seyJjaGFyIjoi5p62In0seyJjaGFyIjoi77yMIn0seyJjaGFyIjoibCJ9LHsiY2hhciI6ImEifSx7ImNoYXIiOiJyIn0seyJjaGFyIjoiYSJ9LHsiY2hhciI6InYifSx7ImNoYXIiOiJlIn0seyJjaGFyIjoibCJ9LHsiY2hhciI6IjUifSx7ImNoYXIiOiIuIn0seyJjaGFyIjoiNCJ9XSwiaXNSaWNoVGV4dCI6dHJ1ZSwia2VlcExpbmVCcmVhayI6dHJ1ZX19LHsiYmxvY2tJZCI6Ijg0NDgtMTUxMjIyMTU4MjM5MiIsImJsb2NrVHlwZSI6InBhcmFncmFwaCIsInN0eWxlcyI6e30sInR5cGUiOiJwYXJhZ3JhcGgiLCJ0ZXh0Ijp7ImRhdGEiOlt7ImNoYXIiOiI4In0seyJjaGFyIjoi44CBIn0seyJjaGFyIjoiSSJ9LHsiY2hhciI6IkQifSx7ImNoYXIiOiJFIn0seyJjaGFyIjoi77yMIn0seyJjaGFyIjoicCJ9LHsiY2hhciI6ImgifSx7ImNoYXIiOiJwIn0seyJjaGFyIjoicyJ9LHsiY2hhciI6InQifSx7ImNoYXIiOiJwIn0seyJjaGFyIjoibSJ9LHsiY2hhciI6IiwifSx7ImNoYXIiOiJ2In0seyJjaGFyIjoiaSJ9LHsiY2hhciI6Im0ifSx7ImNoYXIiOiIgIn1dLCJpc1JpY2hUZXh0Ijp0cnVlLCJrZWVwTGluZUJyZWFrIjp0cnVlfX0seyJibG9ja0lkIjoiNDM0Mi0xNTEyMjIxNjYwODQyIiwiYmxvY2tUeXBlIjoicGFyYWdyYXBoIiwic3R5bGVzIjp7fSwidHlwZSI6InBhcmFncmFwaCIsInRleHQiOnsiZGF0YSI6W3siY2hhciI6IjkifSx7ImNoYXIiOiLjgIEifSx7ImNoYXIiOiLliY0ifSx7ImNoYXIiOiLnq68ifSx7ImNoYXIiOiLmoYYifSx7ImNoYXIiOiLmnrYifSx7ImNoYXIiOiLvvJoifSx7ImNoYXIiOiJWIn0seyJjaGFyIjoidSJ9LHsiY2hhciI6ImUifSx7ImNoYXIiOiLvvIwifSx7ImNoYXIiOiJzIn0seyJjaGFyIjoibSJ9LHsiY2hhciI6ImEifSx7ImNoYXIiOiJyIn0seyJjaGFyIjoidCJ9LHsiY2hhciI6InkifV0sImlzUmljaFRleHQiOnRydWUsImtlZXBMaW5lQnJlYWsiOnRydWV9fSx7ImJsb2NrSWQiOiI0NzcwLTE1MTIyMjE3MTgyOTEiLCJibG9ja1R5cGUiOiJwYXJhZ3JhcGgiLCJzdHlsZXMiOnt9LCJ0eXBlIjoicGFyYWdyYXBoIiwidGV4dCI6eyJkYXRhIjpbeyJjaGFyIjoiMSJ9LHsiY2hhciI6IjAifSx7ImNoYXIiOiLjgIEifSx7ImNoYXIiOiLpmJ8ifSx7ImNoYXIiOiLliJcifSx7ImNoYXIiOiLvvIwifSx7ImNoYXIiOiJyIn0seyJjaGFyIjoiYSJ9LHsiY2hhciI6ImIifSx7ImNoYXIiOiJpIn0seyJjaGFyIjoidCJ9LHsiY2hhciI6Im0ifSx7ImNoYXIiOiJxIn1dLCJpc1JpY2hUZXh0Ijp0cnVlLCJrZWVwTGluZUJyZWFrIjp0cnVlfX0seyJibG9ja0lkIjoiNjk2OS0xNTEyMjIxNjU2NjczIiwiYmxvY2tUeXBlIjoicGFyYWdyYXBoIiwic3R5bGVzIjp7fSwidHlwZSI6InBhcmFncmFwaCIsInRleHQiOnsiZGF0YSI6W3siY2hhciI6IjEifSx7ImNoYXIiOiIxIn0seyJjaGFyIjoi44CBIn0seyJjaGFyIjoi5pCcIn0seyJjaGFyIjoi57SiIn0seyJjaGFyIjoi77yMIn0seyJjaGFyIjoiZSJ9LHsiY2hhciI6ImwifSx7ImNoYXIiOiJhIn0seyJjaGFyIjoicyJ9LHsiY2hhciI6InQifSx7ImNoYXIiOiJpIn0seyJjaGFyIjoiYyJ9LHsiY2hhciI6InMifSx7ImNoYXIiOiJlIn0seyJjaGFyIjoiYSJ9LHsiY2hhciI6InIifSx7ImNoYXIiOiJjIn0seyJjaGFyIjoiaCJ9LHsiY2hhciI6Iu+8jCJ9LHsiY2hhciI6InMifSx7ImNoYXIiOiJwIn0seyJjaGFyIjoiaCJ9LHsiY2hhciI6ImkifSx7ImNoYXIiOiJuIn0seyJjaGFyIjoieCJ9XSwiaXNSaWNoVGV4dCI6dHJ1ZSwia2VlcExpbmVCcmVhayI6dHJ1ZX19LHsiYmxvY2tJZCI6IjgwNzItMTUxMjIyMTg0NzUzNiIsImJsb2NrVHlwZSI6InBhcmFncmFwaCIsInN0eWxlcyI6e30sInR5cGUiOiJwYXJhZ3JhcGgiLCJ0ZXh0Ijp7ImRhdGEiOlt7ImNoYXIiOiIxIn0seyJjaGFyIjoiMiJ9LHsiY2hhciI6IuOAgSJ9LHsiY2hhciI6IiAifSx7ImNoYXIiOiJQIn0seyJjaGFyIjoiSCJ9LHsiY2hhciI6IlAifSx7ImNoYXIiOiLnlKgifSx7ImNoYXIiOiLmnaUifSx7ImNoYXIiOiLnrqEifSx7ImNoYXIiOiLnkIYifSx7ImNoYXIiOiLkvp0ifSx7ImNoYXIiOiLotZYifSx7ImNoYXIiOiLlhbMifSx7ImNoYXIiOiLns7sifSx7ImNoYXIiOiLnmoQifSx7ImNoYXIiOiLlt6UifSx7ImNoYXIiOiLlhbcifSx7ImNoYXIiOiIgIn0seyJjaGFyIjoi77yMIn0seyJjaGFyIjoiYyJ9LHsiY2hhciI6Im8ifSx7ImNoYXIiOiJtIn0seyJjaGFyIjoicCJ9LHsiY2hhciI6Im8ifSx7ImNoYXIiOiJzIn0seyJjaGFyIjoiZSJ9LHsiY2hhciI6InIifV0sImlzUmljaFRleHQiOnRydWUsImtlZXBMaW5lQnJlYWsiOnRydWV9fSx7ImJsb2NrSWQiOiI4Mzc2LTE1MTIyMjE1ODY4ODkiLCJibG9ja1R5cGUiOiJwYXJhZ3JhcGgiLCJzdHlsZXMiOnt9LCJ0eXBlIjoicGFyYWdyYXBoIiwidGV4dCI6eyJkYXRhIjpbeyJjaGFyIjoiMSJ9LHsiY2hhciI6IjMifSx7ImNoYXIiOiLjgIEifSx7ImNoYXIiOiLpgq4ifSx7ImNoYXIiOiLku7YifSx7ImNoYXIiOiLnrKwifSx7ImNoYXIiOiLkuIkifSx7ImNoYXIiOiLmlrkifSx7ImNoYXIiOiLmnI0ifSx7ImNoYXIiOiLliqEifSx7ImNoYXIiOiLvvIwifSx7ImNoYXIiOiJzIn0seyJjaGFyIjoiZSJ9LHsiY2hhciI6Im4ifSx7ImNoYXIiOiJkIn0seyJjaGFyIjoiYyJ9LHsiY2hhciI6ImwifSx7ImNoYXIiOiJvIn0seyJjaGFyIjoidSJ9LHsiY2hhciI6ImQifSx7ImNoYXIiOiLvvIwifSx7ImNoYXIiOiJtIn0seyJjaGFyIjoiYSJ9LHsiY2hhciI6ImkifSx7ImNoYXIiOiJsIn0seyJjaGFyIjoiZyJ9LHsiY2hhciI6InUifSx7ImNoYXIiOiJuIn1dLCJpc1JpY2hUZXh0Ijp0cnVlLCJrZWVwTGluZUJyZWFrIjp0cnVlfX0seyJibG9ja0lkIjoiNzk3Ny0xNTEyMjIyMDIzMDM4IiwiYmxvY2tUeXBlIjoicGFyYWdyYXBoIiwic3R5bGVzIjp7fSwidHlwZSI6InBhcmFncmFwaCIsInRleHQiOnsiZGF0YSI6W3siY2hhciI6IjEifSx7ImNoYXIiOiI0In0seyJjaGFyIjoi44CBIn0seyJjaGFyIjoi5Y2VIn0seyJjaGFyIjoi5YWDIn0seyJjaGFyIjoi5rWLIn0seyJjaGFyIjoi6K+VIn0seyJjaGFyIjoi77yMIn0seyJjaGFyIjoicCJ9LHsiY2hhciI6ImgifSx7ImNoYXIiOiJwIn0seyJjaGFyIjoidSJ9LHsiY2hhciI6Im4ifSx7ImNoYXIiOiJpIn0seyJjaGFyIjoidCJ9XSwiaXNSaWNoVGV4dCI6dHJ1ZSwia2VlcExpbmVCcmVhayI6dHJ1ZX19LHsiYmxvY2tJZCI6IjIwNDMtMTUxMjIyMjA2MzIxMyIsImJsb2NrVHlwZSI6InBhcmFncmFwaCIsInN0eWxlcyI6e30sInR5cGUiOiJwYXJhZ3JhcGgiLCJ0ZXh0Ijp7ImRhdGEiOlt7ImNoYXIiOiIxIn0seyJjaGFyIjoiNSJ9LHsiY2hhciI6IuOAgSJ9LHsiY2hhciI6IuS7oyJ9LHsiY2hhciI6IueggSJ9LHsiY2hhciI6IuinhCJ9LHsiY2hhciI6IuiMgyJ9LHsiY2hhciI6Iu+8jCJ9LHsiY2hhciI6IuWPgiJ9LHsiY2hhciI6IuiAgyJ9LHsiY2hhciI6IumYvyJ9LHsiY2hhciI6IumHjCJ9LHsiY2hhciI6IuW3tCJ9LHsiY2hhciI6IuW3tCJ9LHsiY2hhciI6IuS7oyJ9LHsiY2hhciI6IueggSJ9LHsiY2hhciI6IuinhCJ9LHsiY2hhciI6IuiMgyJ9XSwiaXNSaWNoVGV4dCI6dHJ1ZSwia2VlcExpbmVCcmVhayI6dHJ1ZX19LHsiYmxvY2tJZCI6IjE0MjItMTUxMjIyMjE0Mjg2MSIsImJsb2NrVHlwZSI6InBhcmFncmFwaCIsInN0eWxlcyI6e30sInR5cGUiOiJwYXJhZ3JhcGgiLCJ0ZXh0Ijp7ImRhdGEiOlt7ImNoYXIiOiIxIn0seyJjaGFyIjoiNiJ9LHsiY2hhciI6IuOAgSJ9LHsiY2hhciI6IuS7oyJ9LHsiY2hhciI6IueggSJ9LHsiY2hhciI6IuWuoSJ9LHsiY2hhciI6IuafpSJ9LHsiY2hhciI6IuacuiJ9LHsiY2hhciI6IuWItiJ9LHsiY2hhciI6Iu+8jCJ9LHsiY2hhciI6ImcifSx7ImNoYXIiOiJpIn0seyJjaGFyIjoidCJ9LHsiY2hhciI6Ik0ifSx7ImNoYXIiOiJlIn0seyJjaGFyIjoiciJ9LHsiY2hhciI6ImcifSx7ImNoYXIiOiJlIn0seyJjaGFyIjoiUiJ9LHsiY2hhciI6ImUifSx7ImNoYXIiOiJxIn0seyJjaGFyIjoidSJ9LHsiY2hhciI6ImUifSx7ImNoYXIiOiJzIn0seyJjaGFyIjoidCJ9XSwiaXNSaWNoVGV4dCI6dHJ1ZSwia2VlcExpbmVCcmVhayI6dHJ1ZX19LHsiYmxvY2tJZCI6IjMyOTMtMTUxMjIyMTU0MzQyOSIsImJsb2NrVHlwZSI6InBhcmFncmFwaCIsInN0eWxlcyI6e30sInR5cGUiOiJwYXJhZ3JhcGgiLCJ0ZXh0Ijp7ImRhdGEiOlt7ImNoYXIiOiIxIn0seyJjaGFyIjoiNyJ9LHsiY2hhciI6IuOAgSJ9LHsiY2hhciI6IuS7oyJ9LHsiY2hhciI6IueggSJ9LHsiY2hhciI6IuW/qyJ9LHsiY2hhciI6IumAnyJ9LHsiY2hhciI6IuS4iiJ9LHsiY2hhciI6Iue6vyJ9LHsiY2hhciI6IuWSjCJ9LHsiY2hhciI6IuaZriJ9LHsiY2hhciI6IumAmiJ9LHsiY2hhciI6IueJiCJ9LHsiY2hhciI6IuacrCJ9LHsiY2hhciI6Iui/rSJ9LHsiY2hhciI6IuS7oyJ9LHsiY2hhciI6IuacuiJ9LHsiY2hhciI6IuWItiJ9LHsiY2hhciI6Iu+8jCJ9LHsiY2hhciI6IuWRqCJ9LHsiY2hhciI6Iui/rSJ9LHsiY2hhciI6IuS7oyJ9LHsiY2hhciI6Iu+8jCJ9LHsiY2hhciI6IjEifSx7ImNoYXIiOiI0In0seyJjaGFyIjoiOSJ9LHsiY2hhciI6Iu+8jCJ9LHsiY2hhciI6ImQifSx7ImNoYXIiOiJlIn0seyJjaGFyIjoidiJ9LHsiY2hhciI6ImUifSx7ImNoYXIiOiJsIn0seyJjaGFyIjoibyJ9LHsiY2hhciI6InAifSx7ImNoYXIiOiLvvIwifSx7ImNoYXIiOiJhIn0seyJjaGFyIjoibCJ9LHsiY2hhciI6InAifSx7ImNoYXIiOiJoIn0seyJjaGFyIjoiYSJ9LHsiY2hhciI6IuWQhCJ9LHsiY2hhciI6IuS4qiJ9LHsiY2hhciI6IueOryJ9LHsiY2hhciI6IuWigyJ9LHsiY2hhciI6IuS5iyJ9LHsiY2hhciI6IumXtCJ9LHsiY2hhciI6IueahCJ9LHsiY2hhciI6IuS7oyJ9LHsiY2hhciI6IueggSJ9LHsiY2hhciI6IumAmiJ9LHsiY2hhciI6IuiuryJ9LHsiY2hhciI6IuacuiJ9LHsiY2hhciI6IuWItiJ9LHsiY2hhciI6Iu+8jCJ9LHsiY2hhciI6ImgifSx7ImNoYXIiOiJvIn0seyJjaGFyIjoidCJ9LHsiY2hhciI6ImYifSx7ImNoYXIiOiJpIn0seyJjaGFyIjoieCJ9LHsiY2hhciI6IuOAgiJ9XSwiaXNSaWNoVGV4dCI6dHJ1ZSwia2VlcExpbmVCcmVhayI6dHJ1ZX19LHsiYmxvY2tJZCI6IjMzOTQtMTUxMjIyMjI2ODEzNSIsImJsb2NrVHlwZSI6InBhcmFncmFwaCIsInN0eWxlcyI6e30sInR5cGUiOiJwYXJhZ3JhcGgiLCJ0ZXh0Ijp7ImRhdGEiOlt7ImNoYXIiOiIxIn0seyJjaGFyIjoiOCJ9LHsiY2hhciI6IuOAgSJ9LHsiY2hhciI6IuWumiJ9LHsiY2hhciI6IuaXtiJ9LHsiY2hhciI6IuiuoSJ9LHsiY2hhciI6IuWIkiJ9LHsiY2hhciI6IuS7uyJ9LHsiY2hhciI6IuWKoSJ9LHsiY2hhciI6IuWSjCJ9LHsiY2hhciI6IuaciSJ9LHsiY2hhciI6IueUqCJ9LHsiY2hhciI6IueahCJ9LHsiY2hhciI6IuiEmiJ9LHsiY2hhciI6IuacrCJ9LHsiY2hhciI6Iu+8jCJ9LHsiY2hhciI6ImMifSx7ImNoYXIiOiJyIn0seyJjaGFyIjoibyJ9LHsiY2hhciI6Im4ifSx7ImNoYXIiOiJqIn0seyJjaGFyIjoibyJ9LHsiY2hhciI6ImIifSx7ImNoYXIiOiLvvIwifSx7ImNoYXIiOiJnIn0seyJjaGFyIjoiICJ9LHsiY2hhciI6IuetiSJ9LHsiY2hhciI6IuetiSJ9LHsiY2hhciI6IuOAgiJ9XSwiaXNSaWNoVGV4dCI6dHJ1ZSwia2VlcExpbmVCcmVhayI6dHJ1ZX19LHsiYmxvY2tJZCI6IjkwOTktMTUxMjIyMjMzOTU2NCIsImJsb2NrVHlwZSI6InBhcmFncmFwaCIsInN0eWxlcyI6e30sInR5cGUiOiJwYXJhZ3JhcGgiLCJ0ZXh0Ijp7ImRhdGEiOlt7ImNoYXIiOiIxIn0seyJjaGFyIjoiOSJ9LHsiY2hhciI6IuOAgSJ9LHsiY2hhciI6IuenuyJ9LHsiY2hhciI6IuWKqCJ9LHsiY2hhciI6IuerryJ9LHsiY2hhciI6IuaOpSJ9LHsiY2hhciI6IuWPoyJ9LHsiY2hhciI6IuW8gCJ9LHsiY2hhciI6IuWPkSJ9LHsiY2hhciI6IuinhCJ9LHsiY2hhciI6IuiMgyJ9LHsiY2hhciI6IuWSjCJ9LHsiY2hhciI6IuWkpyJ9LHsiY2hhciI6IuiHtCJ9LHsiY2hhciI6Iua1gSJ9LHsiY2hhciI6IueoiyJ9LHsiY2hhciI6IuOAgiJ9XSwiaXNSaWNoVGV4dCI6dHJ1ZSwia2VlcExpbmVCcmVhayI6dHJ1ZX19LHsiYmxvY2tJZCI6IjIwMzktMTUxMjIyMjQzMzk2MSIsImJsb2NrVHlwZSI6InBhcmFncmFwaCIsInN0eWxlcyI6e30sInR5cGUiOiJwYXJhZ3JhcGgiLCJ0ZXh0Ijp7ImRhdGEiOlt7ImNoYXIiOiIyIn0seyJjaGFyIjoiMCJ9LHsiY2hhciI6IuOAgSJ9LHsiY2hhciI6IuenuyJ9LHsiY2hhciI6IuWKqCJ9LHsiY2hhciI6IuerryJ9LHsiY2hhciI6IueJiCJ9LHsiY2hhciI6IuacrCJ9LHsiY2hhciI6IuaOpyJ9LHsiY2hhciI6IuWItiJ9LHsiY2hhciI6IuWkpyJ9LHsiY2hhciI6IuiHtCJ9LHsiY2hhciI6Iua1gSJ9LHsiY2hhciI6IueoiyJ9LHsiY2hhciI6IuOAgiJ9XSwiaXNSaWNoVGV4dCI6dHJ1ZSwia2VlcExpbmVCcmVhayI6dHJ1ZX19LHsiYmxvY2tJZCI6Ijk1MTUtMTUxMjIyMjQ1MDU3MSIsImJsb2NrVHlwZSI6InBhcmFncmFwaCIsInN0eWxlcyI6e30sInR5cGUiOiJwYXJhZ3JhcGgiLCJ0ZXh0Ijp7ImRhdGEiOlt7ImNoYXIiOiIyIn0seyJjaGFyIjoiMSJ9LHsiY2hhciI6IuOAgSJ9LHsiY2hhciI6IuenuyJ9LHsiY2hhciI6IuWKqCJ9LHsiY2hhciI6IuaUryJ9LHsiY2hhciI6IuS7mCJ9LHsiY2hhciI6Iu+8jCJ9LHsiY2hhciI6IuW+riJ9LHsiY2hhciI6IuS/oSJ9LHsiY2hhciI6Iu+8jCJ9LHsiY2hhciI6IuaUryJ9LHsiY2hhciI6IuS7mCJ9LHsiY2hhciI6IuWunSJ9LHsiY2hhciI6Iu+8jCJ9LHsiY2hhciI6IumTtiJ9LHsiY2hhciI6IuiBlCJ9LHsiY2hhciI6IuOAgiJ9XSwiaXNSaWNoVGV4dCI6dHJ1ZSwia2VlcExpbmVCcmVhayI6dHJ1ZX19LHsiYmxvY2tJZCI6IjAwNTktMTUxMjIyMjUwMDMzMCIsImJsb2NrVHlwZSI6InBhcmFncmFwaCIsInN0eWxlcyI6e30sInR5cGUiOiJwYXJhZ3JhcGgiLCJ0ZXh0Ijp7ImRhdGEiOlt7ImNoYXIiOiIyIn0seyJjaGFyIjoiMiJ9LHsiY2hhciI6IuOAgSJ9LHsiY2hhciI6Iue9kSJ9LHsiY2hhciI6IuaYkyJ9LHsiY2hhciI6IuebtCJ9LHsiY2hhciI6IuaSrSJ9LHsiY2hhciI6ImoifSx7ImNoYXIiOiJkIn0seyJjaGFyIjoiayJ9XSwiaXNSaWNoVGV4dCI6dHJ1ZSwia2VlcExpbmVCcmVhayI6dHJ1ZX19LHsiYmxvY2tJZCI6Ijc2MzgtMTUxMjIyMjUyMjA2NSIsImJsb2NrVHlwZSI6InBhcmFncmFwaCIsInN0eWxlcyI6e30sInR5cGUiOiJwYXJhZ3JhcGgiLCJ0ZXh0Ijp7ImRhdGEiOlt7ImNoYXIiOiIyIn0seyJjaGFyIjoiMyJ9LHsiY2hhciI6IuOAgSJ9LHsiY2hhciI6IuePrSJ9LHsiY2hhciI6Iue6pyJ9LHsiY2hhciI6IuepuiJ9LHsiY2hhciI6IumXtCJ9LHsiY2hhciI6IuaVsCJ9LHsiY2hhciI6IuaNriJ9LHsiY2hhciI6Iue8kyJ9LHsiY2hhciI6IuWtmCJ9LHsiY2hhciI6IuacuiJ9LHsiY2hhciI6IuWItiJ9XSwiaXNSaWNoVGV4dCI6dHJ1ZSwia2VlcExpbmVCcmVhayI6dHJ1ZX19LHsiYmxvY2tJZCI6IjQ0OTItMTUxMjIyMjU1OTUxMyIsImJsb2NrVHlwZSI6InBhcmFncmFwaCIsInN0eWxlcyI6e30sInR5cGUiOiJwYXJhZ3JhcGgiLCJ0ZXh0Ijp7ImRhdGEiOlt7ImNoYXIiOiIyIn0seyJjaGFyIjoiNCJ9LHsiY2hhciI6IuOAgSJ9LHsiY2hhciI6IuePrSJ9LHsiY2hhciI6Iue6pyJ9LHsiY2hhciI6IuepuiJ9LHsiY2hhciI6IumXtCJ9LHsiY2hhciI6IuaVsCJ9LHsiY2hhciI6IuaNriJ9LHsiY2hhciI6IuaetiJ9LHsiY2hhciI6IuaehCJ9LHsiY2hhciI6Iu+8jCJ9LHsiY2hhciI6IuivuyJ9LHsiY2hhciI6IuWGmSJ9LHsiY2hhciI6IuWIhiJ9LHsiY2hhciI6IuemuyJ9LHsiY2hhciI6Iu+8jCJ9LHsiY2hhciI6Iue8kyJ9LHsiY2hhciI6IuWtmCJ9LHsiY2hhciI6IuacuiJ9LHsiY2hhciI6IuWItiJ9XSwiaXNSaWNoVGV4dCI6dHJ1ZSwia2VlcExpbmVCcmVhayI6dHJ1ZX19LHsiYmxvY2tJZCI6IjY2MjUtMTUxMjIyMjc2NjY1OCIsImJsb2NrVHlwZSI6InBhcmFncmFwaCIsInN0eWxlcyI6e30sInR5cGUiOiJwYXJhZ3JhcGgiLCJ0ZXh0Ijp7ImRhdGEiOlt7ImNoYXIiOiIyIn0seyJjaGFyIjoiNSJ9LHsiY2hhciI6IuOAgSJ9LHsiY2hhciI6IuetiSJ9LHsiY2hhciI6IuaDsyJ9LHsiY2hhciI6IuWIsCJ9LHsiY2hhciI6IuS6hiJ9LHsiY2hhciI6IuWcqCJ9LHsiY2hhciI6IuWBmiJ9LHsiY2hhciI6IuihpSJ9LHsiY2hhciI6IuWFhSJ9LHsiY2hhciI6IuOAgiJ9LHsiY2hhciI6IuOAgiJ9LHsiY2hhciI6IuOAgiJ9XSwiaXNSaWNoVGV4dCI6dHJ1ZSwia2VlcExpbmVCcmVhayI6dHJ1ZX19XQ==-->', '', '', '', '', 245, 'N', 'N', '', '', 0, 0, 'N', 1516774476, 0, 'Y', 0, '', 'Y', 1512223240);
INSERT INTO `bage_post` VALUES (101, 1, '', '', '面试题awk的考察', '', '', '', '', '', '', '', 18, 0, '面试题awk的考察', '', '', '', '', '<p>\r\n	&nbsp; &nbsp; 原题大致意思是这样的，给了一个文件tmp.log其结构如下：\r\n<pre class=\"prettyprint\">url:url_2:visit:2\r\nurl:url_3:visit:3\r\nurl:url_7:visit:7 \r\n\r\n</pre>\r\n</p>\r\n<p>\r\n	现在需要输出前两行url且排名降序排列（visist对应为访客量），请设计脚本按要求输出？\r\n</p>\r\n<p class=\"p1\">\r\n	<br />\r\n</p>\r\n<pre class=\"prettyprint lang-bsh\">//cat f11.txt| awk \' BEGIN {FS=\":\"} {print $2 \"\\t\" $4}\' | sort -nr\r\ntail -2 f11.txt| awk \' BEGIN {FS=\":\"} {print $2 \"\\t\" $4}\' | sort -nr</pre>\r\n<pre class=\"prettyprint lang-bsh\"><img src=\"/uploads/201801/815deee0fcaf94a79a1473d1dfbbf345.png\" alt=\"\" /> </pre>\r\n<p>\r\n	<br />\r\n</p>', '', '', '', 'awk', 78, 'N', 'N', '', '', 0, 0, 'N', 1516979607, 0, 'Y', 0, '', 'Y', 1516978624);
INSERT INTO `bage_post` VALUES (102, 1, '', '', 'B\\S软件三层结构的理解', '', '', '', '', '', '', '', 18, 0, '今天在面试中被问到一个关于直播课项目架构图的问题，当时第一反应想到的是bs常见的三层架构图。', '', '软件三层结构', '软件三层结构', '软件三层结构', '<p>\r\n	&nbsp; &nbsp; &nbsp; 今天在面试中被问到一个关于直播课项目架构图的问题，当时第一反应想到的是bs常见的三层架构图。我们先思考三个问题？\r\n</p>\r\n<ul>\r\n	<li>\r\n		1，什么是三层？\r\n	</li>\r\n	<li>\r\n		2，为什么使用三层？\r\n	</li>\r\n	<li>\r\n		3，三层与以往使用的两层相比有什么不同？它的优势在哪里？\r\n	</li>\r\n	<li>\r\n		4，如何学好三层？如何应用三层？\r\n	</li>\r\n</ul>\r\n<h2>\r\n	1、什么是三层？\r\n</h2>\r\n<ul>\r\n	<li>\r\n		UI(表现层):主要是指与用户交互的界面。用于接收用户输入的数据和显示处理后用户需要的数据。&nbsp;\r\n	</li>\r\n	<li>\r\n		BLL:(业务逻辑层):UI层和DAL层之间的桥梁。实现业务逻辑。业务逻辑具体包含：验证、计算、业务规则等等。\r\n	</li>\r\n	<li>\r\n		DAL:(数据访问层):与数据库打交道。主要实现对数据的增、删、改、查。将存储在数据库中的数据提交给业务层，同时将业务层处理的数据保存到数据库。（当然这些操作都是基于UI层的。用户的需求反映给界面（UI），UI反映给BLL，BLL反映给DAL，DAL进行数据的操作，操作后再一一返回，直到将用户所需数据反馈给用户）\r\n	</li>\r\n</ul>\r\n<p>\r\n	<img src=\"/uploads/201801/5ab8c62831389b273420cf8438e9ed78.png\" alt=\"\" /> \r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	每一层都各负其责，那么该如何将三层联系起来呢？\r\n</p>\r\n<p>\r\n	1&gt;单项引用（见下图）\r\n</p>\r\n<p>\r\n	2&gt;这时候实体层（Entity）来了。（注：当然，实体层的作用不止这些）\r\n</p>\r\n<p>\r\n	&nbsp;\r\n</p>\r\n<p>\r\n	Entity(实体层)：它不属于三层中的任何一层，但是它是必不可少的一层。\r\n</p>\r\n<p>\r\n	&nbsp;\r\n</p>\r\n<p>\r\n	Entity在三层架构中的作用：\r\n</p>\r\n<p>\r\n	1,实现面向对象思想中的\"封装\";\r\n</p>\r\n<p>\r\n	2，贯穿于三层，在三层之间传递数据;\r\n</p>\r\n<p>\r\n	（注：确切的说实体层贯穿于三层之间，来连接三层）\r\n</p>\r\n<p>\r\n	&nbsp;\r\n</p>\r\n<p>\r\n	3，对于初学者来说，可以这样理解：每张数据表对应一个实体，即每个数据表中的字段对应实体中的属性（注：当然，事实上不是这样。为什么？\r\n</p>\r\n<p>\r\n	&nbsp;\r\n</p>\r\n<p>\r\n	1＞，可能我们需要的实体在数据表对应的实体中并不存在；\r\n</p>\r\n<p>\r\n	2＞，我们完全可以将所有数据表中的所有字段都放在一个实体里）\r\n</p>\r\n<p>\r\n	&nbsp;\r\n</p>\r\n<p>\r\n	4，每一层（UI—&gt;BLL—&gt;DAL）之间的数据传递（单向）是靠变量或实体作为参数来传递的，这样就构造了三层之间的联系，完成了功能的实现。\r\n</p>\r\n<p>\r\n	但是对于大量的数据来说，用变量做参数有些复杂，因为参数量太多，容易搞混。比如：我要把员工信息传递到下层，信息包括：员工号、姓名、年龄、性别、工资．．．．用变量做参数的话，那么我们的方法中的参数就会很多，极有可能在使用时，将参数匹配搞混。这时候，如果用实体做参数，就会很方便，不用考虑参数匹配的问题，用到实体中哪个属性拿来直接用就可以，很方便。这样做也提高了效率。\r\n</p>\r\n<p>\r\n	&nbsp;\r\n</p>\r\n<p>\r\n	（注：这里为什么说可以暂时理解为每个数据表对应一个实体？？\r\n</p>\r\n<p>\r\n	答：大家都知道，我们做系统的目的，是为用户提供服务，用户可不关心你的系统后台是怎么工作的，用户只关心软件是不是好用，界面是不是符合自己心意。\r\n</p>\r\n<p>\r\n	用户在界面上轻松的增、删、改、查，那么数据库中也要有相应的增、删、改、查，而增删改查具体操作对象就是数据库中的数据，说白了就是表中的字段。\r\n</p>\r\n<p>\r\n	所以，将每个数据表作为一个实体类，实体类封装的属性对应到表中的字段，这样的话，实体在贯穿于三层之间时，就可以实现增删改查数据了）\r\n</p>\r\n<p>\r\n	&nbsp;\r\n</p>\r\n<p>\r\n	综上所述:三层及实体层之间的依赖关系:\r\n</p>\r\n<img src=\"/uploads/201801/7f584256a820c2d5e14edf434d00ec71.png\" alt=\"\" /> \r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<h3>\r\n	<span style=\"font-size:32px;color:#E53333;\">思想来源于生活：</span> \r\n</h3>\r\n<h3>\r\n	<u><u><span style=\"color:#E53333;\"><br />\r\n</span></u></u> \r\n</h3>\r\n<p>\r\n	<span style=\"color:#E53333;\"><span style=\"color:#E53333;\"><span style=\"color:#000000;\">###################################################################</span></span><span style=\"color:#E53333;\"><span style=\"color:#000000;\"></span></span><br />\r\n</span> \r\n</p>\r\n<h3>\r\n	<u><u><span style=\"color:#E53333;\">&nbsp; </span></u><u><span style=\"color:#E53333;\">&nbsp; &nbsp; </span></u><u><span style=\"color:#E53333;\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</span></u><u><span style=\"color:#E53333;\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</span></u><u><span style=\"color:#E53333;\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</span></u><u><span style=\"color:#E53333;\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</span></u><u><span style=\"color:#E53333;\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</span></u><u><span style=\"color:#E53333;\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</span></u><u><span style=\"color:#E53333;\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</span></u><u><span style=\"color:#E53333;\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</span></u><u><span style=\"color:#E53333;\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</span></u><u><span style=\"color:#E53333;\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</span></u><u><span style=\"color:#E53333;\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</span></u><u><span style=\"color:#E53333;\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</span></u><u><span style=\"color:#E53333;\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</span></u><u><span style=\"color:#E53333;\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</span></u><u><span style=\"color:#E53333;\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</span></u><u><span style=\"color:#E53333;\">&nbsp; &nbsp;</span></u></u> \r\n</h3>\r\n<p>\r\n	<br />\r\n</p>\r\n<img src=\"/uploads/201801/217e8251ecdc5042efb9b013a675a28d.png\" alt=\"\" /> \r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	服务员：只管接待客人；\r\n</p>\r\n<p>\r\n	厨师：只管做客人点的菜；\r\n</p>\r\n<p>\r\n	采购员：只管按客人点菜的要求采购食材；\r\n</p>\r\n<p>\r\n	&nbsp;\r\n</p>\r\n<p>\r\n	他们各负其职，服务员不用了解厨师如何做菜，不用了解采购员如何采购食材；\r\n</p>\r\n<p>\r\n	厨师不用知道服务员接待了哪位客人，不用知道采购员如何采购食材；\r\n</p>\r\n<p>\r\n	同样，采购员不用知道服务员接待了哪位客人，不用知道厨师如何做菜。\r\n</p>\r\n<p>\r\n	&nbsp;\r\n</p>\r\n<p>\r\n	他们三者是如何联系的？\r\n</p>\r\n<p>\r\n	比如：厨师会做：炒茄子、炒鸡蛋、炒面——此时构建三个方法（&nbsp;cookEggplant()、cookEgg()、cookNoodle())\r\n</p>\r\n<p>\r\n	&nbsp;\r\n</p>\r\n<p>\r\n	顾客直接和服务员打交道，顾客和服务员（UI层）说：我要一个炒茄子，而服务员不负责炒茄子，她就把请求往上递交，传递给厨师（BLL层），厨师需要茄子，就把请求往上递交，传递给采购员（DAL层），采购员从仓库里取来茄子传回给厨师，厨师响应cookEggplant()方法，做好炒茄子后，又传回给服务员，服务员把茄子呈现给顾客。\r\n</p>\r\n<p>\r\n	这样就完成了一个完整的操作。\r\n</p>\r\n<p>\r\n	在此过程中，<strong><span style=\"color:#E53333;\">茄子作为参数在三层中传递，</span></strong>如果顾客点炒鸡蛋，则鸡蛋作为参数（这是变量做参数）。\r\n</p>\r\n<p>\r\n	如果，用户增加需求，我们还得在方法中添加参数，一个方法添加一个，一个方法设计到三层；何况实际中并不止设计到一个方法的更改。所以，为了解决这个问题，我们可以把茄子、鸡蛋、面条作为属性定义到顾客实体中，一旦顾客增加了炒鸡蛋需求，直接把鸡蛋属性拿出来用即可，不用再去考虑去每层的方法中添加参数了，更不用考虑参数的匹配问题。\r\n</p>\r\n<p>\r\n	这样讲，不知道大家是不是可以明白。（待会实例解释吧）\r\n</p>\r\n<p>\r\n	###################################################################\r\n</p>\r\n<p>\r\n	<u><u> </u></u> \r\n</p>\r\n<div>\r\n	<u><u><u><u>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</u><u>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</u><u>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</u><u>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</u><u>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</u><u>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</u><u>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</u><u>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</u><u>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</u><u>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</u><u>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</u><u>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</u><u>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</u><u>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</u><u>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</u><u>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</u><u>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</u><u>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</u><u>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</u><u>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</u><u>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</u><u>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</u></u> </u></u> \r\n</div>\r\n<p>\r\n	<br />\r\n</p>\r\n<h2>\r\n	2，为什么使用三层？\r\n</h2>\r\n<p>\r\n	使用三层架构的目的：<span style=\"font-size:32px;color:#009900;\">解耦！！！</span><br />\r\n同样拿上面饭店的例子来讲：<br />\r\n（1）服务员（UI层）请假——另找服务员；\r\n</p>\r\n<p>\r\n	厨师（BLL层）辞职——招聘另一个厨师；\r\n</p>\r\n<p>\r\n	采购员（DAL）辞职——招聘另一个采购员；<br />\r\n（2）顾客反映：<br />\r\n1&gt;你们店服务态度不好——服务员的问题。开除服务员；<br />\r\n2&gt;你们店菜里有虫子——厨师的问题。换厨师；<br />\r\n<span style=\"color:#E53333;\">&nbsp;任何一层发生变化都不会影响到另外一层！！！</span> \r\n</p>\r\n<h2>\r\n	3、与两层的区别？\r\n</h2>\r\n<p>\r\n	两层：\r\n</p>\r\n<p>\r\n	<img src=\"/uploads/201801/2af63b9022ef2a05dccee383a2baae2c.png\" alt=\"\" /><br />\r\n<br />\r\n（当任何一个地方发生变化时，都需要重新开发整个系统。“多层”放在一层，分工不明确耦合度高——难以适应需求变化，可维护性低、可扩展性低）\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	三层：\r\n</p>\r\n<p>\r\n	<img src=\"/uploads/201801/f52a5d555afe47d0e06f59f532f8ede4.png\" alt=\"\" /><br />\r\n（发生在哪一层的变化，只需更改该层，不需要更改整个系统。层次清晰，分工明确，每层之间耦合度低——提高了效率，适应需求变化，可维护性高，可扩展性高）\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p class=\"MsoNormal\">\r\n	综上：三层架构的<span></span> \r\n</p>\r\n<p class=\"MsoNormal\">\r\n	<span style=\"font-size:16px;\">优势：</span><span></span> \r\n</p>\r\n<p class=\"MsoNormal\">\r\n	<span style=\"color:#333333;\"><u><em>1</em></u></span><span style=\"color:#333333;\"><u><em>，结构清晰、耦合度低</em></u></span><span style=\"color:#333333;\"><u><em>,</em></u></span> \r\n</p>\r\n<p class=\"MsoNormal\">\r\n	<span style=\"color:#333333;\"><u><em>2</em></u></span><span style=\"color:#333333;\"><u><em>，可维护性高，可扩展性高；</em></u></span><span></span> \r\n</p>\r\n<p class=\"MsoNormal\">\r\n	<span style=\"color:#333333;\"><u><em>3</em></u></span><span style=\"color:#333333;\"><u><em>，利于开发任务同步进行；容易适应需求变化</em></u></span> \r\n</p>\r\n<p class=\"MsoNormal\">\r\n	<br />\r\n</p>\r\n<p class=\"MsoNormal\">\r\n	<span style=\"color:#E53333;font-size:14px;\">劣势：</span><span></span> \r\n</p>\r\n<p class=\"MsoNormal\">\r\n	<span style=\"font-family:SimHei;\"><em>1</em></span><em><span style=\"font-family:SimHei;\">、降低了系统的性能。这是不言而喻的。如果不采用分层式结构，很多业务可以直接造访数据库，以此获取相应的数据，如今却必须通过中间层来完成。</span></em><span></span> \r\n</p>\r\n<p class=\"MsoNormal\">\r\n	<span style=\"font-family:SimHei;\"><em>2</em></span><em><span style=\"font-family:SimHei;\">、有时会导致级联的修改。这种修改尤其体现在自上而下的方向。如果在表示层中需要增加一个功能，为保证其设计符合分层式结构，可能需要在相应的业务逻辑层和数据访问层中都增加相应的代码</span></em><span></span> \r\n</p>\r\n<p class=\"MsoNormal\">\r\n	<span style=\"font-family:SimHei;\"><em>3</em></span><em><span style=\"font-family:SimHei;\">、增加了代码量，增加了工作量</span></em> \r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	文章出处：http://blog.csdn.net/hanxuemin12345/article/details/8544957\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<br />\r\n</p>', '', '', '', '三层结构', 67, 'N', 'N', '', '', 0, 0, 'N', 1517386082, 0, 'Y', 0, '', 'Y', 1517327796);
INSERT INTO `bage_post` VALUES (95, 1, '', '', '支付宝付款码如何做到防止盗刷的', '', '', '', '', '', '', '', 18, 0, '支付宝付款码如何做到被盗用的', '', '', '支付宝付款码如何做到被盗用的', '', '<p>\r\n	&nbsp; &nbsp; 最近在超市购物又没带现金，我边让旁边的哥们用手机把我的付款码拍下，以防手机没电无法支付的尴尬，之后手机还算给你支撑到了付款，后来我也要求这位把拍摄的二维码彻底删除。我再回来的路上，思考若别人拿你的支付码做文章会不会出现被盗刷的现象呢。&nbsp; 通过查询百度知乎等支付宝付款码可能采取的安全措施\r\n</p>\r\n<ol>\r\n	<li>\r\n		付款码里的二维码是有时间限制的，每分钟会自动更新一次。rn\r\n	</li>\r\n	<li>\r\n		rn		虽然没有深入研究，不过我认为以当前时间（估计能精确到毫秒级别）为种子生成随机数，再将数据信息、验证信息和此随机数结合生成验证码就可以了吧。\r\n	</li>\r\n	<li>\r\n		rn		9.0版本引入”安全大脑“（支付宝最先进的功能）在你使用扫码付款时，它具有识别主人的功能，但凡发现不是主人在使用支付宝，会立刻开启保护模式。（<a href=\"http://m.9553.com/article/35384.htm\" target=\"_blank\">详细介绍</a>&nbsp;）<a href=\"https://www.zhihu.com/question/33267586\" target=\"_blank\">知乎讨论：</a>\r\n	</li>\r\n</ol>', '', '', '', '支付宝,如何', 339, 'N', 'N', '', '', 0, 0, 'N', 1517398063, 0, 'Y', 0, '', 'Y', 1496581838);
INSERT INTO `bage_post` VALUES (103, 1, '', '', '如何提高自己的商业头脑', '', '', '', '', '', '', '', 20, 0, '', '', '商业头脑', '商业头脑', '商业头脑', '&nbsp; &nbsp; &nbsp; &nbsp;如果你是一名想要创业的人，或者已经在创业的阶梯上，遇到这类问题，我觉得可以从不断地打拼和失败、社交中磨练、提升自己。<br />\r\n<span>&nbsp; &nbsp; &nbsp; &nbsp;</span>第一，多看这方面的书籍，增加大脑知识裤的容量，像网上的一些畅销书，我想任何一本只要仔细阅读都可以加深你对经商的热情。因为任何实践都离不开理论知识的奠基，才能在实践是更快更有利地吸收、融入进去。<br />\r\n<span>&nbsp; &nbsp; &nbsp; &nbsp;</span>第二，要熟练地掌握有效地沟通技巧。首先多耐心地倾听别人的想法，看别人怎么做，多听多练，用最真诚的话语打动对方，语气不能太过强硬，要学会多说赞美的话，然后多向别人推销自己，像产品一样多在‘市场上’被广大人群所知道。<br />\r\n<span>&nbsp; &nbsp; &nbsp; &nbsp;</span>第三，要学会忍耐，不断地在失败中磨练自己，从失败中提取失败的原因加以炼化，保持求胜的意志和信心，然后越挫越勇。每一位成功者的背后都会有无数次失败和煎熬，痛苦与想要放弃的念头，但他坚持下来了，所以成功了。人要学会不放过自己，让自己在逆境中走得越来越高。<br />\r\n<span>&nbsp; &nbsp; &nbsp; &nbsp;</span>第四，在这千万的企业中，有已经很成熟并且能力好，稳固的，有新崛起和你一样打拼的，你要发掘自己的优势，善于和竞争对手比巧智，敢于争夺和开辟市场，这样才能在行业中脱颖而出，不然你凭什么让客户放弃那些根基稳定的企业选择初出茅庐的你。<br />\r\n<span>&nbsp; &nbsp; &nbsp; &nbsp;</span>第五，经商者要懂得把握分寸，要抬得起价格，抓得住底线。与人合作，最主要的是诚信，要与人利益，与己利益，不要面对客户的刁难就放松了警惕让自己走在与己不利的边缘，而悔了自己。<span>&nbsp; &nbsp; &nbsp; &nbsp;</span><br />\r\n<span>&nbsp; &nbsp; &nbsp; &nbsp;</span>创业，首先就是经商头脑，在这其中需要有的就是诚信、变通、合作、道德、野心和能力，缺一不可。<br />\r\n<span>&nbsp; &nbsp; &nbsp; &nbsp;</span>提升自己的经商头脑，首先自己必须要有经商的概念，如果你都不知道什么是经商，那么更不用提怎么提升经商头脑了。其次，要明白经商的市场变化，关注政策变化，然后从中观察。最后，学习前人经验，从中获取重要信息。<br />\r\n提升自我的经商头脑，首先我们要对经商有一个深入的了解，我认为在这个阶段应该多读读有关经商方面的书籍，或者参加一些有关课程教育，深入了解经商，从中获取相关信息，并能用自己的方式去理解这一概念，培养对经商的兴趣。<br />\r\n<span>&nbsp; &nbsp; &nbsp; &nbsp;</span>多去观察，多去调查，不能只坐在家里看新闻，看报道，这只是纸上谈兵，不能很好的提高自己的经商头脑，多关注一些国家对商业的规划和限制，在市场中发现商机，收集相关资料，做出整理，并从中研究，商业的奥秘。<br />\r\n<span>&nbsp; &nbsp; &nbsp; &nbsp;</span>多学习前人经验，虽说成功不能复制，但可以从中获得一些对自己有利的商业观念。就比如说，为什么马云能把网络做的如此顺畅，那是因为他用发展的眼光去看待市场发展，具有前瞻性，虽说不是每个人都有这种头脑，但我们可以去借鉴，去学习，把别人的变成自己的，从而提高自己的商业头脑。<br />\r\n大家一定知道最近播放的比较火的电视剧《那年花开月正圆》，孙俪在剧中饰演了一位从一个什么也不懂的民间女子变成了远近知名的秦商首富，她就是在不断学习中，才有如此的经商头脑，她的成功离不开公公的教导和影响，公公对她以后的经商之路起到了铺垫作用。<br />\r\n<span>&nbsp; &nbsp; &nbsp; &nbsp;</span>要想提升自己的经商头脑首先你得让自己接触接触经商，懂得经商的定义与经商的意义，对经商这件事有些特别的兴趣和独特的看法。在平时的生活当中要自己多主动去了解经商，用经商的思想思考问题，同时在空闲时间你也可以多读一些关于经商的书籍，让自己从书本当中学到自己想要了解的经商知识，并且通过对经商书籍的阅读总结出自己对经商的看法和对作者所写的关于经商的评价。<br />\r\n这样你所读的经商书籍才能对你提升自己的经商头脑起到作用，使自己对经商有些更加深刻的认识，并且以后遇到经商问题时才能使自己有更多的知识储备，用自己学到的知识独自去解答经商问题。<br />\r\n<span>&nbsp; &nbsp; &nbsp; &nbsp;</span>除此之外，你也可以选择多与那些从事经商的成功人士交流，像他们学习先进科学的经商经验，孜孜不倦的汲取他们所拥有的经商知识，恭敬耐心的像他们询问自己的疑惑，让他们帮助你解决你自身存在的一些问题，希望他们给你指导性的意见，让你学会如何经商学会更好的经商。<br />\r\n<p>\r\n	<span>&nbsp; &nbsp; &nbsp; &nbsp;</span>这样从成功人士当中学到的经商知识是极其宝贵的，他可以让你以后经商时知道那些成功商人是如何成功的，可以让自己模范那些成功人士的经商方式，同时也可以让自己从那些成功人士当中遇见但自己可能将会遇到的问题，这样对提升你的经商头脑有着很大的作用。\r\n</p>\r\n<p>\r\n	&nbsp; &nbsp; &nbsp; 来源：https://zhidao.baidu.com/question/1900255146421852820.html\r\n</p>\r\n<p>\r\n</p>', '', '', '', '商业头脑', 41, 'N', 'N', '', '', 0, 0, 'N', 1517479671, 0, 'Y', 0, '', 'Y', 1517479554);
INSERT INTO `bage_post` VALUES (96, 1, '', '', '客观评价【武汉】和【杭州】两座省会城市', '', '', 'font-weight:bold;', 'a:1:{s:4:\"bold\";s:1:\"Y\";}', '', '', '', 18, 0, '', '', '', ' 我是个在杭州IT三巨头工作的武汉人，之前全国已去过十几个城市旅游，已在杭州买了13W左右的代步车，目前还未决定定居杭州，客观评价下武汉和杭州两座城市优劣。', '', '&nbsp;<span style=\"color:#333333;font-family:&quot;font-size:14px;background-color:#FFFFFF;\">我是个在杭州IT三巨头工作的武汉人，之前全国已去过十几个城市旅游，已在杭州买了13W左右的代步车，目前还未决定定居杭州，客观评价下武汉和杭州两座城市优劣。</span><br />\r\n<p>\r\n	<span style=\"color:#333333;font-family:&quot;font-size:14px;background-color:#FFFFFF;\">【杭州】</span>\r\n</p>\r\n<p>\r\n	<span style=\"color:#333333;font-family:&quot;font-size:14px;background-color:#FFFFFF;\"><img src=\"/uploads/201801/b102a514f734960e4c42bf7f67520130.jpeg\" alt=\"\" /><br />\r\n</span>\r\n</p>\r\n<span style=\"color:#333333;font-family:&quot;font-size:14px;background-color:#FFFFFF;\">优点：民营企业多且发展良好，市民素质高，百姓很友善，人均收入高于武汉，生活物价水平与武汉基本平齐。就业机会和选择面较宽。</span><br />\r\n<span style=\"color:#333333;font-family:&quot;font-size:14px;background-color:#FFFFFF;\">缺点：房价高，均价2.6W是保守，相比武汉均价1W来说，作为外地人就是月薪拿1W也很难买房定居杭州，当然如果你选择炒房产，杭州新区萧山余杭的房价增幅空间非常大，这里投资回报率会比武汉高。交通差：从地铁建设和地面交通建设看落后武汉不止3年，地面交通来看杭州几乎可以说没有什么立体交通规划，立交桥建设少的可怜，导致我在杭州高架上开车基本是蚂蚁走路走走停停，大跌眼镜。地铁交通：1号线建成不久，而且线路走的很偏实用性很低。剩下2号线预估最快在2017年建设，这和武汉今年要开通的3号线比起来，地铁建设落后太多。</span><br />\r\n<p>\r\n	<span style=\"color:#333333;font-family:&quot;font-size:14px;background-color:#FFFFFF;\">【武汉】</span>\r\n</p>\r\n<p>\r\n	<span style=\"color:#333333;font-family:&quot;font-size:14px;background-color:#FFFFFF;\"><img src=\"/uploads/201801/795688cd1624a217cd1801e061b1bf5a.jpeg\" alt=\"\" /><br />\r\n</span>\r\n</p>\r\n<span style=\"color:#333333;font-family:&quot;font-size:14px;background-color:#FFFFFF;\">优点：作为在家乡待了二十多年的人来说，最大印象就是武汉遍地美食，是杭州乃至其他城市无法比拟的，从种类繁多的早餐，到各种美味的夜宵，相信无论是外地人还是本地人都会留下深刻印象。其次武汉房价在全国来讲属于中下价位，对于买房定居来讲9000-1W的均价会让你在武汉比起杭州活的很轻松。交通武汉的主城区基本已完成70%立体交通建设，每个主路口都有立体高架桥，同时有机场快速通道。地铁：武汉基本保持一年通一线的高效建设，去年2号线，今天4号线，随着地铁线路的快速覆盖，加之武汉房价仍然偏低，未来5年武汉房价依然会稳步提升。</span><br />\r\nrn<span style=\"color:#333333;font-family:&quot;font-size:14px;background-color:#FFFFFF;\">缺点：去过很多城市，不单看杭州的话，武汉人的素质是偏低的，这点还是要客观承认，武汉人每次提到素质问题就会归咎于外地人多影响了武汉形象，这点诚然，但不能作为理由。据我所知，杭州总人口750W多，武汉900W多，杭州外地人口也占据了400W多，人家的人文管理为何就这么有秩序，为何外地人到武汉就变成那样，不得不反思，环境改变人。经济：由于武汉是重工业城市，科教、医疗、工业均优于杭州，由于每年众多的大学毕业生，使武汉工作待遇低，竞争激烈，就业选择面狭窄，当然如果你在这座城市从事公务员、大学教师、医疗工作者那就另一说了。所以武汉需要学习杭州大力发展实体经济、扶持中小民营企业的发展才能更好的把武汉发展壮大。</span><br />\r\n<p>\r\n	<span style=\"color:#333333;font-family:&quot;font-size:14px;background-color:#FFFFFF;\">PS：说些歪的，武汉的美女要远多过杭州，但是穿衣时尚上杭州女人更会搭配，同时奢侈品消费需求也高于武汉，杭州偶遇的街头美女很少并且都是杭州周边非本地人，这点比较惋惜。再就是杭州的菜偏甜，实在吃不惯，当然跟上海比起来好多了。最后不得不说杭州作为上海的后花园，在经济发展上得到很多实惠，要是武汉能真正得到中央拨款就好了，每年中年都说要大力发展中部，结果都是口号，到了地方要钱的时候，中央又不给了，比较惋惜。</span> \r\n</p>\r\n<p>\r\n	<span style=\"color:#333333;font-family:&quot;font-size:14px;background-color:#FFFFFF;\">&nbsp; &nbsp; &nbsp; 如果要旅游的话，杭州的风景名胜较多，历史底蕴也深厚，旅游产业的发展值得武汉学习。每次杭州的朋友要去武汉玩，我都说你把武汉小吃吃遍然后再乘船对比武汉东湖的大气与杭州西湖的精致就玩到了，黄鹤楼和雷峰塔一样，外面看看就行，进去就是坑爹货。哈哈</span> \r\n</p>\r\n<p>\r\n	<span style=\"color:#333333;font-family:&quot;font-size:14px;background-color:#FFFFFF;\">最后欢迎大家加入讨论，文明冷静就好，勿喷我哈~</span> \r\n</p>\r\n<p>\r\n	&nbsp;<a href=\"http://tieba.baidu.com/p/2582807135\" target=\"_blank\">http://tieba.baidu.com/p/2582807135</a> \r\n</p>\r\n<br />', '', '', '', '', 307, 'N', 'N', '', '', 0, 0, 'N', 1516774216, 0, 'Y', 0, '', 'Y', 1497023411);
INSERT INTO `bage_post` VALUES (98, 1, '', '', '49周之mysql读写分离原理以及在校内外的应用', '49周之mysql读写分离原理以及在校内外的应用', '', '', '', '', '', '', 18, 0, '', '', '', 'mysql读写分离原理', '', '&nbsp; &nbsp;MySQL复制，是指将主数据库的ddl和dml操作，通过二进制日志传到复制服务器（从库）上，然后在从库上对这些日志重新执行（也叫重做），从而实现主从库数据同步。<br />\r\nMySQL复制的原理<br />\r\n<span> </span>1、主库在事物提交时将数据变更为事件记录在Binlog（二进制文件）中<br />\r\n<span> </span>2、主库推送binlog中的事件到从库的RelayLog（中继日志）<br />\r\n<span> </span>3、从库根据relaylog重新做数据变更操作（通过逻辑复制达到主从数据一致）<br />\r\n主从复制中三个线程的变化<br />\r\n<span> </span>主库：binlogDump线程<br />\r\n<span> </span>从库：I/O线程和sql线程<br />\r\n<span> </span>主库启动复制<br />\r\n<span> </span>1、创建IO线程连接主库；<br />\r\n<span> </span>2、主库创建binlogDump线程读取数据库事件并发送给I/O线程；<br />\r\n<span> </span>3、I/O线程获取到事件数据后更新到从库的中继日志中<br />\r\n<span> </span>4、从库SQL线程读取中继日志中更新的数据库事件并应用<br />\r\n<div style=\"font-size:14px;\">\r\n</div>\r\n<!--5f39ae17-8c62-4a45-bc43-b32064c9388a:W3siYmxvY2tJZCI6IjU3ODMtMTUxMjkwNzcxNzg4MCIsImJsb2NrVHlwZSI6InBhcmFncmFwaCIsInN0eWxlcyI6eyJhbGlnbiI6ImxlZnQiLCJpbmRlbnQiOjAsInRleHQtaW5kZW50IjowLCJsaW5lLWhlaWdodCI6MS43NX0sInR5cGUiOiJwYXJhZ3JhcGgiLCJyaWNoVGV4dCI6eyJkYXRhIjpbeyJjaGFyIjoiICIsInN0eWxlcyI6eyJib2xkIjp0cnVlfX0seyJjaGFyIjoiICIsInN0eWxlcyI6eyJib2xkIjp0cnVlfX0seyJjaGFyIjoiICIsInN0eWxlcyI6eyJib2xkIjp0cnVlfX0seyJjaGFyIjoiICIsInN0eWxlcyI6eyJib2xkIjp0cnVlfX0seyJjaGFyIjoiTSIsInN0eWxlcyI6eyJib2xkIjp0cnVlfX0seyJjaGFyIjoieSIsInN0eWxlcyI6eyJib2xkIjp0cnVlfX0seyJjaGFyIjoiUyIsInN0eWxlcyI6eyJib2xkIjp0cnVlfX0seyJjaGFyIjoiUSIsInN0eWxlcyI6eyJib2xkIjp0cnVlfX0seyJjaGFyIjoiTCIsInN0eWxlcyI6eyJib2xkIjp0cnVlfX0seyJjaGFyIjoi5aSNIiwic3R5bGVzIjp7ImJvbGQiOnRydWV9fSx7ImNoYXIiOiLliLYiLCJzdHlsZXMiOnsiYm9sZCI6dHJ1ZX19LHsiY2hhciI6Iu+8jCJ9LHsiY2hhciI6IuaYryJ9LHsiY2hhciI6IuaMhyJ9LHsiY2hhciI6IuWwhiJ9LHsiY2hhciI6IuS4uyJ9LHsiY2hhciI6IuaVsCJ9LHsiY2hhciI6IuaNriJ9LHsiY2hhciI6IuW6kyJ9LHsiY2hhciI6IueahCJ9LHsiY2hhciI6ImQifSx7ImNoYXIiOiJkIn0seyJjaGFyIjoibCJ9LHsiY2hhciI6IuWSjCJ9LHsiY2hhciI6ImQifSx7ImNoYXIiOiJtIn0seyJjaGFyIjoibCJ9LHsiY2hhciI6IuaTjSJ9LHsiY2hhciI6IuS9nCJ9LHsiY2hhciI6Iu+8jCJ9LHsiY2hhciI6IumAmiJ9LHsiY2hhciI6Iui/hyJ9LHsiY2hhciI6IuS6jCJ9LHsiY2hhciI6Iui/myJ9LHsiY2hhciI6IuWItiJ9LHsiY2hhciI6IuaXpSJ9LHsiY2hhciI6IuW/lyJ9LHsiY2hhciI6IuS8oCJ9LHsiY2hhciI6IuWIsCJ9LHsiY2hhciI6IuWkjSJ9LHsiY2hhciI6IuWItiJ9LHsiY2hhciI6IuacjSJ9LHsiY2hhciI6IuWKoSJ9LHsiY2hhciI6IuWZqCJ9LHsiY2hhciI6Iu+8iCJ9LHsiY2hhciI6IuS7jiJ9LHsiY2hhciI6IuW6kyJ9LHsiY2hhciI6Iu+8iSJ9LHsiY2hhciI6IuS4iiJ9LHsiY2hhciI6Iu+8jCJ9LHsiY2hhciI6IueEtiJ9LHsiY2hhciI6IuWQjiJ9LHsiY2hhciI6IuWcqCJ9LHsiY2hhciI6IuS7jiJ9LHsiY2hhciI6IuW6kyJ9LHsiY2hhciI6IuS4iiJ9LHsiY2hhciI6IuWvuSJ9LHsiY2hhciI6Iui/mSJ9LHsiY2hhciI6IuS6myJ9LHsiY2hhciI6IuaXpSJ9LHsiY2hhciI6IuW/lyJ9LHsiY2hhciI6IumHjSJ9LHsiY2hhciI6IuaWsCJ9LHsiY2hhciI6IuaJpyJ9LHsiY2hhciI6IuihjCJ9LHsiY2hhciI6Iu+8iCJ9LHsiY2hhciI6IuS5nyJ9LHsiY2hhciI6IuWPqyJ9LHsiY2hhciI6IumHjSJ9LHsiY2hhciI6IuWBmiJ9LHsiY2hhciI6Iu+8iSJ9LHsiY2hhciI6Iu+8jCJ9LHsiY2hhciI6IuS7jiJ9LHsiY2hhciI6IuiAjCJ9LHsiY2hhciI6IuWuniJ9LHsiY2hhciI6IueOsCJ9LHsiY2hhciI6IuS4uyJ9LHsiY2hhciI6IuS7jiJ9LHsiY2hhciI6IuW6kyJ9LHsiY2hhciI6IuaVsCJ9LHsiY2hhciI6IuaNriJ9LHsiY2hhciI6IuWQjCJ9LHsiY2hhciI6IuatpSJ9LHsiY2hhciI6IuOAgiJ9XSwiaXNSaWNoVGV4dCI6dHJ1ZSwia2VlcExpbmVCcmVhayI6dHJ1ZX19LHsiYmxvY2tJZCI6IjEyODAtMTUxNDIxNDg5MDM2MCIsImJsb2NrVHlwZSI6InBhcmFncmFwaCIsInN0eWxlcyI6eyJhbGlnbiI6ImxlZnQiLCJpbmRlbnQiOjAsInRleHQtaW5kZW50IjowLCJsaW5lLWhlaWdodCI6MS43NX0sInR5cGUiOiJwYXJhZ3JhcGgiLCJyaWNoVGV4dCI6eyJkYXRhIjpbeyJjaGFyIjoiTSIsInN0eWxlcyI6eyJib2xkIjp0cnVlfX0seyJjaGFyIjoieSIsInN0eWxlcyI6eyJib2xkIjp0cnVlfX0seyJjaGFyIjoiUyIsInN0eWxlcyI6eyJib2xkIjp0cnVlfX0seyJjaGFyIjoiUSIsInN0eWxlcyI6eyJib2xkIjp0cnVlfX0seyJjaGFyIjoiTCIsInN0eWxlcyI6eyJib2xkIjp0cnVlfX0seyJjaGFyIjoi5aSNIiwic3R5bGVzIjp7ImJvbGQiOnRydWV9fSx7ImNoYXIiOiLliLYiLCJzdHlsZXMiOnsiYm9sZCI6dHJ1ZX19LHsiY2hhciI6IueahCIsInN0eWxlcyI6eyJib2xkIjp0cnVlfX0seyJjaGFyIjoi5Y6fIiwic3R5bGVzIjp7ImJvbGQiOnRydWV9fSx7ImNoYXIiOiLnkIYiLCJzdHlsZXMiOnsiYm9sZCI6dHJ1ZX19XSwiaXNSaWNoVGV4dCI6dHJ1ZSwia2VlcExpbmVCcmVhayI6dHJ1ZX19LHsiYmxvY2tJZCI6Ijc4NDQtMTUxNDIxNDU2NTI4MCIsImJsb2NrVHlwZSI6InBhcmFncmFwaCIsInN0eWxlcyI6eyJhbGlnbiI6ImxlZnQiLCJpbmRlbnQiOjAsInRleHQtaW5kZW50IjowLCJsaW5lLWhlaWdodCI6MS43NX0sInR5cGUiOiJwYXJhZ3JhcGgiLCJyaWNoVGV4dCI6eyJkYXRhIjpbeyJjaGFyIjoiMSJ9LHsiY2hhciI6IuOAgSJ9LHsiY2hhciI6IuS4uyJ9LHsiY2hhciI6IuW6kyJ9LHsiY2hhciI6IuWcqCJ9LHsiY2hhciI6IuS6iyJ9LHsiY2hhciI6IueJqSJ9LHsiY2hhciI6IuaPkCJ9LHsiY2hhciI6IuS6pCJ9LHsiY2hhciI6IuaXtiJ9LHsiY2hhciI6IuWwhiJ9LHsiY2hhciI6IuaVsCJ9LHsiY2hhciI6IuaNriJ9LHsiY2hhciI6IuWPmCJ9LHsiY2hhciI6IuabtCJ9LHsiY2hhciI6IuS4uiJ9LHsiY2hhciI6IuS6iyJ9LHsiY2hhciI6IuS7tiJ9LHsiY2hhciI6IuiusCJ9LHsiY2hhciI6IuW9lSJ9LHsiY2hhciI6IuWcqCJ9LHsiY2hhciI6IkIifSx7ImNoYXIiOiJpIn0seyJjaGFyIjoibiJ9LHsiY2hhciI6ImwifSx7ImNoYXIiOiJvIn0seyJjaGFyIjoiZyJ9LHsiY2hhciI6Iu+8iCJ9LHsiY2hhciI6IuS6jCJ9LHsiY2hhciI6Iui/myJ9LHsiY2hhciI6IuWItiJ9LHsiY2hhciI6IuaWhyJ9LHsiY2hhciI6IuS7tiJ9LHsiY2hhciI6Iu+8iSJ9LHsiY2hhciI6IuS4rSJ9XSwiaXNSaWNoVGV4dCI6dHJ1ZSwia2VlcExpbmVCcmVhayI6dHJ1ZX19LHsiYmxvY2tJZCI6IjQ5MTEtMTUxNDIxNDcwMzU4MSIsImJsb2NrVHlwZSI6InBhcmFncmFwaCIsInN0eWxlcyI6eyJhbGlnbiI6ImxlZnQiLCJpbmRlbnQiOjAsInRleHQtaW5kZW50IjowLCJsaW5lLWhlaWdodCI6MS43NX0sInR5cGUiOiJwYXJhZ3JhcGgiLCJyaWNoVGV4dCI6eyJkYXRhIjpbeyJjaGFyIjoiMiJ9LHsiY2hhciI6IuOAgSJ9LHsiY2hhciI6IuS4uyJ9LHsiY2hhciI6IuW6kyJ9LHsiY2hhciI6IuaOqCJ9LHsiY2hhciI6IumAgSJ9LHsiY2hhciI6ImIifSx7ImNoYXIiOiJpIn0seyJjaGFyIjoibiJ9LHsiY2hhciI6ImwifSx7ImNoYXIiOiJvIn0seyJjaGFyIjoiZyJ9LHsiY2hhciI6IuS4rSJ9LHsiY2hhciI6IueahCJ9LHsiY2hhciI6IuS6iyJ9LHsiY2hhciI6IuS7tiJ9LHsiY2hhciI6IuWIsCJ9LHsiY2hhciI6IuS7jiJ9LHsiY2hhciI6IuW6kyJ9LHsiY2hhciI6IueahCJ9LHsiY2hhciI6IlIifSx7ImNoYXIiOiJlIn0seyJjaGFyIjoibCJ9LHsiY2hhciI6ImEifSx7ImNoYXIiOiJ5In0seyJjaGFyIjoiTCJ9LHsiY2hhciI6Im8ifSx7ImNoYXIiOiJnIn0seyJjaGFyIjoi77yIIn0seyJjaGFyIjoi5LitIn0seyJjaGFyIjoi57unIn0seyJjaGFyIjoi5pelIn0seyJjaGFyIjoi5b+XIn0seyJjaGFyIjoi77yJIn1dLCJpc1JpY2hUZXh0Ijp0cnVlLCJrZWVwTGluZUJyZWFrIjp0cnVlfX0seyJibG9ja0lkIjoiMjE4MC0xNTE0MjE0NzkwOTk0IiwiYmxvY2tUeXBlIjoicGFyYWdyYXBoIiwic3R5bGVzIjp7ImFsaWduIjoibGVmdCIsImluZGVudCI6MCwidGV4dC1pbmRlbnQiOjAsImxpbmUtaGVpZ2h0IjoxLjc1fSwidHlwZSI6InBhcmFncmFwaCIsInJpY2hUZXh0Ijp7ImRhdGEiOlt7ImNoYXIiOiIzIn0seyJjaGFyIjoi44CBIn0seyJjaGFyIjoi5LuOIn0seyJjaGFyIjoi5bqTIn0seyJjaGFyIjoi5qC5In0seyJjaGFyIjoi5o2uIn0seyJjaGFyIjoiciJ9LHsiY2hhciI6ImUifSx7ImNoYXIiOiJsIn0seyJjaGFyIjoiYSJ9LHsiY2hhciI6InkifSx7ImNoYXIiOiJsIn0seyJjaGFyIjoibyJ9LHsiY2hhciI6ImcifSx7ImNoYXIiOiLph40ifSx7ImNoYXIiOiLmlrAifSx7ImNoYXIiOiLlgZoifSx7ImNoYXIiOiLmlbAifSx7ImNoYXIiOiLmja4ifSx7ImNoYXIiOiLlj5gifSx7ImNoYXIiOiLmm7QifSx7ImNoYXIiOiLmk40ifSx7ImNoYXIiOiLkvZwifSx7ImNoYXIiOiLvvIgifSx7ImNoYXIiOiLpgJoifSx7ImNoYXIiOiLov4cifSx7ImNoYXIiOiLpgLsifSx7ImNoYXIiOiLovpEifSx7ImNoYXIiOiLlpI0ifSx7ImNoYXIiOiLliLYifSx7ImNoYXIiOiLovr4ifSx7ImNoYXIiOiLliLAifSx7ImNoYXIiOiLkuLsifSx7ImNoYXIiOiLku44ifSx7ImNoYXIiOiLmlbAifSx7ImNoYXIiOiLmja4ifSx7ImNoYXIiOiLkuIAifSx7ImNoYXIiOiLoh7QifSx7ImNoYXIiOiLvvIkifV0sImlzUmljaFRleHQiOnRydWUsImtlZXBMaW5lQnJlYWsiOnRydWV9fSx7ImJsb2NrSWQiOiIyNTE3LTE1MTQyMTQ4OTcwMTgiLCJibG9ja1R5cGUiOiJwYXJhZ3JhcGgiLCJzdHlsZXMiOnsiYWxpZ24iOiJsZWZ0IiwiaW5kZW50IjowLCJ0ZXh0LWluZGVudCI6MCwibGluZS1oZWlnaHQiOjEuNzV9LCJ0eXBlIjoicGFyYWdyYXBoIiwicmljaFRleHQiOnsiZGF0YSI6W3siY2hhciI6IuS4uyIsInN0eWxlcyI6eyJib2xkIjp0cnVlfX0seyJjaGFyIjoi5LuOIiwic3R5bGVzIjp7ImJvbGQiOnRydWV9fSx7ImNoYXIiOiLlpI0iLCJzdHlsZXMiOnsiYm9sZCI6dHJ1ZX19LHsiY2hhciI6IuWItiIsInN0eWxlcyI6eyJib2xkIjp0cnVlfX0seyJjaGFyIjoi5LitIiwic3R5bGVzIjp7ImJvbGQiOnRydWV9fSx7ImNoYXIiOiLkuIkiLCJzdHlsZXMiOnsiYm9sZCI6dHJ1ZX19LHsiY2hhciI6IuS4qiIsInN0eWxlcyI6eyJib2xkIjp0cnVlfX0seyJjaGFyIjoi57q/Iiwic3R5bGVzIjp7ImJvbGQiOnRydWV9fSx7ImNoYXIiOiLnqIsiLCJzdHlsZXMiOnsiYm9sZCI6dHJ1ZX19LHsiY2hhciI6IueahCIsInN0eWxlcyI6eyJib2xkIjp0cnVlfX0seyJjaGFyIjoi5Y+YIiwic3R5bGVzIjp7ImJvbGQiOnRydWV9fSx7ImNoYXIiOiLljJYiLCJzdHlsZXMiOnsiYm9sZCI6dHJ1ZX19XSwiaXNSaWNoVGV4dCI6dHJ1ZSwia2VlcExpbmVCcmVhayI6dHJ1ZX19LHsiYmxvY2tJZCI6IjI2ODQtMTUxNDIxNTAwNTkwNyIsImJsb2NrVHlwZSI6InBhcmFncmFwaCIsInN0eWxlcyI6eyJhbGlnbiI6ImxlZnQiLCJpbmRlbnQiOjAsInRleHQtaW5kZW50IjowLCJsaW5lLWhlaWdodCI6MS43NX0sInR5cGUiOiJwYXJhZ3JhcGgiLCJyaWNoVGV4dCI6eyJkYXRhIjpbeyJjaGFyIjoi5Li7Iiwic3R5bGVzIjp7ImJvbGQiOnRydWV9fSx7ImNoYXIiOiLlupMiLCJzdHlsZXMiOnsiYm9sZCI6dHJ1ZX19LHsiY2hhciI6Iu+8miIsInN0eWxlcyI6eyJib2xkIjp0cnVlfX0seyJjaGFyIjoiYiJ9LHsiY2hhciI6ImkifSx7ImNoYXIiOiJuIn0seyJjaGFyIjoibCJ9LHsiY2hhciI6Im8ifSx7ImNoYXIiOiJnIn0seyJjaGFyIjoiRCJ9LHsiY2hhciI6InUifSx7ImNoYXIiOiJtIn0seyJjaGFyIjoicCJ9LHsiY2hhciI6Iue6vyJ9LHsiY2hhciI6IueoiyJ9XSwiaXNSaWNoVGV4dCI6dHJ1ZSwia2VlcExpbmVCcmVhayI6dHJ1ZX19LHsiYmxvY2tJZCI6IjM0OTgtMTUxNDIxNTAxNjc3NSIsImJsb2NrVHlwZSI6InBhcmFncmFwaCIsInN0eWxlcyI6eyJhbGlnbiI6ImxlZnQiLCJpbmRlbnQiOjAsInRleHQtaW5kZW50IjowLCJsaW5lLWhlaWdodCI6MS43NX0sInR5cGUiOiJwYXJhZ3JhcGgiLCJyaWNoVGV4dCI6eyJkYXRhIjpbeyJjaGFyIjoi5LuOIiwic3R5bGVzIjp7ImJvbGQiOnRydWV9fSx7ImNoYXIiOiLlupMiLCJzdHlsZXMiOnsiYm9sZCI6dHJ1ZX19LHsiY2hhciI6Iu+8miIsInN0eWxlcyI6eyJib2xkIjp0cnVlfX0seyJjaGFyIjoiSSJ9LHsiY2hhciI6Ii8ifSx7ImNoYXIiOiJPIn0seyJjaGFyIjoi57q/In0seyJjaGFyIjoi56iLIn0seyJjaGFyIjoi5ZKMIn0seyJjaGFyIjoicyJ9LHsiY2hhciI6InEifSx7ImNoYXIiOiJsIn0seyJjaGFyIjoi57q/In0seyJjaGFyIjoi56iLIn1dLCJpc1JpY2hUZXh0Ijp0cnVlLCJrZWVwTGluZUJyZWFrIjp0cnVlfX0seyJibG9ja0lkIjoiNjA2Ni0xNTE0MjE1MjI0NDA3IiwiYmxvY2tUeXBlIjoicGFyYWdyYXBoIiwic3R5bGVzIjp7ImFsaWduIjoibGVmdCIsImluZGVudCI6MCwidGV4dC1pbmRlbnQiOjAsImxpbmUtaGVpZ2h0IjoxLjc1fSwidHlwZSI6InBhcmFncmFwaCIsInJpY2hUZXh0Ijp7ImRhdGEiOlt7ImNoYXIiOiLkuLsifSx7ImNoYXIiOiLlupMifSx7ImNoYXIiOiLlkK8ifSx7ImNoYXIiOiLliqgifSx7ImNoYXIiOiLlpI0ifSx7ImNoYXIiOiLliLYifV0sImlzUmljaFRleHQiOnRydWUsImtlZXBMaW5lQnJlYWsiOnRydWV9fSx7ImJsb2NrSWQiOiI1NTkwLTE1MTQyMTUyNzI4MDYiLCJibG9ja1R5cGUiOiJwYXJhZ3JhcGgiLCJzdHlsZXMiOnsiYWxpZ24iOiJsZWZ0IiwiaW5kZW50IjowLCJ0ZXh0LWluZGVudCI6MCwibGluZS1oZWlnaHQiOjEuNzV9LCJ0eXBlIjoicGFyYWdyYXBoIiwicmljaFRleHQiOnsiZGF0YSI6W3siY2hhciI6IjEifSx7ImNoYXIiOiLjgIEifSx7ImNoYXIiOiLliJsifSx7ImNoYXIiOiLlu7oifSx7ImNoYXIiOiJJIn0seyJjaGFyIjoiTyJ9LHsiY2hhciI6Iue6vyJ9LHsiY2hhciI6IueoiyJ9LHsiY2hhciI6Iui/niJ9LHsiY2hhciI6IuaOpSJ9LHsiY2hhciI6IuS4uyJ9LHsiY2hhciI6IuW6kyJ9LHsiY2hhciI6Iu+8myJ9XSwiaXNSaWNoVGV4dCI6dHJ1ZSwia2VlcExpbmVCcmVhayI6dHJ1ZX19LHsiYmxvY2tJZCI6IjY3ODktMTUxNDIxNTMxNTA5MCIsImJsb2NrVHlwZSI6InBhcmFncmFwaCIsInN0eWxlcyI6eyJhbGlnbiI6ImxlZnQiLCJpbmRlbnQiOjAsInRleHQtaW5kZW50IjowLCJsaW5lLWhlaWdodCI6MS43NX0sInR5cGUiOiJwYXJhZ3JhcGgiLCJyaWNoVGV4dCI6eyJkYXRhIjpbeyJjaGFyIjoiMiJ9LHsiY2hhciI6IuOAgSJ9LHsiY2hhciI6IuS4uyJ9LHsiY2hhciI6IuW6kyJ9LHsiY2hhciI6IuWImyJ9LHsiY2hhciI6IuW7uiJ9LHsiY2hhciI6ImIifSx7ImNoYXIiOiJpIn0seyJjaGFyIjoibiJ9LHsiY2hhciI6ImwifSx7ImNoYXIiOiJvIn0seyJjaGFyIjoiZyJ9LHsiY2hhciI6IkQifSx7ImNoYXIiOiJ1In0seyJjaGFyIjoibSJ9LHsiY2hhciI6InAifSx7ImNoYXIiOiLnur8ifSx7ImNoYXIiOiLnqIsifSx7ImNoYXIiOiLor7sifSx7ImNoYXIiOiLlj5YifSx7ImNoYXIiOiLmlbAifSx7ImNoYXIiOiLmja4ifSx7ImNoYXIiOiLlupMifSx7ImNoYXIiOiLkuosifSx7ImNoYXIiOiLku7YifSx7ImNoYXIiOiLlubYifSx7ImNoYXIiOiLlj5EifSx7ImNoYXIiOiLpgIEifSx7ImNoYXIiOiLnu5kifSx7ImNoYXIiOiJJIn0seyJjaGFyIjoiLyJ9LHsiY2hhciI6Ik8ifSx7ImNoYXIiOiLnur8ifSx7ImNoYXIiOiLnqIsifSx7ImNoYXIiOiLvvJsifV0sImlzUmljaFRleHQiOnRydWUsImtlZXBMaW5lQnJlYWsiOnRydWV9fSx7ImJsb2NrSWQiOiI2MDYxLTE1MTQyMTUzODM5MjciLCJibG9ja1R5cGUiOiJwYXJhZ3JhcGgiLCJzdHlsZXMiOnsiYWxpZ24iOiJsZWZ0IiwiaW5kZW50IjowLCJ0ZXh0LWluZGVudCI6MCwibGluZS1oZWlnaHQiOjEuNzV9LCJ0eXBlIjoicGFyYWdyYXBoIiwicmljaFRleHQiOnsiZGF0YSI6W3siY2hhciI6IjMifSx7ImNoYXIiOiLjgIEifSx7ImNoYXIiOiJJIn0seyJjaGFyIjoiLyJ9LHsiY2hhciI6Ik8ifSx7ImNoYXIiOiLnur8ifSx7ImNoYXIiOiLnqIsifSx7ImNoYXIiOiLojrcifSx7ImNoYXIiOiLlj5YifSx7ImNoYXIiOiLliLAifSx7ImNoYXIiOiLkuosifSx7ImNoYXIiOiLku7YifSx7ImNoYXIiOiLmlbAifSx7ImNoYXIiOiLmja4ifSx7ImNoYXIiOiLlkI4ifSx7ImNoYXIiOiLmm7QifSx7ImNoYXIiOiLmlrAifSx7ImNoYXIiOiLliLAifSx7ImNoYXIiOiLku44ifSx7ImNoYXIiOiLlupMifSx7ImNoYXIiOiLnmoQifSx7ImNoYXIiOiLkuK0ifSx7ImNoYXIiOiLnu6cifSx7ImNoYXIiOiLml6UifSx7ImNoYXIiOiLlv5cifSx7ImNoYXIiOiLkuK0ifV0sImlzUmljaFRleHQiOnRydWUsImtlZXBMaW5lQnJlYWsiOnRydWV9fSx7ImJsb2NrSWQiOiI0NTkwLTE1MTQyMTU0NjUyMTIiLCJibG9ja1R5cGUiOiJwYXJhZ3JhcGgiLCJzdHlsZXMiOnsiYWxpZ24iOiJsZWZ0IiwiaW5kZW50IjowLCJ0ZXh0LWluZGVudCI6MCwibGluZS1oZWlnaHQiOjEuNzV9LCJ0eXBlIjoicGFyYWdyYXBoIiwicmljaFRleHQiOnsiZGF0YSI6W3siY2hhciI6IjQifSx7ImNoYXIiOiLjgIEifSx7ImNoYXIiOiLku44ifSx7ImNoYXIiOiLlupMifSx7ImNoYXIiOiJTIn0seyJjaGFyIjoiUSJ9LHsiY2hhciI6IkwifSx7ImNoYXIiOiLnur8ifSx7ImNoYXIiOiLnqIsifSx7ImNoYXIiOiLor7sifSx7ImNoYXIiOiLlj5YifSx7ImNoYXIiOiLkuK0ifSx7ImNoYXIiOiLnu6cifSx7ImNoYXIiOiLml6UifSx7ImNoYXIiOiLlv5cifSx7ImNoYXIiOiLkuK0ifSx7ImNoYXIiOiLmm7QifSx7ImNoYXIiOiLmlrAifSx7ImNoYXIiOiLnmoQifSx7ImNoYXIiOiLmlbAifSx7ImNoYXIiOiLmja4ifSx7ImNoYXIiOiLlupMifSx7ImNoYXIiOiLkuosifSx7ImNoYXIiOiLku7YifSx7ImNoYXIiOiLlubYifSx7ImNoYXIiOiLlupQifSx7ImNoYXIiOiLnlKgifV0sImlzUmljaFRleHQiOnRydWUsImtlZXBMaW5lQnJlYWsiOnRydWV9fV0=-->', '', '', '', '读写分离原理', 79, 'N', 'N', '', '', 0, 0, 'N', 1516628162, 0, 'Y', 0, '', 'Y', 1514185011);
INSERT INTO `bage_post` VALUES (104, 1, '', '', '如何php防止XSS攻击', '', '', '', '', '', '', '', 18, 0, '面试被问及到xss', '', 'xss', 'xss', 'xss', 'xss 原称Cross Site Scripting<br />\r\n如何产生的<br />\r\nXSS攻击也可以算是对HTML和JS的一种注入<br />\r\n<p>\r\n	用户提交了别有用心的可执行js或其他脚本。\r\n</p>\r\n<p>\r\n	<img src=\"/uploads/201802/7363c6f9b6a8d4b9ebd5eed9a96cfa00.jpg\" alt=\"\" /> \r\n</p>\r\n如何避免？<br />\r\n<h3>\r\n	1、htmlentities(string , [可选]flags, [可选]character-set , [可选]double_encode) 把字符转换为HTML实体。\r\n</h3>\r\n<span> </span> \r\n<p>\r\n	例如：\r\n</p>\r\n<pre class=\"prettyprint lang-php\">&lt;?php  \r\n$str = \"Jane &amp; \'Tarzan\'\";  \r\necho htmlentities($str, ENT_COMPAT); // Will only convert double quotes  \r\necho \"&lt;br&gt;\";  \r\necho htmlentities($str, ENT_QUOTES); // Converts double and single quotes  \r\necho \"&lt;br&gt;\";  \r\necho htmlentities($str, ENT_NOQUOTES); // Does not convert any quotes  \r\n?&gt; </pre>\r\n&nbsp;<br />\r\n<span> </span>//查看源码<br />\r\n<pre class=\"prettyprint lang-html\">&lt;!DOCTYPE html&gt;  \r\n&lt;html&gt;  \r\n&lt;body&gt;  \r\nJane &amp; \'Tarzan\'&lt;br&gt;  \r\nJane &amp; \'Tarzan\'&lt;br&gt;  \r\nJane &amp; \'Tarzan\'  \r\n&lt;/body&gt;  \r\n&lt;/html&gt;  </pre>\r\n<br />\r\n<span> </span>//浏览器查看<br />\r\n<pre class=\"prettyprint lang-php\">Jane &amp; \'Tarzan\'\r\nJane &amp; \'Tarzan\'\r\nJane &amp; \'Tarzan\'\r\n</pre>\r\n<br />\r\n<h3>\r\n	2、方法二 对COOKIE进行IP绑定\r\n</h3>\r\ncookie里面一般有自动登录的信息和session_id。对cookie进行IP绑定（当然也可以同时绑定客户端其他用户信息，根据用户的IP来判断这个cookie是不是原始授权用户。<br />\r\n&nbsp; &nbsp; //代码如下<br />\r\n<p>\r\n	<br />\r\n</p>\r\n<pre class=\"prettyprint lang-php\">    用户设置了自动登录时保存自动登录信息:\r\n    $auto=I(\'post.auto\');//用户设置了自动登录\r\n    if(!empty($auto)){\r\n        cookie(\'auto\',encrypt(serialize($data)));//将登录信息保存到cookie,其中$data里含有加密后的帐号，密码，和用户的IP，这里的cookie已在全局中设置过期日期为一周\r\n    }\r\n    用户关闭浏览器再次访问网站时，进行自动登录\r\n    if (!is_login()) {//是否未登录状态?\r\n        $auth=cookie(\'auto\');\r\n        if(!empty($auth)){//是否未有自动登录cookie?\r\n            $data=unserialize(decrypt($auth));\r\n            if(!empty($data) &amp;&amp; !empty($data[\'username\']) &amp;&amp; !empty($data[\'password\']) &amp;&amp; !empty($data[\'last_login_ip\'])){\r\n                $user=M(\'Member\')-&gt;where(array(\'username\'=&gt;$data[\'username\'],\'password\'=&gt;$data[\'password\']))-&gt;find();\r\n                if(!empty($user[\'id\'])&amp;&amp;($user[\'last_login_ip\']==get_client_ip())){//cookie帐号密码是否有效?//IP来源是否相同?\r\n                    login_session($user[\'id\'], $user[\'username\'], $data[\'last_login_ip\']);//用户自动登录成功\r\n                }\r\n            }\r\n        }\r\n    }\r\n</pre>\r\n<pre class=\"prettyprint lang-php\">3、CSRF</pre>\r\n<pre class=\"prettyprint lang-php\">   跨站请求伪造（英语：Cross-site request forgery），也被称为one-click attack或者session riding，</pre>\r\n<pre class=\"prettyprint lang-php\">通常缩写为CSRF或者XSRF， 是一种挟制用户在当前已登录的Web应用程序上执行非本意的操作的攻击方法。</pre>\r\n<pre class=\"prettyprint lang-php\">【案例】laravel中的跨站请求伪造</pre>\r\n<pre class=\"prettyprint lang-php\">   跨站请求伪造是一种通过伪装授权用户的请求来利用授信网站的恶意漏洞。Laravel 使得防止应用\r\n遭到跨站请求伪造攻击变得简单。\r\nLaravel 自动为每一个被应用管理的有效用户会话生成一个 CSRF “令牌”，该令牌用于验证授权用户和发起请求者是否是同一个人。\r\n原理图如下：</pre>\r\n<pre class=\"prettyprint lang-php\"><img src=\"/uploads/201802/bf2895fd6903fac614527c967fb2d0e3.png\" alt=\"\" /> </pre>\r\n<pre class=\"prettyprint lang-php\">整理至互联网，后续继续总结！</pre>\r\n<pre class=\"prettyprint lang-php\">\r\n	\r\n<div>\r\n	\r\n</div>\r\n</pre>\r\n<p>\r\n	<br />\r\n</p>', '', '', '', '', 54, 'N', 'N', '', '', 0, 0, 'N', 1517487279, 0, 'Y', 0, '', 'Y', 1517486297);
INSERT INTO `bage_post` VALUES (105, 1, '', '', 'web中网站用户信息redis的hash方式存储', '', '', '', '', '', '', '', 18, 0, '', '', 'redis的hash方式存储', 'redis的hash方式存储', 'redis的hash方式存储', '&nbsp; &nbsp; &nbsp;存储一个用户信息对象数据(name、age、birthday),uid 作为key ,存储的value用户对象包含姓名，年龄，生日等用户信息 userInfoObj。<br />\r\n<ul>\r\n	<li>\r\n		方法一、序列化用户信息对象-userInfoObj，弊端是增加序列化/反序列化的开销。\r\n	</li>\r\n	<li>\r\n		方法二、存储多个key-value对，比如8000_name=tanjian,8000_age=29。弊端用户ID为重复存储，如果存在大量这样的数据，会造成内存浪费。\r\n	</li>\r\n	<li>\r\n		总结：那么Redis提供的Hash很好的解决了这个问题，Redis的Hash实际是内部存储的Value为一个HashMap，并提供了直接存取这个Map成员的接口,如下图：\r\n	</li>\r\n</ul>\r\n<br />\r\n<img src=\"/uploads/201802/0149bc298e10c507f0f331c488604962.jpeg\" alt=\"\" /><br />\r\n也就是说，Key仍然是用户ID, value是一个Map，这个Map的key是成员的属性名，value是属性值，这样对数据的修改和存取都可以直接通过其内部Map的Key(Redis里称内部Map的key为field), 也就是通过 key(用户ID) + field(属性标签) 就可以操作对应属性数据了，既不需要重复存储数据，也不会带来序列化和并发修改控制的问题。很好的解决了问题。<br />\r\n<p style=\"color:#333333;font-family:verdana, &quot;font-size:14px;background-color:#FAF7EF;\">\r\n	这里同时需要注意，Redis提供了接口(hgetall)可以直接取到全部的属性数据,但是如果内部Map的成员很多，那么涉及到遍历整个内部Map的操作，由于Redis单线程模型的缘故，这个遍历操作可能会比较耗时，而另其它客户端的请求完全不响应，这点需要格外注意。\r\n</p>\r\n<p style=\"color:#333333;font-family:verdana, &quot;font-size:14px;background-color:#FAF7EF;\">\r\n	<strong>实现方式：</strong> \r\n</p>\r\n<p style=\"color:#333333;font-family:verdana, &quot;font-size:14px;background-color:#FAF7EF;\">\r\n	&nbsp; &nbsp; &nbsp; 上面已经说到Redis Hash对应Value内部实际就是一个HashMap，实际这里会有2种不同实现，这个Hash的成员比较少时Redis为了节省内存会采用类似一维数组的方式来紧凑存储，而不会采用真正的HashMap结构，对应的value redisObject的encoding为zipmap,当成员数量增大时会自动转成真正的HashMap,此时encoding为ht。如图\r\n</p>\r\n<p style=\"color:#333333;font-family:verdana, &quot;font-size:14px;background-color:#FAF7EF;\">\r\n	<img src=\"/uploads/201802/424d09cf8b62ed3c3c176186b03e2e4e.png\" alt=\"\" /> \r\n</p>\r\n<br />\r\n<br />', '', '', '', 'redis,hash', 89, 'N', 'N', '', '', 0, 0, 'N', 0, 0, 'Y', 0, '', 'Y', 1517585241);
INSERT INTO `bage_post` VALUES (106, 1, '', '', '使用scrapy爬虫分析全杭州小区价格', '', '', '', '', '', '', '', 18, 0, '    第一次写爬虫的博客，主要分析了杭州的小区价格情况，本次采集的是安居客约1500条数据。', '', '使用scrapy爬虫分析全杭州小区价格', 'scrapy', 'scrapy', '<p>\r\n	&nbsp; &nbsp;使用了比较常见的一款分布式企业级的爬虫软件scrapy。首先你得安装好爬虫环境，我基于mac安装的是1.4.0版本。\r\n</p>\r\n<p>\r\n	&nbsp; &nbsp;大致步骤如下\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<ul>\r\n	<li>\r\n		1、dom结构分析\r\n	</li>\r\n	<li>\r\n		2、编写spider实例-anjuke/spiders/anjuke_spider.py\r\n	</li>\r\n	<li>\r\n		3、编写管道--anjuke/pipelines.py\r\n	</li>\r\n	<li>\r\n		4、修改配置anjuke/settings.py\r\n	</li>\r\n	<li>\r\n		5、编写执行脚本anjuke/spiders/run.py\r\n	</li>\r\n</ul>\r\n<p>\r\n	&nbsp; &nbsp; &nbsp; 现在就各个步骤详细说明\r\n</p>\r\n<h4>\r\n	1、dom结构分析\r\n</h4>\r\n<p>\r\n	<br />\r\n</p>\r\n<p class=\"MsoNormal\">\r\n	<span>&nbsp; &nbsp; URL地址为：<a href=\"https://hangzhou.anjuke.com/community/p15/\">https://hangzhou.anjuke.com/community/p15/</a>，其实dom结构比较耗费时间的，需要好好总结。</span> \r\n</p>\r\n<p class=\"MsoNormal\">\r\n	<br />\r\n</p>\r\n<p class=\"MsoNormal\">\r\n	<img src=\"/uploads/201802/db5a5fa2564dcd9b8acbc3e07010e6d3.png\" alt=\"\" /> \r\n</p>\r\n<p class=\"MsoNormal\">\r\n	<br />\r\n</p>\r\n<h4>\r\n	2、编写spider实例-anjuke/spiders/anjuke_spider.py\r\n</h4>\r\n<p>\r\n	<img src=\"/uploads/201802/25a2474095469cef631d77f90b124b93.png\" alt=\"\" /> \r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<h4>\r\n	3、编写管道--anjuke/pipelines.py\r\n</h4>\r\n<p>\r\n	&nbsp; &nbsp; &nbsp;设计表结构和编写数据处理。\r\n</p>\r\n<p class=\"MsoNormal\">\r\n	<br />\r\n</p>\r\n<pre class=\"prettyprint lang-css\">| anjuke_tb | CREATE TABLE `anjuke_tb` (\r\n  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,\r\n  `name` varchar(100) DEFAULT NULL COMMENT \'地址或商铺名称\',\r\n  `avg_price` int(5) DEFAULT NULL COMMENT \'均价\',\r\n  `request_url` varchar(100) DEFAULT NULL COMMENT \'请求URL\',\r\n  `c_time` varchar(10) DEFAULT NULL COMMENT \'录入时间\',\r\n  PRIMARY KEY (`id`)</pre>\r\n<h4>\r\n	4、修改配置anjuke/settings.py\r\n</h4>\r\n<p>\r\n	<br />\r\n</p>\r\n<pre class=\"prettyprint lang-py\">BOT_NAME = \'anjuke\'\r\nSPIDER_MODULES = [\'anjuke.spiders\']\r\nNEWSPIDER_MODULE = \'anjuke.spiders\'\r\nDEPTH_LIMIT = 100 #4\r\nDOWNLOAD_DELAY = 2\r\nUSER_AGENT = \'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.95 Safari/537.36\'\r\nFEED_EXPORT_ENCODING = \'utf-8\'\r\nITEM_PIPELINES = {\r\n   \'anjuke.pipelines.AnjukePipeline\': 300,\r\n}\r\n</pre>\r\n<h4>\r\n	5、编写执行脚本anjuke/spiders/run.py\r\n</h4>\r\n<p>\r\n	<br />\r\n</p>\r\n<pre class=\"prettyprint lang-php\"># coding:utf-8\r\nfrom scrapy import cmdline\r\ncmdline.execute(\"scrapy crawl ajk_community -o review_xzl.json\".split())\r\n</pre>\r\n<h4>\r\n	6、执行脚本\r\n</h4>\r\n<p>\r\n	<img src=\"/uploads/201802/31177b72e429ead6196cd7b19d40a402.png\" alt=\"\" /> \r\n</p>\r\n<p>\r\n	<img src=\"/uploads/201802/796d711bf07bf5cdc2061817290d6ef4.png\" alt=\"\" /> \r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<h4>\r\n	7、数据分析\r\n</h4>\r\n<p>\r\n	<span>本次采集的是安居客约1500条数据。</span>\r\n</p>\r\n<p>\r\n	全杭州最贵的五个豪宅\r\n</p>\r\n<h3>\r\n	<span></span> \r\n</h3>\r\n<p class=\"MsoNormal\">\r\n	<span>+------+-----------------------+-----------+</span> \r\n</p>\r\n<p class=\"MsoNormal\">\r\n	<span>| id&nbsp;&nbsp;\r\n| name&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; |\r\navg_price |</span> \r\n</p>\r\n<p class=\"MsoNormal\">\r\n	<span>+------+-----------------------+-----------+</span> \r\n</p>\r\n<p class=\"MsoNormal\">\r\n	<span>|&nbsp;\r\n188 | </span>绿城江南里<span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; |&nbsp;&nbsp;&nbsp;\r\n193548 |</span> \r\n</p>\r\n<p class=\"MsoNormal\">\r\n	<span>|&nbsp;\r\n702 | </span>绿城云栖玫瑰园<span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; |&nbsp;&nbsp;&nbsp;\r\n141578 |</span> \r\n</p>\r\n<p class=\"MsoNormal\">\r\n	<span>|&nbsp;&nbsp;\r\n76 | </span>元福里<span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; |&nbsp;&nbsp;&nbsp; 133333 |</span> \r\n</p>\r\n<p class=\"MsoNormal\">\r\n	<span style=\"color:#E53333;\">|&nbsp;\r\n186 | </span><span style=\"color:#E53333;\">武林壹号</span><span style=\"color:#E53333;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; |&nbsp;&nbsp;&nbsp;&nbsp; 99358 |</span> \r\n</p>\r\n<p class=\"MsoNormal\">\r\n	<span>|&nbsp;\r\n986 | </span>云栖蝶谷<span>(</span>别墅<span>)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; |&nbsp;&nbsp;&nbsp;&nbsp; 95008 |</span> \r\n</p>\r\n<p class=\"MsoNormal\">\r\n	<span>|&nbsp;\r\n918 | </span>钱塘帝景<span>(</span>别墅<span>)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; |&nbsp;&nbsp;&nbsp;&nbsp; 86687 |</span> \r\n</p>\r\n<p class=\"MsoNormal\">\r\n	<span>| 1069 | </span>嘉禾苑<span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; |&nbsp;&nbsp;&nbsp;&nbsp; 86131 |</span> \r\n</p>\r\n<p class=\"MsoNormal\">\r\n	<span>|&nbsp;\r\n457 | </span>武林外滩<span>(</span>公寓<span>)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; |&nbsp;&nbsp;&nbsp;&nbsp; 82403 |</span> \r\n</p>\r\n<p class=\"MsoNormal\">\r\n	<span>|&nbsp;\r\n659 | </span>杭州阳明谷<span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; |&nbsp;&nbsp;&nbsp;&nbsp; 81885 |</span> \r\n</p>\r\n<p class=\"MsoNormal\">\r\n	<span>|&nbsp;\r\n346 | </span>阳明谷度假村<span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; |&nbsp;&nbsp;&nbsp;&nbsp;\r\n76460 |</span> \r\n</p>\r\n<p class=\"MsoNormal\">\r\n	<span>&nbsp;</span> \r\n</p>\r\n<p class=\"MsoNormal\">\r\n	<span>+------+-----------------------+-----------+</span> \r\n</p>\r\n&nbsp; &nbsp; &nbsp; 第一次写爬虫教程，多有不足请多包涵或给出建议。\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<pre class=\"prettyprint lang-php\"></pre>\r\n<pre class=\"prettyprint lang-php\"></pre>\r\n<pre class=\"prettyprint lang-php\"></pre>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p class=\"MsoNormal\">\r\n	<br />\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<br />\r\n</p>', '', '', '', 'scrapy,杭州豪宅', 195, 'N', 'N', '', '', 0, 0, 'N', 1517850558, 0, 'Y', 0, '', 'Y', 1517850269);
INSERT INTO `bage_post` VALUES (107, 1, '', '', 'MyISAM的锁调度机制', '', '', '', '', '', '', '', 18, 0, '', '', 'MyISAM的锁调度机制', 'MyISAM的锁调度机制', 'MyISAM的锁调度机制', '<p>\r\n	&nbsp; &nbsp; &nbsp;MyISAM的锁调度机制,如图。\r\n</p>\r\n<p>\r\n	<img src=\"/uploads/201802/4763d1c03a403d2316d9c25e5c4b4709.png\" alt=\"\" />\r\n</p>\r\n<p>\r\n</p>\r\n<p>\r\n	<br />\r\n</p>', '', '', '', '', 25, 'N', 'N', '', '', 0, 0, 'N', 0, 0, 'Y', 0, '', 'Y', 1518356672);
INSERT INTO `bage_post` VALUES (109, 1, '', '', 'http长连接和短链接的理解', '', '', '', '', '', '', '', 18, 0, '', '', '', '', '', '<h2>\r\n	短连接\r\n</h2>\r\n<span style=\"font-size:16px;\">浏览器client发起并建立TCP连接&nbsp;</span><br />\r\n<span style=\"font-size:16px;\"> -&gt; client发送HttpRequest报文&nbsp;</span><br />\r\n<span style=\"font-size:16px;\"> -&gt; server接收到报文</span><br />\r\n<span style=\"font-size:16px;\"> -&gt;server handle并发送HttpResponse报文给前端,发送完毕之后立即调用socket.close方法</span><br />\r\n<span style=\"font-size:16px;\"> -&gt;client接收response报文</span><br />\r\n<span style=\"font-size:16px;\"> -&gt;client最终会收到server端断开TCP连接的信号</span><br />\r\n<span style=\"font-size:16px;\"> -&gt;client 端断开TCP连接，具体就是调用close方法</span><br />\r\n<span style=\"font-size:16px;\"> 也可以这样说：</span><br />\r\n<span style=\"font-size:16px;\"> 短连接是指SOCKET连接后，发送接收完数据后马上断开连接。</span><br />\r\n<p>\r\n	<span style=\"font-size:16px;\">因为连接后接收了数据就断开了，所以每次数据接受处理不会有联系。</span>\r\n</p>\r\n<p>\r\n	<span style=\"font-size:16px;\">这也是HTTP协议无状态的原因之一。</span>\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<br />\r\n</p>', '', '', '', '', 28, 'N', 'N', '', '', 0, 0, 'N', 1521807842, 0, 'Y', 0, '', 'Y', 1521807813);
COMMIT;

-- ----------------------------
-- Table structure for bage_post_2tags
-- ----------------------------
DROP TABLE IF EXISTS `bage_post_2tags`;
CREATE TABLE `bage_post_2tags` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '标题ID',
  `tag_name` char(30) NOT NULL COMMENT '标签名称',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=104 DEFAULT CHARSET=utf8 COMMENT='内容关联标签';

-- ----------------------------
-- Records of bage_post_2tags
-- ----------------------------
BEGIN;
INSERT INTO `bage_post_2tags` VALUES (84, 95, '支付宝');
INSERT INTO `bage_post_2tags` VALUES (85, 95, '如何');
INSERT INTO `bage_post_2tags` VALUES (101, 105, 'hash');
INSERT INTO `bage_post_2tags` VALUES (100, 105, 'redis');
INSERT INTO `bage_post_2tags` VALUES (99, 103, '商业头脑');
INSERT INTO `bage_post_2tags` VALUES (98, 102, '三层结构');
INSERT INTO `bage_post_2tags` VALUES (97, 101, 'awk');
INSERT INTO `bage_post_2tags` VALUES (91, 89, 'unix命令');
INSERT INTO `bage_post_2tags` VALUES (92, 89, '英文全称');
INSERT INTO `bage_post_2tags` VALUES (93, 92, '承德');
INSERT INTO `bage_post_2tags` VALUES (94, 92, '五一');
INSERT INTO `bage_post_2tags` VALUES (95, 92, '自驾');
INSERT INTO `bage_post_2tags` VALUES (96, 98, '读写分离原理');
INSERT INTO `bage_post_2tags` VALUES (102, 106, 'scrapy');
INSERT INTO `bage_post_2tags` VALUES (103, 106, '杭州豪宅');
COMMIT;

-- ----------------------------
-- Table structure for bage_post_album
-- ----------------------------
DROP TABLE IF EXISTS `bage_post_album`;
CREATE TABLE `bage_post_album` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '用户名',
  `content_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '内容编号',
  `catalog` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '类别',
  `folder` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '文件夹',
  `real_name` varchar(255) NOT NULL DEFAULT '' COMMENT '原始文件名称',
  `file_name` char(100) NOT NULL DEFAULT '' COMMENT '带路径文件名',
  `thumb_name` varchar(255) NOT NULL DEFAULT '' COMMENT '缩略图',
  `save_path` varchar(100) NOT NULL DEFAULT '' COMMENT '保存路径',
  `save_name` varchar(100) NOT NULL DEFAULT '' COMMENT '保存文件名不带路径',
  `hash` char(32) NOT NULL DEFAULT '' COMMENT 'hash',
  `file_ext` char(5) NOT NULL DEFAULT 'jpg' COMMENT '扩展名称',
  `file_mime` varchar(50) NOT NULL DEFAULT '' COMMENT '文件头信息',
  `file_size` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '文件大小',
  `down_count` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '下载次数',
  `access` varchar(255) NOT NULL DEFAULT '' COMMENT '权限控制',
  `sort_order` int(11) NOT NULL DEFAULT '0' COMMENT '排序',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '上传时间',
  PRIMARY KEY (`id`),
  KEY `album` (`content_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='图片相册';

-- ----------------------------
-- Table structure for bage_post_comment
-- ----------------------------
DROP TABLE IF EXISTS `bage_post_comment`;
CREATE TABLE `bage_post_comment` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `post_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '标题id',
  `user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '用户ID',
  `nickname` varchar(60) NOT NULL DEFAULT 'guest' COMMENT '用户名',
  `email` varchar(50) NOT NULL DEFAULT '' COMMENT '邮箱',
  `content` text NOT NULL COMMENT '评论内容',
  `status_is` enum('Y','N') NOT NULL DEFAULT 'Y' COMMENT '状态',
  `status_answer` enum('Y','N') NOT NULL DEFAULT 'N',
  `answer_content` text COMMENT '回复内容',
  `client_ip` char(5) NOT NULL DEFAULT '127' COMMENT '评论ip',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '录入时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=25 DEFAULT CHARSET=utf8 COMMENT='新闻评论';

-- ----------------------------
-- Records of bage_post_comment
-- ----------------------------
BEGIN;
INSERT INTO `bage_post_comment` VALUES (23, 92, 0, 's', 's@g.com', 'sss', 'Y', 'N', 'reply', '127', 1516623669);
INSERT INTO `bage_post_comment` VALUES (24, 101, 0, 'awk', 'tann1013@gmail.com', '222', 'Y', 'N', '', '127', 1517316727);
COMMIT;

-- ----------------------------
-- Table structure for bage_post_tags
-- ----------------------------
DROP TABLE IF EXISTS `bage_post_tags`;
CREATE TABLE `bage_post_tags` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `catalog_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '分类',
  `tag_name` char(30) NOT NULL COMMENT 'tag名称',
  `data_count` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '数据总数',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '录入时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=101 DEFAULT CHARSET=utf8 COMMENT='新闻标签';

-- ----------------------------
-- Records of bage_post_tags
-- ----------------------------
BEGIN;
INSERT INTO `bage_post_tags` VALUES (64, 9, '数据类型', 1, 1427943849);
INSERT INTO `bage_post_tags` VALUES (63, 9, '二分查找', 1, 1427943560);
INSERT INTO `bage_post_tags` VALUES (62, 9, 'Ubuntu', 1, 1427553206);
INSERT INTO `bage_post_tags` VALUES (61, 9, 'uname命令', 1, 1427553206);
INSERT INTO `bage_post_tags` VALUES (60, 9, 'YII笔记', 1, 1427293826);
INSERT INTO `bage_post_tags` VALUES (59, 9, '部门聚会', 1, 1423669298);
INSERT INTO `bage_post_tags` VALUES (58, 9, '个人生活', 1, 1423669298);
INSERT INTO `bage_post_tags` VALUES (57, 9, '斐波纳契数列', 1, 1420906448);
INSERT INTO `bage_post_tags` VALUES (56, 9, '递归', 1, 1420906448);
INSERT INTO `bage_post_tags` VALUES (55, 11, 'nginx配置优化', 1, 1420736532);
INSERT INTO `bage_post_tags` VALUES (54, 11, 'nginx', 1, 1420736532);
INSERT INTO `bage_post_tags` VALUES (53, 11, 'memcached', 1, 1420724843);
INSERT INTO `bage_post_tags` VALUES (52, 11, 'nosql', 1, 1420724843);
INSERT INTO `bage_post_tags` VALUES (51, 11, 'redis', 2, 1420724843);
INSERT INTO `bage_post_tags` VALUES (50, 11, '流程图', 1, 1416451535);
INSERT INTO `bage_post_tags` VALUES (48, 11, 'Linux下部署yii', 1, 1414987030);
INSERT INTO `bage_post_tags` VALUES (49, 11, 'TP', 1, 1416451535);
INSERT INTO `bage_post_tags` VALUES (46, 9, '软件', 1, 1414595138);
INSERT INTO `bage_post_tags` VALUES (45, 9, '能力', 1, 1414595138);
INSERT INTO `bage_post_tags` VALUES (44, 9, '模型', 1, 1414595138);
INSERT INTO `bage_post_tags` VALUES (43, 9, '架构师', 1, 1414595138);
INSERT INTO `bage_post_tags` VALUES (42, 11, '程序员规划', 1, 1414594922);
INSERT INTO `bage_post_tags` VALUES (41, 11, '技术', 1, 1414594922);
INSERT INTO `bage_post_tags` VALUES (40, 9, '排序算法', 1, 1414424966);
INSERT INTO `bage_post_tags` VALUES (39, 9, '经典排序算法', 1, 1414424966);
INSERT INTO `bage_post_tags` VALUES (38, 9, '算法', 2, 1414315067);
INSERT INTO `bage_post_tags` VALUES (37, 9, '快速排序', 1, 1414315067);
INSERT INTO `bage_post_tags` VALUES (35, 9, '程序员', 2, 1414131614);
INSERT INTO `bage_post_tags` VALUES (36, 9, '生存定律', 1, 1414131614);
INSERT INTO `bage_post_tags` VALUES (65, 9, '项目管理', 1, 1428334159);
INSERT INTO `bage_post_tags` VALUES (66, 9, 'OOP', 1, 1428334159);
INSERT INTO `bage_post_tags` VALUES (67, 9, '软件项目管理', 1, 1428334392);
INSERT INTO `bage_post_tags` VALUES (68, 9, '问题', 1, 1428334393);
INSERT INTO `bage_post_tags` VALUES (69, 9, '分析', 1, 1428334393);
INSERT INTO `bage_post_tags` VALUES (70, 9, 'shell编程', 1, 1428831296);
INSERT INTO `bage_post_tags` VALUES (71, 9, '多字段索引', 1, 1429108751);
INSERT INTO `bage_post_tags` VALUES (72, 9, '杭州', 1, 1430925917);
INSERT INTO `bage_post_tags` VALUES (73, 9, '网络互联参考模型', 1, 1432999929);
INSERT INTO `bage_post_tags` VALUES (74, 9, 'OSI七层网络模型', 1, 1432999929);
INSERT INTO `bage_post_tags` VALUES (75, 9, '搬家', 1, 1433686522);
INSERT INTO `bage_post_tags` VALUES (76, 9, '兴趣', 1, 1433686522);
INSERT INTO `bage_post_tags` VALUES (77, 9, '程序员计算器', 1, 1434196986);
INSERT INTO `bage_post_tags` VALUES (78, 11, 'cbd', 1, 1459819689);
INSERT INTO `bage_post_tags` VALUES (79, 11, '国贸三期', 1, 1459819689);
INSERT INTO `bage_post_tags` VALUES (80, 11, '北京最高建筑', 1, 1459819689);
INSERT INTO `bage_post_tags` VALUES (81, 11, 'mysql引擎', 1, 1460450143);
INSERT INTO `bage_post_tags` VALUES (82, 18, '支付宝', 1, 1496746357);
INSERT INTO `bage_post_tags` VALUES (83, 18, '如何', 1, 1496746357);
INSERT INTO `bage_post_tags` VALUES (84, 11, '今日事今日毕', 1, 1497837756);
INSERT INTO `bage_post_tags` VALUES (85, 11, '评估优先级', 1, 1497837756);
INSERT INTO `bage_post_tags` VALUES (86, 11, '日总结', 1, 1497837756);
INSERT INTO `bage_post_tags` VALUES (87, 11, '周总结', 1, 1497837756);
INSERT INTO `bage_post_tags` VALUES (88, 11, '平级沟通', 1, 1497840095);
INSERT INTO `bage_post_tags` VALUES (89, 18, 'unix命令', 1, 1497923234);
INSERT INTO `bage_post_tags` VALUES (90, 18, '英文全称', 1, 1497923234);
INSERT INTO `bage_post_tags` VALUES (91, 19, '承德', 1, 1497923528);
INSERT INTO `bage_post_tags` VALUES (92, 19, '五一', 1, 1497923528);
INSERT INTO `bage_post_tags` VALUES (93, 19, '自驾', 1, 1497923528);
INSERT INTO `bage_post_tags` VALUES (94, 18, '读写分离原理', 1, 1516628161);
INSERT INTO `bage_post_tags` VALUES (95, 18, 'awk', 1, 1516978912);
INSERT INTO `bage_post_tags` VALUES (96, 18, '三层结构', 1, 1517327796);
INSERT INTO `bage_post_tags` VALUES (97, 20, '商业头脑', 1, 1517479554);
INSERT INTO `bage_post_tags` VALUES (98, 18, 'hash', 1, 1517585241);
INSERT INTO `bage_post_tags` VALUES (99, 18, 'scrapy', 1, 1517850270);
INSERT INTO `bage_post_tags` VALUES (100, 18, '杭州豪宅', 1, 1517850270);
COMMIT;

-- ----------------------------
-- Table structure for bage_question
-- ----------------------------
DROP TABLE IF EXISTS `bage_question`;
CREATE TABLE `bage_question` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '用户',
  `scope` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '所属分类',
  `username` varchar(100) NOT NULL DEFAULT '' COMMENT '用户名',
  `realname` varchar(50) NOT NULL DEFAULT '' COMMENT '真实姓名',
  `email` varchar(60) NOT NULL DEFAULT '' COMMENT '邮箱',
  `telephone` varchar(20) NOT NULL DEFAULT '' COMMENT '电话',
  `question` text NOT NULL COMMENT '内容',
  `contact_other` varchar(100) NOT NULL DEFAULT '' COMMENT '其它联系方式',
  `answer_status` enum('Y','N') NOT NULL DEFAULT 'N' COMMENT '回复状态',
  `answer_content` text COMMENT '回复内容',
  `status_is` enum('Y','N') NOT NULL DEFAULT 'Y' COMMENT '状态',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '发送时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COMMENT='客服';

-- ----------------------------
-- Records of bage_question
-- ----------------------------
BEGIN;
INSERT INTO `bage_question` VALUES (2, 0, 0, '', 's', 's', 's', 'sssssssss', 's', 'N', '', 'Y', 1409905450);
INSERT INTO `bage_question` VALUES (3, 0, 0, '', 's', 'tann@q.com', '13354289506', 'ssssssssssssss', '13354289500', 'N', '', 'Y', 1410225683);
INSERT INTO `bage_question` VALUES (4, 0, 0, '', 's', 'tann@q.com', '13354289506', 'cccccccccccccccccccccccccc', '13354289500', 'N', '', 'Y', 1410225688);
INSERT INTO `bage_question` VALUES (5, 0, 0, '', 's', 'tann@q.com', '13354289506', 'cccccccccccccccccccccccccc', '13354289500', 'N', '', 'Y', 1410225689);
INSERT INTO `bage_question` VALUES (6, 0, 0, '', 's', 'tann@q.com', '13354289506', 'cccccccccccccccccccccccccc', '13354289500', 'N', '', 'Y', 1410225689);
INSERT INTO `bage_question` VALUES (7, 0, 0, '', '张山', 'tann@q.com', '13354289506', 'cccccccccccccccccccccccccc', '13354289500', 'N', '', 'Y', 1410225697);
INSERT INTO `bage_question` VALUES (8, 0, 0, '', '张山', 'tann@q.com', '13354289506', 'cccccccccccccccccccccccccc', '13354289500', 'N', '', 'Y', 1410225698);
INSERT INTO `bage_question` VALUES (9, 0, 0, '', 'u', 'u', 'u', 'u', 'u', 'N', '', 'Y', 1410225742);
INSERT INTO `bage_question` VALUES (10, 0, 0, '', 'tanjian', '3@1.com', '1900000', 'tanjiantanjiantanjiantanjiantanjiantanjiantanjiantanjiantanjiantanjiantanjiantanjiantanjiantanjiantanjiantanjiantanjiantanjian', '', 'N', 'tttttttttttttttttt', 'Y', 1411894750);
INSERT INTO `bage_question` VALUES (11, 0, 0, '', 'jk', 'jk', 'mo', '你呢', 'mo', 'N', '', 'Y', 1414130263);
COMMIT;

-- ----------------------------
-- Table structure for bage_special
-- ----------------------------
DROP TABLE IF EXISTS `bage_special`;
CREATE TABLE `bage_special` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL DEFAULT '' COMMENT '标题',
  `title_alias` varchar(255) NOT NULL DEFAULT '' COMMENT '标题别名',
  `intro` text COMMENT '描述',
  `content` text COMMENT '详细介绍',
  `attach_thumb` varchar(255) NOT NULL DEFAULT '' COMMENT '附件缩略图',
  `attach_file` varchar(255) NOT NULL DEFAULT '' COMMENT '附件名称',
  `seo_title` varchar(255) NOT NULL DEFAULT '' COMMENT 'seo标题',
  `seo_keywords` varchar(255) NOT NULL DEFAULT '' COMMENT 'seo关键字',
  `seo_description` varchar(255) NOT NULL DEFAULT '' COMMENT 'seo描述',
  `template` varchar(50) NOT NULL DEFAULT '' COMMENT '模板',
  `status_is` enum('Y','N') NOT NULL DEFAULT 'Y' COMMENT '状态',
  `sort_order` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  `view_count` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '点击次数',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '入库时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='专题';

-- ----------------------------
-- Table structure for bage_upload
-- ----------------------------
DROP TABLE IF EXISTS `bage_upload`;
CREATE TABLE `bage_upload` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '用户名',
  `scope` enum('content','image') NOT NULL DEFAULT 'content' COMMENT '范围',
  `folder` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '文件夹',
  `real_name` varchar(255) NOT NULL DEFAULT '' COMMENT '原始文件名称',
  `file_name` char(100) NOT NULL DEFAULT '' COMMENT '带路径文件名',
  `thumb_name` varbinary(255) NOT NULL DEFAULT '' COMMENT '缩略图',
  `save_path` varchar(100) NOT NULL DEFAULT '' COMMENT '保存路径',
  `save_name` varchar(100) NOT NULL DEFAULT '' COMMENT '保存文件名不带路径',
  `hash` char(32) NOT NULL DEFAULT '' COMMENT 'hash',
  `file_ext` char(5) NOT NULL DEFAULT 'jpg' COMMENT '扩展名称',
  `file_mime` varchar(50) NOT NULL DEFAULT '' COMMENT '文件头信息',
  `file_size` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '文件大小',
  `down_count` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '下载次数',
  `access` varchar(255) NOT NULL DEFAULT '' COMMENT '权限控制',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '上传时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=71 DEFAULT CHARSET=utf8 COMMENT='附件';

-- ----------------------------
-- Records of bage_upload
-- ----------------------------
BEGIN;
INSERT INTO `bage_upload` VALUES (20, 0, 'content', 0, '6a2112338744ebf88305c2f0d8f9d72a.jpg', 'uploads/201503/001fc7d9959bde5ff6ef551ee41f1893.jpg', '', 'uploads/201503/', '001fc7d9959bde5ff6ef551ee41f1893.jpg', '9f9e425653502fdebf728dbc52c0b553', 'jpg', 'image/jpeg', 22888, 0, '', 1427388080);
INSERT INTO `bage_upload` VALUES (19, 0, 'content', 0, '6a2112338744ebf88305c2f0d8f9d72a.jpg', 'uploads/201503/5e4172235fc28edb185c0a78cc6f5200.jpg', '', 'uploads/201503/', '5e4172235fc28edb185c0a78cc6f5200.jpg', '9f9e425653502fdebf728dbc52c0b553', 'jpg', 'image/jpeg', 22888, 0, '', 1427387993);
INSERT INTO `bage_upload` VALUES (18, 0, 'content', 0, '2837267765261293991.jpg', 'uploads/201502/4fbd572a3655e0c067374a8a3716fffb.jpg', '', 'uploads/201502/', '4fbd572a3655e0c067374a8a3716fffb.jpg', '9e8464ba50f9633a369f484d6c97885b', 'jpg', 'application/octet-stream', 111005, 0, '', 1423669265);
INSERT INTO `bage_upload` VALUES (17, 0, 'content', 0, '6630920431140494457.jpg', 'uploads/201502/8b1214cca241f304af280920ac80f0e9.jpg', '', 'uploads/201502/', '8b1214cca241f304af280920ac80f0e9.jpg', 'b51bc2a4783af8e5c3b084f207c1513c', 'jpg', 'application/octet-stream', 90324, 0, '', 1423669261);
INSERT INTO `bage_upload` VALUES (16, 0, 'content', 0, '6630566388396353018.jpg', 'uploads/201502/059ae41377055ecdba18f93a4a12b60f.jpg', '', 'uploads/201502/', '059ae41377055ecdba18f93a4a12b60f.jpg', '3fb09f2e301273c7f4bf981868ce5423', 'jpg', 'image/jpeg', 86344, 0, '', 1423669219);
INSERT INTO `bage_upload` VALUES (15, 0, 'content', 0, '捕获.JPG', 'uploads/201502/f63973fbcfa80c42725a233b4a7301a3.JPG', '', 'uploads/201502/', 'f63973fbcfa80c42725a233b4a7301a3.JPG', '0341441656223a90773664107cf1db5b', 'JPG', 'image/jpeg', 24357, 0, '', 1423575064);
INSERT INTO `bage_upload` VALUES (21, 0, 'content', 0, '6630746708304660036.jpg', 'uploads/201506/ab66e3f6aeaf17763253d25d032196b0.jpg', '', 'uploads/201506/', 'ab66e3f6aeaf17763253d25d032196b0.jpg', 'f1871df04c1fcda45b84d3fb14815fcf', 'jpg', 'application/octet-stream', 104579, 0, '', 1433686432);
INSERT INTO `bage_upload` VALUES (22, 0, 'content', 0, '6630640055676767171.jpg', 'uploads/201506/b2e725af801e82cc556c1cc3ba9f7e8e.jpg', '', 'uploads/201506/', 'b2e725af801e82cc556c1cc3ba9f7e8e.jpg', '23b7af52d5cc0072a798826de88ee76a', 'jpg', 'application/octet-stream', 102529, 0, '', 1433686436);
INSERT INTO `bage_upload` VALUES (23, 0, 'content', 0, 'PC程序员计算器使用注释.JPG', 'uploads/201506/c023d210e9249e32545a0eb9705b3810.JPG', '', 'uploads/201506/', 'c023d210e9249e32545a0eb9705b3810.JPG', 'fbdb642b3212f459f65367656a3a551f', 'JPG', 'image/jpeg', 95182, 0, '', 1434534397);
INSERT INTO `bage_upload` VALUES (24, 0, 'content', 0, '4843339924361133234.jpg', 'uploads/201604/d9a5695819e76a0e580778f01e32e7b6.jpg', '', 'uploads/201604/', 'd9a5695819e76a0e580778f01e32e7b6.jpg', '8c18867c9668574f37afa00d579dd437', 'jpg', 'image/jpeg', 158201, 0, '', 1459819529);
INSERT INTO `bage_upload` VALUES (25, 0, 'content', 0, '4885279695890851143.jpg', 'uploads/201604/9cfa1fb5e556ff115a25c4494b72f5fa.jpg', '', 'uploads/201604/', '9cfa1fb5e556ff115a25c4494b72f5fa.jpg', '73a3d65cbf0f81a26e29b3eed9462786', 'jpg', 'image/jpeg', 59305, 0, '', 1459819576);
INSERT INTO `bage_upload` VALUES (26, 0, 'content', 0, '4885279695890851143.jpg', 'uploads/201604/3e7c5086cb4f2ab5264d735c4a9a090e.jpg', '', 'uploads/201604/', '3e7c5086cb4f2ab5264d735c4a9a090e.jpg', '73a3d65cbf0f81a26e29b3eed9462786', 'jpg', 'image/jpeg', 59305, 0, '', 1459819597);
INSERT INTO `bage_upload` VALUES (27, 0, 'content', 0, '6598142890066159733.jpg', 'uploads/201604/15342940025ad201363a7c73b4e3abb6.jpg', '', 'uploads/201604/', '15342940025ad201363a7c73b4e3abb6.jpg', '16b5fa27c0bd74e213d42f57071b7821', 'jpg', 'image/jpeg', 181892, 0, '', 1459819633);
INSERT INTO `bage_upload` VALUES (28, 0, 'content', 0, '6598142890066159733.jpg', 'uploads/201604/95a158c08e58ab7007a430f6d5185bb9.jpg', '', 'uploads/201604/', '95a158c08e58ab7007a430f6d5185bb9.jpg', '16b5fa27c0bd74e213d42f57071b7821', 'jpg', 'image/jpeg', 181892, 0, '', 1459819652);
INSERT INTO `bage_upload` VALUES (29, 0, 'content', 0, '33333333333333.jpg', 'uploads/201604/e5728e95fdb11b171d3ec028ab1add0f.jpg', '', 'uploads/201604/', 'e5728e95fdb11b171d3ec028ab1add0f.jpg', 'c9b200ba4cc4480fff78e76ca4ce35ee', 'jpg', 'image/jpeg', 87882, 0, '', 1459820988);
INSERT INTO `bage_upload` VALUES (30, 0, 'content', 0, '1.jpg', 'uploads/201604/b77c6ec24dbeea3287e0a01b52855655.jpg', '', 'uploads/201604/', 'b77c6ec24dbeea3287e0a01b52855655.jpg', 'f96a43493c8ab4380127b5398bb08de8', 'jpg', 'image/jpeg', 5393, 0, '', 1459821023);
INSERT INTO `bage_upload` VALUES (31, 0, 'content', 0, '1.jpg', 'uploads/201604/6a02ac31ba3fb079b457d02b75c90ccd.jpg', '', 'uploads/201604/', '6a02ac31ba3fb079b457d02b75c90ccd.jpg', '0447add8bc3b2c4f79ff303d3e328c4c', 'jpg', 'image/jpeg', 191873, 0, '', 1459821132);
INSERT INTO `bage_upload` VALUES (32, 0, 'content', 0, '2.jpg', 'uploads/201604/19ba204fa07ad645aa0f70ec1086bb24.jpg', '', 'uploads/201604/', '19ba204fa07ad645aa0f70ec1086bb24.jpg', 'c64d18dc3e422c29258d2801a0a61abc', 'jpg', 'image/jpeg', 181505, 0, '', 1459821156);
INSERT INTO `bage_upload` VALUES (33, 0, 'content', 0, '4.jpg', 'uploads/201604/ff75bd8d62ee73bcd032980ea0cb7d05.jpg', '', 'uploads/201604/', 'ff75bd8d62ee73bcd032980ea0cb7d05.jpg', '456846decd07e25ac1977cd3ece9c1f4', 'jpg', 'image/jpeg', 174946, 0, '', 1459821177);
INSERT INTO `bage_upload` VALUES (34, 0, 'content', 0, '3.jpg', 'uploads/201604/4d3e10ad96113fdc4feefff46ad99f4f.jpg', '', 'uploads/201604/', '4d3e10ad96113fdc4feefff46ad99f4f.jpg', '7d17418b9cb0a8c7a06f58761bb1e679', 'jpg', 'image/jpeg', 187248, 0, '', 1459821197);
INSERT INTO `bage_upload` VALUES (35, 0, 'content', 0, 'php缓存4_6.png', 'uploads/201604/710eab7bde9061e47986e3a990d91d64.png', '', 'uploads/201604/', '710eab7bde9061e47986e3a990d91d64.png', '2c498ec75ada16956468ce77eaaff8f2', 'png', 'image/png', 115196, 0, '', 1459931534);
INSERT INTO `bage_upload` VALUES (36, 0, 'content', 0, 'php缓存4_6 - 副本.png', 'uploads/201604/ef92e04092242c1bd69c6c7df1e6fc6a.png', '', 'uploads/201604/', 'ef92e04092242c1bd69c6c7df1e6fc6a.png', '761ec4460f7bc80214f2970ef4cf643f', 'png', 'image/png', 77458, 0, '', 1459931723);
INSERT INTO `bage_upload` VALUES (37, 0, 'content', 0, 'php缓存4_6 - 副本.png', 'uploads/201604/d324c3c2650b8e635bac1e486c77c834.png', '', 'uploads/201604/', 'd324c3c2650b8e635bac1e486c77c834.png', '00618ebe601ded48d14210a7bd42f6dd', 'png', 'image/png', 101339, 0, '', 1460007874);
INSERT INTO `bage_upload` VALUES (38, 0, 'content', 0, '图片 1.png', 'uploads/201612/965740a17247732c84971bfea7a895b1.png', '', 'uploads/201612/', '965740a17247732c84971bfea7a895b1.png', '75e4f79f45115cc6cc83fc653555545b', 'png', 'image/png', 153182, 0, '', 1481631307);
INSERT INTO `bage_upload` VALUES (39, 0, 'content', 0, '图片 2.png', 'uploads/201612/6bf0bfc8f0ddd570a9d1ccf54b19ee92.png', '', 'uploads/201612/', '6bf0bfc8f0ddd570a9d1ccf54b19ee92.png', '323822f27545b5b6209a2d923c0501d8', 'png', 'image/png', 77311, 0, '', 1481631341);
INSERT INTO `bage_upload` VALUES (40, 0, 'content', 0, 'pic3.png', 'uploads/201612/0a84e9ad1fb052ae3f3b7dc5883c68b9.png', '', 'uploads/201612/', '0a84e9ad1fb052ae3f3b7dc5883c68b9.png', 'b93fc9d69cfbb78d1fe7c0878527041d', 'png', 'image/png', 180637, 0, '', 1481631408);
INSERT INTO `bage_upload` VALUES (41, 0, 'content', 0, '图片 4.png', 'uploads/201612/e077b8c2eb04b308cc5bbc44395498f8.png', '', 'uploads/201612/', 'e077b8c2eb04b308cc5bbc44395498f8.png', '099e5afd7f5431aff20fe05e3c23ade5', 'png', 'image/png', 82092, 0, '', 1481631432);
INSERT INTO `bage_upload` VALUES (42, 0, 'content', 0, 'pic5.png', 'uploads/201612/0f546bb1da6d9d1e8dae19f1917359e8.png', '', 'uploads/201612/', '0f546bb1da6d9d1e8dae19f1917359e8.png', '6b5decf73f5c8621ab6aa3666da1fd89', 'png', 'image/png', 156181, 0, '', 1481631488);
INSERT INTO `bage_upload` VALUES (43, 0, 'content', 0, 'pic6.png', 'uploads/201612/5f85b728baa49440a6059a0a8438b541.png', '', 'uploads/201612/', '5f85b728baa49440a6059a0a8438b541.png', '75a46a8d4be0cf1cde02c9438721c555', 'png', 'image/png', 148630, 0, '', 1481631522);
INSERT INTO `bage_upload` VALUES (44, 0, 'content', 0, 'oprn_auth-2.png', 'uploads/201612/f4c15dd56a833d28ba351884973dd6f3.png', '', 'uploads/201612/', 'f4c15dd56a833d28ba351884973dd6f3.png', 'dad39df6067c6634b846e96603142397', 'png', 'image/png', 68997, 0, '', 1482940062);
INSERT INTO `bage_upload` VALUES (45, 0, 'content', 0, 'oprn_auth-2.png', 'uploads/201612/1f401f7748be9cd75ad3abf8417923c5.png', '', 'uploads/201612/', '1f401f7748be9cd75ad3abf8417923c5.png', 'dad39df6067c6634b846e96603142397', 'png', 'image/png', 68997, 0, '', 1482940120);
INSERT INTO `bage_upload` VALUES (46, 0, 'content', 0, 'timg____.jpeg', 'uploads/201705/d8f7709ed1170c638cfa801c5da9345c.jpeg', '', 'uploads/201705/', 'd8f7709ed1170c638cfa801c5da9345c.jpeg', 'c88ed782417d81088ef71a77d64f3f02', 'jpeg', 'image/jpeg', 42563, 0, '', 1494756439);
INSERT INTO `bage_upload` VALUES (47, 0, 'content', 0, 'timg (1).jpeg', 'uploads/201705/68934e713a4f9ddbddf21d02a4909f74.jpeg', '', 'uploads/201705/', '68934e713a4f9ddbddf21d02a4909f74.jpeg', 'a2f53e74f8c52477707d94cf05e9fc13', 'jpeg', 'image/jpeg', 30872, 0, '', 1494756466);
INSERT INTO `bage_upload` VALUES (51, 0, 'content', 0, 'hz.jpeg', 'uploads/201801/b102a514f734960e4c42bf7f67520130.jpeg', '', 'uploads/201801/', 'b102a514f734960e4c42bf7f67520130.jpeg', 'e9826219efc04a3865caaab996e5fb7b', 'jpeg', 'image/jpeg', 130544, 0, '', 1516774192);
INSERT INTO `bage_upload` VALUES (50, 0, 'content', 0, 'wh.jpeg', 'uploads/201801/a9938978b5291653146a5a56e6e6e6da.jpeg', '', 'uploads/201801/', 'a9938978b5291653146a5a56e6e6e6da.jpeg', '955c768f04046f1b35f05f4a5e3762a0', 'jpeg', 'image/jpeg', 25467, 0, '', 1516774105);
INSERT INTO `bage_upload` VALUES (52, 0, 'content', 0, 'wh.jpeg', 'uploads/201801/795688cd1624a217cd1801e061b1bf5a.jpeg', '', 'uploads/201801/', '795688cd1624a217cd1801e061b1bf5a.jpeg', '955c768f04046f1b35f05f4a5e3762a0', 'jpeg', 'image/jpeg', 25467, 0, '', 1516774212);
INSERT INTO `bage_upload` VALUES (53, 0, 'content', 0, '333333333.png', 'uploads/201801/0abb715720d25b10a955a294fcc7bcc3.png', '', 'uploads/201801/', '0abb715720d25b10a955a294fcc7bcc3.png', '4eb69c4d58a642d1c3af6983b5ebb67f', 'png', 'image/png', 133724, 0, '', 1516978836);
INSERT INTO `bage_upload` VALUES (54, 0, 'content', 0, '44444.png', 'uploads/201801/815deee0fcaf94a79a1473d1dfbbf345.png', '', 'uploads/201801/', '815deee0fcaf94a79a1473d1dfbbf345.png', '9e795016d3ba3cdc901614dca5abf538', 'png', 'image/png', 167419, 0, '', 1516979566);
INSERT INTO `bage_upload` VALUES (55, 0, 'content', 0, '图片 1.png', 'uploads/201801/5ab8c62831389b273420cf8438e9ed78.png', '', 'uploads/201801/', '5ab8c62831389b273420cf8438e9ed78.png', '2508c051c8e9d2a9527e403bd12f2c6e', 'png', 'image/png', 48877, 0, '', 1517327551);
INSERT INTO `bage_upload` VALUES (56, 0, 'content', 0, '图片 1.png', 'uploads/201801/df44b8a51551090bc3487e8b2a11e885.png', '', 'uploads/201801/', 'df44b8a51551090bc3487e8b2a11e885.png', '2508c051c8e9d2a9527e403bd12f2c6e', 'png', 'image/png', 48877, 0, '', 1517327571);
INSERT INTO `bage_upload` VALUES (57, 0, 'content', 0, '2.png', 'uploads/201801/7f584256a820c2d5e14edf434d00ec71.png', '', 'uploads/201801/', '7f584256a820c2d5e14edf434d00ec71.png', 'be52c6649f3d4ef0e5db7d1a582200b1', 'png', 'image/png', 48970, 0, '', 1517327650);
INSERT INTO `bage_upload` VALUES (58, 0, 'content', 0, '3.png', 'uploads/201801/217e8251ecdc5042efb9b013a675a28d.png', '', 'uploads/201801/', '217e8251ecdc5042efb9b013a675a28d.png', '18d970e56a4468db81bc1cf7946d7c6c', 'png', 'image/png', 115089, 0, '', 1517327706);
INSERT INTO `bage_upload` VALUES (59, 0, 'content', 0, '3-1.png', 'uploads/201801/2af63b9022ef2a05dccee383a2baae2c.png', '', 'uploads/201801/', '2af63b9022ef2a05dccee383a2baae2c.png', 'f2d05bc2154022cdbf1e9e31b0185c3f', 'png', 'image/png', 27239, 0, '', 1517328026);
INSERT INTO `bage_upload` VALUES (60, 0, 'content', 0, '3-2.png', 'uploads/201801/f52a5d555afe47d0e06f59f532f8ede4.png', '', 'uploads/201801/', 'f52a5d555afe47d0e06f59f532f8ede4.png', '55000557e53b8b0eaa9dd8aa0981e9b7', 'png', 'image/png', 33724, 0, '', 1517328058);
INSERT INTO `bage_upload` VALUES (61, 0, 'content', 0, 'xss.jpg', 'uploads/201802/7363c6f9b6a8d4b9ebd5eed9a96cfa00.jpg', '', 'uploads/201802/', '7363c6f9b6a8d4b9ebd5eed9a96cfa00.jpg', 'da8ee6d547667f5d54add6efb99fdb2e', 'jpg', 'image/jpeg', 23984, 0, '', 1517486598);
INSERT INTO `bage_upload` VALUES (62, 0, 'content', 0, '跨站请求伪造.png', 'uploads/201802/bf2895fd6903fac614527c967fb2d0e3.png', '', 'uploads/201802/', 'bf2895fd6903fac614527c967fb2d0e3.png', 'b2cf6c16a58c62fee25688b0152472c8', 'png', 'image/png', 78872, 0, '', 1517487241);
INSERT INTO `bage_upload` VALUES (63, 0, 'content', 0, 'redis_hash.jpeg', 'uploads/201802/0149bc298e10c507f0f331c488604962.jpeg', '', 'uploads/201802/', '0149bc298e10c507f0f331c488604962.jpeg', 'd7407edd06d5544d15e66020851afdab', 'jpeg', 'image/jpeg', 14763, 0, '', 1517585051);
INSERT INTO `bage_upload` VALUES (64, 0, 'content', 0, 'hash2222.png', 'uploads/201802/424d09cf8b62ed3c3c176186b03e2e4e.png', '', 'uploads/201802/', '424d09cf8b62ed3c3c176186b03e2e4e.png', '28c2eb50f2353d8deeccb3d84d28aca4', 'png', 'image/png', 55303, 0, '', 1517585129);
INSERT INTO `bage_upload` VALUES (65, 0, 'content', 0, '1-2.png', 'uploads/201802/db5a5fa2564dcd9b8acbc3e07010e6d3.png', '', 'uploads/201802/', 'db5a5fa2564dcd9b8acbc3e07010e6d3.png', 'ceb1df57323df61acfefcae86832d134', 'png', 'image/png', 188071, 0, '', 1517849588);
INSERT INTO `bage_upload` VALUES (66, 0, 'content', 0, '2.png', 'uploads/201802/25a2474095469cef631d77f90b124b93.png', '', 'uploads/201802/', '25a2474095469cef631d77f90b124b93.png', '92760e7d60dd2f96d3557b738bafbff9', 'png', 'image/png', 108353, 0, '', 1517849723);
INSERT INTO `bage_upload` VALUES (67, 0, 'content', 0, '333.png', 'uploads/201802/4286287932e5bec736a6210403d80a42.png', '', 'uploads/201802/', '4286287932e5bec736a6210403d80a42.png', '609136a2b4b179d38a0c2d199b20197b', 'png', 'image/png', 194543, 0, '', 1517849889);
INSERT INTO `bage_upload` VALUES (68, 0, 'content', 0, '555.png', 'uploads/201802/31177b72e429ead6196cd7b19d40a402.png', '', 'uploads/201802/', '31177b72e429ead6196cd7b19d40a402.png', '381d950b3be800c7651124d6b4fca97c', 'png', 'image/png', 27901, 0, '', 1517850088);
INSERT INTO `bage_upload` VALUES (69, 0, 'content', 0, '666.png', 'uploads/201802/796d711bf07bf5cdc2061817290d6ef4.png', '', 'uploads/201802/', '796d711bf07bf5cdc2061817290d6ef4.png', '2bd07e1d11217b77c6f40220b3119023', 'png', 'image/png', 163491, 0, '', 1517850102);
INSERT INTO `bage_upload` VALUES (70, 0, 'content', 0, '222222.png', 'uploads/201802/4763d1c03a403d2316d9c25e5c4b4709.png', '', 'uploads/201802/', '4763d1c03a403d2316d9c25e5c4b4709.png', '1130392c37ad9f950de29c1734539eca', 'png', 'image/png', 114996, 0, '', 1518356657);
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
