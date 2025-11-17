-- Display the average of each students across all the subjects.
-- Whow students full name and their average score
-- Order from highest to lowest

SELECT stud.full_name, avg(sub.score) AS Average
FROM students AS stud
JOIN subjects AS sub ON stud.id = sub.student_id
GROUP BY stud.full_name
HAVING Average > 90
ORDER BY Average DESC	
LIMIT 3	 