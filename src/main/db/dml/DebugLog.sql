#http://stackoverflow.com/questions/273437/how-do-you-debug-mysql-stored-procedures
USE Central;
DROP PROCEDURE IF EXISTS DebugLog;

DELIMITER //

CREATE PROCEDURE DebugLog(msg VARCHAR(255))
BEGIN
	select concat("** ", msg) AS '** DEBUG:';
END //
DELIMITER ;