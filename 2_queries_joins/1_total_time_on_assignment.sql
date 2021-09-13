SELECT  SUM(assignment_submissions.duration), name
FROM assignment_submissions
JOIN students ON student_id = students.id
WHERE name = 'Ibrahim Schimmel'
GROUP BY name