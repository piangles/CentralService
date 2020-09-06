USE Central;
DROP PROCEDURE IF EXISTS ValidateDecryptRequest;

DELIMITER //

CREATE PROCEDURE ValidateDecryptRequest 
(
	IN HostName VARCHAR(255),
	IN ServiceName VARCHAR(255),
	IN EncryptedCategory VARCHAR(255), #Is it some Discovery Property or Config Property
	IN EncryptedValueName VARCHAR(255),
	IN EncryptedValue VARCHAR(255),
	IN CipherAuthorizationIdName VARCHAR(255),
	IN CipherAuthorizationId VARCHAR(255),
	OUT RowCount INT
) 
BEGIN
	DECLARE EncryptedRowCount INT;
	DECLARE CipherRowCount INT;
	DECLARE Environment VARCHAR(3);
    
	SELECT hosts.Environment into Environment FROM Hosts hosts WHERE hosts.HostName=HostName;

	#call DebugLog(Environment);
	IF EncryptedCategory = 'Discovery' THEN
		SELECT COUNT(*) INTO EncryptedRowCount FROM Discovery discovery  WHERE 
		discovery.Environment = Environment and 
		discovery.ServiceName = ServiceName and
		discovery.Name = EncryptedValueName and
		discovery.Value = EncryptedValue;

		SELECT COUNT(*) INTO CipherRowCount FROM Discovery discovery  WHERE 
		discovery.Environment = Environment and 
		discovery.ServiceName = ServiceName and
		discovery.Name = CipherAuthorizationIdName and
		discovery.Value = CipherAuthorizationId;
		
		SET RowCount = EncryptedRowCount + CipherRowCount;
    ELSEIF EncryptedCategory = 'Configuration' THEN
    	SELECT COUNT(*) INTO EncryptedRowCount FROM Tier1Configuration tier1Config WHERE 
		tier1Config.Environment = Environment and 
		tier1Config.ServiceName = ServiceName and    	
		tier1Config.Name = EncryptedValueName and
		tier1Config.Value = EncryptedValue;
		
		SELECT COUNT(*) INTO CipherRowCount FROM Tier1Configuration tier1Config WHERE 
		tier1Config.Environment = Environment and 
		tier1Config.ServiceName = ServiceName and
		tier1Config.Name = CipherAuthorizationIdName and
		tier1Config.Value = CipherAuthorizationId;
		
    	SET RowCount = EncryptedRowCount + CipherRowCount;
	END IF;
	
END //
DELIMITER ;
