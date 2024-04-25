select * from instructor;

INSERT INTO instructor (ID, name, dept_name, salary)
SELECT s.ID, s.name, s.dept_name, 30000
FROM student s
WHERE s.tot_cred > 100;
