-- Create Course table
CREATE TABLE Course (
    course_id INT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    credits INT,
    instructor_id INT,
    FOREIGN KEY (instructor_id) REFERENCES Instructor(instructor_id)
);


-- Insert data into Course table
INSERT INTO Course (course_id, name, credits, instructor_id) VALUES
(1, 'Math 101', 3, 1),
(2, 'English 101', 3, 2),
(3, 'History 101', 4, 3),
(4, 'Science 101', 4, 1),
(5, 'Art 101', 2, 2);
