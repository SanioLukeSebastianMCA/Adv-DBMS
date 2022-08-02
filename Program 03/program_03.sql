

select cname from deposite  where cname not in (select cname from borrow);

select cname from deposite union (select cname from  borrow);

select d1.cname from deposite d1 where d1.bname in (select  d2.bname from deposite d2 where d2.cname = 'sunil' );

select c1.cname from customer c1,deposite d1, branch b1 where  c1.city = 'nagpur' and c1.cname = d1.cname and d1.bname = b1.bname  and b1.city in ('bombay','delhi');

select distinct(customer.cname) from customer,deposite where  city='nagpur';

select c1.cname from customer c1,deposite d1, branch b1 where  c1.city = 'nagpur' and c1.cname = d1.cname and d1.bname = b1.bname  and b1.city in ('bombay');

select b1.city from deposit d1, branch b1 where d1.bname=  b1.bname and d1.cname in ('sunil' ,'anil'); 

select distinct d1.cname from deposite d1, borrow b1 where  d1.amount>1000 and b1.amount<10000;

select b1.city from deposite  d1, branch b1 where d1.bname=b1.bname  and b1.bname='vrce';

select d1.cname from deposite  d1, customer  c1 where amount<1000  and c1.city=(c1.cname='anil');

select b1.city from branch b1 where b1.bname in (select  d1.bname from deposit d1 where d1.cname in ('anil','sunil')); 

select distinct(d1.cname),d1.amount ,c1.city from deposite  d1,  customer c1, branch b1 where d1.cname=c1.cname and c1.city  in(select c2.city from customer c2 where c2.cname='anil');

