-- Select the instructor's name and the cohort's name.
-- Don't repeat the instructor's name in the results list.
-- Order by the instructor's name.
-- This query needs to select data for a cohort with a specific name, use 'JUL02' for the cohort's name here.

-- SELECT DISTINCT teachers.name as teacher, cohorts.name as cohort
-- -- 
-- FROM teachers
-- JOIN assistance_requests ON teacher_id = teachers.id
-- JOIN students ON student_id = students.id
-- JOIN cohorts ON cohort_id = cohorts.id
-- WHERE cohorts.name = 'JUL02'
-- ORDER BY teacher;

-- can only join table if there is a pk and fk between them

-- SELECT DISTINCT teachers.name as teacher, cohorts.name as cohort
-- -- 
-- FROM cohorts
-- -- join table that has the fk, fk = pk
-- JOIN students ON cohort_id = cohorts.id
-- JOIN assistance_requests ON student_id = students.id
-- JOIN teachers ON teacher_id = teachers.id
-- WHERE cohorts.name = 'JUL02'
-- ORDER BY teacher;

-- number of students per cohort
SELECT count(students.cohort_id), cohorts.name
FROM cohorts
JOIN students ON cohort_id = cohorts.id
-- groups the agragated value into each corresponding cohort name
-- GROUP BY cohorts.name, cohorts.id
-- orders results by cohort id (months in order)
ORDER BY cohorts.id;

-- SELECT students.cohort_id, cohorts.name
-- FROM cohorts
-- JOIN students ON cohort_id = cohorts.id
-- WHERE cohorts.name = 'APR09';