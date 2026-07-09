-- ==================================
-- DAY 06 PRACTICE
-- ==================================

-- Q1 Create students table

-- Q2 Create courses table

-- Q3 Create enrollments table

-- Q4 Insert sample data

------------------------------------------------

-- INNER JOIN

-- Q5 Show student names with courses

------------------------------------------------

-- LEFT JOIN

-- Q6 Show all students and courses

------------------------------------------------

-- RIGHT JOIN

-- Q7 Show all course enrollments

------------------------------------------------

-- FULL JOIN

-- Q8 Show all records

------------------------------------------------

-- SELF JOIN

-- Q9 Employee Manager Relationship

------------------------------------------------

-- CROSS JOIN

-- Q10 Show all student-course combinations

------------------------------------------------

-- BONUS

-- Create Syncher users table

-- Create predictions table

-- Join both tables

-- ==========================================
-- EXTRA PRACTICE (with solutions)
-- ==========================================

-- Q11
-- Show all employees and their department name
-- (include employees with no department)

-- SOLUTION:
SELECT e.emp_name,
       d.dept_name
FROM employees e
LEFT JOIN departments d
ON e.dept_id = d.dept_id;

-- Q12
-- Show departments that have NO employees assigned

-- SOLUTION:
SELECT d.dept_name
FROM departments d
LEFT JOIN employees e
ON d.dept_id = e.dept_id
WHERE e.emp_id IS NULL;

-- Q13
-- Show student names and course names for students
-- who are enrolled using INNER JOIN

-- SOLUTION:
SELECT s.name       AS student_name,
       c.course_name AS course
FROM students s
INNER JOIN enrollments e ON s.id = e.student_id
INNER JOIN courses c     ON e.course_id = c.id;