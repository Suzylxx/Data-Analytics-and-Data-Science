CREATE PROCEDURE solution()
BEGIN
	/* Write your SQL here. Terminate each statement with a semicolon. */
	SELECT WEEKDAY(mischief_date) AS weekday, mischief_date, author, title FROM mischief
	ORDER BY weekday ASC,
	         CASE author
			 WHEN 'Huey' THEN 1
			 WHEN 'Dewey' THEN 2
			 WHEN 'Louie' THEN 3
			 ELSE 4 END,
			 mischief_date ASC,
			 title ASC
	;
END