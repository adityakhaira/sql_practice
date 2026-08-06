# Write your MySQL query statement below
select max(num) as num from(select num from  # aggregate function return null on empty set
mynumbers group by(num)
having count(num)=1
order by num desc 
limit 1) as t;   # subquery should have an alias

