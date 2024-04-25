select f.film_id, r.rental_date
from film f 
inner join inventory i on i.film_id = f.film_id
inner join rental r on r.inventory_id = i.inventory_id
where r.rental_date <	'2005-01-01 00:00:00' or r.rental_date > '2005-02-01 00:00:00' 
order by r.rental_date;
