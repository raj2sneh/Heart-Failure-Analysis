-- Death rate comparison between smokers and non-smokers
SELECT
	CASE
		WHEN smoking = 1 THEN 'smoker'
        ELSE 'Non_smoker'
	END AS smoking_preferance,
    COUNT(*) AS total,
    SUM(DEATH_EVENT) AS deaths,
    ROUND(AVG(DEATH_EVENT)*100,2) AS death_rate
FROM heart_failure_clinical_records_dataset
GROUP BY smoking_preferance;