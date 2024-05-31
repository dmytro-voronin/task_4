-- Запрос 2: Выборка студентов, у которых по курсу 'Programming' оценка > 4,
-- и сортировка их по фамилии и имени

SELECT s.first_name, s.last_name
FROM student s
JOIN marks m ON s.id = m.student_id
JOIN course c ON m.course_id = c.id
WHERE c.course_title = 'Programming' AND m.mark > 4
ORDER BY s.last_name, s.first_name;