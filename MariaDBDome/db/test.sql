-- --------------------------------------------------------
-- 主机:                           127.0.0.1
-- 服务器版本:                        10.1.20-MariaDB - mariadb.org binary distribution
-- 服务器操作系统:                      Win64
-- HeidiSQL 版本:                  9.4.0.5125
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- 导出 test 的数据库结构
DROP DATABASE IF EXISTS `test`;
CREATE DATABASE IF NOT EXISTS `test` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `test`;

-- 导出  视图 test.mystudent 结构
DROP VIEW IF EXISTS `mystudent`;
-- 创建临时表以解决视图依赖性错误
CREATE TABLE `mystudent` (
	`studentId` INT(11) NOT NULL,
	`stuName` VARCHAR(50) NOT NULL COMMENT '学生的姓名' COLLATE 'utf8_general_ci',
	`stuAge` INT(11) NOT NULL COMMENT '学生的年龄',
	`stuSex` VARCHAR(50) NOT NULL COMMENT '学生的性别' COLLATE 'utf8_general_ci',
	`stuAddress` VARCHAR(100) NOT NULL COMMENT '学生的住址' COLLATE 'utf8_general_ci'
) ENGINE=MyISAM;

-- 导出  表 test.studentinfo 结构
DROP TABLE IF EXISTS `studentinfo`;
CREATE TABLE IF NOT EXISTS `studentinfo` (
  `studentId` int(11) NOT NULL AUTO_INCREMENT,
  `stuName` varchar(50) NOT NULL COMMENT '学生的姓名',
  `stuAge` int(11) NOT NULL DEFAULT '18' COMMENT '学生的年龄',
  `stuSex` varchar(50) NOT NULL DEFAULT '男' COMMENT '学生的性别',
  `stuAddress` varchar(100) NOT NULL DEFAULT '重庆市' COMMENT '学生的住址',
  PRIMARY KEY (`studentId`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='学生信息表';

-- 数据导出被取消选择。
-- 导出  表 test.userinfo 结构
DROP TABLE IF EXISTS `userinfo`;
CREATE TABLE IF NOT EXISTS `userinfo` (
  `userId` int(11) NOT NULL AUTO_INCREMENT,
  `userName` varchar(50) NOT NULL DEFAULT '0',
  `userAge` int(11) NOT NULL DEFAULT '18',
  `userSex` varchar(6) NOT NULL DEFAULT '男',
  PRIMARY KEY (`userId`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='用户表';

-- 数据导出被取消选择。
-- 导出  视图 test.mystudent 结构
DROP VIEW IF EXISTS `mystudent`;
-- 移除临时表并创建最终视图结构
DROP TABLE IF EXISTS `mystudent`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` VIEW `mystudent` AS SELECT studentId,stuName,stuAge,stuSex,stuAddress
from studentInfo
where
	studentId=1 ;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
