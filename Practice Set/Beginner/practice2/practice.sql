-- =====================================================
-- BEGINNER TO INTERMEDIATE SQL PRACTICE SET 2 - QUESTIONS
-- =====================================================
-- Table: students
-- Columns: student_id, full_name, department, semester,
--          cgpa, city, admission_date
-- =====================================================

-- =====================================================
-- SECTION 1: SELECT (1-10)
-- =====================================================

-- Q1: Display all student records.

-- Q2: Display student names only.

-- Q3: Display student names and CGPA.

-- Q4: Display all departments.

-- Q5: Display unique departments.

-- Q6: Display unique cities.

-- Q7: Display first 5 students.

-- Q8: Display first 10 students.

-- Q9: Display student IDs.

-- Q10: Display admission dates.


-- =====================================================
-- SECTION 2: WHERE (11-25)
-- =====================================================

-- Q11: Students from Bangalore.

-- Q12: Students from Mysore.

-- Q13: Students with CGPA greater than 8.5.

-- Q14: Students with CGPA less than 8.

-- Q15: Students in CSE department.

-- Q16: Students in Semester 7.

-- Q17: Students admitted after 2023-01-01.

-- Q18: Students admitted before 2023-01-01.

-- Q19: Students from Delhi and CSE.

-- Q20: Students from Bangalore with CGPA above 8.

-- Q21: Students from Bangalore or Mysore.

-- Q22: Students not from Bangalore.

-- Q23: Students with CGPA between 8 and 9.

-- Q24: Students in Semester 1 or 3.

-- Q25: Students whose names start with 'A'.


-- =====================================================
-- SECTION 3: ORDER BY (26-32)
-- =====================================================

-- Q26: Sort students by name.

-- Q27: Sort by CGPA ascending.

-- Q28: Sort by CGPA descending.

-- Q29: Sort by department then CGPA descending.

-- Q30: Sort by admission date.

-- Q31: Sort by semester then name.

-- Q32: Show top 3 CGPA holders.


-- =====================================================
-- SECTION 4: AGGREGATE FUNCTIONS (33-42)
-- =====================================================

-- Q33: Count total students.

-- Q34: Highest CGPA.

-- Q35: Lowest CGPA.

-- Q36: Average CGPA.

-- Q37: Count CSE students.

-- Q38: Average CGPA of CSE.

-- Q39: Highest CGPA in ISE.

-- Q40: Lowest CGPA in ME.

-- Q41: Count students from Bangalore.

-- Q42: Count students admitted after 2023.


-- =====================================================
-- SECTION 5: GROUP BY (43-50)
-- =====================================================

-- Q43: Student count by department.

-- Q44: Student count by city.

-- Q45: Average CGPA by department.

-- Q46: Maximum CGPA by department.

-- Q47: Minimum CGPA by city.

-- Q48: Departments having more than 3 students.

-- Q49: Cities having average CGPA greater than 8.

-- Q50: Department with highest average CGPA.


-- =====================================================
-- SECTION 6: DML (51-55)
-- =====================================================

-- Q51: Insert a new student.
--      Name: 'Mustafeez Shaikh', Department: 'CSE', Semester: 7, 
--      CGPA: 8.90, City: 'Chikodi', Admission Date: CURRENT_DATE

-- Q52: Update CGPA of student_id = 1 to 9.20.

-- Q53: Change city of student_id = 5 to 'Belagavi'.

-- Q54: Delete student_id = 20.

-- Q55: Increase CGPA by 0.10 for all students having CGPA below 9.


-- =====================================================
-- SECTION 7: BONUS PRACTICE (56-60)
-- =====================================================

-- Q56: Students whose names end with 'a'.

-- Q57: Students whose second letter is 'r'.

-- Q58: Display only CSE and ISE students.

-- Q59: Display students not in Semester 1.

-- Q60: Display students with CGPA greater than the average CGPA.
