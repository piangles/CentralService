USE Central;
DROP PROCEDURE IF EXISTS GetTier1Configuration;

DELIMITER //

CREATE PROCEDURE GetTier1Configuration 
(
	IN HostName VARCHAR(255),
	IN ServiceName VARCHAR(255)
) 
BEGIN
	DECLARE Environment VARCHAR(3);
    
	SELECT hosts.Environment into Environment FROM Hosts hosts WHERE hosts.HostName=HostName;

	#call DebugLog(Environment);
	
    SELECT Name, Value from Tier1Configuration tier1Config WHERE tier1Config.Environment = Environment and tier1Config.ServiceName = ServiceName;
END //
DELIMITER ;
