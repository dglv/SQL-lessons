use digital_store;

/* 
    Find out model, hdd size for all PCs which prices are less than 800$. 
    Output: model, hdd_size, price
*/
# version 1
select model, hdd_size, price from pc where price < 800;

# version 2
select product.model, product.manufacturer, pc.hdd_size, pc.price from product, pc where product.model = pc.model and price < 800;

# version 3
select pc.model, manufacturer, hdd_size, price from product, pc where product.model = pc.model and price < 800;

/*
    Select phones which price is more that 500$
    Output: model, ram_size, screen_size, price
*/
select model, ram_size, screen_size, price from phone where price > 500;

/*
    Find out PCs which have x12, x48 cd-rom speed and price is less 400$. Sort the results by price in descending order.
    Output: model, cd, price
*/
# version 1
select model, cd, price
from pc
where cd in ("x12", "x48") and price < 400
order by price;

# version 2
select model, cd, price
from pc
where (cd  = "x12" OR cd = "x48") and price < 400
order by price;
