# Day 04 Quick Revision Notes

## DML

Data Manipulation Language

Commands:

```sql
INSERT
UPDATE
DELETE
```

---

## INSERT

Adds records.

```sql
INSERT INTO students
VALUES(1,'Rutvik',25,'Bangalore');
```

---

## UPDATE

Modifies records.

```sql
UPDATE students
SET city='Mumbai'
WHERE id=1;
```

---

## DELETE

Removes records.

```sql
DELETE FROM students
WHERE id=1;
```

---

## CRUD

Create → INSERT

Read → SELECT

Update → UPDATE

Delete → DELETE

---

## Safety Rule

Always use WHERE with UPDATE and DELETE.

Bad:

```sql
UPDATE students
SET city='Delhi';
```

Bad:

```sql
DELETE FROM students;
```

These affect every row.

---

## Interview Q&A

**Q: What is DML?**
> DML (Data Manipulation Language) deals with manipulating data inside tables. Commands: `INSERT`, `UPDATE`, `DELETE`, `SELECT`.

**Q: What is the difference between DELETE and TRUNCATE?**
> `DELETE` removes rows one-by-one and can be rolled back (if inside a transaction). `TRUNCATE` removes all rows at once, is faster, and cannot always be rolled back.

**Q: Can we INSERT multiple rows in one statement?**
> Yes. Example:
> ```sql
> INSERT INTO students VALUES
> (1, 'Ali', 22, 'Delhi'),
> (2, 'Sara', 24, 'Mumbai'),
> (3, 'John', 21, 'Pune');
> ```

**Q: How do you update multiple columns at once?**
> Use comma-separated `SET` clauses:
> ```sql
> UPDATE students SET city='Chennai', age=26 WHERE id=1;
> ```

**Q: What happens if you run DELETE without WHERE?**
> It deletes **all rows** in the table — the table structure remains, but all data is gone.

---

## Extra Example

```sql
-- Insert or update if duplicate (UPSERT in MySQL)
INSERT INTO students (id, name, age, city)
VALUES (1, 'Mustafeez', 22, 'Hyderabad')
ON DUPLICATE KEY UPDATE
    name = 'Mustafeez',
    city = 'Hyderabad';

-- Delete all students from Delhi (safe with WHERE)
DELETE FROM students
WHERE city = 'Delhi';

-- Update salary of all employees in IT dept
UPDATE employees
SET salary = salary * 1.10
WHERE department = 'IT';
```
