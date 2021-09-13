SELECT students.name as student, students.start_date as student_start_date, cohorts.name as cohort_title, cohorts.start_date as cohort_start_date
FROM students 
JOIN cohorts ON cohort_id = cohorts.id
WHERE students.start_date <> cohorts.start_date