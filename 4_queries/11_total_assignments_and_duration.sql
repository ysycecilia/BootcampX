select assignments.day as day,
       count(assignments.id) as number_of_assignments,
       sum(duration) as duration
from assignments
group by day
order by day;