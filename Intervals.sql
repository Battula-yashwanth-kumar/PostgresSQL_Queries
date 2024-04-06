select ('1 day'::INTERVAL);
select ('1 D 20 H'::INTERVAL);
select ('1 D 20 H 30 M 45 s'::interval);
select ('1 D 20 H 30 M 45 s'::interval)- ('1 day'::INTERVAL);
select ('Nov-20-1980 1:23 AM EST'::timestamp with time zone) -('4 D' :: interval);
select ('Nov-20-1980 1:23 AM EST'::timestamp with time zone) - ('Nov-10-1980 1:23 AM PST'::timestamp with time zone)