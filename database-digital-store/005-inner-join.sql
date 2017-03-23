/*
    The INNER JOIN keyword selects records that have matching values in both tables.
*/

use digital_store;

/*
    Select all computers and display its manufacturers. Sort the results by manufacturer in ascending order.
    Output: pc.model, product.manufacturer
*/
select pc.model, product.manufacturer
from pc
inner join product on pc.model = product.model
order by product.manufacturer asc;

/*
    Select all computers with prices and manufacturers. Sort the results by price in descending order.
    Output: pc.model, product.manufacturer, pc.ram_size, pc.hdd_size, pc.cd, pc.price
*/
select a.model, b.manufacturer, a.ram_size, a.hdd_size, a.cd, a.price
from pc a
inner join product b on a.model = b.model
order by a.price desc;

/*
    Find out all printers where the manufacturer is "Hewlett-Packard". Sort the results by price in descending order.
    Output: model, manufacturer, color, type, price
*/

select a.model, b.manufacturer, a.color, a.type, a.price
from printer a
inner join product b on a.model = b.model and b.manufacturer = "Hewlett-Packard"
order by a.price desc;

/*
    Find out the printer with the highest price (the lowest price) where the manufacturer is "Hewlett-Packard".
    Output: model, manufacturer, color, type, price
*/

select a.model, b.manufacturer, a.color, a.type, a.price
from printer a
inner join product b on a.model = b.model and b.manufacturer = "Hewlett-Packard"
order by a.price desc limit 1;

select a.model, b.manufacturer, a.color, a.type, a.price
from printer a
inner join product b on a.model = b.model and b.manufacturer = "Hewlett-Packard"
order by a.price asc limit 1;

/*
    Select all phones where the manufacturer is NOT Apple. Sort the results by manufacturer.
    Output: phone.model, product.manufacturer, phone.ram_size, phone.hdd_size, phone.screen_size, phone.price
*/
select phone.model, product.manufacturer, phone.ram_size, phone.hdd_size, phone.screen_size, phone.price
from phone
inner join product on phone.model = product.model and product.manufacturer <> "Apple"
order by product.manufacturer desc;

/*
    Find out PCs which hdd size is more or equal to 512GB. Sort the results by price in ascending order.
    Outout: model, manufacturer, hdd_size, price. 
*/
select pc.model, product.manufacturer, pc.hdd_size, pc.price
from pc
inner join product on pc.model = product.model
where  pc.hdd_size >= 512
order by pc.price;




