
-- Create Student table
CREATE TABLE Student (
    student_id INT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    age INT,
    gender CHAR(1),
    department_id INT,
    enrollment_date DATE,
    FOREIGN KEY (department_id) REFERENCES Department(department_id)
);

-- Insert data into Student table
INSERT INTO Student (student_id, name, age, gender, department_id, enrollment_date) VALUES
(1, 'Alice Smith', 20, 'F', 1, '2021-09-01'),
(2, 'Bob Johnson', 22, 'M', 2, '2020-09-01'),
(3, 'Carol White', 21, 'F', 1, '2021-01-15'),
(4, 'Dave Brown', 23, 'M', 3, '2019-09-01'),
(5, 'Eve Davis', 20, 'F', 2, '2021-09-01');


