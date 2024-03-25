select url, contents from comments
 join photos on photos.id=comments.photo_id
  where comments.user_id = photos.user_id;


--   Three way Join to get the username how commeted on there on photos

  select url, contents, username from comments
   join photos  on photos.id=comments.photo_id 
  join users on users.id=comments.user_id and users.id=photos.user_id ;