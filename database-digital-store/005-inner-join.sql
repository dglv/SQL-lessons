/*
    The INNER JOIN keyword selects records that have matching values in both tables.
*/

use digital_store;

/*
    Select all computers and display its manufacturers.
    Output: pc.model, product.manufacturer
*/
select pc.model, product.manufacturer
from pc
inner join product on pc.model = product.model;

/*
    Select all computers with price and manufacturers. Sort the results in descending order.
    Output: pc.model, product.manufacturer, pc.ram_size, pc.hdd_size, pc.cd, pc.price
*/
select a.model, b.manufacturer, a.ram_size, a.hdd_size, a.cd, a.price
from pc a
inner join product b on a.model = b.model
order by a.price DESC;
