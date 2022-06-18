-- 1667. Fix Names in a Table
select user_id,
       concat(upper(substr(name,1,1)), lower(substr(name,2))) as name
from users
order by user_id;

-- 1484. Group Sold Products By The Date
select sell_date,
       count(distinct product) as num_sold,
       group_concat(distinct product order by product asc separator ',') as products
from activities
group by sell_date
order by sell_date asc;

-- 1527. Patients With a Condition
select patient_id, 
       patient_name, 
       conditions 
from patients 
where conditions like 'DIAB10%' or conditions like '% DIAB10%';
