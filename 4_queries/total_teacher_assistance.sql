-- Select the teacher's name and the total assistance requests.
-- Since this query needs to work with any specific teacher name, use 'Waylon Boehm' for the teacher's name here.
SELECT count(assistance_requests.teacher_id) AS total_assistances, teachers.name AS name
FROM assistance_requests
JOIN teachers ON teachers.id = teacher_id
WHERE teachers.name = 'Waylon Boehm'
GROUP BY teachers.name;