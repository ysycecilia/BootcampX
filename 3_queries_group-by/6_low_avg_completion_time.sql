select students.name as student, avg(a.duration) as average_assignment_duration, avg(assignments.duration) as average_estimated_duration
from students
join assignment_submissions as a
on a.student_id = students.id
join assignments
on assignments.id = a.assignment_id
WHERE end_date IS NULL
group by students.name
having avg(a.duration) < avg(assignments.duration)
ORDER BY average_assignment_duration;

