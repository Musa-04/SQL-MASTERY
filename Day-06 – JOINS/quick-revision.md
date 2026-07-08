# SQL JOINs — Quick Revision Sheet
> Perfect for exams, interviews, and last-minute revision.

---

## JOIN Comparison Table

| Feature                             | INNER JOIN          | LEFT JOIN             | RIGHT JOIN             | FULL OUTER JOIN                         |
| ----------------------------------- | ------------------- | --------------------- | ---------------------- | --------------------------------------- |
| Returns matching rows               | ✅ Yes               | ✅ Yes                 | ✅ Yes                  | ✅ Yes                                   |
| Returns all rows from Left Table    | ❌ No                | ✅ Yes                 | ❌ No                   | ✅ Yes                                   |
| Returns all rows from Right Table   | ❌ No                | ❌ No                  | ✅ Yes                  | ✅ Yes                                   |
| Shows NULL for unmatched left rows  | ❌ No                | ❌ No                  | ✅ Yes                  | ✅ Yes                                   |
| Shows NULL for unmatched right rows | ❌ No                | ✅ Yes                 | ❌ No                   | ✅ Yes                                   |
| MySQL Support                       | ✅ Yes               | ✅ Yes                 | ✅ Yes                  | ❌ No (Use `LEFT JOIN UNION RIGHT JOIN`) |
| Best Use Case                       | Only common records | Keep all left records | Keep all right records | Keep all records from both tables       |

---

## Example Tables Used

### `customersl` (Left Table)

| Customer_id | Customer_name |
| ----------- | ------------- |
| 1           | Alice         |
| 2           | Bob           |
| 3           | Charlie       |
| 4           | David         |
| 5           | Emma          |

### `ordersl` (Right Table)

| Order_id | Product_name | Customer_id |
| -------- | ------------ | ----------- |
| 101      | Laptop       | 1           |
| 102      | Mouse        | 1           |
| 103      | Keyboard     | 2           |
| 104      | Monitor      | 4           |

---

## INNER JOIN

```sql
SELECT *
FROM customersl c
INNER JOIN ordersl o
ON c.Customer_id = o.Customer_id;
```

**Output**

| Customer | Product  |
| -------- | -------- |
| Alice    | Laptop   |
| Alice    | Mouse    |
| Bob      | Keyboard |
| David    | Monitor  |

➡️ **Only matching records.** Charlie and Emma are excluded (no orders). 

---

## LEFT JOIN

```sql
SELECT *
FROM customersl c
LEFT JOIN ordersl o
ON c.Customer_id = o.Customer_id;
```

**Output**

| Customer | Product  |
| -------- | -------- |
| Alice    | Laptop   |
| Alice    | Mouse    |
| Bob      | Keyboard |
| Charlie  | NULL     |
| David    | Monitor  |
| Emma     | NULL     |

➡️ **All customers + matching orders.** Customers without orders show NULL.

---

## RIGHT JOIN

```sql
SELECT *
FROM customersl c
RIGHT JOIN ordersl o
ON c.Customer_id = o.Customer_id;
```

**Output (with current data)**

| Customer | Product  |
| -------- | -------- |
| Alice    | Laptop   |
| Alice    | Mouse    |
| Bob      | Keyboard |
| David    | Monitor  |

➡️ **All orders + matching customers.**  
Since every order belongs to an existing customer, the result looks the same as `INNER JOIN` here.  
If an order had no matching customer, that row would appear with `NULL` for customer columns.

---

## FULL OUTER JOIN

> ⚠️ MySQL does **not** support `FULL OUTER JOIN` natively. Use `UNION` of LEFT + RIGHT JOIN instead.

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

**Output (with current data)**

| Customer | Product  |
| -------- | -------- |
| Alice    | Laptop   |
| Alice    | Mouse    |
| Bob      | Keyboard |
| Charlie  | NULL     |
| David    | Monitor  |
| Emma     | NULL     |

➡️ **All customers + all orders.**  
If there were an order without a matching customer, it would also appear with `NULL` for customer columns.

---

## One-Line Memory Trick

| JOIN                | Easy Way to Remember                      |
| ------------------- | ----------------------------------------- |
| **INNER JOIN**      | Only **Common Records**                   |
| **LEFT JOIN**       | **Everything from Left** + Matching Right |
| **RIGHT JOIN**      | **Everything from Right** + Matching Left |
| **FULL OUTER JOIN** | **Everything from Both Tables**           |

---

## Exam Shortcut

```
INNER JOIN  → Common records only

LEFT JOIN   → Left table + Matching right

RIGHT JOIN  → Right table + Matching left

FULL JOIN   → Left + Right + Common
```

> This summary is enough to answer most SQL JOIN theory questions in exams and serves as a handy interview revision sheet.
