SELECT s.fullname AS student, d.name AS discipline
FROM disciplines d 
JOIN grades g ON g.discipline_id = d.id 
JOIN students s ON g.student_id = s.id
WHERE s.id = 1
GROUP BY discipline
ORDER BY discipline