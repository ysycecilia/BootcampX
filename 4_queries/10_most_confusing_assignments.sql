select assignments.id as id,
       assignments.name as name, 
       assignments.day as day,
       assignments.chapter as chapter,
       count(a.*) as total_requests
from assistance_requests as a
join assignments
on assignments.id = assignment_id
group by assignments.id
order by total_requests desc;