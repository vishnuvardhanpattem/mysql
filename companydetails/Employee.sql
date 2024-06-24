
-- Create the Employees table
CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,
    EmployeeName VARCHAR(50),
    EmployeeAge INT,
    EmployeeSalary DECIMAL(10, 2),
    DepartmentID INT,
    HireDate DATE,
    FOREIGN KEY (DepartmentID) REFERENCES Departments(DepartmentID)
);

-- Insert data into Employees table
INSERT INTO Employees (EmployeeID, EmployeeName, EmployeeAge, EmployeeSalary, DepartmentID, HireDate) VALUES
(1, 'John Doe', 28, 50000, 1, '2020-01-15'),
(2, 'Janae Smith', 34, 60000, 2, '2019-07-23'),
(3, 'Bob Brown', 45, 80000, 1, '2018-02-12'),
(4, 'Alice Blue', 25, 45000, 3, '2021-03-22'),
(5, 'Charlie P.', 29, 50000, 2, '2019-12-01');

