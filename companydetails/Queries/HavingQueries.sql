-- Having Queries (5)


-- 26. Select departments with more than 2 employees.
select DepartmentID,count(*) as NumberOfEmployees from Employees group by DepartmentID having count(*) > 2;


-- 27. Select departments with an average salary greater than 55000.
select DepartmentID, AVG(EmployeeSalary) as AverageSalary from Employees group by DepartmentID having AVG(EmployeeSalary) > 55000;

-- 28. Select years with more than 1 employee hired.
select YEAR(HireDate),count(*) as NoOfEmployees from Employees group by YEAR(HireDate) having count(*) > 1;

-- 29. Select departments with a total salary expense less than 100000.
select DepartmentID, sum(EmployeeSalary) as TotalSalary from Employees group by DepartmentID having sum(EmployeeSalary) < 100000;

-- 30. Select departments with the maximum salary above 75000.
select DepartmentID, MAX(EmployeeSalary) as MaximumSalary from Employees group by DepartmentID having max(EmployeeSalary) > 75000;
