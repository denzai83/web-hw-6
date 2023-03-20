SELECT t.fullname AS teacher, s.fullname AS student, d.name AS discipline
FROM disciplines d 
JOIN teachers t ON t.id = d.teacher_id
JOIN grades g ON g.discipline_id = d.id 
JOIN students s ON g.student_id = s.id
WHERE t.id = 1 AND s.id = 1
GROUP BY discipline
ORDER BY discipline