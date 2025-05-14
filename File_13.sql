-- percentage of patients with multiple risk factors
SELECT
	ROUND(
		SUM(CASE
			WHEN(smoking + anaemia + high_blood_pressure + smoking >=2 )
			THEN 1 ELSE 0
		END) * 100 /
		COUNT(*) , 2
	) AS percentage_of_patients_with_multiple_risk
FROM heart_failure_clinical_records_dataset;