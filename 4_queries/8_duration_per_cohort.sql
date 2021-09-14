SELECT cohorts.name, SUM(completed_at - started_at) as total_duration
FROM cohorts
JOIN students ON cohorts.id = cohort_id
JOIN assistance_requests ON students.id = student_id
GROUP BY cohorts.id
ORDER BY total_duration;