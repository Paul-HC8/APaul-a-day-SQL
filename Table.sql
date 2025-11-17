-- Create database
CREATE DATABASE IF NOT EXISTS sql_basics_2025;
USE sql_basics_2025;

-- Create students table
CREATE TABLE students (
  id INT PRIMARY KEY AUTO_INCREMENT,
  full_name VARCHAR(100),
  program VARCHAR(50),
  year_level INT,
  grade INT
);

-- Create teachers table
CREATE TABLE teachers (
  id INT PRIMARY KEY AUTO_INCREMENT,
  full_name VARCHAR(100),
  department VARCHAR(100),
  subject_assigned VARCHAR(100)
);


-- Create subjects table
CREATE TABLE subjects (
  id INT PRIMARY KEY AUTO_INCREMENT,
  student_id INT,
  subject_name VARCHAR(50),
  score INT,
  FOREIGN KEY (student_id) REFERENCES students(id)
);

-- Insert data into students table
INSERT INTO students (full_name, program, year_level, grade) VALUES
('Juan Dela Cruz', 'BSIT', 3, 88),
('Ana Santos', 'BSCS', 2, 92),
('Carlos Reyes', 'BSIT', 4, 75),
('Maria Lopez', 'BSCS', 1, 85),
('Lito Navarro', 'BSIS', 2, 79),
('Andrea Mendoza', 'BSIT', 1, 91),
('Rico Tan', 'BSIS', 3, 87),
('Grace Domingo', 'BSCS', 2, 90),
('Nathaniel Sy', 'BSIT', 4, 65),
('Elaine Go', 'BSCS', 3, 82),
('Bryan Lim', 'BSIS', 1, 77),
('Julia De Vera', 'BSIT', 3, 93),
('Mico Javier', 'BSCS', 4, 68),
('April Padua', 'BSIT', 2, 86),
('Tina Dizon', 'BSIS', 3, 80);

-- Insert data into subjects table
INSERT INTO subjects (student_id, subject_name, score) VALUES
(1, 'Math', 91), (1, 'English', 85), (1, 'Science', 88), (1, 'PE', 92),
(2, 'Math', 95), (2, 'English', 90), (2, 'Science', 91), (2, 'PE', 89),
(3, 'Math', 72), (3, 'English', 70), (3, 'Science', 74), (3, 'PE', 78),
(4, 'Math', 85), (4, 'English', 87), (4, 'Science', 83), (4, 'PE', 86),
(5, 'Math', 76), (5, 'English', 75), (5, 'Science', 78), (5, 'PE', 79),
(6, 'Math', 93), (6, 'English', 89), (6, 'Science', 90), (6, 'PE', 91),
(7, 'Math', 88), (7, 'English', 85), (7, 'Science', 86), (7, 'PE', 87),
(8, 'Math', 90), (8, 'English', 92), (8, 'Science', 89), (8, 'PE', 90),
(9, 'Math', 65), (9, 'English', 60), (9, 'Science', 63), (9, 'PE', 67),
(10, 'Math', 81), (10, 'English', 83), (10, 'Science', 85), (10, 'PE', 82),
(11, 'Math', 77), (11, 'English', 75), (11, 'Science', 78), (11, 'PE', 79),
(12, 'Math', 96), (12, 'English', 94), (12, 'Science', 95), (12, 'PE', 93),
(13, 'Math', 68), (13, 'English', 66), (13, 'Science', 70), (13, 'PE', 69),
(14, 'Math', 86), (14, 'English', 88), (14, 'Science', 85), (14, 'PE', 84),
(15, 'Math', 80), (15, 'English', 82), (15, 'Science', 81), (15, 'PE', 83);


-- Insert data into teachers table
INSERT INTO teachers (full_name, department, subject_assigned) VALUES
('Mr. Carlos Dizon', 'Mathematics', 'Math'),
('Ms. Angela Torres', 'Science', 'Science'),
('Sir Ramon Villanueva', 'Information Technology', 'Computer Fundamentals'),
('Ma’am Liza Santos', 'Computer Science', 'Data Structures'),
('Prof. John Lim', 'General Education', 'English');
