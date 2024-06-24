-- Basic Queries (5)


-- 1. Select all columns from the Employee table.
select * from Employees;

-- 2. Select only the name and salary columns from the Employee table.
select EmployeeName, EmployeeSalary from Employees;

-- 3. Select employees who are older than 30.
select * from Employees where EmployeeAge > 30;

-- 4. Select the names of all departments.
select DepartmentName from Departments;

-- 5. Select employees who work in the IT department.
select * from Employees where DepartmentID = 1;