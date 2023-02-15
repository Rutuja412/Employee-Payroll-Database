--Welcome
--Create UC1
Create database EMPLOYEE_PAYROLL
-- UC-2 Create Employee_Payroll Table
create Table EmployeeTable
(
id int identity primary key,
name varchar(200) not null,
salary money not null,
start_Date date not null
)