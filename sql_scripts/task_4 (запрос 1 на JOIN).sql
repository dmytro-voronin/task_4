-- Запрос 1: Выборка всех преподавателей на курсах, у которых учатся больше 20 студентов на JOIN

SELECT DISTINCT t.id, t.first_name, t.last_name, t.email
FROM teacher t
JOIN course_teacher ct ON t.id = ct.teacher_id
JOIN marks m ON ct.course_id = m.course_id
GROUP BY t.id, t.first_name, t.last_name, t.email
HAVING COUNT(DISTINCT m.student_id) > 20;
