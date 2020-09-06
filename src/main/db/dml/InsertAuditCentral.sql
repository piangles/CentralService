USE Central;
DROP PROCEDURE IF EXISTS InsertAuditCentral;

DELIMITER //

CREATE PROCEDURE InsertAuditCentral
(
	IN RemoteAddress varchar(50),
	IN RemoteHost varchar(255),
	IN RemotePort INT(32),
	IN RemoteUser varchar(50),
	IN RequestedServiceName varchar(50),
	IN RequestedValue varchar(250)
) 
BEGIN

	INSERT INTO AuditCentral
	(
		RemoteAddress,
		RemoteHost,
		RemotePort,
		RemoteUser,
		RequestedServiceName,
		RequestedValue
	)
	VALUES
	(
		RemoteAddress,
		RemoteHost,
		RemotePort,
		RemoteUser,
		RequestedServiceName,
		RequestedValue
	);
	
END //
DELIMITER ;
