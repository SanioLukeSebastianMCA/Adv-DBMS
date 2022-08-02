create database program_01;
use program_01;

CREATE TABLE customer ( cname VARCHAR (15), city VARCHAR (20) NOT NULL, PRIMARY KEY (cname));

CREATE TABLE branch ( 
	bname VARCHAR (15),
    city VARCHAR (20) NOT NULL,
    PRIMARY KEY (bname),
    CHECK (city IN ('Nagpur', 'Delhi', 'Bangalore', 'Bombay'))
);

CREATE TABLE deposit ( 
	actno VARCHAR (25), 
    cname VARCHAR (15),
    bname VARCHAR (20),
    amount BIGINT NOT NULL, 
    adate DATE,
    check (actno like 'D%'), 
    PRIMARY KEY (actno),
    FOREIGN KEY (cname) REFERENCES customer (cname),
    FOREIGN KEY (bname) REFERENCES branch (bname),
    CHECK (amount > 0)
);

CREATE TABLE borrow ( 
	loanno VARCHAR (25),
    cname VARCHAR (15),
    bname VARCHAR (20),
    amount FLOAT (8, 2) NOT NULL,
    CHECK (loanno LIKE 'L%'),
    PRIMARY KEY (loanno),
    FOREIGN KEY (cname) REFERENCES customer (cname),
    FOREIGN KEY (bname) REFERENCES branch (bname),
    CHECK (amount > 0)
);

CREATE TABLE emp (
	empno int(5),
    ename varchar(10),
    hiredate date,
    salary bigint,
    commission bigint,
    PRIMARY KEY (empno)
);

INSERT INTO emp VALUES (101,'Ramesh','1980-01-17',5000,null), (102,'Ajay','1985-07-05',5000,500), (103,'Ravi','1981-08-12',1500,null), 
(104,'Nikesh','1983-03-03',3000,700), (105,'Ravi','1985-07-05',3000,null);

select * from emp;

alter table emp add sal numeric(7,2);

alter table emp drop sal;

alter table emp modify column ename varchar(15);

alter table emp rename emp1;

truncate table emp1;

drop table emp1;

CREATE TABLE stud ( sname varchar(20), rollno numeric(10) not null, dob date not null, PRIMARY KEY (sname));

CREATE TABLE student ( regno numeric(6), mark numeric(3), check(mark >= 0 and mark <= 100));




