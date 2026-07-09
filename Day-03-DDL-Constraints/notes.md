# Day 03 Quick Revision Notes

## DDL Commands

### CREATE

Creates database objects.

```sql
CREATE TABLE students();
```

---

### ALTER

Modifies existing tables.

```sql
ALTER TABLE students
ADD email VARCHAR(100);
```

---

### DROP

Deletes table.

```sql
DROP TABLE students;
```

---

### TRUNCATE

Deletes all rows.

```sql
TRUNCATE TABLE students;
```

---

## Constraints

### PRIMARY KEY

* Unique
* Not Null
* Identifies records

```sql
id INT PRIMARY KEY
```

---

### UNIQUE

No duplicates allowed.

```sql
email VARCHAR(100) UNIQUE
```

---

### NOT NULL

Mandatory value.

```sql
name VARCHAR(100) NOT NULL
```

---

### CHECK

Custom validation.

```sql
age INT CHECK(age >=18)
```

---

### DEFAULT

Default value.

```sql
status DEFAULT 'ACTIVE'
```

---

### FOREIGN KEY

Creates relationships.

```sql
FOREIGN KEY(student_id)
REFERENCES students(student_id)
```

---

## Interview Q&A

**Q: What is DDL?**
> DDL (Data Definition Language) deals with the structure of the database. Commands: `CREATE`, `ALTER`, `DROP`, `TRUNCATE`, `RENAME`.

**Q: What is the difference between DROP and TRUNCATE?**
> `DROP` deletes the entire table including its structure. `TRUNCATE` deletes all rows but keeps the table structure intact. `TRUNCATE` is faster than `DELETE` for clearing all rows.

**Q: What is the difference between PRIMARY KEY and UNIQUE?**
> A table can have only **one** `PRIMARY KEY`, but **multiple** `UNIQUE` constraints. `PRIMARY KEY` cannot be NULL; `UNIQUE` allows one NULL value.

**Q: What is a FOREIGN KEY?**
> A `FOREIGN KEY` links a column in one table to the `PRIMARY KEY` of another table, enforcing referential integrity between related tables.

**Q: What does the CHECK constraint do?**
> `CHECK` restricts the values that can be inserted into a column based on a condition. Example: `age INT CHECK(age >= 18)` ensures no one under 18 can be inserted.

**Q: Can we alter a column's data type after table creation?**
> Yes, using `ALTER TABLE students MODIFY COLUMN name VARCHAR(200);` in MySQL.

---

## Extra Example

```sql
-- Rename a table
RENAME TABLE old_students TO students_backup;

-- Add multiple columns at once
ALTER TABLE students
ADD phone VARCHAR(15),
ADD address TEXT;

-- Rename a column (MySQL 8.0+)
ALTER TABLE students
RENAME COLUMN name TO full_name;

-- Remove a column
ALTER TABLE students
DROP COLUMN address;
```
