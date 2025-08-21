create database Assignment
---Departments table




create table department(departmentId int primary key,departmentname varchar(50) not null unique)
insert into department(departmentId,departmentname)
select 1,'CSE'union all
select 2,'ECE' union all
select 3,'ME'union all
select 4,'EEE'union all
select 5,'AIDS'union all
SELECT 6,'CIVIL' UNION
SELECT 7,'CSAI'

 --students table 

create table Student1(studentID int primary key,name varchar(50) not null,age int check(age>=17),departmentId int foreign key references department(departmentId))
select * from student1
insert into student1(studentID,name,age,departmentId)
select 11,'Rahul',21,1 union all
select 12,'rohith',23,2 union all
select 13,'jadeja',17, 3union all
select 14,'mayank',27, 4union all
select 15,'Rakesh',30 ,5 union all
select 16,'Russel',26,5 union all
select 17,'kaul',28,4 union all
select 18,'surya',21,3 union all
select 19,'vaibhav',19 ,2 union
select 20,'bhuvaneswar',24,1
 

 --courses table

 create table courses(courseID int primary key,coursename varchar(50) not null,DepartmentID int foreign key references department(departmentId))
insert into courses (courseID,coursename,DepartmentId)
select 123,'operating system',1 union all
select 234,'computer organization',1 union all
select 345,'VLSI design',2 union all
select 456,'signals and systems',2 union all
select 567,'machines and engines',3 union all
select 678,'Mechatronics',3 union all
select 789,'electrical enfineering',4 union all
select 987,'Ac machines',4 union all
select 876,'devops',5 union all
select 765,'CI/CD',5 union all
select 654,'strength of materials',6 union all
select 543,'concrete technology',6 union all
select 432,'AI ',7 union 
select 321,'prompt engineering',7 

select * from courses

---Questions
--Display all students whose age is greater than 20.
select * from student1 where age>20 

--Display all courses of the "Computer Science" department.
select courses.*,department.departmentname from courses inner join department on courses.departmentid=department.departmentid  where departmentname='cse' and coursename like '%computer%'

--Display all students who belong to the "Electronics" department.
select Student1.*,department.departmentname from student1 inner join  department on student1.departmentid=department.departmentId where departmentname='ECE'
--Display students whose age is between 18 and 22.
select * from Student1 where age between 18 and 22

-- perforimng joins on tables
--1.INNER JOIN Students with Departments (to show student names with their department names).
select department.departmentId ,Student1.name from Student1 inner join department on Student1.departmentId=department.departmentId 
--2.LEFT JOIN Courses with Departments (to show all courses, even if some department does not exist).
select courses.coursename ,department.departmentname from courses left join department on courses.departmentId=department.departmentId 

--3.RIGHT JOIN Students with Courses (to show all courses, even if no student has enrolled in them).
select name,coursename  from student1 right join courses on courses.departmentId=Student1.departmentId 