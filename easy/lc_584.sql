/*
  Problem: LeetCode 584 - Find Customer Referee
  Difficulty: Easy
  Concepts: NULL Handling, Three-Valued Logic (3VL)

  Important Points:
  1. SQL uses Three-Valued Logic: TRUE, FALSE, and UNKNOWN.
  2. Comparing any value to NULL using standard operators (=, !=, <>) evaluates to UNKNOWN, not TRUE or FALSE.
  3. The WHERE clause only returns rows where the condition evaluates strictly to TRUE.
  4. Always use `IS NULL` or functions like `COALESCE()` / `IFNULL()` to capture missing values.
*/

SELECT name 
FROM Customer 
WHERE referee_id != 2 OR referee_id IS NULL;