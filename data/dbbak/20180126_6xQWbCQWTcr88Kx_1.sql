# bagecms database backup
# version:BageCMS3.1.3
# time:2018-01-26 23:14:33
# type:cms
# www.bagecms.com
# --------------------------------------------------------


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

INSERT INTO `bage_ad` VALUES('1','首页banner','index_banner','http://www.bagecms.com','','','','','0','1379520000','1546272000','uploads/201309/523a2c04a37a1.jpg','8','Y','1379544068');
INSERT INTO `bage_ad` VALUES('2','首页banner','index_banner','','','','','','0','1379520000','1546272000','uploads/201801/301f519303dc3207258484cb4780eec6.jpg','9','Y','1379544139');
INSERT INTO `bage_ad` VALUES('3','首页banner','index_banner','','','','','','0','1379520000','1379606400','uploads/201309/523a2ca7b51ce.jpg','10','Y','1379544231');

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

INSERT INTO `bage_admin` VALUES('1','admin','591c026bec348b9be6b6662148d46363','','1','tann1013@gmail.com','0','每个礼拜五推送精选WEB资讯---PHPclub;nnn 注意更改涉及安全的数据','','','183.157.57.30','1516978512','364','Y','1409819170');
INSERT INTO `bage_admin` VALUES('2','user','e10adc3949ba59abbe56e057f20f883e','','3','user@g.com','0','','','','127.0.0.1','1413184114','1','Y','1413184076');
INSERT INTO `bage_admin` VALUES('3','tann1013','e10adc3949ba59abbe56e057f20f883e','','3','','0','','','','127','1413191175','0','Y','1413191175');
INSERT INTO `bage_admin` VALUES('4','test','e10adc3949ba59abbe56e057f20f883e','','3','','0','','','','127','1413191187','0','Y','1413191187');

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

INSERT INTO `bage_admin3` VALUES('4','test','e10adc3949ba59abbe56e057f20f883e','','3','','0','','','','127','1413191187','0','Y','1413191187');

DROP TABLE IF EXISTS `bage_admin_group`;
CREATE TABLE `bage_admin_group` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `group_name` varchar(50) NOT NULL COMMENT '组名称',
  `acl` text NOT NULL COMMENT '权限',
  `status_is` enum('Y','N') NOT NULL DEFAULT 'Y' COMMENT '状态',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '录入时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='管理员组';

INSERT INTO `bage_admin_group` VALUES('1','超级管理','administrator','','0');
INSERT INTO `bage_admin_group` VALUES('2','禁用','administrator','Y','0');
INSERT INTO `bage_admin_group` VALUES('3','测试组','home_index,config_catalog,catalog_create,catalog_update,catalog_delete,catalog_sort_order,config,config_index,config_seo,config_upload,config_custom,config_sms,config_mail,config_ebank,config_userConfig,post,post_index,post_create,post_update,post_verify,post_commend,post_delete,post_comment,post_comment_update,post_comment_delete,post_special,post_special_create,post_special_update,post_special_delete,page_index,page_create,page_update,page_delete,user,admin_index,admin_create,admin_update,admin_delete,admin_group,admin_group_create,admin_group_update,admin_group_delete,admin_logger,admin_logger_delete,question_index,question_update,question_delete','Y','1413184039');

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
) ENGINE=MyISAM AUTO_INCREMENT=783 DEFAULT CHARSET=utf8 COMMENT='管理员日志';

INSERT INTO `bage_admin_logger` VALUES('153','1','login','/index.php?r=admini/public/login','用户登录成功:admin','106.120.139.2','1414983757');
INSERT INTO `bage_admin_logger` VALUES('152','1','login','/index.php?r=admini/public/login','用户登录成功:admin','111.161.17.71','1414910303');
INSERT INTO `bage_admin_logger` VALUES('151','1','create','/index.php?r=admini/post/create','录入内容,ID:25','221.194.177.21','1414767765');
INSERT INTO `bage_admin_logger` VALUES('150','1','update','/index.php?r=admini/post/commentUpdate&id=6','编辑内容评论，ID:6','221.194.177.21','1414767322');
INSERT INTO `bage_admin_logger` VALUES('149','1','login','/index.php?r=admini/public/login','用户登录成功:admin','221.194.177.21','1414767265');
INSERT INTO `bage_admin_logger` VALUES('148','1','login','/index.php?r=admini/public/login','用户登录成功:admin','106.120.139.2','1414742524');
INSERT INTO `bage_admin_logger` VALUES('147','1','update','/index.php?r=admini/post/update&id=23','编辑内容,ID:23','106.120.139.2','1414741656');
INSERT INTO `bage_admin_logger` VALUES('146','1','login','/index.php?r=admini/public/login','用户登录成功:admin','106.120.139.2','1414741027');
INSERT INTO `bage_admin_logger` VALUES('145','1','login','/index.php?r=admini/public/login','用户登录成功:admin','106.120.139.2','1414741027');
INSERT INTO `bage_admin_logger` VALUES('144','1','update','/index.php?r=admini/post/update&id=23','编辑内容,ID:23','106.120.139.2','1414739308');
INSERT INTO `bage_admin_logger` VALUES('143','1','update','/index.php?r=admini/post/update&id=23','编辑内容,ID:23','106.120.139.2','1414739130');
INSERT INTO `bage_admin_logger` VALUES('142','1','login','/index.php?r=admini/public/login','用户登录成功:admin','106.120.139.2','1414739085');
INSERT INTO `bage_admin_logger` VALUES('141','1','update','/index.php?r=admini/post/update&id=24','编辑内容,ID:24','111.161.17.72','1414595151');
INSERT INTO `bage_admin_logger` VALUES('140','1','create','/index.php?r=admini/post/create','录入内容,ID:24','111.161.17.72','1414595138');
INSERT INTO `bage_admin_logger` VALUES('139','1','create','/index.php?r=admini/post/create','录入内容,ID:23','111.161.17.72','1414594922');
INSERT INTO `bage_admin_logger` VALUES('138','1','create','/index.php?r=admini/catalog/create','录入全局分类,ID:名称：PHP','111.161.17.72','1414593100');
INSERT INTO `bage_admin_logger` VALUES('137','1','update','/index.php?r=admini/catalog/update&id=9','编辑全局分类,ID:9,名称：日志','111.161.17.72','1414593041');
INSERT INTO `bage_admin_logger` VALUES('136','1','login','/index.php?r=admini/public/login','用户登录成功:admin','111.161.17.72','1414592882');
INSERT INTO `bage_admin_logger` VALUES('135','1','delete','/index.php?r=admini/post/batch&command=specialDelete&id=1','删除内容，ID:1','106.120.139.2','1414573481');
INSERT INTO `bage_admin_logger` VALUES('134','1','update','/index.php?r=admini/config/index','更新系统配置，模块：index','106.120.139.2','1414573470');
INSERT INTO `bage_admin_logger` VALUES('133','1','login','/index.php?r=admini/public/login','用户登录成功:admin','106.120.139.2','1414573418');
INSERT INTO `bage_admin_logger` VALUES('132','0','login','/index.php?r=admini/public/login','登录失败，密码不正确:admin，使用密码：TANJIAN421970+','106.120.139.2','1414573414');
INSERT INTO `bage_admin_logger` VALUES('131','0','login','/index.php?r=admini/public/login','登录失败，密码不正确:admin，使用密码：TANJIAN421970+','106.120.139.2','1414573398');
INSERT INTO `bage_admin_logger` VALUES('130','0','login','/index.php?r=admini/public/login','登录失败，密码不正确:admin，使用密码：TANJIAN421970+','106.120.139.2','1414573384');
INSERT INTO `bage_admin_logger` VALUES('129','0','login','/index.php?r=admini/public/login','登录失败，密码不正确:admin，使用密码：TANJIAN421970+','106.120.139.2','1414573384');
INSERT INTO `bage_admin_logger` VALUES('114','0','login','/index.php?r=admini/public/login','登录失败，密码不正确:admin，使用密码：tanjian421970','60.194.113.3','1414314676');
INSERT INTO `bage_admin_logger` VALUES('115','1','login','/index.php?r=admini/public/login','用户登录成功:admin','60.194.113.3','1414314687');
INSERT INTO `bage_admin_logger` VALUES('116','1','create','/index.php?r=admini/post/create','录入内容,ID:21','60.194.113.3','1414315067');
INSERT INTO `bage_admin_logger` VALUES('117','1','update','/index.php?r=admini/post/specialUpdate&id=2','专题更新,ID:2','60.194.113.3','1414315627');
INSERT INTO `bage_admin_logger` VALUES('118','1','update','/index.php?r=admini/post/specialUpdate&id=2','专题更新,ID:2','60.194.113.3','1414315647');
INSERT INTO `bage_admin_logger` VALUES('119','1','update','/index.php?r=admini/post/specialUpdate&id=2','专题更新,ID:2','60.194.113.3','1414315772');
INSERT INTO `bage_admin_logger` VALUES('120','1','update','/index.php?r=admini/post/update&id=21','编辑内容,ID:21','60.194.113.3','1414315815');
INSERT INTO `bage_admin_logger` VALUES('121','1','login','/index.php?r=admini/public/login','用户登录成功:admin','60.194.113.3','1414334719');
INSERT INTO `bage_admin_logger` VALUES('122','1','login','/index.php?r=admini/public/login','用户登录成功:admin','124.202.190.93','1414424719');
INSERT INTO `bage_admin_logger` VALUES('123','1','create','/index.php?r=admini/post/create','录入内容,ID:22','124.202.190.93','1414424809');
INSERT INTO `bage_admin_logger` VALUES('124','1','update','/index.php?r=admini/post/update&id=22','编辑内容,ID:22','124.202.190.93','1414424966');
INSERT INTO `bage_admin_logger` VALUES('125','1','login','/index.php?r=admini/public/login','用户登录成功:admin','106.120.139.2','1414463943');
INSERT INTO `bage_admin_logger` VALUES('126','1','update','/index.php?r=admini/config/index','更新系统配置，模块：index','106.120.139.2','1414464103');
INSERT INTO `bage_admin_logger` VALUES('127','1','update','/index.php?r=admini/config/seo','更新系统配置，模块：seo','106.120.139.2','1414464126');
INSERT INTO `bage_admin_logger` VALUES('128','0','login','/index.php?r=admini/public/login','登录失败，密码不正确:admin，使用密码：TANJIAN421970+','106.120.139.2','1414573376');
INSERT INTO `bage_admin_logger` VALUES('178','1','update','/index.php?r=admini/post/update&id=27','编辑内容,ID:27','106.120.139.2','1416468116');
INSERT INTO `bage_admin_logger` VALUES('177','1','login','/index.php?r=admini/public/login','用户登录成功:admin','106.120.139.2','1416468052');
INSERT INTO `bage_admin_logger` VALUES('176','1','login','/index.php?r=admini/public/login','用户登录成功:admin','106.120.139.2','1416468052');
INSERT INTO `bage_admin_logger` VALUES('175','1','update','/index.php?r=admini/post/update&id=27','编辑内容,ID:27','106.120.139.2','1416452007');
INSERT INTO `bage_admin_logger` VALUES('174','1','update','/index.php?r=admini/post/update&id=27','编辑内容,ID:27','106.120.139.2','1416451712');
INSERT INTO `bage_admin_logger` VALUES('173','1','update','/index.php?r=admini/post/update&id=27','编辑内容,ID:27','106.120.139.2','1416451535');
INSERT INTO `bage_admin_logger` VALUES('172','1','create','/index.php?r=admini/post/create','录入内容,ID:27','106.120.139.2','1416451395');
INSERT INTO `bage_admin_logger` VALUES('171','1','login','/index.php?r=admini/public/login','用户登录成功:admin','106.120.139.2','1416451187');
INSERT INTO `bage_admin_logger` VALUES('170','1','update','/index.php?r=admini/post/update&id=25','编辑内容,ID:25','114.111.167.199','1415802197');
INSERT INTO `bage_admin_logger` VALUES('169','1','login','/index.php?r=admini/public/login','用户登录成功:admin','114.111.167.199','1415800722');
INSERT INTO `bage_admin_logger` VALUES('168','1','update','/index.php?r=admini/post/batch','批量取消内容审核，ID:25','106.39.255.202','1415627551');
INSERT INTO `bage_admin_logger` VALUES('167','1','update','/index.php?r=admini/post/update&id=25','编辑内容,ID:25','106.39.255.202','1415627497');
INSERT INTO `bage_admin_logger` VALUES('166','1','update','/index.php?r=admini/post/update&id=25','编辑内容,ID:25','106.39.255.202','1415625616');
INSERT INTO `bage_admin_logger` VALUES('165','1','login','/index.php?r=admini/public/login','用户登录成功:admin','106.39.255.202','1415625581');
INSERT INTO `bage_admin_logger` VALUES('164','1','delete','/index.php?r=admini/catalog/batch&command=delete&id=12','删除全局分类，ID:12','114.111.167.195','1415453418');
INSERT INTO `bage_admin_logger` VALUES('163','1','create','/index.php?r=admini/catalog/create','录入全局分类,ID:名称：周记','114.111.167.195','1415453377');
INSERT INTO `bage_admin_logger` VALUES('162','1','login','/index.php?r=admini/public/login','用户登录成功:admin','114.111.167.195','1415453199');
INSERT INTO `bage_admin_logger` VALUES('161','1','login','/index.php?r=admini/public/login','用户登录成功:admin','106.120.139.2','1415263925');
INSERT INTO `bage_admin_logger` VALUES('160','1','login','/index.php?r=admini/public/login','用户登录成功:admin','106.120.139.2','1415263925');
INSERT INTO `bage_admin_logger` VALUES('159','0','login','/index.php?r=admini/public/login','登录失败，密码不正确:admin，使用密码：tanjian421302+','106.120.139.2','1415263908');
INSERT INTO `bage_admin_logger` VALUES('154','1','login','/index.php?r=admini/public/login','用户登录成功:admin','106.120.139.2','1414983758');
INSERT INTO `bage_admin_logger` VALUES('155','1','create','/index.php?r=admini/post/create','录入内容,ID:26','106.120.139.2','1414985672');
INSERT INTO `bage_admin_logger` VALUES('156','1','update','/index.php?r=admini/post/update&id=26','编辑内容,ID:26','106.120.139.2','1414987030');
INSERT INTO `bage_admin_logger` VALUES('157','0','login','/index.php?r=admini/public/login','登录失败，密码不正确:admin，使用密码：tanjian421302','106.120.139.2','1415263882');
INSERT INTO `bage_admin_logger` VALUES('158','0','login','/index.php?r=admini/public/login','登录失败，密码不正确:admin，使用密码：tanjian421302+','106.120.139.2','1415263908');
INSERT INTO `bage_admin_logger` VALUES('208','1','login','/index.php?r=admini/public/login','用户登录成功:admin','106.120.139.2','1420680629');
INSERT INTO `bage_admin_logger` VALUES('207','1','login','/index.php?r=admini/public/login','用户登录成功:admin','106.120.139.2','1420680616');
INSERT INTO `bage_admin_logger` VALUES('206','1','login','/index.php?r=admini/public/login','用户登录成功:admin','106.120.139.2','1420680616');
INSERT INTO `bage_admin_logger` VALUES('205','0','login','/index.php?r=admini/public/login','登录失败，密码不正确:admin，使用密码：tanjian421970','106.120.139.2','1420680608');
INSERT INTO `bage_admin_logger` VALUES('204','1','update','/index.php?r=admini/config/index','更新系统配置，模块：index','124.207.139.145','1418917812');
INSERT INTO `bage_admin_logger` VALUES('203','1','update','/index.php?r=admini/config/seo','更新系统配置，模块：seo','124.207.139.145','1418917788');
INSERT INTO `bage_admin_logger` VALUES('202','1','update','/index.php?r=admini/config/index','更新系统配置，模块：index','124.207.139.145','1418917612');
INSERT INTO `bage_admin_logger` VALUES('201','1','update','/index.php?r=admini/config/seo','更新系统配置，模块：seo','124.207.139.145','1418917586');
INSERT INTO `bage_admin_logger` VALUES('200','1','create','/index.php?r=admini/catalog/create','录入全局分类,ID:名称：CodeLib','124.207.139.145','1418917236');
INSERT INTO `bage_admin_logger` VALUES('199','1','update','/index.php?r=admini/config/seo','更新系统配置，模块：seo','124.207.139.145','1418917123');
INSERT INTO `bage_admin_logger` VALUES('198','1','login','/index.php?r=admini/public/login','用户登录成功:admin','124.207.139.145','1418916747');
INSERT INTO `bage_admin_logger` VALUES('197','1','update','/index.php?r=admini/post/update&id=29','编辑内容,ID:29','106.120.139.2','1418639425');
INSERT INTO `bage_admin_logger` VALUES('196','1','update','/index.php?r=admini/post/update&id=29','编辑内容,ID:29','106.120.139.2','1418639128');
INSERT INTO `bage_admin_logger` VALUES('195','1','update','/index.php?r=admini/post/update&id=29','编辑内容,ID:29','106.120.139.2','1418638954');
INSERT INTO `bage_admin_logger` VALUES('194','1','update','/index.php?r=admini/post/update&id=29','编辑内容,ID:29','106.120.139.2','1418638922');
INSERT INTO `bage_admin_logger` VALUES('193','1','login','/index.php?r=admini/public/login','用户登录成功:admin','106.120.139.2','1418638812');
INSERT INTO `bage_admin_logger` VALUES('192','1','update','/index.php?r=admini/post/update&id=29','编辑内容,ID:29','106.120.139.2','1418638415');
INSERT INTO `bage_admin_logger` VALUES('191','1','update','/index.php?r=admini/post/update&id=29','编辑内容,ID:29','106.120.139.2','1418638373');
INSERT INTO `bage_admin_logger` VALUES('190','1','login','/index.php?r=admini/public/login','用户登录成功:admin','106.120.139.2','1418638007');
INSERT INTO `bage_admin_logger` VALUES('189','1','update','/index.php?r=admini/post/update&id=29','编辑内容,ID:29','106.120.139.2','1418637236');
INSERT INTO `bage_admin_logger` VALUES('188','1','update','/index.php?r=admini/post/update&id=29','编辑内容,ID:29','106.120.139.2','1418637180');
INSERT INTO `bage_admin_logger` VALUES('187','1','update','/index.php?r=admini/post/update&id=29','编辑内容,ID:29','106.120.139.2','1418637117');
INSERT INTO `bage_admin_logger` VALUES('186','1','create','/index.php?r=admini/post/create','录入内容,ID:29','106.120.139.2','1418636908');
INSERT INTO `bage_admin_logger` VALUES('185','1','login','/index.php?r=admini/public/login','用户登录成功:admin','106.120.139.2','1418633845');
INSERT INTO `bage_admin_logger` VALUES('184','1','login','/index.php?r=admini/public/login','用户登录成功:admin','60.194.194.8','1418133839');
INSERT INTO `bage_admin_logger` VALUES('183','1','login','/index.php?r=admini/public/login','用户登录成功:admin','114.111.167.197','1416644374');
INSERT INTO `bage_admin_logger` VALUES('182','1','update','/index.php?r=admini/post/update&id=28','编辑内容,ID:28','106.120.139.2','1416558157');
INSERT INTO `bage_admin_logger` VALUES('181','1','create','/index.php?r=admini/post/create','录入内容,ID:28','106.120.139.2','1416558076');
INSERT INTO `bage_admin_logger` VALUES('180','1','login','/index.php?r=admini/public/login','用户登录成功:admin','106.120.139.2','1416557938');
INSERT INTO `bage_admin_logger` VALUES('179','1','login','/index.php?r=admini/public/login','用户登录成功:admin','106.120.139.2','1416557937');
INSERT INTO `bage_admin_logger` VALUES('113','1','login','/index.php?r=admini/public/login','用户登录成功:admin','123.123.222.229','1414220651');
INSERT INTO `bage_admin_logger` VALUES('112','1','delete','/index.php?r=admini/logger/batch','删除管理员操作日志','106.120.139.2','1414139686');
INSERT INTO `bage_admin_logger` VALUES('209','0','login','/index.php?r=admini/public/login','登录失败，密码不正确:admin，使用密码：admin','106.120.139.2','1420706812');
INSERT INTO `bage_admin_logger` VALUES('210','1','login','/index.php?r=admini/public/login','用户登录成功:admin','106.120.139.2','1420706848');
INSERT INTO `bage_admin_logger` VALUES('211','1','login','/index.php?r=admini/public/login','用户登录成功:admin','60.194.194.4','1420724618');
INSERT INTO `bage_admin_logger` VALUES('212','1','create','/index.php?r=admini/post/create','录入内容,ID:30','60.194.194.4','1420724843');
INSERT INTO `bage_admin_logger` VALUES('213','1','login','/index.php?r=admini/public/login','用户登录成功:admin','60.194.194.4','1420735899');
INSERT INTO `bage_admin_logger` VALUES('214','1','create','/index.php?r=admini/post/create','录入内容,ID:31','60.194.194.4','1420736532');
INSERT INTO `bage_admin_logger` VALUES('215','1','update','/index.php?r=admini/post/update&id=31','编辑内容,ID:31','60.194.194.4','1420736717');
INSERT INTO `bage_admin_logger` VALUES('216','1','login','/index.php?r=admini/public/login','用户登录成功:admin','106.39.255.195','1420814992');
INSERT INTO `bage_admin_logger` VALUES('217','1','create','/index.php?r=admini/post/create','录入内容,ID:32','106.39.255.195','1420816474');
INSERT INTO `bage_admin_logger` VALUES('218','1','login','/index.php?r=admini/public/login','用户登录成功:admin','114.111.167.178','1420902096');
INSERT INTO `bage_admin_logger` VALUES('219','1','update','/index.php?r=admini/post/specialCreate','专题录入：post,ID:','114.111.167.178','1420902403');
INSERT INTO `bage_admin_logger` VALUES('220','1','create','/index.php?r=admini/post/create','录入内容,ID:33','114.111.167.178','1420906448');
INSERT INTO `bage_admin_logger` VALUES('221','1','update','/index.php?r=admini/post/update&id=33','编辑内容,ID:33','114.111.167.178','1420906530');
INSERT INTO `bage_admin_logger` VALUES('222','1','login','/index.php?r=admini/public/login','用户登录成功:admin','106.120.139.2','1421056877');
INSERT INTO `bage_admin_logger` VALUES('223','1','login','/index.php?r=admini/public/login','用户登录成功:admin','114.111.167.186','1421161044');
INSERT INTO `bage_admin_logger` VALUES('224','1','update','/index.php?r=admini/post/update&id=33','编辑内容,ID:33','114.111.167.186','1421161105');
INSERT INTO `bage_admin_logger` VALUES('225','1','login','/index.php?r=admini/public/login','用户登录成功:admin','106.39.255.204','1421244398');
INSERT INTO `bage_admin_logger` VALUES('226','1','login','/index.php?r=admini/public/login','用户登录成功:admin','106.39.255.204','1421246055');
INSERT INTO `bage_admin_logger` VALUES('227','1','login','/index.php?r=admini/public/login','用户登录成功:admin','60.194.194.2','1421497481');
INSERT INTO `bage_admin_logger` VALUES('228','1','login','/index.php?r=admini/public/login','用户登录成功:admin','60.194.194.3','1423574441');
INSERT INTO `bage_admin_logger` VALUES('229','1','update','/index.php?r=admini/config/upload','更新系统配置，模块：upload','60.194.194.3','1423574630');
INSERT INTO `bage_admin_logger` VALUES('230','1','delete','/index.php?r=admini/other/batch&command=attachDelete&id=9','删除附件，ID:9','60.194.194.3','1423574703');
INSERT INTO `bage_admin_logger` VALUES('231','1','delete','/index.php?r=admini/other/batch','删除附件，ID:14,13,12,11,10,8,7,5,4,3,2,1','60.194.194.3','1423574739');
INSERT INTO `bage_admin_logger` VALUES('232','1','delete','/index.php?r=admini/attr/batch&command=delete&id=1','属性删除，ID:1','60.194.194.3','1423574749');
INSERT INTO `bage_admin_logger` VALUES('233','1','delete','/index.php?r=admini/attr/batch&command=delete&id=6','属性删除，ID:6','60.194.194.3','1423574752');
INSERT INTO `bage_admin_logger` VALUES('234','1','login','/index.php?r=admini/public/login','用户登录成功:admin','60.194.194.3','1423574999');
INSERT INTO `bage_admin_logger` VALUES('235','1','login','/index.php?r=admini/public/login','用户登录成功:admin','60.194.194.3','1423574999');
INSERT INTO `bage_admin_logger` VALUES('236','1','update','/index.php?r=admini/post/update&id=33','编辑内容,ID:33','60.194.194.3','1423575031');
INSERT INTO `bage_admin_logger` VALUES('237','1','update','/index.php?r=admini/post/update&id=32','编辑内容,ID:32','60.194.194.3','1423575070');
INSERT INTO `bage_admin_logger` VALUES('238','1','login','/index.php?r=admini/public/login','用户登录成功:admin','106.120.139.2','1423648289');
INSERT INTO `bage_admin_logger` VALUES('239','1','login','/index.php?r=admini/public/login','用户登录成功:admin','106.39.255.206','1423668621');
INSERT INTO `bage_admin_logger` VALUES('240','1','login','/index.php?r=admini/public/login','用户登录成功:admin','106.39.255.206','1423668621');
INSERT INTO `bage_admin_logger` VALUES('241','1','create','/index.php?r=admini/post/create','录入内容,ID:34','106.39.255.206','1423669298');
INSERT INTO `bage_admin_logger` VALUES('242','1','login','/index.php?r=admini/public/login','用户登录成功:admin','106.120.139.2','1425022479');
INSERT INTO `bage_admin_logger` VALUES('243','1','login','/index.php?r=admini/public/login','用户登录成功:admin','106.120.139.2','1425022480');
INSERT INTO `bage_admin_logger` VALUES('244','1','create','/index.php?r=admini/post/create','录入内容,ID:35','106.120.139.2','1425022977');
INSERT INTO `bage_admin_logger` VALUES('245','1','login','/index.php?r=admini/public/login','用户登录成功:admin','114.111.167.184','1425301049');
INSERT INTO `bage_admin_logger` VALUES('246','1','login','/index.php?r=admini/public/login','用户登录成功:admin','114.111.167.184','1425301049');
INSERT INTO `bage_admin_logger` VALUES('247','1','login','/index.php?r=admini/public/login','用户登录成功:admin','60.194.194.7','1426002282');
INSERT INTO `bage_admin_logger` VALUES('248','1','login','/index.php?r=admini/public/login','用户登录成功:admin','60.194.194.7','1426002282');
INSERT INTO `bage_admin_logger` VALUES('249','1','create','/index.php?r=admini/post/create','录入内容,ID:36','60.194.194.7','1426002360');
INSERT INTO `bage_admin_logger` VALUES('250','1','login','/index.php?r=admini/public/login','用户登录成功:admin','106.120.139.2','1426733542');
INSERT INTO `bage_admin_logger` VALUES('251','1','create','/index.php?r=admini/post/create','录入内容,ID:37','106.120.139.2','1426733675');
INSERT INTO `bage_admin_logger` VALUES('252','1','create','/index.php?r=admini/post/create','录入内容,ID:38','106.120.139.2','1426733675');
INSERT INTO `bage_admin_logger` VALUES('253','1','create','/index.php?r=admini/post/create','录入内容,ID:39','106.120.139.2','1426733675');
INSERT INTO `bage_admin_logger` VALUES('254','1','create','/index.php?r=admini/post/create','录入内容,ID:40','106.120.139.2','1426733675');
INSERT INTO `bage_admin_logger` VALUES('255','1','delete','/index.php?r=admini/post/batch&command=delete&id=40','删除内容，ID:40','106.120.139.2','1426733683');
INSERT INTO `bage_admin_logger` VALUES('256','1','delete','/index.php?r=admini/post/batch&command=delete&id=39','删除内容，ID:39','106.120.139.2','1426733691');
INSERT INTO `bage_admin_logger` VALUES('257','1','delete','/index.php?r=admini/post/batch&command=delete&id=38','删除内容，ID:38','106.120.139.2','1426733731');
INSERT INTO `bage_admin_logger` VALUES('258','1','login','/index.php?r=admini/public/login','用户登录成功:admin','114.111.167.182','1427293458');
INSERT INTO `bage_admin_logger` VALUES('259','1','login','/index.php?r=admini/public/login','用户登录成功:admin','114.111.167.182','1427293458');
INSERT INTO `bage_admin_logger` VALUES('260','1','create','/index.php?r=admini/post/create','录入内容,ID:41','114.111.167.182','1427293826');
INSERT INTO `bage_admin_logger` VALUES('261','1','delete','/index.php?r=admini/post/batch&command=delete&id=37','删除内容，ID:37','114.111.167.182','1427293899');
INSERT INTO `bage_admin_logger` VALUES('262','1','delete','/index.php?r=admini/catalog/batch&command=delete&id=13','删除全局分类，ID:13','114.111.167.182','1427294087');
INSERT INTO `bage_admin_logger` VALUES('263','1','login','/index.php?r=admini/public/login','用户登录成功:admin','106.39.255.200','1427374500');
INSERT INTO `bage_admin_logger` VALUES('264','1','login','/index.php?r=admini/public/login','用户登录成功:admin','106.39.255.200','1427374500');
INSERT INTO `bage_admin_logger` VALUES('265','1','delete','/index.php?r=admini/post/batch&command=specialDelete&id=4','删除内容，ID:4','106.39.255.200','1427374628');
INSERT INTO `bage_admin_logger` VALUES('266','1','create','/index.php?r=admini/post/create','录入内容,ID:42','106.39.255.200','1427374744');
INSERT INTO `bage_admin_logger` VALUES('267','1','update','/index.php?r=admini/post/update&id=42','编辑内容,ID:42','106.39.255.200','1427375917');
INSERT INTO `bage_admin_logger` VALUES('268','1','login','/index.php?r=admini/public/login','用户登录成功:admin','106.39.255.200','1427387761');
INSERT INTO `bage_admin_logger` VALUES('269','1','login','/index.php?r=admini/public/login','用户登录成功:admin','106.39.255.200','1427387762');
INSERT INTO `bage_admin_logger` VALUES('270','1','update','/index.php?r=admini/post/update&id=42','编辑内容,ID:42','106.39.255.200','1427388007');
INSERT INTO `bage_admin_logger` VALUES('271','1','update','/index.php?r=admini/config/upload','更新系统配置，模块：upload','106.39.255.200','1427388057');
INSERT INTO `bage_admin_logger` VALUES('272','1','update','/index.php?r=admini/post/update&id=42','编辑内容,ID:42','106.39.255.200','1427388085');
INSERT INTO `bage_admin_logger` VALUES('273','0','login','/index.php?r=admini/public/login','登录失败，密码不正确:admin，使用密码：tanjian421970','60.194.194.3','1427552996');
INSERT INTO `bage_admin_logger` VALUES('274','0','login','/index.php?r=admini/public/login','登录失败，密码不正确:admin，使用密码：tanjian421970','60.194.194.3','1427553009');
INSERT INTO `bage_admin_logger` VALUES('275','1','login','/index.php?r=admini/public/login','用户登录成功:admin','60.194.194.3','1427553027');
INSERT INTO `bage_admin_logger` VALUES('276','1','create','/index.php?r=admini/post/create','录入内容,ID:43','60.194.194.3','1427553206');
INSERT INTO `bage_admin_logger` VALUES('277','1','login','/index.php?r=admini/public/login','用户登录成功:admin','106.120.139.2','1427767980');
INSERT INTO `bage_admin_logger` VALUES('278','1','update','/index.php?r=admini/post/update&id=43','编辑内容,ID:43','106.120.139.2','1427770673');
INSERT INTO `bage_admin_logger` VALUES('279','0','login','/index.php?r=admini/public/login','登录失败，密码不正确:admin，使用密码：tanjian421970','124.205.254.64','1427802160');
INSERT INTO `bage_admin_logger` VALUES('280','0','login','/index.php?r=admini/public/login','登录失败，密码不正确:admin，使用密码：tanjian421970','124.205.254.64','1427802160');
INSERT INTO `bage_admin_logger` VALUES('281','0','login','/index.php?r=admini/public/login','登录失败，密码不正确:admin，使用密码：tanjian421970','124.205.254.64','1427802165');
INSERT INTO `bage_admin_logger` VALUES('282','0','login','/index.php?r=admini/public/login','登录失败，密码不正确:admin，使用密码：tanjian421970','124.205.254.64','1427802175');
INSERT INTO `bage_admin_logger` VALUES('283','1','login','/index.php?r=admini/public/login','用户登录成功:admin','124.205.254.64','1427802182');
INSERT INTO `bage_admin_logger` VALUES('284','1','login','/index.php?r=admini/public/login','用户登录成功:admin','124.205.254.64','1427802182');
INSERT INTO `bage_admin_logger` VALUES('285','1','update','/index.php?r=admini/post/update&id=43','编辑内容,ID:43','124.205.254.64','1427802273');
INSERT INTO `bage_admin_logger` VALUES('286','1','login','/index.php?r=admini/public/login','用户登录成功:admin','106.120.139.2','1427943431');
INSERT INTO `bage_admin_logger` VALUES('287','1','create','/index.php?r=admini/post/create','录入内容,ID:44','106.120.139.2','1427943560');
INSERT INTO `bage_admin_logger` VALUES('288','1','create','/index.php?r=admini/post/create','录入内容,ID:45','106.120.139.2','1427943849');
INSERT INTO `bage_admin_logger` VALUES('289','0','login','/index.php?r=admini/public/login','登录失败，密码不正确:admin，使用密码：tanjian4213970','114.111.167.178','1428082385');
INSERT INTO `bage_admin_logger` VALUES('290','1','login','/index.php?r=admini/public/login','用户登录成功:admin','114.111.167.178','1428082401');
INSERT INTO `bage_admin_logger` VALUES('291','1','create','/index.php?r=admini/post/create','录入内容,ID:46','114.111.167.178','1428082575');
INSERT INTO `bage_admin_logger` VALUES('292','1','update','/index.php?r=admini/post/update&id=46','编辑内容,ID:46','114.111.167.178','1428082665');
INSERT INTO `bage_admin_logger` VALUES('293','1','login','/index.php?r=admini/public/login','用户登录成功:admin','106.39.255.192','1428315169');
INSERT INTO `bage_admin_logger` VALUES('294','1','login','/index.php?r=admini/public/login','用户登录成功:admin','106.39.255.192','1428315170');
INSERT INTO `bage_admin_logger` VALUES('295','1','update','/index.php?r=admini/post/update&id=46','编辑内容,ID:46','106.39.255.192','1428315496');
INSERT INTO `bage_admin_logger` VALUES('296','1','create','/index.php?r=admini/post/create','录入内容,ID:47','106.39.255.192','1428334159');
INSERT INTO `bage_admin_logger` VALUES('297','1','create','/index.php?r=admini/post/create','录入内容,ID:48','106.39.255.192','1428334393');
INSERT INTO `bage_admin_logger` VALUES('298','1','login','/index.php?r=admini/public/login','用户登录成功:admin','60.194.194.8','1428421815');
INSERT INTO `bage_admin_logger` VALUES('299','1','login','/index.php?r=admini/public/login','用户登录成功:admin','60.194.194.8','1428421815');
INSERT INTO `bage_admin_logger` VALUES('300','1','update','/index.php?r=admini/post/update&id=44','编辑内容,ID:44','60.194.194.8','1428422007');
INSERT INTO `bage_admin_logger` VALUES('301','1','update','/index.php?r=admini/post/update&id=44','编辑内容,ID:44','60.194.194.8','1428422101');
INSERT INTO `bage_admin_logger` VALUES('302','1','update','/index.php?r=admini/post/update&id=44','编辑内容,ID:44','60.194.194.8','1428422346');
INSERT INTO `bage_admin_logger` VALUES('303','1','update','/index.php?r=admini/post/update&id=44','编辑内容,ID:44','60.194.194.8','1428422426');
INSERT INTO `bage_admin_logger` VALUES('304','1','update','/index.php?r=admini/post/update&id=44','编辑内容,ID:44','60.194.194.8','1428422552');
INSERT INTO `bage_admin_logger` VALUES('305','1','update','/index.php?r=admini/post/update&id=44','编辑内容,ID:44','60.194.194.8','1428422601');
INSERT INTO `bage_admin_logger` VALUES('306','0','login','/index.php?r=admini/public/login','登录失败，密码不正确:admin，使用密码：tanjian421970','106.39.255.197','1428817360');
INSERT INTO `bage_admin_logger` VALUES('307','1','login','/index.php?r=admini/public/login','用户登录成功:admin','106.39.255.197','1428817374');
INSERT INTO `bage_admin_logger` VALUES('308','1','login','/index.php?r=admini/public/login','用户登录成功:admin','106.39.255.197','1428817374');
INSERT INTO `bage_admin_logger` VALUES('309','1','create','/index.php?r=admini/post/create','录入内容,ID:49','106.39.255.197','1428817517');
INSERT INTO `bage_admin_logger` VALUES('310','1','login','/index.php?r=admini/public/login','用户登录成功:admin','106.39.255.197','1428820289');
INSERT INTO `bage_admin_logger` VALUES('311','1','create','/index.php?r=admini/post/create','录入内容,ID:50','106.39.255.197','1428820405');
INSERT INTO `bage_admin_logger` VALUES('312','1','create','/index.php?r=admini/post/create','录入内容,ID:51','114.111.167.181','1428831296');
INSERT INTO `bage_admin_logger` VALUES('313','1','update','/index.php?r=admini/post/update&id=51','编辑内容,ID:51','114.111.167.181','1428831648');
INSERT INTO `bage_admin_logger` VALUES('314','1','login','/index.php?r=admini/public/login','用户登录成功:admin','114.111.167.178','1429025391');
INSERT INTO `bage_admin_logger` VALUES('315','1','create','/index.php?r=admini/post/create','录入内容,ID:52','114.111.167.178','1429025913');
INSERT INTO `bage_admin_logger` VALUES('316','1','create','/index.php?r=admini/post/create','录入内容,ID:53','114.111.167.178','1429025913');
INSERT INTO `bage_admin_logger` VALUES('317','1','login','/index.php?r=admini/public/login','用户登录成功:admin','106.39.255.207','1429107799');
INSERT INTO `bage_admin_logger` VALUES('318','1','login','/index.php?r=admini/public/login','用户登录成功:admin','106.39.255.207','1429107800');
INSERT INTO `bage_admin_logger` VALUES('319','1','update','/index.php?r=admini/config/index','更新系统配置，模块：index','106.39.255.207','1429107874');
INSERT INTO `bage_admin_logger` VALUES('320','1','update','/index.php?r=admini/config/index','更新系统配置，模块：index','106.39.255.207','1429107906');
INSERT INTO `bage_admin_logger` VALUES('321','1','delete','/index.php?r=admini/post/batch&command=delete&id=53','删除内容，ID:53','106.39.255.207','1429107917');
INSERT INTO `bage_admin_logger` VALUES('322','1','create','/index.php?r=admini/post/create','录入内容,ID:54','106.39.255.207','1429108264');
INSERT INTO `bage_admin_logger` VALUES('323','1','update','/index.php?r=admini/post/update&id=54','编辑内容,ID:54','106.39.255.207','1429108751');
INSERT INTO `bage_admin_logger` VALUES('324','1','login','/index.php?r=admini/public/login','用户登录成功:admin','106.39.255.201','1429331257');
INSERT INTO `bage_admin_logger` VALUES('325','1','update','/index.php?r=admini/post/update&id=23','编辑内容,ID:23','106.39.255.201','1429331329');
INSERT INTO `bage_admin_logger` VALUES('326','1','update','/index.php?r=admini/post/update&id=21','编辑内容,ID:21','106.39.255.201','1429332284');
INSERT INTO `bage_admin_logger` VALUES('327','1','login','/index.php?r=admini/public/login','用户登录成功:admin','114.111.167.183','1429448986');
INSERT INTO `bage_admin_logger` VALUES('328','1','login','/index.php?r=admini/public/login','用户登录成功:admin','114.111.167.183','1429449008');
INSERT INTO `bage_admin_logger` VALUES('329','1','login','/index.php?r=admini/public/login','用户登录成功:admin','114.111.167.183','1429449009');
INSERT INTO `bage_admin_logger` VALUES('330','1','create','/index.php?r=admini/post/create','录入内容,ID:55','114.111.167.183','1429450971');
INSERT INTO `bage_admin_logger` VALUES('331','1','update','/index.php?r=admini/post/update&id=55','编辑内容,ID:55','114.111.167.183','1429451061');
INSERT INTO `bage_admin_logger` VALUES('332','1','update','/index.php?r=admini/post/update&id=55','编辑内容,ID:55','114.111.167.183','1429451253');
INSERT INTO `bage_admin_logger` VALUES('333','1','update','/index.php?r=admini/post/update&id=55','编辑内容,ID:55','114.111.167.183','1429451375');
INSERT INTO `bage_admin_logger` VALUES('334','1','login','/index.php?r=admini/public/login','用户登录成功:admin','106.39.255.202','1429533339');
INSERT INTO `bage_admin_logger` VALUES('335','1','create','/index.php?r=admini/catalog/create','录入全局分类,ID:名称：旅行','106.39.255.202','1429535495');
INSERT INTO `bage_admin_logger` VALUES('336','1','create','/index.php?r=admini/catalog/create','录入全局分类,ID:名称：linux相关','106.39.255.202','1429535558');
INSERT INTO `bage_admin_logger` VALUES('337','1','update','/index.php?r=admini/catalog/update&id=11','编辑全局分类,ID:11,名称：PHP','106.39.255.202','1429535652');
INSERT INTO `bage_admin_logger` VALUES('338','1','update','/index.php?r=admini/catalog/update&id=11','编辑全局分类,ID:11,名称：PHP','106.39.255.202','1429535659');
INSERT INTO `bage_admin_logger` VALUES('339','1','update','/index.php?r=admini/catalog/update&id=15','编辑全局分类,ID:15,名称：linux相关','106.39.255.202','1429535679');
INSERT INTO `bage_admin_logger` VALUES('340','1','update','/index.php?r=admini/catalog/update&id=14','编辑全局分类,ID:14,名称：旅行','106.39.255.202','1429535691');
INSERT INTO `bage_admin_logger` VALUES('341','1','update','/index.php?r=admini/catalog/update&id=15','编辑全局分类,ID:15,名称：linux','106.39.255.202','1429536011');
INSERT INTO `bage_admin_logger` VALUES('342','1','update','/index.php?r=admini/post/update&id=55','编辑内容,ID:55','106.39.255.202','1429536079');
INSERT INTO `bage_admin_logger` VALUES('343','1','create','/index.php?r=admini/catalog/create','录入全局分类,ID:名称：数据库','106.39.255.202','1429536154');
INSERT INTO `bage_admin_logger` VALUES('344','1','update','/index.php?r=admini/post/update&id=52','编辑内容,ID:52','106.39.255.202','1429536196');
INSERT INTO `bage_admin_logger` VALUES('345','1','update','/index.php?r=admini/post/update&id=51','编辑内容,ID:51','106.39.255.202','1429536243');
INSERT INTO `bage_admin_logger` VALUES('346','1','login','/index.php?r=admini/public/login','用户登录成功:admin','106.39.255.202','1429540797');
INSERT INTO `bage_admin_logger` VALUES('347','1','login','/index.php?r=admini/public/login','用户登录成功:admin','106.39.255.202','1429540835');
INSERT INTO `bage_admin_logger` VALUES('348','1','login','/index.php?r=admini/public/login','用户登录成功:admin','106.39.255.202','1429540836');
INSERT INTO `bage_admin_logger` VALUES('349','1','update','/index.php?r=admini/post/update&id=52','编辑内容,ID:52','106.39.255.202','1429541995');
INSERT INTO `bage_admin_logger` VALUES('350','1','create','/index.php?r=admini/post/create','录入内容,ID:56','106.39.255.202','1429542273');
INSERT INTO `bage_admin_logger` VALUES('351','1','login','/index.php?r=admini/public/login','用户登录成功:admin','114.111.167.181','1429717006');
INSERT INTO `bage_admin_logger` VALUES('352','1','create','/index.php?r=admini/post/create','录入内容,ID:57','114.111.167.181','1429717049');
INSERT INTO `bage_admin_logger` VALUES('353','1','update','/index.php?r=admini/post/update&id=57','编辑内容,ID:57','114.111.167.181','1429717122');
INSERT INTO `bage_admin_logger` VALUES('354','1','login','/index.php?r=admini/public/login','用户登录成功:admin','114.111.167.191','1429955863');
INSERT INTO `bage_admin_logger` VALUES('355','1','login','/index.php?r=admini/public/login','用户登录成功:admin','114.111.167.191','1429955863');
INSERT INTO `bage_admin_logger` VALUES('356','1','create','/index.php?r=admini/post/create','录入内容,ID:58','114.111.167.191','1429956376');
INSERT INTO `bage_admin_logger` VALUES('357','1','update','/index.php?r=admini/post/update&id=58','编辑内容,ID:58','114.111.167.191','1429956460');
INSERT INTO `bage_admin_logger` VALUES('358','1','login','/index.php?r=admini/public/login','用户登录成功:admin','114.111.167.189','1430409362');
INSERT INTO `bage_admin_logger` VALUES('359','0','login','/index.php?r=admini/public/login','登录失败，密码不正确:admin，使用密码：tanjian421`970+','114.111.167.189','1430409365');
INSERT INTO `bage_admin_logger` VALUES('360','1','login','/index.php?r=admini/public/login','用户登录成功:admin','114.111.167.189','1430409368');
INSERT INTO `bage_admin_logger` VALUES('361','1','login','/index.php?r=admini/public/login','用户登录成功:admin','114.111.167.189','1430409405');
INSERT INTO `bage_admin_logger` VALUES('362','1','login','/index.php?r=admini/public/login','用户登录成功:admin','114.111.167.189','1430409406');
INSERT INTO `bage_admin_logger` VALUES('363','1','create','/index.php?r=admini/post/create','录入内容,ID:59','114.111.167.189','1430410261');
INSERT INTO `bage_admin_logger` VALUES('364','1','login','/index.php?r=admini/public/login','用户登录成功:admin','106.39.255.198','1430925768');
INSERT INTO `bage_admin_logger` VALUES('365','1','create','/index.php?r=admini/post/create','录入内容,ID:60','106.39.255.198','1430925917');
INSERT INTO `bage_admin_logger` VALUES('366','1','create','/index.php?r=admini/post/create','录入内容,ID:61','106.39.255.198','1430926035');
INSERT INTO `bage_admin_logger` VALUES('367','1','login','/index.php?r=admini/public/login','用户登录成功:admin','106.39.102.136','1430997281');
INSERT INTO `bage_admin_logger` VALUES('368','1','create','/index.php?r=admini/post/create','录入内容,ID:62','106.39.102.136','1430997297');
INSERT INTO `bage_admin_logger` VALUES('369','1','login','/index.php?r=admini/public/login','用户登录成功:admin','218.240.149.50','1431428325');
INSERT INTO `bage_admin_logger` VALUES('370','1','create','/index.php?r=admini/post/create','录入内容,ID:63','218.240.149.50','1431428380');
INSERT INTO `bage_admin_logger` VALUES('371','1','login','/index.php?r=admini/public/login','用户登录成功:admin','123.125.212.105','1431445429');
INSERT INTO `bage_admin_logger` VALUES('372','1','create','/index.php?r=admini/post/create','录入内容,ID:64','123.125.212.105','1431445550');
INSERT INTO `bage_admin_logger` VALUES('373','1','update','/index.php?r=admini/post/update&id=64','编辑内容,ID:64','123.125.212.105','1431445631');
INSERT INTO `bage_admin_logger` VALUES('374','1','update','/index.php?r=admini/post/update&id=64','编辑内容,ID:64','123.125.212.105','1431445664');
INSERT INTO `bage_admin_logger` VALUES('375','1','login','/index.php?r=admini/public/login','用户登录成功:admin','218.240.149.50','1431483094');
INSERT INTO `bage_admin_logger` VALUES('376','1','update','/index.php?r=admini/config/index','更新系统配置，模块：index','218.240.149.50','1431483116');
INSERT INTO `bage_admin_logger` VALUES('377','1','create','/index.php?r=admini/post/create','录入内容,ID:65','218.240.149.50','1431483158');
INSERT INTO `bage_admin_logger` VALUES('378','1','login','/index.php?r=admini/public/login','用户登录成功:admin','114.111.167.191','1431645071');
INSERT INTO `bage_admin_logger` VALUES('379','1','login','/index.php?r=admini/public/login','用户登录成功:admin','114.111.167.191','1431645071');
INSERT INTO `bage_admin_logger` VALUES('380','1','create','/index.php?r=admini/post/create','录入内容,ID:66','114.111.167.191','1431645164');
INSERT INTO `bage_admin_logger` VALUES('381','1','update','/index.php?r=admini/post/update&id=66','编辑内容,ID:66','114.111.167.191','1431645247');
INSERT INTO `bage_admin_logger` VALUES('382','1','login','/index.php?r=admini/public/login','用户登录成功:admin','124.205.254.66','1431871553');
INSERT INTO `bage_admin_logger` VALUES('383','1','update','/index.php?r=admini/post/update&id=54','编辑内容,ID:54','124.205.254.66','1431871842');
INSERT INTO `bage_admin_logger` VALUES('384','1','login','/index.php?r=admini/public/login','用户登录成功:admin','114.111.167.181','1432048100');
INSERT INTO `bage_admin_logger` VALUES('385','1','login','/index.php?r=admini/public/login','用户登录成功:admin','114.111.167.181','1432048100');
INSERT INTO `bage_admin_logger` VALUES('386','1','login','/index.php?r=admini/public/login','用户登录成功:admin','114.111.167.181','1432048220');
INSERT INTO `bage_admin_logger` VALUES('387','1','create','/index.php?r=admini/post/create','录入内容,ID:67','114.111.167.181','1432048300');
INSERT INTO `bage_admin_logger` VALUES('388','1','update','/index.php?r=admini/post/update&id=67','编辑内容,ID:67','114.111.167.181','1432048381');
INSERT INTO `bage_admin_logger` VALUES('389','1','login','/index.php?r=admini/public/login','用户登录成功:admin','114.111.167.181','1432097307');
INSERT INTO `bage_admin_logger` VALUES('390','1','update','/index.php?r=admini/post/update&id=67','编辑内容,ID:67','114.111.167.181','1432097331');
INSERT INTO `bage_admin_logger` VALUES('391','1','delete','/index.php?r=admini/post/batch&command=delete&id=63','删除内容，ID:63','114.111.167.181','1432097449');
INSERT INTO `bage_admin_logger` VALUES('392','1','login','/index.php?r=admini/public/login','用户登录成功:admin','124.205.254.67','1432561988');
INSERT INTO `bage_admin_logger` VALUES('393','1','create','/index.php?r=admini/post/create','录入内容,ID:68','124.205.254.67','1432562400');
INSERT INTO `bage_admin_logger` VALUES('394','1','update','/index.php?r=admini/post/update&id=68','编辑内容,ID:68','124.205.254.67','1432562454');
INSERT INTO `bage_admin_logger` VALUES('395','1','login','/index.php?r=admini/public/login','用户登录成功:admin','123.125.212.106','1432632797');
INSERT INTO `bage_admin_logger` VALUES('396','1','update','/index.php?r=admini/post/update&id=68','编辑内容,ID:68','123.125.212.106','1432632841');
INSERT INTO `bage_admin_logger` VALUES('397','1','login','/index.php?r=admini/public/login','用户登录成功:admin','219.142.118.233','1432803713');
INSERT INTO `bage_admin_logger` VALUES('398','1','update','/index.php?r=admini/post/update&id=68','编辑内容,ID:68','219.142.118.233','1432803785');
INSERT INTO `bage_admin_logger` VALUES('399','1','login','/index.php?r=admini/public/login','用户登录成功:admin','123.125.212.111','1432999275');
INSERT INTO `bage_admin_logger` VALUES('400','1','login','/index.php?r=admini/public/login','用户登录成功:admin','123.125.212.111','1432999275');
INSERT INTO `bage_admin_logger` VALUES('401','1','update','/index.php?r=admini/post/update&id=68','编辑内容,ID:68','123.125.212.111','1432999384');
INSERT INTO `bage_admin_logger` VALUES('402','1','create','/index.php?r=admini/post/create','录入内容,ID:69','123.125.212.111','1432999813');
INSERT INTO `bage_admin_logger` VALUES('403','1','create','/index.php?r=admini/post/create','录入内容,ID:70','123.125.212.111','1432999929');
INSERT INTO `bage_admin_logger` VALUES('404','1','login','/index.php?r=admini/public/login','用户登录成功:admin','114.245.40.119','1433683984');
INSERT INTO `bage_admin_logger` VALUES('405','1','create','/index.php?r=admini/post/create','录入内容,ID:71','114.245.40.119','1433686522');
INSERT INTO `bage_admin_logger` VALUES('406','1','update','/index.php?r=admini/post/update&id=71','编辑内容,ID:71','114.245.40.119','1433686666');
INSERT INTO `bage_admin_logger` VALUES('407','1','login','/index.php?r=admini/public/login','用户登录成功:admin','114.245.39.248','1433807270');
INSERT INTO `bage_admin_logger` VALUES('408','1','login','/index.php?r=admini/public/login','用户登录成功:admin','114.245.39.248','1433807271');
INSERT INTO `bage_admin_logger` VALUES('409','1','create','/index.php?r=admini/post/create','录入内容,ID:72','114.245.39.248','1433807476');
INSERT INTO `bage_admin_logger` VALUES('410','1','login','/index.php?r=admini/public/login','用户登录成功:admin','123.118.219.159','1434036589');
INSERT INTO `bage_admin_logger` VALUES('411','1','update','/index.php?r=admini/post/update&id=72','编辑内容,ID:72','123.118.219.159','1434036953');
INSERT INTO `bage_admin_logger` VALUES('412','1','login','/index.php?r=admini/public/login','用户登录成功:admin','114.245.45.247','1434196756');
INSERT INTO `bage_admin_logger` VALUES('413','1','login','/index.php?r=admini/public/login','用户登录成功:admin','114.245.45.247','1434196757');
INSERT INTO `bage_admin_logger` VALUES('414','1','create','/index.php?r=admini/post/create','录入内容,ID:73','114.245.45.247','1434196986');
INSERT INTO `bage_admin_logger` VALUES('415','1','login','/index.php?r=admini/public/login','用户登录成功:admin','219.142.118.233','1434534274');
INSERT INTO `bage_admin_logger` VALUES('416','1','login','/index.php?r=admini/public/login','用户登录成功:admin','219.142.118.233','1434534274');
INSERT INTO `bage_admin_logger` VALUES('417','1','update','/index.php?r=admini/post/update&id=73','编辑内容,ID:73','219.142.118.233','1434534432');
INSERT INTO `bage_admin_logger` VALUES('418','1','login','/index.php?r=admini/public/login','用户登录成功:admin','114.249.241.178','1435673027');
INSERT INTO `bage_admin_logger` VALUES('419','1','login','/index.php?r=admini/public/login','用户登录成功:admin','114.249.241.178','1435673027');
INSERT INTO `bage_admin_logger` VALUES('420','1','update','/index.php?r=admini/config/index','更新系统配置，模块：index','114.249.241.178','1435673043');
INSERT INTO `bage_admin_logger` VALUES('421','1','update','/index.php?r=admini/config/index','更新系统配置，模块：index','114.249.241.178','1435673080');
INSERT INTO `bage_admin_logger` VALUES('422','1','login','/index.php?r=admini/public/login','用户登录成功:admin','114.249.241.178','1435673548');
INSERT INTO `bage_admin_logger` VALUES('423','1','login','/index.php?r=admini/public/login','用户登录成功:admin','114.249.241.178','1435675151');
INSERT INTO `bage_admin_logger` VALUES('424','1','login','/index.php?r=admini/public/login','用户登录成功:admin','114.249.241.178','1435675181');
INSERT INTO `bage_admin_logger` VALUES('425','1','login','/index.php?r=admini/public/login','用户登录成功:admin','114.249.241.178','1435675181');
INSERT INTO `bage_admin_logger` VALUES('426','1','update','/index.php?r=admini/config/index','更新系统配置，模块：index','114.249.241.178','1435675192');
INSERT INTO `bage_admin_logger` VALUES('427','1','login','/index.php?r=admini/public/login','用户登录成功:admin','114.249.241.178','1435676805');
INSERT INTO `bage_admin_logger` VALUES('428','1','update','/index.php?r=admini/config/index','更新系统配置，模块：index','114.249.241.178','1435676843');
INSERT INTO `bage_admin_logger` VALUES('429','1','login','/index.php?r=admini/public/login','用户登录成功:admin','202.106.169.231','1435850302');
INSERT INTO `bage_admin_logger` VALUES('430','1','login','/index.php?r=admini/public/login','用户登录成功:admin','202.106.169.231','1435850303');
INSERT INTO `bage_admin_logger` VALUES('431','1','update','/index.php?r=admini/config/index','更新系统配置，模块：index','202.106.169.231','1435850339');
INSERT INTO `bage_admin_logger` VALUES('432','1','update','/index.php?r=admini/config/index','更新系统配置，模块：index','202.106.169.231','1435850553');
INSERT INTO `bage_admin_logger` VALUES('433','1','login','/index.php?r=admini/public/login','用户登录成功:admin','222.129.33.21','1436632331');
INSERT INTO `bage_admin_logger` VALUES('434','1','login','/index.php?r=admini/public/login','用户登录成功:admin','222.129.33.21','1436632332');
INSERT INTO `bage_admin_logger` VALUES('435','1','login','/index.php?r=admini/public/login','用户登录成功:admin','222.129.44.118','1436687740');
INSERT INTO `bage_admin_logger` VALUES('436','1','login','/index.php?r=admini/public/login','用户登录成功:admin','202.106.169.231','1437492397');
INSERT INTO `bage_admin_logger` VALUES('437','1','login','/index.php?r=admini/public/login','用户登录成功:admin','202.106.169.231','1437492397');
INSERT INTO `bage_admin_logger` VALUES('438','1','delete','/index.php?r=admini/post/batch&command=delete&id=67','删除内容，ID:67','202.106.169.231','1437492548');
INSERT INTO `bage_admin_logger` VALUES('439','1','login','/index.php?r=admini/public/login','用户登录成功:admin','219.142.118.233','1438241145');
INSERT INTO `bage_admin_logger` VALUES('440','1','login','/index.php?r=admini/public/login','用户登录成功:admin','219.142.118.233','1438241156');
INSERT INTO `bage_admin_logger` VALUES('441','1','login','/index.php?r=admini/public/login','用户登录成功:admin','219.142.118.233','1438241157');
INSERT INTO `bage_admin_logger` VALUES('442','1','update','/index.php?r=admini/config/index','更新系统配置，模块：index','219.142.118.233','1438241211');
INSERT INTO `bage_admin_logger` VALUES('443','0','login','/index.php?r=admini/public/login','登录失败，密码不正确:tann1013，使用密码：tanjian421970+','123.118.214.96','1438527101');
INSERT INTO `bage_admin_logger` VALUES('444','0','login','/index.php?r=admini/public/login','登录失败，密码不正确:tann1013，使用密码：tanjian421970+','123.118.214.96','1438527109');
INSERT INTO `bage_admin_logger` VALUES('445','0','login','/index.php?r=admini/public/login','登录失败，密码不正确:tann1013，使用密码：tanjian421970+','123.118.214.96','1438527111');
INSERT INTO `bage_admin_logger` VALUES('446','0','login','/index.php?r=admini/public/login','登录失败，密码不正确:tann1013，使用密码：tanjian421970+','123.118.214.96','1438527117');
INSERT INTO `bage_admin_logger` VALUES('447','0','login','/index.php?r=admini/public/login','登录失败，密码不正确:tann1013，使用密码：tanjian421970+','123.118.214.96','1438527117');
INSERT INTO `bage_admin_logger` VALUES('448','0','login','/index.php?r=admini/public/login','登录失败，密码不正确:tann1013，使用密码：tanjian421970+','123.118.214.96','1438527121');
INSERT INTO `bage_admin_logger` VALUES('449','0','login','/index.php?r=admini/public/login','登录失败，密码不正确:tann1013，使用密码：tanjian421970+','123.118.214.96','1438527137');
INSERT INTO `bage_admin_logger` VALUES('450','0','login','/index.php?r=admini/public/login','登录失败，密码不正确:tann1013，使用密码：tanjian421970+','123.118.214.96','1438527138');
INSERT INTO `bage_admin_logger` VALUES('451','1','login','/index.php?r=admini/public/login','用户登录成功:admin','123.118.214.96','1438527160');
INSERT INTO `bage_admin_logger` VALUES('452','1','login','/index.php?r=admini/public/login','用户登录成功:admin','123.118.214.96','1438527161');
INSERT INTO `bage_admin_logger` VALUES('453','1','update','/index.php?r=admini/config/seo','更新系统配置，模块：seo','123.118.214.96','1438527218');
INSERT INTO `bage_admin_logger` VALUES('454','1','update','/index.php?r=admini/config/seo','更新系统配置，模块：seo','123.118.214.96','1438527251');
INSERT INTO `bage_admin_logger` VALUES('455','1','update','/index.php?r=admini/config/seo','更新系统配置，模块：seo','123.118.214.96','1438527298');
INSERT INTO `bage_admin_logger` VALUES('456','1','create','/index.php?r=admini/post/create','录入内容,ID:74','123.118.214.96','1438527427');
INSERT INTO `bage_admin_logger` VALUES('457','1','login','/index.php?r=admini/public/login','用户登录成功:admin','123.118.215.39','1438684347');
INSERT INTO `bage_admin_logger` VALUES('458','1','login','/index.php?r=admini/public/login','用户登录成功:admin','219.142.118.233','1438774127');
INSERT INTO `bage_admin_logger` VALUES('459','1','login','/index.php?r=admini/public/login','用户登录成功:admin','219.142.118.233','1438774127');
INSERT INTO `bage_admin_logger` VALUES('460','1','create','/index.php?r=admini/catalog/create','录入全局分类,ID:名称：足球','219.142.118.233','1438774390');
INSERT INTO `bage_admin_logger` VALUES('461','1','login','/index.php?r=admini/public/login','用户登录成功:admin','202.106.169.231','1439216842');
INSERT INTO `bage_admin_logger` VALUES('462','1','login','/index.php?r=admini/public/login','用户登录成功:admin','202.106.169.231','1439216842');
INSERT INTO `bage_admin_logger` VALUES('463','1','create','/index.php?r=admini/post/create','录入内容,ID:75','202.106.169.231','1439216923');
INSERT INTO `bage_admin_logger` VALUES('464','1','login','/index.php?r=admini/public/login','用户登录成功:admin','219.142.118.233','1439283749');
INSERT INTO `bage_admin_logger` VALUES('465','1','delete','/index.php?r=admini/catalog/batch&command=delete&id=17','删除全局分类，ID:17','219.142.118.233','1439283785');
INSERT INTO `bage_admin_logger` VALUES('466','1','login','/index.php?r=admini/public/login','用户登录成功:admin','219.142.118.233','1439776287');
INSERT INTO `bage_admin_logger` VALUES('467','1','login','/index.php?r=admini/public/login','用户登录成功:admin','219.142.118.233','1439776287');
INSERT INTO `bage_admin_logger` VALUES('468','1','create','/index.php?r=admini/post/create','录入内容,ID:76','219.142.118.233','1439776347');
INSERT INTO `bage_admin_logger` VALUES('469','1','login','/index.php?r=admini/public/login','用户登录成功:admin','114.245.36.87','1439905499');
INSERT INTO `bage_admin_logger` VALUES('470','1','login','/index.php?r=admini/public/login','用户登录成功:admin','114.245.36.87','1439905500');
INSERT INTO `bage_admin_logger` VALUES('471','1','login','/index.php?r=admini/public/login','用户登录成功:admin','219.142.118.233','1442903386');
INSERT INTO `bage_admin_logger` VALUES('472','1','login','/index.php?r=admini/public/login','用户登录成功:admin','222.129.54.223','1458744346');
INSERT INTO `bage_admin_logger` VALUES('473','1','login','/index.php?r=admini/public/login','用户登录成功:admin','222.129.54.223','1458744347');
INSERT INTO `bage_admin_logger` VALUES('474','1','update','/index.php?r=admini/config/index','更新系统配置，模块：index','222.129.54.223','1458744551');
INSERT INTO `bage_admin_logger` VALUES('475','1','update','/index.php?r=admini/config/index','更新系统配置，模块：index','222.129.54.223','1458744666');
INSERT INTO `bage_admin_logger` VALUES('476','1','delete','/index.php?r=admini/catalog/batch&command=delete&id=14','删除全局分类，ID:14','222.129.54.223','1458744718');
INSERT INTO `bage_admin_logger` VALUES('477','1','delete','/index.php?r=admini/catalog/batch&command=delete&id=16','删除全局分类，ID:16','222.129.54.223','1458744721');
INSERT INTO `bage_admin_logger` VALUES('478','1','delete','/index.php?r=admini/catalog/batch&command=delete&id=15','删除全局分类，ID:15','222.129.54.223','1458744726');
INSERT INTO `bage_admin_logger` VALUES('479','1','delete','/index.php?r=admini/catalog/batch&command=delete&id=9','删除全局分类，ID:9','222.129.54.223','1458744732');
INSERT INTO `bage_admin_logger` VALUES('480','1','delete','/index.php?r=admini/post/batch','删除内容，ID:76,74,73,72,71,68,65,64,62','222.129.54.223','1458744776');
INSERT INTO `bage_admin_logger` VALUES('481','1','delete','/index.php?r=admini/post/batch','删除内容，ID:51,50,49,45,44,43,36,35','222.129.54.223','1458744821');
INSERT INTO `bage_admin_logger` VALUES('482','1','delete','/index.php?r=admini/post/batch','删除内容，ID:75,60,59,58,57,56,55,54,52','222.129.54.223','1458744869');
INSERT INTO `bage_admin_logger` VALUES('483','1','update','/index.php?r=admini/config/index','更新系统配置，模块：index','222.129.54.223','1458745050');
INSERT INTO `bage_admin_logger` VALUES('484','1','login','/index.php?r=admini/public/login','用户登录成功:admin','222.129.46.35','1459333498');
INSERT INTO `bage_admin_logger` VALUES('485','1','create','/index.php?r=admini/post/create','录入内容,ID:77','222.129.46.35','1459333648');
INSERT INTO `bage_admin_logger` VALUES('486','1','login','/index.php?r=admini/public/login','用户登录成功:admin','202.85.212.2','1459818269');
INSERT INTO `bage_admin_logger` VALUES('487','1','create','/index.php?r=admini/post/create','录入内容,ID:78','202.85.212.2','1459819689');
INSERT INTO `bage_admin_logger` VALUES('488','1','update','/index.php?r=admini/post/update&id=78','编辑内容,ID:78','202.85.212.2','1459820090');
INSERT INTO `bage_admin_logger` VALUES('489','1','update','/index.php?r=admini/post/update&id=78','编辑内容,ID:78','202.85.212.2','1459821203');
INSERT INTO `bage_admin_logger` VALUES('490','1','update','/index.php?r=admini/post/update&id=78','编辑内容,ID:78','202.85.212.2','1459821589');
INSERT INTO `bage_admin_logger` VALUES('491','1','delete','/index.php?r=admini/post/batch&command=delete&id=77','删除内容，ID:77','202.85.212.2','1459822015');
INSERT INTO `bage_admin_logger` VALUES('492','1','update','/index.php?r=admini/post/update&id=78','编辑内容,ID:78','202.85.212.2','1459822236');
INSERT INTO `bage_admin_logger` VALUES('493','1','login','/index.php?r=admini/public/login','用户登录成功:admin','114.245.45.233','1459869853');
INSERT INTO `bage_admin_logger` VALUES('494','1','login','/index.php?r=admini/public/login','用户登录成功:admin','114.245.45.233','1459871148');
INSERT INTO `bage_admin_logger` VALUES('495','1','login','/index.php?r=admini/public/login','用户登录成功:admin','202.85.212.2','1459919324');
INSERT INTO `bage_admin_logger` VALUES('496','1','login','/index.php?r=admini/public/login','用户登录成功:admin','202.85.212.2','1459919325');
INSERT INTO `bage_admin_logger` VALUES('497','1','create','/index.php?r=admini/post/create','录入内容,ID:79','202.85.212.2','1459931555');
INSERT INTO `bage_admin_logger` VALUES('498','1','update','/index.php?r=admini/post/update&id=79','编辑内容,ID:79','202.85.212.2','1459931729');
INSERT INTO `bage_admin_logger` VALUES('499','1','login','/index.php?r=admini/public/login','用户登录成功:admin','202.85.212.2','1460006711');
INSERT INTO `bage_admin_logger` VALUES('500','1','login','/index.php?r=admini/public/login','用户登录成功:admin','202.85.212.2','1460006722');
INSERT INTO `bage_admin_logger` VALUES('501','1','update','/index.php?r=admini/post/update&id=79','编辑内容,ID:79','202.85.212.2','1460007897');
INSERT INTO `bage_admin_logger` VALUES('502','1','login','/index.php?r=admini/public/login','用户登录成功:admin','123.118.214.235','1460033975');
INSERT INTO `bage_admin_logger` VALUES('503','1','login','/index.php?r=admini/public/login','用户登录成功:admin','123.118.214.235','1460033975');
INSERT INTO `bage_admin_logger` VALUES('504','1','login','/index.php?r=admini/public/login','用户登录成功:admin','123.118.214.235','1460037536');
INSERT INTO `bage_admin_logger` VALUES('505','1','login','/index.php?r=admini/public/login','用户登录成功:admin','123.118.214.235','1460037536');
INSERT INTO `bage_admin_logger` VALUES('506','1','login','/index.php?r=admini/public/login','用户登录成功:admin','123.118.214.235','1460117511');
INSERT INTO `bage_admin_logger` VALUES('507','1','login','/index.php?r=admini/public/login','用户登录成功:admin','123.118.214.235','1460117511');
INSERT INTO `bage_admin_logger` VALUES('508','1','login','/index.php?r=admini/public/login','用户登录成功:admin','123.118.214.235','1460216027');
INSERT INTO `bage_admin_logger` VALUES('509','1','login','/index.php?r=admini/public/login','用户登录成功:admin','123.118.214.235','1460216027');
INSERT INTO `bage_admin_logger` VALUES('510','1','login','/index.php?r=admini/public/login','用户登录成功:admin','202.85.212.2','1460432968');
INSERT INTO `bage_admin_logger` VALUES('511','1','login','/index.php?r=admini/public/login','用户登录成功:admin','202.85.212.2','1460450021');
INSERT INTO `bage_admin_logger` VALUES('512','1','login','/index.php?r=admini/public/login','用户登录成功:admin','202.85.212.2','1460450022');
INSERT INTO `bage_admin_logger` VALUES('513','1','create','/index.php?r=admini/post/create','录入内容,ID:80','202.85.212.2','1460450143');
INSERT INTO `bage_admin_logger` VALUES('514','1','login','/index.php?r=admini/public/login','用户登录成功:admin','123.118.217.253','1460556085');
INSERT INTO `bage_admin_logger` VALUES('515','1','login','/index.php?r=admini/public/login','用户登录成功:admin','123.118.217.253','1460556085');
INSERT INTO `bage_admin_logger` VALUES('516','1','login','/index.php?r=admini/public/login','用户登录成功:admin','114.245.38.96','1461506938');
INSERT INTO `bage_admin_logger` VALUES('517','1','login','/index.php?r=admini/public/login','用户登录成功:admin','61.148.202.10','1461757920');
INSERT INTO `bage_admin_logger` VALUES('518','1','login','/index.php?r=admini/public/login','用户登录成功:admin','222.129.47.161','1462630586');
INSERT INTO `bage_admin_logger` VALUES('519','1','login','/index.php?r=admini/public/login','用户登录成功:admin','222.129.47.161','1462630598');
INSERT INTO `bage_admin_logger` VALUES('520','1','login','/index.php?r=admini/public/login','用户登录成功:admin','222.129.47.161','1462630599');
INSERT INTO `bage_admin_logger` VALUES('521','1','login','/index.php?r=admini/public/login','用户登录成功:admin','222.129.47.161','1462630599');
INSERT INTO `bage_admin_logger` VALUES('522','1','login','/index.php?r=admini/public/login','用户登录成功:admin','61.148.202.10','1465990209');
INSERT INTO `bage_admin_logger` VALUES('523','1','login','/index.php?r=admini/public/login','用户登录成功:admin','61.148.202.10','1465990209');
INSERT INTO `bage_admin_logger` VALUES('524','1','login','/index.php?r=admini/public/login','用户登录成功:admin','61.148.202.10','1467625713');
INSERT INTO `bage_admin_logger` VALUES('525','0','login','/index.php?r=admini/public/login','登录失败，密码不正确:tann1013，使用密码：tanjian421970+','61.148.202.10','1467871258');
INSERT INTO `bage_admin_logger` VALUES('526','1','login','/index.php?r=admini/public/login','用户登录成功:admin','61.148.202.10','1467871809');
INSERT INTO `bage_admin_logger` VALUES('527','1','login','/index.php?r=admini/public/login','用户登录成功:admin','61.148.202.10','1467871809');
INSERT INTO `bage_admin_logger` VALUES('528','1','delete','/index.php?r=admini/post/batch&command=delete&id=78','删除内容，ID:78','61.148.202.10','1467872100');
INSERT INTO `bage_admin_logger` VALUES('529','1','login','/index.php?r=admini/public/login','用户登录成功:admin','61.148.202.10','1468411139');
INSERT INTO `bage_admin_logger` VALUES('530','1','login','/index.php?r=admini/public/login','用户登录成功:admin','61.148.202.10','1468411157');
INSERT INTO `bage_admin_logger` VALUES('531','1','login','/index.php?r=admini/public/login','用户登录成功:admin','61.148.202.10','1468411158');
INSERT INTO `bage_admin_logger` VALUES('532','1','login','/index.php?r=admini/public/login','用户登录成功:admin','61.148.202.10','1469761742');
INSERT INTO `bage_admin_logger` VALUES('533','1','login','/index.php?r=admini/public/login','用户登录成功:admin','61.148.202.10','1469761742');
INSERT INTO `bage_admin_logger` VALUES('534','1','create','/index.php?r=admini/post/create','录入内容,ID:81','61.148.202.10','1469761875');
INSERT INTO `bage_admin_logger` VALUES('535','1','login','/index.php?r=admini/public/login','用户登录成功:admin','61.148.202.10','1470275829');
INSERT INTO `bage_admin_logger` VALUES('536','1','login','/index.php?r=admini/public/login','用户登录成功:admin','61.148.202.10','1470275829');
INSERT INTO `bage_admin_logger` VALUES('537','1','login','/index.php?r=admini/public/login','用户登录成功:admin','61.148.202.10','1470289397');
INSERT INTO `bage_admin_logger` VALUES('538','1','login','/index.php?r=admini/public/login','用户登录成功:admin','61.148.202.10','1470289397');
INSERT INTO `bage_admin_logger` VALUES('539','1','login','/index.php?r=admini/public/login','用户登录成功:admin','61.148.202.10','1470289416');
INSERT INTO `bage_admin_logger` VALUES('540','1','login','/index.php?r=admini/public/login','用户登录成功:admin','61.148.202.10','1470289417');
INSERT INTO `bage_admin_logger` VALUES('541','1','create','/index.php?r=admini/post/create','录入内容,ID:82','61.148.202.10','1470289539');
INSERT INTO `bage_admin_logger` VALUES('542','1','login','/index.php?r=admini/public/login','用户登录成功:admin','61.148.202.10','1471422865');
INSERT INTO `bage_admin_logger` VALUES('543','1','login','/index.php?r=admini/public/login','用户登录成功:admin','61.148.202.10','1476438678');
INSERT INTO `bage_admin_logger` VALUES('544','1','delete','/index.php?r=admini/post/batch','删除内容，ID:82,81,80,79,70,69,66,61,48,47,46,42,41','61.148.202.10','1476438694');
INSERT INTO `bage_admin_logger` VALUES('545','1','delete','/index.php?r=admini/post/batch','删除内容，ID:34,33,32,31,30,29,28,27,26,25,24,23,22','61.148.202.10','1476438705');
INSERT INTO `bage_admin_logger` VALUES('546','1','delete','/index.php?r=admini/post/batch','删除内容，ID:21,20','61.148.202.10','1476438718');
INSERT INTO `bage_admin_logger` VALUES('547','1','create','/index.php?r=admini/post/create','录入内容,ID:83','61.148.202.10','1476438767');
INSERT INTO `bage_admin_logger` VALUES('548','1','login','/index.php?r=admini/public/login','用户登录成功:admin','61.148.202.10','1476696807');
INSERT INTO `bage_admin_logger` VALUES('549','1','create','/index.php?r=admini/post/create','录入内容,ID:84','61.148.202.10','1476696924');
INSERT INTO `bage_admin_logger` VALUES('550','1','login','/index.php?r=admini/public/login','用户登录成功:admin','61.148.202.10','1476957696');
INSERT INTO `bage_admin_logger` VALUES('551','1','create','/index.php?r=admini/post/create','录入内容,ID:85','61.148.202.10','1476957768');
INSERT INTO `bage_admin_logger` VALUES('552','1','login','/index.php?r=admini/public/login','用户登录成功:admin','61.148.202.10','1477036297');
INSERT INTO `bage_admin_logger` VALUES('553','1','update','/index.php?r=admini/post/update&id=85','编辑内容,ID:85','61.148.202.10','1477036734');
INSERT INTO `bage_admin_logger` VALUES('554','1','login','/index.php?r=admini/public/login','用户登录成功:admin','61.148.202.10','1477618748');
INSERT INTO `bage_admin_logger` VALUES('555','1','login','/index.php?r=admini/public/login','用户登录成功:admin','61.148.202.10','1477618748');
INSERT INTO `bage_admin_logger` VALUES('556','1','login','/index.php?r=admini/public/login','用户登录成功:admin','61.148.202.10','1478147931');
INSERT INTO `bage_admin_logger` VALUES('557','1','login','/index.php?r=admini/public/login','用户登录成功:admin','61.148.202.10','1478147931');
INSERT INTO `bage_admin_logger` VALUES('558','1','login','/index.php?r=admini/public/login','用户登录成功:admin','222.129.42.73','1478435104');
INSERT INTO `bage_admin_logger` VALUES('559','1','create','/index.php?r=admini/post/create','录入内容,ID:86','222.129.42.73','1478435394');
INSERT INTO `bage_admin_logger` VALUES('560','1','login','/index.php?r=admini/public/login','用户登录成功:admin','222.129.42.73','1478435816');
INSERT INTO `bage_admin_logger` VALUES('561','1','login','/index.php?r=admini/public/login','用户登录成功:admin','222.129.42.73','1478435817');
INSERT INTO `bage_admin_logger` VALUES('562','1','update','/index.php?r=admini/post/update&id=86','编辑内容,ID:86','222.129.42.73','1478435950');
INSERT INTO `bage_admin_logger` VALUES('563','1','login','/index.php?r=admini/public/login','用户登录成功:admin','221.219.37.192','1479136776');
INSERT INTO `bage_admin_logger` VALUES('564','1','create','/index.php?r=admini/post/create','录入内容,ID:87','221.219.37.192','1479136976');
INSERT INTO `bage_admin_logger` VALUES('565','1','login','/index.php?r=admini/public/login','用户登录成功:admin','61.148.202.10','1480559293');
INSERT INTO `bage_admin_logger` VALUES('566','1','login','/index.php?r=admini/public/login','用户登录成功:admin','111.193.114.82','1481037281');
INSERT INTO `bage_admin_logger` VALUES('567','1','delete','/index.php?r=admini/post/batch&command=delete&id=85','删除内容，ID:85','111.193.114.82','1481037380');
INSERT INTO `bage_admin_logger` VALUES('568','1','update','/index.php?r=admini/post/update&id=87','编辑内容,ID:87','111.193.114.82','1481037921');
INSERT INTO `bage_admin_logger` VALUES('569','1','login','/index.php?r=admini/public/login','用户登录成功:admin','111.193.126.100','1481470083');
INSERT INTO `bage_admin_logger` VALUES('570','1','create','/index.php?r=admini/post/create','录入内容,ID:88','111.193.126.100','1481470204');
INSERT INTO `bage_admin_logger` VALUES('571','1','login','/index.php?r=admini/public/login','用户登录成功:admin','111.193.126.100','1481630968');
INSERT INTO `bage_admin_logger` VALUES('572','1','update','/index.php?r=admini/post/update&id=88','编辑内容,ID:88','111.193.126.100','1481631034');
INSERT INTO `bage_admin_logger` VALUES('573','1','update','/index.php?r=admini/post/update&id=88','编辑内容,ID:88','111.193.126.100','1481631633');
INSERT INTO `bage_admin_logger` VALUES('574','1','login','/index.php?r=admini/public/login','用户登录成功:admin','111.193.127.129','1482045546');
INSERT INTO `bage_admin_logger` VALUES('575','1','create','/index.php?r=admini/post/create','录入内容,ID:89','111.193.127.129','1482046221');
INSERT INTO `bage_admin_logger` VALUES('576','1','update','/index.php?r=admini/post/update&id=88','编辑内容,ID:88','111.193.127.129','1482046327');
INSERT INTO `bage_admin_logger` VALUES('577','1','delete','/index.php?r=admini/post/batch&command=delete&id=87','删除内容，ID:87','111.193.127.129','1482046495');
INSERT INTO `bage_admin_logger` VALUES('578','1','update','/index.php?r=admini/post/update&id=88','编辑内容,ID:88','111.193.127.129','1482047285');
INSERT INTO `bage_admin_logger` VALUES('579','1','login','/index.php?r=admini/public/login','用户登录成功:admin','111.193.127.129','1482293672');
INSERT INTO `bage_admin_logger` VALUES('580','1','login','/index.php?r=admini/public/login','用户登录成功:admin','114.249.72.97','1482585508');
INSERT INTO `bage_admin_logger` VALUES('581','1','login','/index.php?r=admini/public/login','用户登录成功:admin','114.249.72.97','1482585516');
INSERT INTO `bage_admin_logger` VALUES('582','1','login','/index.php?r=admini/public/login','用户登录成功:admin','114.249.72.97','1482585516');
INSERT INTO `bage_admin_logger` VALUES('583','1','update','/index.php?r=admini/post/update&id=89','编辑内容,ID:89','114.249.72.97','1482585891');
INSERT INTO `bage_admin_logger` VALUES('584','1','update','/index.php?r=admini/post/batch','批量取消内容审核，ID:86','114.249.72.97','1482585971');
INSERT INTO `bage_admin_logger` VALUES('585','1','update','/index.php?r=admini/post/batch','批量取消内容审核，ID:86','114.249.72.97','1482585985');
INSERT INTO `bage_admin_logger` VALUES('586','1','update','/index.php?r=admini/post/update&id=88','编辑内容,ID:88','114.249.72.97','1482586147');
INSERT INTO `bage_admin_logger` VALUES('587','1','login','/index.php?r=admini/public/login','用户登录成功:admin','123.116.119.50','1482915723');
INSERT INTO `bage_admin_logger` VALUES('588','1','login','/index.php?r=admini/public/login','用户登录成功:admin','123.123.154.119','1482939570');
INSERT INTO `bage_admin_logger` VALUES('589','1','create','/index.php?r=admini/post/create','录入内容,ID:90','123.123.154.119','1482940357');
INSERT INTO `bage_admin_logger` VALUES('590','1','update','/index.php?r=admini/post/update&id=90','编辑内容,ID:90','123.123.154.119','1482940442');
INSERT INTO `bage_admin_logger` VALUES('591','1','login','/index.php?r=admini/public/login','用户登录成功:admin','123.123.154.119','1482948467');
INSERT INTO `bage_admin_logger` VALUES('592','1','login','/index.php?r=admini/public/login','用户登录成功:admin','114.243.55.109','1483195811');
INSERT INTO `bage_admin_logger` VALUES('593','1','login','/index.php?r=admini/public/login','用户登录成功:admin','114.243.55.109','1483241323');
INSERT INTO `bage_admin_logger` VALUES('594','1','login','/index.php?r=admini/public/login','用户登录成功:admin','114.243.55.109','1483344562');
INSERT INTO `bage_admin_logger` VALUES('595','1','login','/index.php?r=admini/public/login','用户登录成功:admin','114.243.55.109','1483616797');
INSERT INTO `bage_admin_logger` VALUES('596','1','login','/index.php?r=admini/public/login','用户登录成功:admin','114.243.55.109','1483618226');
INSERT INTO `bage_admin_logger` VALUES('597','1','login','/index.php?r=admini/public/login','用户登录成功:admin','106.121.76.7','1483626134');
INSERT INTO `bage_admin_logger` VALUES('598','1','login','/index.php?r=admini/public/login','用户登录成功:admin','114.243.55.109','1483630988');
INSERT INTO `bage_admin_logger` VALUES('599','1','login','/index.php?r=admini/public/login','用户登录成功:admin','123.116.93.0','1483720399');
INSERT INTO `bage_admin_logger` VALUES('600','1','login','/index.php?r=admini/public/login','用户登录成功:admin','123.116.93.0','1483801542');
INSERT INTO `bage_admin_logger` VALUES('601','1','login','/index.php?r=admini/public/login','用户登录成功:admin','123.116.93.0','1484132214');
INSERT INTO `bage_admin_logger` VALUES('602','1','login','/index.php?r=admini/public/login','用户登录成功:admin','106.121.11.249','1484548254');
INSERT INTO `bage_admin_logger` VALUES('603','1','update','/index.php?r=admini/config/index','更新系统配置，模块：index','106.121.11.249','1484548281');
INSERT INTO `bage_admin_logger` VALUES('604','1','login','/index.php?r=admini/public/login','用户登录成功:admin','203.86.47.85','1485136398');
INSERT INTO `bage_admin_logger` VALUES('605','1','update','/index.php?r=admini/config/index','更新系统配置，模块：index','203.86.47.85','1485136514');
INSERT INTO `bage_admin_logger` VALUES('606','1','update','/index.php?r=admini/post/update&id=90','编辑内容,ID:90','203.86.47.85','1485136562');
INSERT INTO `bage_admin_logger` VALUES('607','1','update','/index.php?r=admini/post/update&id=89','编辑内容,ID:89','203.86.47.85','1485136579');
INSERT INTO `bage_admin_logger` VALUES('608','1','update','/index.php?r=admini/post/update&id=88','编辑内容,ID:88','203.86.47.85','1485136597');
INSERT INTO `bage_admin_logger` VALUES('609','1','update','/index.php?r=admini/config/index','更新系统配置，模块：index','203.86.47.85','1485136641');
INSERT INTO `bage_admin_logger` VALUES('610','1','login','/index.php?r=admini/public/login','用户登录成功:admin','203.86.47.85','1486179416');
INSERT INTO `bage_admin_logger` VALUES('611','1','login','/index.php?r=admini/public/login','用户登录成功:admin','104.168.26.61','1486529080');
INSERT INTO `bage_admin_logger` VALUES('612','1','login','/index.php?r=admini/public/login','用户登录成功:admin','104.168.26.61','1486529080');
INSERT INTO `bage_admin_logger` VALUES('613','1','update','/index.php?r=admini/post/update&id=90','编辑内容,ID:90','104.168.26.61','1486529145');
INSERT INTO `bage_admin_logger` VALUES('614','1','delete','/index.php?r=admini/post/batch&command=delete&id=90','删除内容，ID:90','104.168.26.61','1486529169');
INSERT INTO `bage_admin_logger` VALUES('615','1','update','/index.php?r=admini/post/update&id=88','编辑内容,ID:88','104.168.26.61','1486529257');
INSERT INTO `bage_admin_logger` VALUES('616','1','delete','/index.php?r=admini/post/batch&command=delete&id=86','删除内容，ID:86','104.168.26.61','1486529262');
INSERT INTO `bage_admin_logger` VALUES('617','1','delete','/index.php?r=admini/post/batch&command=delete&id=83','删除内容，ID:83','104.168.26.61','1486529268');
INSERT INTO `bage_admin_logger` VALUES('618','1','update','/index.php?r=admini/post/update&id=89','编辑内容,ID:89','104.168.26.61','1486529338');
INSERT INTO `bage_admin_logger` VALUES('619','1','update','/index.php?r=admini/post/update&id=89','编辑内容,ID:89','104.168.26.61','1486529385');
INSERT INTO `bage_admin_logger` VALUES('620','1','login','/index.php?r=admini/public/login','用户登录成功:admin','123.116.64.86','1487088680');
INSERT INTO `bage_admin_logger` VALUES('621','1','login','/index.php?r=admini/public/login','用户登录成功:admin','123.116.64.86','1487088680');
INSERT INTO `bage_admin_logger` VALUES('622','1','login','/index.php?r=admini/public/login','用户登录成功:admin','114.243.63.233','1487491067');
INSERT INTO `bage_admin_logger` VALUES('623','1','delete','/index.php?r=admini/post/batch','删除内容，ID:5,3,2','114.243.63.233','1487491105');
INSERT INTO `bage_admin_logger` VALUES('624','1','update','/index.php?r=admini/post/update&id=89','编辑内容,ID:89','114.243.63.233','1487491230');
INSERT INTO `bage_admin_logger` VALUES('625','1','create','/index.php?r=admini/catalog/create','录入全局分类,ID:名称：每周笔记','114.243.63.233','1487491955');
INSERT INTO `bage_admin_logger` VALUES('626','1','update','/index.php?r=admini/post/update&id=89','编辑内容,ID:89','114.243.63.233','1487493081');
INSERT INTO `bage_admin_logger` VALUES('627','1','login','/index.php?r=admini/public/login','用户登录成功:admin','114.243.63.233','1487498081');
INSERT INTO `bage_admin_logger` VALUES('628','1','delete','/index.php?r=admini/post/batch&command=delete&id=84','删除内容，ID:84','114.243.63.233','1487498474');
INSERT INTO `bage_admin_logger` VALUES('629','1','login','/index.php?r=admini/public/login','用户登录成功:admin','45.62.112.50','1487902273');
INSERT INTO `bage_admin_logger` VALUES('630','1','login','/index.php?r=admini/public/login','用户登录成功:admin','123.116.72.65','1488111776');
INSERT INTO `bage_admin_logger` VALUES('631','1','login','/index.php?r=admini/public/login','用户登录成功:admin','123.116.72.65','1488111776');
INSERT INTO `bage_admin_logger` VALUES('632','1','login','/index.php?r=admini/public/login','用户登录成功:admin','45.62.112.50','1488422057');
INSERT INTO `bage_admin_logger` VALUES('633','1','login','/index.php?r=admini/public/login','用户登录成功:admin','45.62.112.50','1488422072');
INSERT INTO `bage_admin_logger` VALUES('634','1','login','/index.php?r=admini/public/login','用户登录成功:admin','45.62.112.50','1488422086');
INSERT INTO `bage_admin_logger` VALUES('635','1','login','/index.php?r=admini/public/login','用户登录成功:admin','45.62.112.50','1488422086');
INSERT INTO `bage_admin_logger` VALUES('636','1','login','/index.php?r=admini/public/login','用户登录成功:admin','123.116.80.162','1488470037');
INSERT INTO `bage_admin_logger` VALUES('637','1','login','/index.php?r=admini/public/login','用户登录成功:admin','203.86.47.85','1489025306');
INSERT INTO `bage_admin_logger` VALUES('638','1','login','/index.php?r=admini/public/login','用户登录成功:admin','23.95.113.157','1490088449');
INSERT INTO `bage_admin_logger` VALUES('639','1','login','/index.php?r=admini/public/login','用户登录成功:admin','23.95.113.157','1490088449');
INSERT INTO `bage_admin_logger` VALUES('640','1','login','/index.php?r=admini/public/login','用户登录成功:admin','203.86.47.85','1490152090');
INSERT INTO `bage_admin_logger` VALUES('641','1','login','/index.php?r=admini/public/login','用户登录成功:admin','203.86.47.85','1490152090');
INSERT INTO `bage_admin_logger` VALUES('642','1','create','/index.php?r=admini/catalog/create','录入全局分类,ID:名称：我的游记','203.86.47.85','1490152243');
INSERT INTO `bage_admin_logger` VALUES('643','1','login','/index.php?r=admini/public/login','用户登录成功:admin','123.116.82.255','1490281511');
INSERT INTO `bage_admin_logger` VALUES('644','1','login','/index.php?r=admini/public/login','用户登录成功:admin','123.116.82.255','1490281511');
INSERT INTO `bage_admin_logger` VALUES('645','1','login','/index.php?r=admini/public/login','用户登录成功:admin','203.86.47.85','1491011820');
INSERT INTO `bage_admin_logger` VALUES('646','1','create','/index.php?r=admini/post/create','录入内容,ID:91','203.86.47.85','1491011978');
INSERT INTO `bage_admin_logger` VALUES('647','1','login','/index.php?r=admini/public/login','用户登录成功:admin','222.131.66.224','1491640463');
INSERT INTO `bage_admin_logger` VALUES('648','1','login','/index.php?r=admini/public/login','用户登录成功:admin','222.131.76.46','1491642104');
INSERT INTO `bage_admin_logger` VALUES('649','0','login','/index.php?r=admini/public/login','登录失败，密码不正确:admin，使用密码：=tanjian421302+','203.86.47.85','1493690977');
INSERT INTO `bage_admin_logger` VALUES('650','1','login','/index.php?r=admini/public/login','用户登录成功:admin','203.86.47.85','1493690979');
INSERT INTO `bage_admin_logger` VALUES('651','1','login','/index.php?r=admini/public/login','用户登录成功:admin','203.86.47.85','1493691010');
INSERT INTO `bage_admin_logger` VALUES('652','1','login','/index.php?r=admini/public/login','用户登录成功:admin','203.86.47.85','1493691010');
INSERT INTO `bage_admin_logger` VALUES('653','1','update','/index.php?r=admini/post/update&id=91','编辑内容,ID:91','203.86.47.85','1493691206');
INSERT INTO `bage_admin_logger` VALUES('654','1','create','/index.php?r=admini/post/create','录入内容,ID:92','203.86.47.85','1493691349');
INSERT INTO `bage_admin_logger` VALUES('655','1','login','/index.php?r=admini/public/login','用户登录成功:admin','203.86.47.85','1493713141');
INSERT INTO `bage_admin_logger` VALUES('656','1','login','/index.php?r=admini/public/login','用户登录成功:admin','123.116.73.48','1494671970');
INSERT INTO `bage_admin_logger` VALUES('657','1','login','/index.php?r=admini/public/login','用户登录成功:admin','123.116.73.48','1494749506');
INSERT INTO `bage_admin_logger` VALUES('658','1','update','/index.php?r=admini/post/update&id=92','编辑内容,ID:92','123.116.73.48','1494750877');
INSERT INTO `bage_admin_logger` VALUES('659','1','update','/index.php?r=admini/post/update&id=92','编辑内容,ID:92','123.116.73.48','1494751114');
INSERT INTO `bage_admin_logger` VALUES('660','1','create','/index.php?r=admini/post/create','录入内容,ID:93','123.116.73.48','1494754987');
INSERT INTO `bage_admin_logger` VALUES('661','1','update','/index.php?r=admini/post/update&id=93','编辑内容,ID:93','123.116.73.48','1494755655');
INSERT INTO `bage_admin_logger` VALUES('662','1','update','/index.php?r=admini/post/update&id=93','编辑内容,ID:93','123.116.73.48','1494755949');
INSERT INTO `bage_admin_logger` VALUES('663','1','update','/index.php?r=admini/post/update&id=89','编辑内容,ID:89','123.116.73.48','1494756118');
INSERT INTO `bage_admin_logger` VALUES('664','1','update','/index.php?r=admini/post/update&id=93','编辑内容,ID:93','123.116.73.48','1494756471');
INSERT INTO `bage_admin_logger` VALUES('665','1','update','/index.php?r=admini/post/update&id=93','编辑内容,ID:93','123.116.73.48','1494756518');
INSERT INTO `bage_admin_logger` VALUES('666','1','login','/index.php?r=admini/public/login','用户登录成功:admin','203.86.47.85','1494986184');
INSERT INTO `bage_admin_logger` VALUES('667','1','login','/index.php?r=admini/public/login','用户登录成功:admin','203.86.47.85','1494986184');
INSERT INTO `bage_admin_logger` VALUES('668','1','create','/index.php?r=admini/post/create','录入内容,ID:94','203.86.47.85','1494986396');
INSERT INTO `bage_admin_logger` VALUES('669','1','login','/index.php?r=admini/public/login','用户登录成功:admin','203.86.47.85','1495426593');
INSERT INTO `bage_admin_logger` VALUES('670','1','login','/index.php?r=admini/public/login','用户登录成功:admin','203.86.47.85','1495426594');
INSERT INTO `bage_admin_logger` VALUES('671','1','login','/index.php?r=admini/public/login','用户登录成功:admin','203.86.47.85','1495783945');
INSERT INTO `bage_admin_logger` VALUES('672','1','login','/index.php?r=admini/public/login','用户登录成功:admin','203.86.47.85','1495783946');
INSERT INTO `bage_admin_logger` VALUES('673','1','login','/index.php?r=admini/public/login','用户登录成功:admin','123.116.75.177','1496581321');
INSERT INTO `bage_admin_logger` VALUES('674','1','login','/index.php?r=admini/public/login','用户登录成功:admin','123.116.75.177','1496581322');
INSERT INTO `bage_admin_logger` VALUES('675','1','create','/index.php?r=admini/post/create','录入内容,ID:95','123.116.75.177','1496581838');
INSERT INTO `bage_admin_logger` VALUES('676','1','login','/index.php?r=admini/public/login','用户登录成功:admin','123.116.75.177','1496582026');
INSERT INTO `bage_admin_logger` VALUES('677','1','update','/index.php?r=admini/post/update&id=95','编辑内容,ID:95','123.116.75.177','1496594254');
INSERT INTO `bage_admin_logger` VALUES('678','1','login','/index.php?r=admini/public/login','用户登录成功:admin','203.86.47.85','1496735424');
INSERT INTO `bage_admin_logger` VALUES('679','1','update','/index.php?r=admini/post/update&id=91','编辑内容,ID:91','203.86.47.85','1496736303');
INSERT INTO `bage_admin_logger` VALUES('680','1','update','/index.php?r=admini/post/update&id=95','编辑内容,ID:95','203.86.47.85','1496740615');
INSERT INTO `bage_admin_logger` VALUES('681','1','update','/index.php?r=admini/post/update&id=91','编辑内容,ID:91','203.86.47.85','1496740738');
INSERT INTO `bage_admin_logger` VALUES('682','1','login','/index.php?r=admini/public/login','用户登录成功:admin','203.86.47.85','1496745250');
INSERT INTO `bage_admin_logger` VALUES('683','1','login','/index.php?r=admini/public/login','用户登录成功:admin','203.86.47.85','1496745255');
INSERT INTO `bage_admin_logger` VALUES('684','1','login','/index.php?r=admini/public/login','用户登录成功:admin','203.86.47.85','1496745256');
INSERT INTO `bage_admin_logger` VALUES('685','1','update','/index.php?r=admini/post/update&id=95','编辑内容,ID:95','203.86.47.85','1496745375');
INSERT INTO `bage_admin_logger` VALUES('686','1','login','/index.php?r=admini/public/login','用户登录成功:admin','203.86.47.85','1496745787');
INSERT INTO `bage_admin_logger` VALUES('687','1','update','/index.php?r=admini/post/update&id=95','编辑内容,ID:95','203.86.47.85','1496746357');
INSERT INTO `bage_admin_logger` VALUES('688','1','login','/index.php?r=admini/public/login','用户登录成功:admin','203.86.47.85','1496800726');
INSERT INTO `bage_admin_logger` VALUES('689','1','login','/index.php?r=admini/public/login','用户登录成功:admin','203.86.47.85','1496800726');
INSERT INTO `bage_admin_logger` VALUES('690','1','login','/index.php?r=admini/public/login','用户登录成功:admin','123.116.87.10','1497023195');
INSERT INTO `bage_admin_logger` VALUES('691','1','login','/index.php?r=admini/public/login','用户登录成功:admin','123.116.87.10','1497023196');
INSERT INTO `bage_admin_logger` VALUES('692','1','login','/index.php?r=admini/public/login','用户登录成功:admin','123.116.87.10','1497023198');
INSERT INTO `bage_admin_logger` VALUES('693','1','create','/index.php?r=admini/post/create','录入内容,ID:96','123.116.87.10','1497023411');
INSERT INTO `bage_admin_logger` VALUES('694','1','update','/index.php?r=admini/post/update&id=96','编辑内容,ID:96','123.116.87.10','1497023808');
INSERT INTO `bage_admin_logger` VALUES('695','1','login','/index.php?r=admini/public/login','用户登录成功:admin','123.116.87.10','1497076748');
INSERT INTO `bage_admin_logger` VALUES('696','1','login','/index.php?r=admini/public/login','用户登录成功:admin','123.116.87.10','1497076749');
INSERT INTO `bage_admin_logger` VALUES('697','1','login','/index.php?r=admini/public/login','用户登录成功:admin','123.116.87.10','1497092087');
INSERT INTO `bage_admin_logger` VALUES('698','1','login','/index.php?r=admini/public/login','用户登录成功:admin','123.116.87.10','1497147987');
INSERT INTO `bage_admin_logger` VALUES('699','1','login','/index.php?r=admini/public/login','用户登录成功:admin','203.86.47.85','1497250079');
INSERT INTO `bage_admin_logger` VALUES('700','1','login','/index.php?r=admini/public/login','用户登录成功:admin','203.86.47.85','1497250079');
INSERT INTO `bage_admin_logger` VALUES('701','1','login','/index.php?r=admini/public/login','用户登录成功:admin','203.86.47.85','1497409589');
INSERT INTO `bage_admin_logger` VALUES('702','1','login','/index.php?r=admini/public/login','用户登录成功:admin','203.86.47.85','1497837213');
INSERT INTO `bage_admin_logger` VALUES('703','1','update','/index.php?r=admini/post/update&id=94','编辑内容,ID:94','203.86.47.85','1497837756');
INSERT INTO `bage_admin_logger` VALUES('704','1','update','/index.php?r=admini/post/update&id=94','编辑内容,ID:94','203.86.47.85','1497838293');
INSERT INTO `bage_admin_logger` VALUES('705','1','login','/index.php?r=admini/public/login','用户登录成功:admin','203.86.47.85','1497839887');
INSERT INTO `bage_admin_logger` VALUES('706','1','login','/index.php?r=admini/public/login','用户登录成功:admin','203.86.47.85','1497839888');
INSERT INTO `bage_admin_logger` VALUES('707','1','update','/index.php?r=admini/post/update&id=94','编辑内容,ID:94','203.86.47.85','1497840095');
INSERT INTO `bage_admin_logger` VALUES('708','1','update','/index.php?r=admini/post/update&id=94','编辑内容,ID:94','203.86.47.85','1497840227');
INSERT INTO `bage_admin_logger` VALUES('709','1','login','/index.php?r=admini/public/login','用户登录成功:admin','203.86.47.85','1497867188');
INSERT INTO `bage_admin_logger` VALUES('710','1','login','/index.php?r=admini/public/login','用户登录成功:admin','203.86.47.85','1497922489');
INSERT INTO `bage_admin_logger` VALUES('711','1','update','/index.php?r=admini/post/update&id=94','编辑内容,ID:94','203.86.47.85','1497922548');
INSERT INTO `bage_admin_logger` VALUES('712','1','update','/index.php?r=admini/post/update&id=89','编辑内容,ID:89','203.86.47.85','1497923166');
INSERT INTO `bage_admin_logger` VALUES('713','1','update','/index.php?r=admini/post/update&id=89','编辑内容,ID:89','203.86.47.85','1497923234');
INSERT INTO `bage_admin_logger` VALUES('714','1','update','/index.php?r=admini/post/update&id=89','编辑内容,ID:89','203.86.47.85','1497923311');
INSERT INTO `bage_admin_logger` VALUES('715','1','delete','/index.php?r=admini/post/batch','删除内容，ID:7,6','203.86.47.85','1497923372');
INSERT INTO `bage_admin_logger` VALUES('716','1','update','/index.php?r=admini/catalog/update&id=19','编辑全局分类,ID:19,名称：我的游记','203.86.47.85','1497923408');
INSERT INTO `bage_admin_logger` VALUES('717','1','update','/index.php?r=admini/post/update&id=92','编辑内容,ID:92','203.86.47.85','1497923473');
INSERT INTO `bage_admin_logger` VALUES('718','1','update','/index.php?r=admini/post/update&id=92','编辑内容,ID:92','203.86.47.85','1497923528');
INSERT INTO `bage_admin_logger` VALUES('719','1','login','/index.php?r=admini/public/login','用户登录成功:admin','203.86.47.85','1498011726');
INSERT INTO `bage_admin_logger` VALUES('720','1','login','/index.php?r=admini/public/login','用户登录成功:admin','203.86.47.85','1498011732');
INSERT INTO `bage_admin_logger` VALUES('721','1','login','/index.php?r=admini/public/login','用户登录成功:admin','203.86.47.85','1498111080');
INSERT INTO `bage_admin_logger` VALUES('722','1','login','/index.php?r=admini/public/login','用户登录成功:admin','203.86.47.85','1498203930');
INSERT INTO `bage_admin_logger` VALUES('723','1','login','/index.php?r=admini/public/login','用户登录成功:admin','123.116.75.243','1498399034');
INSERT INTO `bage_admin_logger` VALUES('724','1','login','/index.php?r=admini/public/login','用户登录成功:admin','123.116.75.243','1498399034');
INSERT INTO `bage_admin_logger` VALUES('725','1','delete','/index.php?r=admini/post/batch&command=delete&id=88','删除内容，ID:88','123.116.75.243','1498399104');
INSERT INTO `bage_admin_logger` VALUES('726','1','login','/index.php?r=admini/public/login','用户登录成功:admin','203.86.47.85','1498620586');
INSERT INTO `bage_admin_logger` VALUES('727','1','login','/index.php?r=admini/public/login','用户登录成功:admin','203.86.47.85','1498620586');
INSERT INTO `bage_admin_logger` VALUES('728','1','login','/index.php?r=admini/public/login','用户登录成功:admin','203.86.47.85','1498620594');
INSERT INTO `bage_admin_logger` VALUES('729','1','login','/index.php?r=admini/public/login','用户登录成功:admin','203.86.47.85','1498620598');
INSERT INTO `bage_admin_logger` VALUES('730','1','login','/index.php?r=admini/public/login','用户登录成功:admin','23.95.113.157','1502679018');
INSERT INTO `bage_admin_logger` VALUES('731','1','login','/index.php?r=admini/public/login','用户登录成功:admin','23.95.113.157','1502679018');
INSERT INTO `bage_admin_logger` VALUES('732','1','login','/index.php?r=admini/public/login','用户登录成功:admin','203.86.47.85','1505180990');
INSERT INTO `bage_admin_logger` VALUES('733','1','login','/index.php?r=admini/public/login','用户登录成功:admin','203.86.47.85','1505181018');
INSERT INTO `bage_admin_logger` VALUES('734','1','login','/index.php?r=admini/public/login','用户登录成功:admin','203.86.47.85','1505181018');
INSERT INTO `bage_admin_logger` VALUES('735','1','login','/index.php?r=admini/public/login','用户登录成功:admin','121.69.48.140','1509264916');
INSERT INTO `bage_admin_logger` VALUES('736','1','login','/index.php?r=admini/public/login','用户登录成功:admin','123.116.94.52','1512217722');
INSERT INTO `bage_admin_logger` VALUES('737','1','create','/index.php?r=admini/post/create','录入内容,ID:97','123.116.94.52','1512223240');
INSERT INTO `bage_admin_logger` VALUES('738','1','update','/index.php?r=admini/post/update&id=97','编辑内容,ID:97','123.116.94.52','1512227949');
INSERT INTO `bage_admin_logger` VALUES('739','1','login','/index.php?r=admini/public/login','用户登录成功:admin','123.116.94.52','1512278506');
INSERT INTO `bage_admin_logger` VALUES('740','1','login','/index.php?r=admini/public/login','用户登录成功:admin','123.116.94.52','1512278507');
INSERT INTO `bage_admin_logger` VALUES('741','1','login','/index.php?r=admini/public/login','用户登录成功:admin','203.86.47.85','1514184929');
INSERT INTO `bage_admin_logger` VALUES('742','1','create','/index.php?r=admini/post/create','录入内容,ID:98','203.86.47.85','1514185011');
INSERT INTO `bage_admin_logger` VALUES('743','1','login','/index.php?r=admini/public/login','用户登录成功:admin','123.116.90.124','1514215998');
INSERT INTO `bage_admin_logger` VALUES('744','1','update','/index.php?r=admini/post/update&id=98','编辑内容,ID:98','123.116.90.124','1514216041');
INSERT INTO `bage_admin_logger` VALUES('745','1','login','/index.php?r=admini/public/login','用户登录成功:admin','123.116.64.186','1515254534');
INSERT INTO `bage_admin_logger` VALUES('746','1','delete','/index.php?r=admini/post/batch&command=delete&id=91','删除内容，ID:91','123.116.64.186','1515254593');
INSERT INTO `bage_admin_logger` VALUES('747','0','login','/index.php?r=admini/public/login','登录失败，密码不正确:admin，使用密码：tanjian421302+','183.156.36.11','1515636397');
INSERT INTO `bage_admin_logger` VALUES('748','0','login','/index.php?r=admini/public/login','登录失败，密码不正确:admin，使用密码：tanjian421302+','183.156.36.11','1515636397');
INSERT INTO `bage_admin_logger` VALUES('749','1','login','/index.php?r=admini/public/login','用户登录成功:admin','183.156.36.11','1515636414');
INSERT INTO `bage_admin_logger` VALUES('750','1','create','/index.php?r=admini/post/create','录入内容,ID:99','183.156.36.11','1515636582');
INSERT INTO `bage_admin_logger` VALUES('751','1','login','/index.php?r=admini/public/login','用户登录成功:admin','183.157.45.243','1516367866');
INSERT INTO `bage_admin_logger` VALUES('752','1','delete','/index.php?r=admini/post/batch&command=delete&id=99','删除内容，ID:99','183.157.45.243','1516367912');
INSERT INTO `bage_admin_logger` VALUES('753','1','create','/index.php?r=admini/post/create','录入内容,ID:100','183.157.45.243','1516376327');
INSERT INTO `bage_admin_logger` VALUES('754','1','login','/index.php?r=admini/public/login','用户登录成功:admin','183.157.47.170','1516610138');
INSERT INTO `bage_admin_logger` VALUES('755','1','login','/index.php?r=admini/public/login','用户登录成功:admin','183.157.47.170','1516610139');
INSERT INTO `bage_admin_logger` VALUES('756','1','delete','/index.php?r=admini/attr/batch&command=delete&id=5','属性删除，ID:5','183.157.47.170','1516623333');
INSERT INTO `bage_admin_logger` VALUES('757','1','update','/index.php?r=admini/operation/adUpdate&id=2','编辑广告，ID:2','183.157.47.170','1516623374');
INSERT INTO `bage_admin_logger` VALUES('758','1','update','/index.php?r=admini/catalog/update&id=19','编辑全局分类,ID:19,名称：我的游记','183.157.47.170','1516623625');
INSERT INTO `bage_admin_logger` VALUES('759','1','delete','/index.php?r=admini/catalog/batch&command=delete&id=11','删除全局分类，ID:11','183.157.47.170','1516623837');
INSERT INTO `bage_admin_logger` VALUES('760','1','update','/index.php?r=admini/config/seo','更新系统配置，模块：seo','183.157.47.170','1516624198');
INSERT INTO `bage_admin_logger` VALUES('761','1','update','/index.php?r=admini/post/commentUpdate&id=23','编辑内容评论，ID:23','183.157.47.170','1516625833');
INSERT INTO `bage_admin_logger` VALUES('762','1','update','/index.php?r=admini/post/update&id=100','编辑内容,ID:100','183.157.47.170','1516628011');
INSERT INTO `bage_admin_logger` VALUES('763','1','update','/index.php?r=admini/post/update&id=98','编辑内容,ID:98','183.157.47.170','1516628161');
INSERT INTO `bage_admin_logger` VALUES('764','1','update','/index.php?r=admini/post/update&id=98','编辑内容,ID:98','183.157.47.170','1516628162');
INSERT INTO `bage_admin_logger` VALUES('765','1','update','/index.php?r=admini/catalog/update&id=18','编辑全局分类,ID:18,名称：每周笔记','183.157.47.170','1516635552');
INSERT INTO `bage_admin_logger` VALUES('766','1','update','/index.php?r=admini/post/update&id=93','编辑内容,ID:93','183.157.47.170','1516635649');
INSERT INTO `bage_admin_logger` VALUES('767','0','login','/index.php?r=admini/public/login','登录失败，用户不存在:root','36.23.181.104','1516773738');
INSERT INTO `bage_admin_logger` VALUES('768','1','login','/index.php?r=admini/public/login','用户登录成功:admin','36.23.181.104','1516773783');
INSERT INTO `bage_admin_logger` VALUES('769','1','delete','/index.php?r=admini/post/batch&command=delete&id=94','删除内容，ID:94','36.23.181.104','1516773799');
INSERT INTO `bage_admin_logger` VALUES('770','1','update','/index.php?r=admini/post/update&id=96','编辑内容,ID:96','36.23.181.104','1516773871');
INSERT INTO `bage_admin_logger` VALUES('771','1','update','/index.php?r=admini/post/update&id=96','编辑内容,ID:96','36.23.181.104','1516774216');
INSERT INTO `bage_admin_logger` VALUES('772','1','update','/index.php?r=admini/post/update&id=97','编辑内容,ID:97','36.23.181.104','1516774476');
INSERT INTO `bage_admin_logger` VALUES('773','1','login','/index.php?r=admini/public/login','用户登录成功:admin','183.157.57.30','1516978484');
INSERT INTO `bage_admin_logger` VALUES('774','0','login','/index.php?r=admini/public/login','登录失败，密码不正确:admin，使用密码：654321','183.157.57.30','1516978488');
INSERT INTO `bage_admin_logger` VALUES('775','1','login','/index.php?r=admini/public/login','用户登录成功:admin','183.157.57.30','1516978512');
INSERT INTO `bage_admin_logger` VALUES('776','1','create','/index.php?r=admini/post/create','录入内容,ID:101','183.157.57.30','1516978624');
INSERT INTO `bage_admin_logger` VALUES('777','1','update','/index.php?r=admini/post/update&id=101','编辑内容,ID:101','183.157.57.30','1516978912');
INSERT INTO `bage_admin_logger` VALUES('778','1','update','/index.php?r=admini/post/update&id=101','编辑内容,ID:101','183.157.57.30','1516979099');
INSERT INTO `bage_admin_logger` VALUES('779','1','update','/index.php?r=admini/post/update&id=101','编辑内容,ID:101','183.157.57.30','1516979149');
INSERT INTO `bage_admin_logger` VALUES('780','1','update','/index.php?r=admini/post/update&id=101','编辑内容,ID:101','183.157.57.30','1516979207');
INSERT INTO `bage_admin_logger` VALUES('781','1','update','/index.php?r=admini/post/update&id=101','编辑内容,ID:101','183.157.57.30','1516979572');
INSERT INTO `bage_admin_logger` VALUES('782','1','update','/index.php?r=admini/post/update&id=101','编辑内容,ID:101','183.157.57.30','1516979607');

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


DROP TABLE IF EXISTS `bage_attr_val`;
CREATE TABLE `bage_attr_val` (
  `val_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '内容编号',
  `attr_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '属性编号',
  `attr_name` varchar(60) NOT NULL DEFAULT '' COMMENT '属性名称',
  `attr_val` text COMMENT '属性内容',
  PRIMARY KEY (`val_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='属性内容';


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
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=223 DEFAULT CHARSET=utf8;

INSERT INTO `bage_bill` VALUES('1','10','16','8','130','物美超市购买生活用品和下周的晚饭菜等','154','2015-06-28');
INSERT INTO `bage_bill` VALUES('2','10','35','2','1','null','38','2015-06-29');
INSERT INTO `bage_bill` VALUES('3','10','33','2','1','','36','2015-06-30');
INSERT INTO `bage_bill` VALUES('4','10','21','5','1','','27','2015-07-01');
INSERT INTO `bage_bill` VALUES('5','10','21','10','1','','32','2015-07-02');
INSERT INTO `bage_bill` VALUES('6','10','17','7','170','','194','2015-07-12');
INSERT INTO `bage_bill` VALUES('7','10','20','17','65','','102','2015-07-21');
INSERT INTO `bage_bill` VALUES('8','10','30','20','120','买衣服','170','2015-08-04');
INSERT INTO `bage_bill` VALUES('9','10','13','1','1','','15','2015-08-03');
INSERT INTO `bage_bill` VALUES('10','10','38','1','1','','40','2015-08-05');
INSERT INTO `bage_bill` VALUES('11','10','18','1','321','买鞋','340','2015-08-06');
INSERT INTO `bage_bill` VALUES('12','10','30','4','1','','35','2015-08-07');
INSERT INTO `bage_bill` VALUES('13','10','3','1','1','','5','2015-08-08');
INSERT INTO `bage_bill` VALUES('14','10','11','13','60','买桌子60','84','2015-08-09');
INSERT INTO `bage_bill` VALUES('15','10','35','5','16','饮料和沐浴露','56','2015-08-10');
INSERT INTO `bage_bill` VALUES('16','10','27','10','2','可乐','39','2015-08-11');
INSERT INTO `bage_bill` VALUES('17','10','23','10','0','','33','2015-08-12');
INSERT INTO `bage_bill` VALUES('18','10','22','7','16','超市购买水果','45','2015-08-13');
INSERT INTO `bage_bill` VALUES('19','10','23','10','0','','33','2015-08-14');
INSERT INTO `bage_bill` VALUES('20','10','0','8','47','超市买牛肉等','55','2015-08-16');
INSERT INTO `bage_bill` VALUES('21','10','34','8','0','','42','2015-08-17');
INSERT INTO `bage_bill` VALUES('22','10','16','65','0','','81','2015-08-19');
INSERT INTO `bage_bill` VALUES('23','10','34','30','0','打车费21','64','2015-08-20');
INSERT INTO `bage_bill` VALUES('24','10','24','0','0','','24','2015-08-21');
INSERT INTO `bage_bill` VALUES('25','10','26','0','0','','26','2015-08-22');
INSERT INTO `bage_bill` VALUES('26','10','140','0','0','心情不好请大家吃饭。','140','2015-08-23');
INSERT INTO `bage_bill` VALUES('27','10','36','5','0','','41','2015-08-27');
INSERT INTO `bage_bill` VALUES('28','10','18','5','34','超市买水果','57','2015-08-28');
INSERT INTO `bage_bill` VALUES('29','10','4','10','0','','14','2015-08-29');
INSERT INTO `bage_bill` VALUES('30','10','15','10','52','超市购买牛奶等','77','2015-08-30');
INSERT INTO `bage_bill` VALUES('31','10','33','5','0','','38','2015-08-31');
INSERT INTO `bage_bill` VALUES('32','10','34','10','0','','44','2015-09-01');
INSERT INTO `bage_bill` VALUES('33','10','23','10','0','','33','2015-09-06');
INSERT INTO `bage_bill` VALUES('34','10','30','0','0','','30','2015-09-07');
INSERT INTO `bage_bill` VALUES('35','10','15','5','0','','20','2015-09-09');
INSERT INTO `bage_bill` VALUES('36','10','34','10','0','','44','2015-09-10');
INSERT INTO `bage_bill` VALUES('37','10','22','10','225','手机套和衣服','257','2015-09-12');
INSERT INTO `bage_bill` VALUES('38','10','15','0','130','130登山杖','145','2015-09-13');
INSERT INTO `bage_bill` VALUES('39','10','18','10','0','','28','2015-09-21');
INSERT INTO `bage_bill` VALUES('40','10','32','6','0','','38','2016-03-23');
INSERT INTO `bage_bill` VALUES('41','10','32','13','70','看电影','115','2016-03-27');
INSERT INTO `bage_bill` VALUES('42','10','36','0','7','','43','2016-04-05');
INSERT INTO `bage_bill` VALUES('43','10','51','6','0','没有啦','57','2016-04-06');
INSERT INTO `bage_bill` VALUES('44','10','49','6','20','水果','75','2016-04-07');
INSERT INTO `bage_bill` VALUES('45','10','50','6','0','','56','2016-04-08');
INSERT INTO `bage_bill` VALUES('46','10','40','11','158','去了趟超市','209','2016-04-09');
INSERT INTO `bage_bill` VALUES('47','10','0','21','0','','21','2016-04-10');
INSERT INTO `bage_bill` VALUES('48','10','49','6','0','','55','2016-04-11');
INSERT INTO `bage_bill` VALUES('49','10','78','7','0','','85','2016-04-13');
INSERT INTO `bage_bill` VALUES('50','10','53','0','0','','53','2016-04-14');
INSERT INTO `bage_bill` VALUES('51','10','27','18','100','地铁充值100','145','2016-04-15');
INSERT INTO `bage_bill` VALUES('52','10','15','12','130','和朋友出去玩吃饭','157','2016-04-17');
INSERT INTO `bage_bill` VALUES('53','10','69','15','5000','信用卡还款','5084','2016-04-18');
INSERT INTO `bage_bill` VALUES('54','10','60','17','5','打针','82','2016-04-19');
INSERT INTO `bage_bill` VALUES('55','10','17','8','15','注射和财付通','40','2016-04-23');
INSERT INTO `bage_bill` VALUES('56','10','25','1','100','食堂充卡108','126','2016-04-25');
INSERT INTO `bage_bill` VALUES('57','10','79','0','0','','79','2016-04-26');
INSERT INTO `bage_bill` VALUES('58','10','20','271','150','请朋友吃饭和打火车到大连考试','441','2016-05-13');
INSERT INTO `bage_bill` VALUES('59','10','20','261','630','买回京车票释放压力，住宿130','911','2016-05-14');
INSERT INTO `bage_bill` VALUES('60','10','24','5','110','请吃饭110','139','2016-05-27');
INSERT INTO `bage_bill` VALUES('61','10','33','5','0','','38','2016-05-28');
INSERT INTO `bage_bill` VALUES('62','10','18','5','0','','23','2016-05-29');
INSERT INTO `bage_bill` VALUES('63','10','16','15','230','请周卓大排档130和买衬衫100','261','2016-06-05');
INSERT INTO `bage_bill` VALUES('64','10','24','10','39','和兴旺看X战警','73','2016-06-06');
INSERT INTO `bage_bill` VALUES('65','10','15','10','90','看电影吃饭','115','2016-06-08');
INSERT INTO `bage_bill` VALUES('66','10','25','10','135','请大家吃饭135','170','2016-06-10');
INSERT INTO `bage_bill` VALUES('67','10','39','10','10','','59','2016-07-12');
INSERT INTO `bage_bill` VALUES('68','10','18','8','0','','26','2016-07-20');
INSERT INTO `bage_bill` VALUES('69','10','0','250','570','0','820','2016-07-23');
INSERT INTO `bage_bill` VALUES('70','10','110','10','0','和马吃烧烤80','120','2016-08-19');
INSERT INTO `bage_bill` VALUES('71','10','220','10','5','买','235','2016-09-09');
INSERT INTO `bage_bill` VALUES('72','10','35','10','0','0','45','2016-09-08');
INSERT INTO `bage_bill` VALUES('73','10','0','0','0','0','0','2016-09-10');
INSERT INTO `bage_bill` VALUES('74','10','46','10','0','','56','2016-09-12');
INSERT INTO `bage_bill` VALUES('75','10','21','11','0','','32','2016-09-13');
INSERT INTO `bage_bill` VALUES('76','10','37','10','1300','购买衣服和鞋子1300','1347','2016-10-02');
INSERT INTO `bage_bill` VALUES('77','10','53','8','0','','61','2016-10-21');
INSERT INTO `bage_bill` VALUES('78','10','48','20','0','1300','68','2016-10-23');
INSERT INTO `bage_bill` VALUES('79','10','54','5','0','','59','2016-10-27');
INSERT INTO `bage_bill` VALUES('80','10','30','11','0','','41','2016-11-04');
INSERT INTO `bage_bill` VALUES('81','10','38','10','0','','48','2016-11-15');
INSERT INTO `bage_bill` VALUES('82','10','25','10','0','','35','2016-12-05');
INSERT INTO `bage_bill` VALUES('83','10','22','0','0','0','22','2016-12-06');
INSERT INTO `bage_bill` VALUES('84','10','45','0','28','','73','2016-12-07');
INSERT INTO `bage_bill` VALUES('85','10','56','10','15','coffee','81','2016-12-08');
INSERT INTO `bage_bill` VALUES('86','10','28','0','0','0','28','2016-12-11');
INSERT INTO `bage_bill` VALUES('87','10','50','0','0','0','50','2016-12-10');
INSERT INTO `bage_bill` VALUES('88','10','71','10','0','','81','2016-12-12');
INSERT INTO `bage_bill` VALUES('89','10','35','0','0','','35','2016-12-15');
INSERT INTO `bage_bill` VALUES('90','10','83','10','0','','93','2016-12-14');
INSERT INTO `bage_bill` VALUES('91','10','3','10','100','交通卡充值100','113','2016-12-17');
INSERT INTO `bage_bill` VALUES('92','10','58','0','0','','58','2016-12-18');
INSERT INTO `bage_bill` VALUES('93','10','51','15','1070','中关村配眼镜-1070','1136','2016-12-20');
INSERT INTO `bage_bill` VALUES('94','10','44','0','100','嘴唇上火看医生加上最近失眠看doctor消费100元','144','2016-12-21');
INSERT INTO `bage_bill` VALUES('95','10','68','0','0','','68','2016-12-22');
INSERT INTO `bage_bill` VALUES('96','10','55','10','0','','65','2016-12-23');
INSERT INTO `bage_bill` VALUES('97','10','57','0','0','','57','2016-12-24');
INSERT INTO `bage_bill` VALUES('98','10','24','0','0','0','24','2016-12-25');
INSERT INTO `bage_bill` VALUES('99','10','59','11','1450','换表带20，京东购买送自己的2016年的礼物1430','1520','2016-12-26');
INSERT INTO `bage_bill` VALUES('100','10','38','0','48','买些水果和写字板等48','86','2016-12-27');
INSERT INTO `bage_bill` VALUES('101','10','53','10','25','超市购买水等等','88','2016-12-28');
INSERT INTO `bage_bill` VALUES('102','10','0','0','1','','1','2016-12-30');
INSERT INTO `bage_bill` VALUES('103','10','0','7','2','共享单车2元','9','2016-12-31');
INSERT INTO `bage_bill` VALUES('104','10','26','2','0','','28','2017-01-01');
INSERT INTO `bage_bill` VALUES('105','10','10','2','0','35','12','2017-01-02');
INSERT INTO `bage_bill` VALUES('106','10','12','11','0','','23','2017-01-03');
INSERT INTO `bage_bill` VALUES('107','10','46','12','0','','58','2017-01-04');
INSERT INTO `bage_bill` VALUES('108','10','0','1','1','','2','2017-01-05');
INSERT INTO `bage_bill` VALUES('109','10','53','12','0','','65','2017-01-06');
INSERT INTO `bage_bill` VALUES('110','10','24','2','0','','26','2017-01-07');
INSERT INTO `bage_bill` VALUES('111','10','27','13','0','','40','2017-01-09');
INSERT INTO `bage_bill` VALUES('112','10','38','10','7','日用品','55','2017-01-10');
INSERT INTO `bage_bill` VALUES('113','10','21','3','4','网吧上网4','28','2017-01-11');
INSERT INTO `bage_bill` VALUES('114','10','38','20','0','','58','2017-01-12');
INSERT INTO `bage_bill` VALUES('115','10','30','600','0','高铁500','630','2017-01-24');
INSERT INTO `bage_bill` VALUES('116','10','10','0','1600','买衣服','1610','2017-01-26');
INSERT INTO `bage_bill` VALUES('117','10','50','10','300','超市购买做饭工具等','360','2017-02-05');
INSERT INTO `bage_bill` VALUES('118','10','54','10','0','','64','2017-02-06');
INSERT INTO `bage_bill` VALUES('119','10','31','10','0','','41','2017-02-08');
INSERT INTO `bage_bill` VALUES('120','10','23','15','260','超市购买下周的牛奶等等生活必备。','298','2017-02-11');
INSERT INTO `bage_bill` VALUES('121','10','5','10','100','充值公交卡','115','2017-02-12');
INSERT INTO `bage_bill` VALUES('122','10','45','10','0','','55','2017-02-14');
INSERT INTO `bage_bill` VALUES('123','10','32','10','18','','60','2017-02-17');
INSERT INTO `bage_bill` VALUES('124','10','18','0','0','','18','2017-02-18');
INSERT INTO `bage_bill` VALUES('125','10','17','0','36','超市水果','53','2017-02-19');
INSERT INTO `bage_bill` VALUES('126','10','50','10','0','','60','2017-02-20');
INSERT INTO `bage_bill` VALUES('127','10','39','10','0','','49','2017-02-21');
INSERT INTO `bage_bill` VALUES('128','10','0','15','130','聚餐','145','2017-02-25');
INSERT INTO `bage_bill` VALUES('129','10','11','10','210','买毛衣','231','2017-02-28');
INSERT INTO `bage_bill` VALUES('130','10','51','10','0','','61','2017-03-02');
INSERT INTO `bage_bill` VALUES('131','10','56','10','0','','66','2017-03-07');
INSERT INTO `bage_bill` VALUES('132','10','53','10','0','','63','2017-03-09');
INSERT INTO `bage_bill` VALUES('133','10','45','10','0','','55','2017-03-15');
INSERT INTO `bage_bill` VALUES('134','10','56','10','179','买衣服','245','2017-03-16');
INSERT INTO `bage_bill` VALUES('135','10','20','10','200','','230','2017-03-20');
INSERT INTO `bage_bill` VALUES('136','10','30','10','0','','40','2017-03-22');
INSERT INTO `bage_bill` VALUES('137','10','33','10','50','注销189号码补交欠费','93','2017-03-23');
INSERT INTO `bage_bill` VALUES('138','10','0','10','70','周黑鸭70','80','2017-03-26');
INSERT INTO `bage_bill` VALUES('139','10','41','10','0','','51','2017-03-27');
INSERT INTO `bage_bill` VALUES('140','10','26','10','0','0','36','2017-03-28');
INSERT INTO `bage_bill` VALUES('141','10','15','10','0','','25','2017-03-31');
INSERT INTO `bage_bill` VALUES('142','10','22','0','0','','22','2017-04-08');
INSERT INTO `bage_bill` VALUES('143','10','46','10','0','','56','2017-04-10');
INSERT INTO `bage_bill` VALUES('144','10','49','10','120','超市购买生活用品','179','2017-04-26');
INSERT INTO `bage_bill` VALUES('145','10','43','10','0','','53','2017-05-02');
INSERT INTO `bage_bill` VALUES('146','10','0','1','3','商店购买可乐3和共享单车1','4','2017-05-13');
INSERT INTO `bage_bill` VALUES('147','10','49','0','75','超市购买水果等和停车费20','124','2017-05-20');
INSERT INTO `bage_bill` VALUES('148','10','34','70','370','50超市，120汽车补胎，199电饭煲','474','2017-05-22');
INSERT INTO `bage_bill` VALUES('149','10','45','10','0','','55','2017-05-27');
INSERT INTO `bage_bill` VALUES('150','10','0','12','0','','12','2017-06-01');
INSERT INTO `bage_bill` VALUES('151','10','54','10','0','0','64','2017-06-02');
INSERT INTO `bage_bill` VALUES('152','10','5','0','0','0','5','2017-06-03');
INSERT INTO `bage_bill` VALUES('153','10','20','0','102','超市购买下周口粮','122','2017-06-04');
INSERT INTO `bage_bill` VALUES('154','10','62','10','0','','72','2017-06-05');
INSERT INTO `bage_bill` VALUES('155','10','38','10','0','0','48','2017-06-07');
INSERT INTO `bage_bill` VALUES('156','10','62','10','0','0','72','2017-06-08');
INSERT INTO `bage_bill` VALUES('157','10','55','10','0','0','65','2017-06-09');
INSERT INTO `bage_bill` VALUES('158','10','14','0','68','超市购买水果等','82','2017-06-11');
INSERT INTO `bage_bill` VALUES('159','10','34','10','0','','44','2017-06-13');
INSERT INTO `bage_bill` VALUES('160','10','30','10','10','咖啡','50','2017-06-14');
INSERT INTO `bage_bill` VALUES('161','10','40','10','0','','50','2017-06-15');
INSERT INTO `bage_bill` VALUES('162','10','39','10','0','','49','2017-06-16');
INSERT INTO `bage_bill` VALUES('163','10','11','0','325','买三条短裤','336','2017-06-17');
INSERT INTO `bage_bill` VALUES('164','10','39','10','0','','49','2017-06-19');
INSERT INTO `bage_bill` VALUES('165','10','56','10','0','','66','2017-06-21');
INSERT INTO `bage_bill` VALUES('166','10','54','10','0','','64','2017-06-22');
INSERT INTO `bage_bill` VALUES('167','10','0','10','29','和朋友出去玩kfc消费29','39','2017-06-24');
INSERT INTO `bage_bill` VALUES('168','10','34','0','30','理发30','64','2017-06-25');
INSERT INTO `bage_bill` VALUES('169','10','64','10','0','','74','2017-06-27');
INSERT INTO `bage_bill` VALUES('170','10','49','10','198','深马购买衣服','257','2017-06-26');
INSERT INTO `bage_bill` VALUES('171','10','18','6','22','0','46','2017-07-12');
INSERT INTO `bage_bill` VALUES('172','10','0','0','182','超市购买下周生活用品','182','2017-07-15');
INSERT INTO `bage_bill` VALUES('173','10','52','10','36','手表换表带30','98','2017-07-14');
INSERT INTO `bage_bill` VALUES('174','10','40','10','1200','给老板买手表1200','1250','2017-07-13');
INSERT INTO `bage_bill` VALUES('175','10','46','6','0','0','52','2017-07-27');
INSERT INTO `bage_bill` VALUES('176','10','61','10','0','','71','2017-09-01');
INSERT INTO `bage_bill` VALUES('177','10','41','10','0','0','51','2017-09-11');
INSERT INTO `bage_bill` VALUES('178','10','49','10','6','','65','2017-09-12');
INSERT INTO `bage_bill` VALUES('179','10','37','10','0','','47','2017-09-13');
INSERT INTO `bage_bill` VALUES('180','10','0','2','1000','买药700，换眼镜框300','1002','2017-09-17');
INSERT INTO `bage_bill` VALUES('181','10','49','10','0','0','59','2017-09-19');
INSERT INTO `bage_bill` VALUES('182','10','57','10','0','','67','2017-11-21');
INSERT INTO `bage_bill` VALUES('183','10','47','6','0','','53','2017-11-22');
INSERT INTO `bage_bill` VALUES('184','10','1','1','1','','3','2017-11-23');
INSERT INTO `bage_bill` VALUES('185','10','78','160','330','购买稻香村和住宿','568','2017-11-25');
INSERT INTO `bage_bill` VALUES('186','10','18','340','0','购买返程车票','358','2017-11-26');
INSERT INTO `bage_bill` VALUES('187','10','45','10','0','','55','2017-11-27');
INSERT INTO `bage_bill` VALUES('188','10','40','10','0','','50','2017-11-28');
INSERT INTO `bage_bill` VALUES('189','10','57','10','0','','67','2017-11-29');
INSERT INTO `bage_bill` VALUES('190','10','27','10','0','','37','2017-12-01');
INSERT INTO `bage_bill` VALUES('191','10','0','0','210','超市180，理发30','210','2017-12-02');
INSERT INTO `bage_bill` VALUES('192','10','14','10','0','','24','2017-12-03');
INSERT INTO `bage_bill` VALUES('193','10','30','7','0','','37','2017-12-04');
INSERT INTO `bage_bill` VALUES('194','10','45','7','0','','52','2017-12-05');
INSERT INTO `bage_bill` VALUES('195','10','34','7','0','','41','2017-12-06');
INSERT INTO `bage_bill` VALUES('196','10','17','7','60','两杯咖啡60','84','2017-12-08');
INSERT INTO `bage_bill` VALUES('197','10','32','10','0','','42','2017-12-09');
INSERT INTO `bage_bill` VALUES('198','10','22','0','0','','22','2017-12-10');
INSERT INTO `bage_bill` VALUES('199','10','30','7','0','','37','2017-12-12');
INSERT INTO `bage_bill` VALUES('200','10','26','7','31','咖啡','64','2017-12-13');
INSERT INTO `bage_bill` VALUES('201','10','43','7','31','咖啡','81','2017-12-14');
INSERT INTO `bage_bill` VALUES('202','10','74','100','0','','174','2017-12-16');
INSERT INTO `bage_bill` VALUES('203','10','55','7','0','','62','2017-12-17');
INSERT INTO `bage_bill` VALUES('204','10','40','7','0','','47','2017-12-19');
INSERT INTO `bage_bill` VALUES('205','10','255','0','0','聚餐255','255','2017-12-23');
INSERT INTO `bage_bill` VALUES('206','10','44','7','0','','51','2017-12-25');
INSERT INTO `bage_bill` VALUES('207','10','17','300','180','郑州住宿','497','2017-12-27');
INSERT INTO `bage_bill` VALUES('208','10','27','740','240','深圳住宿240','1007','2017-12-28');
INSERT INTO `bage_bill` VALUES('209','10','70','80','2200','租房子2000和超市购买生活用品','2350','2017-12-31');
INSERT INTO `bage_bill` VALUES('210','10','60','7','0','','67','2018-01-03');
INSERT INTO `bage_bill` VALUES('211','10','60','7','0','','67','2018-01-03');
INSERT INTO `bage_bill` VALUES('212','10','36','7','0','','43','2018-01-04');
INSERT INTO `bage_bill` VALUES('213','10','0','7','400','朋友聚餐','407','2018-01-07');
INSERT INTO `bage_bill` VALUES('214','10','50','30','350','寄送生活用品到杭州','430','2018-01-08');
INSERT INTO `bage_bill` VALUES('215','10','24','25','21','药','70','2018-01-09');
INSERT INTO `bage_bill` VALUES('216','10','32','0','75','超市购买生活用品','107','2018-01-13');
INSERT INTO `bage_bill` VALUES('217','10','45','3','0','','48','2018-01-14');
INSERT INTO `bage_bill` VALUES('218','10','44','6','0','','50','2018-01-17');
INSERT INTO `bage_bill` VALUES('219','10','46','0','0','','46','2018-01-18');
INSERT INTO `bage_bill` VALUES('220','10','64','10','117','充值公交卡100+买水果17','191','2018-01-19');
INSERT INTO `bage_bill` VALUES('221','10','31','1','11','11电费','43','2018-01-20');
INSERT INTO `bage_bill` VALUES('222','10','50','5','45','干洗衣服45','100','2018-01-21');

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
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 COMMENT='全局分类';

INSERT INTO `bage_catalog` VALUES('18','0','每周笔记','每周技术博客','weeklythinking','','','','','','','1','0','0','Y','N','','list','list_text','list_page','show_post','','','1487491955');
INSERT INTO `bage_catalog` VALUES('19','0','我的游记','mytravel','mytravel','','','','','','','2','0','0','Y','N','','list','list_text','list_page','show_post','','','1490152243');
INSERT INTO `bage_catalog` VALUES('2','1','公司动态','公司动态','company-news','公司动态栏目介绍','','','','','','0','0','0','Y','N','','list','list_text','list_page','show_post','','','1379545199');
INSERT INTO `bage_catalog` VALUES('3','1','行业新闻','行业新闻','industry-news','行业新闻栏目介绍','','','','','','0','0','0','Y','N','','list','list_text','list_page','show_post','','','1379545248');
INSERT INTO `bage_catalog` VALUES('5','4','新品上市','新品上市','new-arrival','新品上市栏目介绍','','','','','','0','0','0','Y','N','','list','list_goods','list_page','show_goods','','','1379545388');
INSERT INTO `bage_catalog` VALUES('6','4','特价商品','特价商品','sales-goods','特价商品栏目介绍','','','','','','0','0','0','Y','N','','list','list_goods','list_page','show_goods','','','1379545435');

DROP TABLE IF EXISTS `bage_config`;
CREATE TABLE `bage_config` (
  `scope` char(20) NOT NULL DEFAULT '' COMMENT '范围',
  `variable` varchar(50) NOT NULL COMMENT '变量',
  `value` text COMMENT '值',
  `description` varchar(255) NOT NULL DEFAULT '' COMMENT '描述',
  PRIMARY KEY (`variable`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='系统配置';

INSERT INTO `bage_config` VALUES('base','site_domain','http://www.vandin.net','');
INSERT INTO `bage_config` VALUES('base','admin_email','tann1013@gmail.com','');
INSERT INTO `bage_config` VALUES('base','site_icp','xxxxxxxx','');
INSERT INTO `bage_config` VALUES('base','site_closed_summary','系统维护中，请稍候......','');
INSERT INTO `bage_config` VALUES('base','site_stats','','');
INSERT INTO `bage_config` VALUES('base','seo_title','程序员|谭建的博客','');
INSERT INTO `bage_config` VALUES('base','seo_description','程序员|谭建的博客','');
INSERT INTO `bage_config` VALUES('base','seo_keywords','程序员|谭建的博客','');
INSERT INTO `bage_config` VALUES('base','admin_telephone','18606712910','');
INSERT INTO `bage_config` VALUES('base','site_status','open','');
INSERT INTO `bage_config` VALUES('base','site_status_intro','网站升级中..........rntann1013#hotmail.com','');
INSERT INTO `bage_config` VALUES('base','admin_logger','open','');
INSERT INTO `bage_config` VALUES('base','user_status','open','');
INSERT INTO `bage_config` VALUES('base','user_mail_verify','open','');
INSERT INTO `bage_config` VALUES('base','site_copyright','copyright © vandin.net','');
INSERT INTO `bage_config` VALUES('base','upload_water_size','100x100','');
INSERT INTO `bage_config` VALUES('base','upload_water_file','static/watermark.png','');
INSERT INTO `bage_config` VALUES('base','upload_water_status','close','');
INSERT INTO `bage_config` VALUES('base','upload_allow_ext','jpg,gif,bmp,jpeg,png,doc,zip,rar,7z,txt,sql,pdf','');
INSERT INTO `bage_config` VALUES('base','upload_max_size','200','');
INSERT INTO `bage_config` VALUES('base','upload_water_scope','100x100','');
INSERT INTO `bage_config` VALUES('base','upload_water_position','5','');
INSERT INTO `bage_config` VALUES('base','upload_water_padding','5','');
INSERT INTO `bage_config` VALUES('base','upload_water_trans','30','');
INSERT INTO `bage_config` VALUES('custom','_fasdf','fasfcccccccccccc','');

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

INSERT INTO `bage_page` VALUES('1','关于我们','','about','','','BageCms是一款基于php5+mysql5开发的多功能开源的网站内容管理系统。使用高性能的PHP5的web应用程序开发框架YII构建，具有操作简单、稳定、安全、高效、跨平台等特点。采用MVC设计模式，模板定制方便灵活，内置小挂工具，方便制作各类功能和效果，BageCms可用于企业建站、个人博客、资讯门户、图片站等各类型站点','<p>rn	BageCms是一款基于php5+mysql5开发的多功能开源的网站内容管理系统。使用高性能的PHP5的web应用程序开发框架YII构建，具有操作简单、稳定、安全、高效、跨平台等特点。采用MVC设计模式，模板定制方便灵活，内置小挂工具，方便制作各类功能和效果，BageCms可用于企业建站、个人博客、资讯门户、图片站等各类型站点。<br />rn<br />rn特点：<br />rn<br />rn1.开源免费<br />rn无论是个人还是企业展示型网站均可用本系统来完成<br />rn<br />rn2.数据调用方便快捷<br />rn自主研发的数据调用模块，能快速调用各类型数据，方便建站<br />rn<br />rn3.应用范围广<br />rn这套系统不是企业网站管理系统，也不是博客程序，更不是专业的图片管理系统，但它却具备大部分企业站、博客站、图片站的功能<br />rn<br />rn4.安全高性能<br />rn基于高性能的PHP5的web应用程序开发框架YII构建具有稳定、安全、高效、跨平台等特点<br />rn<br />rn5.URL自定义<br />rn系统支持自定义伪静态显示方式，良好的支持搜索引擎SEO。个性化设置每个栏目、内容的标题标签、描述标签、关键词标签<br />rn<br />rn6.自定义数据模型<br />rn系统可自定义数据模型满足各种表示形式和字段需求<br />rn<br />rn7.完善的后台权限控制<br />rn特有的管理员权限管理机制，可以灵活设置管理员的栏目管理权限、网站信息的添加、修改、删除权限等<br />rn<br />rn<br />rn系统运行环境：<br />rn数据库： mysql5+<br />rnPHP版本：php5.2.+<br />rn服务器：linux,unix,freebsd等<br />rn<br />rn官方网址：http://www.bagecms.com<br />rn下载地址：http://www.bagecms.com/download/bagecms<br />rn<br />rn演示地址：http://demo.bagecms.com<br />rn后台地址：http://demo.bagecms.com/admini<br />rn用户：bagecms<br />rn密码：bagecmsrn</p>rn<p>rn	<br />rn</p>','','','','','uploads/201309/logo.jpg','uploads/201309/logo.jpg','0','0','','1322999570');
INSERT INTO `bage_page` VALUES('2','联系我们','','contact','','','','<p>rn	QQ:5565907rn</p>rn<p>rn	QQ群：139869141rn</p>rn<p>rn	BageCMS官方网站：<a href=\"http://www.bagecms.com\" target=\"_blank\">http://www.bagecms.com</a>rn</p>rn<p>rn	八哥软件官方网站：<a href=\"http://www.bagesoft.cn\" target=\"_blank\">http://www.bagesoft.cn</a>rn</p>','','','','','','','0','0','','1322999588');
INSERT INTO `bage_page` VALUES('3','企业文化','','cultural','','','企业文化是企业为解决生存和发展的问题的而树立形成的，被组织成员认为有效而共享，并共同遵循的基本信念和认知。 企业文化集中体现了一个企业经营管理的核心主张，以及由此产生的组织行为。','<div>rn	<div>rn		迪尔和肯尼迪把企业文化整个理论系统概述为5个要素，即企业环境、价值观、英雄人物、文化仪式和文化网络。rn	</div>rn	<div>rn		企业环境是指企业的性质、企业的经营方向、外部环境、企业的社会形象、与外界的联系等方面。它往往决定企业的行为。rn	</div>rn	<div>rn		价值观是指企业内成员对某个事件或某种行为好与坏、善与恶、正确与错误、是否值得仿效的一致认识。价值观是企业文化的核心，统一的价值观使企业内成员在判断自己行为时具有统一的标准，并以此来选择自己的行为。rn	</div>rn	<div>rn		英雄人物是指企业文化的核心人物或企业文化的人格化，其作用在于作为一种活的样板，给企业中其他员工提供可供仿效的榜样，对企业文化的形成和强化起着极为重要的作用。rn	</div>rn	<div>rn		文化仪式是指企业内的各种表彰、奖励活动、聚会以及文娱活动等，它可以把企业中发生的某些事情戏剧化和形象化，来生动的宣传和体现本企业的价值观，使人们通过这些生动活泼的活动来领会企业文化的内涵，使企业文化“寓教于乐”之中。rn	</div>rn	<div>rn		文化网络是指非正式的信息传递渠道，主要是传播文化信息。它是由某种非正式的组织和人群，以及某一特定场合所组成，它所传递出的信息往往能反映出职工的愿望和心态。rn	</div>rn	<h3>rn		产生rn	</h3>rn	<div>rn		企业领导者把文化的变化人的功能应用于企业，以解决现代企业管理中的问题，就有了企业文化。企业管理理论和企业文化管理理论都追求效益。但前者为追求效益而把人当作客体，后者为追求效益把文化概念自觉应用于企业，把具有丰富创造性的人作为管理理论的中心。这种指导思想反映到企业管理中去，就有了人们称之为企业文化的种种观念。rn	</div>rn	<h3>rn		认识rn	</h3>rn	<div>rn		从企业文化的现实出发，进行深入的调查研究，把握企业文化各种现象之间的本质联系。依据实践经验，从感认认识到理性认识，进行科学的概括、总结。rn	</div>rn	<h3>rn		意义rn	</h3>rn	<div>rn		一．企业文化能激发员工的使命感。不管是什么企业都有它的责任和使命，企业使命感是全体员工工作的目标和方向，是企业不断发展或前进的动力之源。rn	</div>rn	<div>rn		二．企业文化能凝聚员工的归属感。　企业文化的作用就是通过企业价值观的提炼和传播，让一群来自不同地方的人共同追求同一个梦想。rn	</div>rn	<div>rn		三．企业文化能加强员工的责任感。企业要通过大量的资料和文件宣传员工责任感的重要性，管理人员要给全体员工灌输责任意识，危机意识和团队意识，要让大家清楚地认识企业是全体员工共同的企业。rn	</div>rn	<div>rn		四．企业文化能赋予员工的荣誉感。每个人都要在自己的工作岗位，工作领域，多做贡献，多出成绩，多追求荣誉感。rn	</div>rn	<div>rn		五．企业文化能实现员工的成就感。一个企业的繁荣昌盛关系到每一个公司员工的生存，企业繁荣了，员工们就会引以为豪，会更积极努力的进取，荣耀越高，成就感就越大，越明显。rn	</div>rn</div>rn<div>rn</div>','','','','','','','0','0','','1331877791');
INSERT INTO `bage_page` VALUES('4','管理团队','','team','','','团队是现代企业管理中战斗的核心，几乎没有一家企业不谈团队，好象团队就是企业做大做强的灵丹妙药，只要抓紧团队建设就能有锦锈前程了。团队是个好东西，但怎样的团队才算一个好团队，怎样才能运作好一个团队呢？却是许多企业管理者不甚了然的，于是在企业团队建设的过程中就出现了许多弊病，例如从理论著作中生搬硬套到团队运作里面，是很难产生好团队的。','<div>rn	<div>rn		团队是现代企业管理中战斗的核心，几乎没有一家企业不谈团队，好象团队就是企业做大做强的灵丹妙药，只要抓紧团队建设就能有锦锈前程了。团队是个好东西，但怎样的团队才算一个好团队，怎样才能运作好一个团队呢？却是许多企业管理者不甚了然的，于是在企业团队建设的过程中就出现了许多弊病，例如从理论著作中生搬硬套到团队运作里面，是很难产生好团队的。任何理念都不能执着，执着生僵化，就会蜕变为形式主义，后果很糟糕。在如今企业管理者热火朝天进行的团队建设中就存在这个问题，将团队作为企业文化建设的至上准则是不恰当的，是不符合多元化的现实状况的。rn	</div>rn	<div>rn		一个优秀的企业管理者，应该怎样管理员工?道理也很简单，那就是要给员工创造一个充分利用自己的个性将工作干得最好的条件。不一定什么都要团队化，太死板了。虽然现在的企业也都提倡创新，但如果管理者过分强调团队精神，则员工的创新精神必然受到压抑。压抑个性就是压抑创新，没有个性哪来的创新?说得极端一点，企业管理者要谨防团队建设法西斯化。团队是需要的，企业管理者在团队建设的同时要遵循一个原则，不能压抑员工的个性。在团队内部，企业管理者要给员工充分的自由，少说几句少数服从多数，要知道，聪明的人在世界上还就占少数。rn	</div>rn	<div>rn		企业管理者应该解放思想，要有多元化的思维。不同的企业，团队的性质也不一样。要量体裁衣建设符合企业内在要求的团队，要灵活变化，别搞一刀切。如果该企业是劳动密集型企业，那你可以建设一支高度纪律性组织性的团队。如果该企业是知识密集型企业，那就要以自由主义来管理员工了，建立一支人尽其才的团队是最重要的，严格说算不上是团队，也没必要强调团队，更注重的应该是员工的个人创造力，千万别让团队束缚住员工的头脑，当然应该有的纪律和合作也是不可少的。如果企业既有创造型员工也有操作型员工，那可将团队建设重点放到操作型员工身上。需要注意的一点是，越聪明的人越倾向个人主义，这个情况，企业管理者要注意有的放矢。rn	</div>rn</div>rn<div>rn</div>','','','','','','','0','0','Y','1379392484');

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
) ENGINE=MyISAM AUTO_INCREMENT=102 DEFAULT CHARSET=utf8 COMMENT='内容管理';

INSERT INTO `bage_post` VALUES('100','1','','','面试题目setcookie的尴尬','','','','','','','','18','0','面试题目setcookie','','','','','<span>&nbsp; &nbsp; &nbsp;今天参见面试被问到一个关于cookie的问题。问题大概是这样的，若不使用</span><span style=\"font-family:&quot;font-size:14px;background-color:#FFFFFF;color:#0000BB;\">setcookie</span><span style=\"font-family:&quot;font-size:14px;background-color:#FFFFFF;color:#007700;\">(</span><span style=\"font-family:&quot;font-size:14px;background-color:#FFFFFF;color:#DD0000;\">\"TestCookie\"</span><span style=\"font-family:&quot;font-size:14px;background-color:#FFFFFF;color:#007700;\">,&nbsp;</span><span style=\"font-family:&quot;font-size:14px;background-color:#FFFFFF;color:#0000BB;\">$value</span><span style=\"font-family:&quot;font-size:14px;background-color:#FFFFFF;color:#007700;\">,&nbsp;</span><span style=\"font-family:&quot;font-size:14px;background-color:#FFFFFF;color:#0000BB;\">time</span><span style=\"font-family:&quot;font-size:14px;background-color:#FFFFFF;color:#007700;\">()+</span><span style=\"font-family:&quot;font-size:14px;background-color:#FFFFFF;color:#0000BB;\">3600</span><span style=\"font-family:&quot;font-size:14px;background-color:#FFFFFF;color:#007700;\">); 函数，有没有其他的方式种cookie。这个问题当时的第一感觉，实在考察curl。</span><span style=\"font-family:&quot;font-size:14px;background-color:#FFFFFF;color:#007700;\">查询资料才知道，原来是考察setrawcookie函数。这个函数和setcookie共同的作用，向客户端发送一个cookie，唯一的区别就是<strong><span style=\"background-color:#E53333;color:#E53333;\"></span></strong><strong><span style=\"background-color:#FFFFFF;color:#E53333;\">setrawcookie发送的cookie未经过URL编码</span></strong>。</span>','','','','','27','N','N','','','0','0','N','1516628011','0','Y','0','','Y','1516376327');
INSERT INTO `bage_post` VALUES('92','1','','','五一京北城市承德之行','','','','','','','','19','0','','','五一京北城市承德之行','五一京北城市承德之行','五一京北城市承德之行','<p>rn	&nbsp; &nbsp; &nbsp;走大广京承高速段用时六小时全程往返五百公里。自15年公司组织去过草原感受草原风情，途径承德，觉得城市环境依山伴水，环境应该不错，又有避暑山庄胜地，便一直打算去京北一走。约大学同学成斌、老贺和军军加我四个人便下午四点从北京出发。一路我一直开到密云都是车水马龙，后一直按照导航推荐行驶，后发现导航软件和成斌的不同，原来导航设置错误，一直走的是国道，耽搁一些时间，直到约九点才抵达市内，后来是找好酒店住下。第二天，去了所谓的五a和世界文化遗产的避暑山庄。如下图，大家觉得如何呢？rn</p>rn<p>rn	避暑山庄（图）rn</p>rn<p>rn	<br />rn</p>rn<p>rn	&nbsp; &nbsp; &nbsp;后来我们中午便找个地方好好的吃上一顿。如下图。rn</p>rn<p>rn	&nbsp; &nbsp; &nbsp;酒足饭饱之后，便开始启程回京，自己估计再也不会来这里了，这个地方确实很一般，起初觉得这个地方应该是和颐和园相当，事实是差距悬殊。在回京的路上，到司马台长城附近，便和大家商量住一晚上明天去司马台长城一看，毕竟这里的长城使出了名的险峻。可出师不利，正好感到景区入口再修路，因全是锋利的石头便放弃了，继续回京，可这一路很是拥堵，至少八起以上的交通事故，所以这一路甚是辛苦，这次自驾让我对京北城市没了好感，也让我第一次知道当司机一定得肾好，遇上堵车更是麻烦，还有就是提前做好准备功课（1、景点和目的地的确认，口碑如何，2、路况的了解 &nbsp;3、提前定好酒店和规划旅游路线 ）rn</p>rn<p>rn	<br />rn</p>rn<p>rn	<br />rn</p>rn<p>rn	<br />rn</p>rn<p>rn	<br />rn</p>rn<p>rn	<br />rn</p>rn<p>rn	<br />rn</p>rn<p>rn	<br />rn</p>rn<p>rn	<br />rn</p>','','','','承德,五一,自驾','163','N','N','','','0','0','N','1497923528','0','Y','0','','Y','1493691349');
INSERT INTO `bage_post` VALUES('93','1','','','移动端开发工具分享和一些坑','','','','','','','','18','0','现在移动端唱主角的时代，作为PHP工程师，会经常和移动端的同事配合进行接口的开发，具体的交付物就是接口文档。','','移动端开发工具分享','移动端开发工具分享和一些坑','移动端开发工具分享','<p>\r\n	现在移动端唱主角的时代，作为PHP工程师，会经常和移动端的同事配合进行接口的开发，具体的交付物就是接口文档。\r\n</p>\r\n<p>\r\n	一、工具分享rn\r\n</p>\r\n<p>\r\n	文档书写工具markdown。（教程如下）&nbsp;\r\n</p>\r\n<p>\r\n	接口测试工具postmanrn 移动端抓包工具Charless，这个先确保手机和pc 在同一个网段，可以给手机设置代理。Charless有许多功能，具体使用我会在后续的博客单独说明。\r\n</p>\r\n<p>\r\n	二、和移动端同事沟通的专业术语整理rn\r\n</p>\r\n<p>\r\n	数据字典、token\r\n</p>\r\n<p>\r\n	三、设计API一般流程和注意事项\r\n</p>\r\n<p>\r\n	四、实际开发的一些坑<span style=\"line-height:1.5;\"><span style=\"line-height:2.5;\"><span style=\"line-height:1;\"></span></span></span> rn\r\n</p>','','','','','318','N','N','','','0','0','N','1516635649','0','Y','0','','Y','1494754987');
INSERT INTO `bage_post` VALUES('97','1','','','48周笔记之我在校内外技术要点整理','','','','','','','','18','0','去年一月十七号至今已有快一年的时间了，在此期间有许多的开发工具都是第一次使用，也都能比较熟练操作了，但是并非完全的掌握其中的技能（比如，从搭建到运用和解决常见问题的技巧等等），所以打算进行总结总结。','','','','','&nbsp; &nbsp;去年一月十七号至今已有快一年的时间了，在此期间有许多的开发工具都是第一次使用，也都能比较熟练操作了，但是并非完全的掌握和理解其中的道道（比如，从搭建到运用和解决常见问题的技巧等等），所以打算总结出要点，后续再做进一步深入。&nbsp;<br />\r\n1、电脑，Mac Pro，本机搭建docker环境，giT环境，一些实用的脚本，如G，F 。&nbsp;<br />\r\n2、运维容器工具，docker&nbsp;<br />\r\n3、版本控制，giT&nbsp;<br />\r\n4、接口调试工具，Charles，postMan&nbsp;<br />\r\n5、数据库，MySQL，Redis，memecached&nbsp;<br />\r\n6、文档书写，gitlab,Markdown&nbsp;<br />\r\n7、PHP框架，laravel5.4&nbsp;<br />\r\n8、IDE，phpstpm,vim&nbsp;<br />\r\n9、前端框架：Vue，smarty&nbsp;<br />\r\n10、队列，rabitmq&nbsp;<br />\r\n11、搜索，elasticsearch，sphinx&nbsp;<br />\r\n12、 PHP用来管理依赖关系的工具 ，composer&nbsp;<br />\r\n13、邮件第三方服务，sendcloud，mailgun&nbsp;<br />\r\n14、单元测试，phpunit&nbsp;<br />\r\n15、代码规范，参考阿里巴巴代码规范&nbsp;<br />\r\n16、代码审查机制，gitMergeRequest&nbsp;<br />\r\n17、代码快速上线和普通版本迭代机制，周迭代，149，develop，alpha各个环境之间的代码通讯机制，hotfix。&nbsp;<br />\r\n18、定时计划任务和有用的脚本，cronjob，g 等等。<br />\r\n19、移动端接口开发规范和大致流程。&nbsp;<br />\r\n20、移动端版本控制大致流程。&nbsp;<br />\r\n21、移动支付，微信，支付宝，银联。&nbsp;<br />\r\n22、网易直播jdk&nbsp;<br />\r\n23、班级空间数据缓存机制&nbsp;<br />\r\n24、班级空间数据架构，读写分离，缓存机制&nbsp;<br />\r\n25、等想到了在做补充。。。&nbsp;<br />\r\n<div>\r\n	<br />\r\n</div>\r\n<div id=\"2674-1512218076275\" style=\"font-size:14px;\">\r\n</div>\r\n<!--5f39ae17-8c62-4a45-bc43-b32064c9388a:W3siYmxvY2tJZCI6IjI2NzQtMTUxMjIxODA3NjI3NSIsImJsb2NrVHlwZSI6ImhlYWRpbmciLCJzdHlsZXMiOnt9LCJ0eXBlIjoiaGVhZGluZyIsInRleHQiOnsiZGF0YSI6W3siY2hhciI6IuWOuyIsInN0eWxlcyI6eyJib2xkIjp0cnVlLCJmb250LXNpemUiOjE4LCJjb2xvciI6IiM1OTU5NTkifX0seyJjaGFyIjoi5bm0Iiwic3R5bGVzIjp7ImJvbGQiOnRydWUsImZvbnQtc2l6ZSI6MTgsImNvbG9yIjoiIzU5NTk1OSJ9fSx7ImNoYXIiOiLkuIAiLCJzdHlsZXMiOnsiYm9sZCI6dHJ1ZSwiZm9udC1zaXplIjoxOCwiY29sb3IiOiIjNTk1OTU5In19LHsiY2hhciI6IuaciCIsInN0eWxlcyI6eyJib2xkIjp0cnVlLCJmb250LXNpemUiOjE4LCJjb2xvciI6IiM1OTU5NTkifX0seyJjaGFyIjoi5Y2BIiwic3R5bGVzIjp7ImJvbGQiOnRydWUsImZvbnQtc2l6ZSI6MTgsImNvbG9yIjoiIzU5NTk1OSJ9fSx7ImNoYXIiOiLkuIMiLCJzdHlsZXMiOnsiYm9sZCI6dHJ1ZSwiZm9udC1zaXplIjoxOCwiY29sb3IiOiIjNTk1OTU5In19LHsiY2hhciI6IuWPtyIsInN0eWxlcyI6eyJib2xkIjp0cnVlLCJmb250LXNpemUiOjE4LCJjb2xvciI6IiM1OTU5NTkifX0seyJjaGFyIjoi6IezIiwic3R5bGVzIjp7ImJvbGQiOnRydWUsImZvbnQtc2l6ZSI6MTgsImNvbG9yIjoiIzU5NTk1OSJ9fSx7ImNoYXIiOiLku4oiLCJzdHlsZXMiOnsiYm9sZCI6dHJ1ZSwiZm9udC1zaXplIjoxOCwiY29sb3IiOiIjNTk1OTU5In19LHsiY2hhciI6IuW3siIsInN0eWxlcyI6eyJib2xkIjp0cnVlLCJmb250LXNpemUiOjE4LCJjb2xvciI6IiM1OTU5NTkifX0seyJjaGFyIjoi5pyJIiwic3R5bGVzIjp7ImJvbGQiOnRydWUsImZvbnQtc2l6ZSI6MTgsImNvbG9yIjoiIzU5NTk1OSJ9fSx7ImNoYXIiOiLlv6siLCJzdHlsZXMiOnsiYm9sZCI6dHJ1ZSwiZm9udC1zaXplIjoxOCwiY29sb3IiOiIjNTk1OTU5In19LHsiY2hhciI6IuS4gCIsInN0eWxlcyI6eyJib2xkIjp0cnVlLCJmb250LXNpemUiOjE4LCJjb2xvciI6IiM1OTU5NTkifX0seyJjaGFyIjoi5bm0Iiwic3R5bGVzIjp7ImJvbGQiOnRydWUsImZvbnQtc2l6ZSI6MTgsImNvbG9yIjoiIzU5NTk1OSJ9fSx7ImNoYXIiOiLnmoQiLCJzdHlsZXMiOnsiYm9sZCI6dHJ1ZSwiZm9udC1zaXplIjoxOCwiY29sb3IiOiIjNTk1OTU5In19LHsiY2hhciI6IuaXtiIsInN0eWxlcyI6eyJib2xkIjp0cnVlLCJmb250LXNpemUiOjE4LCJjb2xvciI6IiM1OTU5NTkifX0seyJjaGFyIjoi6Ze0Iiwic3R5bGVzIjp7ImJvbGQiOnRydWUsImZvbnQtc2l6ZSI6MTgsImNvbG9yIjoiIzU5NTk1OSJ9fSx7ImNoYXIiOiLkuoYiLCJzdHlsZXMiOnsiYm9sZCI6dHJ1ZSwiZm9udC1zaXplIjoxOCwiY29sb3IiOiIjNTk1OTU5In19LHsiY2hhciI6Iu+8jCIsInN0eWxlcyI6eyJib2xkIjp0cnVlLCJmb250LXNpemUiOjE4LCJjb2xvciI6IiM1OTU5NTkifX0seyJjaGFyIjoi5ZyoIiwic3R5bGVzIjp7ImJvbGQiOnRydWUsImZvbnQtc2l6ZSI6MTgsImNvbG9yIjoiIzU5NTk1OSJ9fSx7ImNoYXIiOiLmraQiLCJzdHlsZXMiOnsiYm9sZCI6dHJ1ZSwiZm9udC1zaXplIjoxOCwiY29sb3IiOiIjNTk1OTU5In19LHsiY2hhciI6IuacnyIsInN0eWxlcyI6eyJib2xkIjp0cnVlLCJmb250LXNpemUiOjE4LCJjb2xvciI6IiM1OTU5NTkifX0seyJjaGFyIjoi6Ze0Iiwic3R5bGVzIjp7ImJvbGQiOnRydWUsImZvbnQtc2l6ZSI6MTgsImNvbG9yIjoiIzU5NTk1OSJ9fSx7ImNoYXIiOiLmnIkiLCJzdHlsZXMiOnsiYm9sZCI6dHJ1ZSwiZm9udC1zaXplIjoxOCwiY29sb3IiOiIjNTk1OTU5In19LHsiY2hhciI6IuiuuCIsInN0eWxlcyI6eyJib2xkIjp0cnVlLCJmb250LXNpemUiOjE4LCJjb2xvciI6IiM1OTU5NTkifX0seyJjaGFyIjoi5aSaIiwic3R5bGVzIjp7ImJvbGQiOnRydWUsImZvbnQtc2l6ZSI6MTgsImNvbG9yIjoiIzU5NTk1OSJ9fSx7ImNoYXIiOiLnmoQiLCJzdHlsZXMiOnsiYm9sZCI6dHJ1ZSwiZm9udC1zaXplIjoxOCwiY29sb3IiOiIjNTk1OTU5In19LHsiY2hhciI6IuW8gCIsInN0eWxlcyI6eyJib2xkIjp0cnVlLCJmb250LXNpemUiOjE4LCJjb2xvciI6IiM1OTU5NTkifX0seyJjaGFyIjoi5Y+RIiwic3R5bGVzIjp7ImJvbGQiOnRydWUsImZvbnQtc2l6ZSI6MTgsImNvbG9yIjoiIzU5NTk1OSJ9fSx7ImNoYXIiOiLlt6UiLCJzdHlsZXMiOnsiYm9sZCI6dHJ1ZSwiZm9udC1zaXplIjoxOCwiY29sb3IiOiIjNTk1OTU5In19LHsiY2hhciI6IuWFtyIsInN0eWxlcyI6eyJib2xkIjp0cnVlLCJmb250LXNpemUiOjE4LCJjb2xvciI6IiM1OTU5NTkifX0seyJjaGFyIjoi6YO9Iiwic3R5bGVzIjp7ImJvbGQiOnRydWUsImZvbnQtc2l6ZSI6MTgsImNvbG9yIjoiIzU5NTk1OSJ9fSx7ImNoYXIiOiLmmK8iLCJzdHlsZXMiOnsiYm9sZCI6dHJ1ZSwiZm9udC1zaXplIjoxOCwiY29sb3IiOiIjNTk1OTU5In19LHsiY2hhciI6IuesrCIsInN0eWxlcyI6eyJib2xkIjp0cnVlLCJmb250LXNpemUiOjE4LCJjb2xvciI6IiM1OTU5NTkifX0seyJjaGFyIjoi5LiAIiwic3R5bGVzIjp7ImJvbGQiOnRydWUsImZvbnQtc2l6ZSI6MTgsImNvbG9yIjoiIzU5NTk1OSJ9fSx7ImNoYXIiOiLmrKEiLCJzdHlsZXMiOnsiYm9sZCI6dHJ1ZSwiZm9udC1zaXplIjoxOCwiY29sb3IiOiIjNTk1OTU5In19LHsiY2hhciI6IuS9vyIsInN0eWxlcyI6eyJib2xkIjp0cnVlLCJmb250LXNpemUiOjE4LCJjb2xvciI6IiM1OTU5NTkifX0seyJjaGFyIjoi55SoIiwic3R5bGVzIjp7ImJvbGQiOnRydWUsImZvbnQtc2l6ZSI6MTgsImNvbG9yIjoiIzU5NTk1OSJ9fSx7ImNoYXIiOiLvvIwiLCJzdHlsZXMiOnsiYm9sZCI6dHJ1ZSwiZm9udC1zaXplIjoxOCwiY29sb3IiOiIjNTk1OTU5In19LHsiY2hhciI6IuS5nyIsInN0eWxlcyI6eyJib2xkIjp0cnVlLCJmb250LXNpemUiOjE4LCJjb2xvciI6IiM1OTU5NTkifX0seyJjaGFyIjoi6YO9Iiwic3R5bGVzIjp7ImJvbGQiOnRydWUsImZvbnQtc2l6ZSI6MTgsImNvbG9yIjoiIzU5NTk1OSJ9fSx7ImNoYXIiOiLog70iLCJzdHlsZXMiOnsiYm9sZCI6dHJ1ZSwiZm9udC1zaXplIjoxOCwiY29sb3IiOiIjNTk1OTU5In19LHsiY2hhciI6IuavlCIsInN0eWxlcyI6eyJib2xkIjp0cnVlLCJmb250LXNpemUiOjE4LCJjb2xvciI6IiM1OTU5NTkifX0seyJjaGFyIjoi6L6DIiwic3R5bGVzIjp7ImJvbGQiOnRydWUsImZvbnQtc2l6ZSI6MTgsImNvbG9yIjoiIzU5NTk1OSJ9fSx7ImNoYXIiOiLnhp8iLCJzdHlsZXMiOnsiYm9sZCI6dHJ1ZSwiZm9udC1zaXplIjoxOCwiY29sb3IiOiIjNTk1OTU5In19LHsiY2hhciI6Iue7gyIsInN0eWxlcyI6eyJib2xkIjp0cnVlLCJmb250LXNpemUiOjE4LCJjb2xvciI6IiM1OTU5NTkifX0seyJjaGFyIjoi5pONIiwic3R5bGVzIjp7ImJvbGQiOnRydWUsImZvbnQtc2l6ZSI6MTgsImNvbG9yIjoiIzU5NTk1OSJ9fSx7ImNoYXIiOiLkvZwiLCJzdHlsZXMiOnsiYm9sZCI6dHJ1ZSwiZm9udC1zaXplIjoxOCwiY29sb3IiOiIjNTk1OTU5In19LHsiY2hhciI6IuS6hiIsInN0eWxlcyI6eyJib2xkIjp0cnVlLCJmb250LXNpemUiOjE4LCJjb2xvciI6IiM1OTU5NTkifX0seyJjaGFyIjoi77yMIiwic3R5bGVzIjp7ImJvbGQiOnRydWUsImZvbnQtc2l6ZSI6MTgsImNvbG9yIjoiIzU5NTk1OSJ9fSx7ImNoYXIiOiLkvYYiLCJzdHlsZXMiOnsiYm9sZCI6dHJ1ZSwiZm9udC1zaXplIjoxOCwiY29sb3IiOiIjNTk1OTU5In19LHsiY2hhciI6IuaYryIsInN0eWxlcyI6eyJib2xkIjp0cnVlLCJmb250LXNpemUiOjE4LCJjb2xvciI6IiM1OTU5NTkifX0seyJjaGFyIjoi5bm2Iiwic3R5bGVzIjp7ImJvbGQiOnRydWUsImZvbnQtc2l6ZSI6MTgsImNvbG9yIjoiIzU5NTk1OSJ9fSx7ImNoYXIiOiLpnZ4iLCJzdHlsZXMiOnsiYm9sZCI6dHJ1ZSwiZm9udC1zaXplIjoxOCwiY29sb3IiOiIjNTk1OTU5In19LHsiY2hhciI6IuWujCIsInN0eWxlcyI6eyJib2xkIjp0cnVlLCJmb250LXNpemUiOjE4LCJjb2xvciI6IiM1OTU5NTkifX0seyJjaGFyIjoi5YWoIiwic3R5bGVzIjp7ImJvbGQiOnRydWUsImZvbnQtc2l6ZSI6MTgsImNvbG9yIjoiIzU5NTk1OSJ9fSx7ImNoYXIiOiLnmoQiLCJzdHlsZXMiOnsiYm9sZCI6dHJ1ZSwiZm9udC1zaXplIjoxOCwiY29sb3IiOiIjNTk1OTU5In19LHsiY2hhciI6IuaOjCIsInN0eWxlcyI6eyJib2xkIjp0cnVlLCJmb250LXNpemUiOjE4LCJjb2xvciI6IiM1OTU5NTkifX0seyJjaGFyIjoi5o+hIiwic3R5bGVzIjp7ImJvbGQiOnRydWUsImZvbnQtc2l6ZSI6MTgsImNvbG9yIjoiIzU5NTk1OSJ9fSx7ImNoYXIiOiLlhbYiLCJzdHlsZXMiOnsiYm9sZCI6dHJ1ZSwiZm9udC1zaXplIjoxOCwiY29sb3IiOiIjNTk1OTU5In19LHsiY2hhciI6IuS4rSIsInN0eWxlcyI6eyJib2xkIjp0cnVlLCJmb250LXNpemUiOjE4LCJjb2xvciI6IiM1OTU5NTkifX0seyJjaGFyIjoi55qEIiwic3R5bGVzIjp7ImJvbGQiOnRydWUsImZvbnQtc2l6ZSI6MTgsImNvbG9yIjoiIzU5NTk1OSJ9fSx7ImNoYXIiOiLmioAiLCJzdHlsZXMiOnsiYm9sZCI6dHJ1ZSwiZm9udC1zaXplIjoxOCwiY29sb3IiOiIjNTk1OTU5In19LHsiY2hhciI6IuiDvSIsInN0eWxlcyI6eyJib2xkIjp0cnVlLCJmb250LXNpemUiOjE4LCJjb2xvciI6IiM1OTU5NTkifX0seyJjaGFyIjoi77yIIiwic3R5bGVzIjp7ImJvbGQiOnRydWUsImZvbnQtc2l6ZSI6MTgsImNvbG9yIjoiIzU5NTk1OSJ9fSx7ImNoYXIiOiLmr5QiLCJzdHlsZXMiOnsiYm9sZCI6dHJ1ZSwiZm9udC1zaXplIjoxOCwiY29sb3IiOiIjNTk1OTU5In19LHsiY2hhciI6IuWmgiIsInN0eWxlcyI6eyJib2xkIjp0cnVlLCJmb250LXNpemUiOjE4LCJjb2xvciI6IiM1OTU5NTkifX0seyJjaGFyIjoi77yMIiwic3R5bGVzIjp7ImJvbGQiOnRydWUsImZvbnQtc2l6ZSI6MTgsImNvbG9yIjoiIzU5NTk1OSJ9fSx7ImNoYXIiOiLku44iLCJzdHlsZXMiOnsiYm9sZCI6dHJ1ZSwiZm9udC1zaXplIjoxOCwiY29sb3IiOiIjNTk1OTU5In19LHsiY2hhciI6IuaQrSIsInN0eWxlcyI6eyJib2xkIjp0cnVlLCJmb250LXNpemUiOjE4LCJjb2xvciI6IiM1OTU5NTkifX0seyJjaGFyIjoi5bu6Iiwic3R5bGVzIjp7ImJvbGQiOnRydWUsImZvbnQtc2l6ZSI6MTgsImNvbG9yIjoiIzU5NTk1OSJ9fSx7ImNoYXIiOiLliLAiLCJzdHlsZXMiOnsiYm9sZCI6dHJ1ZSwiZm9udC1zaXplIjoxOCwiY29sb3IiOiIjNTk1OTU5In19LHsiY2hhciI6Iui/kCIsInN0eWxlcyI6eyJib2xkIjp0cnVlLCJmb250LXNpemUiOjE4LCJjb2xvciI6IiM1OTU5NTkifX0seyJjaGFyIjoi55SoIiwic3R5bGVzIjp7ImJvbGQiOnRydWUsImZvbnQtc2l6ZSI6MTgsImNvbG9yIjoiIzU5NTk1OSJ9fSx7ImNoYXIiOiLlkowiLCJzdHlsZXMiOnsiYm9sZCI6dHJ1ZSwiZm9udC1zaXplIjoxOCwiY29sb3IiOiIjNTk1OTU5In19LHsiY2hhciI6IuinoyIsInN0eWxlcyI6eyJib2xkIjp0cnVlLCJmb250LXNpemUiOjE4LCJjb2xvciI6IiM1OTU5NTkifX0seyJjaGFyIjoi5YazIiwic3R5bGVzIjp7ImJvbGQiOnRydWUsImZvbnQtc2l6ZSI6MTgsImNvbG9yIjoiIzU5NTk1OSJ9fSx7ImNoYXIiOiLluLgiLCJzdHlsZXMiOnsiYm9sZCI6dHJ1ZSwiZm9udC1zaXplIjoxOCwiY29sb3IiOiIjNTk1OTU5In19LHsiY2hhciI6IuingSIsInN0eWxlcyI6eyJib2xkIjp0cnVlLCJmb250LXNpemUiOjE4LCJjb2xvciI6IiM1OTU5NTkifX0seyJjaGFyIjoi6ZeuIiwic3R5bGVzIjp7ImJvbGQiOnRydWUsImZvbnQtc2l6ZSI6MTgsImNvbG9yIjoiIzU5NTk1OSJ9fSx7ImNoYXIiOiLpopgiLCJzdHlsZXMiOnsiYm9sZCI6dHJ1ZSwiZm9udC1zaXplIjoxOCwiY29sb3IiOiIjNTk1OTU5In19LHsiY2hhciI6IueahCIsInN0eWxlcyI6eyJib2xkIjp0cnVlLCJmb250LXNpemUiOjE4LCJjb2xvciI6IiM1OTU5NTkifX0seyJjaGFyIjoi5oqAIiwic3R5bGVzIjp7ImJvbGQiOnRydWUsImZvbnQtc2l6ZSI6MTgsImNvbG9yIjoiIzU5NTk1OSJ9fSx7ImNoYXIiOiLlt6ciLCJzdHlsZXMiOnsiYm9sZCI6dHJ1ZSwiZm9udC1zaXplIjoxOCwiY29sb3IiOiIjNTk1OTU5In19LHsiY2hhciI6IuetiSIsInN0eWxlcyI6eyJib2xkIjp0cnVlLCJmb250LXNpemUiOjE4LCJjb2xvciI6IiM1OTU5NTkifX0seyJjaGFyIjoi562JIiwic3R5bGVzIjp7ImJvbGQiOnRydWUsImZvbnQtc2l6ZSI6MTgsImNvbG9yIjoiIzU5NTk1OSJ9fSx7ImNoYXIiOiLvvIkiLCJzdHlsZXMiOnsiYm9sZCI6dHJ1ZSwiZm9udC1zaXplIjoxOCwiY29sb3IiOiIjNTk1OTU5In19LHsiY2hhciI6Iu+8jCIsInN0eWxlcyI6eyJib2xkIjp0cnVlLCJmb250LXNpemUiOjE4LCJjb2xvciI6IiM1OTU5NTkifX0seyJjaGFyIjoi5omAIiwic3R5bGVzIjp7ImJvbGQiOnRydWUsImZvbnQtc2l6ZSI6MTgsImNvbG9yIjoiIzU5NTk1OSJ9fSx7ImNoYXIiOiLku6UiLCJzdHlsZXMiOnsiYm9sZCI6dHJ1ZSwiZm9udC1zaXplIjoxOCwiY29sb3IiOiIjNTk1OTU5In19LHsiY2hhciI6IuaJkyIsInN0eWxlcyI6eyJib2xkIjp0cnVlLCJmb250LXNpemUiOjE4LCJjb2xvciI6IiM1OTU5NTkifX0seyJjaGFyIjoi566XIiwic3R5bGVzIjp7ImJvbGQiOnRydWUsImZvbnQtc2l6ZSI6MTgsImNvbG9yIjoiIzU5NTk1OSJ9fSx7ImNoYXIiOiLov5siLCJzdHlsZXMiOnsiYm9sZCI6dHJ1ZSwiZm9udC1zaXplIjoxOCwiY29sb3IiOiIjNTk1OTU5In19LHsiY2hhciI6IuihjCIsInN0eWxlcyI6eyJib2xkIjp0cnVlLCJmb250LXNpemUiOjE4LCJjb2xvciI6IiM1OTU5NTkifX0seyJjaGFyIjoi5oC7Iiwic3R5bGVzIjp7ImJvbGQiOnRydWUsImZvbnQtc2l6ZSI6MTgsImNvbG9yIjoiIzU5NTk1OSJ9fSx7ImNoYXIiOiLnu5MiLCJzdHlsZXMiOnsiYm9sZCI6dHJ1ZSwiZm9udC1zaXplIjoxOCwiY29sb3IiOiIjNTk1OTU5In19LHsiY2hhciI6IuaAuyIsInN0eWxlcyI6eyJib2xkIjp0cnVlLCJmb250LXNpemUiOjE4LCJjb2xvciI6IiM1OTU5NTkifX0seyJjaGFyIjoi57uTIiwic3R5bGVzIjp7ImJvbGQiOnRydWUsImZvbnQtc2l6ZSI6MTgsImNvbG9yIjoiIzU5NTk1OSJ9fSx7ImNoYXIiOiLjgIIiLCJzdHlsZXMiOnsiYm9sZCI6dHJ1ZSwiZm9udC1zaXplIjoxOCwiY29sb3IiOiIjNTk1OTU5In19XSwiaXNSaWNoVGV4dCI6dHJ1ZSwia2VlcExpbmVCcmVhayI6dHJ1ZX0sInJpY2hUZXh0Ijp7ImRhdGEiOlt7ImNoYXIiOiLljrsiLCJzdHlsZXMiOnsiYm9sZCI6dHJ1ZSwiZm9udC1zaXplIjoxOCwiY29sb3IiOiIjNTk1OTU5In19LHsiY2hhciI6IuW5tCIsInN0eWxlcyI6eyJib2xkIjp0cnVlLCJmb250LXNpemUiOjE4LCJjb2xvciI6IiM1OTU5NTkifX0seyJjaGFyIjoi5LiAIiwic3R5bGVzIjp7ImJvbGQiOnRydWUsImZvbnQtc2l6ZSI6MTgsImNvbG9yIjoiIzU5NTk1OSJ9fSx7ImNoYXIiOiLmnIgiLCJzdHlsZXMiOnsiYm9sZCI6dHJ1ZSwiZm9udC1zaXplIjoxOCwiY29sb3IiOiIjNTk1OTU5In19LHsiY2hhciI6IuWNgSIsInN0eWxlcyI6eyJib2xkIjp0cnVlLCJmb250LXNpemUiOjE4LCJjb2xvciI6IiM1OTU5NTkifX0seyJjaGFyIjoi5LiDIiwic3R5bGVzIjp7ImJvbGQiOnRydWUsImZvbnQtc2l6ZSI6MTgsImNvbG9yIjoiIzU5NTk1OSJ9fSx7ImNoYXIiOiLlj7ciLCJzdHlsZXMiOnsiYm9sZCI6dHJ1ZSwiZm9udC1zaXplIjoxOCwiY29sb3IiOiIjNTk1OTU5In19LHsiY2hhciI6IuiHsyIsInN0eWxlcyI6eyJib2xkIjp0cnVlLCJmb250LXNpemUiOjE4LCJjb2xvciI6IiM1OTU5NTkifX0seyJjaGFyIjoi5LuKIiwic3R5bGVzIjp7ImJvbGQiOnRydWUsImZvbnQtc2l6ZSI6MTgsImNvbG9yIjoiIzU5NTk1OSJ9fSx7ImNoYXIiOiLlt7IiLCJzdHlsZXMiOnsiYm9sZCI6dHJ1ZSwiZm9udC1zaXplIjoxOCwiY29sb3IiOiIjNTk1OTU5In19LHsiY2hhciI6IuaciSIsInN0eWxlcyI6eyJib2xkIjp0cnVlLCJmb250LXNpemUiOjE4LCJjb2xvciI6IiM1OTU5NTkifX0seyJjaGFyIjoi5b+rIiwic3R5bGVzIjp7ImJvbGQiOnRydWUsImZvbnQtc2l6ZSI6MTgsImNvbG9yIjoiIzU5NTk1OSJ9fSx7ImNoYXIiOiLkuIAiLCJzdHlsZXMiOnsiYm9sZCI6dHJ1ZSwiZm9udC1zaXplIjoxOCwiY29sb3IiOiIjNTk1OTU5In19LHsiY2hhciI6IuW5tCIsInN0eWxlcyI6eyJib2xkIjp0cnVlLCJmb250LXNpemUiOjE4LCJjb2xvciI6IiM1OTU5NTkifX0seyJjaGFyIjoi55qEIiwic3R5bGVzIjp7ImJvbGQiOnRydWUsImZvbnQtc2l6ZSI6MTgsImNvbG9yIjoiIzU5NTk1OSJ9fSx7ImNoYXIiOiLml7YiLCJzdHlsZXMiOnsiYm9sZCI6dHJ1ZSwiZm9udC1zaXplIjoxOCwiY29sb3IiOiIjNTk1OTU5In19LHsiY2hhciI6IumXtCIsInN0eWxlcyI6eyJib2xkIjp0cnVlLCJmb250LXNpemUiOjE4LCJjb2xvciI6IiM1OTU5NTkifX0seyJjaGFyIjoi5LqGIiwic3R5bGVzIjp7ImJvbGQiOnRydWUsImZvbnQtc2l6ZSI6MTgsImNvbG9yIjoiIzU5NTk1OSJ9fSx7ImNoYXIiOiLvvIwiLCJzdHlsZXMiOnsiYm9sZCI6dHJ1ZSwiZm9udC1zaXplIjoxOCwiY29sb3IiOiIjNTk1OTU5In19LHsiY2hhciI6IuWcqCIsInN0eWxlcyI6eyJib2xkIjp0cnVlLCJmb250LXNpemUiOjE4LCJjb2xvciI6IiM1OTU5NTkifX0seyJjaGFyIjoi5q2kIiwic3R5bGVzIjp7ImJvbGQiOnRydWUsImZvbnQtc2l6ZSI6MTgsImNvbG9yIjoiIzU5NTk1OSJ9fSx7ImNoYXIiOiLmnJ8iLCJzdHlsZXMiOnsiYm9sZCI6dHJ1ZSwiZm9udC1zaXplIjoxOCwiY29sb3IiOiIjNTk1OTU5In19LHsiY2hhciI6IumXtCIsInN0eWxlcyI6eyJib2xkIjp0cnVlLCJmb250LXNpemUiOjE4LCJjb2xvciI6IiM1OTU5NTkifX0seyJjaGFyIjoi5pyJIiwic3R5bGVzIjp7ImJvbGQiOnRydWUsImZvbnQtc2l6ZSI6MTgsImNvbG9yIjoiIzU5NTk1OSJ9fSx7ImNoYXIiOiLorrgiLCJzdHlsZXMiOnsiYm9sZCI6dHJ1ZSwiZm9udC1zaXplIjoxOCwiY29sb3IiOiIjNTk1OTU5In19LHsiY2hhciI6IuWkmiIsInN0eWxlcyI6eyJib2xkIjp0cnVlLCJmb250LXNpemUiOjE4LCJjb2xvciI6IiM1OTU5NTkifX0seyJjaGFyIjoi55qEIiwic3R5bGVzIjp7ImJvbGQiOnRydWUsImZvbnQtc2l6ZSI6MTgsImNvbG9yIjoiIzU5NTk1OSJ9fSx7ImNoYXIiOiLlvIAiLCJzdHlsZXMiOnsiYm9sZCI6dHJ1ZSwiZm9udC1zaXplIjoxOCwiY29sb3IiOiIjNTk1OTU5In19LHsiY2hhciI6IuWPkSIsInN0eWxlcyI6eyJib2xkIjp0cnVlLCJmb250LXNpemUiOjE4LCJjb2xvciI6IiM1OTU5NTkifX0seyJjaGFyIjoi5belIiwic3R5bGVzIjp7ImJvbGQiOnRydWUsImZvbnQtc2l6ZSI6MTgsImNvbG9yIjoiIzU5NTk1OSJ9fSx7ImNoYXIiOiLlhbciLCJzdHlsZXMiOnsiYm9sZCI6dHJ1ZSwiZm9udC1zaXplIjoxOCwiY29sb3IiOiIjNTk1OTU5In19LHsiY2hhciI6IumDvSIsInN0eWxlcyI6eyJib2xkIjp0cnVlLCJmb250LXNpemUiOjE4LCJjb2xvciI6IiM1OTU5NTkifX0seyJjaGFyIjoi5pivIiwic3R5bGVzIjp7ImJvbGQiOnRydWUsImZvbnQtc2l6ZSI6MTgsImNvbG9yIjoiIzU5NTk1OSJ9fSx7ImNoYXIiOiLnrKwiLCJzdHlsZXMiOnsiYm9sZCI6dHJ1ZSwiZm9udC1zaXplIjoxOCwiY29sb3IiOiIjNTk1OTU5In19LHsiY2hhciI6IuS4gCIsInN0eWxlcyI6eyJib2xkIjp0cnVlLCJmb250LXNpemUiOjE4LCJjb2xvciI6IiM1OTU5NTkifX0seyJjaGFyIjoi5qyhIiwic3R5bGVzIjp7ImJvbGQiOnRydWUsImZvbnQtc2l6ZSI6MTgsImNvbG9yIjoiIzU5NTk1OSJ9fSx7ImNoYXIiOiLkvb8iLCJzdHlsZXMiOnsiYm9sZCI6dHJ1ZSwiZm9udC1zaXplIjoxOCwiY29sb3IiOiIjNTk1OTU5In19LHsiY2hhciI6IueUqCIsInN0eWxlcyI6eyJib2xkIjp0cnVlLCJmb250LXNpemUiOjE4LCJjb2xvciI6IiM1OTU5NTkifX0seyJjaGFyIjoi77yMIiwic3R5bGVzIjp7ImJvbGQiOnRydWUsImZvbnQtc2l6ZSI6MTgsImNvbG9yIjoiIzU5NTk1OSJ9fSx7ImNoYXIiOiLkuZ8iLCJzdHlsZXMiOnsiYm9sZCI6dHJ1ZSwiZm9udC1zaXplIjoxOCwiY29sb3IiOiIjNTk1OTU5In19LHsiY2hhciI6IumDvSIsInN0eWxlcyI6eyJib2xkIjp0cnVlLCJmb250LXNpemUiOjE4LCJjb2xvciI6IiM1OTU5NTkifX0seyJjaGFyIjoi6IO9Iiwic3R5bGVzIjp7ImJvbGQiOnRydWUsImZvbnQtc2l6ZSI6MTgsImNvbG9yIjoiIzU5NTk1OSJ9fSx7ImNoYXIiOiLmr5QiLCJzdHlsZXMiOnsiYm9sZCI6dHJ1ZSwiZm9udC1zaXplIjoxOCwiY29sb3IiOiIjNTk1OTU5In19LHsiY2hhciI6Iui+gyIsInN0eWxlcyI6eyJib2xkIjp0cnVlLCJmb250LXNpemUiOjE4LCJjb2xvciI6IiM1OTU5NTkifX0seyJjaGFyIjoi54afIiwic3R5bGVzIjp7ImJvbGQiOnRydWUsImZvbnQtc2l6ZSI6MTgsImNvbG9yIjoiIzU5NTk1OSJ9fSx7ImNoYXIiOiLnu4MiLCJzdHlsZXMiOnsiYm9sZCI6dHJ1ZSwiZm9udC1zaXplIjoxOCwiY29sb3IiOiIjNTk1OTU5In19LHsiY2hhciI6IuaTjSIsInN0eWxlcyI6eyJib2xkIjp0cnVlLCJmb250LXNpemUiOjE4LCJjb2xvciI6IiM1OTU5NTkifX0seyJjaGFyIjoi5L2cIiwic3R5bGVzIjp7ImJvbGQiOnRydWUsImZvbnQtc2l6ZSI6MTgsImNvbG9yIjoiIzU5NTk1OSJ9fSx7ImNoYXIiOiLkuoYiLCJzdHlsZXMiOnsiYm9sZCI6dHJ1ZSwiZm9udC1zaXplIjoxOCwiY29sb3IiOiIjNTk1OTU5In19LHsiY2hhciI6Iu+8jCIsInN0eWxlcyI6eyJib2xkIjp0cnVlLCJmb250LXNpemUiOjE4LCJjb2xvciI6IiM1OTU5NTkifX0seyJjaGFyIjoi5L2GIiwic3R5bGVzIjp7ImJvbGQiOnRydWUsImZvbnQtc2l6ZSI6MTgsImNvbG9yIjoiIzU5NTk1OSJ9fSx7ImNoYXIiOiLmmK8iLCJzdHlsZXMiOnsiYm9sZCI6dHJ1ZSwiZm9udC1zaXplIjoxOCwiY29sb3IiOiIjNTk1OTU5In19LHsiY2hhciI6IuW5tiIsInN0eWxlcyI6eyJib2xkIjp0cnVlLCJmb250LXNpemUiOjE4LCJjb2xvciI6IiM1OTU5NTkifX0seyJjaGFyIjoi6Z2eIiwic3R5bGVzIjp7ImJvbGQiOnRydWUsImZvbnQtc2l6ZSI6MTgsImNvbG9yIjoiIzU5NTk1OSJ9fSx7ImNoYXIiOiLlrowiLCJzdHlsZXMiOnsiYm9sZCI6dHJ1ZSwiZm9udC1zaXplIjoxOCwiY29sb3IiOiIjNTk1OTU5In19LHsiY2hhciI6IuWFqCIsInN0eWxlcyI6eyJib2xkIjp0cnVlLCJmb250LXNpemUiOjE4LCJjb2xvciI6IiM1OTU5NTkifX0seyJjaGFyIjoi55qEIiwic3R5bGVzIjp7ImJvbGQiOnRydWUsImZvbnQtc2l6ZSI6MTgsImNvbG9yIjoiIzU5NTk1OSJ9fSx7ImNoYXIiOiLmjowiLCJzdHlsZXMiOnsiYm9sZCI6dHJ1ZSwiZm9udC1zaXplIjoxOCwiY29sb3IiOiIjNTk1OTU5In19LHsiY2hhciI6IuaPoSIsInN0eWxlcyI6eyJib2xkIjp0cnVlLCJmb250LXNpemUiOjE4LCJjb2xvciI6IiM1OTU5NTkifX0seyJjaGFyIjoi5YW2Iiwic3R5bGVzIjp7ImJvbGQiOnRydWUsImZvbnQtc2l6ZSI6MTgsImNvbG9yIjoiIzU5NTk1OSJ9fSx7ImNoYXIiOiLkuK0iLCJzdHlsZXMiOnsiYm9sZCI6dHJ1ZSwiZm9udC1zaXplIjoxOCwiY29sb3IiOiIjNTk1OTU5In19LHsiY2hhciI6IueahCIsInN0eWxlcyI6eyJib2xkIjp0cnVlLCJmb250LXNpemUiOjE4LCJjb2xvciI6IiM1OTU5NTkifX0seyJjaGFyIjoi5oqAIiwic3R5bGVzIjp7ImJvbGQiOnRydWUsImZvbnQtc2l6ZSI6MTgsImNvbG9yIjoiIzU5NTk1OSJ9fSx7ImNoYXIiOiLog70iLCJzdHlsZXMiOnsiYm9sZCI6dHJ1ZSwiZm9udC1zaXplIjoxOCwiY29sb3IiOiIjNTk1OTU5In19LHsiY2hhciI6Iu+8iCIsInN0eWxlcyI6eyJib2xkIjp0cnVlLCJmb250LXNpemUiOjE4LCJjb2xvciI6IiM1OTU5NTkifX0seyJjaGFyIjoi5q+UIiwic3R5bGVzIjp7ImJvbGQiOnRydWUsImZvbnQtc2l6ZSI6MTgsImNvbG9yIjoiIzU5NTk1OSJ9fSx7ImNoYXIiOiLlpoIiLCJzdHlsZXMiOnsiYm9sZCI6dHJ1ZSwiZm9udC1zaXplIjoxOCwiY29sb3IiOiIjNTk1OTU5In19LHsiY2hhciI6Iu+8jCIsInN0eWxlcyI6eyJib2xkIjp0cnVlLCJmb250LXNpemUiOjE4LCJjb2xvciI6IiM1OTU5NTkifX0seyJjaGFyIjoi5LuOIiwic3R5bGVzIjp7ImJvbGQiOnRydWUsImZvbnQtc2l6ZSI6MTgsImNvbG9yIjoiIzU5NTk1OSJ9fSx7ImNoYXIiOiLmkK0iLCJzdHlsZXMiOnsiYm9sZCI6dHJ1ZSwiZm9udC1zaXplIjoxOCwiY29sb3IiOiIjNTk1OTU5In19LHsiY2hhciI6IuW7uiIsInN0eWxlcyI6eyJib2xkIjp0cnVlLCJmb250LXNpemUiOjE4LCJjb2xvciI6IiM1OTU5NTkifX0seyJjaGFyIjoi5YiwIiwic3R5bGVzIjp7ImJvbGQiOnRydWUsImZvbnQtc2l6ZSI6MTgsImNvbG9yIjoiIzU5NTk1OSJ9fSx7ImNoYXIiOiLov5AiLCJzdHlsZXMiOnsiYm9sZCI6dHJ1ZSwiZm9udC1zaXplIjoxOCwiY29sb3IiOiIjNTk1OTU5In19LHsiY2hhciI6IueUqCIsInN0eWxlcyI6eyJib2xkIjp0cnVlLCJmb250LXNpemUiOjE4LCJjb2xvciI6IiM1OTU5NTkifX0seyJjaGFyIjoi5ZKMIiwic3R5bGVzIjp7ImJvbGQiOnRydWUsImZvbnQtc2l6ZSI6MTgsImNvbG9yIjoiIzU5NTk1OSJ9fSx7ImNoYXIiOiLop6MiLCJzdHlsZXMiOnsiYm9sZCI6dHJ1ZSwiZm9udC1zaXplIjoxOCwiY29sb3IiOiIjNTk1OTU5In19LHsiY2hhciI6IuWGsyIsInN0eWxlcyI6eyJib2xkIjp0cnVlLCJmb250LXNpemUiOjE4LCJjb2xvciI6IiM1OTU5NTkifX0seyJjaGFyIjoi5bi4Iiwic3R5bGVzIjp7ImJvbGQiOnRydWUsImZvbnQtc2l6ZSI6MTgsImNvbG9yIjoiIzU5NTk1OSJ9fSx7ImNoYXIiOiLop4EiLCJzdHlsZXMiOnsiYm9sZCI6dHJ1ZSwiZm9udC1zaXplIjoxOCwiY29sb3IiOiIjNTk1OTU5In19LHsiY2hhciI6IumXriIsInN0eWxlcyI6eyJib2xkIjp0cnVlLCJmb250LXNpemUiOjE4LCJjb2xvciI6IiM1OTU5NTkifX0seyJjaGFyIjoi6aKYIiwic3R5bGVzIjp7ImJvbGQiOnRydWUsImZvbnQtc2l6ZSI6MTgsImNvbG9yIjoiIzU5NTk1OSJ9fSx7ImNoYXIiOiLnmoQiLCJzdHlsZXMiOnsiYm9sZCI6dHJ1ZSwiZm9udC1zaXplIjoxOCwiY29sb3IiOiIjNTk1OTU5In19LHsiY2hhciI6IuaKgCIsInN0eWxlcyI6eyJib2xkIjp0cnVlLCJmb250LXNpemUiOjE4LCJjb2xvciI6IiM1OTU5NTkifX0seyJjaGFyIjoi5benIiwic3R5bGVzIjp7ImJvbGQiOnRydWUsImZvbnQtc2l6ZSI6MTgsImNvbG9yIjoiIzU5NTk1OSJ9fSx7ImNoYXIiOiLnrYkiLCJzdHlsZXMiOnsiYm9sZCI6dHJ1ZSwiZm9udC1zaXplIjoxOCwiY29sb3IiOiIjNTk1OTU5In19LHsiY2hhciI6IuetiSIsInN0eWxlcyI6eyJib2xkIjp0cnVlLCJmb250LXNpemUiOjE4LCJjb2xvciI6IiM1OTU5NTkifX0seyJjaGFyIjoi77yJIiwic3R5bGVzIjp7ImJvbGQiOnRydWUsImZvbnQtc2l6ZSI6MTgsImNvbG9yIjoiIzU5NTk1OSJ9fSx7ImNoYXIiOiLvvIwiLCJzdHlsZXMiOnsiYm9sZCI6dHJ1ZSwiZm9udC1zaXplIjoxOCwiY29sb3IiOiIjNTk1OTU5In19LHsiY2hhciI6IuaJgCIsInN0eWxlcyI6eyJib2xkIjp0cnVlLCJmb250LXNpemUiOjE4LCJjb2xvciI6IiM1OTU5NTkifX0seyJjaGFyIjoi5LulIiwic3R5bGVzIjp7ImJvbGQiOnRydWUsImZvbnQtc2l6ZSI6MTgsImNvbG9yIjoiIzU5NTk1OSJ9fSx7ImNoYXIiOiLmiZMiLCJzdHlsZXMiOnsiYm9sZCI6dHJ1ZSwiZm9udC1zaXplIjoxOCwiY29sb3IiOiIjNTk1OTU5In19LHsiY2hhciI6IueulyIsInN0eWxlcyI6eyJib2xkIjp0cnVlLCJmb250LXNpemUiOjE4LCJjb2xvciI6IiM1OTU5NTkifX0seyJjaGFyIjoi6L+bIiwic3R5bGVzIjp7ImJvbGQiOnRydWUsImZvbnQtc2l6ZSI6MTgsImNvbG9yIjoiIzU5NTk1OSJ9fSx7ImNoYXIiOiLooYwiLCJzdHlsZXMiOnsiYm9sZCI6dHJ1ZSwiZm9udC1zaXplIjoxOCwiY29sb3IiOiIjNTk1OTU5In19LHsiY2hhciI6IuaAuyIsInN0eWxlcyI6eyJib2xkIjp0cnVlLCJmb250LXNpemUiOjE4LCJjb2xvciI6IiM1OTU5NTkifX0seyJjaGFyIjoi57uTIiwic3R5bGVzIjp7ImJvbGQiOnRydWUsImZvbnQtc2l6ZSI6MTgsImNvbG9yIjoiIzU5NTk1OSJ9fSx7ImNoYXIiOiLmgLsiLCJzdHlsZXMiOnsiYm9sZCI6dHJ1ZSwiZm9udC1zaXplIjoxOCwiY29sb3IiOiIjNTk1OTU5In19LHsiY2hhciI6Iue7kyIsInN0eWxlcyI6eyJib2xkIjp0cnVlLCJmb250LXNpemUiOjE4LCJjb2xvciI6IiM1OTU5NTkifX0seyJjaGFyIjoi44CCIiwic3R5bGVzIjp7ImJvbGQiOnRydWUsImZvbnQtc2l6ZSI6MTgsImNvbG9yIjoiIzU5NTk1OSJ9fV0sImlzUmljaFRleHQiOnRydWUsImtlZXBMaW5lQnJlYWsiOnRydWV9LCJsZXZlbCI6ImIifSx7ImJsb2NrSWQiOiI2ODE5LTE1MTIyMjA3NzA1NzIiLCJibG9ja1R5cGUiOiJwYXJhZ3JhcGgiLCJzdHlsZXMiOnt9LCJ0eXBlIjoicGFyYWdyYXBoIiwidGV4dCI6eyJkYXRhIjpbeyJjaGFyIjoiMSJ9LHsiY2hhciI6IuOAgSJ9LHsiY2hhciI6IueUtSJ9LHsiY2hhciI6IuiEkSJ9LHsiY2hhciI6Iu+8jCJ9LHsiY2hhciI6Ik0ifSx7ImNoYXIiOiJhIn0seyJjaGFyIjoiYyJ9LHsiY2hhciI6IiAifSx7ImNoYXIiOiJQIn0seyJjaGFyIjoiciJ9LHsiY2hhciI6Im8ifSx7ImNoYXIiOiLvvIwifSx7ImNoYXIiOiLmnKwifSx7ImNoYXIiOiLmnLoifSx7ImNoYXIiOiLmkK0ifSx7ImNoYXIiOiLlu7oifSx7ImNoYXIiOiJkIn0seyJjaGFyIjoibyJ9LHsiY2hhciI6ImMifSx7ImNoYXIiOiJrIn0seyJjaGFyIjoiZSJ9LHsiY2hhciI6InIifSx7ImNoYXIiOiLnjq8ifSx7ImNoYXIiOiLlooMifSx7ImNoYXIiOiLvvIwifSx7ImNoYXIiOiJnIn0seyJjaGFyIjoiaSJ9LHsiY2hhciI6IlQifSx7ImNoYXIiOiLnjq8ifSx7ImNoYXIiOiLlooMifSx7ImNoYXIiOiLvvIwifSx7ImNoYXIiOiLkuIAifSx7ImNoYXIiOiLkupsifSx7ImNoYXIiOiLlrp4ifSx7ImNoYXIiOiLnlKgifSx7ImNoYXIiOiLnmoQifSx7ImNoYXIiOiLohJoifSx7ImNoYXIiOiLmnKwifSx7ImNoYXIiOiLvvIwifSx7ImNoYXIiOiLlpoIifSx7ImNoYXIiOiJHIn0seyJjaGFyIjoi77yMIn0seyJjaGFyIjoiRiJ9LHsiY2hhciI6IiAifSx7ImNoYXIiOiLjgIIifV0sImlzUmljaFRleHQiOnRydWUsImtlZXBMaW5lQnJlYWsiOnRydWV9fSx7ImJsb2NrSWQiOiI2MDg5LTE1MTIyMjExNTQ5MDAiLCJibG9ja1R5cGUiOiJwYXJhZ3JhcGgiLCJzdHlsZXMiOnt9LCJ0eXBlIjoicGFyYWdyYXBoIiwidGV4dCI6eyJkYXRhIjpbeyJjaGFyIjoiMiJ9LHsiY2hhciI6IuOAgSJ9LHsiY2hhciI6Iui/kCJ9LHsiY2hhciI6Iue7tCJ9LHsiY2hhciI6IuWuuSJ9LHsiY2hhciI6IuWZqCJ9LHsiY2hhciI6IuW3pSJ9LHsiY2hhciI6IuWFtyJ9LHsiY2hhciI6Iu+8jCJ9LHsiY2hhciI6ImQifSx7ImNoYXIiOiJvIn0seyJjaGFyIjoiYyJ9LHsiY2hhciI6ImsifSx7ImNoYXIiOiJlIn0seyJjaGFyIjoiciJ9XSwiaXNSaWNoVGV4dCI6dHJ1ZSwia2VlcExpbmVCcmVhayI6dHJ1ZX19LHsiYmxvY2tJZCI6Ijc0NzMtMTUxMjIyMTE3MDcwNyIsImJsb2NrVHlwZSI6InBhcmFncmFwaCIsInN0eWxlcyI6e30sInR5cGUiOiJwYXJhZ3JhcGgiLCJ0ZXh0Ijp7ImRhdGEiOlt7ImNoYXIiOiIzIn0seyJjaGFyIjoi44CBIn0seyJjaGFyIjoi54mIIn0seyJjaGFyIjoi5pysIn0seyJjaGFyIjoi5o6nIn0seyJjaGFyIjoi5Yi2In0seyJjaGFyIjoi77yMIn0seyJjaGFyIjoiZyJ9LHsiY2hhciI6ImkifSx7ImNoYXIiOiJUIn1dLCJpc1JpY2hUZXh0Ijp0cnVlLCJrZWVwTGluZUJyZWFrIjp0cnVlfX0seyJibG9ja0lkIjoiNjk1My0xNTEyMjIxMTk1NzYzIiwiYmxvY2tUeXBlIjoicGFyYWdyYXBoIiwic3R5bGVzIjp7fSwidHlwZSI6InBhcmFncmFwaCIsInRleHQiOnsiZGF0YSI6W3siY2hhciI6IjQifSx7ImNoYXIiOiLjgIEifSx7ImNoYXIiOiLmjqUifSx7ImNoYXIiOiLlj6MifSx7ImNoYXIiOiLosIMifSx7ImNoYXIiOiLor5UifSx7ImNoYXIiOiLlt6UifSx7ImNoYXIiOiLlhbcifSx7ImNoYXIiOiLvvIwifSx7ImNoYXIiOiJDIn0seyJjaGFyIjoiaCJ9LHsiY2hhciI6ImEifSx7ImNoYXIiOiJyIn0seyJjaGFyIjoibCJ9LHsiY2hhciI6ImUifSx7ImNoYXIiOiJzIn0seyJjaGFyIjoi77yMIn0seyJjaGFyIjoicCJ9LHsiY2hhciI6Im8ifSx7ImNoYXIiOiJzIn0seyJjaGFyIjoidCJ9LHsiY2hhciI6Ik0ifSx7ImNoYXIiOiJhIn0seyJjaGFyIjoibiJ9XSwiaXNSaWNoVGV4dCI6dHJ1ZSwia2VlcExpbmVCcmVhayI6dHJ1ZX19LHsiYmxvY2tJZCI6IjE2ODUtMTUxMjIyMTQ3NDUwNSIsImJsb2NrVHlwZSI6InBhcmFncmFwaCIsInN0eWxlcyI6e30sInR5cGUiOiJwYXJhZ3JhcGgiLCJ0ZXh0Ijp7ImRhdGEiOlt7ImNoYXIiOiI1In0seyJjaGFyIjoi44CBIn0seyJjaGFyIjoi5pWwIn0seyJjaGFyIjoi5o2uIn0seyJjaGFyIjoi5bqTIn0seyJjaGFyIjoi77yMIn0seyJjaGFyIjoiTSJ9LHsiY2hhciI6InkifSx7ImNoYXIiOiJTIn0seyJjaGFyIjoiUSJ9LHsiY2hhciI6IkwifSx7ImNoYXIiOiLvvIwifSx7ImNoYXIiOiJSIn0seyJjaGFyIjoiZSJ9LHsiY2hhciI6ImQifSx7ImNoYXIiOiJpIn0seyJjaGFyIjoicyJ9LHsiY2hhciI6Iu+8jCJ9LHsiY2hhciI6Im0ifSx7ImNoYXIiOiJlIn0seyJjaGFyIjoibSJ9LHsiY2hhciI6ImUifSx7ImNoYXIiOiJjIn0seyJjaGFyIjoiYSJ9LHsiY2hhciI6ImMifSx7ImNoYXIiOiJoIn0seyJjaGFyIjoiZSJ9LHsiY2hhciI6ImQifV0sImlzUmljaFRleHQiOnRydWUsImtlZXBMaW5lQnJlYWsiOnRydWV9fSx7ImJsb2NrSWQiOiI0NjczLTE1MTIyMjE1MzIwMTUiLCJibG9ja1R5cGUiOiJwYXJhZ3JhcGgiLCJzdHlsZXMiOnt9LCJ0eXBlIjoicGFyYWdyYXBoIiwidGV4dCI6eyJkYXRhIjpbeyJjaGFyIjoiNiJ9LHsiY2hhciI6IuOAgSJ9LHsiY2hhciI6IuaWhyJ9LHsiY2hhciI6IuahoyJ9LHsiY2hhciI6IuS5piJ9LHsiY2hhciI6IuWGmSJ9LHsiY2hhciI6Iu+8jCJ9LHsiY2hhciI6ImcifSx7ImNoYXIiOiJpIn0seyJjaGFyIjoidCJ9LHsiY2hhciI6ImwifSx7ImNoYXIiOiJhIn0seyJjaGFyIjoiYiJ9LHsiY2hhciI6IiwifSx7ImNoYXIiOiJNIn0seyJjaGFyIjoiYSJ9LHsiY2hhciI6InIifSx7ImNoYXIiOiJrIn0seyJjaGFyIjoiZCJ9LHsiY2hhciI6Im8ifSx7ImNoYXIiOiJ3In0seyJjaGFyIjoibiJ9XSwiaXNSaWNoVGV4dCI6dHJ1ZSwia2VlcExpbmVCcmVhayI6dHJ1ZX19LHsiYmxvY2tJZCI6IjU5ODItMTUxMjIyMTU1Mzg3MyIsImJsb2NrVHlwZSI6InBhcmFncmFwaCIsInN0eWxlcyI6e30sInR5cGUiOiJwYXJhZ3JhcGgiLCJ0ZXh0Ijp7ImRhdGEiOlt7ImNoYXIiOiI3In0seyJjaGFyIjoi44CBIn0seyJjaGFyIjoiUCJ9LHsiY2hhciI6IkgifSx7ImNoYXIiOiJQIn0seyJjaGFyIjoi5qGGIn0seyJjaGFyIjoi5p62In0seyJjaGFyIjoi77yMIn0seyJjaGFyIjoibCJ9LHsiY2hhciI6ImEifSx7ImNoYXIiOiJyIn0seyJjaGFyIjoiYSJ9LHsiY2hhciI6InYifSx7ImNoYXIiOiJlIn0seyJjaGFyIjoibCJ9LHsiY2hhciI6IjUifSx7ImNoYXIiOiIuIn0seyJjaGFyIjoiNCJ9XSwiaXNSaWNoVGV4dCI6dHJ1ZSwia2VlcExpbmVCcmVhayI6dHJ1ZX19LHsiYmxvY2tJZCI6Ijg0NDgtMTUxMjIyMTU4MjM5MiIsImJsb2NrVHlwZSI6InBhcmFncmFwaCIsInN0eWxlcyI6e30sInR5cGUiOiJwYXJhZ3JhcGgiLCJ0ZXh0Ijp7ImRhdGEiOlt7ImNoYXIiOiI4In0seyJjaGFyIjoi44CBIn0seyJjaGFyIjoiSSJ9LHsiY2hhciI6IkQifSx7ImNoYXIiOiJFIn0seyJjaGFyIjoi77yMIn0seyJjaGFyIjoicCJ9LHsiY2hhciI6ImgifSx7ImNoYXIiOiJwIn0seyJjaGFyIjoicyJ9LHsiY2hhciI6InQifSx7ImNoYXIiOiJwIn0seyJjaGFyIjoibSJ9LHsiY2hhciI6IiwifSx7ImNoYXIiOiJ2In0seyJjaGFyIjoiaSJ9LHsiY2hhciI6Im0ifSx7ImNoYXIiOiIgIn1dLCJpc1JpY2hUZXh0Ijp0cnVlLCJrZWVwTGluZUJyZWFrIjp0cnVlfX0seyJibG9ja0lkIjoiNDM0Mi0xNTEyMjIxNjYwODQyIiwiYmxvY2tUeXBlIjoicGFyYWdyYXBoIiwic3R5bGVzIjp7fSwidHlwZSI6InBhcmFncmFwaCIsInRleHQiOnsiZGF0YSI6W3siY2hhciI6IjkifSx7ImNoYXIiOiLjgIEifSx7ImNoYXIiOiLliY0ifSx7ImNoYXIiOiLnq68ifSx7ImNoYXIiOiLmoYYifSx7ImNoYXIiOiLmnrYifSx7ImNoYXIiOiLvvJoifSx7ImNoYXIiOiJWIn0seyJjaGFyIjoidSJ9LHsiY2hhciI6ImUifSx7ImNoYXIiOiLvvIwifSx7ImNoYXIiOiJzIn0seyJjaGFyIjoibSJ9LHsiY2hhciI6ImEifSx7ImNoYXIiOiJyIn0seyJjaGFyIjoidCJ9LHsiY2hhciI6InkifV0sImlzUmljaFRleHQiOnRydWUsImtlZXBMaW5lQnJlYWsiOnRydWV9fSx7ImJsb2NrSWQiOiI0NzcwLTE1MTIyMjE3MTgyOTEiLCJibG9ja1R5cGUiOiJwYXJhZ3JhcGgiLCJzdHlsZXMiOnt9LCJ0eXBlIjoicGFyYWdyYXBoIiwidGV4dCI6eyJkYXRhIjpbeyJjaGFyIjoiMSJ9LHsiY2hhciI6IjAifSx7ImNoYXIiOiLjgIEifSx7ImNoYXIiOiLpmJ8ifSx7ImNoYXIiOiLliJcifSx7ImNoYXIiOiLvvIwifSx7ImNoYXIiOiJyIn0seyJjaGFyIjoiYSJ9LHsiY2hhciI6ImIifSx7ImNoYXIiOiJpIn0seyJjaGFyIjoidCJ9LHsiY2hhciI6Im0ifSx7ImNoYXIiOiJxIn1dLCJpc1JpY2hUZXh0Ijp0cnVlLCJrZWVwTGluZUJyZWFrIjp0cnVlfX0seyJibG9ja0lkIjoiNjk2OS0xNTEyMjIxNjU2NjczIiwiYmxvY2tUeXBlIjoicGFyYWdyYXBoIiwic3R5bGVzIjp7fSwidHlwZSI6InBhcmFncmFwaCIsInRleHQiOnsiZGF0YSI6W3siY2hhciI6IjEifSx7ImNoYXIiOiIxIn0seyJjaGFyIjoi44CBIn0seyJjaGFyIjoi5pCcIn0seyJjaGFyIjoi57SiIn0seyJjaGFyIjoi77yMIn0seyJjaGFyIjoiZSJ9LHsiY2hhciI6ImwifSx7ImNoYXIiOiJhIn0seyJjaGFyIjoicyJ9LHsiY2hhciI6InQifSx7ImNoYXIiOiJpIn0seyJjaGFyIjoiYyJ9LHsiY2hhciI6InMifSx7ImNoYXIiOiJlIn0seyJjaGFyIjoiYSJ9LHsiY2hhciI6InIifSx7ImNoYXIiOiJjIn0seyJjaGFyIjoiaCJ9LHsiY2hhciI6Iu+8jCJ9LHsiY2hhciI6InMifSx7ImNoYXIiOiJwIn0seyJjaGFyIjoiaCJ9LHsiY2hhciI6ImkifSx7ImNoYXIiOiJuIn0seyJjaGFyIjoieCJ9XSwiaXNSaWNoVGV4dCI6dHJ1ZSwia2VlcExpbmVCcmVhayI6dHJ1ZX19LHsiYmxvY2tJZCI6IjgwNzItMTUxMjIyMTg0NzUzNiIsImJsb2NrVHlwZSI6InBhcmFncmFwaCIsInN0eWxlcyI6e30sInR5cGUiOiJwYXJhZ3JhcGgiLCJ0ZXh0Ijp7ImRhdGEiOlt7ImNoYXIiOiIxIn0seyJjaGFyIjoiMiJ9LHsiY2hhciI6IuOAgSJ9LHsiY2hhciI6IiAifSx7ImNoYXIiOiJQIn0seyJjaGFyIjoiSCJ9LHsiY2hhciI6IlAifSx7ImNoYXIiOiLnlKgifSx7ImNoYXIiOiLmnaUifSx7ImNoYXIiOiLnrqEifSx7ImNoYXIiOiLnkIYifSx7ImNoYXIiOiLkvp0ifSx7ImNoYXIiOiLotZYifSx7ImNoYXIiOiLlhbMifSx7ImNoYXIiOiLns7sifSx7ImNoYXIiOiLnmoQifSx7ImNoYXIiOiLlt6UifSx7ImNoYXIiOiLlhbcifSx7ImNoYXIiOiIgIn0seyJjaGFyIjoi77yMIn0seyJjaGFyIjoiYyJ9LHsiY2hhciI6Im8ifSx7ImNoYXIiOiJtIn0seyJjaGFyIjoicCJ9LHsiY2hhciI6Im8ifSx7ImNoYXIiOiJzIn0seyJjaGFyIjoiZSJ9LHsiY2hhciI6InIifV0sImlzUmljaFRleHQiOnRydWUsImtlZXBMaW5lQnJlYWsiOnRydWV9fSx7ImJsb2NrSWQiOiI4Mzc2LTE1MTIyMjE1ODY4ODkiLCJibG9ja1R5cGUiOiJwYXJhZ3JhcGgiLCJzdHlsZXMiOnt9LCJ0eXBlIjoicGFyYWdyYXBoIiwidGV4dCI6eyJkYXRhIjpbeyJjaGFyIjoiMSJ9LHsiY2hhciI6IjMifSx7ImNoYXIiOiLjgIEifSx7ImNoYXIiOiLpgq4ifSx7ImNoYXIiOiLku7YifSx7ImNoYXIiOiLnrKwifSx7ImNoYXIiOiLkuIkifSx7ImNoYXIiOiLmlrkifSx7ImNoYXIiOiLmnI0ifSx7ImNoYXIiOiLliqEifSx7ImNoYXIiOiLvvIwifSx7ImNoYXIiOiJzIn0seyJjaGFyIjoiZSJ9LHsiY2hhciI6Im4ifSx7ImNoYXIiOiJkIn0seyJjaGFyIjoiYyJ9LHsiY2hhciI6ImwifSx7ImNoYXIiOiJvIn0seyJjaGFyIjoidSJ9LHsiY2hhciI6ImQifSx7ImNoYXIiOiLvvIwifSx7ImNoYXIiOiJtIn0seyJjaGFyIjoiYSJ9LHsiY2hhciI6ImkifSx7ImNoYXIiOiJsIn0seyJjaGFyIjoiZyJ9LHsiY2hhciI6InUifSx7ImNoYXIiOiJuIn1dLCJpc1JpY2hUZXh0Ijp0cnVlLCJrZWVwTGluZUJyZWFrIjp0cnVlfX0seyJibG9ja0lkIjoiNzk3Ny0xNTEyMjIyMDIzMDM4IiwiYmxvY2tUeXBlIjoicGFyYWdyYXBoIiwic3R5bGVzIjp7fSwidHlwZSI6InBhcmFncmFwaCIsInRleHQiOnsiZGF0YSI6W3siY2hhciI6IjEifSx7ImNoYXIiOiI0In0seyJjaGFyIjoi44CBIn0seyJjaGFyIjoi5Y2VIn0seyJjaGFyIjoi5YWDIn0seyJjaGFyIjoi5rWLIn0seyJjaGFyIjoi6K+VIn0seyJjaGFyIjoi77yMIn0seyJjaGFyIjoicCJ9LHsiY2hhciI6ImgifSx7ImNoYXIiOiJwIn0seyJjaGFyIjoidSJ9LHsiY2hhciI6Im4ifSx7ImNoYXIiOiJpIn0seyJjaGFyIjoidCJ9XSwiaXNSaWNoVGV4dCI6dHJ1ZSwia2VlcExpbmVCcmVhayI6dHJ1ZX19LHsiYmxvY2tJZCI6IjIwNDMtMTUxMjIyMjA2MzIxMyIsImJsb2NrVHlwZSI6InBhcmFncmFwaCIsInN0eWxlcyI6e30sInR5cGUiOiJwYXJhZ3JhcGgiLCJ0ZXh0Ijp7ImRhdGEiOlt7ImNoYXIiOiIxIn0seyJjaGFyIjoiNSJ9LHsiY2hhciI6IuOAgSJ9LHsiY2hhciI6IuS7oyJ9LHsiY2hhciI6IueggSJ9LHsiY2hhciI6IuinhCJ9LHsiY2hhciI6IuiMgyJ9LHsiY2hhciI6Iu+8jCJ9LHsiY2hhciI6IuWPgiJ9LHsiY2hhciI6IuiAgyJ9LHsiY2hhciI6IumYvyJ9LHsiY2hhciI6IumHjCJ9LHsiY2hhciI6IuW3tCJ9LHsiY2hhciI6IuW3tCJ9LHsiY2hhciI6IuS7oyJ9LHsiY2hhciI6IueggSJ9LHsiY2hhciI6IuinhCJ9LHsiY2hhciI6IuiMgyJ9XSwiaXNSaWNoVGV4dCI6dHJ1ZSwia2VlcExpbmVCcmVhayI6dHJ1ZX19LHsiYmxvY2tJZCI6IjE0MjItMTUxMjIyMjE0Mjg2MSIsImJsb2NrVHlwZSI6InBhcmFncmFwaCIsInN0eWxlcyI6e30sInR5cGUiOiJwYXJhZ3JhcGgiLCJ0ZXh0Ijp7ImRhdGEiOlt7ImNoYXIiOiIxIn0seyJjaGFyIjoiNiJ9LHsiY2hhciI6IuOAgSJ9LHsiY2hhciI6IuS7oyJ9LHsiY2hhciI6IueggSJ9LHsiY2hhciI6IuWuoSJ9LHsiY2hhciI6IuafpSJ9LHsiY2hhciI6IuacuiJ9LHsiY2hhciI6IuWItiJ9LHsiY2hhciI6Iu+8jCJ9LHsiY2hhciI6ImcifSx7ImNoYXIiOiJpIn0seyJjaGFyIjoidCJ9LHsiY2hhciI6Ik0ifSx7ImNoYXIiOiJlIn0seyJjaGFyIjoiciJ9LHsiY2hhciI6ImcifSx7ImNoYXIiOiJlIn0seyJjaGFyIjoiUiJ9LHsiY2hhciI6ImUifSx7ImNoYXIiOiJxIn0seyJjaGFyIjoidSJ9LHsiY2hhciI6ImUifSx7ImNoYXIiOiJzIn0seyJjaGFyIjoidCJ9XSwiaXNSaWNoVGV4dCI6dHJ1ZSwia2VlcExpbmVCcmVhayI6dHJ1ZX19LHsiYmxvY2tJZCI6IjMyOTMtMTUxMjIyMTU0MzQyOSIsImJsb2NrVHlwZSI6InBhcmFncmFwaCIsInN0eWxlcyI6e30sInR5cGUiOiJwYXJhZ3JhcGgiLCJ0ZXh0Ijp7ImRhdGEiOlt7ImNoYXIiOiIxIn0seyJjaGFyIjoiNyJ9LHsiY2hhciI6IuOAgSJ9LHsiY2hhciI6IuS7oyJ9LHsiY2hhciI6IueggSJ9LHsiY2hhciI6IuW/qyJ9LHsiY2hhciI6IumAnyJ9LHsiY2hhciI6IuS4iiJ9LHsiY2hhciI6Iue6vyJ9LHsiY2hhciI6IuWSjCJ9LHsiY2hhciI6IuaZriJ9LHsiY2hhciI6IumAmiJ9LHsiY2hhciI6IueJiCJ9LHsiY2hhciI6IuacrCJ9LHsiY2hhciI6Iui/rSJ9LHsiY2hhciI6IuS7oyJ9LHsiY2hhciI6IuacuiJ9LHsiY2hhciI6IuWItiJ9LHsiY2hhciI6Iu+8jCJ9LHsiY2hhciI6IuWRqCJ9LHsiY2hhciI6Iui/rSJ9LHsiY2hhciI6IuS7oyJ9LHsiY2hhciI6Iu+8jCJ9LHsiY2hhciI6IjEifSx7ImNoYXIiOiI0In0seyJjaGFyIjoiOSJ9LHsiY2hhciI6Iu+8jCJ9LHsiY2hhciI6ImQifSx7ImNoYXIiOiJlIn0seyJjaGFyIjoidiJ9LHsiY2hhciI6ImUifSx7ImNoYXIiOiJsIn0seyJjaGFyIjoibyJ9LHsiY2hhciI6InAifSx7ImNoYXIiOiLvvIwifSx7ImNoYXIiOiJhIn0seyJjaGFyIjoibCJ9LHsiY2hhciI6InAifSx7ImNoYXIiOiJoIn0seyJjaGFyIjoiYSJ9LHsiY2hhciI6IuWQhCJ9LHsiY2hhciI6IuS4qiJ9LHsiY2hhciI6IueOryJ9LHsiY2hhciI6IuWigyJ9LHsiY2hhciI6IuS5iyJ9LHsiY2hhciI6IumXtCJ9LHsiY2hhciI6IueahCJ9LHsiY2hhciI6IuS7oyJ9LHsiY2hhciI6IueggSJ9LHsiY2hhciI6IumAmiJ9LHsiY2hhciI6IuiuryJ9LHsiY2hhciI6IuacuiJ9LHsiY2hhciI6IuWItiJ9LHsiY2hhciI6Iu+8jCJ9LHsiY2hhciI6ImgifSx7ImNoYXIiOiJvIn0seyJjaGFyIjoidCJ9LHsiY2hhciI6ImYifSx7ImNoYXIiOiJpIn0seyJjaGFyIjoieCJ9LHsiY2hhciI6IuOAgiJ9XSwiaXNSaWNoVGV4dCI6dHJ1ZSwia2VlcExpbmVCcmVhayI6dHJ1ZX19LHsiYmxvY2tJZCI6IjMzOTQtMTUxMjIyMjI2ODEzNSIsImJsb2NrVHlwZSI6InBhcmFncmFwaCIsInN0eWxlcyI6e30sInR5cGUiOiJwYXJhZ3JhcGgiLCJ0ZXh0Ijp7ImRhdGEiOlt7ImNoYXIiOiIxIn0seyJjaGFyIjoiOCJ9LHsiY2hhciI6IuOAgSJ9LHsiY2hhciI6IuWumiJ9LHsiY2hhciI6IuaXtiJ9LHsiY2hhciI6IuiuoSJ9LHsiY2hhciI6IuWIkiJ9LHsiY2hhciI6IuS7uyJ9LHsiY2hhciI6IuWKoSJ9LHsiY2hhciI6IuWSjCJ9LHsiY2hhciI6IuaciSJ9LHsiY2hhciI6IueUqCJ9LHsiY2hhciI6IueahCJ9LHsiY2hhciI6IuiEmiJ9LHsiY2hhciI6IuacrCJ9LHsiY2hhciI6Iu+8jCJ9LHsiY2hhciI6ImMifSx7ImNoYXIiOiJyIn0seyJjaGFyIjoibyJ9LHsiY2hhciI6Im4ifSx7ImNoYXIiOiJqIn0seyJjaGFyIjoibyJ9LHsiY2hhciI6ImIifSx7ImNoYXIiOiLvvIwifSx7ImNoYXIiOiJnIn0seyJjaGFyIjoiICJ9LHsiY2hhciI6IuetiSJ9LHsiY2hhciI6IuetiSJ9LHsiY2hhciI6IuOAgiJ9XSwiaXNSaWNoVGV4dCI6dHJ1ZSwia2VlcExpbmVCcmVhayI6dHJ1ZX19LHsiYmxvY2tJZCI6IjkwOTktMTUxMjIyMjMzOTU2NCIsImJsb2NrVHlwZSI6InBhcmFncmFwaCIsInN0eWxlcyI6e30sInR5cGUiOiJwYXJhZ3JhcGgiLCJ0ZXh0Ijp7ImRhdGEiOlt7ImNoYXIiOiIxIn0seyJjaGFyIjoiOSJ9LHsiY2hhciI6IuOAgSJ9LHsiY2hhciI6IuenuyJ9LHsiY2hhciI6IuWKqCJ9LHsiY2hhciI6IuerryJ9LHsiY2hhciI6IuaOpSJ9LHsiY2hhciI6IuWPoyJ9LHsiY2hhciI6IuW8gCJ9LHsiY2hhciI6IuWPkSJ9LHsiY2hhciI6IuinhCJ9LHsiY2hhciI6IuiMgyJ9LHsiY2hhciI6IuWSjCJ9LHsiY2hhciI6IuWkpyJ9LHsiY2hhciI6IuiHtCJ9LHsiY2hhciI6Iua1gSJ9LHsiY2hhciI6IueoiyJ9LHsiY2hhciI6IuOAgiJ9XSwiaXNSaWNoVGV4dCI6dHJ1ZSwia2VlcExpbmVCcmVhayI6dHJ1ZX19LHsiYmxvY2tJZCI6IjIwMzktMTUxMjIyMjQzMzk2MSIsImJsb2NrVHlwZSI6InBhcmFncmFwaCIsInN0eWxlcyI6e30sInR5cGUiOiJwYXJhZ3JhcGgiLCJ0ZXh0Ijp7ImRhdGEiOlt7ImNoYXIiOiIyIn0seyJjaGFyIjoiMCJ9LHsiY2hhciI6IuOAgSJ9LHsiY2hhciI6IuenuyJ9LHsiY2hhciI6IuWKqCJ9LHsiY2hhciI6IuerryJ9LHsiY2hhciI6IueJiCJ9LHsiY2hhciI6IuacrCJ9LHsiY2hhciI6IuaOpyJ9LHsiY2hhciI6IuWItiJ9LHsiY2hhciI6IuWkpyJ9LHsiY2hhciI6IuiHtCJ9LHsiY2hhciI6Iua1gSJ9LHsiY2hhciI6IueoiyJ9LHsiY2hhciI6IuOAgiJ9XSwiaXNSaWNoVGV4dCI6dHJ1ZSwia2VlcExpbmVCcmVhayI6dHJ1ZX19LHsiYmxvY2tJZCI6Ijk1MTUtMTUxMjIyMjQ1MDU3MSIsImJsb2NrVHlwZSI6InBhcmFncmFwaCIsInN0eWxlcyI6e30sInR5cGUiOiJwYXJhZ3JhcGgiLCJ0ZXh0Ijp7ImRhdGEiOlt7ImNoYXIiOiIyIn0seyJjaGFyIjoiMSJ9LHsiY2hhciI6IuOAgSJ9LHsiY2hhciI6IuenuyJ9LHsiY2hhciI6IuWKqCJ9LHsiY2hhciI6IuaUryJ9LHsiY2hhciI6IuS7mCJ9LHsiY2hhciI6Iu+8jCJ9LHsiY2hhciI6IuW+riJ9LHsiY2hhciI6IuS/oSJ9LHsiY2hhciI6Iu+8jCJ9LHsiY2hhciI6IuaUryJ9LHsiY2hhciI6IuS7mCJ9LHsiY2hhciI6IuWunSJ9LHsiY2hhciI6Iu+8jCJ9LHsiY2hhciI6IumTtiJ9LHsiY2hhciI6IuiBlCJ9LHsiY2hhciI6IuOAgiJ9XSwiaXNSaWNoVGV4dCI6dHJ1ZSwia2VlcExpbmVCcmVhayI6dHJ1ZX19LHsiYmxvY2tJZCI6IjAwNTktMTUxMjIyMjUwMDMzMCIsImJsb2NrVHlwZSI6InBhcmFncmFwaCIsInN0eWxlcyI6e30sInR5cGUiOiJwYXJhZ3JhcGgiLCJ0ZXh0Ijp7ImRhdGEiOlt7ImNoYXIiOiIyIn0seyJjaGFyIjoiMiJ9LHsiY2hhciI6IuOAgSJ9LHsiY2hhciI6Iue9kSJ9LHsiY2hhciI6IuaYkyJ9LHsiY2hhciI6IuebtCJ9LHsiY2hhciI6IuaSrSJ9LHsiY2hhciI6ImoifSx7ImNoYXIiOiJkIn0seyJjaGFyIjoiayJ9XSwiaXNSaWNoVGV4dCI6dHJ1ZSwia2VlcExpbmVCcmVhayI6dHJ1ZX19LHsiYmxvY2tJZCI6Ijc2MzgtMTUxMjIyMjUyMjA2NSIsImJsb2NrVHlwZSI6InBhcmFncmFwaCIsInN0eWxlcyI6e30sInR5cGUiOiJwYXJhZ3JhcGgiLCJ0ZXh0Ijp7ImRhdGEiOlt7ImNoYXIiOiIyIn0seyJjaGFyIjoiMyJ9LHsiY2hhciI6IuOAgSJ9LHsiY2hhciI6IuePrSJ9LHsiY2hhciI6Iue6pyJ9LHsiY2hhciI6IuepuiJ9LHsiY2hhciI6IumXtCJ9LHsiY2hhciI6IuaVsCJ9LHsiY2hhciI6IuaNriJ9LHsiY2hhciI6Iue8kyJ9LHsiY2hhciI6IuWtmCJ9LHsiY2hhciI6IuacuiJ9LHsiY2hhciI6IuWItiJ9XSwiaXNSaWNoVGV4dCI6dHJ1ZSwia2VlcExpbmVCcmVhayI6dHJ1ZX19LHsiYmxvY2tJZCI6IjQ0OTItMTUxMjIyMjU1OTUxMyIsImJsb2NrVHlwZSI6InBhcmFncmFwaCIsInN0eWxlcyI6e30sInR5cGUiOiJwYXJhZ3JhcGgiLCJ0ZXh0Ijp7ImRhdGEiOlt7ImNoYXIiOiIyIn0seyJjaGFyIjoiNCJ9LHsiY2hhciI6IuOAgSJ9LHsiY2hhciI6IuePrSJ9LHsiY2hhciI6Iue6pyJ9LHsiY2hhciI6IuepuiJ9LHsiY2hhciI6IumXtCJ9LHsiY2hhciI6IuaVsCJ9LHsiY2hhciI6IuaNriJ9LHsiY2hhciI6IuaetiJ9LHsiY2hhciI6IuaehCJ9LHsiY2hhciI6Iu+8jCJ9LHsiY2hhciI6IuivuyJ9LHsiY2hhciI6IuWGmSJ9LHsiY2hhciI6IuWIhiJ9LHsiY2hhciI6IuemuyJ9LHsiY2hhciI6Iu+8jCJ9LHsiY2hhciI6Iue8kyJ9LHsiY2hhciI6IuWtmCJ9LHsiY2hhciI6IuacuiJ9LHsiY2hhciI6IuWItiJ9XSwiaXNSaWNoVGV4dCI6dHJ1ZSwia2VlcExpbmVCcmVhayI6dHJ1ZX19LHsiYmxvY2tJZCI6IjY2MjUtMTUxMjIyMjc2NjY1OCIsImJsb2NrVHlwZSI6InBhcmFncmFwaCIsInN0eWxlcyI6e30sInR5cGUiOiJwYXJhZ3JhcGgiLCJ0ZXh0Ijp7ImRhdGEiOlt7ImNoYXIiOiIyIn0seyJjaGFyIjoiNSJ9LHsiY2hhciI6IuOAgSJ9LHsiY2hhciI6IuetiSJ9LHsiY2hhciI6IuaDsyJ9LHsiY2hhciI6IuWIsCJ9LHsiY2hhciI6IuS6hiJ9LHsiY2hhciI6IuWcqCJ9LHsiY2hhciI6IuWBmiJ9LHsiY2hhciI6IuihpSJ9LHsiY2hhciI6IuWFhSJ9LHsiY2hhciI6IuOAgiJ9LHsiY2hhciI6IuOAgiJ9LHsiY2hhciI6IuOAgiJ9XSwiaXNSaWNoVGV4dCI6dHJ1ZSwia2VlcExpbmVCcmVhayI6dHJ1ZX19XQ==-->','','','','','187','N','N','','','0','0','N','1516774476','0','Y','0','','Y','1512223240');
INSERT INTO `bage_post` VALUES('101','1','','','面试题awk的考察','','','','','','','','18','0','面试题awk的考察','','','','','<p>\r\n	&nbsp; &nbsp; 原题大致意思是这样的，给了一个文件tmp.log其结构如下：\r\n<pre class=\"prettyprint\">url:url_2:visit:2\r\nurl:url_3:visit:3\r\nurl:url_7:visit:7 \r\n\r\n</pre>\r\n</p>\r\n<p>\r\n	现在需要输出前两行url且排名降序排列（visist对应为访客量），请设计脚本按要求输出？\r\n</p>\r\n<p class=\"p1\">\r\n	<br />\r\n</p>\r\n<pre class=\"prettyprint lang-bsh\">//cat f11.txt| awk \' BEGIN {FS=\":\"} {print $2 \"\\t\" $4}\' | sort -nr\r\ntail -2 f11.txt| awk \' BEGIN {FS=\":\"} {print $2 \"\\t\" $4}\' | sort -nr</pre>\r\n<pre class=\"prettyprint lang-bsh\"><img src=\"/uploads/201801/815deee0fcaf94a79a1473d1dfbbf345.png\" alt=\"\" /> </pre>\r\n<p>\r\n	<br />\r\n</p>','','','','awk','13','N','N','','','0','0','N','1516979607','0','Y','0','','Y','1516978624');
INSERT INTO `bage_post` VALUES('95','1','','','支付宝付款码如何做到防止盗刷的','','','','','','','','18','0','支付宝付款码如何做到被盗用的','','','支付宝付款码如何做到被盗用的','','<p>rn	&nbsp; &nbsp; &nbsp; 最近在超市购物又没带现金，我边让旁边的哥们用手机把我的付款码拍下，以防手机没电无法支付的尴尬，之后手机还算给你支撑到了付款，后来我也要求这位把拍摄的二维码彻底删除。我再回来的路上，思考若别人拿你的支付码做文章会不会出现被盗刷的现象呢rn</p>rn<p>rn	&nbsp; &nbsp; &nbsp; 通过查询百度知乎等支付宝付款码可能采取的安全措施rn</p>rn<p>rn	<br />rn</p>rn<ol>rn	<li>rn		付款码里的二维码是有时间限制的，每分钟会自动更新一次。rn	</li>rn	<li>rn		虽然没有深入研究，不过我认为以当前时间（估计能精确到毫秒级别）为种子生成随机数，再将数据信息、验证信息和此随机数结合生成验证码就可以了吧。rn	</li>rn	<li>rn		9.0版本引入”安全大脑“（支付宝最先进的功能）在你使用扫码付款时，它具有识别主人的功能，但凡发现不是主人在使用支付宝，会立刻开启保护模式。（<a href=\"http://m.9553.com/article/35384.htm\" target=\"_blank\">详细介绍</a>&nbsp;）<a href=\"https://www.zhihu.com/question/33267586\" target=\"_blank\">知乎讨论：</a> rn	</li>rn</ol>rn<p>rn	<br />rn</p>','','','','支付宝,如何','288','N','N','','','0','0','N','1496746357','0','Y','0','','Y','1496581838');
INSERT INTO `bage_post` VALUES('96','1','','','客观评价【武汉】和【杭州】两座省会城市','','','font-weight:bold;','a:1:{s:4:\"bold\";s:1:\"Y\";}','','','','18','0','','','',' 我是个在杭州IT三巨头工作的武汉人，之前全国已去过十几个城市旅游，已在杭州买了13W左右的代步车，目前还未决定定居杭州，客观评价下武汉和杭州两座城市优劣。','','&nbsp;<span style=\"color:#333333;font-family:&quot;font-size:14px;background-color:#FFFFFF;\">我是个在杭州IT三巨头工作的武汉人，之前全国已去过十几个城市旅游，已在杭州买了13W左右的代步车，目前还未决定定居杭州，客观评价下武汉和杭州两座城市优劣。</span><br />\r\n<p>\r\n	<span style=\"color:#333333;font-family:&quot;font-size:14px;background-color:#FFFFFF;\">【杭州】</span>\r\n</p>\r\n<p>\r\n	<span style=\"color:#333333;font-family:&quot;font-size:14px;background-color:#FFFFFF;\"><img src=\"/uploads/201801/b102a514f734960e4c42bf7f67520130.jpeg\" alt=\"\" /><br />\r\n</span>\r\n</p>\r\n<span style=\"color:#333333;font-family:&quot;font-size:14px;background-color:#FFFFFF;\">优点：民营企业多且发展良好，市民素质高，百姓很友善，人均收入高于武汉，生活物价水平与武汉基本平齐。就业机会和选择面较宽。</span><br />\r\n<span style=\"color:#333333;font-family:&quot;font-size:14px;background-color:#FFFFFF;\">缺点：房价高，均价2.6W是保守，相比武汉均价1W来说，作为外地人就是月薪拿1W也很难买房定居杭州，当然如果你选择炒房产，杭州新区萧山余杭的房价增幅空间非常大，这里投资回报率会比武汉高。交通差：从地铁建设和地面交通建设看落后武汉不止3年，地面交通来看杭州几乎可以说没有什么立体交通规划，立交桥建设少的可怜，导致我在杭州高架上开车基本是蚂蚁走路走走停停，大跌眼镜。地铁交通：1号线建成不久，而且线路走的很偏实用性很低。剩下2号线预估最快在2017年建设，这和武汉今年要开通的3号线比起来，地铁建设落后太多。</span><br />\r\n<p>\r\n	<span style=\"color:#333333;font-family:&quot;font-size:14px;background-color:#FFFFFF;\">【武汉】</span>\r\n</p>\r\n<p>\r\n	<span style=\"color:#333333;font-family:&quot;font-size:14px;background-color:#FFFFFF;\"><img src=\"/uploads/201801/795688cd1624a217cd1801e061b1bf5a.jpeg\" alt=\"\" /><br />\r\n</span>\r\n</p>\r\n<span style=\"color:#333333;font-family:&quot;font-size:14px;background-color:#FFFFFF;\">优点：作为在家乡待了二十多年的人来说，最大印象就是武汉遍地美食，是杭州乃至其他城市无法比拟的，从种类繁多的早餐，到各种美味的夜宵，相信无论是外地人还是本地人都会留下深刻印象。其次武汉房价在全国来讲属于中下价位，对于买房定居来讲9000-1W的均价会让你在武汉比起杭州活的很轻松。交通武汉的主城区基本已完成70%立体交通建设，每个主路口都有立体高架桥，同时有机场快速通道。地铁：武汉基本保持一年通一线的高效建设，去年2号线，今天4号线，随着地铁线路的快速覆盖，加之武汉房价仍然偏低，未来5年武汉房价依然会稳步提升。</span><br />\r\nrn<span style=\"color:#333333;font-family:&quot;font-size:14px;background-color:#FFFFFF;\">缺点：去过很多城市，不单看杭州的话，武汉人的素质是偏低的，这点还是要客观承认，武汉人每次提到素质问题就会归咎于外地人多影响了武汉形象，这点诚然，但不能作为理由。据我所知，杭州总人口750W多，武汉900W多，杭州外地人口也占据了400W多，人家的人文管理为何就这么有秩序，为何外地人到武汉就变成那样，不得不反思，环境改变人。经济：由于武汉是重工业城市，科教、医疗、工业均优于杭州，由于每年众多的大学毕业生，使武汉工作待遇低，竞争激烈，就业选择面狭窄，当然如果你在这座城市从事公务员、大学教师、医疗工作者那就另一说了。所以武汉需要学习杭州大力发展实体经济、扶持中小民营企业的发展才能更好的把武汉发展壮大。</span><br />\r\n<p>\r\n	<span style=\"color:#333333;font-family:&quot;font-size:14px;background-color:#FFFFFF;\">PS：说些歪的，武汉的美女要远多过杭州，但是穿衣时尚上杭州女人更会搭配，同时奢侈品消费需求也高于武汉，杭州偶遇的街头美女很少并且都是杭州周边非本地人，这点比较惋惜。再就是杭州的菜偏甜，实在吃不惯，当然跟上海比起来好多了。最后不得不说杭州作为上海的后花园，在经济发展上得到很多实惠，要是武汉能真正得到中央拨款就好了，每年中年都说要大力发展中部，结果都是口号，到了地方要钱的时候，中央又不给了，比较惋惜。</span> \r\n</p>\r\n<p>\r\n	<span style=\"color:#333333;font-family:&quot;font-size:14px;background-color:#FFFFFF;\">&nbsp; &nbsp; &nbsp; 如果要旅游的话，杭州的风景名胜较多，历史底蕴也深厚，旅游产业的发展值得武汉学习。每次杭州的朋友要去武汉玩，我都说你把武汉小吃吃遍然后再乘船对比武汉东湖的大气与杭州西湖的精致就玩到了，黄鹤楼和雷峰塔一样，外面看看就行，进去就是坑爹货。哈哈</span> \r\n</p>\r\n<p>\r\n	<span style=\"color:#333333;font-family:&quot;font-size:14px;background-color:#FFFFFF;\">最后欢迎大家加入讨论，文明冷静就好，勿喷我哈~</span> \r\n</p>\r\n<p>\r\n	&nbsp;<a href=\"http://tieba.baidu.com/p/2582807135\" target=\"_blank\">http://tieba.baidu.com/p/2582807135</a> \r\n</p>\r\n<br />','','','','','226','N','N','','','0','0','N','1516774216','0','Y','0','','Y','1497023411');
INSERT INTO `bage_post` VALUES('98','1','','','49周之mysql读写分离原理以及在校内外的应用','49周之mysql读写分离原理以及在校内外的应用','','','','','','','18','0','','','','mysql读写分离原理','','&nbsp; &nbsp;MySQL复制，是指将主数据库的ddl和dml操作，通过二进制日志传到复制服务器（从库）上，然后在从库上对这些日志重新执行（也叫重做），从而实现主从库数据同步。<br />\r\nMySQL复制的原理<br />\r\n<span> </span>1、主库在事物提交时将数据变更为事件记录在Binlog（二进制文件）中<br />\r\n<span> </span>2、主库推送binlog中的事件到从库的RelayLog（中继日志）<br />\r\n<span> </span>3、从库根据relaylog重新做数据变更操作（通过逻辑复制达到主从数据一致）<br />\r\n主从复制中三个线程的变化<br />\r\n<span> </span>主库：binlogDump线程<br />\r\n<span> </span>从库：I/O线程和sql线程<br />\r\n<span> </span>主库启动复制<br />\r\n<span> </span>1、创建IO线程连接主库；<br />\r\n<span> </span>2、主库创建binlogDump线程读取数据库事件并发送给I/O线程；<br />\r\n<span> </span>3、I/O线程获取到事件数据后更新到从库的中继日志中<br />\r\n<span> </span>4、从库SQL线程读取中继日志中更新的数据库事件并应用<br />\r\n<div style=\"font-size:14px;\">\r\n</div>\r\n<!--5f39ae17-8c62-4a45-bc43-b32064c9388a:W3siYmxvY2tJZCI6IjU3ODMtMTUxMjkwNzcxNzg4MCIsImJsb2NrVHlwZSI6InBhcmFncmFwaCIsInN0eWxlcyI6eyJhbGlnbiI6ImxlZnQiLCJpbmRlbnQiOjAsInRleHQtaW5kZW50IjowLCJsaW5lLWhlaWdodCI6MS43NX0sInR5cGUiOiJwYXJhZ3JhcGgiLCJyaWNoVGV4dCI6eyJkYXRhIjpbeyJjaGFyIjoiICIsInN0eWxlcyI6eyJib2xkIjp0cnVlfX0seyJjaGFyIjoiICIsInN0eWxlcyI6eyJib2xkIjp0cnVlfX0seyJjaGFyIjoiICIsInN0eWxlcyI6eyJib2xkIjp0cnVlfX0seyJjaGFyIjoiICIsInN0eWxlcyI6eyJib2xkIjp0cnVlfX0seyJjaGFyIjoiTSIsInN0eWxlcyI6eyJib2xkIjp0cnVlfX0seyJjaGFyIjoieSIsInN0eWxlcyI6eyJib2xkIjp0cnVlfX0seyJjaGFyIjoiUyIsInN0eWxlcyI6eyJib2xkIjp0cnVlfX0seyJjaGFyIjoiUSIsInN0eWxlcyI6eyJib2xkIjp0cnVlfX0seyJjaGFyIjoiTCIsInN0eWxlcyI6eyJib2xkIjp0cnVlfX0seyJjaGFyIjoi5aSNIiwic3R5bGVzIjp7ImJvbGQiOnRydWV9fSx7ImNoYXIiOiLliLYiLCJzdHlsZXMiOnsiYm9sZCI6dHJ1ZX19LHsiY2hhciI6Iu+8jCJ9LHsiY2hhciI6IuaYryJ9LHsiY2hhciI6IuaMhyJ9LHsiY2hhciI6IuWwhiJ9LHsiY2hhciI6IuS4uyJ9LHsiY2hhciI6IuaVsCJ9LHsiY2hhciI6IuaNriJ9LHsiY2hhciI6IuW6kyJ9LHsiY2hhciI6IueahCJ9LHsiY2hhciI6ImQifSx7ImNoYXIiOiJkIn0seyJjaGFyIjoibCJ9LHsiY2hhciI6IuWSjCJ9LHsiY2hhciI6ImQifSx7ImNoYXIiOiJtIn0seyJjaGFyIjoibCJ9LHsiY2hhciI6IuaTjSJ9LHsiY2hhciI6IuS9nCJ9LHsiY2hhciI6Iu+8jCJ9LHsiY2hhciI6IumAmiJ9LHsiY2hhciI6Iui/hyJ9LHsiY2hhciI6IuS6jCJ9LHsiY2hhciI6Iui/myJ9LHsiY2hhciI6IuWItiJ9LHsiY2hhciI6IuaXpSJ9LHsiY2hhciI6IuW/lyJ9LHsiY2hhciI6IuS8oCJ9LHsiY2hhciI6IuWIsCJ9LHsiY2hhciI6IuWkjSJ9LHsiY2hhciI6IuWItiJ9LHsiY2hhciI6IuacjSJ9LHsiY2hhciI6IuWKoSJ9LHsiY2hhciI6IuWZqCJ9LHsiY2hhciI6Iu+8iCJ9LHsiY2hhciI6IuS7jiJ9LHsiY2hhciI6IuW6kyJ9LHsiY2hhciI6Iu+8iSJ9LHsiY2hhciI6IuS4iiJ9LHsiY2hhciI6Iu+8jCJ9LHsiY2hhciI6IueEtiJ9LHsiY2hhciI6IuWQjiJ9LHsiY2hhciI6IuWcqCJ9LHsiY2hhciI6IuS7jiJ9LHsiY2hhciI6IuW6kyJ9LHsiY2hhciI6IuS4iiJ9LHsiY2hhciI6IuWvuSJ9LHsiY2hhciI6Iui/mSJ9LHsiY2hhciI6IuS6myJ9LHsiY2hhciI6IuaXpSJ9LHsiY2hhciI6IuW/lyJ9LHsiY2hhciI6IumHjSJ9LHsiY2hhciI6IuaWsCJ9LHsiY2hhciI6IuaJpyJ9LHsiY2hhciI6IuihjCJ9LHsiY2hhciI6Iu+8iCJ9LHsiY2hhciI6IuS5nyJ9LHsiY2hhciI6IuWPqyJ9LHsiY2hhciI6IumHjSJ9LHsiY2hhciI6IuWBmiJ9LHsiY2hhciI6Iu+8iSJ9LHsiY2hhciI6Iu+8jCJ9LHsiY2hhciI6IuS7jiJ9LHsiY2hhciI6IuiAjCJ9LHsiY2hhciI6IuWuniJ9LHsiY2hhciI6IueOsCJ9LHsiY2hhciI6IuS4uyJ9LHsiY2hhciI6IuS7jiJ9LHsiY2hhciI6IuW6kyJ9LHsiY2hhciI6IuaVsCJ9LHsiY2hhciI6IuaNriJ9LHsiY2hhciI6IuWQjCJ9LHsiY2hhciI6IuatpSJ9LHsiY2hhciI6IuOAgiJ9XSwiaXNSaWNoVGV4dCI6dHJ1ZSwia2VlcExpbmVCcmVhayI6dHJ1ZX19LHsiYmxvY2tJZCI6IjEyODAtMTUxNDIxNDg5MDM2MCIsImJsb2NrVHlwZSI6InBhcmFncmFwaCIsInN0eWxlcyI6eyJhbGlnbiI6ImxlZnQiLCJpbmRlbnQiOjAsInRleHQtaW5kZW50IjowLCJsaW5lLWhlaWdodCI6MS43NX0sInR5cGUiOiJwYXJhZ3JhcGgiLCJyaWNoVGV4dCI6eyJkYXRhIjpbeyJjaGFyIjoiTSIsInN0eWxlcyI6eyJib2xkIjp0cnVlfX0seyJjaGFyIjoieSIsInN0eWxlcyI6eyJib2xkIjp0cnVlfX0seyJjaGFyIjoiUyIsInN0eWxlcyI6eyJib2xkIjp0cnVlfX0seyJjaGFyIjoiUSIsInN0eWxlcyI6eyJib2xkIjp0cnVlfX0seyJjaGFyIjoiTCIsInN0eWxlcyI6eyJib2xkIjp0cnVlfX0seyJjaGFyIjoi5aSNIiwic3R5bGVzIjp7ImJvbGQiOnRydWV9fSx7ImNoYXIiOiLliLYiLCJzdHlsZXMiOnsiYm9sZCI6dHJ1ZX19LHsiY2hhciI6IueahCIsInN0eWxlcyI6eyJib2xkIjp0cnVlfX0seyJjaGFyIjoi5Y6fIiwic3R5bGVzIjp7ImJvbGQiOnRydWV9fSx7ImNoYXIiOiLnkIYiLCJzdHlsZXMiOnsiYm9sZCI6dHJ1ZX19XSwiaXNSaWNoVGV4dCI6dHJ1ZSwia2VlcExpbmVCcmVhayI6dHJ1ZX19LHsiYmxvY2tJZCI6Ijc4NDQtMTUxNDIxNDU2NTI4MCIsImJsb2NrVHlwZSI6InBhcmFncmFwaCIsInN0eWxlcyI6eyJhbGlnbiI6ImxlZnQiLCJpbmRlbnQiOjAsInRleHQtaW5kZW50IjowLCJsaW5lLWhlaWdodCI6MS43NX0sInR5cGUiOiJwYXJhZ3JhcGgiLCJyaWNoVGV4dCI6eyJkYXRhIjpbeyJjaGFyIjoiMSJ9LHsiY2hhciI6IuOAgSJ9LHsiY2hhciI6IuS4uyJ9LHsiY2hhciI6IuW6kyJ9LHsiY2hhciI6IuWcqCJ9LHsiY2hhciI6IuS6iyJ9LHsiY2hhciI6IueJqSJ9LHsiY2hhciI6IuaPkCJ9LHsiY2hhciI6IuS6pCJ9LHsiY2hhciI6IuaXtiJ9LHsiY2hhciI6IuWwhiJ9LHsiY2hhciI6IuaVsCJ9LHsiY2hhciI6IuaNriJ9LHsiY2hhciI6IuWPmCJ9LHsiY2hhciI6IuabtCJ9LHsiY2hhciI6IuS4uiJ9LHsiY2hhciI6IuS6iyJ9LHsiY2hhciI6IuS7tiJ9LHsiY2hhciI6IuiusCJ9LHsiY2hhciI6IuW9lSJ9LHsiY2hhciI6IuWcqCJ9LHsiY2hhciI6IkIifSx7ImNoYXIiOiJpIn0seyJjaGFyIjoibiJ9LHsiY2hhciI6ImwifSx7ImNoYXIiOiJvIn0seyJjaGFyIjoiZyJ9LHsiY2hhciI6Iu+8iCJ9LHsiY2hhciI6IuS6jCJ9LHsiY2hhciI6Iui/myJ9LHsiY2hhciI6IuWItiJ9LHsiY2hhciI6IuaWhyJ9LHsiY2hhciI6IuS7tiJ9LHsiY2hhciI6Iu+8iSJ9LHsiY2hhciI6IuS4rSJ9XSwiaXNSaWNoVGV4dCI6dHJ1ZSwia2VlcExpbmVCcmVhayI6dHJ1ZX19LHsiYmxvY2tJZCI6IjQ5MTEtMTUxNDIxNDcwMzU4MSIsImJsb2NrVHlwZSI6InBhcmFncmFwaCIsInN0eWxlcyI6eyJhbGlnbiI6ImxlZnQiLCJpbmRlbnQiOjAsInRleHQtaW5kZW50IjowLCJsaW5lLWhlaWdodCI6MS43NX0sInR5cGUiOiJwYXJhZ3JhcGgiLCJyaWNoVGV4dCI6eyJkYXRhIjpbeyJjaGFyIjoiMiJ9LHsiY2hhciI6IuOAgSJ9LHsiY2hhciI6IuS4uyJ9LHsiY2hhciI6IuW6kyJ9LHsiY2hhciI6IuaOqCJ9LHsiY2hhciI6IumAgSJ9LHsiY2hhciI6ImIifSx7ImNoYXIiOiJpIn0seyJjaGFyIjoibiJ9LHsiY2hhciI6ImwifSx7ImNoYXIiOiJvIn0seyJjaGFyIjoiZyJ9LHsiY2hhciI6IuS4rSJ9LHsiY2hhciI6IueahCJ9LHsiY2hhciI6IuS6iyJ9LHsiY2hhciI6IuS7tiJ9LHsiY2hhciI6IuWIsCJ9LHsiY2hhciI6IuS7jiJ9LHsiY2hhciI6IuW6kyJ9LHsiY2hhciI6IueahCJ9LHsiY2hhciI6IlIifSx7ImNoYXIiOiJlIn0seyJjaGFyIjoibCJ9LHsiY2hhciI6ImEifSx7ImNoYXIiOiJ5In0seyJjaGFyIjoiTCJ9LHsiY2hhciI6Im8ifSx7ImNoYXIiOiJnIn0seyJjaGFyIjoi77yIIn0seyJjaGFyIjoi5LitIn0seyJjaGFyIjoi57unIn0seyJjaGFyIjoi5pelIn0seyJjaGFyIjoi5b+XIn0seyJjaGFyIjoi77yJIn1dLCJpc1JpY2hUZXh0Ijp0cnVlLCJrZWVwTGluZUJyZWFrIjp0cnVlfX0seyJibG9ja0lkIjoiMjE4MC0xNTE0MjE0NzkwOTk0IiwiYmxvY2tUeXBlIjoicGFyYWdyYXBoIiwic3R5bGVzIjp7ImFsaWduIjoibGVmdCIsImluZGVudCI6MCwidGV4dC1pbmRlbnQiOjAsImxpbmUtaGVpZ2h0IjoxLjc1fSwidHlwZSI6InBhcmFncmFwaCIsInJpY2hUZXh0Ijp7ImRhdGEiOlt7ImNoYXIiOiIzIn0seyJjaGFyIjoi44CBIn0seyJjaGFyIjoi5LuOIn0seyJjaGFyIjoi5bqTIn0seyJjaGFyIjoi5qC5In0seyJjaGFyIjoi5o2uIn0seyJjaGFyIjoiciJ9LHsiY2hhciI6ImUifSx7ImNoYXIiOiJsIn0seyJjaGFyIjoiYSJ9LHsiY2hhciI6InkifSx7ImNoYXIiOiJsIn0seyJjaGFyIjoibyJ9LHsiY2hhciI6ImcifSx7ImNoYXIiOiLph40ifSx7ImNoYXIiOiLmlrAifSx7ImNoYXIiOiLlgZoifSx7ImNoYXIiOiLmlbAifSx7ImNoYXIiOiLmja4ifSx7ImNoYXIiOiLlj5gifSx7ImNoYXIiOiLmm7QifSx7ImNoYXIiOiLmk40ifSx7ImNoYXIiOiLkvZwifSx7ImNoYXIiOiLvvIgifSx7ImNoYXIiOiLpgJoifSx7ImNoYXIiOiLov4cifSx7ImNoYXIiOiLpgLsifSx7ImNoYXIiOiLovpEifSx7ImNoYXIiOiLlpI0ifSx7ImNoYXIiOiLliLYifSx7ImNoYXIiOiLovr4ifSx7ImNoYXIiOiLliLAifSx7ImNoYXIiOiLkuLsifSx7ImNoYXIiOiLku44ifSx7ImNoYXIiOiLmlbAifSx7ImNoYXIiOiLmja4ifSx7ImNoYXIiOiLkuIAifSx7ImNoYXIiOiLoh7QifSx7ImNoYXIiOiLvvIkifV0sImlzUmljaFRleHQiOnRydWUsImtlZXBMaW5lQnJlYWsiOnRydWV9fSx7ImJsb2NrSWQiOiIyNTE3LTE1MTQyMTQ4OTcwMTgiLCJibG9ja1R5cGUiOiJwYXJhZ3JhcGgiLCJzdHlsZXMiOnsiYWxpZ24iOiJsZWZ0IiwiaW5kZW50IjowLCJ0ZXh0LWluZGVudCI6MCwibGluZS1oZWlnaHQiOjEuNzV9LCJ0eXBlIjoicGFyYWdyYXBoIiwicmljaFRleHQiOnsiZGF0YSI6W3siY2hhciI6IuS4uyIsInN0eWxlcyI6eyJib2xkIjp0cnVlfX0seyJjaGFyIjoi5LuOIiwic3R5bGVzIjp7ImJvbGQiOnRydWV9fSx7ImNoYXIiOiLlpI0iLCJzdHlsZXMiOnsiYm9sZCI6dHJ1ZX19LHsiY2hhciI6IuWItiIsInN0eWxlcyI6eyJib2xkIjp0cnVlfX0seyJjaGFyIjoi5LitIiwic3R5bGVzIjp7ImJvbGQiOnRydWV9fSx7ImNoYXIiOiLkuIkiLCJzdHlsZXMiOnsiYm9sZCI6dHJ1ZX19LHsiY2hhciI6IuS4qiIsInN0eWxlcyI6eyJib2xkIjp0cnVlfX0seyJjaGFyIjoi57q/Iiwic3R5bGVzIjp7ImJvbGQiOnRydWV9fSx7ImNoYXIiOiLnqIsiLCJzdHlsZXMiOnsiYm9sZCI6dHJ1ZX19LHsiY2hhciI6IueahCIsInN0eWxlcyI6eyJib2xkIjp0cnVlfX0seyJjaGFyIjoi5Y+YIiwic3R5bGVzIjp7ImJvbGQiOnRydWV9fSx7ImNoYXIiOiLljJYiLCJzdHlsZXMiOnsiYm9sZCI6dHJ1ZX19XSwiaXNSaWNoVGV4dCI6dHJ1ZSwia2VlcExpbmVCcmVhayI6dHJ1ZX19LHsiYmxvY2tJZCI6IjI2ODQtMTUxNDIxNTAwNTkwNyIsImJsb2NrVHlwZSI6InBhcmFncmFwaCIsInN0eWxlcyI6eyJhbGlnbiI6ImxlZnQiLCJpbmRlbnQiOjAsInRleHQtaW5kZW50IjowLCJsaW5lLWhlaWdodCI6MS43NX0sInR5cGUiOiJwYXJhZ3JhcGgiLCJyaWNoVGV4dCI6eyJkYXRhIjpbeyJjaGFyIjoi5Li7Iiwic3R5bGVzIjp7ImJvbGQiOnRydWV9fSx7ImNoYXIiOiLlupMiLCJzdHlsZXMiOnsiYm9sZCI6dHJ1ZX19LHsiY2hhciI6Iu+8miIsInN0eWxlcyI6eyJib2xkIjp0cnVlfX0seyJjaGFyIjoiYiJ9LHsiY2hhciI6ImkifSx7ImNoYXIiOiJuIn0seyJjaGFyIjoibCJ9LHsiY2hhciI6Im8ifSx7ImNoYXIiOiJnIn0seyJjaGFyIjoiRCJ9LHsiY2hhciI6InUifSx7ImNoYXIiOiJtIn0seyJjaGFyIjoicCJ9LHsiY2hhciI6Iue6vyJ9LHsiY2hhciI6IueoiyJ9XSwiaXNSaWNoVGV4dCI6dHJ1ZSwia2VlcExpbmVCcmVhayI6dHJ1ZX19LHsiYmxvY2tJZCI6IjM0OTgtMTUxNDIxNTAxNjc3NSIsImJsb2NrVHlwZSI6InBhcmFncmFwaCIsInN0eWxlcyI6eyJhbGlnbiI6ImxlZnQiLCJpbmRlbnQiOjAsInRleHQtaW5kZW50IjowLCJsaW5lLWhlaWdodCI6MS43NX0sInR5cGUiOiJwYXJhZ3JhcGgiLCJyaWNoVGV4dCI6eyJkYXRhIjpbeyJjaGFyIjoi5LuOIiwic3R5bGVzIjp7ImJvbGQiOnRydWV9fSx7ImNoYXIiOiLlupMiLCJzdHlsZXMiOnsiYm9sZCI6dHJ1ZX19LHsiY2hhciI6Iu+8miIsInN0eWxlcyI6eyJib2xkIjp0cnVlfX0seyJjaGFyIjoiSSJ9LHsiY2hhciI6Ii8ifSx7ImNoYXIiOiJPIn0seyJjaGFyIjoi57q/In0seyJjaGFyIjoi56iLIn0seyJjaGFyIjoi5ZKMIn0seyJjaGFyIjoicyJ9LHsiY2hhciI6InEifSx7ImNoYXIiOiJsIn0seyJjaGFyIjoi57q/In0seyJjaGFyIjoi56iLIn1dLCJpc1JpY2hUZXh0Ijp0cnVlLCJrZWVwTGluZUJyZWFrIjp0cnVlfX0seyJibG9ja0lkIjoiNjA2Ni0xNTE0MjE1MjI0NDA3IiwiYmxvY2tUeXBlIjoicGFyYWdyYXBoIiwic3R5bGVzIjp7ImFsaWduIjoibGVmdCIsImluZGVudCI6MCwidGV4dC1pbmRlbnQiOjAsImxpbmUtaGVpZ2h0IjoxLjc1fSwidHlwZSI6InBhcmFncmFwaCIsInJpY2hUZXh0Ijp7ImRhdGEiOlt7ImNoYXIiOiLkuLsifSx7ImNoYXIiOiLlupMifSx7ImNoYXIiOiLlkK8ifSx7ImNoYXIiOiLliqgifSx7ImNoYXIiOiLlpI0ifSx7ImNoYXIiOiLliLYifV0sImlzUmljaFRleHQiOnRydWUsImtlZXBMaW5lQnJlYWsiOnRydWV9fSx7ImJsb2NrSWQiOiI1NTkwLTE1MTQyMTUyNzI4MDYiLCJibG9ja1R5cGUiOiJwYXJhZ3JhcGgiLCJzdHlsZXMiOnsiYWxpZ24iOiJsZWZ0IiwiaW5kZW50IjowLCJ0ZXh0LWluZGVudCI6MCwibGluZS1oZWlnaHQiOjEuNzV9LCJ0eXBlIjoicGFyYWdyYXBoIiwicmljaFRleHQiOnsiZGF0YSI6W3siY2hhciI6IjEifSx7ImNoYXIiOiLjgIEifSx7ImNoYXIiOiLliJsifSx7ImNoYXIiOiLlu7oifSx7ImNoYXIiOiJJIn0seyJjaGFyIjoiTyJ9LHsiY2hhciI6Iue6vyJ9LHsiY2hhciI6IueoiyJ9LHsiY2hhciI6Iui/niJ9LHsiY2hhciI6IuaOpSJ9LHsiY2hhciI6IuS4uyJ9LHsiY2hhciI6IuW6kyJ9LHsiY2hhciI6Iu+8myJ9XSwiaXNSaWNoVGV4dCI6dHJ1ZSwia2VlcExpbmVCcmVhayI6dHJ1ZX19LHsiYmxvY2tJZCI6IjY3ODktMTUxNDIxNTMxNTA5MCIsImJsb2NrVHlwZSI6InBhcmFncmFwaCIsInN0eWxlcyI6eyJhbGlnbiI6ImxlZnQiLCJpbmRlbnQiOjAsInRleHQtaW5kZW50IjowLCJsaW5lLWhlaWdodCI6MS43NX0sInR5cGUiOiJwYXJhZ3JhcGgiLCJyaWNoVGV4dCI6eyJkYXRhIjpbeyJjaGFyIjoiMiJ9LHsiY2hhciI6IuOAgSJ9LHsiY2hhciI6IuS4uyJ9LHsiY2hhciI6IuW6kyJ9LHsiY2hhciI6IuWImyJ9LHsiY2hhciI6IuW7uiJ9LHsiY2hhciI6ImIifSx7ImNoYXIiOiJpIn0seyJjaGFyIjoibiJ9LHsiY2hhciI6ImwifSx7ImNoYXIiOiJvIn0seyJjaGFyIjoiZyJ9LHsiY2hhciI6IkQifSx7ImNoYXIiOiJ1In0seyJjaGFyIjoibSJ9LHsiY2hhciI6InAifSx7ImNoYXIiOiLnur8ifSx7ImNoYXIiOiLnqIsifSx7ImNoYXIiOiLor7sifSx7ImNoYXIiOiLlj5YifSx7ImNoYXIiOiLmlbAifSx7ImNoYXIiOiLmja4ifSx7ImNoYXIiOiLlupMifSx7ImNoYXIiOiLkuosifSx7ImNoYXIiOiLku7YifSx7ImNoYXIiOiLlubYifSx7ImNoYXIiOiLlj5EifSx7ImNoYXIiOiLpgIEifSx7ImNoYXIiOiLnu5kifSx7ImNoYXIiOiJJIn0seyJjaGFyIjoiLyJ9LHsiY2hhciI6Ik8ifSx7ImNoYXIiOiLnur8ifSx7ImNoYXIiOiLnqIsifSx7ImNoYXIiOiLvvJsifV0sImlzUmljaFRleHQiOnRydWUsImtlZXBMaW5lQnJlYWsiOnRydWV9fSx7ImJsb2NrSWQiOiI2MDYxLTE1MTQyMTUzODM5MjciLCJibG9ja1R5cGUiOiJwYXJhZ3JhcGgiLCJzdHlsZXMiOnsiYWxpZ24iOiJsZWZ0IiwiaW5kZW50IjowLCJ0ZXh0LWluZGVudCI6MCwibGluZS1oZWlnaHQiOjEuNzV9LCJ0eXBlIjoicGFyYWdyYXBoIiwicmljaFRleHQiOnsiZGF0YSI6W3siY2hhciI6IjMifSx7ImNoYXIiOiLjgIEifSx7ImNoYXIiOiJJIn0seyJjaGFyIjoiLyJ9LHsiY2hhciI6Ik8ifSx7ImNoYXIiOiLnur8ifSx7ImNoYXIiOiLnqIsifSx7ImNoYXIiOiLojrcifSx7ImNoYXIiOiLlj5YifSx7ImNoYXIiOiLliLAifSx7ImNoYXIiOiLkuosifSx7ImNoYXIiOiLku7YifSx7ImNoYXIiOiLmlbAifSx7ImNoYXIiOiLmja4ifSx7ImNoYXIiOiLlkI4ifSx7ImNoYXIiOiLmm7QifSx7ImNoYXIiOiLmlrAifSx7ImNoYXIiOiLliLAifSx7ImNoYXIiOiLku44ifSx7ImNoYXIiOiLlupMifSx7ImNoYXIiOiLnmoQifSx7ImNoYXIiOiLkuK0ifSx7ImNoYXIiOiLnu6cifSx7ImNoYXIiOiLml6UifSx7ImNoYXIiOiLlv5cifSx7ImNoYXIiOiLkuK0ifV0sImlzUmljaFRleHQiOnRydWUsImtlZXBMaW5lQnJlYWsiOnRydWV9fSx7ImJsb2NrSWQiOiI0NTkwLTE1MTQyMTU0NjUyMTIiLCJibG9ja1R5cGUiOiJwYXJhZ3JhcGgiLCJzdHlsZXMiOnsiYWxpZ24iOiJsZWZ0IiwiaW5kZW50IjowLCJ0ZXh0LWluZGVudCI6MCwibGluZS1oZWlnaHQiOjEuNzV9LCJ0eXBlIjoicGFyYWdyYXBoIiwicmljaFRleHQiOnsiZGF0YSI6W3siY2hhciI6IjQifSx7ImNoYXIiOiLjgIEifSx7ImNoYXIiOiLku44ifSx7ImNoYXIiOiLlupMifSx7ImNoYXIiOiJTIn0seyJjaGFyIjoiUSJ9LHsiY2hhciI6IkwifSx7ImNoYXIiOiLnur8ifSx7ImNoYXIiOiLnqIsifSx7ImNoYXIiOiLor7sifSx7ImNoYXIiOiLlj5YifSx7ImNoYXIiOiLkuK0ifSx7ImNoYXIiOiLnu6cifSx7ImNoYXIiOiLml6UifSx7ImNoYXIiOiLlv5cifSx7ImNoYXIiOiLkuK0ifSx7ImNoYXIiOiLmm7QifSx7ImNoYXIiOiLmlrAifSx7ImNoYXIiOiLnmoQifSx7ImNoYXIiOiLmlbAifSx7ImNoYXIiOiLmja4ifSx7ImNoYXIiOiLlupMifSx7ImNoYXIiOiLkuosifSx7ImNoYXIiOiLku7YifSx7ImNoYXIiOiLlubYifSx7ImNoYXIiOiLlupQifSx7ImNoYXIiOiLnlKgifV0sImlzUmljaFRleHQiOnRydWUsImtlZXBMaW5lQnJlYWsiOnRydWV9fV0=-->','','','','读写分离原理','24','N','N','','','0','0','N','1516628162','0','Y','0','','Y','1514185011');

DROP TABLE IF EXISTS `bage_post_2tags`;
CREATE TABLE `bage_post_2tags` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '标题ID',
  `tag_name` char(30) NOT NULL COMMENT '标签名称',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=98 DEFAULT CHARSET=utf8 COMMENT='内容关联标签';

INSERT INTO `bage_post_2tags` VALUES('84','95','支付宝');
INSERT INTO `bage_post_2tags` VALUES('85','95','如何');
INSERT INTO `bage_post_2tags` VALUES('97','101','awk');
INSERT INTO `bage_post_2tags` VALUES('91','89','unix命令');
INSERT INTO `bage_post_2tags` VALUES('92','89','英文全称');
INSERT INTO `bage_post_2tags` VALUES('93','92','承德');
INSERT INTO `bage_post_2tags` VALUES('94','92','五一');
INSERT INTO `bage_post_2tags` VALUES('95','92','自驾');
INSERT INTO `bage_post_2tags` VALUES('96','98','读写分离原理');

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
) ENGINE=MyISAM AUTO_INCREMENT=24 DEFAULT CHARSET=utf8 COMMENT='新闻评论';

INSERT INTO `bage_post_comment` VALUES('23','92','0','s','s@g.com','sss','Y','N','reply','127','1516623669');

DROP TABLE IF EXISTS `bage_post_tags`;
CREATE TABLE `bage_post_tags` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `catalog_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '分类',
  `tag_name` char(30) NOT NULL COMMENT 'tag名称',
  `data_count` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '数据总数',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '录入时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=96 DEFAULT CHARSET=utf8 COMMENT='新闻标签';

INSERT INTO `bage_post_tags` VALUES('64','9','数据类型','1','1427943849');
INSERT INTO `bage_post_tags` VALUES('63','9','二分查找','1','1427943560');
INSERT INTO `bage_post_tags` VALUES('62','9','Ubuntu','1','1427553206');
INSERT INTO `bage_post_tags` VALUES('61','9','uname命令','1','1427553206');
INSERT INTO `bage_post_tags` VALUES('60','9','YII笔记','1','1427293826');
INSERT INTO `bage_post_tags` VALUES('59','9','部门聚会','1','1423669298');
INSERT INTO `bage_post_tags` VALUES('58','9','个人生活','1','1423669298');
INSERT INTO `bage_post_tags` VALUES('57','9','斐波纳契数列','1','1420906448');
INSERT INTO `bage_post_tags` VALUES('56','9','递归','1','1420906448');
INSERT INTO `bage_post_tags` VALUES('55','11','nginx配置优化','1','1420736532');
INSERT INTO `bage_post_tags` VALUES('54','11','nginx','1','1420736532');
INSERT INTO `bage_post_tags` VALUES('53','11','memcached','1','1420724843');
INSERT INTO `bage_post_tags` VALUES('52','11','nosql','1','1420724843');
INSERT INTO `bage_post_tags` VALUES('51','11','redis','1','1420724843');
INSERT INTO `bage_post_tags` VALUES('50','11','流程图','1','1416451535');
INSERT INTO `bage_post_tags` VALUES('48','11','Linux下部署yii','1','1414987030');
INSERT INTO `bage_post_tags` VALUES('49','11','TP','1','1416451535');
INSERT INTO `bage_post_tags` VALUES('46','9','软件','1','1414595138');
INSERT INTO `bage_post_tags` VALUES('45','9','能力','1','1414595138');
INSERT INTO `bage_post_tags` VALUES('44','9','模型','1','1414595138');
INSERT INTO `bage_post_tags` VALUES('43','9','架构师','1','1414595138');
INSERT INTO `bage_post_tags` VALUES('42','11','程序员规划','1','1414594922');
INSERT INTO `bage_post_tags` VALUES('41','11','技术','1','1414594922');
INSERT INTO `bage_post_tags` VALUES('40','9','排序算法','1','1414424966');
INSERT INTO `bage_post_tags` VALUES('39','9','经典排序算法','1','1414424966');
INSERT INTO `bage_post_tags` VALUES('38','9','算法','2','1414315067');
INSERT INTO `bage_post_tags` VALUES('37','9','快速排序','1','1414315067');
INSERT INTO `bage_post_tags` VALUES('35','9','程序员','2','1414131614');
INSERT INTO `bage_post_tags` VALUES('36','9','生存定律','1','1414131614');
INSERT INTO `bage_post_tags` VALUES('65','9','项目管理','1','1428334159');
INSERT INTO `bage_post_tags` VALUES('66','9','OOP','1','1428334159');
INSERT INTO `bage_post_tags` VALUES('67','9','软件项目管理','1','1428334392');
INSERT INTO `bage_post_tags` VALUES('68','9','问题','1','1428334393');
INSERT INTO `bage_post_tags` VALUES('69','9','分析','1','1428334393');
INSERT INTO `bage_post_tags` VALUES('70','9','shell编程','1','1428831296');
INSERT INTO `bage_post_tags` VALUES('71','9','多字段索引','1','1429108751');
INSERT INTO `bage_post_tags` VALUES('72','9','杭州','1','1430925917');
INSERT INTO `bage_post_tags` VALUES('73','9','网络互联参考模型','1','1432999929');
INSERT INTO `bage_post_tags` VALUES('74','9','OSI七层网络模型','1','1432999929');
INSERT INTO `bage_post_tags` VALUES('75','9','搬家','1','1433686522');
INSERT INTO `bage_post_tags` VALUES('76','9','兴趣','1','1433686522');
INSERT INTO `bage_post_tags` VALUES('77','9','程序员计算器','1','1434196986');
INSERT INTO `bage_post_tags` VALUES('78','11','cbd','1','1459819689');
INSERT INTO `bage_post_tags` VALUES('79','11','国贸三期','1','1459819689');
INSERT INTO `bage_post_tags` VALUES('80','11','北京最高建筑','1','1459819689');
INSERT INTO `bage_post_tags` VALUES('81','11','mysql引擎','1','1460450143');
INSERT INTO `bage_post_tags` VALUES('82','18','支付宝','1','1496746357');
INSERT INTO `bage_post_tags` VALUES('83','18','如何','1','1496746357');
INSERT INTO `bage_post_tags` VALUES('84','11','今日事今日毕','1','1497837756');
INSERT INTO `bage_post_tags` VALUES('85','11','评估优先级','1','1497837756');
INSERT INTO `bage_post_tags` VALUES('86','11','日总结','1','1497837756');
INSERT INTO `bage_post_tags` VALUES('87','11','周总结','1','1497837756');
INSERT INTO `bage_post_tags` VALUES('88','11','平级沟通','1','1497840095');
INSERT INTO `bage_post_tags` VALUES('89','18','unix命令','1','1497923234');
INSERT INTO `bage_post_tags` VALUES('90','18','英文全称','1','1497923234');
INSERT INTO `bage_post_tags` VALUES('91','19','承德','1','1497923528');
INSERT INTO `bage_post_tags` VALUES('92','19','五一','1','1497923528');
INSERT INTO `bage_post_tags` VALUES('93','19','自驾','1','1497923528');
INSERT INTO `bage_post_tags` VALUES('94','18','读写分离原理','1','1516628161');
INSERT INTO `bage_post_tags` VALUES('95','18','awk','1','1516978912');

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

INSERT INTO `bage_question` VALUES('2','0','0','','s','s','s','sssssssss','s','N','','Y','1409905450');
INSERT INTO `bage_question` VALUES('3','0','0','','s','tann@q.com','13354289506','ssssssssssssss','13354289500','N','','Y','1410225683');
INSERT INTO `bage_question` VALUES('4','0','0','','s','tann@q.com','13354289506','cccccccccccccccccccccccccc','13354289500','N','','Y','1410225688');
INSERT INTO `bage_question` VALUES('5','0','0','','s','tann@q.com','13354289506','cccccccccccccccccccccccccc','13354289500','N','','Y','1410225689');
INSERT INTO `bage_question` VALUES('6','0','0','','s','tann@q.com','13354289506','cccccccccccccccccccccccccc','13354289500','N','','Y','1410225689');
INSERT INTO `bage_question` VALUES('7','0','0','','张山','tann@q.com','13354289506','cccccccccccccccccccccccccc','13354289500','N','','Y','1410225697');
INSERT INTO `bage_question` VALUES('8','0','0','','张山','tann@q.com','13354289506','cccccccccccccccccccccccccc','13354289500','N','','Y','1410225698');
INSERT INTO `bage_question` VALUES('9','0','0','','u','u','u','u','u','N','','Y','1410225742');
INSERT INTO `bage_question` VALUES('10','0','0','','tanjian','3@1.com','1900000','tanjiantanjiantanjiantanjiantanjiantanjiantanjiantanjiantanjiantanjiantanjiantanjiantanjiantanjiantanjiantanjiantanjiantanjian','','N','tttttttttttttttttt','Y','1411894750');
INSERT INTO `bage_question` VALUES('11','0','0','','jk','jk','mo','你呢','mo','N','','Y','1414130263');

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
) ENGINE=MyISAM AUTO_INCREMENT=55 DEFAULT CHARSET=utf8 COMMENT='附件';

INSERT INTO `bage_upload` VALUES('20','0','content','0','6a2112338744ebf88305c2f0d8f9d72a.jpg','uploads/201503/001fc7d9959bde5ff6ef551ee41f1893.jpg','','uploads/201503/','001fc7d9959bde5ff6ef551ee41f1893.jpg','9f9e425653502fdebf728dbc52c0b553','jpg','image/jpeg','22888','0','','1427388080');
INSERT INTO `bage_upload` VALUES('19','0','content','0','6a2112338744ebf88305c2f0d8f9d72a.jpg','uploads/201503/5e4172235fc28edb185c0a78cc6f5200.jpg','','uploads/201503/','5e4172235fc28edb185c0a78cc6f5200.jpg','9f9e425653502fdebf728dbc52c0b553','jpg','image/jpeg','22888','0','','1427387993');
INSERT INTO `bage_upload` VALUES('18','0','content','0','2837267765261293991.jpg','uploads/201502/4fbd572a3655e0c067374a8a3716fffb.jpg','','uploads/201502/','4fbd572a3655e0c067374a8a3716fffb.jpg','9e8464ba50f9633a369f484d6c97885b','jpg','application/octet-stream','111005','0','','1423669265');
INSERT INTO `bage_upload` VALUES('17','0','content','0','6630920431140494457.jpg','uploads/201502/8b1214cca241f304af280920ac80f0e9.jpg','','uploads/201502/','8b1214cca241f304af280920ac80f0e9.jpg','b51bc2a4783af8e5c3b084f207c1513c','jpg','application/octet-stream','90324','0','','1423669261');
INSERT INTO `bage_upload` VALUES('16','0','content','0','6630566388396353018.jpg','uploads/201502/059ae41377055ecdba18f93a4a12b60f.jpg','','uploads/201502/','059ae41377055ecdba18f93a4a12b60f.jpg','3fb09f2e301273c7f4bf981868ce5423','jpg','image/jpeg','86344','0','','1423669219');
INSERT INTO `bage_upload` VALUES('15','0','content','0','捕获.JPG','uploads/201502/f63973fbcfa80c42725a233b4a7301a3.JPG','','uploads/201502/','f63973fbcfa80c42725a233b4a7301a3.JPG','0341441656223a90773664107cf1db5b','JPG','image/jpeg','24357','0','','1423575064');
INSERT INTO `bage_upload` VALUES('21','0','content','0','6630746708304660036.jpg','uploads/201506/ab66e3f6aeaf17763253d25d032196b0.jpg','','uploads/201506/','ab66e3f6aeaf17763253d25d032196b0.jpg','f1871df04c1fcda45b84d3fb14815fcf','jpg','application/octet-stream','104579','0','','1433686432');
INSERT INTO `bage_upload` VALUES('22','0','content','0','6630640055676767171.jpg','uploads/201506/b2e725af801e82cc556c1cc3ba9f7e8e.jpg','','uploads/201506/','b2e725af801e82cc556c1cc3ba9f7e8e.jpg','23b7af52d5cc0072a798826de88ee76a','jpg','application/octet-stream','102529','0','','1433686436');
INSERT INTO `bage_upload` VALUES('23','0','content','0','PC程序员计算器使用注释.JPG','uploads/201506/c023d210e9249e32545a0eb9705b3810.JPG','','uploads/201506/','c023d210e9249e32545a0eb9705b3810.JPG','fbdb642b3212f459f65367656a3a551f','JPG','image/jpeg','95182','0','','1434534397');
INSERT INTO `bage_upload` VALUES('24','0','content','0','4843339924361133234.jpg','uploads/201604/d9a5695819e76a0e580778f01e32e7b6.jpg','','uploads/201604/','d9a5695819e76a0e580778f01e32e7b6.jpg','8c18867c9668574f37afa00d579dd437','jpg','image/jpeg','158201','0','','1459819529');
INSERT INTO `bage_upload` VALUES('25','0','content','0','4885279695890851143.jpg','uploads/201604/9cfa1fb5e556ff115a25c4494b72f5fa.jpg','','uploads/201604/','9cfa1fb5e556ff115a25c4494b72f5fa.jpg','73a3d65cbf0f81a26e29b3eed9462786','jpg','image/jpeg','59305','0','','1459819576');
INSERT INTO `bage_upload` VALUES('26','0','content','0','4885279695890851143.jpg','uploads/201604/3e7c5086cb4f2ab5264d735c4a9a090e.jpg','','uploads/201604/','3e7c5086cb4f2ab5264d735c4a9a090e.jpg','73a3d65cbf0f81a26e29b3eed9462786','jpg','image/jpeg','59305','0','','1459819597');
INSERT INTO `bage_upload` VALUES('27','0','content','0','6598142890066159733.jpg','uploads/201604/15342940025ad201363a7c73b4e3abb6.jpg','','uploads/201604/','15342940025ad201363a7c73b4e3abb6.jpg','16b5fa27c0bd74e213d42f57071b7821','jpg','image/jpeg','181892','0','','1459819633');
INSERT INTO `bage_upload` VALUES('28','0','content','0','6598142890066159733.jpg','uploads/201604/95a158c08e58ab7007a430f6d5185bb9.jpg','','uploads/201604/','95a158c08e58ab7007a430f6d5185bb9.jpg','16b5fa27c0bd74e213d42f57071b7821','jpg','image/jpeg','181892','0','','1459819652');
INSERT INTO `bage_upload` VALUES('29','0','content','0','33333333333333.jpg','uploads/201604/e5728e95fdb11b171d3ec028ab1add0f.jpg','','uploads/201604/','e5728e95fdb11b171d3ec028ab1add0f.jpg','c9b200ba4cc4480fff78e76ca4ce35ee','jpg','image/jpeg','87882','0','','1459820988');
INSERT INTO `bage_upload` VALUES('30','0','content','0','1.jpg','uploads/201604/b77c6ec24dbeea3287e0a01b52855655.jpg','','uploads/201604/','b77c6ec24dbeea3287e0a01b52855655.jpg','f96a43493c8ab4380127b5398bb08de8','jpg','image/jpeg','5393','0','','1459821023');
INSERT INTO `bage_upload` VALUES('31','0','content','0','1.jpg','uploads/201604/6a02ac31ba3fb079b457d02b75c90ccd.jpg','','uploads/201604/','6a02ac31ba3fb079b457d02b75c90ccd.jpg','0447add8bc3b2c4f79ff303d3e328c4c','jpg','image/jpeg','191873','0','','1459821132');
INSERT INTO `bage_upload` VALUES('32','0','content','0','2.jpg','uploads/201604/19ba204fa07ad645aa0f70ec1086bb24.jpg','','uploads/201604/','19ba204fa07ad645aa0f70ec1086bb24.jpg','c64d18dc3e422c29258d2801a0a61abc','jpg','image/jpeg','181505','0','','1459821156');
INSERT INTO `bage_upload` VALUES('33','0','content','0','4.jpg','uploads/201604/ff75bd8d62ee73bcd032980ea0cb7d05.jpg','','uploads/201604/','ff75bd8d62ee73bcd032980ea0cb7d05.jpg','456846decd07e25ac1977cd3ece9c1f4','jpg','image/jpeg','174946','0','','1459821177');
INSERT INTO `bage_upload` VALUES('34','0','content','0','3.jpg','uploads/201604/4d3e10ad96113fdc4feefff46ad99f4f.jpg','','uploads/201604/','4d3e10ad96113fdc4feefff46ad99f4f.jpg','7d17418b9cb0a8c7a06f58761bb1e679','jpg','image/jpeg','187248','0','','1459821197');
INSERT INTO `bage_upload` VALUES('35','0','content','0','php缓存4_6.png','uploads/201604/710eab7bde9061e47986e3a990d91d64.png','','uploads/201604/','710eab7bde9061e47986e3a990d91d64.png','2c498ec75ada16956468ce77eaaff8f2','png','image/png','115196','0','','1459931534');
INSERT INTO `bage_upload` VALUES('36','0','content','0','php缓存4_6 - 副本.png','uploads/201604/ef92e04092242c1bd69c6c7df1e6fc6a.png','','uploads/201604/','ef92e04092242c1bd69c6c7df1e6fc6a.png','761ec4460f7bc80214f2970ef4cf643f','png','image/png','77458','0','','1459931723');
INSERT INTO `bage_upload` VALUES('37','0','content','0','php缓存4_6 - 副本.png','uploads/201604/d324c3c2650b8e635bac1e486c77c834.png','','uploads/201604/','d324c3c2650b8e635bac1e486c77c834.png','00618ebe601ded48d14210a7bd42f6dd','png','image/png','101339','0','','1460007874');
INSERT INTO `bage_upload` VALUES('38','0','content','0','图片 1.png','uploads/201612/965740a17247732c84971bfea7a895b1.png','','uploads/201612/','965740a17247732c84971bfea7a895b1.png','75e4f79f45115cc6cc83fc653555545b','png','image/png','153182','0','','1481631307');
INSERT INTO `bage_upload` VALUES('39','0','content','0','图片 2.png','uploads/201612/6bf0bfc8f0ddd570a9d1ccf54b19ee92.png','','uploads/201612/','6bf0bfc8f0ddd570a9d1ccf54b19ee92.png','323822f27545b5b6209a2d923c0501d8','png','image/png','77311','0','','1481631341');
INSERT INTO `bage_upload` VALUES('40','0','content','0','pic3.png','uploads/201612/0a84e9ad1fb052ae3f3b7dc5883c68b9.png','','uploads/201612/','0a84e9ad1fb052ae3f3b7dc5883c68b9.png','b93fc9d69cfbb78d1fe7c0878527041d','png','image/png','180637','0','','1481631408');
INSERT INTO `bage_upload` VALUES('41','0','content','0','图片 4.png','uploads/201612/e077b8c2eb04b308cc5bbc44395498f8.png','','uploads/201612/','e077b8c2eb04b308cc5bbc44395498f8.png','099e5afd7f5431aff20fe05e3c23ade5','png','image/png','82092','0','','1481631432');
INSERT INTO `bage_upload` VALUES('42','0','content','0','pic5.png','uploads/201612/0f546bb1da6d9d1e8dae19f1917359e8.png','','uploads/201612/','0f546bb1da6d9d1e8dae19f1917359e8.png','6b5decf73f5c8621ab6aa3666da1fd89','png','image/png','156181','0','','1481631488');
INSERT INTO `bage_upload` VALUES('43','0','content','0','pic6.png','uploads/201612/5f85b728baa49440a6059a0a8438b541.png','','uploads/201612/','5f85b728baa49440a6059a0a8438b541.png','75a46a8d4be0cf1cde02c9438721c555','png','image/png','148630','0','','1481631522');
INSERT INTO `bage_upload` VALUES('44','0','content','0','oprn_auth-2.png','uploads/201612/f4c15dd56a833d28ba351884973dd6f3.png','','uploads/201612/','f4c15dd56a833d28ba351884973dd6f3.png','dad39df6067c6634b846e96603142397','png','image/png','68997','0','','1482940062');
INSERT INTO `bage_upload` VALUES('45','0','content','0','oprn_auth-2.png','uploads/201612/1f401f7748be9cd75ad3abf8417923c5.png','','uploads/201612/','1f401f7748be9cd75ad3abf8417923c5.png','dad39df6067c6634b846e96603142397','png','image/png','68997','0','','1482940120');
INSERT INTO `bage_upload` VALUES('46','0','content','0','timg____.jpeg','uploads/201705/d8f7709ed1170c638cfa801c5da9345c.jpeg','','uploads/201705/','d8f7709ed1170c638cfa801c5da9345c.jpeg','c88ed782417d81088ef71a77d64f3f02','jpeg','image/jpeg','42563','0','','1494756439');
INSERT INTO `bage_upload` VALUES('47','0','content','0','timg (1).jpeg','uploads/201705/68934e713a4f9ddbddf21d02a4909f74.jpeg','','uploads/201705/','68934e713a4f9ddbddf21d02a4909f74.jpeg','a2f53e74f8c52477707d94cf05e9fc13','jpeg','image/jpeg','30872','0','','1494756466');
INSERT INTO `bage_upload` VALUES('51','0','content','0','hz.jpeg','uploads/201801/b102a514f734960e4c42bf7f67520130.jpeg','','uploads/201801/','b102a514f734960e4c42bf7f67520130.jpeg','e9826219efc04a3865caaab996e5fb7b','jpeg','image/jpeg','130544','0','','1516774192');
INSERT INTO `bage_upload` VALUES('50','0','content','0','wh.jpeg','uploads/201801/a9938978b5291653146a5a56e6e6e6da.jpeg','','uploads/201801/','a9938978b5291653146a5a56e6e6e6da.jpeg','955c768f04046f1b35f05f4a5e3762a0','jpeg','image/jpeg','25467','0','','1516774105');
INSERT INTO `bage_upload` VALUES('52','0','content','0','wh.jpeg','uploads/201801/795688cd1624a217cd1801e061b1bf5a.jpeg','','uploads/201801/','795688cd1624a217cd1801e061b1bf5a.jpeg','955c768f04046f1b35f05f4a5e3762a0','jpeg','image/jpeg','25467','0','','1516774212');
INSERT INTO `bage_upload` VALUES('53','0','content','0','333333333.png','uploads/201801/0abb715720d25b10a955a294fcc7bcc3.png','','uploads/201801/','0abb715720d25b10a955a294fcc7bcc3.png','4eb69c4d58a642d1c3af6983b5ebb67f','png','image/png','133724','0','','1516978836');
INSERT INTO `bage_upload` VALUES('54','0','content','0','44444.png','uploads/201801/815deee0fcaf94a79a1473d1dfbbf345.png','','uploads/201801/','815deee0fcaf94a79a1473d1dfbbf345.png','9e795016d3ba3cdc901614dca5abf538','png','image/png','167419','0','','1516979566');

