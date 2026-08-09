-- ==================================
-- DAY 09 SOLUTIONS
-- ==================================
-- Q1 Create view for IT employees
CREATE VIEW it_employees AS
SELECT *
FROM employees
WHERE department = 'IT';
-- Q2 Create view for high salary employees
CREATE VIEW high_salary_employees AS
SELECT *
FROM employees
WHERE salary > 70000;
-- Q3 Replace existing view
CREATE OR REPLACE VIEW high_salary_employees AS
SELECT *
FROM employees
WHERE salary > 80000;
-- Q4 Drop a view
DROP VIEW high_salary_employees;
-- Q5 Create index on email
CREATE INDEX idx_email ON employees(email);
-- Q6 Create index on department
CREATE INDEX idx_department ON employees(department);
-- Q7 Start transaction + Q8 Update salary + Q9 Rollback
BEGIN;
UPDATE employees
SET salary = salary + 5000
WHERE emp_id = 1;
ROLLBACK;
-- Q10 Commit changes
BEGIN;
UPDATE employees
SET salary = salary + 5000
WHERE emp_id = 1;
COMMIT;
-- BONUS: Create materialized view
CREATE MATERIALIZED VIEW dept_salary_report AS
SELECT department,
    AVG(salary)
FROM employees
GROUP BY department;
-- Refresh materialized view
REFRESH MATERIALIZED VIEW dept_salary_report;
-- BONUS: Transaction with savepoint
BEGIN;
SAVEPOINT step1;
UPDATE employees
SET salary = salary + 1000
WHERE emp_id = 2;
ROLLBACK TO step1;
COMMIT;