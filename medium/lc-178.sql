-- LeetCode 178: Rank Scores
--
-- Concepts:
-- 1. RANK() is a window function used to assign ranks.
-- 2. OVER() defines how the ranking is calculated.
-- 3. ORDER BY score DESC gives the highest score rank 1.
-- 4. Equal scores receive the same rank.
-- 5. RANK() skips ranks after duplicate values.
--
-- Example:
-- Scores:       100, 100, 90, 80
-- RANK():         1,   1,  3,  4
--
-- DENSE_RANK() would give: 1, 1, 2, 3

SELECT
    score,
    RANK() OVER (ORDER BY score DESC) AS `rank`
FROM Scores
ORDER BY score DESC;