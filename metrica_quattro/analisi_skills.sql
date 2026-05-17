SELECT 
    skills_count AS Num_Competenze,
    ROUND(AVG(salary), 2) as Stipendio_Medio,
    COUNT(*) as Numero_Professionisti 
FROM job_salary_prediction_dataset
GROUP BY skills_count
ORDER BY skills_count;
