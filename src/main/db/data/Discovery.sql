DELETE FROM Discovery;

#Tier 1

INSERT INTO Discovery (Environment, ServiceName, Name, Value) VALUES
('DEV', 'SessionManagementService', 'ControllerClassName', 'com.TBD.core.services.remoting.rabbit.ReqRespController'),
('DEV', 'SessionManagementService', 'HandlerClassName', 'com.TBD.core.services.remoting.rabbit.ReqRespHandler'),
('DEV', 'SessionManagementService', 'RequestCreatorClassName', 'com.TBD.core.services.remoting.handlers.DefaultRequestCreator'),
('DEV', 'SessionManagementService', 'ControllerDecrypterClassName', 'com.TBD.core.util.central.CentralDecrypter'),
('DEV', 'SessionManagementService', 'ControllerDecrypterAuthorizationId', '477e0c1b-d057-40df-9c56-e7c52ddb875d'),
('DEV', 'SessionManagementService', 'HandlerDecrypterClassName', 'com.TBD.core.util.central.CentralDecrypter'),
('DEV', 'SessionManagementService', 'HandlerDecrypterAuthorizationId', '3ba7c57e-0747-4da7-a85d-14daa39d3932'),
('DEV', 'SessionManagementService', 'DecoderClassName', 'com.TBD.core.util.coding.JavaDecoder'),
('DEV', 'SessionManagementService', 'EncoderClassName', 'com.TBD.core.util.coding.JavaEncoder'),
('DEV', 'SessionManagementService', 'SessionValidatorClassName', 'com.TBD.backbone.services.PassThruSessionValidator'),
('DEV', 'SessionManagementService', 'PredeterminedSessionId', 'TODOSessionId'),
('DEV', 'SessionManagementService', 'RMQHostName', 'ec2-54-172-250-220.compute-1.amazonaws.com'),
('DEV', 'SessionManagementService', 'RMQPort', '5672'),
('DEV', 'SessionManagementService', 'RMQLoginId', 'TdmVTwllpL3hE+HyDz1ScA=='),
('DEV', 'SessionManagementService', 'RMQPassword', 'Fh9b3EQmSW4uIzXDNqSNYw=='),
('DEV', 'SessionManagementService', 'Topic', 'SessionManagementServiceReqRespTopic'),
('DEV', 'SessionManagementService', 'TimeOut', '5000');

#Tier 1
INSERT INTO Discovery (Environment, ServiceName, Name, Value) VALUES
('DEV', 'ConfigService', 'ControllerClassName', 'com.TBD.core.services.remoting.rabbit.ReqRespController'),
('DEV', 'ConfigService', 'HandlerClassName', 'com.TBD.core.services.remoting.rabbit.ReqRespHandler'),
('DEV', 'ConfigService', 'RequestCreatorClassName', 'com.TBD.core.services.remoting.handlers.AuditableRequestCreator'),
('DEV', 'ConfigService', 'ControllerDecrypterClassName', 'com.TBD.core.util.central.CentralDecrypter'),
('DEV', 'ConfigService', 'ControllerDecrypterAuthorizationId', '496b2226-a927-4cbc-812d-c116d0eb5902'),
('DEV', 'ConfigService', 'HandlerDecrypterClassName', 'com.TBD.core.util.central.CentralDecrypter'),
('DEV', 'ConfigService', 'HandlerDecrypterAuthorizationId', '6e3c9a60-4404-43a1-9702-1f3344bd06f1'),
('DEV', 'ConfigService', 'DecoderClassName', 'com.TBD.core.util.coding.JavaDecoder'),
('DEV', 'ConfigService', 'EncoderClassName', 'com.TBD.core.util.coding.JavaEncoder'),
('DEV', 'ConfigService', 'SessionValidatorClassName', 'com.TBD.backbone.services.DefaultSessionValidator'),
('DEV', 'ConfigService', 'PredeterminedSessionId', 'TODOSessionId'),
('DEV', 'ConfigService', 'RMQHostName', 'ec2-54-172-250-220.compute-1.amazonaws.com'),
('DEV', 'ConfigService', 'RMQPort', '5672'),
('DEV', 'ConfigService', 'RMQLoginId', 'TdmVTwllpL3hE+HyDz1ScA=='),
('DEV', 'ConfigService', 'RMQPassword', 'Fh9b3EQmSW4uIzXDNqSNYw=='),
('DEV', 'ConfigService', 'Topic', 'ConfigServiceReqRespTopic'),
('DEV', 'ConfigService', 'TimeOut', '5000');

INSERT INTO Discovery (Environment, ServiceName, Name, Value) VALUES
('DEV', 'CryptoService', 'ControllerClassName', 'com.TBD.core.services.remoting.rabbit.ReqRespController'),
('DEV', 'CryptoService', 'HandlerClassName', 'com.TBD.core.services.remoting.rabbit.ReqRespHandler'),
('DEV', 'CryptoService', 'RequestCreatorClassName', 'com.TBD.backbone.services.CryptoServiceRequestCreator'),
('DEV', 'CryptoService', 'ControllerDecrypterClassName', 'com.TBD.core.util.central.CentralDecrypter'),
('DEV', 'CryptoService', 'ControllerDecrypterAuthorizationId', '1c044b37-9388-4e6b-baf2-9fe09dea4281'),
('DEV', 'CryptoService', 'HandlerDecrypterClassName', 'com.TBD.core.util.central.CentralDecrypter'),
('DEV', 'CryptoService', 'HandlerDecrypterAuthorizationId', '3466d438-4830-4d1a-847c-1a1e87612e9e'),
('DEV', 'CryptoService', 'DecoderClassName', 'com.TBD.core.util.coding.JavaDecoder'),
('DEV', 'CryptoService', 'EncoderClassName', 'com.TBD.core.util.coding.JavaEncoder'),
('DEV', 'CryptoService', 'SessionValidatorClassName', 'com.TBD.backbone.services.DefaultSessionValidator'),
('DEV', 'CryptoService', 'PredeterminedSessionId', 'TODOSessionId'),
('DEV', 'CryptoService', 'RMQHostName', 'ec2-54-172-250-220.compute-1.amazonaws.com'),
('DEV', 'CryptoService', 'RMQPort', '5672'),
('DEV', 'CryptoService', 'RMQLoginId', 'TdmVTwllpL3hE+HyDz1ScA=='),
('DEV', 'CryptoService', 'RMQPassword', 'Fh9b3EQmSW4uIzXDNqSNYw=='),
('DEV', 'CryptoService', 'Topic', 'CryptoServiceTopic'),
('DEV', 'CryptoService', 'TimeOut', '5000');

#Tier 2
INSERT INTO Discovery (Environment, ServiceName, Name, Value) VALUES
('DEV', 'LoggingService', 'ControllerClassName', 'com.TBD.core.services.remoting.rabbit.FireAndForgetController'),
('DEV', 'LoggingService', 'HandlerClassName', 'com.TBD.core.services.remoting.rabbit.FireAndForgetHandler'),
('DEV', 'LoggingService', 'RequestCreatorClassName', 'com.TBD.backbone.services.LoggingRequestCreator'),
('DEV', 'LoggingService', 'ControllerDecrypterClassName', 'com.TBD.core.util.central.CentralDecrypter'),
('DEV', 'LoggingService', 'ControllerDecrypterAuthorizationId', '25b51747-62b7-4da3-b4f6-75d51c944a90'),
('DEV', 'LoggingService', 'HandlerDecrypterClassName', 'com.TBD.core.util.central.CentralDecrypter'),
('DEV', 'LoggingService', 'HandlerDecrypterAuthorizationId', '6e3c9a60-4404-43a1-9702-1f3344bd06f1'),
('DEV', 'LoggingService', 'DecoderClassName', 'com.TBD.core.util.coding.JavaDecoder'),
('DEV', 'LoggingService', 'EncoderClassName', 'com.TBD.core.util.coding.JavaEncoder'),
('DEV', 'LoggingService', 'SessionValidatorClassName', 'com.TBD.backbone.services.PassThruSessionValidator'),
('DEV', 'LoggingService', 'PredeterminedSessionId', 'TODOSessionId'),
('DEV', 'LoggingService', 'RMQHostName', 'ec2-54-172-250-220.compute-1.amazonaws.com'),
('DEV', 'LoggingService', 'RMQPort', '5672'),
('DEV', 'LoggingService', 'RMQLoginId', 'TdmVTwllpL3hE+HyDz1ScA=='),
('DEV', 'LoggingService', 'RMQPassword', 'Fh9b3EQmSW4uIzXDNqSNYw=='),
('DEV', 'LoggingService', 'Topic', 'LoggingServiceTopic'),
('DEV', 'LoggingService', 'TimeOut', '5000');

#Tier 3
INSERT INTO Discovery (Environment, ServiceName, Name, Value) VALUES
('DEV', 'IdService', 'ControllerClassName', 'com.TBD.core.services.remoting.rabbit.ReqRespController'),
('DEV', 'IdService', 'HandlerClassName', 'com.TBD.core.services.remoting.rabbit.ReqRespHandler'),
('DEV', 'IdService', 'RequestCreatorClassName', 'com.TBD.core.services.remoting.handlers.DefaultRequestCreator'),
('DEV', 'IdService', 'ControllerDecrypterClassName', 'com.TBD.core.util.central.CentralDecrypter'),
('DEV', 'IdService', 'ControllerDecrypterAuthorizationId', 'd7ab2e33-467c-43c8-8df1-9d9194a04306'),
('DEV', 'IdService', 'HandlerDecrypterClassName', 'com.TBD.core.util.central.CentralDecrypter'),
('DEV', 'IdService', 'HandlerDecrypterAuthorizationId', '8e33bdae-a526-4d50-bf07-8f7c6c298c23'),
('DEV', 'IdService', 'DecoderClassName', 'com.TBD.core.util.coding.JavaDecoder'),
('DEV', 'IdService', 'EncoderClassName', 'com.TBD.core.util.coding.JavaEncoder'),
('DEV', 'IdService', 'SessionValidatorClassName', 'com.TBD.backbone.services.DefaultSessionValidator'),
('DEV', 'IdService', 'PredeterminedSessionId', 'TODOSessionId'),
('DEV', 'IdService', 'RMQHostName', 'ec2-54-172-250-220.compute-1.amazonaws.com'),
('DEV', 'IdService', 'RMQPort', '5672'),
('DEV', 'IdService', 'RMQLoginId', 'TdmVTwllpL3hE+HyDz1ScA=='),
('DEV', 'IdService', 'RMQPassword', 'Fh9b3EQmSW4uIzXDNqSNYw=='),
('DEV', 'IdService', 'Topic', 'IdServiceTopic'),
('DEV', 'IdService', 'TimeOut', '5000');

#Tier 4
INSERT INTO Discovery (Environment, ServiceName, Name, Value) VALUES
('DEV', 'AuthenticationService', 'ControllerClassName', 'com.TBD.core.services.remoting.rabbit.ReqRespController'),
('DEV', 'AuthenticationService', 'HandlerClassName', 'com.TBD.core.services.remoting.rabbit.ReqRespHandler'),
('DEV', 'AuthenticationService', 'RequestCreatorClassName', 'com.TBD.core.services.remoting.handlers.DefaultRequestCreator'),
('DEV', 'AuthenticationService', 'ControllerDecrypterClassName', 'com.TBD.core.util.central.CentralDecrypter'),
('DEV', 'AuthenticationService', 'ControllerDecrypterAuthorizationId', 'ab3f32af-d778-4098-86f9-bfb7ab933770'),
('DEV', 'AuthenticationService', 'HandlerDecrypterClassName', 'com.TBD.core.util.central.CentralDecrypter'),
('DEV', 'AuthenticationService', 'HandlerDecrypterAuthorizationId', 'fceeaacd-a8c4-4d4a-be4e-9ed025d55e0e'),
('DEV', 'AuthenticationService', 'DecoderClassName', 'com.TBD.core.util.coding.JavaDecoder'),
('DEV', 'AuthenticationService', 'EncoderClassName', 'com.TBD.core.util.coding.JavaEncoder'),
('DEV', 'AuthenticationService', 'SessionValidatorClassName', 'com.TBD.backbone.services.PassThruSessionValidator'),
('DEV', 'AuthenticationService', 'PredeterminedSessionId', 'TODOSessionId'),
('DEV', 'AuthenticationService', 'RMQHostName', 'ec2-54-172-250-220.compute-1.amazonaws.com'),
('DEV', 'AuthenticationService', 'RMQPort', '5672'),
('DEV', 'AuthenticationService', 'RMQLoginId', 'TdmVTwllpL3hE+HyDz1ScA=='),
('DEV', 'AuthenticationService', 'RMQPassword', 'Fh9b3EQmSW4uIzXDNqSNYw=='),
('DEV', 'AuthenticationService', 'Topic', 'AuthenticationServiceTopic'),
('DEV', 'AuthenticationService', 'TimeOut', '5000');

INSERT INTO Discovery (Environment, ServiceName, Name, Value) VALUES
('DEV', 'UserPreferenceService', 'ControllerClassName', 'com.TBD.core.services.remoting.rabbit.ReqRespController'),
('DEV', 'UserPreferenceService', 'HandlerClassName', 'com.TBD.core.services.remoting.rabbit.ReqRespHandler'),
('DEV', 'UserPreferenceService', 'RequestCreatorClassName', 'com.TBD.core.services.remoting.handlers.DefaultRequestCreator'),
('DEV', 'UserPreferenceService', 'ControllerDecrypterClassName', 'com.TBD.core.util.central.CentralDecrypter'),
('DEV', 'UserPreferenceService', 'ControllerDecrypterAuthorizationId', '1d89530c-50b4-4f5a-af91-5f5ebb45ef47'),
('DEV', 'UserPreferenceService', 'HandlerDecrypterClassName', 'com.TBD.core.util.central.CentralDecrypter'),
('DEV', 'UserPreferenceService', 'HandlerDecrypterAuthorizationId', 'ba0b6173-b7ca-43e7-aee0-163233282403'),
('DEV', 'UserPreferenceService', 'DecoderClassName', 'com.TBD.core.util.coding.JavaDecoder'),
('DEV', 'UserPreferenceService', 'EncoderClassName', 'com.TBD.core.util.coding.JavaEncoder'),
('DEV', 'UserPreferenceService', 'SessionValidatorClassName', 'com.TBD.backbone.services.DefaultSessionValidator'),
('DEV', 'UserPreferenceService', 'PredeterminedSessionId', 'TODOSessionId'),
('DEV', 'UserPreferenceService', 'RMQHostName', 'ec2-54-172-250-220.compute-1.amazonaws.com'),
('DEV', 'UserPreferenceService', 'RMQPort', '5672'),
('DEV', 'UserPreferenceService', 'RMQLoginId', 'TdmVTwllpL3hE+HyDz1ScA=='),
('DEV', 'UserPreferenceService', 'RMQPassword', 'Fh9b3EQmSW4uIzXDNqSNYw=='),
('DEV', 'UserPreferenceService', 'Topic', 'UserPreferenceServiceTopic'),
('DEV', 'UserPreferenceService', 'TimeOut', '5000');

#GatewayService
INSERT INTO Discovery (Environment, ServiceName, Name, Value) VALUES
('DEV', 'GatewayService', 'PredeterminedSessionId', 'TODOSessionId');
