/*
SQLyog Ultimate v9.50 
MySQL - 5.5.40-0+wheezy1 : Database - db_people_fields
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`db_people_fields` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `db_people_fields`;

/*Table structure for table `fields_table` */

DROP TABLE IF EXISTS `fields_table`;

CREATE TABLE `fields_table` (
  `Id` int(111) NOT NULL AUTO_INCREMENT,
  `Fname` varchar(20) DEFAULT NULL,
  `Sname` varchar(30) DEFAULT NULL,
  `Tname` varchar(20) DEFAULT NULL,
  `Address` varchar(30) DEFAULT NULL,
  `Date_of_create_document` date DEFAULT NULL,
  `Position` varchar(30) DEFAULT NULL,
  `Who_name` varchar(50) DEFAULT NULL,
  `Who_Position` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `fields_table` */

insert  into `fields_table`(`Id`,`Fname`,`Sname`,`Tname`,`Address`,`Date_of_create_document`,`Position`,`Who_name`,`Who_Position`) values (1,'Ткачук','Богдан','Вікторович',NULL,'2015-11-17',NULL,'Пастор Василь Миколайович','Директор ХНУ'),(2,'Войтков','Юрій','Володимирович',NULL,'2015-07-20',NULL,'Кравчук Степан Ігорович','Президент всесвіту');

/*Table structure for table `template_vars` */

DROP TABLE IF EXISTS `template_vars`;

CREATE TABLE `template_vars` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_template` int(11) DEFAULT NULL,
  `name` varchar(30) DEFAULT NULL,
  `field` varchar(30) DEFAULT NULL,
  `vidm` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id_template` (`id_template`),
  CONSTRAINT `template_vars_ibfk_1` FOREIGN KEY (`id_template`) REFERENCES `templates` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

/*Data for the table `template_vars` */

insert  into `template_vars`(`id`,`id_template`,`name`,`field`,`vidm`) values (1,1,'Who_Position','Who_Position','давальний'),(2,1,'Who_Name','Who_name','давальний'),(3,1,'Fname','Fname','знахідний'),(4,1,'Sname','Sname','знахідний'),(5,1,'Tname','Tname','знахідний'),(6,1,'date','Date_of_create_document',NULL);

/*Table structure for table `templates` */

DROP TABLE IF EXISTS `templates`;

CREATE TABLE `templates` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `title` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

/*Data for the table `templates` */

insert  into `templates`(`id`,`name`,`title`) values (1,'note','Заява');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
