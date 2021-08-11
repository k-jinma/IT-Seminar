CREATE DATABASE IF NOT EXISTS sampledb;

DROP TABLE sampledb.employees;

CREATE TABLE sampledb.employees
    ( empno	        INT(8) NOT NULL PRIMARY KEY
    , name          VARCHAR(30) NOT NULL
    , salary        INT(8)
    , comm          INT(5)
    , hiredate      DATE
    , manager       INT(8)
    , dept_id       INT(6)
 	, job_id        VARCHAR(10)
    ) ;

INSERT INTO sampledb.employees VALUES (1000, 'King', 450000, 200, '1987-09-17', NULL, 10, 'QA_REP');
INSERT INTO sampledb.employees VALUES (1010, 'John', 180000, 150, '1989-04-07', 1000, 20, 'SA_REP');
INSERT INTO sampledb.employees VALUES (1020, 'David', 240000, NULL, '1991-08-31', 1000, 30, 'SA_REP');
INSERT INTO sampledb.employees VALUES (1030, 'Paul', 180000, 120, '1994-06-07', 1040, 20, 'SA_REP');
INSERT INTO sampledb.employees VALUES (1040, 'Jones', 250000, 120, '1998-11-21', 1000, 30, 'QA_REP');
INSERT INTO sampledb.employees VALUES (1050, 'Steven', 250000, NULL, '1998-07-11', 1000, 40, 'QA_REP');
INSERT INTO sampledb.employees VALUES (2000, 'Mark', 190000, 150, '1996-05-01', 1040, 20, 'SA_REP');
INSERT INTO sampledb.employees VALUES (3000, 'Ken', 150000, 100, '1997-06-01', 1050, 20, 'SA_REP');
INSERT INTO sampledb.employees VALUES (4000, 'Asuka', 280000, 100, '1995-03-01', 1050, 40, 'SA_REP');
INSERT INTO sampledb.employees VALUES (5000, 'Johnny', 250000, 150, '1993-02-01', 1000, 30, 'QA_REP');


DROP TABLE sampledb.departments;

CREATE TABLE sampledb.departments
	(dept_id INT(8) NOT NULL
	,dname VARCHAR(30)
	,loc_id INT(8)
	) ;

INSERT INTO sampledb.departments VALUES(10,'Executive',101);
INSERT INTO sampledb.departments VALUES(20,'SE',102);
INSERT INTO sampledb.departments VALUES(30,'Marketing',103);
INSERT INTO sampledb.departments VALUES(40,'Sales',102);
INSERT INTO sampledb.departments VALUES(50,'Secretary',101);


DROP TABLE sampledb.sal_grade;

CREATE TABLE sampledb.sal_grade
    ( grade         VARCHAR(2) NOT NULL
    , lowest_sal    INT(8)
    , highest_sal   INT(8)
    ) ;

INSERT INTO sampledb.sal_grade VALUES ('A',100000,199999);
INSERT INTO sampledb.sal_grade VALUES ('B',200000,299999);
INSERT INTO sampledb.sal_grade VALUES ('C',300000,399999);
INSERT INTO sampledb.sal_grade VALUES ('D',400000,499999);


DROP TABLE sampledb.address;

CREATE TABLE sampledb.address
    ( loc_id        INT(8) NOT NULL
    , address       VARCHAR(50)
    ) ;

INSERT INTO sampledb.address VALUES (101,'1128 S.Hill St. San Francisco');
INSERT INTO sampledb.address VALUES (102,'5134 N.Broadway Ave. San Francisco');
INSERT INTO sampledb.address VALUES (103,'9230 N.Flower St. San Francisco');


DROP TABLE sampledb.likesanddislikes;

CREATE TABLE sampledb.likesanddislikes
	(no INT(1) NOT NULL
	,name VARCHAR(20)
	,meat VARCHAR(20)
	,vegetables VARCHAR(20)
	) ;

INSERT INTO sampledb.likesanddislikes VALUES(1,'Mark','Like','Like');
INSERT INTO sampledb.likesanddislikes VALUES(2,'John','Like','Dislike');
INSERT INTO sampledb.likesanddislikes VALUES(3,'Scott','Like','Dislike');
INSERT INTO sampledb.likesanddislikes VALUES(4,'Jeff','Dislike','Like');
INSERT INTO sampledb.likesanddislikes VALUES(5,'Michael','Like','Dislike');
INSERT INTO sampledb.likesanddislikes VALUES(6,'Smith','Dislike','Dislike');


DROP TABLE sampledb.emp;

CREATE TABLE sampledb.emp
	(empno INT(4) PRIMARY KEY
	, ename  VARCHAR(10)
	, job VARCHAR(10)
	, mgr INT(8)
	, hiredate DATE
	, sal INT(8)
	, comm INT(5)
	, deptno INT(2) 
	);

INSERT INTO sampledb.emp VALUES(7369,'SMITH','CLERK',7902,'1980/12/17',800,NULL,20);
INSERT INTO sampledb.emp VALUES(7499,'ALLEN','SALESMAN',7698,'1981-02-20',1600,300,30);
INSERT INTO sampledb.emp VALUES(7521,'WARD','SALESMAN',7698,'1981-02-22',1250,500,30);
INSERT INTO sampledb.emp VALUES(7566,'JONES','MANAGER',7839,'1981-04-02',2975,NULL,20);
INSERT INTO sampledb.emp VALUES(7654,'MARTIN','SALESMAN',7698,'1981-09-28',1250,1400,30);
INSERT INTO sampledb.emp VALUES(7698,'BLAKE','MANAGER',7839,'1981-05-01',2850,NULL,30);
INSERT INTO sampledb.emp VALUES(7782,'CLARK','MANAGER',7839,'1981-06-09',2450,NULL,10);
INSERT INTO sampledb.emp VALUES(7788,'SCOTT','ANALYST',7566,'1987-04-19',3000,NULL,20);
INSERT INTO sampledb.emp VALUES(7839,'KING','PRESIDENT',NULL,'1981-11-17',5000,NULL,10);
INSERT INTO sampledb.emp VALUES(7844,'TURNER','SALESMAN',7698,'1981-09-08',1500,0,30);
INSERT INTO sampledb.emp VALUES(7876,'ADAMS','CLERK',7788,'1987-05-23',1100,NULL,20);
INSERT INTO sampledb.emp VALUES(7900,'JAMES','CLERK',7698,'1981-12-03',950,NULL,30);
INSERT INTO sampledb.emp VALUES(7902,'FORD','ANALYST',7566,'1981-12-03',3000,NULL,20);
INSERT INTO sampledb.emp VALUES(7934,'MILLER','CLERK',7782,'1982-01-23',1300,NULL,10);

DROP TABLE sampledb.dept;

CREATE TABLE sampledb.dept
	(deptno INT(2) NOT NULL PRIMARY KEY 
	, dname CHAR(14)
	, loc CHAR(13)
	);

INSERT INTO sampledb.dept VALUES(10,'ACCOUNTING','NEW YORK');
INSERT INTO sampledb.dept VALUES(20,'RESEARCH','DALLAS');
INSERT INTO sampledb.dept VALUES(30,'SALES','CHICAGO');
INSERT INTO sampledb.dept VALUES(40,'OPERATIONS','BOSTON');

DROP TABLE sampledb.salgrade;

CREATE TABLE sampledb.salgrade
	(grade INT(2) NOT NULL  PRIMARY KEY AUTO_INCREMENT
	, lowsal INT(8)
	, highsal INT(8)
	);

INSERT INTO sampledb.salgrade VALUES(NULL,700,1200);
INSERT INTO sampledb.salgrade VALUES(NULL,1201,1400);
INSERT INTO sampledb.salgrade VALUES(NULL,1401,2000);
INSERT INTO sampledb.salgrade VALUES(NULL,2001,3000);
INSERT INTO sampledb.salgrade VALUES(NULL,3001,9999);

CREATE TABLE sampledb.employees_copy
    ( empno	        INT(8) NOT NULL PRIMARY KEY
    , name          VARCHAR(30) NOT NULL
    , salary        INT(8)
    , comm          INT(5)
    , hiredate      DATE
    , manager       INT(8)
    , dept_id       INT(6)
 	, job_id        VARCHAR(10)
    ) ;

/* JavaWebSystem */

DROP DATABASE IF EXISTS java_web_system;

CREATE DATABASE IF NOT EXISTS java_web_system;

USE java_web_system;

CREATE TABLE java_web_system.employee (
	employee_id INT(10)  NOT NULL  AUTO_INCREMENT,
	employee_name CHAR(50)  NOT NULL,
	employee_address CHAR(50)  NOT NULL,
	employee_age INT(10)  NOT NULL,
	employee_mail CHAR(50) NOT NULL,
	PRIMARY KEY (employee_id)
	);

commit;

use sampledb;

show tables;

use java_web_system;

show tables;