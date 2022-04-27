create database company;

use company;

create table emp(emp_id int primary key,emp_name varchar(20),salary varchar(20));

create table dept(dept_id int primary key,emp_id int,designation varchar(20),experience int(10) ,foreign key(emp_id) references emp(emp_id));

insert into emp(emp_id,emp_name,salary)values(101,'Shibu',25000);
insert into emp(emp_id,emp_name,salary)values(102,'Raju',35000);
insert into emp(emp_id,emp_name,salary)values(103,'Shanku',50000);

select * from emp;

insert into dept(dept_id,emp_id,designation,experience)values(201,101,'Peon',2);
insert into dept(dept_id,emp_id,designation,experience)values(202,102,'Clerk',6);
insert into dept(dept_id,emp_id,designation,experience)values(203,103,'Manager',12);

select * from dept;

create table level(emp_id int,dept_id int,experience_level varchar(20),foreign key(emp_id) references emp(emp_id),foreign key(dept_id) references dept(dept_id));

call exp(2,101,201);
call exp(6,102,201);
call exp(12,103,203);

select * from level;
select emp.emp_name,emp.salary,new_salary(level.experience_level,emp.salary) from emp,level where emp.emp_id=level.emp_id;



////STORED PROCEDURE

CREATE DEFINER=`root`@`localhost` PROCEDURE `exp`(experience int,emp_id int,dept_id int)
BEGIN
DECLARE
    levels varchar(45);
 
if (experience > 0 && experience<5)
    then set levels = 'beg';
    insert into employe(emp_id,experience,salary,levels) values(emp_id,experience,salary,levels);
    end if;
    if( exp>=6 && exp <10)
    then set levels = 'int';

     insert into employe(emp_id,experience,salary,levels) values(emp_id,experience,salary,levels);
    end if;
    if (exp >= 10)
    then set levels = 'Experienced';
    
    insert into employe(emp_id,experience,salary,levels) values(emp_id,experience,salary,levels);
    end if;
END

////FUNCTION////

CREATE DEFINER=`root`@`localhost` FUNCTION `new_salary`(experience_level varchar(20),sal varchar(10)) RETURNS int(11)
BEGIN
if(experience_level = 'Experienced')
then
return(sal+1000);
else
return(sal);
end if;

RETURN 1;
END
