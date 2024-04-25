select c.first_name, c.last_name 
from customer c
inner join payment p on p.customer_id = c.customer_id
where p.payment_date >= current_date - interval 30 day;
