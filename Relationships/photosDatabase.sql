create table photos (
id serial primary key,
url varchar(200),
user_id integer references users(id) ---> foreginKey Reference
);
insert into photos (url, user_id) values ('http://one.jpg',4);
select * from public.photos;
select * from photos;

insert into photos (url, user_id) values ('https://two.jpg',1),('https://two.jpg',2),
('https://two.jpg',3),('https://two.jpg',4),('https://two.jpg',1);

select * from photos where user_id=4;
select * from photos join users on users.id = photos.user_id;


-- We Insert a photo taht is tied to a user that exists --> then Everthing works ok !
-- We insert a photo that refers to a user that doesn't ---> An error
-- We insert a photo that isn't tied to any user--->put in a value of null for the  userID