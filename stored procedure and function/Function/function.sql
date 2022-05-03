create database grade;
use grade;
CREATE TABLE student(rollno int primary key,name varchar(20),garde varchar(2));
insert into student values(1,"hamna",'B'),(2,"Nihal","A"),(3,"henna","C");
select * from student;
select rollno,name,percentage(garde) from student;

function

create database grade;
use grade;
CREATE TABLE student(rollno int primary key,name varchar(20),garde varchar(2));
insert into student values(1,"hamna",'B'),(2,"Nihal","A"),(3,"henna","C");
select * from student;
select rollno,name,percentage(garde) from student;