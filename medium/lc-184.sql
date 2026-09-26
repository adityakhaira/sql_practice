-- LeetCode 184: Department Highest Salary
--
-- Concepts:
-- 1. JOIN
-- 2. GROUP BY
-- 3. MAX()
-- 4. Subquery
--
-- Key idea:
-- First find the maximum salary in each department.
-- Then join Employee and Department with those maximum salaries
-- to find the employee(s) who earn that salary.
--
-- Important:
-- If multiple employees have the same highest salary,
-- all of them should be returned.

SELECT
    d.name AS Department,
    e.name AS Employee,
    e.salary AS Salary
FROM Employee e
JOIN Department d
    ON e.departmentId = d.id
JOIN (
    SELECT departmentId, MAX(salary) AS max_salary
    FROM Employee
    GROUP BY departmentId
) m
    ON e.departmentId = m.departmentId
    AND e.salary = m.max_salary;