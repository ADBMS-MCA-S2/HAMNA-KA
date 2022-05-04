create database emps;
use emps;
drop table employee;
create table employee(id int primary key,name varchar(20),exp varchar(20));
insert into employee(id,name,exp)values(101,'gopi',7);
insert into employee(id,name,exp)values(102,'qwerty',8);
insert into employee(id,name,exp)values(103,'qwerty',10);
insert into employee(id,name,exp)values(104,'qwfdf',5);
insert into employee(id,name,exp)values(105,'asdf',10);
select * from employee;
select * from staffinfo;

trigger code

DROP TRIGGER IF EXISTS `emps`.`employee_AFTER_INSERT`;

DELIMITER $$
USE `emps`$$
CREATE DEFINER=`root`@`localhost` TRIGGER `emps`.`employee_AFTER_INSERT` AFTER INSERT ON `employee` FOR EACH ROW
BEGIN
if(new.exp > 6)
then 
insert into staffinfo set id=new.id,staffname=new.name,mainlevel="senior";
end if;
END$$
DELIMITER ;
