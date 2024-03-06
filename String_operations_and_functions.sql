select  name || country from cities ;
select  name ||', ' || country from cities ;
select  concat( name,country) from cities ;
select  concat( name,', ',country) from cities ;
select  concat( upper( name),lower(country)) from cities ;
select  concat( length(name),country) from cities ;