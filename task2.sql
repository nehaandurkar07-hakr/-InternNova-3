use college;
select * from student;
select ID,marks 
from student 
where marks > 90
order by ID;

select ID,marks 
from student 
where marks = 90
order by ID;

select ID,marks 
from student 
order by marks ASC,ID ASC;

select ID,marks 
from student 
order by marks DESC,ID ASC;

select COUNT(*) AS total_students from student; 

select SUM(marks) AS total_MARKS from student; 

select AVG(marks) AS Average_MARKS from student; 

select MIN(marks) AS Minimum_marks from student;
select MAX(marks) AS Maximum_marks from student; 
 
 
 
Select COUNT(*) AS total_students, 
	SUM(marks) AS total_MARKS , 
	AVG(marks) AS Average_MARKS, 
	MIN(marks) AS Minimum_marks,
	MAX(marks) AS Maximum_marks 
from student; 
 




