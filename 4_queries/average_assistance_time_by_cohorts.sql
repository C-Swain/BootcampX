SELECT cohorts.name as cohort, AVG(completed_at - started_at) as average_assistance_request_duration  
FROM assistance_requests
JOIN students ON students.id = student_id
JOIN cohorts ON cohorts.id = cohort_id 
Group BY cohorts.name
ORDER BY AVG(completed_at - started_at);