CREATE PROCEDURE solution()
BEGIN
	/* Write your SQL here. Terminate each statement with a semicolon. */
	SELECT DISTINCT a.subscriber FROM (
		SELECT * FROM full_year
		UNION ALL
		SELECT * FROM half_year
	) AS a
	WHERE a.newspaper LIKE '%Daily%'
	ORDER BY a.subscriber ASC;
END