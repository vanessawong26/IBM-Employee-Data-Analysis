-- Create table, then save Result Set from corresponding SELECT statement as .csv, which is imported into new table via Table Data Import Wizard
CREATE TABLE vw_personal.JobRole_vs_Income
(
JobRole VARCHAR(30),
N_Employees INT,
AvgMonthlyIncome DEC(9,4)
);
SELECT * FROM vw_personal.JobRole_vs_Income;

-- Repeat for other SELECT statements
CREATE TABLE vw_personal.JobRole_vs_JobRating
(
JobRole VARCHAR(30),
N_Employees INT,
AvgJobSatisfaction DEC(5,4),
AvgJobInvolvement DEC(5,4),
AvgWorkLifeBalance DEC(5,4)
);
SELECT * FROM vw_personal.JobRole_vs_JobRating;

CREATE TABLE vw_personal.Gender_vs_Income
(
JobRole VARCHAR(30),
N_Employees INT,
Gender VARCHAR(6),
AvgMonthlyIncome DEC(9,4)
);
SELECT * FROM vw_personal.Gender_vs_Income;

CREATE TABLE vw_personal.Gender_vs_Satisfaction
(
Gender VARCHAR(6),
AvgJobSatisfaction DEC(5,4),
AvgEnvironmentSatisfaction DEC(5,4)
);
SELECT * FROM vw_personal.Gender_vs_Satisfaction;

CREATE TABLE vw_personal.Gender_vs_Rating
(
Gender VARCHAR(6),
AvgPerformanceRating DEC(5,4),
AvgSalaryHikePercentage DEC(6,4)
);
SELECT * FROM vw_personal.Gender_vs_Rating




