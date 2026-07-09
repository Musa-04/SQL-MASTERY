# Day 06 Quick Revision Notes

---

## INNER JOIN

Returns **only matching rows** from both tables.

```sql
SELECT *
FROM customersl c
INNER JOIN ordersl o
ON c.Customer_id = o.Customer_id;
```

➡️ Only common records. Rows with no match are excluded entirely.

---

## LEFT JOIN

Returns **all rows from the left table** + matching rows from the right table.  
Unmatched right-side columns show `NULL`.

```sql
SELECT *
FROM customersl c
LEFT JOIN ordersl o
ON c.Customer_id = o.Customer_id;
```

➡️ Keep all left records, NULLs for missing right-side data.

---

## RIGHT JOIN

Returns **all rows from the right table** + matching rows from the left table.  
Unmatched left-side columns show `NULL`.

```sql
SELECT *
FROM customersl c
RIGHT JOIN ordersl o
ON c.Customer_id = o.Customer_id;
```

➡️ Keep all right records, NULLs for missing left-side data.

---

## FULL OUTER JOIN

Returns **all rows from both tables**.  
Unmatched rows from either side show `NULL` for the other side's columns.

> ⚠️ MySQL does NOT support `FULL OUTER JOIN`. Use `UNION` instead:

```sql
SELECT *
FROM customersl c
LEFT JOIN ordersl o
ON c.Customer_id = o.Customer_id

UNION

SELECT *
FROM customersl c
RIGHT JOIN ordersl o
ON c.Customer_id = o.Customer_id;
```

➡️ Everything from both tables combined.

---

## SELF JOIN

Table joined with itself. Used for hierarchical data like employee–manager relationships.

```sql
SELECT e.emp_name AS employee,
       m.emp_name AS manager
FROM employees e
LEFT JOIN employees m
ON e.manager_id = m.emp_id;
```

---

## CROSS JOIN

Returns **every possible combination** of rows from both tables.

```sql
SELECT *
FROM students
CROSS JOIN courses;
```

Example: 3 students × 4 courses = **12 rows**

---

## Important

JOIN condition uses `ON`:

```sql
ON c.Customer_id = o.Customer_id
```

---

## Quick Memory Trick

```
INNER JOIN  → Common records only
LEFT JOIN   → Left table + Matching right
RIGHT JOIN  → Right table + Matching left
FULL JOIN   → Left + Right + Common
```

---

## Interview Q&A

**Q: What is a JOIN in SQL?**
> A JOIN combines rows from two or more tables based on a related column between them (usually a Primary Key–Foreign Key relationship).

**Q: What is the difference between INNER JOIN and LEFT JOIN?**
> `INNER JOIN` returns only matching rows from both tables. `LEFT JOIN` returns all rows from the left table plus matched rows from the right — unmatched rows show `NULL` for right-side columns.

**Q: Does MySQL support FULL OUTER JOIN?**
> No. MySQL does not natively support `FULL OUTER JOIN`. You simulate it using `LEFT JOIN UNION RIGHT JOIN`.

**Q: What is a SELF JOIN?**
> A `SELF JOIN` joins a table to itself. Commonly used for hierarchical data, like finding an employee's manager when both are stored in the same `employees` table.

**Q: What is a CROSS JOIN?**
> A `CROSS JOIN` returns the Cartesian product — every row from Table A paired with every row from Table B. If A has 3 rows and B has 4 rows, the result has 12 rows.

**Q: When would you use a RIGHT JOIN over a LEFT JOIN?**
> They are functionally identical — you can always rewrite a `RIGHT JOIN` as a `LEFT JOIN` by swapping the tables. `LEFT JOIN` is preferred by convention for readability.

---

## Extra Example

```sql
-- 3-table JOIN: students enrolled in a course with grade
SELECT s.name         AS student,
       c.course_name  AS course,
       e.grade        AS grade
FROM students s
INNER JOIN enrollments e ON s.id = e.student_id
INNER JOIN courses c     ON e.course_id = c.id
WHERE e.grade >= 'B'
ORDER BY s.name;
```
