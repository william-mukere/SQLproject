CREATE DATABASE learning;
CREATE TABLE Students(students_id INT,name VARCHAR(20),class VARCHAR(20),marks DEC(3,2),PRIMARY KEY(students_id));
INSERT INTO Students (students_id,name,class,marks)
values(1,'William','Biology',4.50)
SELECT * FROM Students;
ALTER TABLE Students
ALTER COLUMN marks DEC (5,2);
UPDATE Students
SET marks = 80.00
WHERE students_id = 1;
SELECT * FROM Students;
INSERT INTO Students (students_id,name,class,marks)
values(2,'John','Maths',76.00),
(3,'Lina','Chemistry',86.00),
(4,'Jamo','Business',67.00);
UPDATE Students
SET class = 'Science'
WHERE class = 'Biology' OR class = 'Chemistry';
SELECT * FROM Students;
DELETE FROM Students
WHERE students_id = 4;
SELECT * FROM Students;
SP_HELP Students
SELECT name 
FROM Students;
SELECT name , class
FROM Students;
SELECT students.name , students.class
FROM Students ORDER BY name DESC;
SELECT *
FROM Students ORDER BY marks ASC;
-- <, >, <=, >=, =, <>, AND, OR
SELECT * 
FROM Students 
WHERE marks > 79;
SELECT * 
FROM Students 
WHERE marks <= 86 OR marks >= 76;
SELECT *
FROM Students 
WHERE name IN ('William' , 'Lina');