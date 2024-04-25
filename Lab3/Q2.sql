select c.first_name, c.last_name, sum(p.amount)
from customer c
inner join payment p on p.customer_id = c.customer_id
group by c.customer_id, c.first_name, c.last_name;
