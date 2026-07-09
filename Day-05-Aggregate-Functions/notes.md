# Day 05 Quick Revision Notes

## Aggregate Functions

Used to calculate values across multiple rows.

---

## COUNT()

```sql
SELECT COUNT(*)
FROM employees;
```

Returns total records.

---

## SUM()

```sql
SELECT SUM(salary)
FROM employees;
```

Returns total salary.

---

## AVG()

```sql
SELECT AVG(salary)
FROM employees;
```

Returns average salary.

---

## MIN()

```sql
SELECT MIN(salary)
FROM employees;
```

Returns smallest value.

---

## MAX()

```sql
SELECT MAX(salary)
FROM employees;
```

Returns largest value.

---

## GROUP BY

Groups records.

```sql
SELECT department,
       COUNT(*)
FROM employees
GROUP BY department;
```

---

## HAVING

Filters groups.

```sql
SELECT department,
       COUNT(*)
FROM employees
GROUP BY department
HAVING COUNT(*) > 2;
```

---

## Remember

WHERE → Filters rows

HAVING → Filters groups

---

## Interview Q&A

**Q: What are aggregate functions in SQL?**
> Functions that operate on a set of rows and return a single value: `COUNT()`, `SUM()`, `AVG()`, `MIN()`, `MAX()`.

**Q: What is the difference between COUNT(*) and COUNT(column)?**
> `COUNT(*)` counts all rows including NULLs. `COUNT(column)` counts only non-NULL values in that column.

**Q: Can you use WHERE with aggregate functions?**
> No. Use `HAVING` with aggregate functions. `WHERE` filters rows before grouping; `HAVING` filters the groups after `GROUP BY`.

**Q: What is GROUP BY used for?**
> `GROUP BY` groups rows that have the same values in specified columns, so aggregate functions can be applied to each group separately.

**Q: What is the order of SQL clauses?**
> `SELECT → FROM → WHERE → GROUP BY → HAVING → ORDER BY → LIMIT`

**Q: Can you GROUP BY multiple columns?**
> Yes. Example:
> ```sql
> SELECT department, city, COUNT(*)
> FROM employees
> GROUP BY department, city;
> ```

---

## Extra Example

```sql
-- Find departments where total salary exceeds 200000
SELECT department,
       SUM(salary) AS total_salary,
       AVG(salary) AS avg_salary,
       COUNT(*) AS employee_count
FROM employees
GROUP BY department
HAVING SUM(salary) > 200000
ORDER BY total_salary DESC;
```
