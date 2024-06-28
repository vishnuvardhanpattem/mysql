-- Create Instructor table
CREATE TABLE Instructor (
    instructor_id INT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    department_id INT,
    FOREIGN KEY (department_id) REFERENCES Department(department_id)
);


-- Insert data into Instructor table
INSERT INTO Instructor (instructor_id, name, department_id) VALUES
(1, 'Prof. Adams', 1),
(2, 'Dr. Baker', 2),
(3, 'Prof. Clark', 3);