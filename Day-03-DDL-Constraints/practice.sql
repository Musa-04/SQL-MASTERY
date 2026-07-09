-- =====================================
-- DAY 03 PRACTICE
-- =====================================

-- Q1 Create table students

-- Columns:
-- student_id PRIMARY KEY
-- name NOT NULL
-- email UNIQUE
-- age CHECK(age >=18)

------------------------------------------------

-- Q2 Add city column

------------------------------------------------

-- Q3 Add status column
-- default ACTIVE

------------------------------------------------

-- Q4 Create courses table

------------------------------------------------

-- Q5 Create enrollments table

------------------------------------------------

-- Q6 Create foreign key relationship

------------------------------------------------

-- Q7 Insert valid student

------------------------------------------------

-- Q8 Try duplicate email

------------------------------------------------

-- Q9 Try age < 18

------------------------------------------------

-- Q10 Drop a test table

------------------------------------------------

-- BONUS

-- Create Syncher Users Table

-- ==========================================
-- EXTRA PRACTICE (with solutions)
-- ==========================================

-- Q11
-- Add a column 'phone VARCHAR(15)' to the students table

-- SOLUTION:
ALTER TABLE students
ADD phone VARCHAR(15);

-- Q12
-- Change the 'city' column size to VARCHAR(100)

-- SOLUTION:
ALTER TABLE students
MODIFY COLUMN city VARCHAR(100);

-- Q13
-- Create an orders table with a FOREIGN KEY to students

-- SOLUTION:
CREATE TABLE orders (
    order_id   INT PRIMARY KEY,
    student_id INT NOT NULL,
    item       VARCHAR(100),
    amount     DECIMAL(10,2),
    FOREIGN KEY (student_id) REFERENCES students(student_id)
);