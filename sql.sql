/*
SQLyog Ultimate v10.00 Beta1
MySQL - 5.7.27 : Database - campus_blog
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`campus_blog` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `campus_blog`;

/*Table structure for table `QRTZ_BLOB_TRIGGERS` */

DROP TABLE IF EXISTS `QRTZ_BLOB_TRIGGERS`;

CREATE TABLE `QRTZ_BLOB_TRIGGERS` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `BLOB_DATA` blob,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`),
  KEY `SCHED_NAME` (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`),
  CONSTRAINT `QRTZ_BLOB_TRIGGERS_ibfk_1` FOREIGN KEY (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) REFERENCES `QRTZ_TRIGGERS` (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `QRTZ_BLOB_TRIGGERS` */

/*Table structure for table `QRTZ_CALENDARS` */

DROP TABLE IF EXISTS `QRTZ_CALENDARS`;

CREATE TABLE `QRTZ_CALENDARS` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `CALENDAR_NAME` varchar(200) NOT NULL,
  `CALENDAR` blob NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`CALENDAR_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `QRTZ_CALENDARS` */

/*Table structure for table `QRTZ_CRON_TRIGGERS` */

DROP TABLE IF EXISTS `QRTZ_CRON_TRIGGERS`;

CREATE TABLE `QRTZ_CRON_TRIGGERS` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `CRON_EXPRESSION` varchar(120) NOT NULL,
  `TIME_ZONE_ID` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`),
  CONSTRAINT `QRTZ_CRON_TRIGGERS_ibfk_1` FOREIGN KEY (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) REFERENCES `QRTZ_TRIGGERS` (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `QRTZ_CRON_TRIGGERS` */

insert  into `QRTZ_CRON_TRIGGERS`(`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`,`CRON_EXPRESSION`,`TIME_ZONE_ID`) values ('RenrenScheduler','TASK_1','DEFAULT','0 0/30 * * * ?','Asia/Shanghai');

/*Table structure for table `QRTZ_FIRED_TRIGGERS` */

DROP TABLE IF EXISTS `QRTZ_FIRED_TRIGGERS`;

CREATE TABLE `QRTZ_FIRED_TRIGGERS` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `ENTRY_ID` varchar(95) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `INSTANCE_NAME` varchar(200) NOT NULL,
  `FIRED_TIME` bigint(13) NOT NULL,
  `SCHED_TIME` bigint(13) NOT NULL,
  `PRIORITY` int(11) NOT NULL,
  `STATE` varchar(16) NOT NULL,
  `JOB_NAME` varchar(200) DEFAULT NULL,
  `JOB_GROUP` varchar(200) DEFAULT NULL,
  `IS_NONCONCURRENT` varchar(1) DEFAULT NULL,
  `REQUESTS_RECOVERY` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`SCHED_NAME`,`ENTRY_ID`),
  KEY `IDX_QRTZ_FT_TRIG_INST_NAME` (`SCHED_NAME`,`INSTANCE_NAME`),
  KEY `IDX_QRTZ_FT_INST_JOB_REQ_RCVRY` (`SCHED_NAME`,`INSTANCE_NAME`,`REQUESTS_RECOVERY`),
  KEY `IDX_QRTZ_FT_J_G` (`SCHED_NAME`,`JOB_NAME`,`JOB_GROUP`),
  KEY `IDX_QRTZ_FT_JG` (`SCHED_NAME`,`JOB_GROUP`),
  KEY `IDX_QRTZ_FT_T_G` (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`),
  KEY `IDX_QRTZ_FT_TG` (`SCHED_NAME`,`TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `QRTZ_FIRED_TRIGGERS` */

/*Table structure for table `QRTZ_JOB_DETAILS` */

DROP TABLE IF EXISTS `QRTZ_JOB_DETAILS`;

CREATE TABLE `QRTZ_JOB_DETAILS` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `JOB_NAME` varchar(200) NOT NULL,
  `JOB_GROUP` varchar(200) NOT NULL,
  `DESCRIPTION` varchar(250) DEFAULT NULL,
  `JOB_CLASS_NAME` varchar(250) NOT NULL,
  `IS_DURABLE` varchar(1) NOT NULL,
  `IS_NONCONCURRENT` varchar(1) NOT NULL,
  `IS_UPDATE_DATA` varchar(1) NOT NULL,
  `REQUESTS_RECOVERY` varchar(1) NOT NULL,
  `JOB_DATA` blob,
  PRIMARY KEY (`SCHED_NAME`,`JOB_NAME`,`JOB_GROUP`),
  KEY `IDX_QRTZ_J_REQ_RECOVERY` (`SCHED_NAME`,`REQUESTS_RECOVERY`),
  KEY `IDX_QRTZ_J_GRP` (`SCHED_NAME`,`JOB_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `QRTZ_JOB_DETAILS` */

insert  into `QRTZ_JOB_DETAILS`(`SCHED_NAME`,`JOB_NAME`,`JOB_GROUP`,`DESCRIPTION`,`JOB_CLASS_NAME`,`IS_DURABLE`,`IS_NONCONCURRENT`,`IS_UPDATE_DATA`,`REQUESTS_RECOVERY`,`JOB_DATA`) values ('RenrenScheduler','TASK_1','DEFAULT',NULL,'io.renren.modules.job.utils.ScheduleJob','0','0','0','0','��\0sr\0org.quartz.JobDataMap���迩��\0\0xr\0&org.quartz.utils.StringKeyDirtyFlagMap�����](\0Z\0allowsTransientDataxr\0org.quartz.utils.DirtyFlagMap�.�(v\n�\0Z\0dirtyL\0mapt\0Ljava/util/Map;xpsr\0java.util.HashMap���`�\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0w\0\0\0\0\0\0t\0\rJOB_PARAM_KEYsr\0.io.renren.modules.job.entity.ScheduleJobEntity\0\0\0\0\0\0\0\0L\0beanNamet\0Ljava/lang/String;L\0\ncreateTimet\0Ljava/util/Date;L\0cronExpressionq\0~\0	L\0jobIdt\0Ljava/lang/Long;L\0paramsq\0~\0	L\0remarkq\0~\0	L\0statust\0Ljava/lang/Integer;xpt\0testTasksr\0java.util.Datehj�KYt\0\0xpw\0\0me�K@xt\00 0/30 * * * ?sr\0java.lang.Long;��̏#�\0J\0valuexr\0java.lang.Number������\0\0xp\0\0\0\0\0\0\0t\0renrent\0参数测试sr\0java.lang.Integer⠤���8\0I\0valuexq\0~\0\0\0\0\0x\0');

/*Table structure for table `QRTZ_LOCKS` */

DROP TABLE IF EXISTS `QRTZ_LOCKS`;

CREATE TABLE `QRTZ_LOCKS` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `LOCK_NAME` varchar(40) NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`LOCK_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `QRTZ_LOCKS` */

insert  into `QRTZ_LOCKS`(`SCHED_NAME`,`LOCK_NAME`) values ('RenrenScheduler','STATE_ACCESS'),('RenrenScheduler','TRIGGER_ACCESS');

/*Table structure for table `QRTZ_PAUSED_TRIGGER_GRPS` */

DROP TABLE IF EXISTS `QRTZ_PAUSED_TRIGGER_GRPS`;

CREATE TABLE `QRTZ_PAUSED_TRIGGER_GRPS` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `QRTZ_PAUSED_TRIGGER_GRPS` */

/*Table structure for table `QRTZ_SCHEDULER_STATE` */

DROP TABLE IF EXISTS `QRTZ_SCHEDULER_STATE`;

CREATE TABLE `QRTZ_SCHEDULER_STATE` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `INSTANCE_NAME` varchar(200) NOT NULL,
  `LAST_CHECKIN_TIME` bigint(13) NOT NULL,
  `CHECKIN_INTERVAL` bigint(13) NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`INSTANCE_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `QRTZ_SCHEDULER_STATE` */

insert  into `QRTZ_SCHEDULER_STATE`(`SCHED_NAME`,`INSTANCE_NAME`,`LAST_CHECKIN_TIME`,`CHECKIN_INTERVAL`) values ('RenrenScheduler','izngler4jujo30z1569404976060',1569826388019,15000);

/*Table structure for table `QRTZ_SIMPLE_TRIGGERS` */

DROP TABLE IF EXISTS `QRTZ_SIMPLE_TRIGGERS`;

CREATE TABLE `QRTZ_SIMPLE_TRIGGERS` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `REPEAT_COUNT` bigint(7) NOT NULL,
  `REPEAT_INTERVAL` bigint(12) NOT NULL,
  `TIMES_TRIGGERED` bigint(10) NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`),
  CONSTRAINT `QRTZ_SIMPLE_TRIGGERS_ibfk_1` FOREIGN KEY (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) REFERENCES `QRTZ_TRIGGERS` (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `QRTZ_SIMPLE_TRIGGERS` */

/*Table structure for table `QRTZ_SIMPROP_TRIGGERS` */

DROP TABLE IF EXISTS `QRTZ_SIMPROP_TRIGGERS`;

CREATE TABLE `QRTZ_SIMPROP_TRIGGERS` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `STR_PROP_1` varchar(512) DEFAULT NULL,
  `STR_PROP_2` varchar(512) DEFAULT NULL,
  `STR_PROP_3` varchar(512) DEFAULT NULL,
  `INT_PROP_1` int(11) DEFAULT NULL,
  `INT_PROP_2` int(11) DEFAULT NULL,
  `LONG_PROP_1` bigint(20) DEFAULT NULL,
  `LONG_PROP_2` bigint(20) DEFAULT NULL,
  `DEC_PROP_1` decimal(13,4) DEFAULT NULL,
  `DEC_PROP_2` decimal(13,4) DEFAULT NULL,
  `BOOL_PROP_1` varchar(1) DEFAULT NULL,
  `BOOL_PROP_2` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`),
  CONSTRAINT `QRTZ_SIMPROP_TRIGGERS_ibfk_1` FOREIGN KEY (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) REFERENCES `QRTZ_TRIGGERS` (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `QRTZ_SIMPROP_TRIGGERS` */

/*Table structure for table `QRTZ_TRIGGERS` */

DROP TABLE IF EXISTS `QRTZ_TRIGGERS`;

CREATE TABLE `QRTZ_TRIGGERS` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `JOB_NAME` varchar(200) NOT NULL,
  `JOB_GROUP` varchar(200) NOT NULL,
  `DESCRIPTION` varchar(250) DEFAULT NULL,
  `NEXT_FIRE_TIME` bigint(13) DEFAULT NULL,
  `PREV_FIRE_TIME` bigint(13) DEFAULT NULL,
  `PRIORITY` int(11) DEFAULT NULL,
  `TRIGGER_STATE` varchar(16) NOT NULL,
  `TRIGGER_TYPE` varchar(8) NOT NULL,
  `START_TIME` bigint(13) NOT NULL,
  `END_TIME` bigint(13) DEFAULT NULL,
  `CALENDAR_NAME` varchar(200) DEFAULT NULL,
  `MISFIRE_INSTR` smallint(2) DEFAULT NULL,
  `JOB_DATA` blob,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`),
  KEY `IDX_QRTZ_T_J` (`SCHED_NAME`,`JOB_NAME`,`JOB_GROUP`),
  KEY `IDX_QRTZ_T_JG` (`SCHED_NAME`,`JOB_GROUP`),
  KEY `IDX_QRTZ_T_C` (`SCHED_NAME`,`CALENDAR_NAME`),
  KEY `IDX_QRTZ_T_G` (`SCHED_NAME`,`TRIGGER_GROUP`),
  KEY `IDX_QRTZ_T_STATE` (`SCHED_NAME`,`TRIGGER_STATE`),
  KEY `IDX_QRTZ_T_N_STATE` (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`,`TRIGGER_STATE`),
  KEY `IDX_QRTZ_T_N_G_STATE` (`SCHED_NAME`,`TRIGGER_GROUP`,`TRIGGER_STATE`),
  KEY `IDX_QRTZ_T_NEXT_FIRE_TIME` (`SCHED_NAME`,`NEXT_FIRE_TIME`),
  KEY `IDX_QRTZ_T_NFT_ST` (`SCHED_NAME`,`TRIGGER_STATE`,`NEXT_FIRE_TIME`),
  KEY `IDX_QRTZ_T_NFT_MISFIRE` (`SCHED_NAME`,`MISFIRE_INSTR`,`NEXT_FIRE_TIME`),
  KEY `IDX_QRTZ_T_NFT_ST_MISFIRE` (`SCHED_NAME`,`MISFIRE_INSTR`,`NEXT_FIRE_TIME`,`TRIGGER_STATE`),
  KEY `IDX_QRTZ_T_NFT_ST_MISFIRE_GRP` (`SCHED_NAME`,`MISFIRE_INSTR`,`NEXT_FIRE_TIME`,`TRIGGER_GROUP`,`TRIGGER_STATE`),
  CONSTRAINT `QRTZ_TRIGGERS_ibfk_1` FOREIGN KEY (`SCHED_NAME`, `JOB_NAME`, `JOB_GROUP`) REFERENCES `QRTZ_JOB_DETAILS` (`SCHED_NAME`, `JOB_NAME`, `JOB_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `QRTZ_TRIGGERS` */

insert  into `QRTZ_TRIGGERS`(`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`,`JOB_NAME`,`JOB_GROUP`,`DESCRIPTION`,`NEXT_FIRE_TIME`,`PREV_FIRE_TIME`,`PRIORITY`,`TRIGGER_STATE`,`TRIGGER_TYPE`,`START_TIME`,`END_TIME`,`CALENDAR_NAME`,`MISFIRE_INSTR`,`JOB_DATA`) values ('RenrenScheduler','TASK_1','DEFAULT','TASK_1','DEFAULT',NULL,1569405600000,-1,5,'WAITING','CRON',1569404976000,0,NULL,2,'��\0sr\0org.quartz.JobDataMap���迩��\0\0xr\0&org.quartz.utils.StringKeyDirtyFlagMap�����](\0Z\0allowsTransientDataxr\0org.quartz.utils.DirtyFlagMap�.�(v\n�\0Z\0dirtyL\0mapt\0Ljava/util/Map;xpsr\0java.util.HashMap���`�\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0w\0\0\0\0\0\0t\0\rJOB_PARAM_KEYsr\0.io.renren.modules.job.entity.ScheduleJobEntity\0\0\0\0\0\0\0\0L\0beanNamet\0Ljava/lang/String;L\0\ncreateTimet\0Ljava/util/Date;L\0cronExpressionq\0~\0	L\0jobIdt\0Ljava/lang/Long;L\0paramsq\0~\0	L\0remarkq\0~\0	L\0statust\0Ljava/lang/Integer;xpt\0testTasksr\0java.util.Datehj�KYt\0\0xpw\0\0me�K@xt\00 0/30 * * * ?sr\0java.lang.Long;��̏#�\0J\0valuexr\0java.lang.Number������\0\0xp\0\0\0\0\0\0\0t\0renrent\0参数测试sr\0java.lang.Integer⠤���8\0I\0valuexq\0~\0\0\0\0\0x\0');

/*Table structure for table `schedule_job` */

DROP TABLE IF EXISTS `schedule_job`;

CREATE TABLE `schedule_job` (
  `job_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '任务id',
  `bean_name` varchar(200) DEFAULT NULL COMMENT 'spring bean名称',
  `params` varchar(2000) DEFAULT NULL COMMENT '参数',
  `cron_expression` varchar(100) DEFAULT NULL COMMENT 'cron表达式',
  `status` tinyint(4) DEFAULT NULL COMMENT '任务状态  0：正常  1：暂停',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`job_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='定时任务';

/*Data for the table `schedule_job` */

insert  into `schedule_job`(`job_id`,`bean_name`,`params`,`cron_expression`,`status`,`remark`,`create_time`) values (1,'testTask','renren','0 0/30 * * * ?',0,'参数测试','2019-09-25 08:23:36');

/*Table structure for table `schedule_job_log` */

DROP TABLE IF EXISTS `schedule_job_log`;

CREATE TABLE `schedule_job_log` (
  `log_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '任务日志id',
  `job_id` bigint(20) NOT NULL COMMENT '任务id',
  `bean_name` varchar(200) DEFAULT NULL COMMENT 'spring bean名称',
  `params` varchar(2000) DEFAULT NULL COMMENT '参数',
  `status` tinyint(4) NOT NULL COMMENT '任务状态    0：成功    1：失败',
  `error` varchar(2000) DEFAULT NULL COMMENT '失败信息',
  `times` int(11) NOT NULL COMMENT '耗时(单位：毫秒)',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`log_id`),
  KEY `job_id` (`job_id`)
) ENGINE=InnoDB AUTO_INCREMENT=235 DEFAULT CHARSET=utf8 COMMENT='定时任务日志';

/*Data for the table `schedule_job_log` */

insert  into `schedule_job_log`(`log_id`,`job_id`,`bean_name`,`params`,`status`,`error`,`times`,`create_time`) values (1,1,'testTask','renren',0,NULL,0,'2019-09-25 18:00:00'),(2,1,'testTask','renren',0,NULL,1,'2019-09-25 18:30:00'),(3,1,'testTask','renren',0,NULL,1,'2019-09-25 19:00:00'),(4,1,'testTask','renren',0,NULL,1,'2019-09-25 19:30:00'),(5,1,'testTask','renren',0,NULL,1,'2019-09-25 20:00:00'),(6,1,'testTask','renren',0,NULL,0,'2019-09-25 20:30:00'),(7,1,'testTask','renren',0,NULL,1,'2019-09-25 21:00:00'),(8,1,'testTask','renren',0,NULL,1,'2019-09-25 21:30:00'),(9,1,'testTask','renren',0,NULL,0,'2019-09-25 22:00:00'),(10,1,'testTask','renren',0,NULL,0,'2019-09-25 22:30:00'),(11,1,'testTask','renren',0,NULL,0,'2019-09-25 23:00:00'),(12,1,'testTask','renren',0,NULL,0,'2019-09-25 23:30:00'),(13,1,'testTask','renren',0,NULL,2,'2019-09-26 00:00:00'),(14,1,'testTask','renren',0,NULL,1,'2019-09-26 00:30:00'),(15,1,'testTask','renren',0,NULL,0,'2019-09-26 01:00:00'),(16,1,'testTask','renren',0,NULL,1,'2019-09-26 01:30:00'),(17,1,'testTask','renren',0,NULL,1,'2019-09-26 02:00:00'),(18,1,'testTask','renren',0,NULL,0,'2019-09-26 02:30:00'),(19,1,'testTask','renren',0,NULL,8,'2019-09-26 03:00:00'),(20,1,'testTask','renren',0,NULL,0,'2019-09-26 03:30:00'),(21,1,'testTask','renren',0,NULL,0,'2019-09-26 04:00:00'),(22,1,'testTask','renren',0,NULL,0,'2019-09-26 04:30:00'),(23,1,'testTask','renren',0,NULL,1,'2019-09-26 05:00:00'),(24,1,'testTask','renren',0,NULL,1,'2019-09-26 05:30:00'),(25,1,'testTask','renren',0,NULL,1,'2019-09-26 06:00:00'),(26,1,'testTask','renren',0,NULL,1,'2019-09-26 06:30:00'),(27,1,'testTask','renren',0,NULL,1,'2019-09-26 07:00:00'),(28,1,'testTask','renren',0,NULL,0,'2019-09-26 07:30:00'),(29,1,'testTask','renren',0,NULL,0,'2019-09-26 08:00:00'),(30,1,'testTask','renren',0,NULL,0,'2019-09-26 08:30:00'),(31,1,'testTask','renren',0,NULL,1,'2019-09-26 09:00:00'),(32,1,'testTask','renren',0,NULL,0,'2019-09-26 09:30:00'),(33,1,'testTask','renren',0,NULL,0,'2019-09-26 10:00:00'),(34,1,'testTask','renren',0,NULL,0,'2019-09-26 10:30:00'),(35,1,'testTask','renren',0,NULL,1,'2019-09-26 11:00:00'),(36,1,'testTask','renren',0,NULL,0,'2019-09-26 11:30:00'),(37,1,'testTask','renren',0,NULL,1,'2019-09-26 12:00:00'),(38,1,'testTask','renren',0,NULL,1,'2019-09-26 12:30:00'),(39,1,'testTask','renren',0,NULL,0,'2019-09-26 13:00:00'),(40,1,'testTask','renren',0,NULL,0,'2019-09-26 13:30:00'),(41,1,'testTask','renren',0,NULL,1,'2019-09-26 14:00:00'),(42,1,'testTask','renren',0,NULL,1,'2019-09-26 14:30:00'),(43,1,'testTask','renren',0,NULL,0,'2019-09-26 15:00:00'),(44,1,'testTask','renren',0,NULL,1,'2019-09-26 15:30:00'),(45,1,'testTask','renren',0,NULL,0,'2019-09-26 16:00:00'),(46,1,'testTask','renren',0,NULL,1,'2019-09-26 16:30:00'),(47,1,'testTask','renren',0,NULL,0,'2019-09-26 17:00:00'),(48,1,'testTask','renren',0,NULL,0,'2019-09-26 17:30:00'),(49,1,'testTask','renren',0,NULL,0,'2019-09-26 18:00:00'),(50,1,'testTask','renren',0,NULL,0,'2019-09-26 18:30:00'),(51,1,'testTask','renren',0,NULL,0,'2019-09-26 19:00:00'),(52,1,'testTask','renren',0,NULL,0,'2019-09-26 19:30:00'),(53,1,'testTask','renren',0,NULL,1,'2019-09-26 20:00:00'),(54,1,'testTask','renren',0,NULL,0,'2019-09-26 20:30:00'),(55,1,'testTask','renren',0,NULL,1,'2019-09-26 21:00:00'),(56,1,'testTask','renren',0,NULL,0,'2019-09-26 21:30:00'),(57,1,'testTask','renren',0,NULL,0,'2019-09-26 22:00:00'),(58,1,'testTask','renren',0,NULL,0,'2019-09-26 22:30:00'),(59,1,'testTask','renren',0,NULL,1,'2019-09-26 23:00:00'),(60,1,'testTask','renren',0,NULL,0,'2019-09-26 23:30:00'),(61,1,'testTask','renren',0,NULL,3,'2019-09-27 00:00:00'),(62,1,'testTask','renren',0,NULL,1,'2019-09-27 00:30:00'),(63,1,'testTask','renren',0,NULL,0,'2019-09-27 01:00:00'),(64,1,'testTask','renren',0,NULL,1,'2019-09-27 01:30:00'),(65,1,'testTask','renren',0,NULL,0,'2019-09-27 02:00:00'),(66,1,'testTask','renren',0,NULL,1,'2019-09-27 02:30:00'),(67,1,'testTask','renren',0,NULL,0,'2019-09-27 03:00:00'),(68,1,'testTask','renren',0,NULL,0,'2019-09-27 03:30:00'),(69,1,'testTask','renren',0,NULL,0,'2019-09-27 04:00:00'),(70,1,'testTask','renren',0,NULL,0,'2019-09-27 04:30:00'),(71,1,'testTask','renren',0,NULL,0,'2019-09-27 05:00:00'),(72,1,'testTask','renren',0,NULL,0,'2019-09-27 05:30:00'),(73,1,'testTask','renren',0,NULL,1,'2019-09-27 06:00:00'),(74,1,'testTask','renren',0,NULL,0,'2019-09-27 06:30:00'),(75,1,'testTask','renren',0,NULL,0,'2019-09-27 07:00:00'),(76,1,'testTask','renren',0,NULL,0,'2019-09-27 07:30:00'),(77,1,'testTask','renren',0,NULL,0,'2019-09-27 08:00:00'),(78,1,'testTask','renren',0,NULL,0,'2019-09-27 08:30:00'),(79,1,'testTask','renren',0,NULL,1,'2019-09-27 09:00:00'),(80,1,'testTask','renren',0,NULL,0,'2019-09-27 09:30:00'),(81,1,'testTask','renren',0,NULL,0,'2019-09-27 10:00:00'),(82,1,'testTask','renren',0,NULL,0,'2019-09-27 10:30:00'),(83,1,'testTask','renren',0,NULL,0,'2019-09-27 11:00:00'),(84,1,'testTask','renren',0,NULL,0,'2019-09-27 11:30:00'),(85,1,'testTask','renren',0,NULL,0,'2019-09-27 12:00:00'),(86,1,'testTask','renren',0,NULL,0,'2019-09-27 12:30:00'),(87,1,'testTask','renren',0,NULL,0,'2019-09-27 13:00:00'),(88,1,'testTask','renren',0,NULL,0,'2019-09-27 13:30:00'),(89,1,'testTask','renren',0,NULL,0,'2019-09-27 14:00:00'),(90,1,'testTask','renren',0,NULL,1,'2019-09-27 14:30:00'),(91,1,'testTask','renren',0,NULL,0,'2019-09-27 15:00:00'),(92,1,'testTask','renren',0,NULL,0,'2019-09-27 15:30:00'),(93,1,'testTask','renren',0,NULL,1,'2019-09-27 16:00:00'),(94,1,'testTask','renren',0,NULL,0,'2019-09-27 16:30:00'),(95,1,'testTask','renren',0,NULL,0,'2019-09-27 17:00:00'),(96,1,'testTask','renren',0,NULL,0,'2019-09-27 17:30:00'),(97,1,'testTask','renren',0,NULL,0,'2019-09-27 18:00:00'),(98,1,'testTask','renren',0,NULL,0,'2019-09-27 18:30:00'),(99,1,'testTask','renren',0,NULL,0,'2019-09-27 19:00:00'),(100,1,'testTask','renren',0,NULL,1,'2019-09-27 19:30:00'),(101,1,'testTask','renren',0,NULL,0,'2019-09-27 20:00:00'),(102,1,'testTask','renren',0,NULL,0,'2019-09-27 20:30:00'),(103,1,'testTask','renren',0,NULL,0,'2019-09-27 21:00:00'),(104,1,'testTask','renren',0,NULL,0,'2019-09-27 21:30:00'),(105,1,'testTask','renren',0,NULL,1,'2019-09-27 22:00:00'),(106,1,'testTask','renren',0,NULL,0,'2019-09-27 22:30:00'),(107,1,'testTask','renren',0,NULL,0,'2019-09-27 23:00:00'),(108,1,'testTask','renren',0,NULL,0,'2019-09-27 23:30:00'),(109,1,'testTask','renren',0,NULL,2,'2019-09-28 00:00:00'),(110,1,'testTask','renren',0,NULL,1,'2019-09-28 00:30:00'),(111,1,'testTask','renren',0,NULL,0,'2019-09-28 01:00:00'),(112,1,'testTask','renren',0,NULL,1,'2019-09-28 01:30:00'),(113,1,'testTask','renren',0,NULL,0,'2019-09-28 02:00:00'),(114,1,'testTask','renren',0,NULL,0,'2019-09-28 02:30:00'),(115,1,'testTask','renren',0,NULL,1,'2019-09-28 03:00:00'),(116,1,'testTask','renren',0,NULL,0,'2019-09-28 03:30:00'),(117,1,'testTask','renren',0,NULL,0,'2019-09-28 04:00:00'),(118,1,'testTask','renren',0,NULL,0,'2019-09-28 04:30:00'),(119,1,'testTask','renren',0,NULL,0,'2019-09-28 05:00:00'),(120,1,'testTask','renren',0,NULL,0,'2019-09-28 05:30:00'),(121,1,'testTask','renren',0,NULL,0,'2019-09-28 06:00:00'),(122,1,'testTask','renren',0,NULL,0,'2019-09-28 06:30:00'),(123,1,'testTask','renren',0,NULL,0,'2019-09-28 07:00:00'),(124,1,'testTask','renren',0,NULL,0,'2019-09-28 07:30:00'),(125,1,'testTask','renren',0,NULL,0,'2019-09-28 08:00:00'),(126,1,'testTask','renren',0,NULL,0,'2019-09-28 08:30:00'),(127,1,'testTask','renren',0,NULL,1,'2019-09-28 09:00:00'),(128,1,'testTask','renren',0,NULL,0,'2019-09-28 09:30:00'),(129,1,'testTask','renren',0,NULL,0,'2019-09-28 10:00:00'),(130,1,'testTask','renren',0,NULL,0,'2019-09-28 10:30:00'),(131,1,'testTask','renren',0,NULL,0,'2019-09-28 11:00:00'),(132,1,'testTask','renren',0,NULL,1,'2019-09-28 11:30:00'),(133,1,'testTask','renren',0,NULL,0,'2019-09-28 12:00:00'),(134,1,'testTask','renren',0,NULL,0,'2019-09-28 12:30:00'),(135,1,'testTask','renren',0,NULL,0,'2019-09-28 13:00:00'),(136,1,'testTask','renren',0,NULL,0,'2019-09-28 13:30:00'),(137,1,'testTask','renren',0,NULL,0,'2019-09-28 14:00:00'),(138,1,'testTask','renren',0,NULL,0,'2019-09-28 14:30:00'),(139,1,'testTask','renren',0,NULL,0,'2019-09-28 15:00:00'),(140,1,'testTask','renren',0,NULL,0,'2019-09-28 15:30:00'),(141,1,'testTask','renren',0,NULL,1,'2019-09-28 16:00:00'),(142,1,'testTask','renren',0,NULL,0,'2019-09-28 16:30:00'),(143,1,'testTask','renren',0,NULL,1,'2019-09-28 17:00:00'),(144,1,'testTask','renren',0,NULL,1,'2019-09-28 17:30:00'),(145,1,'testTask','renren',0,NULL,1,'2019-09-28 18:00:00'),(146,1,'testTask','renren',0,NULL,0,'2019-09-28 18:30:00'),(147,1,'testTask','renren',0,NULL,0,'2019-09-28 19:00:00'),(148,1,'testTask','renren',0,NULL,0,'2019-09-28 19:30:00'),(149,1,'testTask','renren',0,NULL,0,'2019-09-28 20:00:00'),(150,1,'testTask','renren',0,NULL,0,'2019-09-28 20:30:00'),(151,1,'testTask','renren',0,NULL,0,'2019-09-28 21:00:00'),(152,1,'testTask','renren',0,NULL,0,'2019-09-28 21:30:00'),(153,1,'testTask','renren',0,NULL,0,'2019-09-28 22:00:00'),(154,1,'testTask','renren',0,NULL,0,'2019-09-28 22:30:00'),(155,1,'testTask','renren',0,NULL,0,'2019-09-28 23:00:00'),(156,1,'testTask','renren',0,NULL,0,'2019-09-28 23:30:00'),(157,1,'testTask','renren',0,NULL,3,'2019-09-29 00:00:00'),(158,1,'testTask','renren',0,NULL,4,'2019-09-29 00:30:00'),(159,1,'testTask','renren',0,NULL,0,'2019-09-29 01:00:00'),(160,1,'testTask','renren',0,NULL,1,'2019-09-29 01:30:00'),(161,1,'testTask','renren',0,NULL,0,'2019-09-29 02:00:00'),(162,1,'testTask','renren',0,NULL,1,'2019-09-29 02:30:00'),(163,1,'testTask','renren',0,NULL,1,'2019-09-29 03:00:00'),(164,1,'testTask','renren',0,NULL,0,'2019-09-29 03:30:00'),(165,1,'testTask','renren',0,NULL,0,'2019-09-29 04:00:00'),(166,1,'testTask','renren',0,NULL,1,'2019-09-29 04:30:00'),(167,1,'testTask','renren',0,NULL,0,'2019-09-29 05:00:00'),(168,1,'testTask','renren',0,NULL,1,'2019-09-29 05:30:00'),(169,1,'testTask','renren',0,NULL,0,'2019-09-29 06:00:00'),(170,1,'testTask','renren',0,NULL,0,'2019-09-29 06:30:00'),(171,1,'testTask','renren',0,NULL,1,'2019-09-29 07:00:00'),(172,1,'testTask','renren',0,NULL,0,'2019-09-29 07:30:00'),(173,1,'testTask','renren',0,NULL,0,'2019-09-29 08:00:00'),(174,1,'testTask','renren',0,NULL,0,'2019-09-29 08:30:00'),(175,1,'testTask','renren',0,NULL,1,'2019-09-29 09:00:00'),(176,1,'testTask','renren',0,NULL,1,'2019-09-29 09:30:00'),(177,1,'testTask','renren',0,NULL,0,'2019-09-29 10:00:00'),(178,1,'testTask','renren',0,NULL,0,'2019-09-29 10:30:00'),(179,1,'testTask','renren',0,NULL,1,'2019-09-29 11:00:00'),(180,1,'testTask','renren',0,NULL,1,'2019-09-29 11:30:00'),(181,1,'testTask','renren',0,NULL,0,'2019-09-29 12:00:00'),(182,1,'testTask','renren',0,NULL,0,'2019-09-29 12:30:00'),(183,1,'testTask','renren',0,NULL,1,'2019-09-29 13:00:00'),(184,1,'testTask','renren',0,NULL,0,'2019-09-29 13:30:00'),(185,1,'testTask','renren',0,NULL,0,'2019-09-29 14:00:00'),(186,1,'testTask','renren',0,NULL,1,'2019-09-29 14:30:00'),(187,1,'testTask','renren',0,NULL,1,'2019-09-29 15:00:00'),(188,1,'testTask','renren',0,NULL,0,'2019-09-29 15:30:00'),(189,1,'testTask','renren',0,NULL,1,'2019-09-29 16:00:00'),(190,1,'testTask','renren',0,NULL,0,'2019-09-29 16:30:00'),(191,1,'testTask','renren',0,NULL,1,'2019-09-29 17:00:00'),(192,1,'testTask','renren',0,NULL,1,'2019-09-29 17:30:00'),(193,1,'testTask','renren',0,NULL,0,'2019-09-29 18:00:00'),(194,1,'testTask','renren',0,NULL,0,'2019-09-29 18:30:00'),(195,1,'testTask','renren',0,NULL,0,'2019-09-29 19:00:00'),(196,1,'testTask','renren',0,NULL,0,'2019-09-29 19:30:00'),(197,1,'testTask','renren',0,NULL,0,'2019-09-29 20:00:00'),(198,1,'testTask','renren',0,NULL,1,'2019-09-29 20:30:00'),(199,1,'testTask','renren',0,NULL,0,'2019-09-29 21:00:00'),(200,1,'testTask','renren',0,NULL,0,'2019-09-29 21:30:00'),(201,1,'testTask','renren',0,NULL,0,'2019-09-29 22:00:00'),(202,1,'testTask','renren',0,NULL,0,'2019-09-29 22:30:00'),(203,1,'testTask','renren',0,NULL,1,'2019-09-29 23:00:00'),(204,1,'testTask','renren',0,NULL,0,'2019-09-29 23:30:00'),(205,1,'testTask','renren',0,NULL,4,'2019-09-30 00:00:00'),(206,1,'testTask','renren',0,NULL,1,'2019-09-30 00:30:00'),(207,1,'testTask','renren',0,NULL,0,'2019-09-30 01:00:00'),(208,1,'testTask','renren',0,NULL,0,'2019-09-30 01:30:00'),(209,1,'testTask','renren',0,NULL,1,'2019-09-30 02:00:00'),(210,1,'testTask','renren',0,NULL,0,'2019-09-30 02:30:00'),(211,1,'testTask','renren',0,NULL,0,'2019-09-30 03:00:00'),(212,1,'testTask','renren',0,NULL,0,'2019-09-30 03:30:00'),(213,1,'testTask','renren',0,NULL,0,'2019-09-30 04:00:00'),(214,1,'testTask','renren',0,NULL,1,'2019-09-30 04:30:00'),(215,1,'testTask','renren',0,NULL,0,'2019-09-30 05:00:00'),(216,1,'testTask','renren',0,NULL,1,'2019-09-30 05:30:00'),(217,1,'testTask','renren',0,NULL,0,'2019-09-30 06:00:00'),(218,1,'testTask','renren',0,NULL,0,'2019-09-30 06:30:00'),(219,1,'testTask','renren',0,NULL,1,'2019-09-30 07:00:00'),(220,1,'testTask','renren',0,NULL,0,'2019-09-30 07:30:00'),(221,1,'testTask','renren',0,NULL,0,'2019-09-30 08:00:00'),(222,1,'testTask','renren',0,NULL,0,'2019-09-30 08:30:00'),(223,1,'testTask','renren',0,NULL,0,'2019-09-30 09:00:00'),(224,1,'testTask','renren',0,NULL,0,'2019-09-30 09:30:00'),(225,1,'testTask','renren',0,NULL,0,'2019-09-30 10:00:00'),(226,1,'testTask','renren',0,NULL,0,'2019-09-30 10:30:00'),(227,1,'testTask','renren',0,NULL,1,'2019-09-30 11:00:00'),(228,1,'testTask','renren',0,NULL,1,'2019-09-30 11:30:00'),(229,1,'testTask','renren',0,NULL,0,'2019-09-30 12:00:00'),(230,1,'testTask','renren',0,NULL,0,'2019-09-30 12:30:00'),(231,1,'testTask','renren',0,NULL,0,'2019-09-30 13:00:00'),(232,1,'testTask','renren',0,NULL,0,'2019-09-30 13:30:00'),(233,1,'testTask','renren',0,NULL,0,'2019-09-30 14:00:00'),(234,1,'testTask','renren',0,NULL,0,'2019-09-30 14:30:00');

/*Table structure for table `sys_config` */

DROP TABLE IF EXISTS `sys_config`;

CREATE TABLE `sys_config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `param_key` varchar(50) DEFAULT NULL COMMENT 'key',
  `param_value` varchar(2000) DEFAULT NULL COMMENT 'value',
  `status` tinyint(4) DEFAULT '1' COMMENT '状态   0：隐藏   1：显示',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`),
  UNIQUE KEY `param_key` (`param_key`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COMMENT='系统配置信息表';

/*Data for the table `sys_config` */

insert  into `sys_config`(`id`,`param_key`,`param_value`,`status`,`remark`) values (1,'CLOUD_STORAGE_CONFIG_KEY','{\"aliyunAccessKeyId\":\"\",\"aliyunAccessKeySecret\":\"\",\"aliyunBucketName\":\"\",\"aliyunDomain\":\"\",\"aliyunEndPoint\":\"\",\"aliyunPrefix\":\"\",\"qcloudBucketName\":\"\",\"qcloudDomain\":\"\",\"qcloudPrefix\":\"\",\"qcloudSecretId\":\"\",\"qcloudSecretKey\":\"\",\"qiniuAccessKey\":\"NrgMfABZxWLo5B-YYSjoE8-AZ1EISdi1Z3ubLOeZ\",\"qiniuBucketName\":\"ios-app\",\"qiniuDomain\":\"http://7xqbwh.dl1.z0.glb.clouddn.com\",\"qiniuPrefix\":\"upload\",\"qiniuSecretKey\":\"uIwJHevMRWU0VLxFvgy0tAcOdGqasdtVlJkdy6vV\",\"type\":1}',0,'云存储配置信息');

/*Table structure for table `sys_dept` */

DROP TABLE IF EXISTS `sys_dept`;

CREATE TABLE `sys_dept` (
  `dept_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `parent_id` bigint(20) DEFAULT NULL COMMENT '上级部门ID，一级部门为0',
  `name` varchar(50) DEFAULT NULL COMMENT '部门名称',
  `order_num` int(11) DEFAULT NULL COMMENT '排序',
  `del_flag` tinyint(4) DEFAULT '0' COMMENT '是否删除  -1：已删除  0：正常',
  PRIMARY KEY (`dept_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COMMENT='部门管理';

/*Data for the table `sys_dept` */

insert  into `sys_dept`(`dept_id`,`parent_id`,`name`,`order_num`,`del_flag`) values (1,0,'人人开源集团',0,0),(2,1,'长沙分公司',1,0),(3,1,'上海分公司',2,0),(4,3,'技术部',0,0),(5,3,'销售部',1,0),(6,1,'广州分公司',0,0);

/*Table structure for table `sys_dict` */

DROP TABLE IF EXISTS `sys_dict`;

CREATE TABLE `sys_dict` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL COMMENT '字典名称',
  `type` varchar(100) NOT NULL COMMENT '字典类型',
  `code` varchar(100) NOT NULL COMMENT '字典码',
  `value` varchar(1000) NOT NULL COMMENT '字典值',
  `order_num` int(11) DEFAULT '0' COMMENT '排序',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  `del_flag` tinyint(4) DEFAULT '0' COMMENT '删除标记  -1：已删除  0：正常',
  PRIMARY KEY (`id`),
  UNIQUE KEY `type` (`type`,`code`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COMMENT='数据字典表';

/*Data for the table `sys_dict` */

insert  into `sys_dict`(`id`,`name`,`type`,`code`,`value`,`order_num`,`remark`,`del_flag`) values (1,'性别','sex','0','女',0,NULL,0),(2,'性别','sex','1','男',1,NULL,0),(3,'性别','sex','2','未知',3,NULL,0);

/*Table structure for table `sys_log` */

DROP TABLE IF EXISTS `sys_log`;

CREATE TABLE `sys_log` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) DEFAULT NULL COMMENT '用户名',
  `operation` varchar(50) DEFAULT NULL COMMENT '用户操作',
  `method` varchar(200) DEFAULT NULL COMMENT '请求方法',
  `params` varchar(5000) DEFAULT NULL COMMENT '请求参数',
  `time` bigint(20) NOT NULL COMMENT '执行时长(毫秒)',
  `ip` varchar(64) DEFAULT NULL COMMENT 'IP地址',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COMMENT='系统日志';

/*Data for the table `sys_log` */

insert  into `sys_log`(`id`,`username`,`operation`,`method`,`params`,`time`,`ip`,`create_date`) values (1,'admin','保存用户','io.renren.modules.sys.controller.SysUserController.save()','{\"userId\":2,\"username\":\"test1\",\"password\":\"47313d5fa42b5b791a775a6e0f5479cb60fa2f058bfb0b7a3851f5be0b17af9d\",\"salt\":\"YlFib74TwdO9T1qVHjtN\",\"email\":\"2434017367@qq.com\",\"status\":1,\"roleIdList\":[],\"createTime\":\"Sep 25, 2019 6:03:14 PM\",\"deptId\":2,\"deptName\":\"长沙分公司\"}',531,'115.236.89.42','2019-09-25 18:03:15'),(2,'admin','删除用户','io.renren.modules.sys.controller.SysUserController.delete()','[2]',15,'115.236.89.42','2019-09-25 18:03:39');

/*Table structure for table `sys_menu` */

DROP TABLE IF EXISTS `sys_menu`;

CREATE TABLE `sys_menu` (
  `menu_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `parent_id` bigint(20) DEFAULT NULL COMMENT '父菜单ID，一级菜单为0',
  `name` varchar(50) DEFAULT NULL COMMENT '菜单名称',
  `url` varchar(200) DEFAULT NULL COMMENT '菜单URL',
  `perms` varchar(500) DEFAULT NULL COMMENT '授权(多个用逗号分隔，如：user:list,user:create)',
  `type` int(11) DEFAULT NULL COMMENT '类型   0：目录   1：菜单   2：按钮',
  `icon` varchar(50) DEFAULT NULL COMMENT '菜单图标',
  `order_num` int(11) DEFAULT NULL COMMENT '排序',
  PRIMARY KEY (`menu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COMMENT='菜单管理';

/*Data for the table `sys_menu` */

insert  into `sys_menu`(`menu_id`,`parent_id`,`name`,`url`,`perms`,`type`,`icon`,`order_num`) values (1,0,'系统管理',NULL,NULL,0,'fa fa-cog',0),(2,1,'管理员管理','modules/sys/user.html',NULL,1,'fa fa-user',1),(3,1,'角色管理','modules/sys/role.html',NULL,1,'fa fa-user-secret',2),(4,1,'菜单管理','modules/sys/menu.html',NULL,1,'fa fa-th-list',3),(5,1,'SQL监控','druid/sql.html',NULL,1,'fa fa-bug',4),(6,1,'定时任务','modules/job/schedule.html',NULL,1,'fa fa-tasks',5),(7,6,'查看',NULL,'sys:schedule:list,sys:schedule:info',2,NULL,0),(8,6,'新增',NULL,'sys:schedule:save',2,NULL,0),(9,6,'修改',NULL,'sys:schedule:update',2,NULL,0),(10,6,'删除',NULL,'sys:schedule:delete',2,NULL,0),(11,6,'暂停',NULL,'sys:schedule:pause',2,NULL,0),(12,6,'恢复',NULL,'sys:schedule:resume',2,NULL,0),(13,6,'立即执行',NULL,'sys:schedule:run',2,NULL,0),(14,6,'日志列表',NULL,'sys:schedule:log',2,NULL,0),(15,2,'查看',NULL,'sys:user:list,sys:user:info',2,NULL,0),(16,2,'新增',NULL,'sys:user:save,sys:role:select',2,NULL,0),(17,2,'修改',NULL,'sys:user:update,sys:role:select',2,NULL,0),(18,2,'删除',NULL,'sys:user:delete',2,NULL,0),(19,3,'查看',NULL,'sys:role:list,sys:role:info',2,NULL,0),(20,3,'新增',NULL,'sys:role:save,sys:menu:perms',2,NULL,0),(21,3,'修改',NULL,'sys:role:update,sys:menu:perms',2,NULL,0),(22,3,'删除',NULL,'sys:role:delete',2,NULL,0),(23,4,'查看',NULL,'sys:menu:list,sys:menu:info',2,NULL,0),(24,4,'新增',NULL,'sys:menu:save,sys:menu:select',2,NULL,0),(25,4,'修改',NULL,'sys:menu:update,sys:menu:select',2,NULL,0),(26,4,'删除',NULL,'sys:menu:delete',2,NULL,0),(27,1,'参数管理','modules/sys/config.html','sys:config:list,sys:config:info,sys:config:save,sys:config:update,sys:config:delete',1,'fa fa-sun-o',6),(29,1,'系统日志','modules/sys/log.html','sys:log:list',1,'fa fa-file-text-o',7),(30,1,'文件上传','modules/oss/oss.html','sys:oss:all',1,'fa fa-file-image-o',6),(31,1,'部门管理','modules/sys/dept.html',NULL,1,'fa fa-file-code-o',1),(32,31,'查看',NULL,'sys:dept:list,sys:dept:info',2,NULL,0),(33,31,'新增',NULL,'sys:dept:save,sys:dept:select',2,NULL,0),(34,31,'修改',NULL,'sys:dept:update,sys:dept:select',2,NULL,0),(35,31,'删除',NULL,'sys:dept:delete',2,NULL,0),(36,1,'字典管理','modules/sys/dict.html',NULL,1,'fa fa-bookmark-o',6),(37,36,'查看',NULL,'sys:dict:list,sys:dict:info',2,NULL,6),(38,36,'新增',NULL,'sys:dict:save',2,NULL,6),(39,36,'修改',NULL,'sys:dict:update',2,NULL,6),(40,36,'删除',NULL,'sys:dict:delete',2,NULL,6);

/*Table structure for table `sys_oss` */

DROP TABLE IF EXISTS `sys_oss`;

CREATE TABLE `sys_oss` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `url` varchar(200) DEFAULT NULL COMMENT 'URL地址',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='文件上传';

/*Data for the table `sys_oss` */

/*Table structure for table `sys_role` */

DROP TABLE IF EXISTS `sys_role`;

CREATE TABLE `sys_role` (
  `role_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `role_name` varchar(100) DEFAULT NULL COMMENT '角色名称',
  `remark` varchar(100) DEFAULT NULL COMMENT '备注',
  `dept_id` bigint(20) DEFAULT NULL COMMENT '部门ID',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='角色';

/*Data for the table `sys_role` */

/*Table structure for table `sys_role_dept` */

DROP TABLE IF EXISTS `sys_role_dept`;

CREATE TABLE `sys_role_dept` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `role_id` bigint(20) DEFAULT NULL COMMENT '角色ID',
  `dept_id` bigint(20) DEFAULT NULL COMMENT '部门ID',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='角色与部门对应关系';

/*Data for the table `sys_role_dept` */

/*Table structure for table `sys_role_menu` */

DROP TABLE IF EXISTS `sys_role_menu`;

CREATE TABLE `sys_role_menu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `role_id` bigint(20) DEFAULT NULL COMMENT '角色ID',
  `menu_id` bigint(20) DEFAULT NULL COMMENT '菜单ID',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='角色与菜单对应关系';

/*Data for the table `sys_role_menu` */

/*Table structure for table `sys_user` */

DROP TABLE IF EXISTS `sys_user`;

CREATE TABLE `sys_user` (
  `user_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL COMMENT '用户名',
  `password` varchar(100) DEFAULT NULL COMMENT '密码',
  `salt` varchar(20) DEFAULT NULL COMMENT '盐',
  `email` varchar(100) DEFAULT NULL COMMENT '邮箱',
  `mobile` varchar(100) DEFAULT NULL COMMENT '手机号',
  `status` tinyint(4) DEFAULT NULL COMMENT '状态  0：禁用   1：正常',
  `dept_id` bigint(20) DEFAULT NULL COMMENT '部门ID',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COMMENT='系统用户';

/*Data for the table `sys_user` */

insert  into `sys_user`(`user_id`,`username`,`password`,`salt`,`email`,`mobile`,`status`,`dept_id`,`create_time`) values (1,'admin','e1153123d7d180ceeb820d577ff119876678732a68eef4e6ffc0b1f06a01f91b','YzcmCZNvbXocrsz9dm8e','root@renren.io','13612345678',1,1,'2016-11-11 11:11:11');

/*Table structure for table `sys_user_role` */

DROP TABLE IF EXISTS `sys_user_role`;

CREATE TABLE `sys_user_role` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) DEFAULT NULL COMMENT '用户ID',
  `role_id` bigint(20) DEFAULT NULL COMMENT '角色ID',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='用户与角色对应关系';

/*Data for the table `sys_user_role` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
