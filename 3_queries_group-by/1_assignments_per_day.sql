select day, count(id) as total_assignments
from assignments
group by day
order by day;