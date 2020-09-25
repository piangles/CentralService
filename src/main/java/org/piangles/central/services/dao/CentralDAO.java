package org.piangles.central.services.dao;

import java.util.Properties;

public interface CentralDAO
{
	public void recordAudit(String remoteAddress, String remoteHost, int remotePort, String remoteUser, String requestName, String requestValue) throws DAOException;
	public Properties getDiscoveryProperties(String callingServerName, String serviceName) throws DAOException;
	public Properties getTier1Configuration(String callingServerName, String serviceName) throws DAOException;
	public boolean isDecryptRequestValid(String hostName, String serviceName, String encryptedCategory,
			String encryptedValueName, String encryptedValue, String cipherAuthorizationIdName, String cipherAuthorizationId) throws DAOException;
}
