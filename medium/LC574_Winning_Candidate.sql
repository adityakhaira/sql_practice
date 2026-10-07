-- LeetCode 574: Winning Candidate
--
-- Problem:
-- Given two tables, Candidate and Vote, find the name of the candidate
-- who received the highest number of votes.
--
-- Candidate table:
-- +-----+------+
-- | id  | name |
-- +-----+------+
-- | 1   | A    |
-- | 2   | B    |
-- | 3   | C    |
-- +-----+------+
--
-- Vote table:
-- +-----+------------+
-- | id  | candidateId|
-- +-----+------------+
-- | 1   | 2          |
-- | 2   | 2          |
-- | 3   | 1          |
-- | 4   | 2          |
-- | 5   | 3          |
-- +-----+------------+
--
-- Task:
-- Return the name of the candidate who received the most votes.
--
-- Expected output:
-- +------+
-- | name |
-- +------+
-- | B    |
-- +------+
--
-- Concepts:
-- 1. JOIN
-- 2. GROUP BY
-- 3. COUNT()
-- 4. ORDER BY
-- 5. LIMIT
-- 6. Subquery
--
-- Key idea:
-- First count the votes received by each candidate.
-- Then sort the candidates by vote count in descending order
-- and select the candidate with the highest count.
--
-- Solution:

SELECT c.name
FROM Candidate c
JOIN Vote v
    ON c.id = v.candidateId
GROUP BY c.id, c.name
ORDER BY COUNT(*) DESC
LIMIT 1;