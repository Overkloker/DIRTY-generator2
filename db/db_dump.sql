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
  `Position` varchar(70) DEFAULT NULL,
  `Who_name` varchar(50) DEFAULT NULL,
  `Who_Position` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

/*Data for the table `fields_table` */

insert  into `fields_table`(`Id`,`Fname`,`Sname`,`Tname`,`Address`,`Date_of_create_document`,`Position`,`Who_name`,`Who_Position`) values (1,'Ткачук','Богдан','Вікторович','м. Хмельницький','2015-11-17','студент юридичного факультету','Пастор Василь Миколайович','Директор ХНУ'),(2,'Войтков','Юрій','Володимирович','м. Київ','2015-07-20','студент Хмельницького Національного Університету ','Кравчук Степан Ігорович','Президент всесвіту'),(3,'Шинкарук','Павло','Віталійович','м. Меджибіж','2015-01-01','студент соціологічного факультету','Шевчук Олег Станіславович','Директор ХНУ');

/*Table structure for table `template_vars` */

DROP TABLE IF EXISTS `template_vars`;

CREATE TABLE `template_vars` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_template` int(11) DEFAULT NULL,
  `name` varchar(30) DEFAULT NULL,
  `field` varchar(30) DEFAULT NULL,
  `vidm` varchar(30) DEFAULT NULL,
  `is_short` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id_template` (`id_template`),
  CONSTRAINT `template_vars_ibfk_1` FOREIGN KEY (`id_template`) REFERENCES `templates` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;

/*Data for the table `template_vars` */

insert  into `template_vars`(`id`,`id_template`,`name`,`field`,`vidm`,`is_short`) values (1,1,'Who_Position','Who_Position','давальний',NULL),(2,1,'Who_Name','Who_name','давальний',1),(3,1,'Fname','Fname','знахідний',NULL),(4,1,'Sname','Sname','знахідний',NULL),(5,1,'Tname','Tname','знахідний',NULL),(6,1,'date','Date_of_create_document',NULL,NULL),(7,2,'address','Address',NULL,NULL),(8,2,'date','Date_of_create_document',NULL,NULL),(9,2,'fname','Fname','родовий',NULL),(10,2,'sname','Sname','родовий',NULL),(11,2,'tname','Tname','родовий',NULL),(12,2,'who','Who_name','родовий',1),(13,2,'who_position','Who_Position','називний',NULL),(14,3,'who_position','Who_Position','давальний',NULL),(15,3,'who_name','Who_name','давальний',1),(16,3,'fname','Fname','родовий',NULL),(17,3,'sname','Sname','родовий',NULL),(18,3,'tname','Tname','родовий',NULL),(19,3,'position','Position',NULL,NULL),(20,3,'sname_s','Sname',NULL,1),(21,3,'tname_s','Tname',NULL,1),(22,3,'fname_n','Fname','називний',NULL),(23,3,'date','Date_of_create_document',NULL,NULL),(24,3,'who_position_n','Who_Position','називний',NULL);

/*Table structure for table `templates` */

DROP TABLE IF EXISTS `templates`;

CREATE TABLE `templates` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `title` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

/*Data for the table `templates` */

insert  into `templates`(`id`,`name`,`title`) values (1,'note','Заява'),(2,'order','Наказ'),(3,'receipt','Розписка');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
