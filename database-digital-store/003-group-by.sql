/*
    The GROUP BY statement is often used with aggregate functions (COUNT, MAX, MIN, SUM, AVG) 
    to group the result-set by one or more columns.
*/

use digital_store;

/* 
    List the number of phones grouped and sorted by screen size. 
    Output: screen_size, amount
*/
select screen_size, count(id) as amount 
from phone
group by screen_size
order by screen_size DESC;

/* 
    Show the lowest prices of phones for each RAM size category. 
    Output: ram_size, price
*/
select ram_size, min(price) as price 
from phone 
group by ram_size;

/*
    Find out the most expensive (the cheapest) phone per manufacturer.
    Output: manufacturer,model, price 
*/
select manufacturer, max(phone.price) as price
from product
inner join phone on phone.model = product.model
group by product.manufacturer;

select product.manufacturer, min(phone.price) as price
from product
inner join phone on phone.model = product.model
group by product.manufacturer;