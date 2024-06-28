-- Nested and Correlated Queries (10)

-- 46. Select the employee with the highest salary.
select * from Employees where EmployeeSalary = (select max(EmployeeSalary) from Employees);

-- 47. Select employees whose salary is above the average salary.
select * from Employees where EmployeeSalary > (select avg(EmployeeSalary) from Employees);

-- 48. Select the second highest salary from the Employee table.
select * from Employees order by EmployeeSalary desc limit 1 offset 1;

-- Alternate solution
select max(EmployeeSalary) from Employees  where EmployeeSalary < (select max(EmployeeSalary) from Employees);

-- 49. Select the department with the most employees.
select DepartmentID, count(*) from Employees group by DepartmentID order by Employees desc limit 1;

-- 50. Select employees who earn more than the average salary of their department.
select * from Employees e where EmployeeSalary > (select avg(EmployeeSalary) from Employees where DepartmentID = e.DepartmentID);

-- 51. Select the nth highest salary (for example, 3rd highest).

-- Solution 1
-- select EmployeeSalary from Employees group by EmployeeSalary order by EmployeeSalary desc limit 1 offset n-1;

-- Alternate solution
select EmployeeSalary from Employees group by EmployeeSalary order by EmployeeSalary desc limit 1 offset 2;

-- 52. Select employees who are older than all employees in the HR department.
select * from Employees where EmployeeAge > (select max(EmployeeAge) from Employees where DepartmentID = 2 order by EmployeeAge desc limit 1);
-- Alternate Solution
-- select * from Employees where EmployeeAge > (select max(EmployeeAge) from Employees where DepartmentID = 2);

-- 53. Select departments where the average salary is greater than 55000.
select DepartmentID from Employees group by DepartmentID having avg(EmployeeSalary) > 55000;

-- 54. Select employees who work in a department with at least 2 projects.
select * from Employees where DepartmentID in (select DepartmentID from Projects group by DepartmentID having count(*) >= 2);

-- 55. Select employees who were hired on the same date as 'Jane Smith'.
select * from Employees where HireDate = (select HireDate from Employees where EmployeeName = 'Jane Smith');