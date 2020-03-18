-- 1
insert into users (created_at, updated_at) values (NOW(), NOW());
-- 2
update users set created_at=str_to_date(created_at, '%d, %m, %Y, %H:%i'), updated_at=str_to_date(created_at, '%d, %m, %Y, %H:%i');
alter table users modify created_at datetime, modify updated_at datetime;
-- 3
select id, value from storehouse_product order by case when value = 0 then 1 else 0 end, value;
-- Агрегация
-- 1
select  avg(age) from (select year(current_timestamp) - year(birthday) as age from profiles) as avg_age;
-- 2
select count(*) as stats from (select dayofweek(concat(year )now() ) ), '_', month (birthday), '_', dayofmonth(birthday))) as date from profiles) as stats where date=1; 