SELECT t.fullname AS teacher, s.fullname AS student, ROUND(AVG(g.grade), 2) AS average_grade
FROM grades g
JOIN disciplines d ON d.id = g.discipline_id
JOIN teachers t ON t.id = d.teacher_id 
JOIN students s ON s.id = g.student_id
WHERE t.id = 1 AND s.id = 1