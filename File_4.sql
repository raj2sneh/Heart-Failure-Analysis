-- Mortality Rate by Gender
SELECT
	CASE
		WHEN sex = 1 THEN 'male'
        WHEN sex = 0 THEN 'female'
	END AS gender,
    COUNT(*) AS total,
    SUM(DEATH_EVENT) AS deaths,
    ROUND(AVG(DEATH_EVENT)*100,2) as mortality_rate
FROM heart_failure_clinical_records_dataset
GROUP BY gender;