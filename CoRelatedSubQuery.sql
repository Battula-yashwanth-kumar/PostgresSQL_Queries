-- Show the name, department, and price of the most expensive product in each department

select name,department,price,from products AS p1 where p1.price =(
    select max(price) from products as p2 where p1.department = p2.department
);

-- Without using a join or a group by, print the number of orders for each product

select p1.name,(
    select count(*) from orders as o1 where o1.product_id=p1.id
) as num_orders
from products as p1


select (
    select max(price) from products
)/(
    select avg(price) from products
);

select(
    select max(price) from products
),(
    select avg(price) from products
);
