-- LeetCode 578: Get Highest Answer Rate Question
--
-- Problem:
-- Find the question_id with the highest answer rate.
--
-- Answer rate is calculated as:
--
--     number of answers
--     -----------------
--     number of shows
--
-- If there is a tie, return the question with the smaller question_id.
--
-- Concepts:
-- 1. GROUP BY
-- 2. Conditional counting
-- 3. SUM()
-- 4. Arithmetic expressions
-- 5. ORDER BY
-- 6. LIMIT
--
-- Key idea:
-- Group the records by question_id.
-- Count the number of 'answer' and 'show' actions.
-- Calculate the answer rate and sort in descending order.
--
-- MySQL treats TRUE as 1 and FALSE as 0, so:
-- SUM(action = 'answer') counts answer actions.
-- SUM(action = 'show') counts show actions.

SELECT question_id
FROM SurveyLog
GROUP BY question_id
ORDER BY
    SUM(action = 'answer') / SUM(action = 'show') DESC,
    question_id ASC
LIMIT 1;