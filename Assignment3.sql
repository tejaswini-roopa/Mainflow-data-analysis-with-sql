
create table StudentsA3(
StudentID int auto_increment primary key,
Name varchar(50),
Gender varchar(1) check (Gender in ('M','F')),
Age int,
Grade varchar(10),
MathScore int,
ScienceScore int,
EnglishScore int
);


insert into StudentsA3 (Name,Gender,Age,Grade,MathScore,ScienceScore,EnglishScore) values
('Ram','M',19,'A',90,85,84),
('Bhavana','F',20,'B',75,79,80),
('Swasthi','F',20,'C',60,65,62),
('Avinash','M',22,'E',42,45,49),
('Krishna','M',21,'A',95,95,95),
('Vrindha','F',19,'C',50,55,54),
('Mrinalini','F',20,'E',47,41,40),
('Govind','M',21,'C',73,76,75),
('Radha','M',20,'D',45,50,52),
('Madhava','F',19,'D',35,52,53);

select * from StudentsA3;

select Name , (MathScore+ScienceScore+EnglishScore) as TotalScore 
from StudentsA3
order by TotalScore desc
limit 5;

select avg(MathScore) as AvgMathScore , count(*) as StudentCount
from StudentsA3
where MathScore > 70;

select avg((MathScore+ScienceScore+EnglishScore)) as average_total_score , count(*) as StudentCount
from StudentsA3
where MathScore+ScienceScore+EnglishScore between 200 and 250;

select max(MathScore) as Second_highest_MathScore 
from StudentsA3
where  MathScore < (select max(MathScore) from StudentsA3);