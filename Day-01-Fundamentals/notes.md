# Day 01 Quick Revision Notes

## Database

Collection of organized data.

---

## DBMS

Software that manages databases.

Examples:

* PostgreSQL
* MySQL
* Oracle

---

## RDBMS

Stores data in related tables.

Uses:

* Primary Keys
* Foreign Keys

---

## SQL

Structured Query Language

Used for:

* Creating databases
* Creating tables
* Inserting data
* Retrieving data

---

## Common Data Types

### Numeric

```sql
INT
BIGINT
DECIMAL
FLOAT
```

### Text

```sql
VARCHAR
TEXT
```

### Date

```sql
DATE
TIMESTAMP
```

### Boolean

```sql
BOOLEAN
```

---

## Commands

### Create Database

```sql
CREATE DATABASE sql_mastery;
```

### Create Table

```sql
CREATE TABLE students (
    id INT,
    name VARCHAR(100),
    age INT,
    city VARCHAR(50)
);
```

### Insert Data

```sql
INSERT INTO students
VALUES (1,'Rutvik',25,'Bangalore');
```

### Select Data

```sql
SELECT * FROM students;
```

---

## Interview Q&A

**Q: What is SQL?**
> SQL (Structured Query Language) is a standard language used to create, retrieve, update, and delete data in relational databases.

**Q: What is the difference between DBMS and RDBMS?**
> DBMS stores data as files (no relationships). RDBMS stores data in related tables using Primary and Foreign Keys. Examples: MySQL, PostgreSQL, Oracle.

**Q: What is a Table?**
> A table is a structured collection of rows (records) and columns (attributes/fields) stored in a database.

**Q: What is a Primary Key?**
> A column (or set of columns) that uniquely identifies each row in a table. It cannot be NULL and must be unique.

**Q: What is the difference between VARCHAR and TEXT?**
> `VARCHAR(n)` stores variable-length strings up to `n` characters — efficient for known max lengths. `TEXT` stores unlimited-length strings — used for long descriptions or content.

**Q: What is a Schema?**
> A schema is the logical structure/blueprint of a database — it defines tables, columns, data types, and constraints.

**Q: What does SELECT * do?**
> It retrieves all columns from a table. In production, always select only the columns you need to avoid unnecessary data transfer.

---

## Extra Example

```sql
-- Show all databases
SHOW DATABASES;

-- Switch to a database
USE sql_mastery;

-- Show all tables in current database
SHOW TABLES;

-- See table structure
DESCRIBE students;
```
