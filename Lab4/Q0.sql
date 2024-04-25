create view tot_credits1 as 
select t.year, sum(c.credits) as num_credits 
from takes t
inner join course c on t.course_id = c.course_id
group by t.year;

select * from tot_credits1;
