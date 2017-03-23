/*
    The LEFT JOIN keyword returns all records from the left table, and the matched records from the right table. 
    The result is NULL from the right side, if there is no match.
    Note: In some databases LEFT JOIN is called LEFT OUTER JOIN.
*/

use digital_store;

/*
    Select all phones where the manufacturer is Apple. BUT show other phones also. Sort the results by manufacturer.
    Output: phone.model, product.manufacturer, phone.ram_size, phone.hdd_size, phone.screen_size, phone.price
*/
select phone.model, product.manufacturer, phone.ram_size, phone.hdd_size, phone.screen_size, phone.price
from phone
left join product on phone.model = product.model and product.manufacturer = "Apple"
order by product.manufacturer DESC;

/*
NOTE: inner join keyword returns just full filled entities.

select phone.model, product.manufacturer, phone.ram_size, phone.hdd_size, phone.screen_size, phone.price
from phone
inner join product on phone.model = product.model and product.manufacturer = "Apple"
order by product.manufacturer DESC
*/