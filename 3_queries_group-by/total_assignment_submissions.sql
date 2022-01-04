SELECT cohorts.name as cohort, count(assignment_submissions.*) as total_submissions
FROM assignment_submissions
-- connects pk to fk
JOIN students ON students.id = student_id
-- connects pk to fk
JOIN cohorts ON cohorts.id = cohort_id
GROUP BY cohorts.name
ORDER BY total_submissions DESC;

-- -- for each cohort
-- SELECT cohorts.name AS cohort, (
--   -- count assignment submissions based on id column
--   SELECT count(assignment_submissions.id)
--   -- from the assignment submissions table
--   FROM assignment_submissions
--   -- compare current cohort with the cohort id of the assignment submission
--   WHERE cohorts.id = (
--     -- assignment sub doesnt save cohort id column so it needs to be specified 
--     SELECT cohort_id
--     FROM students
--     WHERE students.id = assignment_submissions.student_id
--     -- ensure sub quierie returns 1 record
--     LIMIT 1
--   )
-- ) AS total_submissions
-- FROM cohorts
-- GROUP BY cohorts.id
-- ORDER BY total_submissions DESC;