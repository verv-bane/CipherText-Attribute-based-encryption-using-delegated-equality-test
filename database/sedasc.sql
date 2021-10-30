/*
SQLyog Community Edition- MySQL GUI v7.15 
MySQL - 5.5.29 : Database - cpabe_delegatedequalitytest
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

CREATE DATABASE /*!32312 IF NOT EXISTS*/`cpabe_delegatedequalitytest` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `cpabe_delegatedequalitytest`;

/*Table structure for table `ap` */

DROP TABLE IF EXISTS `ap`;

CREATE TABLE `ap` (
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `dob` varchar(100) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `mobile` varchar(100) DEFAULT NULL,
  `doctor` varchar(100) DEFAULT NULL,
  `category` varchar(100) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `ap` */

insert  into `ap`(`username`,`password`,`email`,`dob`,`address`,`mobile`,`doctor`,`category`,`status`) values ('shiva','123','mail.1000projects@gmail.com','1994-05-04','hy76d','9874561230','-1812720686','-60265526','Activated');

/*Table structure for table `cloud` */

DROP TABLE IF EXISTS `cloud`;

CREATE TABLE `cloud` (
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `cloud` */

insert  into `cloud`(`username`,`password`) values ('cloud','cloud');

/*Table structure for table `mr` */

DROP TABLE IF EXISTS `mr`;

CREATE TABLE `mr` (
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `dob` varchar(100) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `mobile` varchar(100) DEFAULT NULL,
  `doctor` varchar(100) DEFAULT NULL,
  `category` varchar(100) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `mr` */

insert  into `mr`(`username`,`password`,`email`,`dob`,`address`,`mobile`,`doctor`,`category`,`status`) values ('nikith','123','nikhith.1000projects@gmail.com','2018-08-09','Hyderabad','9032101994','1917785271','1181554293','Activated');

/*Table structure for table `request` */

DROP TABLE IF EXISTS `request`;

CREATE TABLE `request` (
  `user` varchar(100) DEFAULT NULL,
  `filename` varchar(100) DEFAULT NULL,
  `owneremail` varchar(100) DEFAULT NULL,
  `height` varchar(100) DEFAULT NULL,
  `symptoms` varchar(100) DEFAULT NULL,
  `disease` varchar(100) DEFAULT NULL,
  `prate` varchar(100) DEFAULT NULL,
  `location` varchar(100) DEFAULT NULL,
  `bloodpressure` varchar(100) DEFAULT NULL,
  `weight` varchar(100) DEFAULT NULL,
  `mobile` varchar(100) DEFAULT NULL,
  `doctor` varchar(100) DEFAULT NULL,
  `category` varchar(100) DEFAULT NULL,
  `data` longtext,
  `skey` varchar(100) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `request` */

insert  into `request`(`user`,`filename`,`owneremail`,`height`,`symptoms`,`disease`,`prate`,`location`,`bloodpressure`,`weight`,`mobile`,`doctor`,`category`,`data`,`skey`,`status`,`id`) values ('nikhith.1000projects@gmail.com','shiva.txt','nikilp306@gmail.com','120','Headache','Fever','120','Hyderabad','110','58','9988774455','Medical Researcher','Medical Information Scientist','kN/oNertOPkXDRbFQugb9jkexw3hEOKhHJ9iZX37BvHqpl8t2uS85jU9uh8JyDNS8uxbTBvZmeXi\r\nTjGt6Jbu+Hw+KwLpimmcX+D3YE251HaG1qyCWl4BXAtZCzpBk8VC','xCjH8kZtUjR6XEfR8Ky7TA==','Key Sent',1),('nikhith.1000projects@gmail.com','shiva.txt','nikilp306@gmail.com','120','Headache','Fever','120','Hyderabad','110','58','9988774455','Medical Researcher','Medical Information Scientist','kN/oNertOPkXDRbFQugb9jkexw3hEOKhHJ9iZX37BvHqpl8t2uS85jU9uh8JyDNS8uxbTBvZmeXi\r\nTjGt6Jbu+Hw+KwLpimmcX+D3YE251HaG1qyCWl4BXAtZCzpBk8VC','xCjH8kZtUjR6XEfR8Ky7TA==','Key Sent',2);

/*Table structure for table `request1` */

DROP TABLE IF EXISTS `request1`;

CREATE TABLE `request1` (
  `user` varchar(100) DEFAULT NULL,
  `filename` varchar(100) DEFAULT NULL,
  `owneremail` varchar(100) DEFAULT NULL,
  `height` varchar(100) DEFAULT NULL,
  `symptoms` varchar(100) DEFAULT NULL,
  `disease` varchar(100) DEFAULT NULL,
  `prate` varchar(100) DEFAULT NULL,
  `location` varchar(100) DEFAULT NULL,
  `bloodpressure` varchar(100) DEFAULT NULL,
  `weight` varchar(100) DEFAULT NULL,
  `mobile` varchar(100) DEFAULT NULL,
  `doctor` varchar(100) DEFAULT NULL,
  `category` varchar(100) DEFAULT NULL,
  `data` longtext,
  `skey` varchar(100) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `request1` */

insert  into `request1`(`user`,`filename`,`owneremail`,`height`,`symptoms`,`disease`,`prate`,`location`,`bloodpressure`,`weight`,`mobile`,`doctor`,`category`,`data`,`skey`,`status`,`id`) values ('mail.1000projects@gmail.com','ramu','nikilp306@gmail.com','120','Headache','Fever','120','Hyderabad','110','58','9988774455','Medical Researcher','Medical Information Scientist','kN/oNertOPkXDRbFQugb9jkexw3hEOKhHJ9iZX37BvHqpl8t2uS85jU9uh8JyDNS8uxbTBvZmeXi\r\nTjGt6Jbu+Hw+KwLpimmcX+D3YE251HaG1qyCWl4BXAtZCzpBk8VC','xCjH8kZtUjR6XEfR8Ky7TA==','Key Sent',2);

/*Table structure for table `upload` */

DROP TABLE IF EXISTS `upload`;

CREATE TABLE `upload` (
  `username` varchar(100) DEFAULT NULL,
  `dt` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `height` varchar(100) DEFAULT NULL,
  `symptoms` varchar(100) DEFAULT NULL,
  `disease` varchar(100) DEFAULT NULL,
  `skey` varchar(100) DEFAULT NULL,
  `prate` varchar(100) DEFAULT NULL,
  `location` varchar(100) DEFAULT NULL,
  `bloodpressure` varchar(100) DEFAULT NULL,
  `weight` varchar(100) DEFAULT NULL,
  `mobile` varchar(100) DEFAULT NULL,
  `doctor` varchar(100) DEFAULT NULL,
  `category` varchar(100) DEFAULT NULL,
  `cipher` longtext,
  `doctorhsh` varchar(100) DEFAULT NULL,
  `categoryhsh` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `upload` */

insert  into `upload`(`username`,`dt`,`email`,`height`,`symptoms`,`disease`,`skey`,`prate`,`location`,`bloodpressure`,`weight`,`mobile`,`doctor`,`category`,`cipher`,`doctorhsh`,`categoryhsh`) values ('shiva.txt','2018-08-09','nikilp306@gmail.com','120','Headache','Fever','xCjH8kZtUjR6XEfR8Ky7TA==','120','Hyderabad','110','58','9988774455','Medical Researcher','Medical Information Scientist','kN/oNertOPkXDRbFQugb9jkexw3hEOKhHJ9iZX37BvHqpl8t2uS85jU9uh8JyDNS8uxbTBvZmeXi\r\nTjGt6Jbu+Hw+KwLpimmcX+D3YE251HaG1qyCWl4BXAtZCzpBk8VC','1917785271','1181554293'),('ramu','2018-08-10','nikilp306@gmail.com','120','swetting','Fever','zGjNO42rPTYe18Z7HHvshg==','120','Hyderabad','110','58','9032101995','Attending Physician','Clinical Instructor','ZdRNHcQLb2sa99c2Ek0yUcYkGco2ggLdPD2lZ3wuj//1ujYpO4IH8fn4dPoWtvkdMUnld4zpLnm5\r\nvs4cTJ9oeEJiIlB1vPy0A2K40PzLVKEXEDOWLXRqFLTwBZsIQVcR','-1812720686','-60265526');

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `dob` varchar(100) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `mobile` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `user` */

insert  into `user`(`username`,`password`,`email`,`dob`,`address`,`mobile`) values ('nikith','123','nikilp306@gmail.com','2018-08-06','Hyderabad','9988774454');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
