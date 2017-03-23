use digital_store;

/* 
    Find out all product manufacturers. 
    Output: manufacturer
*/
select distinct manufacturer from product;

/*
    Find out all manufacturers of printers
    Output: manufacturer
*/
# version 1
select distinct product.manufacturer
from product
inner join printer on printer.model = product.model;

# version 2
select distinct manufacturer
from product
where model in (
    select model from printer
);