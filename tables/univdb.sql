-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Mar 21, 2015 at 05:18 AM
-- Server version: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `univdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `application`
--

CREATE TABLE IF NOT EXISTS `application` (
  `APPLICATIONID` char(12) NOT NULL DEFAULT '',
  `GRE` int(11) DEFAULT NULL,
  `TOEFL` int(11) DEFAULT NULL,
  `GPA` float(3,2) DEFAULT NULL,
  `INTREST_PROG` varchar(15) DEFAULT NULL,
  `DEGREETYPE` varchar(15) DEFAULT NULL,
  `WORKEXP` float(2,1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `application`
--

INSERT INTO `application` (`APPLICATIONID`, `GRE`, `TOEFL`, `GPA`, `INTREST_PROG`, `DEGREETYPE`, `WORKEXP`) VALUES
('1230002', 300, 100, 3.00, 'ELEC ENGG', 'BACHELORS', 2.2),
('1230003', 300, 95, 3.00, 'DSBA', 'MASTERS', 0.5),
('1230011', 302, 99, 3.40, 'COMP SCIENCE', 'MASTERS', 0.0),
('1230023', 299, 102, 3.92, 'BIO TECH', 'BACHELORS', 2.2),
('1230054', 305, 100, 3.23, 'MECH ENGG', 'MASTERS', 1.4),
('1230065', 327, 93, 3.77, 'CONST MGMT', 'MASTERS', 2.3),
('1230071', 320, 111, 3.00, 'DSBA', 'MASTERS', 1.0),
('1230076', 310, 105, 3.11, 'ELEC ENGG', 'MASTERS', 4.0),
('1230095', 307, 109, 3.81, 'MIS', 'MASTERS', 3.2),
('1230099', 313, 108, 3.12, 'MBA', 'MASTERS', 3.0);

-- --------------------------------------------------------

--
-- Table structure for table `applyhousing`
--

CREATE TABLE IF NOT EXISTS `applyhousing` (
  `USERNAME` char(10) NOT NULL DEFAULT '',
  `H_ID` char(10) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `applyhousing`
--

INSERT INTO `applyhousing` (`USERNAME`, `H_ID`) VALUES
('SUSHMA!E', 'AS643'),
('ANISHSM', 'CD231'),
('ARUNB12', 'CD231'),
('ANIK@23', 'CO191'),
('JAMES123', 'RB111'),
('KRUTHI11', 'SY155'),
('UDEEP9', 'UN100'),
('DEEPTHI3', 'UT114'),
('MOUNICA20', 'UT114'),
('VANI21', 'UT114');

-- --------------------------------------------------------

--
-- Table structure for table `applyjobs`
--

CREATE TABLE IF NOT EXISTS `applyjobs` (
  `USERNAME` char(10) NOT NULL DEFAULT '',
  `J_ID` char(10) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `applyjobs`
--

INSERT INTO `applyjobs` (`USERNAME`, `J_ID`) VALUES
('JAMES123', 'A1001'),
('KRUTHI11', 'A1001'),
('SUSHMA!E', 'A1001'),
('ANISHSM', 'A1002'),
('JAMES123', 'A1002'),
('KRUTHI11', 'A1003'),
('DEEPTHI3', 'A1004'),
('UDEEP9', 'A1004'),
('UDEEP9', 'A1005'),
('ARUNB12', 'A1007'),
('VANI21', 'A1009');

-- --------------------------------------------------------

--
-- Table structure for table `applyscholarship`
--

CREATE TABLE IF NOT EXISTS `applyscholarship` (
  `USERNAME` char(10) NOT NULL DEFAULT '',
  `S_ID` char(10) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `applyscholarship`
--

INSERT INTO `applyscholarship` (`USERNAME`, `S_ID`) VALUES
('ANISHSM', 'S1'),
('UDEEP9', 'S10'),
('JAMES123', 'S2'),
('VANI21', 'S2'),
('ANIK@23', 'S3'),
('ARUNB12', 'S4'),
('DEEPTHI3', 'S5'),
('KRUTHI11', 'S6'),
('MOUNICA20', 'S6'),
('SUSHMA!E', 'S7');

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE IF NOT EXISTS `courses` (
  `COURSEID` char(10) NOT NULL DEFAULT '',
  `CREDITHOURS` int(11) DEFAULT NULL,
  `COURSENAME` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`COURSEID`, `CREDITHOURS`, `COURSENAME`) VALUES
('BT 6111', 3, 'MICRO BIOLOGY'),
('CM 3111', 4, 'STRUC ENGG'),
('CS 5142', 3, 'COMP NETWORKS'),
('DSBA 6019', 3, 'BIG DATA'),
('EE 5710', 3, 'EMB SYS'),
('EM 5921', 3, 'TECH FORCASTING'),
('IT 4121', 4, 'BASIC PROG'),
('MBA 5001', 3, 'FINANCE'),
('MH 5732', 3, 'THERMO DYNAMICS'),
('MIS 6155', 3, 'PISP');

-- --------------------------------------------------------

--
-- Table structure for table `decision`
--

CREATE TABLE IF NOT EXISTS `decision` (
  `APPLICATIONID` char(12) NOT NULL DEFAULT '',
  `ADMIN_ID` char(10) NOT NULL DEFAULT '',
  `APPSTATUS` varchar(15) DEFAULT NULL,
  `DECISION_DATE` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `decision`
--

INSERT INTO `decision` (`APPLICATIONID`, `ADMIN_ID`, `APPSTATUS`, `DECISION_DATE`) VALUES
('1230002', 'TWELDON', 'ACCEPTED', '2013-05-05'),
('1230003', 'TWELDON', 'ACCEPTED', '2010-03-03'),
('1230011', 'ASIS', 'ACCEPTED', '2013-03-02'),
('1230023', 'TOM1', 'ACCEPTED', '2014-03-03'),
('1230054', 'DARSHAN', 'ACCEPTED', '2011-08-01'),
('1230065', 'BHARAT', 'ACCEPTED', '2014-08-01'),
('1230071', 'ZORRO', 'REJECTED', '2013-08-08'),
('1230076', 'JAMES123', 'ACCEPTED', '2012-08-01'),
('1230095', 'LINDA1', 'UNDER REVIEW', '2014-12-03'),
('1230099', 'RYAN', 'ACCEPTED', '2014-03-03');

-- --------------------------------------------------------

--
-- Table structure for table `faculty`
--

CREATE TABLE IF NOT EXISTS `faculty` (
  `FACULTYID` char(8) NOT NULL DEFAULT '',
  `NAME` char(40) DEFAULT NULL,
  `EMAIL` varchar(25) DEFAULT NULL,
  `OFFICEDETAILS` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `faculty`
--

INSERT INTO `faculty` (`FACULTYID`, `NAME`, `EMAIL`, `OFFICEDETAILS`) VALUES
('10011', 'JIM CONRAD', 'JCONRAD@UNCC.EDU', 'EPIC 320'),
('10019', 'AIDONG LU', 'AIDONG@UNCC.EDU', 'EPIC 105'),
('10022', 'SHAOTING ZHANG', 'SZHANG1@UNCC.EDU', 'WRWD 120'),
('10023', 'RON SASS', 'RSASS10@UNCC.EDU', 'BURS 320'),
('10031', 'SRINIVAS AKELLA', 'SAKELLA@UNCC.EDU', 'FRET 445'),
('10045', 'ASIS NASIPURI', 'ANASIPURI@UNCC.EDU', 'FRET 111'),
('10052', 'HARINI RAMAPRASAD', 'HRAMA@UNCC.EDU', 'WRWD 210'),
('10066', 'JING YANG', 'JYANG@UNCC.EDU', 'BURS 132'),
('10078', 'MARY SHROFF', 'MSHROFF@UNCC.EDU', 'EPIC 412'),
('10096', 'ASHLEY RAMSUHAS', 'ARAMSUHAS@UNCC.EDU', 'FRET 115');

-- --------------------------------------------------------

--
-- Table structure for table `fills`
--

CREATE TABLE IF NOT EXISTS `fills` (
  `APPLICATIONID` char(12) NOT NULL DEFAULT '',
  `APPLY_DATE` date NOT NULL,
  `STU_NAME` char(10) NOT NULL DEFAULT '',
  `APPSTATUS` char(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fills`
--

INSERT INTO `fills` (`APPLICATIONID`, `APPLY_DATE`, `STU_NAME`, `APPSTATUS`) VALUES
('1230002', '2013-02-02', 'ARUNB12', 'ACCEPTED'),
('1230003', '2010-02-02', 'VANI21', 'ACCEPTED'),
('1230011', '2013-01-02', 'JAMES123', 'ACCEPTED'),
('1230023', '2014-02-03', 'ANISHSM', 'ACCEPTED'),
('1230054', '2011-05-09', 'DEEPTHI3', 'ACCEPTED'),
('1230065', '2014-05-04', 'ANIK@23', 'ACCEPTED'),
('1230071', '2013-06-09', 'MOUNICA20', 'REJECTED'),
('1230076', '2012-06-09', 'SUSHMA!E', 'ACCEPTED'),
('1230095', '2015-01-02', 'KRUTHI11', 'UNDER REVIEW'),
('1230099', '2014-02-02', 'UDEEP9', 'ACCEPTED');

-- --------------------------------------------------------

--
-- Table structure for table `housing`
--

CREATE TABLE IF NOT EXISTS `housing` (
  `H_ID` char(10) NOT NULL DEFAULT '',
  `HOUSINGNAME` varchar(30) DEFAULT NULL,
  `HOUSING_DEATILS` longtext
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `housing`
--

INSERT INTO `housing` (`H_ID`, `HOUSINGNAME`, `HOUSING_DEATILS`) VALUES
('AS643', 'ASHFORD', '3BHK 1000$ PER MONTH'),
('CD231', 'CEDAR', '1BHK 350$ PER MONTH'),
('CO191', 'COLONIAL', '921BHK 90$ PER MONTH'),
('CW091', 'CAMPUS WALK', '3BHK 1230$ PER MONTH'),
('HK101', 'HICKORY HALL', '2BHK 750$ PER MONTH'),
('RB111', 'ROBINSON HALL', '1BHK 550$ PER MONTH'),
('SY155', 'SYCAMORE HALL', '2BHK 990$ PER MONTH'),
('UE441', 'UNIVERSITY EDGE', '2BHK 1100$ PER MONTH'),
('UN100', 'UNIVERSITY NORTH', '4BHK 1400$ PER MONTH'),
('UT114', 'UNIVERSITY TERRACE', '4BHK 1320$ PER MONTH');

-- --------------------------------------------------------

--
-- Table structure for table `oncampusjobs`
--

CREATE TABLE IF NOT EXISTS `oncampusjobs` (
  `J_ID` char(10) NOT NULL DEFAULT '',
  `title` varchar(20) DEFAULT NULL,
  `JOB_DESC` longtext,
  `PAY` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `oncampusjobs`
--

INSERT INTO `oncampusjobs` (`J_ID`, `title`, `JOB_DESC`, `PAY`) VALUES
('A1000', 'Teaching Assistant', 'Teaching Assistant', '$10/Hr'),
('A1001', 'Research Assistant', 'Research Assistant', '$10/Hr'),
('A1002', 'Grader', 'Grading of HW, Tests,etc', '$8/Hr'),
('A1003', 'Receptionist', 'Receptionist at Student Union', '$9/Hr'),
('A1004', 'Manager', 'Manager at Student Union', '$10/Hr'),
('A1005', 'Librarian', 'Librarian at Atkins Library', '$10/Hr'),
('A1006', 'Graduate Assistant', 'Graduate Assistant for EE', '$10/Hr'),
('A1007', 'Parking Manager ', 'Graduate Assistant', '$10/Hr'),
('A1008', 'Graduate Assistant', 'Graduate Assistant for CS', '$10/Hr'),
('A1009', 'Cashier', 'Cashier at McD', '$10/Hr');

-- --------------------------------------------------------

--
-- Table structure for table `program`
--

CREATE TABLE IF NOT EXISTS `program` (
  `PROGRAMID` char(8) NOT NULL DEFAULT '',
  `DEGREE` varchar(15) DEFAULT NULL,
  `INFO` longtext,
  `PREREQUISITE` longtext
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `program`
--

INSERT INTO `program` (`PROGRAMID`, `DEGREE`, `INFO`, `PREREQUISITE`) VALUES
('BT1003', 'BACHELORS', 'BIO TECHNOLOGY', 'SAT AND TOEFL SCORES'),
('CM1005', 'BACHELORS', 'CONST MANAGEMENT', 'SAT AND TOEFL SCORES'),
('CS1001', 'MASTERS', 'COMP SCIENCE', 'UNDERGRAD CS OR ANY EQUIVALENT DEGREE'),
('DSBA1010', 'MASTERS', 'DATA SCIENCES AND BUSINESS ANALYTICS', 'UNDERGRAD CS, IT, MANAGEMENT DEGREE OR EQUIVALENT'),
('EE1007', 'MASTERS', 'ELEC ENGINEERING', 'UNDERGRAD ECE, EEE OR EQUIVALENT DEGREE'),
('EM1004', 'MASTERS', 'ENGG MANAGEMENT', 'ANY BACHELORS DEGREE'),
('IT1002', 'MASTERS', 'INFO TECHNOLOGY', 'UNDERGRAD IT OR ANY EQUIVALENT DEGREE'),
('MBA1009', 'MASTERS', 'MASTERS OF BUSINESS ADMINISTRATION', 'UNDERGRAD MANAGEMENT DEGREE'),
('MH1006', 'MASTERS', 'MECH ENGINEERING', 'UNDERGRAD MECH DEGREE'),
('MIS1008', 'MASTERS', 'MANAGEMENT & INFO SYSTEMS', 'MANAGEMENT DEGREE OR EQUIVALENT');

-- --------------------------------------------------------

--
-- Table structure for table `programadmin`
--

CREATE TABLE IF NOT EXISTS `programadmin` (
  `USERNAME` char(10) NOT NULL DEFAULT '',
  `PASSWORD` varchar(20) NOT NULL,
  `EMAIL` varchar(20) DEFAULT NULL,
  `CONTACT` varchar(13) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `programadmin`
--

INSERT INTO `programadmin` (`USERNAME`, `PASSWORD`, `EMAIL`, `CONTACT`) VALUES
('ASIS', 'NASI20', 'ASIS@UNCC.EDU', '802-698-3251'),
('BHARAT', 'BH789', 'BJOSHI@UNCC.EDU', '145-698-3589'),
('DARSHAN', 'PUBS123', 'DP@UNCC.EDU', '712-656-9811'),
('JAMES123', 'JC345', 'JCONRAD@UNCC.EDU', '582-656-4711'),
('LINDA1', 'PASSSUB12', 'LINDA@UNCC.EDU', '236-656-1456'),
('PAVAN', 'PAR_123', 'PP@UNCC.EDU', '698-656-3691'),
('RYAN', 'RA651', 'RADAMS@UNCC.EDU', '698-656-7896'),
('TOM1', 'PASSSUB12', 'TOM1@UNCC.EDU', '712-656-3111'),
('TWELDON', 'TWELDON12', 'TW@UNCC.EDU', '874-656-3654'),
('ZORRO', 'ZAORO123', 'ZORRO@UNCC.EDU', '357-656-1496');

-- --------------------------------------------------------

--
-- Table structure for table `registerfor`
--

CREATE TABLE IF NOT EXISTS `registerfor` (
  `COURSEID` char(10) NOT NULL DEFAULT '',
  `STU_NAME` char(10) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `registerfor`
--

INSERT INTO `registerfor` (`COURSEID`, `STU_NAME`) VALUES
('MH 5732', 'ANIK@23'),
('BT 6111', 'ANISHSM'),
('CS 5142', 'ARUNB12'),
('EM 5921', 'DEEPTHI3'),
('CS 5142', 'JAMES123'),
('EE 5710', 'KRUTHI11'),
('CS 5142', 'MOUNICA20'),
('MIS 6155', 'SUSHMA!E'),
('IT 4121', 'UDEEP9'),
('CS 5142', 'VANI21');

-- --------------------------------------------------------

--
-- Table structure for table `scholarship`
--

CREATE TABLE IF NOT EXISTS `scholarship` (
  `S_ID` char(10) NOT NULL DEFAULT '',
  `SCH_NAME` varchar(20) DEFAULT NULL,
  `SCH_DESC` longtext
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `scholarship`
--

INSERT INTO `scholarship` (`S_ID`, `SCH_NAME`, `SCH_DESC`) VALUES
('S1', 'FEDERAL AID', 'COMPLETE FEE WAIVER'),
('S10', 'OFFICE ASST', '8$ PER HR WITH MAX 20 HRS PER WEEK'),
('S2', 'PRIVATE AID', '50% FEE WAIVER'),
('S3', 'GRAD ASST', '15$ PER HR WITH MAX 20 HRS PER WEEK'),
('S4', 'TEACH ASST', '10$ PER HR WITH MAX 20 HRS PER WEEK'),
('S5', 'RESEARCH ASST', '12$ PER HR WITH MAX 20 HRS PER WEEK'),
('S6', 'MERIT SCH', '2000$ PER SEM'),
('S7', 'LEGACY SCH', '1000$ PER SEM'),
('S8', 'MILITARY SCH', '3000$ PER YEAR'),
('S9', 'SPORTS SCH', '1050$PER SEM');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE IF NOT EXISTS `student` (
  `STU_NAME` char(10) NOT NULL DEFAULT '',
  `PASSWORD` varchar(20) NOT NULL,
  `FNAME` char(20) DEFAULT NULL,
  `LNAME` char(20) DEFAULT NULL,
  `EMAIL` varchar(20) DEFAULT NULL,
  `CONTACT` varchar(13) DEFAULT NULL,
  `ADDRESS` varchar(300) DEFAULT NULL,
  `DOB` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`STU_NAME`, `PASSWORD`, `FNAME`, `LNAME`, `EMAIL`, `CONTACT`, `ADDRESS`, `DOB`) VALUES
('abagavat', 'Ba100492*', 'Arunkumar', 'Bagavathi', 'abagavat@uncc.edu', '7048194751', '212F,Barton Creek Drive,\nAshford Green Apartments,\nCharlotte,NC-28262', '2015-12-31'),
('ANIK@23', 'ARORA0/>', 'ANIK', 'ARORA', 'AARORA@GMAIL.COM', '791-731-7765', '112A SANDIEGO', '1991-06-12'),
('ANISHSM', 'SINGA223', 'ANISH', 'SINGAM', 'ASINGAM@GMAIL.COM', '423-876-0221', '740D CHARLOTTE DRIVE', '1988-08-01'),
('ARUNB12', 'KUMAR822', 'ARUN', 'BAGAVATHI', 'ABAGAVATHI@GMAIL.COM', '441-001-8611', '234D KENTUCKY', '1986-02-02'),
('DEEPTHI3', 'KESI9022', 'DEEPTHI', 'KESIREDDY', 'DKESIRED@GMAIL.COM', '781-001-1231', 'MONROE STREET JERSEY', '1989-02-03'),
('JAMES123', 'PASSSUB12', 'JAMES', 'ABRAM', 'JABRAM@GMAIL.COM', '713-876-3111', '9511 UNIVERSITY DRIVE', '1990-06-09'),
('KRUTHI11', 'DANTALPA2', 'KRUTHIKA', 'DANTAPALLY', 'KDANTA@GMAIL.COM', '799-181-3011', '202G MAINE', '1988-12-12'),
('MOUNICA20', 'GANTA991', 'MOUNICA', 'GANTA', 'MGANTA@GMAIL.COM', '706-222-3201', '23SPRINFIELD,OHIO', '1993-06-09'),
('SUSHMA!E', 'VASANTH1', 'SUSHMA', 'VASANTHKUMAR', 'SKUMAR@GMAIL.COM', '661-236-3111', '112D MONTIVELLE', '1992-06-11'),
('UDEEP9', 'MANCHA:11', 'UDEEP', 'MANCHANDA', 'UMANCHA@GMAIL.COM', '443-876-0187', 'FRANKLIN,DELAWARE COUNTY NY', '1990-06-09'),
('VANI21', 'LOGIN123', 'VANI', 'NAREDDY', 'VNAREDDY@GMAIL.COM', '713-873-3981', '9523 COLVILLE GARDENS', '1991-03-09');

-- --------------------------------------------------------

--
-- Table structure for table `teaches`
--

CREATE TABLE IF NOT EXISTS `teaches` (
  `FACULTYID` char(8) NOT NULL DEFAULT '',
  `COURSEID` char(10) NOT NULL DEFAULT '',
  `PROGRAMID` char(8) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teaches`
--

INSERT INTO `teaches` (`FACULTYID`, `COURSEID`, `PROGRAMID`) VALUES
('10023', 'BT 6111', 'BT1003'),
('10078', 'CM 3111', 'CM1005'),
('10011', 'CS 5142', 'CS1001'),
('10019', 'DSBA 6019', 'DSBA1010'),
('10052', 'EE 5710', 'EE1007'),
('10045', 'EM 5921', 'EM1004'),
('10022', 'IT 4121', 'IT1002'),
('10066', 'MBA 5001', 'MBA1009'),
('10096', 'MH 5732', 'MH1006'),
('10031', 'MIS 6155', 'MIS1008');

-- --------------------------------------------------------

--
-- Table structure for table `tutionfeecharged`
--

CREATE TABLE IF NOT EXISTS `tutionfeecharged` (
  `TUITIONID` char(8) NOT NULL DEFAULT '',
  `STUDENT_TYPE` varchar(10) DEFAULT NULL,
  `PROGRAMID` char(8) DEFAULT NULL,
  `DEGREE` varchar(15) DEFAULT NULL,
  `COST` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tutionfeecharged`
--

INSERT INTO `tutionfeecharged` (`TUITIONID`, `STUDENT_TYPE`, `PROGRAMID`, `DEGREE`, `COST`) VALUES
('1001', 'INSTATE', 'CS1001', 'MASTERS', '300 PER Hr'),
('1002', 'INSTATE', 'IT1002', 'MASTERS', '300 PER Hr'),
('1003', 'INSTATE', 'BT1003', 'BACHELORS', '200 PER Hr'),
('1004', 'INSTATE', 'EM1004', 'MASTERS', '300 PER Hr'),
('1005', 'INSTATE', 'CM1005', 'BACHELORS', '200 PER Hr'),
('1006', 'INSTATE', 'MH1006', 'MASTERS', '300 PER Hr'),
('1007', 'OUTSTATE', 'EE1007', 'MASTERS', '3000 PER Hr'),
('1008', 'INSTATE', 'MIS1008', 'MASTERS', '300 PER Hr'),
('1009', 'OUTSTATE', 'MBA1009', 'MASTERS', '3000 PER Hr'),
('1010', 'OUTSTATE', 'DSBA1010', 'BACHELORS', '2000 PER Hr');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `application`
--
ALTER TABLE `application`
 ADD PRIMARY KEY (`APPLICATIONID`);

--
-- Indexes for table `applyhousing`
--
ALTER TABLE `applyhousing`
 ADD PRIMARY KEY (`USERNAME`,`H_ID`), ADD KEY `H_ID` (`H_ID`);

--
-- Indexes for table `applyjobs`
--
ALTER TABLE `applyjobs`
 ADD PRIMARY KEY (`USERNAME`,`J_ID`), ADD KEY `J_ID` (`J_ID`);

--
-- Indexes for table `applyscholarship`
--
ALTER TABLE `applyscholarship`
 ADD PRIMARY KEY (`USERNAME`,`S_ID`), ADD KEY `S_ID` (`S_ID`);

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
 ADD PRIMARY KEY (`COURSEID`);

--
-- Indexes for table `decision`
--
ALTER TABLE `decision`
 ADD PRIMARY KEY (`APPLICATIONID`,`ADMIN_ID`), ADD KEY `ADMIN_ID` (`ADMIN_ID`);

--
-- Indexes for table `faculty`
--
ALTER TABLE `faculty`
 ADD PRIMARY KEY (`FACULTYID`);

--
-- Indexes for table `fills`
--
ALTER TABLE `fills`
 ADD PRIMARY KEY (`APPLICATIONID`,`STU_NAME`), ADD KEY `STU_NAME` (`STU_NAME`);

--
-- Indexes for table `housing`
--
ALTER TABLE `housing`
 ADD PRIMARY KEY (`H_ID`);

--
-- Indexes for table `oncampusjobs`
--
ALTER TABLE `oncampusjobs`
 ADD PRIMARY KEY (`J_ID`);

--
-- Indexes for table `program`
--
ALTER TABLE `program`
 ADD PRIMARY KEY (`PROGRAMID`);

--
-- Indexes for table `programadmin`
--
ALTER TABLE `programadmin`
 ADD PRIMARY KEY (`USERNAME`);

--
-- Indexes for table `registerfor`
--
ALTER TABLE `registerfor`
 ADD PRIMARY KEY (`COURSEID`,`STU_NAME`), ADD KEY `STU_NAME` (`STU_NAME`);

--
-- Indexes for table `scholarship`
--
ALTER TABLE `scholarship`
 ADD PRIMARY KEY (`S_ID`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
 ADD PRIMARY KEY (`STU_NAME`);

--
-- Indexes for table `teaches`
--
ALTER TABLE `teaches`
 ADD PRIMARY KEY (`FACULTYID`,`PROGRAMID`,`COURSEID`), ADD KEY `COURSEID` (`COURSEID`), ADD KEY `PROGRAMID` (`PROGRAMID`);

--
-- Indexes for table `tutionfeecharged`
--
ALTER TABLE `tutionfeecharged`
 ADD PRIMARY KEY (`TUITIONID`), ADD KEY `PROGRAMID` (`PROGRAMID`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `applyhousing`
--
ALTER TABLE `applyhousing`
ADD CONSTRAINT `applyhousing_ibfk_1` FOREIGN KEY (`USERNAME`) REFERENCES `student` (`STU_NAME`),
ADD CONSTRAINT `applyhousing_ibfk_2` FOREIGN KEY (`H_ID`) REFERENCES `housing` (`H_ID`);

--
-- Constraints for table `applyjobs`
--
ALTER TABLE `applyjobs`
ADD CONSTRAINT `applyjobs_ibfk_1` FOREIGN KEY (`USERNAME`) REFERENCES `student` (`STU_NAME`),
ADD CONSTRAINT `applyjobs_ibfk_2` FOREIGN KEY (`J_ID`) REFERENCES `oncampusjobs` (`J_ID`);

--
-- Constraints for table `applyscholarship`
--
ALTER TABLE `applyscholarship`
ADD CONSTRAINT `applyscholarship_ibfk_1` FOREIGN KEY (`USERNAME`) REFERENCES `student` (`STU_NAME`),
ADD CONSTRAINT `applyscholarship_ibfk_2` FOREIGN KEY (`S_ID`) REFERENCES `scholarship` (`S_ID`);

--
-- Constraints for table `decision`
--
ALTER TABLE `decision`
ADD CONSTRAINT `decision_ibfk_1` FOREIGN KEY (`APPLICATIONID`) REFERENCES `application` (`APPLICATIONID`),
ADD CONSTRAINT `decision_ibfk_2` FOREIGN KEY (`ADMIN_ID`) REFERENCES `programadmin` (`USERNAME`);

--
-- Constraints for table `fills`
--
ALTER TABLE `fills`
ADD CONSTRAINT `fills_ibfk_1` FOREIGN KEY (`STU_NAME`) REFERENCES `student` (`STU_NAME`),
ADD CONSTRAINT `fills_ibfk_2` FOREIGN KEY (`APPLICATIONID`) REFERENCES `application` (`APPLICATIONID`);

--
-- Constraints for table `registerfor`
--
ALTER TABLE `registerfor`
ADD CONSTRAINT `registerfor_ibfk_1` FOREIGN KEY (`COURSEID`) REFERENCES `courses` (`COURSEID`),
ADD CONSTRAINT `registerfor_ibfk_2` FOREIGN KEY (`STU_NAME`) REFERENCES `student` (`STU_NAME`);

--
-- Constraints for table `teaches`
--
ALTER TABLE `teaches`
ADD CONSTRAINT `teaches_ibfk_1` FOREIGN KEY (`FACULTYID`) REFERENCES `faculty` (`FACULTYID`),
ADD CONSTRAINT `teaches_ibfk_2` FOREIGN KEY (`COURSEID`) REFERENCES `courses` (`COURSEID`),
ADD CONSTRAINT `teaches_ibfk_3` FOREIGN KEY (`PROGRAMID`) REFERENCES `program` (`PROGRAMID`);

--
-- Constraints for table `tutionfeecharged`
--
ALTER TABLE `tutionfeecharged`
ADD CONSTRAINT `tutionfeecharged_ibfk_1` FOREIGN KEY (`PROGRAMID`) REFERENCES `program` (`PROGRAMID`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
