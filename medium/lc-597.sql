-- LeetCode 597: Friend Requests I: Overall Acceptance Rate
--
-- Problem:
-- Calculate the overall friend-request acceptance rate.
--
-- Acceptance rate =
-- Number of unique accepted requests
-- -----------------------------------
-- Number of unique sent requests
--
-- Return the rate rounded to 2 decimal places.
-- If there are no sent requests, return 0.00.
--
-- Concepts:
-- 1. COUNT(DISTINCT col1, col2)
-- 2. Scalar subqueries
-- 3. IFNULL()
-- 4. ROUND()
--
-- Key idea:
-- Count unique sender-recipient pairs in FriendRequest and
-- unique requester-accepter pairs in RequestAccepted.
-- Divide accepted requests by sent requests.

SELECT
    ROUND(
        IFNULL(
            (SELECT COUNT(DISTINCT requester_id, accepter_id)
             FROM RequestAccepted)
            /
            (SELECT COUNT(DISTINCT sender_id, send_to_id)
             FROM FriendRequest),
            0
        ),
        2
    ) AS accept_rate;