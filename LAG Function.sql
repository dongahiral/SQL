use data;
create table student(
name varchar(30),
marks varchar(50),
year varchar(100));

insert into student values ('A',50,2020),
('A',75,2021),
('C',85,2022),
('D',45,2020),
('D',67,2021);

select * from student;

truncate table student;

with cte 
as(
select name,marks,year,lag(marks) over (partition by name order by year) as p_marks from student
),cte_a
as(
select name,marks,year,row_number() over (partition by name order by year desc) as year_no from cte where marks>=p_marks
)  
select name,marks,year,year_no from cte_a where year_no=1;

select * from (
select name,marks,year,lag(marks) over (partition by name order by year) as p_marks from student
)  s where s.marks>=s.p_marks;

 