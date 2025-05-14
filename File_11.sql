-- Top patients with the highest creatinine phosphokinase levels who died .
-- Retrieve Top 10 data
SELECT * FROM heart_failure_clinical_records_dataset
WHERE DEATH_EVENT = 1
ORDER BY creatinine_phosphokinase DESC
LIMIT 10;