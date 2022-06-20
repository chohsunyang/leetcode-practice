-- 197. Rising Temperature
select w1.id as 'id'
from weather w1
join weather w2 
  on datediff(w1.recordDate, w2.recordDate) = 1
 and w1.temperature > w2.temperature;
 
-- 607. Sales Person
select name 
from salesperson 
where sales_id not in
                (select sales_id from orders where com_id in (
                 select com_id from company where name ='RED' ));
