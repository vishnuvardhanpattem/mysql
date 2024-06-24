-- Date Queries (5)


-- 11. Select employees hired in the year 2020.
select * from Employees where YEAR(HireDate) = 2020;

-- 12. Select employees hired in January of any year. 
select * from Employees where MONTHNAME(HireDate) = 'January';

-- 13. Select employees hired before 2019.
select * from Employees where YEAR(HireDate) < 2019;

-- 14. Select employees hired on or after March 1, 2021.
select * from Employees where HireDate >= '2021-03-01';

-- 15. Select employees hired in the last 2 years.
select * from Employees where HireDate >= DATE_SUB(CURDATE(), interval 2 YEAR);