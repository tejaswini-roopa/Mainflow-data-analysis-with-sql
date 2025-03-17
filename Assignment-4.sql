
-- create
CREATE TABLE Students (
    StudentID INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(50) NOT NULL,
    MathScore INT CHECK (MathScore BETWEEN 0 AND 100),
    TotalScore INT CHECK (TotalScore BETWEEN 0 AND 300)
);
-- Inserting
INSERT INTO Students (Name, MathScore, TotalScore) VALUES
('Anand Viswanathan', 90, 270),
('Vidit', 78, 240),
('Harikrishna', 95, 276),
('Erigaisi Arjun', 88, 265),
('Gukesh D', 72, 215),
('Praggnanandhaa R', 85, 250),
('Harika Dronavalli', 60, 180),
('Swapnil', 98, 290),
('Rahul Srivatshav P', 81, 245),
('Prraneeth Vuppala', 76, 230);
-- Retrieving
SELECT * FROM Students;
-- 1 Rank Students Based on Total Scores
SELECT 
    StudentID,
    Name,
    MathScore,
    TotalScore,
    RANK() OVER (ORDER BY TotalScore DESC) AS student
FROM 
    Students;

-- 2 Calculate Running Totals for Math Scores
SELECT 
    StudentID,
    Name,
    MathScore,
    SUM(MathScore) OVER (ORDER BY StudentID) AS RunningTotalMathScore
FROM 
    Students;