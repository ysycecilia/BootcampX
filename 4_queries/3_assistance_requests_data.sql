select teachers.name as teacher,
       students.name as student, 
       assignments.name as assignment,
       (completed_at - started_at) as duration
from assistance_requests as a
join students
on student_id = students.id
join teachers
on teacher_id = teachers.id
join assignments
on assignments.id = assignment_id
order by duration;