CREATE DATABASE heart_failure_analysis;
SELECT * FROM heart_failure_analysis.heart_failure_clinical_records_dataset;

-- Mortality Rate by Age Group

SELECT 
	CASE 
		WHEN age < 40 THEN 'UNDER 40'
		WHEN age <= 60 THEN '40-60'
		ELSE 'ABOVE 60'
	END AS age_grp,
	COUNT(*) AS total,
    SUM(DEATH_EVENT) AS deaths, 
    ROUND(AVG(DEATH_EVENT)*100,2) as mortality_rate
FROM heart_failure_clinical_records_dataset
GROUP BY age_grp;