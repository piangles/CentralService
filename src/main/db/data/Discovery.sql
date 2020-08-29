DELETE FROM Discovery;

#GatewayService
INSERT INTO Discovery (Environment, ServiceName, Name, Value) VALUES('DEV', 'GatewayServiceEndpoint', 'PredeterminedSessionId', 'TODOSessionId');

#Tier 0
INSERT INTO Discovery (Environment, ServiceName, Name, Value) VALUES('DEV', 'SessionManagementServiceEndpoint', 'ControllerClassName', 'com.TBD.core.services.remoting.rabbit.ReqRespController');
INSERT INTO Discovery (Environment, ServiceName, Name, Value) VALUES('DEV', 'SessionManagementServiceEndpoint', 'HandlerClassName', 'com.TBD.core.services.remoting.rabbit.ReqRespHandler');
INSERT INTO Discovery (Environment, ServiceName, Name, Value) VALUES('DEV', 'SessionManagementServiceEndpoint', 'RequestCreatorClassName', 'com.TBD.core.services.remoting.handlers.DefaultRequestCreator');
INSERT INTO Discovery (Environment, ServiceName, Name, Value) VALUES('DEV', 'SessionManagementServiceEndpoint', 'ControllerDecrypterClassName', 'com.TBD.core.util.central.CentralDecrypter');
INSERT INTO Discovery (Environment, ServiceName, Name, Value) VALUES('DEV', 'SessionManagementServiceEndpoint', 'ControllerDecrypterAuthorizationId', '477e0c1b-d057-40df-9c56-e7c52ddb875d');
INSERT INTO Discovery (Environment, ServiceName, Name, Value) VALUES('DEV', 'SessionManagementServiceEndpoint', 'HandlerDecrypterClassName', 'com.TBD.core.util.central.CentralDecrypter');
INSERT INTO Discovery (Environment, ServiceName, Name, Value) VALUES('DEV', 'SessionManagementServiceEndpoint', 'HandlerDecrypterAuthorizationId', '3ba7c57e-0747-4da7-a85d-14daa39d3932');
INSERT INTO Discovery (Environment, ServiceName, Name, Value) VALUES('DEV', 'SessionManagementServiceEndpoint', 'DecoderClassName', 'com.TBD.core.util.coding.JavaDecoder');
INSERT INTO Discovery (Environment, ServiceName, Name, Value) VALUES('DEV', 'SessionManagementServiceEndpoint', 'EncoderClassName', 'com.TBD.core.util.coding.JavaEncoder');
INSERT INTO Discovery (Environment, ServiceName, Name, Value) VALUES('DEV', 'SessionManagementServiceEndpoint', 'SessionValidatorClassName', 'com.TBD.backbone.services.PassThruSessionValidator');
INSERT INTO Discovery (Environment, ServiceName, Name, Value) VALUES('DEV', 'SessionManagementServiceEndpoint', 'PredeterminedSessionId', 'TODOSessionId');
INSERT INTO Discovery (Environment, ServiceName, Name, Value) VALUES('DEV', 'SessionManagementServiceEndpoint', 'RMQHostName', 'ec2-54-172-250-220.compute-1.amazonaws.com');
INSERT INTO Discovery (Environment, ServiceName, Name, Value) VALUES('DEV', 'SessionManagementServiceEndpoint', 'RMQPort', '5672');
INSERT INTO Discovery (Environment, ServiceName, Name, Value) VALUES('DEV', 'SessionManagementServiceEndpoint', 'RMQLoginId', 'TdmVTwllpL3hE+HyDz1ScA==');
INSERT INTO Discovery (Environment, ServiceName, Name, Value) VALUES('DEV', 'SessionManagementServiceEndpoint', 'RMQPassword', 'Fh9b3EQmSW4uIzXDNqSNYw==');
INSERT INTO Discovery (Environment, ServiceName, Name, Value) VALUES('DEV', 'SessionManagementServiceEndpoint', 'Topic', 'SessionManagementServiceReqRespTopic');
INSERT INTO Discovery (Environment, ServiceName, Name, Value) VALUES('DEV', 'SessionManagementServiceEndpoint', 'TimeOut', '5000');

#Tier 1
INSERT INTO Discovery (Environment, ServiceName, Name, Value) VALUES('DEV', 'ConfigServiceEndpoint', 'ControllerClassName', 'com.TBD.core.services.remoting.rabbit.ReqRespController');
INSERT INTO Discovery (Environment, ServiceName, Name, Value) VALUES('DEV', 'ConfigServiceEndpoint', 'HandlerClassName', 'com.TBD.core.services.remoting.rabbit.ReqRespHandler');
INSERT INTO Discovery (Environment, ServiceName, Name, Value) VALUES('DEV', 'ConfigServiceEndpoint', 'RequestCreatorClassName', 'com.TBD.core.services.remoting.handlers.AuditableRequestCreator');
INSERT INTO Discovery (Environment, ServiceName, Name, Value) VALUES('DEV', 'ConfigServiceEndpoint', 'ControllerDecrypterClassName', 'com.TBD.core.util.central.CentralDecrypter');
INSERT INTO Discovery (Environment, ServiceName, Name, Value) VALUES('DEV', 'ConfigServiceEndpoint', 'ControllerDecrypterAuthorizationId', '496b2226-a927-4cbc-812d-c116d0eb5902');
INSERT INTO Discovery (Environment, ServiceName, Name, Value) VALUES('DEV', 'ConfigServiceEndpoint', 'HandlerDecrypterClassName', 'com.TBD.core.util.central.CentralDecrypter');
INSERT INTO Discovery (Environment, ServiceName, Name, Value) VALUES('DEV', 'ConfigServiceEndpoint', 'HandlerDecrypterAuthorizationId', '6e3c9a60-4404-43a1-9702-1f3344bd06f1');
INSERT INTO Discovery (Environment, ServiceName, Name, Value) VALUES('DEV', 'ConfigServiceEndpoint', 'DecoderClassName', 'com.TBD.core.util.coding.JavaDecoder');
INSERT INTO Discovery (Environment, ServiceName, Name, Value) VALUES('DEV', 'ConfigServiceEndpoint', 'EncoderClassName', 'com.TBD.core.util.coding.JavaEncoder');
INSERT INTO Discovery (Environment, ServiceName, Name, Value) VALUES('DEV', 'ConfigServiceEndpoint', 'SessionValidatorClassName', 'com.TBD.backbone.services.DefaultSessionValidator');
INSERT INTO Discovery (Environment, ServiceName, Name, Value) VALUES('DEV', 'ConfigServiceEndpoint', 'PredeterminedSessionId', 'TODOSessionId');
INSERT INTO Discovery (Environment, ServiceName, Name, Value) VALUES('DEV', 'ConfigServiceEndpoint', 'RMQHostName', 'ec2-54-172-250-220.compute-1.amazonaws.com');
INSERT INTO Discovery (Environment, ServiceName, Name, Value) VALUES('DEV', 'ConfigServiceEndpoint', 'RMQPort', '5672');
INSERT INTO Discovery (Environment, ServiceName, Name, Value) VALUES('DEV', 'ConfigServiceEndpoint', 'RMQLoginId', 'TdmVTwllpL3hE+HyDz1ScA==');
INSERT INTO Discovery (Environment, ServiceName, Name, Value) VALUES('DEV', 'ConfigServiceEndpoint', 'RMQPassword', 'Fh9b3EQmSW4uIzXDNqSNYw==');
INSERT INTO Discovery (Environment, ServiceName, Name, Value) VALUES('DEV', 'ConfigServiceEndpoint', 'Topic', 'ConfigServiceReqRespTopic');
INSERT INTO Discovery (Environment, ServiceName, Name, Value) VALUES('DEV', 'ConfigServiceEndpoint', 'TimeOut', '5000');

INSERT INTO Discovery (Environment, ServiceName, Name, Value) VALUES('DEV', 'CryptoServiceEndpoint', 'ControllerClassName', 'com.TBD.core.services.remoting.rabbit.ReqRespController');
INSERT INTO Discovery (Environment, ServiceName, Name, Value) VALUES('DEV', 'CryptoServiceEndpoint', 'HandlerClassName', 'com.TBD.core.services.remoting.rabbit.ReqRespHandler');
INSERT INTO Discovery (Environment, ServiceName, Name, Value) VALUES('DEV', 'CryptoServiceEndpoint', 'RequestCreatorClassName', 'com.TBD.backbone.services.CryptoServiceRequestCreator');
INSERT INTO Discovery (Environment, ServiceName, Name, Value) VALUES('DEV', 'CryptoServiceEndpoint', 'ControllerDecrypterClassName', 'com.TBD.core.util.central.CentralDecrypter');
INSERT INTO Discovery (Environment, ServiceName, Name, Value) VALUES('DEV', 'CryptoServiceEndpoint', 'ControllerDecrypterAuthorizationId', '1c044b37-9388-4e6b-baf2-9fe09dea4281');
INSERT INTO Discovery (Environment, ServiceName, Name, Value) VALUES('DEV', 'CryptoServiceEndpoint', 'HandlerDecrypterClassName', 'com.TBD.core.util.central.CentralDecrypter');
INSERT INTO Discovery (Environment, ServiceName, Name, Value) VALUES('DEV', 'CryptoServiceEndpoint', 'HandlerDecrypterAuthorizationId', '3466d438-4830-4d1a-847c-1a1e87612e9e');
INSERT INTO Discovery (Environment, ServiceName, Name, Value) VALUES('DEV', 'CryptoServiceEndpoint', 'DecoderClassName', 'com.TBD.core.util.coding.JavaDecoder');
INSERT INTO Discovery (Environment, ServiceName, Name, Value) VALUES('DEV', 'CryptoServiceEndpoint', 'EncoderClassName', 'com.TBD.core.util.coding.JavaEncoder');
INSERT INTO Discovery (Environment, ServiceName, Name, Value) VALUES('DEV', 'CryptoServiceEndpoint', 'SessionValidatorClassName', 'com.TBD.backbone.services.DefaultSessionValidator');
INSERT INTO Discovery (Environment, ServiceName, Name, Value) VALUES('DEV', 'CryptoServiceEndpoint', 'PredeterminedSessionId', 'TODOSessionId');
INSERT INTO Discovery (Environment, ServiceName, Name, Value) VALUES('DEV', 'CryptoServiceEndpoint', 'RMQHostName', 'ec2-54-172-250-220.compute-1.amazonaws.com');
INSERT INTO Discovery (Environment, ServiceName, Name, Value) VALUES('DEV', 'CryptoServiceEndpoint', 'RMQPort', '5672');
INSERT INTO Discovery (Environment, ServiceName, Name, Value) VALUES('DEV', 'CryptoServiceEndpoint', 'RMQLoginId', 'TdmVTwllpL3hE+HyDz1ScA==');
INSERT INTO Discovery (Environment, ServiceName, Name, Value) VALUES('DEV', 'CryptoServiceEndpoint', 'RMQPassword', 'Fh9b3EQmSW4uIzXDNqSNYw==');
INSERT INTO Discovery (Environment, ServiceName, Name, Value) VALUES('DEV', 'CryptoServiceEndpoint', 'Topic', 'CryptoServiceTopic');
INSERT INTO Discovery (Environment, ServiceName, Name, Value) VALUES('DEV', 'CryptoServiceEndpoint', 'TimeOut', '5000');

#Tier 2
INSERT INTO Discovery (Environment, ServiceName, Name, Value) VALUES('DEV', 'LoggingServiceEndpoint', 'ControllerClassName', 'com.TBD.core.services.remoting.rabbit.FireAndForgetController');
INSERT INTO Discovery (Environment, ServiceName, Name, Value) VALUES('DEV', 'LoggingServiceEndpoint', 'HandlerClassName', 'com.TBD.core.services.remoting.rabbit.FireAndForgetHandler');
INSERT INTO Discovery (Environment, ServiceName, Name, Value) VALUES('DEV', 'LoggingServiceEndpoint', 'RequestCreatorClassName', 'com.TBD.backbone.services.LoggingRequestCreator');
INSERT INTO Discovery (Environment, ServiceName, Name, Value) VALUES('DEV', 'LoggingServiceEndpoint', 'ControllerDecrypterClassName', 'com.TBD.backbone.services.DefaultDecrypter');
INSERT INTO Discovery (Environment, ServiceName, Name, Value) VALUES('DEV', 'LoggingServiceEndpoint', 'ControllerDecrypterAuthorizationId', '25b51747-62b7-4da3-b4f6-75d51c944a90');
INSERT INTO Discovery (Environment, ServiceName, Name, Value) VALUES('DEV', 'LoggingServiceEndpoint', 'HandlerDecrypterClassName', 'com.TBD.backbone.services.DefaultDecrypter');
INSERT INTO Discovery (Environment, ServiceName, Name, Value) VALUES('DEV', 'LoggingServiceEndpoint', 'HandlerDecrypterAuthorizationId', '6e3c9a60-4404-43a1-9702-1f3344bd06f1');
INSERT INTO Discovery (Environment, ServiceName, Name, Value) VALUES('DEV', 'LoggingServiceEndpoint', 'DecoderClassName', 'com.TBD.core.util.coding.JavaDecoder');
INSERT INTO Discovery (Environment, ServiceName, Name, Value) VALUES('DEV', 'LoggingServiceEndpoint', 'EncoderClassName', 'com.TBD.core.util.coding.JavaEncoder');
INSERT INTO Discovery (Environment, ServiceName, Name, Value) VALUES('DEV', 'LoggingServiceEndpoint', 'SessionValidatorClassName', 'com.TBD.backbone.services.PassThruSessionValidator');
INSERT INTO Discovery (Environment, ServiceName, Name, Value) VALUES('DEV', 'LoggingServiceEndpoint', 'PredeterminedSessionId', 'TODOSessionId');
INSERT INTO Discovery (Environment, ServiceName, Name, Value) VALUES('DEV', 'LoggingServiceEndpoint', 'RMQHostName', 'ec2-54-172-250-220.compute-1.amazonaws.com');
INSERT INTO Discovery (Environment, ServiceName, Name, Value) VALUES('DEV', 'LoggingServiceEndpoint', 'RMQPort', '5672');
INSERT INTO Discovery (Environment, ServiceName, Name, Value) VALUES('DEV', 'LoggingServiceEndpoint', 'RMQLoginId', 'TdmVTwllpL3hE+HyDz1ScA==');
INSERT INTO Discovery (Environment, ServiceName, Name, Value) VALUES('DEV', 'LoggingServiceEndpoint', 'RMQPassword', 'Fh9b3EQmSW4uIzXDNqSNYw==');
INSERT INTO Discovery (Environment, ServiceName, Name, Value) VALUES('DEV', 'LoggingServiceEndpoint', 'Topic', 'LoggingServiceTopic');
INSERT INTO Discovery (Environment, ServiceName, Name, Value) VALUES('DEV', 'LoggingServiceEndpoint', 'TimeOut', '5000');

#Tier 3
INSERT INTO Discovery (Environment, ServiceName, Name, Value) VALUES('DEV', 'IdServiceEndpoint', 'ControllerClassName', 'com.TBD.core.services.remoting.rabbit.ReqRespController');
INSERT INTO Discovery (Environment, ServiceName, Name, Value) VALUES('DEV', 'IdServiceEndpoint', 'HandlerClassName', 'com.TBD.core.services.remoting.rabbit.ReqRespHandler');
INSERT INTO Discovery (Environment, ServiceName, Name, Value) VALUES('DEV', 'IdServiceEndpoint', 'RequestCreatorClassName', 'com.TBD.core.services.remoting.handlers.DefaultRequestCreator');
INSERT INTO Discovery (Environment, ServiceName, Name, Value) VALUES('DEV', 'IdServiceEndpoint', 'ControllerDecrypterClassName', 'com.TBD.backbone.services.DefaultDecrypter');
INSERT INTO Discovery (Environment, ServiceName, Name, Value) VALUES('DEV', 'IdServiceEndpoint', 'ControllerDecrypterAuthorizationId', 'd7ab2e33-467c-43c8-8df1-9d9194a04306');
INSERT INTO Discovery (Environment, ServiceName, Name, Value) VALUES('DEV', 'IdServiceEndpoint', 'HandlerDecrypterClassName', 'com.TBD.backbone.services.DefaultDecrypter');
INSERT INTO Discovery (Environment, ServiceName, Name, Value) VALUES('DEV', 'IdServiceEndpoint', 'HandlerDecrypterAuthorizationId', '8e33bdae-a526-4d50-bf07-8f7c6c298c23');
INSERT INTO Discovery (Environment, ServiceName, Name, Value) VALUES('DEV', 'IdServiceEndpoint', 'DecoderClassName', 'com.TBD.core.util.coding.JavaDecoder');
INSERT INTO Discovery (Environment, ServiceName, Name, Value) VALUES('DEV', 'IdServiceEndpoint', 'EncoderClassName', 'com.TBD.core.util.coding.JavaEncoder');
INSERT INTO Discovery (Environment, ServiceName, Name, Value) VALUES('DEV', 'IdServiceEndpoint', 'SessionValidatorClassName', 'com.TBD.backbone.services.DefaultSessionValidator');
INSERT INTO Discovery (Environment, ServiceName, Name, Value) VALUES('DEV', 'IdServiceEndpoint', 'PredeterminedSessionId', 'TODOSessionId');
INSERT INTO Discovery (Environment, ServiceName, Name, Value) VALUES('DEV', 'IdServiceEndpoint', 'RMQHostName', 'ec2-54-172-250-220.compute-1.amazonaws.com');
INSERT INTO Discovery (Environment, ServiceName, Name, Value) VALUES('DEV', 'IdServiceEndpoint', 'RMQPort', '5672');
INSERT INTO Discovery (Environment, ServiceName, Name, Value) VALUES('DEV', 'IdServiceEndpoint', 'RMQLoginId', 'TdmVTwllpL3hE+HyDz1ScA==');
INSERT INTO Discovery (Environment, ServiceName, Name, Value) VALUES('DEV', 'IdServiceEndpoint', 'RMQPassword', 'Fh9b3EQmSW4uIzXDNqSNYw==');
INSERT INTO Discovery (Environment, ServiceName, Name, Value) VALUES('DEV', 'IdServiceEndpoint', 'Topic', 'IdServiceTopic');
INSERT INTO Discovery (Environment, ServiceName, Name, Value) VALUES('DEV', 'IdServiceEndpoint', 'TimeOut', '5000');

#Tier 4
INSERT INTO Discovery (Environment, ServiceName, Name, Value) VALUES('DEV', 'AuthenticationServiceEndpoint', 'ControllerClassName', 'com.TBD.core.services.remoting.rabbit.ReqRespController');
INSERT INTO Discovery (Environment, ServiceName, Name, Value) VALUES('DEV', 'AuthenticationServiceEndpoint', 'HandlerClassName', 'com.TBD.core.services.remoting.rabbit.ReqRespHandler');
INSERT INTO Discovery (Environment, ServiceName, Name, Value) VALUES('DEV', 'AuthenticationServiceEndpoint', 'RequestCreatorClassName', 'com.TBD.core.services.remoting.handlers.DefaultRequestCreator');
INSERT INTO Discovery (Environment, ServiceName, Name, Value) VALUES('DEV', 'AuthenticationServiceEndpoint', 'ControllerDecrypterClassName', 'com.TBD.backbone.services.DefaultDecrypter');
INSERT INTO Discovery (Environment, ServiceName, Name, Value) VALUES('DEV', 'AuthenticationServiceEndpoint', 'ControllerDecrypterAuthorizationId', 'ab3f32af-d778-4098-86f9-bfb7ab933770');
INSERT INTO Discovery (Environment, ServiceName, Name, Value) VALUES('DEV', 'AuthenticationServiceEndpoint', 'HandlerDecrypterClassName', 'com.TBD.backbone.services.DefaultDecrypter');
INSERT INTO Discovery (Environment, ServiceName, Name, Value) VALUES('DEV', 'AuthenticationServiceEndpoint', 'HandlerDecrypterAuthorizationId', 'fceeaacd-a8c4-4d4a-be4e-9ed025d55e0e');
INSERT INTO Discovery (Environment, ServiceName, Name, Value) VALUES('DEV', 'AuthenticationServiceEndpoint', 'DecoderClassName', 'com.TBD.core.util.coding.JavaDecoder');
INSERT INTO Discovery (Environment, ServiceName, Name, Value) VALUES('DEV', 'AuthenticationServiceEndpoint', 'EncoderClassName', 'com.TBD.core.util.coding.JavaEncoder');
INSERT INTO Discovery (Environment, ServiceName, Name, Value) VALUES('DEV', 'AuthenticationServiceEndpoint', 'SessionValidatorClassName', 'com.TBD.backbone.services.PassThruSessionValidator');
INSERT INTO Discovery (Environment, ServiceName, Name, Value) VALUES('DEV', 'AuthenticationServiceEndpoint', 'PredeterminedSessionId', 'TODOSessionId');
INSERT INTO Discovery (Environment, ServiceName, Name, Value) VALUES('DEV', 'AuthenticationServiceEndpoint', 'RMQHostName', 'ec2-54-172-250-220.compute-1.amazonaws.com');
INSERT INTO Discovery (Environment, ServiceName, Name, Value) VALUES('DEV', 'AuthenticationServiceEndpoint', 'RMQPort', '5672');
INSERT INTO Discovery (Environment, ServiceName, Name, Value) VALUES('DEV', 'AuthenticationServiceEndpoint', 'RMQLoginId', 'TdmVTwllpL3hE+HyDz1ScA==');
INSERT INTO Discovery (Environment, ServiceName, Name, Value) VALUES('DEV', 'AuthenticationServiceEndpoint', 'RMQPassword', 'Fh9b3EQmSW4uIzXDNqSNYw==');
INSERT INTO Discovery (Environment, ServiceName, Name, Value) VALUES('DEV', 'AuthenticationServiceEndpoint', 'Topic', 'AuthenticationServiceTopic');
INSERT INTO Discovery (Environment, ServiceName, Name, Value) VALUES('DEV', 'AuthenticationServiceEndpoint', 'TimeOut', '5000');

INSERT INTO Discovery (Environment, ServiceName, Name, Value) VALUES('DEV', 'UserPreferenceServiceEndpoint', 'ControllerClassName', 'com.TBD.core.services.remoting.rabbit.ReqRespController');
INSERT INTO Discovery (Environment, ServiceName, Name, Value) VALUES('DEV', 'UserPreferenceServiceEndpoint', 'HandlerClassName', 'com.TBD.core.services.remoting.rabbit.ReqRespHandler');
INSERT INTO Discovery (Environment, ServiceName, Name, Value) VALUES('DEV', 'UserPreferenceServiceEndpoint', 'RequestCreatorClassName', 'com.TBD.core.services.remoting.handlers.DefaultRequestCreator');
INSERT INTO Discovery (Environment, ServiceName, Name, Value) VALUES('DEV', 'UserPreferenceServiceEndpoint', 'ControllerDecrypterClassName', 'com.TBD.backbone.services.DefaultDecrypter');
INSERT INTO Discovery (Environment, ServiceName, Name, Value) VALUES('DEV', 'UserPreferenceServiceEndpoint', 'ControllerDecrypterAuthorizationId', '1d89530c-50b4-4f5a-af91-5f5ebb45ef47');
INSERT INTO Discovery (Environment, ServiceName, Name, Value) VALUES('DEV', 'UserPreferenceServiceEndpoint', 'HandlerDecrypterClassName', 'com.TBD.backbone.services.DefaultDecrypter');
INSERT INTO Discovery (Environment, ServiceName, Name, Value) VALUES('DEV', 'UserPreferenceServiceEndpoint', 'HandlerDecrypterAuthorizationId', 'ba0b6173-b7ca-43e7-aee0-163233282403');
INSERT INTO Discovery (Environment, ServiceName, Name, Value) VALUES('DEV', 'UserPreferenceServiceEndpoint', 'DecoderClassName', 'com.TBD.core.util.coding.JavaDecoder');
INSERT INTO Discovery (Environment, ServiceName, Name, Value) VALUES('DEV', 'UserPreferenceServiceEndpoint', 'EncoderClassName', 'com.TBD.core.util.coding.JavaEncoder');
INSERT INTO Discovery (Environment, ServiceName, Name, Value) VALUES('DEV', 'UserPreferenceServiceEndpoint', 'SessionValidatorClassName', 'com.TBD.backbone.services.DefaultSessionValidator');
INSERT INTO Discovery (Environment, ServiceName, Name, Value) VALUES('DEV', 'UserPreferenceServiceEndpoint', 'PredeterminedSessionId', 'TODOSessionId');
INSERT INTO Discovery (Environment, ServiceName, Name, Value) VALUES('DEV', 'UserPreferenceServiceEndpoint', 'RMQHostName', 'ec2-54-172-250-220.compute-1.amazonaws.com');
INSERT INTO Discovery (Environment, ServiceName, Name, Value) VALUES('DEV', 'UserPreferenceServiceEndpoint', 'RMQPort', '5672');
INSERT INTO Discovery (Environment, ServiceName, Name, Value) VALUES('DEV', 'UserPreferenceServiceEndpoint', 'RMQLoginId', 'TdmVTwllpL3hE+HyDz1ScA==');
INSERT INTO Discovery (Environment, ServiceName, Name, Value) VALUES('DEV', 'UserPreferenceServiceEndpoint', 'RMQPassword', 'Fh9b3EQmSW4uIzXDNqSNYw==');
INSERT INTO Discovery (Environment, ServiceName, Name, Value) VALUES('DEV', 'UserPreferenceServiceEndpoint', 'Topic', 'UserPreferenceServiceTopic');
INSERT INTO Discovery (Environment, ServiceName, Name, Value) VALUES('DEV', 'UserPreferenceServiceEndpoint', 'TimeOut', '5000');

#Tier 5
