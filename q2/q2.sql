use department;
create table dept(deptno varchar(20) not null,dname varchar(20) not null,loc varchar(20) not null,primary key(deptno));
insert into dept values("d001","finance","kollam");
insert into dept values("d002","it","ernakulam");
insert into dept values("d003","management","thrissur");
rename table dept to department; #q1
alter table department add column pincode varchar(20) not null;  #q2
alter table department modify pincode varchar(20); #q3
alter table department drop column pincode;  #q3
select * from department;
SET SQL_SAFE_UPDATES=0;
update department set pincode="69104" where loc="kollam";
update department set pincode="682012" where loc="ernakulam";
update department set pincode="69154" where loc="thrissur";
alter table department change column dname dept_name varchar(20) not null;  #q4
alter table department modify loc char(10);  #q5
drop table department;  #q6
