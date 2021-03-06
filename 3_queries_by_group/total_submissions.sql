SELECT cohorts.name as cohort_name, COUNT(assignment_submissions.*) AS total_submissions
FROM cohorts
JOIN students ON cohorts.id = cohort_id
JOIN assignment_submissions ON students.id = student_id
GROUP BY cohort_name 
ORDER BY COUNT(assignment_submissions.*) desc;
