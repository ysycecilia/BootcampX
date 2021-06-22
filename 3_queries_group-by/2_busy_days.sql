select day, count(id) as total_assignments
from assignments
group by day
having count(id) >= 10
order by day;