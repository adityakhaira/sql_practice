# Notes: GROUP BY Multiple Columns
# GROUP BY col1, col2 creates one group for each unique combination of col1 and col2, not for each column separately.
# Aggregate functions (COUNT, SUM, AVG, MIN, MAX) are then calculated for each unique combination.
# Example: GROUP BY actor_id, director_id groups rows by each actor–director pair.

select actor_id, director_id from actordirector
group by actor_id,director_id
having count(*)>=3;
