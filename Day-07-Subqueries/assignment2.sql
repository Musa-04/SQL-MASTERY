-- ============================================================
--  Day-07 – Subqueries | Assignment 2 Solutions (MySQL)
--  Tables used: EMP, DEPT
-- ============================================================


-- ─────────────────────────────────────────────────────────────
-- Q1. Select all employees and salary who are earning more
--     than employee 7839.
-- ─────────────────────────────────────────────────────────────
SELECT ename, sal
FROM emp
WHERE sal >
(
    SELECT sal
    FROM emp
    WHERE empno = 7839
);


-- ─────────────────────────────────────────────────────────────
-- Q2. Select employee name, salary, employee 7839's salary
--     for employees earning more than employee 7839.
-- ─────────────────────────────────────────────────────────────
SELECT ename,
       sal,
       (
           SELECT sal
           FROM emp
           WHERE empno = 7839
       ) AS king_salary
FROM emp
WHERE sal >
(
    SELECT sal
    FROM emp
    WHERE empno = 7839
);


-- ─────────────────────────────────────────────────────────────
-- Q3. Select all details of employees who belong to the same
--     department as employee 7839.
-- ─────────────────────────────────────────────────────────────
SELECT *
FROM emp
WHERE deptno =
(
    SELECT deptno
    FROM emp
    WHERE empno = 7839
);


-- ─────────────────────────────────────────────────────────────
-- Q4. Select employee names, salary, and average salary of all
--     employees who are earning more than the average salary.
-- ─────────────────────────────────────────────────────────────
SELECT ename,
       sal,
       (
           SELECT AVG(sal)
           FROM emp
       ) AS avg_salary
FROM emp
WHERE sal >
(
    SELECT AVG(sal)
    FROM emp
);


-- ─────────────────────────────────────────────────────────────
-- Q5. Select all employee details who were hired before BLAKE.
-- ─────────────────────────────────────────────────────────────
SELECT *
FROM emp
WHERE hiredate <
(
    SELECT hiredate
    FROM emp
    WHERE ename = 'BLAKE'
);


-- ─────────────────────────────────────────────────────────────
-- Q6. Select employee names and salary who are earning more
--     than BLAKE but less than KING.
-- ─────────────────────────────────────────────────────────────
SELECT ename,
       sal
FROM emp
WHERE sal >
(
    SELECT sal
    FROM emp
    WHERE ename = 'BLAKE'
)
AND sal <
(
    SELECT sal
    FROM emp
    WHERE ename = 'KING'
);


-- ─────────────────────────────────────────────────────────────
-- Q7. Select department numbers which have more employees
--     than department 10.
-- ─────────────────────────────────────────────────────────────
SELECT deptno
FROM emp
GROUP BY deptno
HAVING COUNT(*) >
(
    SELECT COUNT(*)
    FROM emp
    WHERE deptno = 10
);


-- ─────────────────────────────────────────────────────────────
-- Q8. Select department names which have more employees
--     working than department 10.
-- ─────────────────────────────────────────────────────────────
SELECT d.dname
FROM dept d
JOIN emp e
ON d.deptno = e.deptno
GROUP BY d.deptno, d.dname
HAVING COUNT(*) >
(
    SELECT COUNT(*)
    FROM emp
    WHERE deptno = 10
);


-- ─────────────────────────────────────────────────────────────
-- Q9. Select department names which have more employees
--     working than the 'ACCOUNTING' department.
-- ─────────────────────────────────────────────────────────────
SELECT d.dname
FROM dept d
JOIN emp e
ON d.deptno = e.deptno
GROUP BY d.deptno, d.dname
HAVING COUNT(*) >
(
    SELECT COUNT(*)
    FROM emp
    WHERE deptno =
    (
        SELECT deptno
        FROM dept
        WHERE dname = 'ACCOUNTING'
    )
);


-- ─────────────────────────────────────────────────────────────
-- Q10. Display the 3rd highest salary using subquery
--      (Without Ranking Functions).
-- ─────────────────────────────────────────────────────────────

-- Method 1 (Recommended) – Nested MAX approach
SELECT MAX(sal) AS third_highest_salary
FROM emp
WHERE sal <
(
    SELECT MAX(sal)
    FROM emp
    WHERE sal <
    (
        SELECT MAX(sal)
        FROM emp
    )
);

-- Method 2 – Using DISTINCT with correlated subquery
SELECT DISTINCT sal
FROM emp e1
WHERE 2 =
(
    SELECT COUNT(DISTINCT sal)
    FROM emp e2
    WHERE e2.sal > e1.sal
);
