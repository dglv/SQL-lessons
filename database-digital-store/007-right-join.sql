/*
    The RIGHT JOIN keyword returns all records from the right table, and the matched records from the left table. 
    The result is NULL from the left side, when there is no match.
    Note: In some databases RIGHT JOIN is called RIGHT OUTER JOIN.
*/

use digital_store;

/*
    Select all phones where the manufacturer is Apple. BUT show information about other manufacturers as well. Sort the results by manufacturer.
    Output: phone.model, product.manufacturer, phone.ram_size, phone.hdd_size, phone.screen_size, phone.price
*/
select phone.model, product.manufacturer, phone.ram_size, phone.hdd_size, phone.screen_size, phone.price
from phone
right outer join product on phone.model = product.model and product.manufacturer = "Apple"
order by product.manufacturer DESC;


