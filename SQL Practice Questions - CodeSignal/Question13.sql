CREATE PROCEDURE solution()
BEGIN
	/* Write your SQL here. Terminate each statement with a semicolon. */
	select first_name, second_name, attribute from users
    where
       attribute like BINARY CONCAT('_%\%',first_name,'\_',second_name,'\%%');
END