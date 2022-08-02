select * from deposit;

select * from borrow;

select * from customer;

select * from branch;

select actno,amount from deposit;

select cname,actno from deposit;

select cname from customer;

select bname from branch;

select cname from borrow;

select cname from customer where city='Nagpur';

select cname from deposit where amount > 4000;

select adate from deposit where cname='Anil';

select bname from branch where city='Bombay';

select cname from borrow where loanno='L201';

select cname from deposit where bname='VRCE';

select bname from branch where city='Delhi';

select cname from deposit where adate='1996-12-01';

select cname from deposit where adate between '1996-05-01' and '1996-12-01';

select city from branch where bname='karolbagh';

select * from customer join borrow on customer.cname=borrow.cname join deposit on deposit.cname=borrow.cname WHERE customer.cname='Anil';

INSERT INTO branch VALUES ('VRCE','Nagpur'), ('Ajni','Nagpur'), ('Karolbagh','Delhi'), ('Chandni','Delhi'), ('Dharampeth','Nagpur'), ('MG road’, ‘Bangalore'), ('Andheri’, ‘Bombay'), ('Nehru Palace’, ‘Delhi'), ('Powai','Bombay');

INSERT INTO customer VALUES ('Anil','Calcutta'), ('Sunil’, ‘Delhi'), ('Mehul','Baroda'), ('Mandar','Patna'), ('Madhuri','Nagpur'), ('Pramod','Nagpur'), ('Sandip','Surat'), ('Shivani','Bombay'), ('Kranti','Bombay'), ('Naren','Bombay');

INSERT INTO deposit VALUES ('D100','Anil','VRCE',1000.00,'1995-03-01'), ('D101','Sunil','Ajni',5000.00,'1996-01-04'), ('D102','Mehul','Karolbagh',3500.00,'1995-11-17'), ('D104','Madhuri','Chandni',1200.00,'1995-12-17'), ('D105','Pramod','MG road',3000.00,'1996-03-27'), ('D106','Sandip','Andheri',2000.00,'1996-03-31'), ('D107','Shivani','Andheri',1000.00,'1995-09-05'), ('D108','Kranti','Nehru Palace',5000.00,'1995-07-02'), ('D109','Naren','Powai',7000.00,'1995-08-10');

INSERT INTO borrow VALUES ('L201','Anil','VRCE',1000.00), ('L206','Mehul','Ajni',5000.00), ('L311','Sunil','Dharampeth',3000.00), ('L321','Madhuri','Andheri',1200.00), ('L105','Pramod','MG road',3000.00), ('L481','Kranti','Nehru Palace',5000.00);






