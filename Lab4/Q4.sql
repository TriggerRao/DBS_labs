select payment_id, amount, avg(amount)
over (order by payment_id) as running_avg
from payment;
