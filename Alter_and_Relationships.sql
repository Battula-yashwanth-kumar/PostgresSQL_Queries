create table products (
id serial primary key,
name varchar(40),
department varchar(40),
price integer,
weight integer
);
insert into products ( name, department,price, weight) values ('shirt','hello',150,23);
insert into products ( name, department, weight) values ('shirt','hello',23);
update products
set price=999
where price is null;
select * from products;

alter table products 
alter column price
set not null;

alter table products 
alter column weight
set default 999;

update products 
set name='RedShirt'
where id=2;
update products 
set name='BlueShirt'
where id=3;

alter table products 
add unique (name);

alter table products 
drop constraint products_name_key;

alter table products 
add unique (name,department);

alter table products 
drop constraint products_name_department_key;

alter table products 
add check(price>0);

insert into products (name,department,price,weight) values('belt','house',-1,1);

create table orders(
id serial primary key,
name varchar(40)not null,
created_at timestamp not null,
est_delivery timestamp not null,
check (created_at<est_delivery)
);

insert into orders (name,created_at, est_delivery)
values ('shirt','2000-Nov-20 01:00AM','2000-NoV-30 01:00AM');

insert into orders (name,created_at, est_delivery)
values ('shirt','2000-Nov-20 01:00AM','2000-NoV-10 01:00AM');

