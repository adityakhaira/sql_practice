/*
  Problem: LeetCode 596 - Classes More Than 5 Students
  Difficulty: Easy
  Concepts: GROUP BY, HAVING Clause, Aggregation, DISTINCT

  Important Points:
  1. WHERE vs. HAVING: `WHERE` filters individual rows BEFORE grouping. `HAVING` filters aggregated groups AFTER `GROUP BY`.
  2. Aggregation Functions: You cannot use aggregate functions (like COUNT, SUM, AVG) directly in a `WHERE` clause.
  3. Handling Duplicates: Always consider using `COUNT(DISTINCT student)` instead of `COUNT(*)` to avoid double-counting repeat entries for the same entity.
*/

SELECT class
FROM Courses
GROUP BY class
HAVING COUNT(DISTINCT student) >= 5;