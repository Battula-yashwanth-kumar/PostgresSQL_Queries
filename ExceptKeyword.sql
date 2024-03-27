---> Except -- Find the rows that are present in first query but not second query. Remove duplicates

(
    select * from products
    order by price desc
    limit 4
)
except
(
    select * from products
    order by price/weight desc
    limit 4
);

---> Except All -- Find the rows that are present in first query but not second query

(
    select * from products
    order by price desc
    limit 4
)
except all
(
    select * from products
    order by price/weight desc
    limit 4
);