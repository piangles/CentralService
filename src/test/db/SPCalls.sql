CALL GetDiscoveryProperties('127.0.0.1', 'ConfigService')
CALL GetConfiguration('6401b185-2b07-4a0a-9883-b065d956f7c9')
call GetLogs (NULL, NULL, NULL, 'LoggingTest', '192.168.1.100', 'INFO', 0, 100);
call GetLogsSize (NULL, NULL, NULL, 'LoggingTest', '192.168.1.100', 'INFO');
