select students.name as student, avg(a.duration) as average_assignment_duration 
from students
join assignment_submissions as a
on a.student_id = students.id
group by students.name
where students.end_date is null
order by average_assignment_duration DESC;