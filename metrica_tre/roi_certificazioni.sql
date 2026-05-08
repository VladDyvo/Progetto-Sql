SELECT 
    certifications,
    ROUND(AVG(salary), 2) as Avg_Salary,
    ROUND(AVG(salary) - LAG(AVG(salary)) OVER (ORDER BY certifications), 2) as Incremento_Marginale
FROM job_salary_prediction_dataset
GROUP BY certifications
ORDER BY certifications ;
