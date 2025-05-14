-- Average ejection fraction between deceased vs surviving patients
SELECT
	CASE
		WHEN DEATH_EVENT = 1 THEN 'deceased'
        ELSE 'surviving'
	END AS patient_status,
    COUNT(*) AS total,
    SUM(DEATH_EVENT) AS deaths,
    ROUND(AVG(ejection_fraction),2) AS average_ejection
FROM heart_failure_clinical_records_dataset
GROUP BY patient_status