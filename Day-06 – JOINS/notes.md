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
