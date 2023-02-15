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
