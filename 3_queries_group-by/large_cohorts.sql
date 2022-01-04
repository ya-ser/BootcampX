SELECT cohorts.name as cohort_name, count(students.*) as student_count 
FROM cohorts
JOIN students ON cohorts.id = cohort_id
GROUP BY cohort_name 
HAVING count(students.*) >= 18
ORDER BY student_count;

-- -- Why does this not work?
-- SELECT count(assignments)-count(assignment_submissions) as total_incomplete
-- FROM assignment_submissions
-- -- 
-- JOIN students ON students.id = student_id
-- WHERE students.name = 'Ibrahim Schimmel';

-- SELECT (
--   SELECT count(assignments)
--   FROM assignments
-- )-count(assignment_submissions) as total_incomplete
-- FROM assignment_submissions
-- JOIN students ON students.id = student_id
-- WHERE students.name = 'Ibrahim Schimmel';

-- SELECT count(students)
-- FROM students
-- -- What is ""= cohort_id"?
-- JOIN cohorts on cohorts.id = cohort_id
-- GROUP BY cohorts;

-- SELECT assignments.name
-- FROM assignments 
-- WHERE id NOT IN
-- (
--   SELECT assignment_id
--   FROM assignment_submissions
--   JOIN students ON students.id = student_id
--   WHERE students.name = 'Ibrahim Schimmel'
-- );