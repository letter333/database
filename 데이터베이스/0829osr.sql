-- 1
select avg(price) 평균, food_category.name from food_truck 
join food_category on food_truck.foodcode = food_category.code 
group by food_category.name;

-- 1-2
select avg(price) 평균, food_category.name, food_truck.foodcode from food_truck 
join food_category on food_truck.foodcode = food_category.code 
group by food_category.name, food_truck.foodcode order by avg(price) desc;

-- 1-3
select avg(price) 평균, food_category.name from food_truck 
join food_category on food_truck.foodcode = food_category.code 
group by food_category.name order by avg(price);

-- 2
create view max_price as select max(price) max_price, food_category.name from food_truck 
join food_category on food_truck.foodcode = food_category.code 
group by food_category.name;

select * from max_price;

create view food_price_category as select food_truck.name food_truck_name, price, food_category.name food_category_name
from food_truck
join food_category on food_truck.foodcode = food_category.code;

select * from food_price_category;

select food_truck_name, price, max_price.name from food_price_category
join max_price on food_price_category.price = max_price.max_price and 
food_price_category.food_category_name = max_price.name;

-- 3
create view min_price as select min(price) min_price, food_category.name from food_truck 
join food_category on food_truck.foodcode = food_category.code 
group by food_category.name;

select * from min_price;

select food_truck_name, price, min_price.name from food_price_category
join min_price on food_price_category.price = min_price.min_price and 
food_price_category.food_category_name = min_price.name;

-- 4
select avg(price) avg, foodcode from food_truck group by foodcode;
create view avg_price_code as select avg(price) avg, foodcode from food_truck group by foodcode;
select * from avg_price_code;
select min(avg) min from avg_price_code;
select foodcode from avg_price_code where avg = (select min(avg) from avg_price_code);
select min(avg) from avg_price_code;
create view min_code as select foodcode from avg_price_code where avg = (select min(avg) from avg_price_code);
select * from food_category where code = (select * from min_code);

-- 5
select max(avg) max from avg_price_code;
select max(avg) from avg_price_code;
select foodcode from avg_price_code where avg = (select max(avg) from avg_price_code);
create view max_code as select foodcode from avg_price_code where avg = (select max(avg) from avg_price_code);
select * from max_code;
select * from food_category where code = (select * from max_code);
