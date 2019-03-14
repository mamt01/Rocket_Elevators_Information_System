SELECT    YEAR(creation_date), MONTH(creation_date) COUNT(*) as number_of_quotes
FROM      factquotes 
GROUP BY  YEAR(creation_date) MONTH(creation_date)
ORDER BY  YEAR(creation_date), MONTH(creation_date)