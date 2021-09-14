SELECT teachers.name as teacher, students.name as student, assignments.name as assignment,
  (completed_at) - (started_at) as total_duration_of_assistance
FROM teachers
JOIN assistance_requests ON teachers.id = teacher_id
JOIN assignments ON assignment_id = assignments.id
JOIN students ON students.id = student_id
ORDER BY total_duration_of_assistance