-- 1873. Calculate Special Bonus
select employee_id,
       if( (name not like 'M%') and (employee_id % 2) != 0, salary, 0) as bonus
from employees
order by employee_id;


-- 627. Swap Salary
update salary
set sex = if(sex = 'm', 'f', 'm')

-- 196. Delete Duplicate Emails
delete p1 from person as p1
inner join person as p2
on p1.email = p2.email and p1.id>p2.id
