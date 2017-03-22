use digital_store;

/* 
    Find out model, hdd size for all PCs which prices are less than 800$. 
    Output: model, hdd_size, price
*/
# variant 1
select model, hdd_size, price from pc where price < 800;

# variant 2
select product.model, product.manufacturer, pc.hdd_size, pc.price from product, pc where product.model = pc.model and price < 800;

# variant 3
select pc.model, manufacturer, hdd_size, price from product, pc where product.model = pc.model and price < 800;




