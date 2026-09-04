/*
  Problem: LeetCode 183 - Customers Who Never Order
  Difficulty: Easy
  Concepts: LEFT JOIN, Handling Unmatched Records, NULL Filtering, Subqueries

  Important Points:
  1. INNER JOIN vs LEFT JOIN: 
     - INNER JOIN keeps only matching records between both tables (shows customers who DID order).
     - LEFT JOIN keeps ALL records from the left table regardless of matches in the right table.
  2. Unmatched Record Pattern:
     - When a LEFT JOIN finds no match in the right table, it fills those right-table columns with NULL.
     - Filtering with `WHERE right_table.id IS NULL` isolates records that exist ONLY in the left table.
  3. Order of Execution:
     - The ON clause pairs matching records and pads non-matches with NULL.
     - The WHERE clause runs AFTER the join is constructed, allowing us to filter for `d.id IS NULL`.
*/

SELECT c.name AS Customers
FROM Customers c
LEFT JOIN Orders d ON c.id = d.customerId
WHERE d.id IS NULL;