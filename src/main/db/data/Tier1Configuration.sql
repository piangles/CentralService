DELETE FROM Tier1Configuration;

INSERT INTO Tier1Configuration (Environment, ServiceName, Name, Value) VALUES('DEV', 'ConfigService', 'DriverClassName', 'com.mysql.jdbc.Driver');
INSERT INTO Tier1Configuration (Environment, ServiceName, Name, Value) VALUES('DEV', 'ConfigService', 'LoginId', 'kj5IPCk6oWkmxezE9yWh3Q==');
INSERT INTO Tier1Configuration (Environment, ServiceName, Name, Value) VALUES('DEV', 'ConfigService', 'Password', 'bSU2ekVvuinOQTa/ywH7kg==');
INSERT INTO Tier1Configuration (Environment, ServiceName, Name, Value) VALUES('DEV', 'ConfigService', 'URL', 'jdbc:mysql://elektos.cty8sfgs1evu.us-east-1.rds.amazonaws.com:3306/');
INSERT INTO Tier1Configuration (Environment, ServiceName, Name, Value) VALUES('DEV', 'ConfigService', 'DecrypterClassName', 'com.TBD.core.util.central.CentralDecrypter');
INSERT INTO Tier1Configuration (Environment, ServiceName, Name, Value) VALUES('DEV', 'ConfigService', 'DecrypterAuthorizationId', 'cd2671a9-209e-4f2f-830a-f365421c8368');

INSERT INTO Tier1Configuration (Environment, ServiceName, Name, Value) VALUES('DEV', 'CryptoService', 'DriverClassName', 'com.mysql.jdbc.Driver');
INSERT INTO Tier1Configuration (Environment, ServiceName, Name, Value) VALUES('DEV', 'CryptoService', 'LoginId', 'kj5IPCk6oWkmxezE9yWh3Q==');
INSERT INTO Tier1Configuration (Environment, ServiceName, Name, Value) VALUES('DEV', 'CryptoService', 'Password', 'bSU2ekVvuinOQTa/ywH7kg==');
INSERT INTO Tier1Configuration (Environment, ServiceName, Name, Value) VALUES('DEV', 'CryptoService', 'URL', 'jdbc:mysql://elektos.cty8sfgs1evu.us-east-1.rds.amazonaws.com:3306/');
INSERT INTO Tier1Configuration (Environment, ServiceName, Name, Value) VALUES('DEV', 'CryptoService', 'DecrypterClassName', 'com.TBD.core.util.central.CentralDecrypter');
INSERT INTO Tier1Configuration (Environment, ServiceName, Name, Value) VALUES('DEV', 'CryptoService', 'DecrypterAuthorizationId', 'a9e422d3-a2b8-4ae8-9f7d-e266bd3b9637');
