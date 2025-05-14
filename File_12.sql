-- Average number of risk conditions per patient who died (anaemia, diabetes, high_blood_pressure, smoking)
SELECT
ROUND(AVG(anaemia + diabetes + high_blood_pressure + smoking))
AS average_risk_condition
FROM heart_failure_clinical_records_dataset
WHERE DEATH_EVENT = 1 ;