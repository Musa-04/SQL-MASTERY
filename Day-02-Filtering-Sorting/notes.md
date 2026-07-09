# Day 02 Quick Revision Notes

## WHERE

Filters records.

```sql
SELECT *
FROM students
WHERE age > 20;
```

---

## Comparison Operators

```sql
=
>
<
>=
<=
<>
!=
```

---

## Logical Operators

### AND

Both conditions true.

### OR

Any condition true.

### NOT

Reverse condition.

---

## DISTINCT

Remove duplicate values.

```sql
SELECT DISTINCT city
FROM students;
```

---

## ORDER BY

Ascending:

```sql
ORDER BY age ASC;
```

Descending:

```sql
ORDER BY age DESC;
```

---

## LIMIT

```sql
LIMIT 5;
```

---

## LIKE

Starts With

```sql
'R%'
```

Ends With

```sql
'%a'
```

Contains

```sql
'%ut%'
```

---

## BETWEEN

```sql
BETWEEN 20 AND 30
```

---

## IN

```sql
IN ('Bangalore','Mysore')
```

---

## Interview Q&A

**Q: What is the difference between WHERE and HAVING?**
> `WHERE` filters individual rows before grouping. `HAVING` filters groups after `GROUP BY` is applied. You cannot use aggregate functions in `WHERE`.

**Q: What is the difference between LIKE and = in SQL?**
> `=` matches an exact value. `LIKE` is used for pattern matching with wildcards (`%` for any characters, `_` for a single character).

**Q: What does DISTINCT do?**
> `DISTINCT` removes duplicate values from the result set. Example: `SELECT DISTINCT city FROM students;` returns each city only once.

**Q: What does ORDER BY default to — ASC or DESC?**
> `ORDER BY` defaults to `ASC` (ascending). You must explicitly write `DESC` for descending order.

**Q: What is the use of LIMIT?**
> `LIMIT n` restricts the number of rows returned. Useful for pagination or fetching top-N records.

**Q: What does BETWEEN include — start and end values?**
> Yes, `BETWEEN a AND b` is **inclusive** of both `a` and `b`.

---

## Extra Example

```sql
-- Combine BETWEEN, LIKE, IN and ORDER BY
SELECT name, age, city
FROM students
WHERE age BETWEEN 20 AND 28
  AND city IN ('Bangalore', 'Mysore')
  AND name LIKE 'A%'
ORDER BY age DESC
LIMIT 5;
```
