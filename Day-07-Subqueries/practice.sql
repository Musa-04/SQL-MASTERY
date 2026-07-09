-- ==================================
-- DAY 07 PRACTICE
-- ==================================

-- Q1 Employees earning above average salary

-- Q2 Employees earning below average salary

-- Q3 Find highest paid employee

-- Q4 Find lowest paid employee

-- Q5 Find employees in departments
-- where salary > 60000

-- Q6 Departments having employees

-- Q7 Departments without employees

-- Q8 Find employees earning more
-- than department average

-- Q9 Find students enrolled in SQL course

-- Q10 Find users with cycle length
-- greater than average

-------------------------------------

-- BONUS

-- Find second highest salary

-- Find third highest salary

-- Find employees earning above
-- company average

-- ==========================================
-- EXTRA PRACTICE (with solutions)
-- ==========================================

-- Q11
-- Find employees who are NOT managers
-- (empno does not appear in any mgr column)

-- SOLUTION:
SELECT ename
FROM emp
WHERE empno NOT IN
(
    SELECT DISTINCT mgr
    FROM emp
    WHERE mgr IS NOT NULL
);

-- Q12
-- Find employees who earn more than
-- the average salary of their own department

-- SOLUTION:
SELECT e1.ename, e1.sal, e1.deptno
FROM emp e1
WHERE e1.sal >
(
    SELECT AVG(e2.sal)
    FROM emp e2
    WHERE e2.deptno = e1.deptno
);

-- Q13
-- Display department number and average salary
-- for departments where avg salary > overall avg salary

-- SOLUTION:
SELECT deptno,
       AVG(sal) AS dept_avg
FROM emp
GROUP BY deptno
HAVING AVG(sal) >
(
    SELECT AVG(sal)
    FROM emp
);