select distinct takes.ID, instructor.name from takes
inner join teaches
on takes.course_id = teaches.course_id
and takes.sec_id = teaches.sec_id
and takes.semester = teaches.semester
inner join instructor 
on instructor.ID = teaches.ID
where instructor.name = 'Dale';
