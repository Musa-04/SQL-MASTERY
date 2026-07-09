-- ======================================
-- DAY 04 PRACTICE
-- ======================================

-- Q1 Insert one student

-- Q2 Insert 5 students

-- Q3 Insert specific columns only

-- Q4 Update city of student id=1

-- Q5 Update age of student id=2

-- Q6 Update age and city of student id=3

-- Q7 Delete student id=5

-- Q8 Delete students from Mysore

-- Q9 Insert 3 more students

-- Q10 Update all Bangalore students to Bengaluru

-------------------------------------------------

-- BONUS

-- Create employees table

-- Insert 10 employees

-- Update salaries

-- Delete one employee

-- Display final result

-- ==========================================
-- EXTRA PRACTICE (with solutions)
-- ==========================================

-- Q11
-- Insert a new student with only id and name (leave others NULL)

-- SOLUTION:
INSERT INTO students (id, name)
VALUES (10, 'Musa');

-- Q12
-- Increase salary by 15% for all employees in 'Sales' department

-- SOLUTION:
UPDATE employees
SET salary = salary * 1.15
WHERE department = 'Sales';

-- Q13
-- Delete all employees who have NULL in the city column

-- SOLUTION:
DELETE FROM employees
WHERE city IS NULL;