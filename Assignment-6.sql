CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(50),
    Position VARCHAR(50),
    HireDate DATE
);

INSERT INTO Employees (Name, Position, HireDate) VALUES
('Ram', 'Manager', '2022-06-15'),
('Lakshman', 'Developer', '2023-03-20'),
('Bharat', 'HR', '2021-09-10'),
('Shatrugyan', 'Analyst', '2020-12-05'),
('Seetha', 'Designer', '2019-08-22'),
('Urmila', 'Tester', '2022-04-18'),
('Arjun', 'Support', '2021-11-30'),
('Krishna', 'Admin', '2018-07-25'),
('Karna', 'Consultant', '2020-06-10'),
('Bheeshma', 'Engineer', '2023-01-05');

-- Modify Table Structure (Add New Columns)
ALTER TABLE Employees 
ADD COLUMN LastUpdated DATE,
ADD COLUMN Status VARCHAR(10) DEFAULT 'Active';

-- Populate New Columns
UPDATE Employees 
SET LastUpdated = CURDATE(), Status = 'Active';


-- Delete records where Status = 'Inactive'
DELETE FROM Employees WHERE Status = 'Inactive';

-- Delete records older than a specific date
DELETE FROM Employees WHERE LastUpdated < '2024-01-01';

-- Confirm Deletions
SELECT * FROM Employees;