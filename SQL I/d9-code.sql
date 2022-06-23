-- 1393. Capital Gain/Loss
select stock_name,
       sum(case when operation = 'Sell' then price
                else -price end) as capital_gain_loss
from stocks
group by 1;

-- 1407. Top Travellers
select name,
       ifnull(sum(distance), 0) as travelled_distance
from users u
left join rides r
       on u.id = r.user_id
group by u.id
order by travelled_distance desc, name

-- 1158. Market Analysis I
select u.user_id as buyer_id,
       u.join_date,
       count(distinct o.order_id) as orders_in_2019
from users u
left join orders o
       on u.user_id = o.buyer_id
      and year(o.order_date) = 2019
group by 1,2;
