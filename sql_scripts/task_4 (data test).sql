USE university;

DELETE FROM marks WHERE 1=1;
DELETE FROM course_teacher WHERE 1=1;
DELETE FROM student WHERE 1=1;
DELETE FROM teacher WHERE 1=1;
DELETE FROM course WHERE 1=1;
DELETE FROM `group` WHERE 1=1;

INSERT INTO `group` (name) VALUES 
('Group A'),
('Group B'),
('Group C'),
('Group D'),
('Group E'),
('Group F'),
('Group G'),
('Group H'),
('Group I');

INSERT INTO course (course_title) VALUES 
('Mathematics'),
('Programming'),
('Physics'),
('Chemistry'),
('Biology'),
('History'),
('Geography'),
('Literature'),
('Art');

INSERT INTO teacher (first_name, last_name, email) VALUES 
('John', 'Doe', 'john.doe@example.com'),
('Jane', 'Smith', 'jane.smith@example.com'),
('Mike', 'Brown', 'mike.brown@example.com'),
('Emma', 'Wilson', 'emma.wilson@example.com'),
('Olivia', 'Johnson', 'olivia.johnson@example.com'),
('Noah', 'Davis', 'noah.davis@example.com'),
('Liam', 'Martinez', 'liam.martinez@example.com'),
('Sophia', 'Garcia', 'sophia.garcia@example.com'),
('Mason', 'Lee', 'mason.lee@example.com');

INSERT INTO student (first_name, last_name, id_group) VALUES 
('Alice', 'Johnson', 1),
('Bob', 'Williams', 2),
('Charlie', 'Brown', 3),
('David', 'Jones', 1),
('Eve', 'Davis', 2),
('Frank', 'Miller', 3),
('Grace', 'Wilson', 4),
('Hannah', 'Moore', 5),
('Isaac', 'Taylor', 6),
('Jack', 'Anderson', 7),
('Kelly', 'Thomas', 8),
('Leo', 'Jackson', 9),
('Mia', 'White', 1),
('Nora', 'Harris', 2),
('Oscar', 'Martin', 3),
('Pam', 'Thompson', 4),
('Quinn', 'Garcia', 5),
('Ruby', 'Martinez', 6),
('Sam', 'Robinson', 7),
('Tina', 'Clark', 8),
('Uma', 'Rodriguez', 9),
('Victor', 'Lewis', 1),
('Wendy', 'Lee', 2),
('Xander', 'Walker', 3),
('Yara', 'Hall', 4),
('Zach', 'Allen', 5);

INSERT INTO course_teacher (course_id, teacher_id) VALUES 
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8),
(9, 9);

INSERT INTO marks (student_id, course_id, mark) VALUES 
(1, 1, 5), (1, 2, 4), (1, 3, 3),
(2, 1, 4), (2, 2, 5), (2, 3, 2),
(3, 1, 3), (3, 2, 3), (3, 3, 4),
(4, 1, 5), (4, 2, 4), (4, 3, 3),
(5, 1, 2), (5, 2, 5), (5, 3, 5),
(6, 1, 3), (6, 2, 4), (6, 3, 2),
(7, 1, 4), (7, 2, 5), (7, 3, 3),
(8, 1, 3), (8, 2, 4), (8, 3, 4),
(9, 1, 5), (9, 2, 5), (9, 3, 3),
(10, 1, 4), (10, 2, 3), (10, 3, 2),
(11, 1, 5), (11, 2, 4), (11, 3, 3),
(12, 1, 3), (12, 2, 2), (12, 3, 5),
(13, 1, 5), (13, 2, 4), (13, 3, 5),
(14, 1, 4), (14, 2, 3), (14, 3, 2),
(15, 1, 5), (15, 2, 5), (15, 3, 3),
(16, 1, 2), (16, 2, 4), (16, 3, 4),
(17, 1, 3), (17, 2, 3), (17, 3, 5),
(18, 1, 5), (18, 2, 5), (18, 3, 2),
(19, 1, 4), (19, 2, 4), (19, 3, 3),
(20, 1, 3), (20, 2, 3), (20, 3, 5),
(21, 1, 5), (21, 2, 4), (21, 3, 4),
(22, 1, 4), (22, 2, 5), (22, 3, 3),
(23, 1, 3), (23, 2, 3), (23, 3, 2),
(24, 1, 5), (24, 2, 5), (24, 3, 4),
(25, 1, 4), (25, 2, 4), (25, 3, 3),
(26, 1, 5), (26, 2, 5), (26, 3, 2);
