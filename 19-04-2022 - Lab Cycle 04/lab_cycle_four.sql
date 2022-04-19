use lab_cycle_one;

select sum(amount) from borrow;

select sum(amount) from deposit;

select sum(amount) from borrow where bname="Andheri";

select sum(amount) from deposit where adate > "1996-01-01";

select sum(d.amount) from deposit d, customer c where d.cname=c.cname and c.city="Nagpur";

select max(d.amount) from deposit d, customer c where d.cname=c.cname and c.city="Bombay";

select sum(d.amount) from deposit d, customer c where d.cname=c.cname and c.city="Bombay";

select count(distinct(city)) from branch;

select count(distinct(city)) from customer;

select bname, sum(amount) as sum from deposit group by bname;

select c.city, sum(d.amount) from customer c, deposit d where d.cname=c.cname group by c.city;

select bo.bname, sum(bo.amount) from borrow bo, branch br where bo.bname=br.bname and br.city="Nagpur";  

select count(*) from customer;

select bname,count(*) from deposit group by bname;

select max(amount) from borrow where bname="VRCE"; 

select count(cu.cname) from customer cu, borrow bo, deposit d where cu.cname=bo.cname and cu.cname=d.cname; 


