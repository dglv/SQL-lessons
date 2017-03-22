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