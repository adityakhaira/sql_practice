## LC 177 — Nth Highest Salary

**Concepts:** `DISTINCT`, `ORDER BY`, `LIMIT`, `OFFSET`, stored function

### Key Idea

* `DISTINCT` removes duplicate salaries.
* `ORDER BY salary DESC` sorts salaries from highest to lowest.
* `OFFSET N` skips the first N rows.
* Since SQL positions start from 0 for `OFFSET`, we first do `SET N = N - 1`.
* If the Nth distinct salary doesn't exist, the function returns `NULL`.

### Solution

```sql
CREATE FUNCTION getNthHighestSalary(N INT) RETURNS INT
BEGIN
    SET N = N - 1;

    RETURN (
        SELECT DISTINCT salary
        FROM Employee
        ORDER BY salary DESC
        LIMIT 1 OFFSET N
    );
END
```
