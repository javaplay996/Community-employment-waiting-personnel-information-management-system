/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - shequdaijiuyerenyuan
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`shequdaijiuyerenyuan` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `shequdaijiuyerenyuan`;

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'轮播图1','upload/config1.jpg'),(2,'轮播图2','upload/config2.jpg'),(3,'轮播图3','upload/config3.jpg');

/*Table structure for table `dictionary` */

DROP TABLE IF EXISTS `dictionary`;

CREATE TABLE `dictionary` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int(11) DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int(11) DEFAULT NULL COMMENT '父字段id',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8 COMMENT='字典表';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_id`,`beizhu`,`create_time`) values (1,'jianli_types','求职意向',1,'求职意向1',NULL,NULL,'2023-02-18 10:59:58'),(2,'jianli_types','求职意向',2,'求职意向2',NULL,NULL,'2023-02-18 10:59:58'),(3,'jianli_types','求职意向',3,'求职意向3',NULL,NULL,'2023-02-18 10:59:58'),(4,'zhaopin_types','招聘岗位',1,'招聘岗位1',NULL,NULL,'2023-02-18 10:59:58'),(5,'zhaopin_types','招聘岗位',2,'招聘岗位2',NULL,NULL,'2023-02-18 10:59:58'),(6,'zhaopin_types','招聘岗位',3,'招聘岗位3',NULL,NULL,'2023-02-18 10:59:58'),(9,'sex_types','性别',1,'男',NULL,NULL,'2023-02-18 10:59:58'),(10,'sex_types','性别',2,'女',NULL,NULL,'2023-02-18 10:59:58'),(13,'news_types','公告信息类型',1,'公告信息类型1',NULL,NULL,'2023-02-18 10:59:58'),(14,'news_types','公告信息类型',2,'公告信息类型2',NULL,NULL,'2023-02-18 10:59:58'),(15,'news_types','公告信息类型',3,'公告信息类型3',NULL,NULL,'2023-02-18 10:59:58'),(17,'jiuye_types','就业状态',1,'未就业',NULL,NULL,'2023-02-18 10:59:58'),(18,'jiuye_types','就业状态',2,'已就业',NULL,NULL,'2023-02-18 10:59:58'),(19,'gongzuotuisong_types','工作类型',1,'工作类型1',NULL,NULL,'2023-02-18 10:59:58'),(20,'gongzuotuisong_types','工作类型',2,'工作类型2',NULL,NULL,'2023-02-18 10:59:58'),(21,'zhaopin_yuyue_yesno_types','审核结果',1,'已就业',NULL,NULL,'2023-02-18 10:59:58'),(22,'zhaopin_yuyue_yesno_types','审核结果',2,'通过',NULL,NULL,'2023-02-18 10:59:58'),(23,'zhaopin_yuyue_yesno_types','审核结果',3,'拒绝',NULL,NULL,'2023-02-18 10:59:58'),(24,'zhaopin_collection_types','收藏表类型',1,'收藏',NULL,NULL,'2023-02-18 10:59:59');

/*Table structure for table `gongzuorenyuan` */

DROP TABLE IF EXISTS `gongzuorenyuan`;

CREATE TABLE `gongzuorenyuan` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `username` varchar(200) DEFAULT NULL COMMENT '账户 ',
  `password` varchar(200) DEFAULT NULL COMMENT '密码 ',
  `gongzuorenyuan_name` varchar(200) DEFAULT NULL COMMENT '社区工作人员名称 Search111 ',
  `gongzuorenyuan_phone` varchar(200) DEFAULT NULL COMMENT '联系方式',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别',
  `gongzuorenyuan_email` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `gongzuorenyuan_delete` int(11) DEFAULT NULL COMMENT '逻辑删除',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='社区工作人员';

/*Data for the table `gongzuorenyuan` */

insert  into `gongzuorenyuan`(`id`,`username`,`password`,`gongzuorenyuan_name`,`gongzuorenyuan_phone`,`sex_types`,`gongzuorenyuan_email`,`gongzuorenyuan_delete`,`create_time`) values (1,'a1','123456','社区工作人员名称1','17703786901',2,'1@qq.com',1,'2023-02-18 11:00:10'),(2,'a2','123456','社区工作人员名称2','17703786902',2,'2@qq.com',1,'2023-02-18 11:00:10'),(3,'a3','123456','社区工作人员名称3','17703786903',2,'3@qq.com',1,'2023-02-18 11:00:10');

/*Table structure for table `gongzuotuisong` */

DROP TABLE IF EXISTS `gongzuotuisong`;

CREATE TABLE `gongzuotuisong` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `gongzuorenyuan_id` int(11) DEFAULT NULL COMMENT '工作人员',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `gongzuotuisong_name` varchar(200) DEFAULT NULL COMMENT '工作名称  Search111 ',
  `gongzuotuisong_types` int(11) DEFAULT NULL COMMENT '工作类型  Search111 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '推送时间',
  `gongzuotuisong_content` text COMMENT '工作详情',
  `gongzuotuisong_delete` int(11) DEFAULT '1' COMMENT '假删',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 listShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='工作推送信息';

/*Data for the table `gongzuotuisong` */

insert  into `gongzuotuisong`(`id`,`gongzuorenyuan_id`,`yonghu_id`,`gongzuotuisong_name`,`gongzuotuisong_types`,`insert_time`,`gongzuotuisong_content`,`gongzuotuisong_delete`,`create_time`) values (1,3,2,'工作名称1',2,'2023-02-18 11:00:10','工作详情1',1,'2023-02-18 11:00:10'),(2,3,2,'工作名称2',2,'2023-02-18 11:00:10','工作详情2',1,'2023-02-18 11:00:10'),(3,2,2,'工作名称3',2,'2023-02-18 11:00:10','工作详情3',1,'2023-02-18 11:00:10'),(4,2,1,'工作名称4',1,'2023-02-18 11:00:10','工作详情4',1,'2023-02-18 11:00:10'),(5,3,2,'工作名称5',2,'2023-02-18 11:00:10','工作详情5',1,'2023-02-18 11:00:10'),(6,1,3,'123',2,'2023-02-18 13:36:57','<p>123</p>',1,'2023-02-18 13:36:57'),(7,1,3,'以就业用户信息不可添加推送信息',2,'2023-02-18 13:51:00','<p>12313231</p>',1,'2023-02-18 13:51:00');

/*Table structure for table `jianli` */

DROP TABLE IF EXISTS `jianli`;

CREATE TABLE `jianli` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `jianli_uuid_number` varchar(200) DEFAULT NULL COMMENT '就业信息唯一编号 ',
  `jianli_name` varchar(200) DEFAULT NULL COMMENT '就业信息名称',
  `jianli_xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `jianli_types` int(11) DEFAULT NULL COMMENT '求职意向 Search111',
  `jianli_xinzi` varchar(200) DEFAULT NULL COMMENT '期望工资 Search111',
  `jianli_xueli` varchar(200) DEFAULT NULL COMMENT '学历 Search111',
  `jianli_jingli` varchar(200) DEFAULT NULL COMMENT '工作经历 Search111',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别',
  `jianli_phone` varchar(200) DEFAULT NULL COMMENT '手机号',
  `jianli_photo` varchar(200) DEFAULT NULL COMMENT '照片',
  `jianli_address` varchar(200) DEFAULT NULL COMMENT '位置',
  `jiaoyu_text` text COMMENT '教育经历',
  `shixi_text` text COMMENT '实习或工作经历',
  `geren_text` text COMMENT '个人介绍',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='就业信息';

/*Data for the table `jianli` */

insert  into `jianli`(`id`,`yonghu_id`,`jianli_uuid_number`,`jianli_name`,`jianli_xingming`,`jianli_types`,`jianli_xinzi`,`jianli_xueli`,`jianli_jingli`,`sex_types`,`jianli_phone`,`jianli_photo`,`jianli_address`,`jiaoyu_text`,`shixi_text`,`geren_text`,`create_time`) values (1,1,'1676689210467','就业信息名称1','姓名1',3,'期望工资1','学历1','工作经历1',1,'17703786901','upload/jianli1.jpg','位置1','教育经历1','实习或工作经历1','个人介绍1','2023-02-18 11:00:10'),(2,3,'1676689210462','就业信息名称2','姓名2',2,'期望工资2','学历2','工作经历2',2,'17703786902','upload/jianli2.jpg','位置2','教育经历2','实习或工作经历2','个人介绍2','2023-02-18 11:00:10'),(3,2,'1676689210478','就业信息名称3','姓名3',2,'期望工资3','学历3','工作经历3',1,'17703786903','upload/jianli3.jpg','位置3','教育经历3','实习或工作经历3','个人介绍3','2023-02-18 11:00:10'),(4,1,'1676689210485','就业信息名称4','姓名4',2,'期望工资4','学历4','工作经历4',1,'17703786904','upload/jianli4.jpg','位置4','教育经历4','实习或工作经历4','个人介绍4','2023-02-18 11:00:10'),(5,1,'1676689210486','就业信息名称5','姓名5',1,'期望工资5','学历5','工作经历5',1,'17703786905','upload/jianli5.jpg','位置5','教育经历5','实习或工作经历5','个人介绍5','2023-02-18 11:00:10');

/*Table structure for table `news` */

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `news_name` varchar(200) DEFAULT NULL COMMENT '公告信息标题  Search111 ',
  `news_types` int(11) DEFAULT NULL COMMENT '公告信息类型  Search111 ',
  `news_photo` varchar(200) DEFAULT NULL COMMENT '公告信息图片',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '公告信息时间',
  `news_content` text COMMENT '公告信息详情',
  `news_delete` int(11) DEFAULT '1' COMMENT '假删',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='公告信息';

/*Data for the table `news` */

insert  into `news`(`id`,`news_name`,`news_types`,`news_photo`,`insert_time`,`news_content`,`news_delete`,`create_time`) values (1,'公告信息标题1',3,'upload/news1.jpg','2023-02-18 11:00:10','公告信息详情1',1,'2023-02-18 11:00:10'),(2,'公告信息标题2',1,'upload/news2.jpg','2023-02-18 11:00:10','公告信息详情2',1,'2023-02-18 11:00:10'),(3,'公告信息标题3',1,'upload/news3.jpg','2023-02-18 11:00:10','公告信息详情3',1,'2023-02-18 11:00:10'),(4,'公告信息标题4',1,'upload/news4.jpg','2023-02-18 11:00:10','公告信息详情4',1,'2023-02-18 11:00:10'),(5,'公告信息标题5',3,'upload/news5.jpg','2023-02-18 11:00:10','公告信息详情5',1,'2023-02-18 11:00:10');

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'admin','users','管理员','u1r0gfjz6h1apoxa709d7ywj0hfdh39z','2023-02-18 10:15:23','2023-02-18 14:53:59'),(2,1,'a1','yonghu','用户','zza7xcifxcvtiezzso4r6ml7vpa0je3p','2023-02-18 10:48:15','2023-02-18 14:39:38'),(3,1,'a1','gongzuorenyuan','社区工作人员','qmbuud9av8iiuq3rjahivr441h495h8i','2023-02-18 13:36:11','2023-02-18 14:50:33');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='管理员';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'admin','admin','管理员','2022-05-01 00:00:00');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '用户姓名 Search111 ',
  `yonghu_photo` varchar(255) DEFAULT NULL COMMENT '头像',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '用户手机号',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '用户身份证号 ',
  `yonghu_email` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别 Search111 ',
  `jiuye_types` int(11) DEFAULT NULL COMMENT '就业状态 Search111 ',
  `yonghu_delete` int(11) DEFAULT '1' COMMENT '假删',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`username`,`password`,`yonghu_name`,`yonghu_photo`,`yonghu_phone`,`yonghu_id_number`,`yonghu_email`,`sex_types`,`jiuye_types`,`yonghu_delete`,`create_time`) values (1,'a1','123456','用户姓名1','upload/yonghu1.jpg','17703786901','410224199010102001','1@qq.com',1,2,1,'2023-02-18 11:00:10'),(2,'a2','123456','用户姓名2','upload/yonghu2.jpg','17703786902','410224199010102002','2@qq.com',2,1,1,'2023-02-18 11:00:10'),(3,'a3','123456','用户姓名3','upload/yonghu3.jpg','17703786903','410224199010102003','3@qq.com',2,1,1,'2023-02-18 11:00:10');

/*Table structure for table `zhaopin` */

DROP TABLE IF EXISTS `zhaopin`;

CREATE TABLE `zhaopin` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `zhaopin_name` varchar(200) DEFAULT NULL COMMENT '招聘信息名称  Search111 ',
  `zhaopin_photo` varchar(200) DEFAULT NULL COMMENT '招聘信息照片',
  `zhaopin_daiyu` varchar(200) DEFAULT NULL COMMENT '薪资待遇',
  `zhaopin_address` varchar(200) DEFAULT NULL COMMENT '上班地点',
  `lianxiren_name` varchar(200) DEFAULT NULL COMMENT '联系人',
  `zhaopin_phone` varchar(200) DEFAULT NULL COMMENT '招聘电话',
  `zhaopin_types` int(11) DEFAULT NULL COMMENT '招聘岗位 Search111',
  `zhaopin_renshu_number` int(11) DEFAULT NULL COMMENT '招聘人数',
  `zhaopin_content` text COMMENT '招聘信息详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='工作岗位';

/*Data for the table `zhaopin` */

insert  into `zhaopin`(`id`,`zhaopin_name`,`zhaopin_photo`,`zhaopin_daiyu`,`zhaopin_address`,`lianxiren_name`,`zhaopin_phone`,`zhaopin_types`,`zhaopin_renshu_number`,`zhaopin_content`,`create_time`) values (1,'招聘信息名称1','upload/zhaopin1.jpg','薪资待遇1','上班地点1','联系人1','17703786901',3,365,'招聘信息详情1','2023-02-18 11:00:10'),(2,'招聘信息名称2','upload/zhaopin2.jpg','薪资待遇2','上班地点2','联系人2','17703786902',3,18,'招聘信息详情2','2023-02-18 11:00:10'),(3,'招聘信息名称3','upload/zhaopin3.jpg','薪资待遇3','上班地点3','联系人3','17703786903',1,164,'招聘信息详情3','2023-02-18 11:00:10'),(4,'招聘信息名称4','upload/zhaopin4.jpg','薪资待遇4','上班地点4','联系人4','17703786904',2,158,'招聘信息详情4','2023-02-18 11:00:10'),(5,'招聘信息名称5','upload/zhaopin5.jpg','薪资待遇5','上班地点5','联系人5','17703786905',3,283,'招聘信息详情5','2023-02-18 11:00:10');

/*Table structure for table `zhaopin_collection` */

DROP TABLE IF EXISTS `zhaopin_collection`;

CREATE TABLE `zhaopin_collection` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `zhaopin_id` int(11) DEFAULT NULL COMMENT '职位',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `zhaopin_collection_types` int(11) DEFAULT NULL COMMENT '类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '收藏时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='职位收藏';

/*Data for the table `zhaopin_collection` */

insert  into `zhaopin_collection`(`id`,`zhaopin_id`,`yonghu_id`,`zhaopin_collection_types`,`insert_time`,`create_time`) values (1,1,2,1,'2023-02-18 11:00:10','2023-02-18 11:00:10'),(2,2,1,1,'2023-02-18 11:00:10','2023-02-18 11:00:10'),(5,5,3,1,'2023-02-18 11:00:10','2023-02-18 11:00:10'),(6,3,1,1,'2023-02-18 13:49:00','2023-02-18 13:49:00');

/*Table structure for table `zhaopin_liuyan` */

DROP TABLE IF EXISTS `zhaopin_liuyan`;

CREATE TABLE `zhaopin_liuyan` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `zhaopin_id` int(11) DEFAULT NULL COMMENT '职位',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `zhaopin_liuyan_text` text COMMENT '留言内容',
  `reply_text` text COMMENT '回复内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '留言时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '回复时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='职位留言';

/*Data for the table `zhaopin_liuyan` */

insert  into `zhaopin_liuyan`(`id`,`zhaopin_id`,`yonghu_id`,`zhaopin_liuyan_text`,`reply_text`,`insert_time`,`update_time`,`create_time`) values (1,1,1,'留言内容1','回复信息1','2023-02-18 11:00:10','2023-02-18 11:00:10','2023-02-18 11:00:10'),(2,2,2,'留言内容2','回复信息2','2023-02-18 11:00:10','2023-02-18 11:00:10','2023-02-18 11:00:10'),(3,3,3,'留言内容3','回复信息3','2023-02-18 11:00:10','2023-02-18 11:00:10','2023-02-18 11:00:10'),(4,4,1,'留言内容4','回复信息4','2023-02-18 11:00:10','2023-02-18 11:00:10','2023-02-18 11:00:10'),(5,5,2,'留言内容5','回复信息5','2023-02-18 11:00:10','2023-02-18 11:00:10','2023-02-18 11:00:10');

/*Table structure for table `zhaopin_yuyue` */

DROP TABLE IF EXISTS `zhaopin_yuyue`;

CREATE TABLE `zhaopin_yuyue` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `jianli_id` int(11) DEFAULT NULL COMMENT '就业信息',
  `zhaopin_id` int(11) DEFAULT NULL COMMENT '招聘',
  `zhaopin_yuyue_time` timestamp NULL DEFAULT NULL COMMENT '预约时间',
  `zhaopin_yuyue_yesno_types` int(11) DEFAULT NULL COMMENT '审核结果 Search111',
  `zhaopin_yuyue_yesno_text` text COMMENT '审核原因',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 listShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8 COMMENT='预约面试';

/*Data for the table `zhaopin_yuyue` */

insert  into `zhaopin_yuyue`(`id`,`jianli_id`,`zhaopin_id`,`zhaopin_yuyue_time`,`zhaopin_yuyue_yesno_types`,`zhaopin_yuyue_yesno_text`,`insert_time`,`create_time`) values (1,1,1,'2023-02-18 11:00:10',1,NULL,'2023-02-18 11:00:10','2023-02-18 11:00:10'),(2,2,2,'2023-02-18 11:00:10',1,NULL,'2023-02-18 11:00:10','2023-02-18 11:00:10'),(3,3,3,'2023-02-18 11:00:10',1,NULL,'2023-02-18 11:00:10','2023-02-18 11:00:10'),(4,4,4,'2023-02-18 11:00:10',1,NULL,'2023-02-18 11:00:10','2023-02-18 11:00:10'),(5,5,5,'2023-02-18 11:00:10',1,NULL,'2023-02-18 11:00:10','2023-02-18 11:00:10'),(29,1,5,'2023-02-18 11:15:39',2,'111111','2023-02-18 11:15:57','2023-02-18 11:15:57');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
