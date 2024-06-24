-- Order By Queries (5)


-- 31. Select all employees ordered by their salary in ascending order.
select * from Employees order by EmployeeSalary;

-- 32. Select all employees ordered by their age in descending order.
select * from Employees order by EmployeeAge desc;

-- 33. Select all employees ordered by their hire date in ascending order.
select * from Employees order by HireDate;

-- 34. Select employees ordered by their department and then by their salary.
select * from Employees order by DepartmentID, EmployeeSalary;

-- 35. Select departments ordered by the total salary of their employees.
select DepartmentID, sum(EmployeeSalary) as TotalSalary from Employees group by DepartmentID order by TotalSalary;