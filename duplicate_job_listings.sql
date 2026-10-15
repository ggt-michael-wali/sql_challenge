SELECT COUNT(*)
FROM (
	SELECT company_id
	FROM job_listings
	GROUP BY company_id
	HAVING COUNT(*) > 1
) AS companies;