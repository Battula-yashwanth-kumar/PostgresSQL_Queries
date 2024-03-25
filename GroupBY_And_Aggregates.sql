select user_id, max(id) from comments group by user_id;
select user_id, count(id) as num from comments group by user_id;
select user_id, count(*) as num from comments group by user_id;

-- Find the number of comments for each photo

select photo_id, count(*) from comments group by photo_id;

-- Find the number of comments for each photo where the photo_id is less than 3 and the photo has more than 2 comments

select photo_id, count(*) from comments
 where photo_id<3
  group by photo_id
   having count(*)>2;


--  Find the user(user_ids) where the user ahs commented on the first 2 photos and the user added more than 2 comments on thos photos

select user_id, count(*) from comments 
where photo_id<5
 group by user_id 
 having count(*)>2;