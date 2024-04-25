select dept_name, title, count(sec_id), DENSE_RANK() OVER (partition by dept_name ORDER BY count(sec_id) DESC) AS dense_rnk 
from course 
inner join section on section.course_id = course.course_id 
group by course.course_id
order by dense_rnk;
