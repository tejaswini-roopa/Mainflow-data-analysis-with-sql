-- Create students table
CREATE TABLE students (
    student_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL
);

-- Create scores table
CREATE TABLE scores (
    score_id INT AUTO_INCREMENT PRIMARY KEY,
    student_id INT,
    subject VARCHAR(50),
    score INT,
    FOREIGN KEY (student_id) REFERENCES students(student_id)
);

-- Insert sample data into students table
INSERT INTO students (name) VALUES 
('Virat Kohli'),
('Rajat Patidar'),
('Bhuvaneswar Kumar'),
('Devdutt Padikkal'),
('Krunal Pandya'),
('Jithesh Sharma'),
('Suyansh Sharma');

-- Insert sample data into scores table
INSERT INTO scores (student_id, subject, score) VALUES 
(1, 'Math', 85),
(1, 'Science', 90),
(1, 'English', 88),
(2, 'Math', 78),
(2, 'Science', 84),
(2, 'English', 80),
(3, 'Math', 65),
(3, 'Science', 70),
(3, 'English', 68),
(4, 'Math', 90),
(4, 'Science', 92),
(4, 'English', 94),
(5, 'Math', 82),
(5, 'Science', 86),
(5, 'English', 79),
(6, 'Math', 88),
(6, 'Science', 89),
(6, 'English', 91),
(7, 'Math', 60),
(7, 'Science', 65),
(7, 'English', 63);

-- Create view to show student scores
CREATE VIEW student_scores AS
SELECT s.student_id, s.name, sc.subject, sc.score
FROM students s
JOIN scores sc ON s.student_id = sc.student_id;

-- View student scores
SELECT * FROM student_scores;

-- Create view to show students who passed all subjects (passing score >= 40)
CREATE VIEW passed_students AS
SELECT student_id, name
FROM students
WHERE student_id NOT IN (
    SELECT student_id FROM scores WHERE score < 40
);

-- View students who passed all subjects
SELECT * FROM passed_students;