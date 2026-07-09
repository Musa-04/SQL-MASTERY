# Day 07 Quick Revision Notes

## Subquery

Query inside another query.

---

## Scalar Subquery

Returns one value.

```sql
SELECT *
FROM employees
WHERE salary >
(
    SELECT AVG(salary)
    FROM employees
);
```

---

## Column Subquery

Returns one column.

```sql
SELECT department
FROM employees;
```

---

## Row Subquery

Returns one row.

```sql
(salary, department)
```

---

## Table Subquery

Returns multiple rows.

```sql
FROM
(
    SELECT *
    FROM employees
)
```

---

## EXISTS

Checks existence.

```sql
WHERE EXISTS(...)
```

---

## Correlated Subquery

Runs once per row.

```sql
e1.department=e2.department
```

---

## Interview Rule

Subquery = Query inside another query.

---

## Interview Q&A

**Q: What is a subquery?**
> A subquery is a `SELECT` statement nested inside another SQL statement (SELECT, INSERT, UPDATE, or DELETE). The inner query runs first and passes its result to the outer query.

**Q: What is the difference between a subquery and a JOIN?**
> Both retrieve data from multiple tables. A subquery is easier to read for simple lookups; a JOIN is generally more efficient for large datasets and is preferred when you need columns from both tables.

**Q: What is a correlated subquery?**
> A correlated subquery references a column from the outer query. It runs once for every row in the outer query (making it slower), unlike a regular subquery which runs only once.

**Q: What is a scalar subquery?**
> A scalar subquery returns exactly **one row and one column** (a single value). It can be used anywhere a single value is expected — in `SELECT`, `WHERE`, or `HAVING`.

**Q: What is the difference between IN and EXISTS?**
> `IN` checks if a value matches any value in a list/subquery result. `EXISTS` checks if the subquery returns any rows at all. `EXISTS` is generally faster when the subquery returns many rows.

**Q: Can a subquery be used in the FROM clause?**
> Yes — it's called a **derived table** or **inline view**. Example:
> ```sql
> SELECT * FROM (SELECT ename, sal FROM emp WHERE sal > 3000) AS high_earners;
> ```

---

## Extra Example

```sql
-- NOT IN: employees who are NOT managers
SELECT ename
FROM emp
WHERE empno NOT IN
(
    SELECT DISTINCT mgr
    FROM emp
    WHERE mgr IS NOT NULL
);

-- Derived table (subquery in FROM)
SELECT dept_summary.deptno, dept_summary.avg_sal
FROM
(
    SELECT deptno, AVG(sal) AS avg_sal
    FROM emp
    GROUP BY deptno
) AS dept_summary
WHERE dept_summary.avg_sal > 2500;
```
