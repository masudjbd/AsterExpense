/*
SQLyog Enterprise - MySQL GUI v8.12 
MySQL - 5.5.27 : Database - aster
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

CREATE DATABASE /*!32312 IF NOT EXISTS*/`aster` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `aster`;

/*Table structure for table `expense` */

DROP TABLE IF EXISTS `expense`;

CREATE TABLE `expense` (
  `expenseId` int(11) NOT NULL AUTO_INCREMENT,
  `cost` double NOT NULL,
  `dateposted` date DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `member_memberId` int(11) DEFAULT NULL,
  `for_anwar` double NOT NULL,
  `for_masud` double NOT NULL,
  `for_ruzdi` double NOT NULL,
  PRIMARY KEY (`expenseId`),
  KEY `FK_pb3tv4ry8gpwgjwyidovemelt` (`member_memberId`),
  CONSTRAINT `FK_pb3tv4ry8gpwgjwyidovemelt` FOREIGN KEY (`member_memberId`) REFERENCES `member` (`memberId`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

/*Data for the table `expense` */

insert  into `expense`(`expenseId`,`cost`,`dateposted`,`description`,`name`,`member_memberId`,`for_anwar`,`for_masud`,`for_ruzdi`) values (1,33,'2015-10-07','Onion','Bharat Bazar',1,0,0,0),(2,22.4,'2015-10-07','Onion','Bharat Bazar',1,0,0,0),(3,22.4,'2015-10-07','Onion','Bharat Bazar',1,0,0,0),(4,2.5,'2015-10-07','Description','Indian Cash n Curry',3,1.5,0,0);

/*Table structure for table `member` */

DROP TABLE IF EXISTS `member`;

CREATE TABLE `member` (
  `memberId` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) DEFAULT NULL,
  `enabled` bit(1) NOT NULL,
  `mobile` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`memberId`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `member` */

insert  into `member`(`memberId`,`email`,`enabled`,`mobile`,`name`,`password`,`username`) values (1,'masud.java@gmail.com','','6414511367','Masud','$2a$10$CtSxnoFhXPsMFeJOX8/CF.Owid/z3d43GpJQchNQ6pu/HfG3BIdZu','masud'),(2,'ruzdibd@gmail.com','','6414517995','Ruzdi','$2a$10$CtSxnoFhXPsMFeJOX8/CF.Owid/z3d43GpJQchNQ6pu/HfG3BIdZu','ruzdi'),(3,'anwar.hoque@gmail.com','','3201454545','Anwar','$2a$10$CtSxnoFhXPsMFeJOX8/CF.Owid/z3d43GpJQchNQ6pu/HfG3BIdZu','anwar');

/*Table structure for table `member_role` */

DROP TABLE IF EXISTS `member_role`;

CREATE TABLE `member_role` (
  `Member_memberId` int(11) NOT NULL,
  `roles_roleId` int(11) NOT NULL,
  KEY `FK_nowddlv0kho9ue166oois703w` (`roles_roleId`),
  KEY `FK_od0py4sx32nlkans6t8vrdxek` (`Member_memberId`),
  CONSTRAINT `FK_od0py4sx32nlkans6t8vrdxek` FOREIGN KEY (`Member_memberId`) REFERENCES `member` (`memberId`),
  CONSTRAINT `FK_nowddlv0kho9ue166oois703w` FOREIGN KEY (`roles_roleId`) REFERENCES `role` (`roleId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `member_role` */

insert  into `member_role`(`Member_memberId`,`roles_roleId`) values (1,1),(2,1),(3,1);

/*Table structure for table `role` */

DROP TABLE IF EXISTS `role`;

CREATE TABLE `role` (
  `roleId` int(11) NOT NULL AUTO_INCREMENT,
  `roleLabel` varchar(255) DEFAULT NULL,
  `roleName` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`roleId`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `role` */

insert  into `role`(`roleId`,`roleLabel`,`roleName`) values (1,'Member','ROLE_MEMBER'),(2,'Admin','ROLE_ADMIN');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
