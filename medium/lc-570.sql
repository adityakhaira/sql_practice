-- LeetCode 570: Managers with at Least 5 Direct Reports
--
-- Concepts:
-- 1. Self JOIN
-- 2. GROUP BY
-- 3. COUNT()
-- 4. HAVING
--
-- Key idea:
-- Join employees with their managers, group by the manager,
-- count their direct reports, and keep managers with at least 5 reports.

SELECT m.name
FROM Employee e
JOIN Employee m
    ON e.managerId = m.id
GROUP BY m.id, m.name
HAVING COUNT(*) >= 5;