create database lab_cycle_three;
use lab_cycle_three;

CREATE TABLE emp (
    empno int(5),
    ename varchar(10),
    hiredate date,
    salary bigint,
    commission bigint,
    PRIMARY KEY (empno)
);

INSERT INTO emp VALUES
(101,'Ramesh','1980-01-17',5000,null),
(102,'Ajay','1985-07-05',5000,500),
(103,'Ravi','1981-08-12',1500,null),
(104,'Nikesh','1983-03-03',3000,700),
(105,'Ravi','1985-07-05',3000,null);

-- select * from emp1;

/* 2.a */ alter table emp add sal numeric(7,2);

/* 2.b */ alter table emp drop sal;

/* 2.c */ alter table emp modify column ename varchar(15);

/* 2.d */ alter table emp rename emp1;

/* 2.e */ truncate table emp1;

/* 2.f */ drop table emp1;

/* 3 */ 
CREATE TABLE stud (
    sname varchar(20),
	rollno numeric(10) not null,
    dob date not null,
    PRIMARY KEY (sname)
);

/* 4 */ 
CREATE TABLE student (
	regno numeric(6),
    mark numeric(3),
    check(mark >= 0 and mark <= 100)
);

/* 5 */ 
CREATE TABLE cust (
	custid numeric(6) unique,
    name varchar(10));









