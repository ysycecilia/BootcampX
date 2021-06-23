select cohorts.name as cohort, sum(completed_at - started_at) as total_duration
from assistance_requests
join students
on students.id = student_id
join cohorts
on cohorts.id = students.cohort_id
GROUP BY cohorts.name
ORDER BY total_duration;