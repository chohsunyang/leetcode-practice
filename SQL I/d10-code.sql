-- 182. Duplicate Emails
select email as "Email"
from person  
group by email
having count(*) > 1;

-- 1050. Actors and Directors Who Cooperated At Least Three Times
select actor_id,
       director_id
from actordirector
group by actor_id, director_id
having count(timestamp) >= 3;

-- 1587. Bank Account Summary II
select u.name,
       sum(t.amount) as balance
from users u
left join transactions t
       on u.account = t.account     
group by 1
having balance > 10000;

-- 1084. Sales Analysis III
select product_id,
       product_name
from product
where product_id not in 
( select product_id from sales
  where sale_date not between '2019-01-01' and '2019-03-31');
  

