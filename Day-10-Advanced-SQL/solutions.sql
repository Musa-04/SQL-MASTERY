-- ==================================
-- DAY 10 SOLUTIONS
-- ==================================
-- Q1 CTE for high salary employees
WITH high_salary AS (
    SELECT *
    FROM employees
    WHERE salary > 70000
)
SELECT *
FROM high_salary;
-- Q3 ROW_NUMBER()
SELECT emp_name,
    salary,
    ROW_NUMBER() OVER(
        ORDER BY salary DESC
    )
FROM employees;
-- Q4 RANK()
SELECT emp_name,
    salary,
    RANK() OVER(
        ORDER BY salary DESC
    )
FROM employees;
-- Q5 DENSE_RANK()
SELECT emp_name,
    salary,
    DENSE_RANK() OVER(
        ORDER BY salary DESC
    )
FROM employees;
-- Q7 Find second highest salary
WITH ranked AS (
    SELECT *,
        DENSE_RANK() OVER(
            ORDER BY salary DESC
        ) rnk
    FROM employees
)
SELECT *
FROM ranked
WHERE rnk = 2;
-- Q8 LEAD()
SELECT emp_name,
    salary,
    LEAD(salary) OVER(
        ORDER BY salary
    ) AS next_salary
FROM employees;
-- Q9 LAG()
SELECT emp_name,
    salary,
    LAG(salary) OVER(
        ORDER BY salary
    ) AS previous_salary
FROM employees;
-- Q10 Rank employees department-wise
SELECT emp_name,
    department,
    salary,
    RANK() OVER(
        PARTITION BY department
        ORDER BY salary DESC
    ) AS dept_rank
FROM employees;
-- BONUS: Highest paid employee per department
WITH dept_ranked AS (
    SELECT *,
        ROW_NUMBER() OVER(
            PARTITION BY department
            ORDER BY salary DESC
        ) AS rn
    FROM employees
)
SELECT *
FROM dept_ranked
WHERE rn = 1;
-- BONUS: Lowest paid employee per department
WITH dept_ranked AS (
    SELECT *,
        ROW_NUMBER() OVER(
            PARTITION BY department
            ORDER BY salary ASC
        ) AS rn
    FROM employees
)
SELECT *
FROM dept_ranked
WHERE rn = 1;
-- BONUS: Track salary changes using LAG
SELECT emp_name,
    salary,
    LAG(salary) OVER(
        ORDER BY emp_id
    ) AS previous_salary,
    salary - LAG(salary) OVER(
        ORDER BY emp_id
    ) AS salary_change
FROM employees;