-- Запрос 3: Количество отличников, количество студентов и преподаватель в каждой группе

-- Запрос 3 - навіщо на групувати по назві групи і імені вчителя? І чи можна обійтись групуванням лише по одному полю

/*Исходная информация в БД сделана так, что в каждой группе есть несколько учителей и все они выводятся для каждой группы.
 Если группировать по учителю, то будет общее количество студентов для трех преподавателей.
 А если по групе то будет только сколько студентов в каждой группе и общее количество отличников
*/

SELECT 
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
GROUP BY g.name, t.first_name, t.last_name;

