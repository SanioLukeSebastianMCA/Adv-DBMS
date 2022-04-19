use lab_cycle_one;

select cname from deposit where cname not in (select cname from borrow); 

select cname from deposit where cname in (select cname from borrow); 

select cname 