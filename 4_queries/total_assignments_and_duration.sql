SELECT day , COUNT(*) as number_of_assignments , SUM(duration) as duration
FROM assignments
Group by day 
Order by day;