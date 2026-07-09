-- =====================================
-- DAY 05 PRACTICE
-- =====================================

-- Q1 Count all employees

-- Q2 Calculate total salary

-- Q3 Calculate average salary

-- Q4 Find minimum salary

-- Q5 Find maximum salary

-- Q6 Count employees per department

-- Q7 Total salary per department

-- Q8 Average salary per department

-- Q9 Highest salary per department

-- Q10 Lowest salary per department

-- Q11 Departments having more than 2 employees

-- Q12 Departments with average salary > 50000

------------------------------------------------

-- BONUS

-- Count students per city

-- Average age per city

-- Highest age per city

-- Lowest age per city

-- ==========================================
-- EXTRA PRACTICE (with solutions)
-- ==========================================

-- Q13
-- Show department name and total salary,
-- only for departments with more than 3 employees

-- SOLUTION:
SELECT department,
       SUM(salary) AS total_salary
FROM employees
GROUP BY department
HAVING COUNT(*) > 3;

-- Q14
-- Find the department with the highest average salary

-- SOLUTION:
SELECT department,
       AVG(salary) AS avg_salary
FROM employees
GROUP BY department
ORDER BY avg_salary DESC
LIMIT 1;

-- Q15
-- Count how many employees earn above 50000 per department

-- SOLUTION:
SELECT department,
       COUNT(*) AS high_earners
FROM employees
WHERE salary > 50000
GROUP BY department;