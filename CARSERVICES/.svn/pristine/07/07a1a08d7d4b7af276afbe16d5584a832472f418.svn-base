/*
SQLyog Ultimate v11.11 (32 bit)
MySQL - 5.5.45 : Database - carzdb
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`carzdb` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `carzdb`;

/*Table structure for table `admin_table` */

DROP TABLE IF EXISTS `admin_table`;

CREATE TABLE `admin_table` (
  `adminId` varchar(6) DEFAULT NULL,
  `adminPassword` varchar(8) DEFAULT NULL,
  `AdminName` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `admin_table` */

insert  into `admin_table`(`adminId`,`adminPassword`,`AdminName`) values ('admin1','password','vanaja'),('admin2','password','Narsingh');

/*Table structure for table `cardetails` */

DROP TABLE IF EXISTS `cardetails`;

CREATE TABLE `cardetails` (
  `Car_RegdNo` varchar(10) DEFAULT NULL,
  `Car_KMs` mediumtext,
  `Car_Make` mediumtext,
  `Car_Model` mediumtext,
  `Car_MftYear` mediumtext,
  `Car_DateofReg` mediumtext,
  `Car_EngineNo` mediumtext,
  `Car_ChassisNo` mediumtext,
  `Car_TypeofFuel` varchar(55) DEFAULT NULL,
  `Car_Color` varchar(55) DEFAULT NULL,
  `ownerId` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `cardetails` */

insert  into `cardetails`(`Car_RegdNo`,`Car_KMs`,`Car_Make`,`Car_Model`,`Car_MftYear`,`Car_DateofReg`,`Car_EngineNo`,`Car_ChassisNo`,`Car_TypeofFuel`,`Car_Color`,`ownerId`) values ('TS07AH6366','12000','2010','2010','2013','2012','12345','25869','petrol','BLACK','20VA6'),('TS09GV7868','12000','2014','2014','2015','2015','9700423723','25869','petrol','BLACK','40NH6'),('TS07BF4200','12','12222323','555','2009','2012','5687','25869','water','BLUE','24VA6'),('TS09GV7865','12000','1234','2010','2009','2012','45','25869','petrol','BLACK','24VA6'),('TS09GV7865','12000','1234','2010','2009','2012','45','25869','petrol','BLACK','60VA6'),('TS09GV7865','12000','1234','2010','2009','2012','45','25869','petrol','BLACK','24VA6');

/*Table structure for table `carowner` */

DROP TABLE IF EXISTS `carowner`;

CREATE TABLE `carowner` (
  `OwnerID` varchar(55) DEFAULT NULL,
  `Owner_Name` varchar(55) DEFAULT NULL,
  `Owner_Occupation` varchar(55) DEFAULT NULL,
  `Owner_Address` varchar(55) DEFAULT NULL,
  `Owner_Location` varchar(55) DEFAULT NULL,
  `Owner_City` varchar(55) DEFAULT NULL,
  `Owner_State` varchar(55) DEFAULT NULL,
  `Owner_Pincode` mediumtext,
  `Owner_Landnumber` mediumtext,
  `Owner_Mobilenumber` mediumtext,
  `Owner_Emailid` varchar(55) DEFAULT NULL,
  `owner_carRegNo` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `carowner` */

insert  into `carowner`(`OwnerID`,`Owner_Name`,`Owner_Occupation`,`Owner_Address`,`Owner_Location`,`Owner_City`,`Owner_State`,`Owner_Pincode`,`Owner_Landnumber`,`Owner_Mobilenumber`,`Owner_Emailid`,`owner_carRegNo`) values ('20VA6','VANAJA','SE','6-31/1','LALDARWAZA','HYDERABAD','TELANGANA','500058','4065913555','8341458569','VANAJA9@GMAIL.COM','TS07AH6366'),('40NH6','NARSINGH','SE','6-31/1','BALANAGAR','HYDERABAD','TELANGANA','500011','4065913555','9700423723','NARSINGHRAOM@GMAIL.COM','TS09GV7868'),('24VA6','VANAJA','PROGRAMMER','6-31/1','LALDARWAZA','HYDERABAD','TELANGANA','500058','4024380159','9912747508','VANAJA@GMAIL.COM','TS07BF4200'),('24VA6','VANAJA','PROGRAMMER','6-31/1','BALANAGAR','HYDERABAD','TELANGANA','500011','4065913555','8341458569','VANAJA@GMAIL.COM','TS09GV7865'),('60VA6','VANAJA','PROGRAMMER','6-31/1','BALANAGAR','HYDERABAD','TELANGANA','500011','4065913555','8341458569','VANAJA@GMAIL.COM','TS09GV7865'),('24VA6','VANAJA','PROGRAMMER','6-31/1','BALANAGAR','HYDERABAD','TELANGANA','500011','4065913555','8341458569','VANAJA@GMAIL.COM','TS09GV7865');

/*Table structure for table `carpolicy` */

DROP TABLE IF EXISTS `carpolicy`;

CREATE TABLE `carpolicy` (
  `Policy_InsuranceCompName` varchar(55) DEFAULT NULL,
  `Policy_Number` varchar(10) NOT NULL,
  `Policy_CoverNoteNo` mediumtext,
  `Policy_CarColor` varchar(55) DEFAULT NULL,
  `Policy_PeriodofIns_Form` mediumtext,
  `Policy_PeriodofIns_To` mediumtext,
  `Policy_PeriodofPollution_Form` mediumtext,
  `Policy_Periodofpollution_To` mediumtext,
  `ownerId` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`Policy_Number`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `carpolicy` */

insert  into `carpolicy`(`Policy_InsuranceCompName`,`Policy_Number`,`Policy_CoverNoteNo`,`Policy_CarColor`,`Policy_PeriodofIns_Form`,`Policy_PeriodofIns_To`,`Policy_PeriodofPollution_Form`,`Policy_Periodofpollution_To`,`ownerId`) values ('DHATRIINFO','123456789','2015','BLACK','2014','2015','2014','2015','24VA6'),('ICICI','54564545','741','BLUE','2014','2015','2014','2015','24VA6'),('NIC','9700423723','58789',NULL,'2014','2015','2014','2015','20VA6');

/*Table structure for table `employee_table` */

DROP TABLE IF EXISTS `employee_table`;

CREATE TABLE `employee_table` (
  `EmployeeId` varchar(10) NOT NULL DEFAULT '',
  `EmployeeName` varchar(20) DEFAULT NULL,
  `Designation` varchar(20) DEFAULT NULL,
  `MoblieNo` varchar(15) DEFAULT NULL,
  `EmailId` varchar(20) DEFAULT NULL,
  `Address` varchar(50) DEFAULT NULL,
  `JoiningDate` varchar(15) DEFAULT NULL,
  `PreviousExperience` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`EmployeeId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `employee_table` */

insert  into `employee_table`(`EmployeeId`,`EmployeeName`,`Designation`,`MoblieNo`,`EmailId`,`Address`,`JoiningDate`,`PreviousExperience`) values ('ds-111','narsingh',NULL,'7896587452','narsingh@gmail.com',NULL,'',''),('ds-1204','vanaja','Builling Department','8341458569','vanaja@gmail.com','oldcity','',''),('ds-1205','van','Builling Department','9848253121','van2@gmail.com','oldcity','',''),('rfhygdc','fdfgdfg','Account Manager','9700423723','fsdsds@dg.vb','sdsdsd','','');

/*Table structure for table `services` */

DROP TABLE IF EXISTS `services`;

CREATE TABLE `services` (
  `OwnerID` varchar(15) DEFAULT NULL,
  `Car_RegdNo` varchar(15) DEFAULT NULL,
  `service1` varchar(50) DEFAULT NULL,
  `service2` varchar(50) DEFAULT NULL,
  `service3` varchar(50) DEFAULT NULL,
  `service4` varchar(50) DEFAULT NULL,
  `service5` varchar(50) DEFAULT NULL,
  `service6` varchar(50) DEFAULT NULL,
  `service7` varchar(50) DEFAULT NULL,
  `service8` varchar(50) DEFAULT NULL,
  `service9` varchar(50) DEFAULT NULL,
  `service10` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `services` */

insert  into `services`(`OwnerID`,`Car_RegdNo`,`service1`,`service2`,`service3`,`service4`,`service5`,`service6`,`service7`,`service8`,`service9`,`service10`) values ('40NH6','TS09GV7868','waterwash','engineoilchange','tyresandwheelsalignment ','batteries',' ',' ',' ',' ',' ',' '),('20VA6','TS07AH6366','waterwash','engineoilchange','tyresandwheelsalignment ',' ',' ',' ',' ',' ',' ',' ');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
