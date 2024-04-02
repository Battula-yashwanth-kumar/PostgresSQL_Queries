select name, department from products
where deparment NOT IN (
    select department from products where price <100
);

-- >ALL  ---> single column
-- <ALL ---> Single Column
-- >=ALL ---> Single Column
-- <=ALL ---> Single Column
-- =ALL ---> Single Column
-- <>ALL ---> Single Column

-- >some
-- <some
-- >=some
-- <=some
-- =some
-- <>some

select name,department, price from products where price 
>ALL
 (
    select price from products where department ='Industrial'
);


select name, department, price form products
where 
price > some 
(select price from products where department='Industrial');