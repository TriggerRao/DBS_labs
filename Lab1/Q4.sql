select i.ID, i.name, i.salary
from instructor i
where i.salary = (select max(i.salary) from instructor i);
