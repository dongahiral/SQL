use data;
-- select * from Employee;
select * from EmployeeDetail;

-- 2nd highest salary --
select max(Salary) from employee where Salary < (select max(Salary) from employee);

-- 3rd highest salary 
select max(Salary) from employee where Salary < (select max(Salary) from employee where Salary < (select max(Salary) from employee));
select Salary from employee order by Salary desc limit 2,1;

-- dept wise salary 
select DeptID,avg(Salary) from Employee group by DeptID;

select * from IDS;

select * from IDS where mod (ID,2)=0;
select * from IDS where mod (ID,2)=1;

select Firstname from EmployeeDetail;
select Lastname from EmployeeDetail;

select upper(Firstname) from EmployeeDetail;
select lower(Lastname) from EmployeeDetail;
select concat(Firstname , ' ' , Lastname) as CName from EmployeeDetail;

select Department , Salary from EmployeeDetail;
select * from EmployeeDetail where Gender = 'FeMale';
select * from EmployeeDetail where Gender = 'Male';

select distinct(Department) from EmployeeDetail ;

select min(Salary) from EmployeeDetail;
select max(Salary) from EmployeeDetail;
select avg(Salary) from EmployeeDetail;
select count(*) from EmployeeDetail;
select Salary from EmployeeDetail where Salary < 600000;
select Salary from EmployeeDetail where Salary > 520000;
select * from EmployeeDetail where Salary between 500000 and 600000;
select sysdate();