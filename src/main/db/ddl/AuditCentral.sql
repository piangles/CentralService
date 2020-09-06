USE Central;
DROP TABLE IF EXISTS AuditCentral;
CREATE TABLE AuditCentral
(
	Id INT(32) UNSIGNED NOT NULL AUTO_INCREMENT,
	InsertedTS TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,

	RemoteAddress varchar(50)  NOT NULL,
	RemoteHost varchar(255)  NOT NULL,
	RemotePort INT(32) NOT NULL,
	RemoteUser varchar(50)  NULL,
	RequestedServiceName varchar(50) NULL,
	RequestedValue varchar(250) NULL,

	INDEX(InsertedTS),
	INDEX (RequestedServiceName),
    KEY(Id)
);
ALTER TABLE AuditCentral ADD CONSTRAINT PK_Id PRIMARY KEY(Id);
