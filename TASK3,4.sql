use college;
select * from student;

select 
	branch,
    COUNT(*) AS Total_students
from student
group by branch 
order by branch;

select 
	branch,
    COUNT(*) AS Total_students,
	SUM(marks) AS Total_marks, 
	ROUND(AVG(marks),2) AS Average_marks, 
	MIN(marks) AS Minimum_marks,
	MAX(marks) AS Maximum_marks 
from student
group by branch 
order by branch;

select 
	branch,
	ROUND(AVG(marks),2) AS Average_marks
from student
group by branch
having AVG(marks)>90 
order by branch;

select 
	branch,
	COUNT(*) AS Total_students
from student
group by branch
having COUNT(*)>= 2
order by branch;