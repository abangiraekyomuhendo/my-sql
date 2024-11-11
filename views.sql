
CREATE DATABASE classroom;

USE classroom;

--course table
CREATE TABLE course (
    course_code INT,
    course_name VARCHAR(100),
    course_year INT,
    semester INT,
    credit_units INT
);

ALTER TABLE course
DROP COLUMN course_code;

ALTER TABLE course
ADD COLUMN course_code INT;

-- Add course_program column to the course table
ALTER TABLE course
ADD COLUMN course_program VARCHAR(100);

-- Create the course_program table to store program names
CREATE TABLE course_program (
    program_id INT PRIMARY KEY AUTO_INCREMENT,
    program_name VARCHAR(100) NOT NULL
);

-- Insert program names into the course_program table
INSERT INTO course_program (program_name) VALUES
('Data Science'),
('Computer Science'),
('Law');

CREATE VIEW student1_2 AS 



-- CREATE VIEW student1_2 AS
-- SELECT sc.student_id, 
--        c.course_name, 
--        c.course_year, 
--        c.semester, 
--        c.credit_units, 
--        c.course_program
-- FROM student_courses sc
-- JOIN course c ON sc.course_id = c.course_id
-- WHERE sc.program = c.course_program;



-- Create the table to capture course details
-- CREATE TABLE ccourse (
--     course_code INT AUTO_INCREMENT PRIMARY KEY NOT NULL UNIQUE,
--     course_name VARCHAR(100) NOT NULL,
--     course_code VARCHAR(20) NOT NULL UNIQUE,
--     year INT NOT NULL,
--     semester INT NOT NULL,
--     credit_units INT NOT NULL
-- );


