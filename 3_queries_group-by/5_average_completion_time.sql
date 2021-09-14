SELECT students.name as student, AVG(assignment_submissions.duration) as average_duration
FROM students
JOIN assignment_submissions
ON students.id = student_id
WHERE end_date IS NULL
GROUP BY students.name
ORDER BY AVG(assignment_submissions.duration) DESC;