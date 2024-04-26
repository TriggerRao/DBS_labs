select dept_name, count(course_id), rank() 
over (order by count(course_id) desc) 
from course 
group by dept_name;
