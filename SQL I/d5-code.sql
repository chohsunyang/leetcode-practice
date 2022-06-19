-- 175. Combine Two Tables
select firstName,
       lastName, 
       city,
       state
from person p
left join address a
       on p.personId = a.personId
       
-- 1581. Customer Who Visited but Did Not Make Any Transactions
select v.customer_id,
       count(*) as count_no_trans
from visits v
left join transactions t
        on v.visit_id = t.visit_id
where t.visit_id is null
group by v.customer_id;

-- 1148. Article Views I
select distinct author_id as 'id' 
from views 
where author_id = viewer_id
order by 1;
