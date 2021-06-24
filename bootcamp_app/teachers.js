const { Pool, Query } = require('pg');

const pool = new Pool({
  user: 'vagrant',
  password: '123',
  host: 'localhost',
  database: 'bootcampx'
});

const input = process.argv;

pool.query(`
  select distinct teachers.name as teacher,
  cohorts.name as cohort
  from assistance_requests
  join teachers
  on teachers.id = assistance_requests.teacher_id
  join students
  on students.id = assistance_requests.student_id
  join cohorts
  on cohorts.id = students.cohort_id
  where cohorts.name = '${input[2]}'
  order by teacher;
`).then(res => {
  res.rows.forEach(teacher => {
    console.log(`${input[2]}: ${teacher.teacher}`);
  });
}).catch(err => {
  console.error('query error', err.stack);
});