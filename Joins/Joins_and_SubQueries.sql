select first_name from users
 join (select user_id from orders where product_id=3) as o
  on o.user_id=user.id;