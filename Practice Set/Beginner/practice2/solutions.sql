-- =====================================================
-- BEGINNER TO INTERMEDIATE SQL PRACTICE SET 2 - SOLUTIONS
-- =====================================================
-- Table: students
-- Columns: student_id, full_name, department, semester,
--          cgpa, city, admission_date
-- Compatible with: MySQL, PostgreSQL, SQLite
-- =====================================================

-- =====================================================
-- SECTION 1: SELECT (1-10)
-- =====================================================

-- Q1: Display all student records.
SELECT * FROM students;

-- Q2: Display student names only.
SELECT full_name FROM students;

-- Q3: Display student names and CGPA.
SELECT full_name, cgpa FROM students;

-- Q4: Display all departments.
SELECT department FROM students;

-- Q5: Display unique departments.
SELECT DISTINCT department FROM students;

-- Q6: Display unique cities.
SELECT DISTINCT city FROM students;

-- Q7: Display first 5 students.
SELECT * FROM students
LIMIT 5;

-- Q8: Display first 10 students.
SELECT * FROM students
LIMIT 10;

-- Q9: Display student IDs.
SELECT student_id FROM students;

-- Q10: Display admission dates.
SELECT admission_date FROM students;


-- =====================================================
-- SECTION 2: WHERE (11-25)
-- =====================================================

-- Q11: Students from Bangalore.
SELECT * FROM students
WHERE city = 'Bangalore';

-- Q12: Students from Mysore.
SELECT * FROM students
WHERE city = 'Mysore';

-- Q13: Students with CGPA greater than 8.5.
SELECT * FROM students
WHERE cgpa > 8.5;

-- Q14: Students with CGPA less than 8.
SELECT * FROM students
WHERE cgpa < 8;

-- Q15: Students in CSE department.
SELECT * FROM students
WHERE department = 'CSE';

-- Q16: Students in Semester 7.
SELECT * FROM students
WHERE semester = 7;

-- Q17: Students admitted after 2023-01-01.
SELECT * FROM students
WHERE admission_date > '2023-01-01';

-- Q18: Students admitted before 2023-01-01.
SELECT * FROM students
WHERE admission_date < '2023-01-01';

-- Q19: Students from Delhi and CSE.
SELECT * FROM students
WHERE city = 'Delhi'
  AND department = 'CSE';

-- Q20: Students from Bangalore with CGPA above 8.
SELECT * FROM students
WHERE city = 'Bangalore'
  AND cgpa > 8;

-- Q21: Students from Bangalore or Mysore.
SELECT * FROM students
WHERE city = 'Bangalore'
   OR city = 'Mysore';

-- Q22: Students not from Bangalore.
SELECT * FROM students
WHERE city <> 'Bangalore';

-- Q23: Students with CGPA between 8 and 9.
SELECT * FROM students
WHERE cgpa BETWEEN 8 AND 9;

-- Q24: Students in Semester 1 or 3.
SELECT * FROM students
WHERE semester IN (1, 3);

-- Q25: Students whose names start with 'A'.
SELECT * FROM students
WHERE full_name LIKE 'A%';


-- =====================================================
-- SECTION 3: ORDER BY (26-32)
-- =====================================================

-- Q26: Sort students by name.
SELECT * FROM students
ORDER BY full_name;

-- Q27: Sort by CGPA ascending.
SELECT * FROM students
ORDER BY cgpa;

-- Q28: Sort by CGPA descending.
SELECT * FROM students
ORDER BY cgpa DESC;

-- Q29: Sort by department then CGPA descending.
SELECT * FROM students
ORDER BY department, cgpa DESC;

-- Q30: Sort by admission date.
SELECT * FROM students
ORDER BY admission_date;

-- Q31: Sort by semester then name.
SELECT * FROM students
ORDER BY semester, full_name;

-- Q32: Show top 3 CGPA holders.
SELECT * FROM students
ORDER BY cgpa DESC
LIMIT 3;


-- =====================================================
-- SECTION 4: AGGREGATE FUNCTIONS (33-42)
-- =====================================================

-- Q33: Count total students.
SELECT COUNT(*) FROM students;

-- Q34: Highest CGPA.
SELECT MAX(cgpa) FROM students;

-- Q35: Lowest CGPA.
SELECT MIN(cgpa) FROM students;

-- Q36: Average CGPA.
SELECT AVG(cgpa) FROM students;

-- Q37: Count CSE students.
SELECT COUNT(*) FROM students
WHERE department = 'CSE';

-- Q38: Average CGPA of CSE.
SELECT AVG(cgpa) FROM students
WHERE department = 'CSE';

-- Q39: Highest CGPA in ISE.
SELECT MAX(cgpa) FROM students
WHERE department = 'ISE';

-- Q40: Lowest CGPA in ME.
SELECT MIN(cgpa) FROM students
WHERE department = 'ME';

-- Q41: Count students from Bangalore.
SELECT COUNT(*) FROM students
WHERE city = 'Bangalore';

-- Q42: Count students admitted after 2023.
SELECT COUNT(*) FROM students
WHERE admission_date > '2023-01-01';


-- =====================================================
-- SECTION 5: GROUP BY (43-50)
-- =====================================================

-- Q43: Student count by department.
SELECT department, COUNT(*) FROM students
GROUP BY department;

-- Q44: Student count by city.
SELECT city, COUNT(*) FROM students
GROUP BY city;

-- Q45: Average CGPA by department.
SELECT department, AVG(cgpa) FROM students
GROUP BY department;

-- Q46: Maximum CGPA by department.
SELECT department, MAX(cgpa) FROM students
GROUP BY department;

-- Q47: Minimum CGPA by city.
SELECT city, MIN(cgpa) FROM students
GROUP BY city;

-- Q48: Departments having more than 3 students.
SELECT department, COUNT(*) FROM students
GROUP BY department
HAVING COUNT(*) > 3;

-- Q49: Cities having average CGPA greater than 8.
SELECT city, AVG(cgpa) FROM students
GROUP BY city
HAVING AVG(cgpa) > 8;

-- Q50: Department with highest average CGPA.
SELECT department, AVG(cgpa) FROM students
GROUP BY department
ORDER BY AVG(cgpa) DESC
LIMIT 1;


-- =====================================================
-- SECTION 6: DML (51-55)
-- =====================================================

-- Q51: Insert a new student.
INSERT INTO students (full_name, department, semester, cgpa, city, admission_date)
VALUES ('Mustafeez Shaikh', 'CSE', 7, 8.90, 'Chikodi', CURRENT_DATE);

-- Q52: Update CGPA of student_id = 1.
UPDATE students
SET cgpa = 9.20
WHERE student_id = 1;

-- Q53: Change city of student_id = 5.
UPDATE students
SET city = 'Belagavi'
WHERE student_id = 5;

-- Q54: Delete student_id = 20.
DELETE FROM students
WHERE student_id = 20;

-- Q55: Increase CGPA by 0.10 for all students having CGPA below 9.
UPDATE students
SET cgpa = cgpa + 0.10
WHERE cgpa < 9;


-- =====================================================
-- SECTION 7: BONUS PRACTICE (56-60)
-- =====================================================

-- Q56: Students whose names end with 'a'.
SELECT * FROM students
WHERE full_name LIKE '%a';

-- Q57: Students whose second letter is 'r'.
SELECT * FROM students
WHERE full_name LIKE '_r%';

-- Q58: Display only CSE and ISE students.
SELECT * FROM students
WHERE department IN ('CSE', 'ISE');

-- Q59: Display students not in Semester 1.
SELECT * FROM students
WHERE semester <> 1;

-- Q60: Display students with CGPA greater than the average CGPA.
SELECT * FROM students
WHERE cgpa > (
    SELECT AVG(cgpa)
    FROM students
);
