SELECT count(assignment_submissions.*) as total_subs, cohorts.name as cohort
FROM students
JOIN cohorts 
ON cohort_id = cohorts.id
JOIN assignment_submissions
ON students.id = assignment_submissions.student_id
GROUP BY cohorts.name
ORDER BY total_subs DESC;