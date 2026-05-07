WITH EducationSalary AS (
    SELECT 
        location,
        AVG(CASE WHEN education_level IN ('Bachelor', 'Master', 'PhD') THEN salary END) as avg_degree,
        AVG(CASE WHEN education_level IN ('High School', 'Diploma') THEN salary END) as avg_diploma
    FROM job_salary_prediction_dataset
    GROUP BY location
)
SELECT 
    location,
    ROUND(avg_degree, 2) as Stipendio_Laurea,
    ROUND(avg_diploma, 2) as Stipendio_Diploma,
    ROUND(((avg_degree - avg_diploma) / avg_diploma) * 100, 2) as Gap_Percentuale
FROM EducationSalary
WHERE avg_diploma IS NOT NULL AND avg_degree IS NOT NULL 
ORDER BY Gap_Percentuale DESC;
