SELECT * FROM vw_personal.IBM_employee_data;
DESCRIBE vw_personal.IBM_employee_data;

-- Assess # employees per role and mean monthly income for each role.
SELECT 
JobRole,
COUNT(*) role_count,
AVG(MonthlyIncome) avg_monthly_income
FROM vw_personal.IBM_employee_data
GROUP BY JobRole
ORDER BY avg_monthly_income DESC;

-- View mean job satisfaction, job involvement, work life balance for each role.
SELECT 
JobRole,
COUNT(*) role_count,
AVG(JobSatisfaction) avg_job_satis,
AVG(JobInvolvement) avg_job_involve,
AVG(WorkLifeBalance) avg_work_life
FROM vw_personal.IBM_employee_data
GROUP BY JobRole
ORDER BY avg_job_satis, avg_job_involve, avg_work_life;

-- Gender pay gap?
-- With the exception of the Manager, Research Director, and Sales Executive (3/9 job roles), females on average earn a higher monthly income than their male Job Role counterparts.
-- HOWEVER, with the exception of the Manufacturing Director role, there are more males than females in every job role. 
SELECT
JobRole,
COUNT(*) role_count,
Gender,
AVG(MonthlyIncome) avg_monthly_income
FROM vw_personal.ibm_employee_data
GROUP BY JobRole, Gender
ORDER BY role_count DESC;

-- Relationship between gender and job satisfaction, environment satisfaction?
-- Values have a small range: 2.6527-2.76324 across genders, minimal differences across gender
SELECT
Gender,
AVG(JobSatisfaction) avg_job_satis,
AVG(EnvironmentSatisfaction) avg_environment_satis
FROM vw_personal.ibm_employee_data
GROUP BY Gender;

-- Relationship between gender and performance rating/percent salary hike?
-- Though marginal, females on average have a higher performance rating AND a higher percent salary hike.
SELECT
Gender,
AVG(PerformanceRating) avg_perf_rating,
AVG(PercentSalaryHike) avg_sal_hike
FROM vw_personal.ibm_employee_data
GROUP BY Gender
ORDER BY avg_perf_rating, avg_sal_hike;


