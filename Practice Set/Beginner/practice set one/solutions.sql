-- =====================================================
-- BEGINNER SQL PRACTICE SET - SOLUTIONS
-- =====================================================
-- Table: employees
-- Columns: employee_id, employee_name, department,
--          salary, city, joining_date
-- Compatible with: MySQL, PostgreSQL, SQLite
-- =====================================================

-- =====================================================
-- SECTION 1: BASIC SELECT
-- =====================================================

-- Q1: Display all employee records.
SELECT * FROM employees;

-- Q2: Display employee names only.
SELECT employee_name FROM employees;

-- Q3: Display employee names and salaries.
SELECT employee_name, salary FROM employees;

-- Q4: Display unique cities.
SELECT DISTINCT city FROM employees;

-- Q5: Display unique departments.
SELECT DISTINCT department FROM employees;

-- Q6: Display the first 5 employees.
SELECT * FROM employees
LIMIT 5;

-- Q7: Display the first 10 employees.
SELECT * FROM employees
LIMIT 10;

-- Q8: Display all salaries.
SELECT salary FROM employees;

-- Q9: Display joining dates.
SELECT joining_date FROM employees;

-- Q10: Display employee IDs.
SELECT employee_id FROM employees;


-- =====================================================
-- SECTION 2: WHERE CLAUSE
-- =====================================================

-- Q11: Display all employees from Bangalore.
SELECT * FROM employees
WHERE city = 'Bangalore';

-- Q12: Display all employees from Mysore.
SELECT * FROM employees
WHERE city = 'Mysore';

-- Q13: Display employees with a salary greater than 50,000.
SELECT * FROM employees
WHERE salary > 50000;

-- Q14: Display employees with a salary less than 30,000.
SELECT * FROM employees
WHERE salary < 30000;

-- Q15: Display employees with a salary of 70,000 or more.
SELECT * FROM employees
WHERE salary >= 70000;

-- Q16: Display all employees in the IT department.
SELECT * FROM employees
WHERE department = 'IT';

-- Q17: Display all employees in the HR department.
SELECT * FROM employees
WHERE department = 'HR';

-- Q18: Display all employees whose city is Delhi.
SELECT * FROM employees
WHERE city = 'Delhi';

-- Q19: Display employees who joined after 2023-01-01.
SELECT * FROM employees
WHERE joining_date > '2023-01-01';

-- Q20: Display employees who joined before 2022-01-01.
SELECT * FROM employees
WHERE joining_date < '2022-01-01';


-- =====================================================
-- SECTION 3: ORDER BY
-- =====================================================

-- Q21: Sort employees by salary in ascending order.
SELECT * FROM employees
ORDER BY salary ASC;

-- Q22: Sort employees by salary in descending order.
SELECT * FROM employees
ORDER BY salary DESC;

-- Q23: Sort employees alphabetically by name.
SELECT * FROM employees
ORDER BY employee_name ASC;

-- Q24: Sort employees by joining date (oldest first).
SELECT * FROM employees
ORDER BY joining_date ASC;

-- Q25: Sort employees by department (A-Z), then by salary (high to low).
SELECT * FROM employees
ORDER BY department ASC, salary DESC;


-- =====================================================
-- SECTION 4: AGGREGATE FUNCTIONS
-- =====================================================

-- Q26: Count the total number of employees.
SELECT COUNT(*) AS total_employees
FROM employees;

-- Q27: Find the highest salary.
SELECT MAX(salary) AS highest_salary
FROM employees;

-- Q28: Find the lowest salary.
SELECT MIN(salary) AS lowest_salary
FROM employees;

-- Q29: Find the average salary.
SELECT AVG(salary) AS average_salary
FROM employees;

-- Q30: Find the total salary payout.
SELECT SUM(salary) AS total_salary
FROM employees;

-- Q31: Count employees based in Bangalore.
SELECT COUNT(*) AS bangalore_employees
FROM employees
WHERE city = 'Bangalore';

-- Q32: Count employees in the IT department.
SELECT COUNT(*) AS it_employees
FROM employees
WHERE department = 'IT';

-- Q33: Find the average salary in the IT department.
SELECT AVG(salary) AS avg_it_salary
FROM employees
WHERE department = 'IT';

-- Q34: Find the highest salary in the HR department.
SELECT MAX(salary) AS highest_hr_salary
FROM employees
WHERE department = 'HR';

-- Q35: Find the minimum salary in the Marketing department.
SELECT MIN(salary) AS minimum_marketing_salary
FROM employees
WHERE department = 'Marketing';


-- =====================================================
-- SECTION 5: GROUP BY & HAVING
-- =====================================================

-- Q36: Show employee count grouped by department.
SELECT department, COUNT(*) AS employee_count
FROM employees
GROUP BY department;

-- Q37: Show employee count grouped by city.
SELECT city, COUNT(*) AS employee_count
FROM employees
GROUP BY city;

-- Q38: Show average salary grouped by department.
SELECT department, AVG(salary) AS average_salary
FROM employees
GROUP BY department;

-- Q39: Show maximum salary grouped by department.
SELECT department, MAX(salary) AS maximum_salary
FROM employees
GROUP BY department;

-- Q40: Show minimum salary grouped by department.
SELECT department, MIN(salary) AS minimum_salary
FROM employees
GROUP BY department;

-- Q41: Show total salary payout grouped by department.
SELECT department, SUM(salary) AS total_salary
FROM employees
GROUP BY department;

-- Q42: Show departments that have more than 5 employees.
SELECT department, COUNT(*) AS employee_count
FROM employees
GROUP BY department
HAVING COUNT(*) > 5;

-- Q43: Show cities that have more than 3 employees.
SELECT city, COUNT(*) AS employee_count
FROM employees
GROUP BY city
HAVING COUNT(*) > 3;

-- Q44: Show average salary grouped by city.
SELECT city, AVG(salary) AS average_salary
FROM employees
GROUP BY city;

-- Q45: Find the department with the highest average salary.
SELECT department, AVG(salary) AS average_salary
FROM employees
GROUP BY department
ORDER BY average_salary DESC
LIMIT 1;


-- =====================================================
-- SECTION 6: DML (Data Manipulation Language)
-- =====================================================

-- Q46: Insert a new employee.
INSERT INTO employees
  (employee_id, employee_name, department, salary, city, joining_date)
VALUES
  (101, 'Rahul Sharma', 'IT', 60000, 'Bangalore', '2025-01-15');

-- Q47: Update the salary of employee_id = 1 to 70,000.
UPDATE employees
SET salary = 70000
WHERE employee_id = 1;

-- Q48: Change the department of employee_id = 5 to 'Marketing'.
UPDATE employees
SET department = 'Marketing'
WHERE employee_id = 5;

-- Q49: Delete the employee with employee_id = 10.
DELETE FROM employees
WHERE employee_id = 10;

-- Q50: Increase all employees' salaries by 10%.
UPDATE employees
SET salary = salary * 1.10;
