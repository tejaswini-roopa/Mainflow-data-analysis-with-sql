

-- Create the Students table
CREATE TABLE Students (
    StudentID INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(50) NOT NULL,
    Gender CHAR(1) CHECK (Gender IN ('M', 'F')),
    Age INT CHECK (Age > 0),
    Grade VARCHAR(10),
    MathScore INT CHECK (MathScore BETWEEN 0 AND 100),
    ScienceScore INT CHECK (ScienceScore BETWEEN 0 AND 100),
    EnglishScore INT CHECK (EnglishScore BETWEEN 0 AND 100)
);
-- Insert at least 10 sample records
INSERT INTO Students (Name, Gender, Age, Grade, MathScore, ScienceScore, EnglishScore) VALUES
('Ruturaj Gaikwad', 'M', 19, 'A', 88, 91, 85),
('Shivam Dube', 'M', 20, 'B', 79, 82, 80),
('Ravindra Jadeja', 'M', 18, 'C', 67, 72, 70),
('Matheesha Pathirana', 'M', 21, 'A', 92, 95, 90),
('MS Dhoni', 'M', 19, 'A', 85, 80, 86),
('Devon Conway', 'M', 18, 'A', 94, 98, 96),
('Khushboo', 'F', 22, 'C', 61, 65, 63),
('Rachin Ravindra', 'M', 20, 'B', 83, 87, 89),
('Aparna', 'F', 20, 'B', 83, 87, 89),
('Deepak Hooda', 'M', 19, 'A', 99, 96, 97);
SELECT * FROM Students;
SELECT Name, Gender, Age, Grade, MathScore, ScienceScore, EnglishScore, 
       (MathScore + ScienceScore + EnglishScore) AS TotalScore
FROM Students
ORDER BY TotalScore DESC
LIMIT 1;
SELECT Grade, COUNT(*) AS StudentCount
FROM Students
GROUP BY Grade
ORDER BY Grade;
SELECT Gender, 
       ROUND(AVG(MathScore), 2) AS Avg_Math_Score, 
       ROUND(AVG(ScienceScore), 2) AS Avg_Science_Score, 
       ROUND(AVG(EnglishScore), 2) AS Avg_English_Score,
       ROUND(AVG((MathScore + ScienceScore + EnglishScore)/3), 2) AS Overall_Avg_Score
FROM Students
GROUP BY Gender;
SELECT * 
FROM Students
WHERE MathScore > 80
ORDER BY MathScore DESC;
UPDATE Students
SET Grade = 'A'
WHERE StudentID = 5;

-- Verify the update
SELECT * FROM Students WHERE StudentID = 5;


