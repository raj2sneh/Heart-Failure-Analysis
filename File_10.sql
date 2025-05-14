-- Average follow-up time (in days) for both deceased and survivors
SELECT
	CASE
		WHEN DEATH_EVENT = 1 THEN 'dead'
        ELSE 'alive'
	END AS 'mortality_status',
    COUNT(*) AS total,
    ROUND(AVG(time)) AS avg_follow_up_time
FROM heart_failure_clinical_records_dataset
GROUP BY mortality_status;