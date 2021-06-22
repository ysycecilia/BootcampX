select sum(a.duration) as total_duration 
from assignment_submissions a
join students
on student_id = students.id
join cohorts
on cohorts.id = students.cohort_id
where cohorts.name = 'FEB12';



