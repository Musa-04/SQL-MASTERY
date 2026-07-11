# 📘 Beginner to Intermediate SQL Practice Set 2

A collection of **60 SQL questions** designed to build and test your SQL skills using the `students` table. This set covers queries ranging from basic `SELECT` to aggregate functions, grouping, and subqueries.

---

## 📁 Files in This Folder

| File | Description |
|------|-------------|
| `practice.sql` | 60 SQL questions — try them yourself first! |
| `solutions.sql` | Full solutions for all 60 questions |
| `README.md` | This file |

---

## 🗂️ Table Structure

All questions are based on a single table called `students`:

```sql
CREATE TABLE students (
    student_id     INT PRIMARY KEY AUTO_INCREMENT,
    full_name      VARCHAR(100),
    department     VARCHAR(50),
    semester       INT,
    cgpa           DECIMAL(3, 2),
    city           VARCHAR(50),
    admission_date DATE
);
```

---

## 📚 Topics Covered

| Section | Questions | Concepts |
|---------|-----------|----------|
| **Section 1: SELECT** | Q1 – Q10 | `SELECT`, `DISTINCT`, `LIMIT` |
| **Section 2: WHERE** | Q11 – Q25 | Filtering with conditions (`AND`, `OR`, `IN`, `BETWEEN`, `LIKE`) |
| **Section 3: ORDER BY** | Q26 – Q32 | Sorting ascending/descending, multi-column sort |
| **Section 4: Aggregate Functions** | Q33 – Q42 | `COUNT`, `MAX`, `MIN`, `AVG`, `SUM` |
| **Section 5: GROUP BY & HAVING** | Q43 – Q50 | Grouping data, filtering groups |
| **Section 6: DML** | Q51 – Q55 | `INSERT`, `UPDATE`, `DELETE` |
| **Section 7: Bonus Practice** | Q56 – Q60 | Advanced pattern matching (`LIKE`), basic Subqueries |

---

## ✅ How to Use

1. Open `practice.sql` in your SQL editor (MySQL Workbench, DBeaver, etc.)
2. Read each question comment and **write your query below it**
3. Run your query and check the output
4. Once done, compare your answer with `solutions.sql`

---

## ⚙️ Compatibility

These queries are compatible with:

- ✅ MySQL
- ✅ PostgreSQL
- ✅ SQLite

> **Note:** The `LIMIT` and date/DML features work across standard relational database engines.

---

## 💡 Tips for Practice

- Always look at the table structure and verify column names.
- Practice typing queries manually instead of copy-pasting.
- Remember: `HAVING` filters aggregated data (after `GROUP BY`), whereas `WHERE` filters individual rows (before `GROUP BY`).
- Be careful with `DELETE` and `UPDATE` — always double check your `WHERE` condition.

---

*Part of the **SQL Mastery** practice series — Progress: Beginner → Intermediate → Advanced*
