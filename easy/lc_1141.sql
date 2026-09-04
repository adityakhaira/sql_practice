/*
  Problem: LeetCode 1141 - User Activity for the Past 30 Days I
  Difficulty: Easy
  Concepts: Date Functions (DATEDIFF), GROUP BY, COUNT(DISTINCT)

  Important Points:
  1. Date Range Boundaries: A 30-day period ending on 2019-07-27 includes 2019-07-27 itself.
     - Range: 2019-06-28 to 2019-07-27 (inclusive).
  2. DATEDIFF Function: `DATEDIFF(end_date, start_date)` returns the number of days between two dates.
     - Using `DATEDIFF('2019-07-27', activity_date) BETWEEN 0 AND 29` cleanly isolates the 30-day window.
  3. Counting Unique Users: A single user may perform multiple activities on a single day. 
     - Always use `COUNT(DISTINCT user_id)` to count unique active users per day.
*/

SELECT 
    activity_date AS day, 
    COUNT(DISTINCT user_id) AS active_users
FROM Activity
WHERE activity_date BETWEEN '2019-06-28' AND '2019-07-27'
GROUP BY activity_date;