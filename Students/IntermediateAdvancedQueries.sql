
-- 1. Find all students who are enrolled in at least one course.
select distinct student_id from Enrollment;
-- Alternate Solution
select * from student where student_id in (select distinct student_id from Enrollment);

-- 2. List the names of students who are not enrolled in any courses.
select * from student where student_id not in (select distinct student_id from Enrollment);

-- 3. Find the average grade for each student.
select student_id, avg(grade) from Enrollment group by student_id;

-- 4. List the courses along with the number of students enrolled in each course.
select course_id, count(student_id) from Enrollment group by course_id;

-- 5. Find the department with the highest number of students.
select department_id, count(student_id) from student group by department_id order by count(student_id) desc limit 1;

-- 6. List all students along with the total credits they are enrolled in.
select student_id, sum(credits) from Enrollment e join Course c on e.course_id = c.course_id group by student_id;

-- 7. Find the courses taught by 'Prof. Adams'.
select course_id, name from Course where instructor_id = (select instructor_id from Instructor where name = 'Prof. Adams');
-- Alternate Solution
select c.course_id, c.name from Course c join Instructor i on c.instructor_id = i.instructor_id where i.name = 'Prof. Adams';


-- 8. List students who have enrolled in both 'Math 101' and 'Science 101'.


9. Find the highest grade achieved in each course.
10. List the courses with more than 2 students enrolled.