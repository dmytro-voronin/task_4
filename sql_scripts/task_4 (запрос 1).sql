-- Запрос 1: Выборка всех преподавателей на курсах, у которых учатся больше 20 студентов

SELECT t.id, t.first_name, t.last_name, t.email
FROM teacher t
JOIN course_teacher ct ON t.id = ct.teacher_id
JOIN (
    SELECT m.course_id, COUNT(DISTINCT m.student_id) AS student_count
    FROM marks m
    GROUP BY m.course_id
    HAVING student_count > 20
) AS c ON ct.course_id = c.course_id;
