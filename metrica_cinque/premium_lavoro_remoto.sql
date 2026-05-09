SELECT 
    remote_work AS Lavoro_Da_Remoto, 
    ROUND(AVG(salary), 2) AS Stipendio_Medio,
    COUNT(*) AS Numero_Casi,
    ROUND(((AVG(salary) - (SELECT AVG(salary) FROM job_salary_prediction_dataset)) 
            / (SELECT AVG(salary) FROM job_salary_prediction_dataset)) * 100, 2) AS Scostamento_Percentuale
FROM job_salary_prediction_dataset
GROUP BY remote_work
ORDER BY Stipendio_Medio DESC;
