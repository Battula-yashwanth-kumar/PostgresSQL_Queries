drop table photos;
select * from photos;
create table photos (
id serial primary key,
url varchar(200),
user_id integer references users(id) on delete cascade
);
insert into photos (url, user_id) values ('http://one.jpg',4);
select * from public.photos;
select * from photos;

insert into photos (url, user_id) values ('https://two.jpg',1),('https://two.jpg',2),
('https://two.jpg',3),('https://two.jpg',4),('https://two.jpg',1);

delete from users where id = 1;
select * from photos;