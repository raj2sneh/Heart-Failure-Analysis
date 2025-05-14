-- Correlation between platelet count and mortality
SELECT
	CASE
		WHEN platelets < 150000 THEN 'Low'
        WHEN platelets > 450000 THEN 'HIGH'
        ELSE 'Normal'
	END AS platelet_count,
    COUNT(*) AS total,
    SUM(DEATH_EVENT) AS deaths,
    ROUND(AVG(DEATH_EVENT)*100,2) as mortality_rate
FROM heart_failure_clinical_records_dataset
GROUP BY platelet_count;