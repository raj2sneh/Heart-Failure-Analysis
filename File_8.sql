-- Death rate among diabetic vs non-diabetic patients
SELECT
	CASE 
		WHEN diabetes = 1 THEN 'diabetic'
        ELSE 'non-diabetic'
	END AS diabetic_status,
    COUNT(*) as total,
    SUM(DEATH_EVENT) as deaths,
    ROUND(AVG(DEATH_EVENT)*100,2) AS death_rate
FROM heart_failure_clinical_records_dataset
GROUP BY diabetic_status;