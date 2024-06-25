-- Join Queries (10)

-- 36. Select employee names along with their department names.
select e.EmployeeName, d.DepartmentName from Employees e join Departments d on e.DepartmentID = d.DepartmentID;

-- 37. Select project names along with the department names they belong to.
select p.ProjectName, d.DepartmentName from Departments d join Projects p on d.DepartmentID = p.DepartmentID;

-- 38. Select employee names and their corresponding project names.
select e.EmployeeName, p.ProjectName from Employees e join Projects p on e.DepartmentID = p.DepartmentID;

-- 39. Select all employees and their departments, including those without a department.
select e.EmployeeID,e.EmployeeName,d.DepartmentName from Employees e left join Departments d on e.DepartmentID = d.DepartmentID;

-- 40. Select all departments and their employees, including departments without employees.
select e.EmployeeID,e.EmployeeName,d.DepartmentName from Employees e right join Departments d on e.DepartmentID = d.DepartmentID;

-- 41. Select employees who are not assigned to any project.
select e.EmployeeID,e.EmployeeName,p.ProjectName from Employees e join Projects p on e.DepartmentID = p.DepartmentID where p.ProjectID is null;

-- 42. Select employees and the number of projects their department is working on.
select e.EmployeeName,count(p.ProjectID) from Employees e left join Projects p on e.DepartmentID = p.DepartmentID group by e.EmployeeName;

-- 43. Select the departments that have no employees.
select e.EmployeeName, d.DepartmentName from Employees e right join Departments d on e.DepartmentID = d.DepartmentID where e.EmployeeID is null;

-- 44. Select employee names who share the same department with 'John Doe'.
select e.EmployeeName from Employees e join Employees e2 on e.DepartmentID = e2.DepartmentID where e2.EmployeeName = 'John Doe';


-- 45. Select the department name with the highest average salary.
select d.DepartmentName, AVG(e.EmployeeSalary) as AverageSalary from Employees e join Departments d on e.DepartmentID = d.DepartmentID group by d.DepartmentName order by AverageSalary desc limit 1;