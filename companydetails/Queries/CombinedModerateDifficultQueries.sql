-- Combined Moderate Difficulty Queries (10)


-- 56. Select the total salary of employees hired in the year 2020.
SELECT SUM(EmployeeSalary) as TotalSalary FROM Employees WHERE YEAR(HireDate) = 2020;

-- 57. Select the average salary of employees in each department, ordered by the average salary in descending order.
select avg(EmployeeSalary) as AverageSalary from Employees group by DepartmentID order by AverageSalary desc;

-- 58. Select departments with more than 1 employee and an average salary greater than 55000.
select DepartmentID,count(*) as NoOfEmployees,avg(EmployeeSalary) as AverageSalary from Employees group by DepartmentID having AverageSalary > 55000 and NoOfEmployees > 1;

-- 59. Select employees hired in the last 2 years, ordered by their hire date.
select *  from Employees where HireDate >= date_sub(curdate(), interval 2 year) order by HireDate;

-- 60. Select the total number of employees and the average salary for departments with more than 2 employees.
select DepartmentID,count(*) as NoOfEmployees, avg(EmployeeSalary) as AverageSalary from Employees group by DepartmentID having NoOfEmployees > 2;

-- 61. Select the name and salary of employees whose salary is above the average salary of their department.
select EmployeeName, EmployeeSalary from Employees e where EmployeeSalary > (select avg(EmployeeSalary) as AverageSalary from Employees where e.DepartmentID = DepartmentID);

-- 62. Select the names of employees who are hired on the same date as the oldest employee in the company.
select EmployeeName from Employees where HireDate = (select HireDate from Employees order by EmployeeAge desc limit 1);

-- 63. Select the department names along with the total number of projects they are working on,ordered by the number of projects.
select DepartmentName, count(*) as NoOfProjects from Projects group by DepartmentID order by NoOfProjects;

-- 64. Select the employee name with the highest salary in each department.
select EmployeeName, EmployeeSalary from Employees e where EmployeeSalary = (select max(EmployeeSalary) from Employees where DepartmentID = e.DepartmentID);

-- 65. Select the names and salaries of employees who are older than the average age of employees in their department.
select EmployeeName, EmployeeSalary from Employees e where EmployeeAge > (select avg(EmployeeAge) from Employees where e.DepartmentID = DepartmentID);