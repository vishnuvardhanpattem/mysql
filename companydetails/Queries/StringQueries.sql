-- String Matching Queries (5)


-- 6. Select employees whose names start with 'J'.
select * from Employees where EmployeeName like 'J%';

-- 7. Select employees whose names end with 'e'.
select * from Employees where EmployeeName like '%e';

-- 8. Select employees whose names contain 'a'.
select * from Employees where EmployeeName like '%a%';

-- 9. Select employees whose names are exactly 9 characters long.
select * from Employees where length(EmployeeName) = 9;

-- 10. Select employees whose names have 'o' as the second character.
select * from Employees where EmployeeName like '_o%';

