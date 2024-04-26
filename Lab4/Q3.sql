select payment_id, amount, sum(amount) 
over (order by payment_id) 
from payment;
