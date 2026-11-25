use college;
show tables;
create table join_courses(
	course_id int primary key ,
    course_name varchar(10)
);
create table join_students(
	student_id int primary key ,
    student_name varchar(10),
    course_id int, 
    foreign key (course_id)
    references join_courses(course_id)
);
insert into join_courses(course_id,course_name)
values
(101,'BCA'),
(102,'BBA'),
(103,'BSC');
insert into join_students(student_id,
student_name,course_id)
values
(1,'Neha',101),
(2,'Ren',102),
(3,'Nagi',101),
(4,'Bachira',NULL);
/*students table*/
select * from join_students 
order by student_id;
/*courses table*/
select * from join_courses 
order by course_id;

/*innner join*/
select 
	s.student_id,
    s.student_name,
    c.course_id,
    c.course_name
from join_students AS s
inner join  join_courses AS c
	on s.course_id=c.course_id
order by s.student_id;
/*left join*/
select 
	s.student_id,
    s.student_name,
    c.course_id,
    c.course_name
from join_students AS s
left join  join_courses AS c
	on s.course_id=c.course_id
order by s.student_id;
/* right join*/
select 
	s.student_id,
    s.student_name,
    c.course_id,
    c.course_name
from join_students AS s
right join  join_courses AS c
	on s.course_id=c.course_id
order by c.course_id,s.student_id;