--Ex1 
select firstname, lastname, deptcode
from employees 
where deptcode = (select code from departments where name = "Consulting");

--Ex2
select firstname, lastname
from employees 
where deptcode = (select deptcode from departments where name = "Consulting")
and employeeid in 
(select employeeid from workson where projectid = "ADT4MFIA" and assignedtime>0.2);

--Ex3
select (select sum(assignedtime) from workson where employeeid in (select employeeid from employees where firstname = "Abe" and lastname = "Advice"))
/
(select sum(assignedtime) from workson)*100 as percent_time;

--Ex4
select name from departments where code not in (select deptcode from projects);

--Ex5
select firstname, lastname from employees where salary > (select avg(salary) from employees where deptcode = (select code from departments where name = "Consulting") group by deptcode);

--Ex6
select description from projects where projectid IN (select projectid from workson where assignedtime > 0.7);

--Ex7
select firstname, lastname, deptcode from employees where salary > (select min(salary) from employees where deptcode = (select code from departments where name = "Accounting") group by deptcode);

--Ex8
select min(salary) from employees where salary > (select max(salary) from employees where deptcode = (select code from departments where name = "Accounting"));

--Ex0
select firstname, lastname from employees where salary = (select max(salary) from employees where deptcode = (select code from departments where name = "Accounting"));

--Ex9
select firstname, lastname, salary from employees where salary = (select max(salary) from employees where deptcode = (select code from departments where name = "Accounting"));
