create database college;
use college;
create table student(
	ID int,
	name varchar(20),
    branch varchar(10),
    marks int
);
insert into student values
(1,'Neha','BCA',98),
(2,'Reo','BBA',95),
(3,'Nagi','BCA',90),
(4,'Bachira','BBA',89),
(5,'Isagi','BSC',89);
select * from student;

select name, marks
 from student;
 
 select name AS student_name,
 branch AS enrolled_branch,
 marks as total_marks
 from student;