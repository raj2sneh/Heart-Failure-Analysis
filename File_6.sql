-- Relationship between serum creatinine levels and mortality rate
SELECT 
	CASE
		WHEN serum_creatinine < 1.0 THEN 'Low'
        WHEN serum_creatinine < 2.0 THEN 'Normal'
        ELSE 'High'
	END AS serum_creatinine_level,
    COUNT(*) AS total_patients,
    SUM(DEATH_EVENT) as deaths,
    ROUND(AVG(DEATH_EVENT)*100,2) as mortality_rate
FROM heart_failure_clinical_records_dataset
GROUP BY serum_creatinine_level;