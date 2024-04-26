select dept_name, ID, name, salary, percent_rank() over (partition by dept_name order by salary desc) as percent_rnk 
from instructor;
