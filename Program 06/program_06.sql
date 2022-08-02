
CREATE TABLE student ( stud_id int(4) NOT NULL PRIMARY KEY auto_increment, name varchar(30), subject1 int(2), subject2 int(2), subject3 int(2), total int(3), per int(3));

CREATE TRIGGER mark
BEFORE INSERT ON student FOR EACH ROW
SET new.total=new.subject1+new.subject2+new.subject3, new.per= new.total / 300 * 100;

select * from student;
insert into student values (null,"Goblin",91, 89,82,0,0);
insert into student values (null,"Denvin",76, 91,67,0,0);
insert into student values (null,"Finny",78, 64,79,0,0);


CREATE TABLE marks ( stud_name VARCHAR(20), total_marks int(3));

CREATE TRIGGER mark_trigger
AFTER INSERT ON student FOR EACH ROW
INSERT INTO marks(stud_name,total_marks) VALUES(new.name,new.total);

INSERT INTO student (stud_id, name, subject1, subject2, subject3) values(null,'Avil',78, 65, 91),(null,'Godwin',67, 86, 55),(null,'Henry',81, 96, 63);
SELECT *FROM marks;


