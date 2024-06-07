use data;
/* Select * from EmpInfo */

/*------------highest salary-------------*/
/* select * from EmpInfo where salary=(select Max(salary) from EmpInfo); */

/*---------2nd highest salary--------*/
/* select MAX(Salary) from EmpInfo where Salary <(Select MAX(Salary) from EmpInfo); */

/*---------3rd highest salary--------*/
/* select MAX(Salary) from EmpInfo where Salary <(Select MAX(Salary) from EmpInfo where Salary < (Select MAX(Salary) from EmpInfo)); */
-- SELECT * from EmpInfo order by Salary desc limit 2,1;

/*------------4th lowest salary---------*/
-- SELECT * from EmpInfo order by Salary limit 4,1;

/*--------------give bonus of 500 of all-------*/
/* Select (Salary+500) from EmpInfo; */
-- select (Salary+(Salary*50/100)) as 'Salary' from EmpInfo; 
-- select Salary as 'Salary',(Salary*50/100) as '50%',(Salary+(Salary*50/100)) as 'Total' from EmpInfo;
-- select (Salary+(Salary*50/100)) from EmpInfo where City LIKE 'P%'; 
-- UPDATE EmpInfo SET Salary=(Salary+(Salary*50/100)) WHERE City LIKE 'P%';
-- Select Salary,City,CASE City WHEN 'Pune'THEN (Salary+(Salary*50/100)) ELSE Salary End 'Total'from EmpInfo;

/*-----------total of salary where dept = 'hr'--------*/
/* Select sum(Salary) from EmpInfo where Dept = 'Manager';	*/