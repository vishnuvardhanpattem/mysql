-- Aggregate Queries (5)



-- 16. Select the total salary of all employees.
select sum(EmployeeSalary) as TotalSalary from Employees;

-- 17. Select the average salary of employees.
select AVG(EmployeeSalary) as AverageSalary from Employees;

-- 18. Select the minimum salary in the Employee table.
select MIN(EmployeeSalary) as MinimumSalary from Employees;

-- 19. Select the number of employees in each department.
select DepartmentID, count(*) as NumberOfEmployees from Employees group by DepartmentID;

-- 20. Select the average salary of employees in each department.
select DepartmentID, AVG(EmployeeSalary) as AverageSalary from Employees group by DepartmentID;