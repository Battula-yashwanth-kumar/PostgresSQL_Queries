create table comments(
id serial primary key,
contents varchar(300),
user_id integer references users(id),
photo_id integer references photos(id)
);
insert into comments(contents,user_id, photo_id) values('wcjcwcwvwcuw','3','3'),('wcjcwcwvwcuw','2','2');

select * from comments join users on users.id=comments.user_id;
select contents ,username from comments join users on users.id=comments.user_id;
select contents, url from comments join photos on photos.id=comments.id;