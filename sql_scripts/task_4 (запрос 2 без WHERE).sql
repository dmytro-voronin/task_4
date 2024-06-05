-- Запрос 2: Выборка студентов, у которых по курсу 'Programming' оценка > 4,
-- и сортировка их по фамилии и имени без WHERE
-- Условия, которые были в WHERE, перенесены в JOIN.

SELECT s.first_name, s.last_name
FROM student s
JOIN marks m ON s.id = m.student_id AND m.mark > 4
JOIN course c ON m.course_id = c.id AND c.course_title = 'Programming'
ORDER BY s.last_name, s.first_name;
