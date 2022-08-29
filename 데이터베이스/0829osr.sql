-- 1
select avg(price) ЦђБе, food_category.name, food_truck.foodcode from food_truck 
join food_category on food_truck.foodcode = food_category.code 
group by food_category.name, food_truck.foodcode;

-- 1-2
select avg(price) ЦђБе, food_category.name, food_truck.foodcode from food_truck 
join food_category on food_truck.foodcode = food_category.code 
group by food_category.name, food_truck.foodcode order by avg(price) desc;

-- 1-3
select avg(price) ЦђБе, food_category.name from food_truck 
join food_category on food_truck.foodcode = food_category.code 
group by food_category.name order by avg(price);

-- 2
select max(price) max_price, food_category.name from food_truck 
join food_category on food_truck.foodcode = food_category.code 
group by food_category.name;

-- 3
select min(price) min_price, food_category.name from food_truck 
join food_category on food_truck.foodcode = food_category.code 
group by food_category.name;

-- 4
select avg(price) avg, foodcode from food_truck group by foodcode;
create view avg_price_code as select avg(price) avg, foodcode from food_truck group by foodcode;
select * from avg_price_code;
select min(avg) min from avg_price_code;
select foodcode from avg_price_code where avg = (select min(avg) from avg_price_code);
select min(avg) from avg_price_code;
create view min_code as select foodcode from avg_price_code where avg = (select min(avg) from avg_price_code);
select food_category.name from food_category where code = (select * from min_code);

-- 5
select max(avg) max from avg_price_code;
select max(avg) from avg_price_code;
select foodcode from avg_price_code where avg = (select max(avg) from avg_price_code);
create view max_code as select foodcode from avg_price_code where avg = (select max(avg) from avg_price_code);
select * from max_code;
select food_category.name from food_category where code = (select * from max_code);