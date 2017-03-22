/*
    The GROUP BY statement is often used with aggregate functions (COUNT, MAX, MIN, SUM, AVG) 
    to group the result-set by one or more columns.
*/

use digital_store;

/* 
    List the number of phones grouped by screen size. 
    Output: screen_size, amount
*/
select screen_size, count(id) as amount from phone group by screen_size;

/* 
    Show the lowest prices of phones for each RAM size category. 
    Output: ram_size, price
*/
select ram_size, min(price) as price from phone group by ram_size;

/*
    Find out top phone (max price) of each manufacturer. Sort the results in descending order.
    Output: manufacturer, model, ram_size, hdd_size, screen_size, price 
*/
select phone.model, product.manufacturer, phone.ram_size, phone.hdd_size, phone.screen_size, phone.price
from phone
inner join product on phone.model = product.model
order by phone.price DESC;
/* FIXME: how to obtain top phone of each manufacturer from the output above? */


/*
    Find out the highest price (the lowest price) of each manufacturer.
    Output: manufacturer, price 
*/
select product.manufacturer, min(phone.price) as price
from product
inner join phone on phone.model = product.model
group by product.manufacturer;

select product.manufacturer, max(phone.price) as price
from product
inner join phone on phone.model = product.model
group by product.manufacturer;