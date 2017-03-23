/*
    The UNION operator is used to combine the result-set of two or more SELECT statements.
        - each SELECT statement within UNION must have the same number of columns;
        - the columns must also have similar data types
        - the columns in each SELECT statement must also be in the same order
    
    NOTE: The UNION operator selects only distinct values by default. To allow duplicate values, use UNION ALL
*/

use digital_store;

/*
    Select all models and their prices for all types of products where manufacturer is Apple.
    Output: model, manufacturer, price
*/
# version 1
select prod.model, prod.manufacturer, pc.price
from product prod
inner join pc on prod.model = pc.model and prod.manufacturer = "Apple"
union select prod.model, prod.manufacturer, phone.price
from product prod
inner join phone on prod.model = phone.model and prod.manufacturer = "Apple"
union select prod.model, prod.manufacturer, print.price
from product prod
inner join printer print on prod.model = print.model and prod.manufacturer = "Apple";

# version 2
select product.model, product.manufacturer, phone.price
from phone, product
where phone.model in (
    select model
    from product
    where manufacturer = "Apple"
) and product.model = phone.model
union
select product.model, product.manufacturer, pc.price
from pc, product
where pc.model in (
    select model
    from product
    where manufacturer = "Apple"
) and product.model = pc.model
union
select product.model, product.manufacturer, printer.price
from printer, product
where printer.model in (
    select model
    from product
    where manufacturer = "Apple"
) and product.model = printer.model;

# version 3
select * 
from (
    select pc.model, pc.price from pc
    union
    select phone.model, phone.price from phone
    union
    select printer.model, printer.price from printer
) as a
where a.model in (
    select model
    from product
    where manufacturer = "Apple"
);


