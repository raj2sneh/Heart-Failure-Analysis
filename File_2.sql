-- Effect of anaemia on death rate
SELECT(CAST(SUM(CASE WHEN
DEATH_EVENT = 1 THEN 1
ELSE 0 END)AS REAL)*100/COUNT(*)) AS percentage_deaths_due_to_anaemia
FROM heart_failure_clinical_records_dataset
WHERE anaemia = 1 ;