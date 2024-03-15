create table users(
id serial primary key,
username varchar(50)
);
select * from users;
insert into users (username) values ('hello'),('cjnjwc'),('echwg'),('hwcjh');
select * from users;

// serail is used to automatically generate the Id when the username is entered
//  In mysql we use  id INT AUTO_INCREMENT PRIMARY KEY