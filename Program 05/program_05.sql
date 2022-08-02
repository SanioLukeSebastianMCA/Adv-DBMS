
select d.bname from deposit d, branch b where d.bname=b.bname and b.city='Bombay' group by d.bname having sum(d.amount)>5000;

select d.bname from deposit d, branch b where d.bname=b.bname group by d.bname having sum(d.amount)>5000;

select cname from deposit where amount=(select avg(amount) from deposit group by bname having avg(amount)>5000);

select max(amount),cname from deposit;

select d1.bname from deposit d1 group by d1.bname having count(d1.cname) >= all (select count(d2.cname) from deposit d2 group by d2.bname);

select count(deposit.cname)from deposit,customer where customer.city='Nagpur';

select cname from deposit where bname='VRCE' and amount=(select max(amount) from deposit where bname='VRCE');

select bname from deposit group by bname having count(bname) > 5;

select c.cname ,count(b.bname) as count from customer c inner join branch b on c.cname=b.bname group by c.cname order by count(b.bname) desc;

select count(b1.bname) from deposit d1 , borrow b1 , customer c1 where c1.cname=d1.cname and d1.cname=b1.cname and c1.city in (select city from customer);

