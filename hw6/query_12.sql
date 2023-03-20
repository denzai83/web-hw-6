SELECT gr.name AS group_name, s.fullname AS student, d.name AS discipline, g.grade AS grade, g.date_of AS date_of
FROM grades g
JOIN disciplines d ON d.id = g.discipline_id 
JOIN students s ON s.id = g.student_id
JOIN groups gr ON gr.id = s.group_id
WHERE gr.id = 1 AND d.id = 1 AND g.date_of = (
  SELECT MAX(date_of)
  FROM grades g2
  JOIN students s2 ON s2.id = g2.student_id
  JOIN groups gr2 ON gr2.id = s2.group_id
  WHERE g2.discipline_id = g.discipline_id AND gr2.id = gr.id
)
ORDER BY student;
