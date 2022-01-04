-- select the sum of duration (table.column) and name it
SELECT SUM(assignment_submissions.duration) as total_duration
-- specify where the column is from
FROM assignment_submissions
-- join the student table to the equation to get the student id column
JOIN students ON students.id = student_id
-- specify the student
WHERE students.name = 'Ibrahim Schimmel';