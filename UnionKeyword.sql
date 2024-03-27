---> Union -- Join together the results of two queries and remove duplicate rows


(
    select * from products
    order by price desc
    limit 4
)
union
(
    select * from products
    order by price/weight desc
    limit 4
);

---> union all -- Join together results of two queries

(
    select * from products
    order by price desc
    limit 4
)
union all
(
    select * from products
    order by price/weight desc
    limit 4
);

----> To perform union operation on tables all the colnames and datatypes should be same

select * from products
union
select * from products;