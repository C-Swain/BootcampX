SELECT students.name as student, COUNT(assignment_submissions.*) AS total_submissions
FROM assignment_submissions
JOIN students ON students.id = student_id
GROUP BY students.name;