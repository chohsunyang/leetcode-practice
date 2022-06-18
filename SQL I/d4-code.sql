-- 1965. Employees With Missing Information
select employee_id 
from employees 
where employee_id not in(select employee_id from salaries)
union
select employee_id 
from salaries 
where employee_id not in(select employee_id from employees) 
order by employee_id;

-- 1795. Rearrange Products Table
select product_id, 'store1' as store, store1 as price from products where store1 is not null
union
select product_id, 'store2' as store, store2 as price from products where store2 is not null
union
select product_id, 'store3' as store, store3 as price from products where store3 is not null;

-- 608. Tree Node
select id, 'Root' as type from tree where p_id is null
union
select id, 'Inner' as type from tree where p_id is not null and id in (select p_id from tree)
union
select id, 'Leaf' as type from tree where p_id is not null and id not in (select p_id from tree where p_id is not null);

-- 176. Second Highest Salary
select max(salary) as SecondHighestSalary
from employee
where salary not in (select max(salary) from employee)
