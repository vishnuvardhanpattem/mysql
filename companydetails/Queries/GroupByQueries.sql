-- Group By Queries (5)


-- 21. Select the total salary for each department.
select DepartmentID, sum(EmployeeSalary) as TotalSalary from Employees group by DepartmentID;

-- 22. Select the average age of employees in each department.
select DepartmentID, AVG(EmployeeAge) as AverageAge from Employees group by DepartmentID;

-- 23. Select the number of employees hired in each year.
select YEAR(HireDate) as HireYear, count(*) as NumberOfEmployees from Employees group by HireYear;

-- 24. Select the highest salary in each department.
select DepartmentID, MAX(EmployeeSalary) as MaximumSalary from Employees group by DepartmentID;

-- 25. Select the department with the highest average salary.
select DepartmentID, MAX(AverageSalary) as HighestAverageSalary from (select DepartmentID, AVG(EmployeeSalary) as AverageSalary from Employees group by DepartmentID) as AvgSalaryTable;

-- Alternatively, you can use a subquery to achieve the same result:
select DepartmentID, AVG(EmployeeSalary) as HighestAverageSalary from Employees group by DepartmentID order by AverageSalary desc limit 1;