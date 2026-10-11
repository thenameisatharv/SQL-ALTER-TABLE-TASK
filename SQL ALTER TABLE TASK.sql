create database class;

use class;
CREATE TABLE students (
    student_id INT,
    student_name VARCHAR(50),
    city VARCHAR(30),
    course VARCHAR(40),
    marks INT
);

INSERT INTO students
(student_id, student_name, city, course, marks)
VALUES
(101, 'Asha', 'Pune', 'Data Analytics', 78),
(102, 'Ravi', 'Mumbai', 'Data Science', 35),
(103, 'Meena', 'Chennai', 'Data Analytics', 88),
(104, 'Karan', 'Delhi', 'Excel', 29),
(105, 'Sara', 'Pune', 'Data Science', 91);

SELECT * FROM students;
USE class;

ALTER TABLE students
ADD email VARCHAR(50);
select * from class.learners;
ALTER TABLE students
DROP COLUMN city;
ALTER TABLE students
RENAME COLUMN marks TO score;
ALTER TABLE students
MODIFY score DECIMAL(5,2);
RENAME TABLE students TO learners;
INSERT INTO learners
(student_id, student_name, course, score, email)
VALUES
(106, 'Vikram', 'Excel', 67, NULL);
ALTER TABLE learners
MODIFY score FLOAT;
ALTER TABLE learners
ADD city VARCHAR(30);
UPDATE learners
SET city = 'Hyderabad'
WHERE student_id = 103;
select * from learners
DELETE FROM learners
WHERE score < 40;
truncate table learners;
drop table learners;