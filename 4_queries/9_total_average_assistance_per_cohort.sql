SELECT AVG(SELECT SUM(completed_at - started_at) FROM assistance_requests) as average_total_duration
FROM cohorts
JOIN students ON cohorts.id = cohort_id
JOIN assistance_requests ON students.id = student_id