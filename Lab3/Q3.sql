select s.store_id, sum(p.amount) 
from payment p
inner join store s 
where s.manager_staff_id = p.staff_id
group by s.store_id
