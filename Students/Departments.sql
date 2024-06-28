-- Create Department table
CREATE TABLE Department (
    department_id INT PRIMARY KEY,
    name VARCHAR(50) NOT NULL
);


-- Insert data into Department table
INSERT INTO Department (department_id, name) VALUES
(1, 'Science'),
(2, 'Arts'),
(3, 'History');