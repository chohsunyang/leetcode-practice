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
select p.product_id, 
       p.product_name
from product p
left join sales s
       on p.product_id = s.product_id
group by p.product_id
having min(sale_date) >= '2019-01-01' 
   and max(sale_date) <= '2019-03-31';
