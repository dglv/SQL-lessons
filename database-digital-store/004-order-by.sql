/*
    The ORDER BY keyword is used to sort the result-set in ascending or descending order.
    The ORDER BY keyword sorts the records in ascending order by default.
*/

use digital_store;

/* 
    List the number of phones grouped by screen size. Sort the results in descending order. 
    Output: screen_size, amount
*/

select screen_size, count(id) as amount from phone group by screen_size order by amount desc;