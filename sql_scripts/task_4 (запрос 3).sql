-- Запрос 3: Количество отличников, количество студентов и преподаватель в каждой группе

SELECT 
    g.id AS group_id, 
    g.name AS group_name,
    COUNT(DISTINCT s.id) AS student_count,
    COUNT(DISTINCT CASE WHEN m.mark > 4 THEN s.id END) AS excellent_student_count,
    t.first_name AS teacher_first_name,
    t.last_name AS teacher_last_name
FROM `group` g
JOIN student s ON g.id = s.id_group
JOIN marks m ON s.id = m.student_id
JOIN course_teacher ct ON m.course_id = ct.course_id
JOIN teacher t ON ct.teacher_id = t.id
GROUP BY g.id, g.name, t.first_name, t.last_name;
