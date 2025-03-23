CREATE TABLE StudentScores (
    StudentID INT PRIMARY KEY,
    TotalScore INT,
    MathScore INT,
    ScienceScore INT
);

INSERT INTO StudentScores (StudentID, TotalScore, MathScore, ScienceScore)
VALUES
    (1, 65, 45, 50),
    (2, 75, 35, 60),
    (3, 85, 40, 30),
    (4, 95, 25, 20);

-- Step 1: Assign Grades Based on Total Scores
SELECT 
    StudentID,
    TotalScore,
    CASE 
        WHEN TotalScore >= 90 THEN 'A'
        WHEN TotalScore >= 80 THEN 'B'
        WHEN TotalScore >= 70 THEN 'C'
        ELSE 'D (Fail)'
    END AS Grade
FROM StudentScores;

-- Step 2: Identify Pass/Fail Status in Specific Subjects
SELECT 
    StudentID,
    MathScore,
    CASE 
        WHEN MathScore >= 40 THEN 'Pass' 
        ELSE 'Fail' 
    END AS MathStatus,
    ScienceScore,
    CASE 
        WHEN ScienceScore >= 40 THEN 'Pass' 
        ELSE 'Fail' 
    END AS ScienceStatus
FROM StudentScores;