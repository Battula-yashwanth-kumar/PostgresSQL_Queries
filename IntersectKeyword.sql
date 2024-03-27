---> Intersect -- Find the rows common in the results of two queries.Remove duplicates

(
    select * from products
    order by price desc
    limit 4
)
intersect
(
    select * from products
    order by price/weight desc
    limit 4
);








---> Intersect ALL -- Find the rows common in the results of twp queries

(
    select * from products
    order by price desc
    limit 4
)
intersect all
(
    select * from products
    order by price/weight desc
    limit 4
);