--Welcome
--UC1-Create database
Create database EMPLOYEE_PAYROLL
-- UC-2 Create Employee_Payroll Table
create Table EmployeeTable
(
id int identity primary key,
name varchar(100) not null,
salary money not null,
start_Date date not null
)
--UC-3 Insert values in Table
Insert into EmployeeTable values
('Rutuja',40000,'2023-02-15'),
('Vikram',50000,'2019-05-23'),
('Rohit',60000,'2020-02-12'),
('Sneha',70000,'2021-03-14')
--UC4 to view table

select * from EmployeeTable
-- UC5 Retrieve salary for particular employee 
select salary from EmployeeTable where name='Sneha'
-- --to check  Employee using date
select * from EmployeeTable where Start_date between '2023-01-01' and getdate ();

--UC6 Add Gender column and update gender in EmployeeTable
--Add column for gender
alter table EmployeeTable add Gender char (1)
--update
update EmployeeTable set Gender ='F' where name = 'Rutuja'
--update with id
update  EmployeeTable set Gender ='M' where ID in(2,3) ;
update  EmployeeTable set Gender ='F' where ID in(4) ;

--UC7-FIND SUM ,AVG,MIN,MAX,COUNT
--Find sum 
--Sum of salary
select Sum(Salary) as Total_Salary_Of_Male from EmployeeTable where Gender = 'M' GROUP BY Gender
select Sum(Salary) as Total_Salary_Of_female from EmployeeTable where Gender = 'F' GROUP BY Gender
select Sum(Salary) as Total_Salary_Of_Employees from EmployeeTable

--Avg salary
select Avg(Salary) as Average_Salary_Of_Male from EmployeeTable where Gender = 'M' GROUP BY Gender
select Avg(Salary) as Average_Salary_Of_Female from EmployeeTable where Gender = 'F' GROUP BY Gender
select Avg(Salary) as Average_Salary_Of_Employees from EmployeeTable

--Min Salary
select Min(Salary) as Minimum_Salary_Of_Male from EmployeeTable where Gender = 'M' GROUP BY Gender
select Min(Salary) as Minimum_Salary_Of_Female from EmployeeTable where Gender = 'F' GROUP BY Gender
select Min(Salary) as Minimum_Salary_Of_Employee from EmployeeTable

--Max salary
select Max(Salary) as Maximum_Salary_Of_Male from EmployeeTable where Gender = 'M' GROUP BY Gender
select Max(Salary) as Maximum_Salary_Of_Female from EmployeeTable where Gender = 'F' GROUP BY Gender
select Max(Salary) as Maximum_Salary_Of_Employee from EmployeeTable

--Count of employees
select Count(Id) as Number_Of_Male_Employees from EmployeeTable where Gender = 'M' GROUP BY Gender
select Count(Id) as Number_Of_Female_Employees from EmployeeTable where Gender = 'F' GROUP BY Gender
select Count(Id) as Total_Employees from EmployeeTable
