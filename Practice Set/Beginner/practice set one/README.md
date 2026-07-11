# 📘 Beginner SQL Practice Set

A collection of **50 beginner-level SQL questions** designed to build a solid foundation in SQL from scratch.

---

## 📁 Files in This Folder

| File | Description |
|------|-------------|
| `practice.sql` | 50 SQL questions — try them yourself first! |
| `solutions.sql` | Full solutions with explanations for all 50 questions |
| `README.md` | This file |

---

## 🗂️ Table Structure

All questions are based on a single table called `employees`:

```sql
CREATE TABLE employees (
    employee_id   INT,
    employee_name VARCHAR(100),
    department    VARCHAR(50),
    salary        DECIMAL(10, 2),
    city          VARCHAR(50),
    joining_date  DATE
);
```

---

## 📚 Topics Covered

| Section | Questions | Concepts |
|---------|-----------|----------|
| **Basic SELECT** | Q1 – Q10 | `SELECT`, `DISTINCT`, `LIMIT` |
| **WHERE Clause** | Q11 – Q20 | Filtering with conditions, comparison operators, date filters |
| **ORDER BY** | Q21 – Q25 | Sorting ascending/descending, multi-column sort |
| **Aggregate Functions** | Q26 – Q35 | `COUNT`, `MAX`, `MIN`, `AVG`, `SUM` |
| **GROUP BY & HAVING** | Q36 – Q45 | Grouping data, filtering groups |
| **DML** | Q46 – Q50 | `INSERT`, `UPDATE`, `DELETE` |

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

> **Note:** The `LIMIT` clause syntax used here works in all three databases.

---

## 💡 Tips for Beginners

- Always start with `SELECT *` to understand what data is in the table
- Use `WHERE` before `ORDER BY` in your queries
- `GROUP BY` must include all non-aggregate columns in `SELECT`
- `HAVING` is like `WHERE` but filters **after** grouping
- Be careful with `DELETE` and `UPDATE` — always use a `WHERE` clause!

---

*Part of the **SQL Mastery** practice series — Progress: Beginner → Intermediate → Advanced*
