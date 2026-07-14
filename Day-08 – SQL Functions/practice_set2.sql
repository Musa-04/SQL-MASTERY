-- =========================================================================
--  Day 08 - SQL Functions | Personal Practice Queries
--  Target Table: employees (contains first_name, last_name, salary, etc.)
-- =========================================================================

-- =========================================================================
--  SECTION 1: String Functions
-- =========================================================================

-- 1. Convert employee first names to uppercase
SELECT first_name, UPPER(first_name) AS first_name_upper 
FROM employees;

-- 2. Convert employee first names to lowercase
SELECT first_name, LOWER(first_name) AS first_name_lower 
FROM employees;

-- 3. Display all columns from the employees table to inspect the schema
SELECT * 
FROM employees;

-- 4. Calculate character length of the first name for employee ID 1001
SELECT first_name, LENGTH(first_name) AS first_name_length 
FROM employees 
WHERE employee_id = 1001;

-- 5. Calculate character length of the last name for employee ID 1002
SELECT last_name, LENGTH(last_name) AS last_name_length 
FROM employees 
WHERE employee_id = 1002;

-- 6. Basic string length demonstration using a literal string
SELECT LENGTH('Hello World') AS string_length;

-- 7. Basic string concatenation demonstration
SELECT CONCAT('Hello ', 'World') AS concatenated_string;

-- 8. Concatenate first_name and last_name with a space in between
SELECT CONCAT(first_name, ' ', last_name) AS full_name
FROM employees;


-- =========================================================================
--  SECTION 2: Aggregate Functions (Used on employees table)
-- =========================================================================

-- 9. Count the number of male employees
SELECT COUNT(gender) AS male_count 
FROM employees 
WHERE gender = 'M';

-- 10. Count the number of female employees
SELECT COUNT(gender) AS female_count 
FROM employees 
WHERE gender = 'F';

-- 11. Calculate the average salary of all employees
SELECT AVG(salary) AS average_salary 
FROM employees;

-- 12. Calculate the total salary sum of all employees
SELECT SUM(salary) AS total_salary_cost 
FROM employees;

-- 13. Find the maximum salary among all employees
SELECT MAX(salary) AS highest_salary 
FROM employees;

-- 14. Count the number of employees earning less than 125,000
SELECT COUNT(salary) AS lower_earners_count 
FROM employees 
WHERE salary < 125000;

-- 15. Retrieve all salaries to inspect distribution
SELECT salary 
FROM employees;


-- =========================================================================
--  SECTION 3: String Clean-up & Replacement Functions
-- =========================================================================

-- 16. Replace a word in a string literal
SELECT REPLACE('Hello World', 'World', '') AS replaced_string;

-- 17. Temporarily replace email domains from '.com' to '.in' for all employees
SELECT email, REPLACE(email, '.com', '.in') AS local_email
FROM employees;

-- 18. Retrieve all emails to inspect original values
SELECT email 
FROM employees;


-- =========================================================================
--  SECTION 4: Numeric Functions
-- =========================================================================

-- 19. Round a decimal value to 2 decimal places
SELECT ROUND(123.4567, 2) AS rounded_value;

-- 20. Floor function: largest integer less than or equal to the numeric expression
SELECT FLOOR(23.99) AS floored_value;

-- 21. Ceiling function: smallest integer greater than or equal to the numeric expression
SELECT CEILING(23.01) AS ceiling_value;


-- =========================================================================
--  SECTION 5: Date and Time Functions
-- =========================================================================

-- 22. Retrieve current time
SELECT CURRENT_TIME AS current_time_val;

-- 23. Retrieve current date
SELECT CURRENT_DATE AS current_date_val;

-- 24. Retrieve current timestamp (date and time combined)
SELECT CURRENT_TIMESTAMP AS current_timestamp_val;

-- 25. Calculate age based on a birth date (PostgreSQL syntax)
SELECT AGE('2003-07-22') AS age_duration;

-- 26. Extract the year component from the current date
SELECT EXTRACT(YEAR FROM CURRENT_DATE) AS current_year;


-- =========================================================================
--  SECTION 6: Conditional (CASE) Expressions
-- =========================================================================

-- 27. Categorize employees based on salary level (High/Medium/Low)
-- Note: Fixed column reference 'name' to 'first_name' to match employees schema
SELECT first_name,
       salary,
       CASE
           WHEN salary >= 70000 THEN 'High'
           WHEN salary >= 50000 THEN 'Medium'
           ELSE 'Low'
       END AS salary_level
FROM employees;

-- 28. Helper query to show table schema and verify column names
SHOW COLUMNS FROM employees;

-- 29. Categorize employees based on salary level (High/Medium/Basic/Low)
SELECT first_name,
       salary,
       CASE
           WHEN salary >= 70000 THEN 'High'
           WHEN salary >= 50000 THEN 'Medium'
           WHEN salary =  48000 THEN 'BASIC'
           ELSE 'Low'
       END AS salary_level
FROM employees;

-- 30. Classify employees' economic status based on salary threshold of 60,000
SELECT first_name,
       salary,
       CASE
           WHEN salary >= 60000 THEN 'Rich'
           ELSE 'Average'
       END AS status
FROM employees;

-- 31. Determine bonus category for employees based on salary ranges
SELECT first_name,
       salary,
       CASE
           WHEN salary >= 80000 THEN 'Excellent Bonus'
           WHEN salary >= 60000 THEN 'Good Bonus'
           ELSE 'Normal Bonus'
       END AS bonus_category
FROM employees;

-- 32. Determine whether salary amount is even or odd (using modulo)
SELECT first_name,
       salary,
       CASE
           WHEN MOD(salary, 2) = 0 THEN 'Even'
           ELSE 'Odd'
       END AS salary_type
FROM employees;

-- 33. Classify eligibility based on a 50,000 salary threshold
SELECT first_name,
       salary,
       CASE
           WHEN salary >= 50000 THEN 'Eligible'
           ELSE 'Not Eligible'
       END AS eligibility
FROM employees;

-- 34. Classify eligibility based on a 30,000 salary threshold
SELECT first_name,
       salary,
       CASE 
           WHEN salary >= 30000 THEN 'Eligible'
           ELSE 'Not'
       END AS eligible
FROM employees;

-- 35. Translate department IDs to human-readable names
SELECT first_name,
       department_id,
       CASE  
           WHEN department_id = 103 THEN 'Admin'
           WHEN department_id = 104 THEN 'HR'
           WHEN department_id = 105 THEN 'IT'
           WHEN department_id = 106 THEN 'Finance'
           ELSE 'Others'
       END AS department_name
FROM employees;

-- 36. Categorize employee hiring period relative to the start of the COVID-19 pandemic
SELECT first_name,
       hire_date,
       CASE
           WHEN hire_date < '2020-03-01' THEN 'Before Covid'
           ELSE 'After Covid'
       END AS joining_time
FROM employees;

-- 37. Calculate yearly salary and categorize it
SELECT first_name,
       salary,
       salary * 12 AS yearly_salary,
       CASE
           WHEN salary * 12 >= 800000 THEN 'High'
           WHEN salary * 12 >= 600000 THEN 'Medium'
           ELSE 'Low'
       END AS category
FROM employees;

-- 38. Calculate hypothetical new salary with custom increments based on salary thresholds
SELECT first_name,
       salary,
       CASE
           WHEN salary >= 70000 THEN salary + 10000
           WHEN salary >= 50000 THEN salary + 5000
           ELSE salary + 2000
       END AS new_salary
FROM employees;

-- 39. Identify email service providers based on domain pattern matching
SELECT first_name,
       email,
       CASE
           WHEN email LIKE '%gmail.com' THEN 'Gmail'
           WHEN email LIKE '%yahoo.com' THEN 'Yahoo'
           WHEN email LIKE '%outlook.com' THEN 'Outlook'
           ELSE 'Other'
       END AS provider
FROM employees;

-- 40. Check phone status availability
SELECT first_name,
       phone,
       CASE
           WHEN phone IS NULL THEN 'Not Available'
           ELSE 'Available'
       END AS phone_status
FROM employees;

-- 41. Determine risk priority based on salary and department combination
SELECT first_name,
       salary,
       department_id,
       CASE
           WHEN salary > 90000 AND department_id = 3 THEN 'Critical'
           WHEN salary > 70000 THEN 'High'
           WHEN salary > 50000 THEN 'Medium'
           ELSE 'Low'
       END AS risk_level
FROM employees;

-- 42. Map employees to salary bands
SELECT first_name,
       salary,
       CASE
           WHEN salary >= 90000 THEN 'A'
           WHEN salary >= 70000 THEN 'B'
           WHEN salary >= 50000 THEN 'C'
           ELSE 'D'
       END AS salary_band
FROM employees;

-- 43. Determine priority level based on department and salary combination
SELECT first_name,
       salary,
       department_id,
       CASE
           WHEN salary >= 70000 AND department_id = 3 THEN 'High Priority'
           WHEN salary >= 50000 THEN 'Medium Priority'
           ELSE 'Low Priority'
       END AS priority_level
FROM employees;


-- =========================================================================
--  SECTION 7: DML (Data Manipulation Language) Updates
-- =========================================================================

-- 44. Update salaries dynamically based on department increments
-- Note: Fixed the department_id logic to avoid duplicate conditions (changed second 104 to 105)
UPDATE employees
SET salary = CASE
    WHEN department_id = 103 THEN salary * 1.20
    WHEN department_id = 104 THEN salary * 1.15
    WHEN department_id = 105 THEN salary * 1.10 -- Corrected from duplicate 104 to 105
    ELSE salary * 1.05
END;
