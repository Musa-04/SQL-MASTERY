-- ======================================
-- DAY 02 PRACTICE
-- ======================================

-- Q1 Display students older than 22

-- Q2 Display students from Bangalore

-- Q3 Display students whose age >= 25

-- Q4 Display students from Bangalore AND age > 22

-- Q5 Display students from Bangalore OR Mysore

-- Q6 Display students NOT from Bangalore

-- Q7 Display unique cities

-- Q8 Sort students by age ascending

-- Q9 Sort students by age descending

-- Q10 Display first 3 students

-- Q11 Find names starting with R

-- Q12 Find names ending with a

-- Q13 Find names containing ut

-- Q14 Find students age between 22 and 25

-- Q15 Find students from Bangalore and Mysore using IN

-- BONUS

-- Display youngest student

-- Display oldest student

-- Display top 2 oldest students

-- ==========================================
-- EXTRA PRACTICE (with solutions)
-- ==========================================

-- Q16
-- Find students whose name has exactly 6 characters

-- SOLUTION:
SELECT * FROM students WHERE name LIKE '______';

-- Q17
-- Display employees with salary NOT between 30000 and 60000

-- SOLUTION:
SELECT * FROM employees
WHERE salary NOT BETWEEN 30000 AND 60000;

-- Q18
-- Display all employees sorted by department ASC, then salary DESC

-- SOLUTION:
SELECT * FROM employees
ORDER BY department ASC, salary DESC;