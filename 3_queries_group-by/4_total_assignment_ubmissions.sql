select cohorts.name as cohort, count(a.id) as total_submissions 
from cohorts
join students
on cohorts.id = students.cohort_id
join assignment_submissions as a
on a.student_id = students.id
group by cohorts.name
order by total_submissions desc;


