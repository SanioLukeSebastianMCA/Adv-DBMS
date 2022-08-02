
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

