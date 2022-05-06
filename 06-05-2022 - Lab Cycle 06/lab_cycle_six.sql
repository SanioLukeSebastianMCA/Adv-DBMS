create database lab_cycle_six;
use lab_cycle_six;

-- drop database lab_cycle_six;
CREATE TABLE customer (
    cname VARCHAR(15),
    city VARCHAR(20) NOT NULL,
    PRIMARY KEY (cname)
);

CREATE TABLE branch (
    bname VARCHAR(15),
    city VARCHAR(20) NOT NULL,
    PRIMARY KEY (bname),
    CHECK (city IN ('Nagpur' , 'Delhi', 'Bangalore', 'Bombay'))
);

CREATE TABLE deposit (
    actno VARCHAR(25),
    cname VARCHAR(15),
    bname VARCHAR(20),
    amount BIGINT NOT NULL,
    adate DATE,
    check(actno like 'D%'),
    PRIMARY KEY (actno),
    FOREIGN KEY (cname)
        REFERENCES customer (cname),
    FOREIGN KEY (bname)
        REFERENCES branch (bname),
    CHECK (amount > 0)
);

CREATE TABLE borrow (
    loanno VARCHAR(25),
    cname VARCHAR(15),
    bname VARCHAR(20),
    amount FLOAT(8 , 2 ) NOT NULL,
    CHECK (loanno LIKE 'L%'),
    PRIMARY KEY (loanno),
    FOREIGN KEY (cname)
        REFERENCES customer (cname),
    FOREIGN KEY (bname)
        REFERENCES branch (bname),
    CHECK (amount > 0)
);

INSERT INTO branch VALUES ('VRCE','Nagpur'),('Ajni','Nagpur'),('Karolbagh','Delhi'),('Chandni','Delhi'),('Dharampeth','Nagpur'),
						('MG road','Bangalore'),('Andheri','Bombay'),('Nehru Palace','Delhi'),('Powai','Bombay');
    
INSERT INTO customer VALUES ('Anil','Bombay'), ('Sunil','Delhi'), ('Mehul','Baroda'), ('Mandar','Patna'), ('Madhuri','Nagpur'),
							('Pramod','Nagpur'), ('Sandip','Surat'), ('Shivani','Bombay'), ('Kranti','Bombay'), ('Naren','Bombay');

INSERT INTO deposit VALUES
('D100','Anil','VRCE',1000.00,'1995-03-01'),
('D101','Sunil','Ajni',5000.00,'1996-01-04'),
('D102','Mehul','Karolbagh',3500.00,'1995-11-17'),
('D104','Madhuri','Chandni',1200.00,'1995-12-17'),
('D105','Pramod','MG road',3000.00,'1996-03-27'),
('D106','Sandip','Andheri',2000.00,'1996-03-31'),
('D107','Shivani','Andheri',1000.00,'1995-09-05'),
('D108','Kranti','Nehru Palace',5000.00,'1995-07-02'),
('D109','Naren','Powai',7000.00,'1995-08-10');

INSERT INTO borrow VALUES
('L201','Anil','VRCE',1000.00),
('L206','Mehul','Ajni',5000.00),
('L311','Sunil','Dharampeth',3000.00),
('L321','Madhuri','Andheri',1200.00),
('L105','Pramod','MG road',3000.00),
('L481','Kranti','Nehru Palace',5000.00);

select d1.cname from deposit d1,customer c1,branch b1 where c1.city = 'Bombay' and b1.city = 'Nagpur' and d1.cname = c1.cname and d1.bname = b1.bname;

select distinct(customer.cname), branch.city FROM branch, customer where branch.city = customer.city;

select c1.cname from customer c1,deposit d1,borrow b1 where c1.city='Nagpur' and c1.cname=d1.cname and d1.cname = b1.cname;

select br1.cname, br1.amount, d1.cname, d1.amount from borrow br1,deposit d1 where d1.cname = br1.cname and d1.amount > 1000 and br1.amount > 2000;

select d1.cname from deposit d1 where d1.bname in (select d2.bname from deposit d2 where d2.cname = 'Sunil');

select br1.cname,br1.amount from borrow br1 where br1.amount > all (select br2.amount from borrow br2 where br2.cname = 'Pramod');

select c.cname from customer c where c.city in (select b.city from branch b where b.bname in (select d.bname from deposit d where d.cname='Sunil'));

select b1.city , c1.city from branch b1,customer c1, deposit d1 where c1.cname = 'Pramod' and c1.cname = d1.cname and d1.bname = b1.bname;

select d1.cname, b1.city from deposit d1, branch b1 where d1.bname = b1.bname and d1.cname in ('Sunil' ,'Anil');

select c1.cname, c1.city from customer c1 where c1.cname = 'Anil' or c1.cname = 'Sunil';




