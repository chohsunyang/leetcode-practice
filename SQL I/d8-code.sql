-- 586. Customer Placing the Largest Number of Orders
select customer_number 
from orders
group by customer_number
order by count(*) desc 
limit 1;

-- 511. Game Play Analysis I
select player_id,
       min(event_date) as first_login
from activity
group by player_id;

-- 1890. The Latest Login in 2020
select user_id,
       max(time_stamp) as last_stamp
from logins
where year(time_stamp) = 2020
group by 1;

-- 1741. Find Total Time Spent by Each Employee
select event_day as day,
       emp_id,
       sum(out_time - in_time) as total_time
from employees
group by event_day, emp_id;

