-- Impact of high blood pressure on death
SELECT(CAST(SUM(CASE WHEN
high_blood_pressure = 1 THEN 1
ELSE 0 END) AS REAL) * 100/COUNT(*)) AS percentage_deaths_due_to_high_bp
FROM heart_failure_clinical_records_dataset
WHERE high_blood_pressure = 1;