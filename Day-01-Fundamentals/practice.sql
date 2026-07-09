-- ==========================================
-- DAY 01 PRACTICE QUESTIONS
-- ==========================================

-- Q1
-- Create a database named company_db

-- Write your solution below

-- Q2
-- Create table employees

-- Columns:
-- id
-- name
-- salary
-- department

-- Q3
-- Insert 5 employee records

-- Q4
-- Display all employees

-- Q5
-- Display only employee names

-- Q6
-- Display employee name and salary

-- Q7
-- Create table products

-- Columns:
-- product_id
-- product_name
-- price

-- Q8
-- Insert 5 products

-- Q9
-- Display all products

-- Q10
-- Display only product names

-- ==========================================
-- EXTRA PRACTICE (with solutions)
-- ==========================================

-- Q11
-- Display only employee name and department

-- SOLUTION:
SELECT name, department FROM employees;

-- Q12
-- Show the structure of the students table

-- SOLUTION:
DESCRIBE students;

-- Q13
-- Create a database named school_db, use it,
-- then create a table named teachers with:
-- teacher_id INT, teacher_name VARCHAR(100), subject VARCHAR(50)

-- SOLUTION:
CREATE DATABASE school_db;
USE school_db;

CREATE TABLE teachers (
    teacher_id   INT,
    teacher_name VARCHAR(100),
    subject      VARCHAR(50)
);
