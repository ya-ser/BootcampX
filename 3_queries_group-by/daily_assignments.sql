-- SELECT assignments.day as day, count(assignments.*) as total_assignments
-- FROM assignments_seeds
-- ORDER BY day;

SELECT day, count(*) as total_assignments
FROM assignments
GROUP BY day
ORDER BY day;