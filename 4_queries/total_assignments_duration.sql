-- Select the day, number of assignments, and the total duration of assignments.
-- Order the results by the day.

-- SELECT assignments.day as day, count(assignments.*) as number_of_assignments, assignment_submissions.duration as duration
-- FROM assignments
-- JOIN assignment_submissions ON assignments.id = assignment_id
-- GROUP BY assignment_submissions
-- ORDER BY day;

SELECT day, count(*) as number_of_assignments, sum(duration) as duration
FROM assignments
GROUP BY day
ORDER BY day;