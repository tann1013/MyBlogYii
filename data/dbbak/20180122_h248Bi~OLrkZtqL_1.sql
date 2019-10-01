# bagecms database backup
# version:BageCMS3.1.3
# time:2018-01-22 18:55:36
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
INSERT INTO `bage_ad` VALUES('2','首页banner','index_banner','','','','','','0','1379520000','1546272000','uploads/201309/523a2c4baba12.jpg','9','Y','1379544139');
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
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='管理员';

INSERT INTO `bage_admin` VALUES('1','admin','c33367701511b4f6020ec61ded352059','','1','tann1013@hotmail.com','0','','','','127','0','0','Y','1516618110');

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
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='管理员组';

INSERT INTO `bage_admin_group` VALUES('1','超级管理','administrator','','0');
INSERT INTO `bage_admin_group` VALUES('2','禁用','administrator','Y','0');

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
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='管理员日志';

INSERT INTO `bage_admin_logger` VALUES('1','0','login','/index.php?r=admini/public/login','登录失败，密码不正确:admin，使用密码：tanjian421970+','183.157.47.170','1516618224');
INSERT INTO `bage_admin_logger` VALUES('2','0','login','/index.php?r=admini/public/login','登录失败，密码不正确:admin，使用密码：asdf@421302+','183.157.47.170','1516618242');
INSERT INTO `bage_admin_logger` VALUES('3','0','login','/index.php?r=admini/public/login','登录失败，密码不正确:admin，使用密码：asdf@421302+','183.157.47.170','1516618242');
INSERT INTO `bage_admin_logger` VALUES('4','0','login','/index.php?r=admini/public/login','登录失败，密码不正确:admin，使用密码：asdf@421302+','183.157.47.170','1516618243');

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
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='扩展字段管理';

INSERT INTO `bage_attr` VALUES('1','config','手机','mobile','0','','0','input','','0','1379553842');
INSERT INTO `bage_attr` VALUES('2','config','传真','fax','0','','0','input','','0','1379553920');
INSERT INTO `bage_attr` VALUES('3','config','电话','telephone','0','','0','input','','0','1379553920');
INSERT INTO `bage_attr` VALUES('4','config','400电话','telephone_400','0','','0','input','','0','1379553920');
INSERT INTO `bage_attr` VALUES('5','config','地址','address','0','','0','input','','0','1379553920');

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
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='全局分类';

INSERT INTO `bage_catalog` VALUES('1','0','新闻','新闻','news','新闻栏目介绍','','','','','','0','0','0','Y','N','','list','list_text','list_page','show_post','','','1379545020');
INSERT INTO `bage_catalog` VALUES('2','1','公司动态','公司动态','company-news','公司动态栏目介绍','','','','','','0','0','0','Y','N','','list','list_text','list_page','show_post','','','1379545199');
INSERT INTO `bage_catalog` VALUES('3','1','行业新闻','行业新闻','industry-news','行业新闻栏目介绍','','','','','','0','0','0','Y','N','','list','list_text','list_page','show_post','','','1379545248');
INSERT INTO `bage_catalog` VALUES('4','0','产品','产品','goods','产品栏目介绍','','','','','','0','0','0','Y','N','','list','list_goods','list_page','show_goods','','','1379545330');
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

INSERT INTO `bage_config` VALUES('base','site_name','八哥网站内容管理系统','');
INSERT INTO `bage_config` VALUES('base','site_domain','http://www.bagecms.com','');
INSERT INTO `bage_config` VALUES('base','admin_email','abc@qq.com','');
INSERT INTO `bage_config` VALUES('base','site_icp','','');
INSERT INTO `bage_config` VALUES('base','site_closed_summary','系统维护中，请稍候......','');
INSERT INTO `bage_config` VALUES('base','site_stats','','');
INSERT INTO `bage_config` VALUES('base','seo_title','网站标题-网站标题','');
INSERT INTO `bage_config` VALUES('base','seo_description','网站描述-seo_description','');
INSERT INTO `bage_config` VALUES('base','seo_keywords','网站关键字-seo_keywords','');
INSERT INTO `bage_config` VALUES('base','admin_telephone','18606712910','');
INSERT INTO `bage_config` VALUES('base','site_status','open','');
INSERT INTO `bage_config` VALUES('base','site_status_intro','网站升级中..........','');
INSERT INTO `bage_config` VALUES('base','admin_logger','open','');
INSERT INTO `bage_config` VALUES('base','user_status','open','');
INSERT INTO `bage_config` VALUES('base','user_mail_verify','open','');
INSERT INTO `bage_config` VALUES('base','site_copyright','COPYRIGHT © 2012 - 2014 BageCMS. ALL RIGHTS RESERVED.八哥内容管理系统 版权所有','');
INSERT INTO `bage_config` VALUES('base','upload_water_size','100x100','');
INSERT INTO `bage_config` VALUES('base','upload_water_file','static/watermark.png','');
INSERT INTO `bage_config` VALUES('base','upload_water_status','close','');
INSERT INTO `bage_config` VALUES('base','upload_allow_ext','jpg,gif,bmp,jpeg,png,doc,zip,rar,7z,txt,sql,pdf','');
INSERT INTO `bage_config` VALUES('base','upload_max_size','200','');
INSERT INTO `bage_config` VALUES('base','upload_water_scope','100x100','');
INSERT INTO `bage_config` VALUES('base','upload_water_position','5','');
INSERT INTO `bage_config` VALUES('base','upload_water_padding','5','');
INSERT INTO `bage_config` VALUES('base','upload_water_trans','30','');
INSERT INTO `bage_config` VALUES('custom','_address','浙江省杭州市西湖区请填写详细地址','');
INSERT INTO `bage_config` VALUES('custom','_fasdf','fasfcccccccccccc','');
INSERT INTO `bage_config` VALUES('custom','_telephone','(+86 10) 5992 8888','');
INSERT INTO `bage_config` VALUES('custom','_telephone_400','400 888 888','');
INSERT INTO `bage_config` VALUES('custom','_fax','传真:(+86 10) 5992 0000','');
INSERT INTO `bage_config` VALUES('custom','_mobile','18600000000','');

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

INSERT INTO `bage_page` VALUES('1','关于我们','','about','','','BageCms是一款基于php5+mysql5开发的多功能开源的网站内容管理系统。使用高性能的PHP5的web应用程序开发框架YII构建，具有操作简单、稳定、安全、高效、跨平台等特点。采用MVC设计模式，模板定制方便灵活，内置小挂工具，方便制作各类功能和效果，BageCms可用于企业建站、个人博客、资讯门户、图片站等各类型站点','<p>\r\n	BageCms是一款基于php5+mysql5开发的多功能开源的网站内容管理系统。使用高性能的PHP5的web应用程序开发框架YII构建，具有操作简单、稳定、安全、高效、跨平台等特点。采用MVC设计模式，模板定制方便灵活，内置小挂工具，方便制作各类功能和效果，BageCms可用于企业建站、个人博客、资讯门户、图片站等各类型站点。<br />\r\n<br />\r\n特点：<br />\r\n<br />\r\n1.开源免费<br />\r\n无论是个人还是企业展示型网站均可用本系统来完成<br />\r\n<br />\r\n2.数据调用方便快捷<br />\r\n自主研发的数据调用模块，能快速调用各类型数据，方便建站<br />\r\n<br />\r\n3.应用范围广<br />\r\n这套系统不是企业网站管理系统，也不是博客程序，更不是专业的图片管理系统，但它却具备大部分企业站、博客站、图片站的功能<br />\r\n<br />\r\n4.安全高性能<br />\r\n基于高性能的PHP5的web应用程序开发框架YII构建具有稳定、安全、高效、跨平台等特点<br />\r\n<br />\r\n5.URL自定义<br />\r\n系统支持自定义伪静态显示方式，良好的支持搜索引擎SEO。个性化设置每个栏目、内容的标题标签、描述标签、关键词标签<br />\r\n<br />\r\n6.自定义数据模型<br />\r\n系统可自定义数据模型满足各种表示形式和字段需求<br />\r\n<br />\r\n7.完善的后台权限控制<br />\r\n特有的管理员权限管理机制，可以灵活设置管理员的栏目管理权限、网站信息的添加、修改、删除权限等<br />\r\n<br />\r\n<br />\r\n系统运行环境：<br />\r\n数据库： mysql5+<br />\r\nPHP版本：php5.2.+<br />\r\n服务器：linux,unix,freebsd等<br />\r\n<br />\r\n官方网址：http://www.bagecms.com<br />\r\n下载地址：http://www.bagecms.com/download/bagecms<br />\r\n<br />\r\n演示地址：http://demo.bagecms.com<br />\r\n后台地址：http://demo.bagecms.com/admini<br />\r\n用户：bagecms<br />\r\n密码：bagecms\r\n</p>\r\n<p>\r\n	<br />\r\n</p>','','','','','uploads/201309/logo.jpg','uploads/201309/logo.jpg','0','0','Y','1322999570');
INSERT INTO `bage_page` VALUES('2','联系我们','','contact','','','','<p>\r\n	QQ:5565907\r\n</p>\r\n<p>\r\n	QQ群：139869141\r\n</p>\r\n<p>\r\n	BageCMS官方网站：<a href=\"http://www.bagecms.com\" target=\"_blank\">http://www.bagecms.com</a>\r\n</p>\r\n<p>\r\n	八哥软件官方网站：<a href=\"http://www.bagesoft.cn\" target=\"_blank\">http://www.bagesoft.cn</a>\r\n</p>','','','','','','','0','0','Y','1322999588');
INSERT INTO `bage_page` VALUES('3','企业文化','','cultural','','','企业文化是企业为解决生存和发展的问题的而树立形成的，被组织成员认为有效而共享，并共同遵循的基本信念和认知。 企业文化集中体现了一个企业经营管理的核心主张，以及由此产生的组织行为。','<div>\r\n	<div>\r\n		迪尔和肯尼迪把企业文化整个理论系统概述为5个要素，即企业环境、价值观、英雄人物、文化仪式和文化网络。\r\n	</div>\r\n	<div>\r\n		企业环境是指企业的性质、企业的经营方向、外部环境、企业的社会形象、与外界的联系等方面。它往往决定企业的行为。\r\n	</div>\r\n	<div>\r\n		价值观是指企业内成员对某个事件或某种行为好与坏、善与恶、正确与错误、是否值得仿效的一致认识。价值观是企业文化的核心，统一的价值观使企业内成员在判断自己行为时具有统一的标准，并以此来选择自己的行为。\r\n	</div>\r\n	<div>\r\n		英雄人物是指企业文化的核心人物或企业文化的人格化，其作用在于作为一种活的样板，给企业中其他员工提供可供仿效的榜样，对企业文化的形成和强化起着极为重要的作用。\r\n	</div>\r\n	<div>\r\n		文化仪式是指企业内的各种表彰、奖励活动、聚会以及文娱活动等，它可以把企业中发生的某些事情戏剧化和形象化，来生动的宣传和体现本企业的价值观，使人们通过这些生动活泼的活动来领会企业文化的内涵，使企业文化“寓教于乐”之中。\r\n	</div>\r\n	<div>\r\n		文化网络是指非正式的信息传递渠道，主要是传播文化信息。它是由某种非正式的组织和人群，以及某一特定场合所组成，它所传递出的信息往往能反映出职工的愿望和心态。\r\n	</div>\r\n	<h3>\r\n		产生\r\n	</h3>\r\n	<div>\r\n		企业领导者把文化的变化人的功能应用于企业，以解决现代企业管理中的问题，就有了企业文化。企业管理理论和企业文化管理理论都追求效益。但前者为追求效益而把人当作客体，后者为追求效益把文化概念自觉应用于企业，把具有丰富创造性的人作为管理理论的中心。这种指导思想反映到企业管理中去，就有了人们称之为企业文化的种种观念。\r\n	</div>\r\n	<h3>\r\n		认识\r\n	</h3>\r\n	<div>\r\n		从企业文化的现实出发，进行深入的调查研究，把握企业文化各种现象之间的本质联系。依据实践经验，从感认认识到理性认识，进行科学的概括、总结。\r\n	</div>\r\n	<h3>\r\n		意义\r\n	</h3>\r\n	<div>\r\n		一．企业文化能激发员工的使命感。不管是什么企业都有它的责任和使命，企业使命感是全体员工工作的目标和方向，是企业不断发展或前进的动力之源。\r\n	</div>\r\n	<div>\r\n		二．企业文化能凝聚员工的归属感。　企业文化的作用就是通过企业价值观的提炼和传播，让一群来自不同地方的人共同追求同一个梦想。\r\n	</div>\r\n	<div>\r\n		三．企业文化能加强员工的责任感。企业要通过大量的资料和文件宣传员工责任感的重要性，管理人员要给全体员工灌输责任意识，危机意识和团队意识，要让大家清楚地认识企业是全体员工共同的企业。\r\n	</div>\r\n	<div>\r\n		四．企业文化能赋予员工的荣誉感。每个人都要在自己的工作岗位，工作领域，多做贡献，多出成绩，多追求荣誉感。\r\n	</div>\r\n	<div>\r\n		五．企业文化能实现员工的成就感。一个企业的繁荣昌盛关系到每一个公司员工的生存，企业繁荣了，员工们就会引以为豪，会更积极努力的进取，荣耀越高，成就感就越大，越明显。\r\n	</div>\r\n</div>\r\n<div>\r\n</div>','','','','','','','0','0','Y','1331877791');
INSERT INTO `bage_page` VALUES('4','管理团队','','team','','','团队是现代企业管理中战斗的核心，几乎没有一家企业不谈团队，好象团队就是企业做大做强的灵丹妙药，只要抓紧团队建设就能有锦锈前程了。团队是个好东西，但怎样的团队才算一个好团队，怎样才能运作好一个团队呢？却是许多企业管理者不甚了然的，于是在企业团队建设的过程中就出现了许多弊病，例如从理论著作中生搬硬套到团队运作里面，是很难产生好团队的。','<div>\r\n	<div>\r\n		团队是现代企业管理中战斗的核心，几乎没有一家企业不谈团队，好象团队就是企业做大做强的灵丹妙药，只要抓紧团队建设就能有锦锈前程了。团队是个好东西，但怎样的团队才算一个好团队，怎样才能运作好一个团队呢？却是许多企业管理者不甚了然的，于是在企业团队建设的过程中就出现了许多弊病，例如从理论著作中生搬硬套到团队运作里面，是很难产生好团队的。任何理念都不能执着，执着生僵化，就会蜕变为形式主义，后果很糟糕。在如今企业管理者热火朝天进行的团队建设中就存在这个问题，将团队作为企业文化建设的至上准则是不恰当的，是不符合多元化的现实状况的。\r\n	</div>\r\n	<div>\r\n		一个优秀的企业管理者，应该怎样管理员工?道理也很简单，那就是要给员工创造一个充分利用自己的个性将工作干得最好的条件。不一定什么都要团队化，太死板了。虽然现在的企业也都提倡创新，但如果管理者过分强调团队精神，则员工的创新精神必然受到压抑。压抑个性就是压抑创新，没有个性哪来的创新?说得极端一点，企业管理者要谨防团队建设法西斯化。团队是需要的，企业管理者在团队建设的同时要遵循一个原则，不能压抑员工的个性。在团队内部，企业管理者要给员工充分的自由，少说几句少数服从多数，要知道，聪明的人在世界上还就占少数。\r\n	</div>\r\n	<div>\r\n		企业管理者应该解放思想，要有多元化的思维。不同的企业，团队的性质也不一样。要量体裁衣建设符合企业内在要求的团队，要灵活变化，别搞一刀切。如果该企业是劳动密集型企业，那你可以建设一支高度纪律性组织性的团队。如果该企业是知识密集型企业，那就要以自由主义来管理员工了，建立一支人尽其才的团队是最重要的，严格说算不上是团队，也没必要强调团队，更注重的应该是员工的个人创造力，千万别让团队束缚住员工的头脑，当然应该有的纪律和合作也是不可少的。如果企业既有创造型员工也有操作型员工，那可将团队建设重点放到操作型员工身上。需要注意的一点是，越聪明的人越倾向个人主义，这个情况，企业管理者要注意有的放矢。\r\n	</div>\r\n</div>\r\n<div>\r\n</div>','','','','','','','0','0','Y','1379392484');

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
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='内容管理';


DROP TABLE IF EXISTS `bage_post_2tags`;
CREATE TABLE `bage_post_2tags` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '标题ID',
  `tag_name` char(30) NOT NULL COMMENT '标签名称',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='内容关联标签';


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
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='新闻评论';


DROP TABLE IF EXISTS `bage_post_tags`;
CREATE TABLE `bage_post_tags` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `catalog_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '分类',
  `tag_name` char(30) NOT NULL COMMENT 'tag名称',
  `data_count` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '数据总数',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '录入时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='新闻标签';


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
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='客服';

INSERT INTO `bage_question` VALUES('1','0','0','','八哥软件','5565907@qq.com','','BageCms是一款基于php5+mysql5开发的多功能开源的网站内容管理系统。使用高性能的PHP5的web应用程序开发框架YII构建，具有操作简单、稳定、安全、高效、跨平台等特点。采用MVC设计模式，模板定制方便灵活，内置小挂工具，方便制作各类功能和效果，BageCms可用于企业建站、个人博客、资讯门户、图片站等各类型站点。','','N','如果您需要购买商业程序、项目外包订制、交流合作的，欢迎使用以下方式和我们联系\r\nhttp://www.bagecms.com\r\nhttp://www.bagesoft.cn','Y','1379546643');

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
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='专题';


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
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='附件';


