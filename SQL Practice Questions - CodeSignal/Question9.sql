CREATE PROCEDURE solution()
BEGIN
	/* Write your SQL here. Terminate each statement with a semicolon. */
	SELECT a.Name, a.ID FROM (
		SELECT Name, 
		       ID, 
		       (0.25 * Midterm1 + 0.25 * Midterm2 + 0.5 * Final) AS option1,
			   (0.5 * Midterm1 + 0.5 * Midterm2) AS option2,
			   Final as option3
		FROM Grades
	) AS a
	WHERE a.option3 > a.option1 AND a.option3 > a.option2
	ORDER BY SUBSTRING(a.Name, 1,3) ASC, a.ID ASC 
	;
END