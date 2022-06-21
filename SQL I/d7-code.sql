-- 1141. User Activity for the Past 30 Days I
select activity_date as day,
       count(distinct user_id) as active_users
from activity
where datediff('2019-07-27', activity_date) < 30
  and activity_date < '2019-07-27' -- for some reason there is a 2021 date in test case?
group by 1;

-- 1693. Daily Leads and Partners
select date_id,
       make_name,
       count(distinct lead_id) as unique_leads,
       count(distinct partner_id) as unique_partners
from dailysales
group by 1,2;

-- 1729. Find Followers Count
select user_id,
       count(distinct follower_id) as followers_count
from followers
group by 1
order by 1;

