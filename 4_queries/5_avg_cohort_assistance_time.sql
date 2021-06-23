select cohorts.name as name, avg(completed_at - started_at) as average_assistance_time 
from assistance_requests
join students
on students.id = student_id
join cohorts
on cohorts.id = students.cohort_id
GROUP BY cohorts.name
ORDER BY average_assistance_time;
