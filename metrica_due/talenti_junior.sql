SELECT 
    Location AS Paese,
    ROUND(AVG(salary), 2) AS Stipendio_Medio_Junior
FROM job_salary_prediction_dataset
WHERE experience_years <= 2
GROUP BY Location
ORDER BY Stipendio_Medio_Junior DESC;
