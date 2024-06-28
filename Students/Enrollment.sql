-- Create Enrollment table
CREATE TABLE Enrollment (
    enrollment_id INT PRIMARY KEY,
    student_id INT,
    course_id INT,
    grade CHAR(1),
    FOREIGN KEY (student_id) REFERENCES Student(student_id),
    FOREIGN KEY (course_id) REFERENCES Course(course_id)
);



-- Insert data into Enrollment table
INSERT INTO Enrollment (enrollment_id, student_id, course_id, grade) VALUES
(1, '1', '1', 'A'),
(2, '1', '2', 'B'),
(3, '2', '1', 'B'),
(4, '2', '3', 'C'),
(5, '3', '4', 'A'),
(6, '3', '1', 'B'),
(7, '4', '5', 'C'),
(8, '4', '2', 'B'),
(9, '5', '3', 'A');
