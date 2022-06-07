create database triggersdb;

CREATE TABLE `employe` ( 
`emp_id` int(11) NOT NULL, 
`emp_name` varchar(45) DEFAULT NULL, 
`dob` date DEFAULT NULL, 
`address` varchar(45) DEFAULT NULL, 
`designation` varchar(45) DEFAULT NULL, 
`mobile_no` int(11) DEFAULT NULL, 
`dept_no` int(11) DEFAULT NULL, 
`salary` int(11) DEFAULT NULL, 
PRIMARY KEY (`emp_id`) 
); 

CREATE TABLE `salary` ( 
`employee_id` int(11) NOT NULL, 
`old_sal` int(11) DEFAULT NULL, 
`new_sal` int(11) DEFAULT NULL, 
`rev_date` date DEFAULT NULL, 
PRIMARY KEY (`employee_id`) 
); 

CREATE DEFINER=`root`@`localhost` TRIGGER  
`employee_db`.`employe_AFTER_UPDATE` AFTER UPDATE ON `employe`  FOR EACH ROW 
BEGIN 
if(new.salary != old.salary) 
then  
INSERT INTO salary (employee_id,old_sal,new_sal,rev_date) values  (new.emp_id,old.salary,new.salary,sysdate())
END if
END 

update employe set salary=234569 where emp_id=1; 
select * from salary; 
