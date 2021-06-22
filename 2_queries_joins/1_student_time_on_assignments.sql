select sum(duration) as total_duration 
from assignment_submissions
join students
on assignment_submissions.student_id = students.id
where name = 'Ibrahim Schimmel';
