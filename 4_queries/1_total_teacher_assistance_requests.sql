select count(assistance_requests.*) as total_assistances, teachers.name
from assistance_requests
join teachers
on teacher_id = teachers.id
WHERE name = 'Waylon Boehm'
group by teachers.name;