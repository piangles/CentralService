package com.TBD.central.services.dao;

import java.util.Properties;

public interface CentralDAO
{
	public void recordAudit(String remoteAddress, String remoteHost, int remotePort, String remoteUser, String requestName, String requestValue) throws DAOException;
	public Properties getDiscoveryProperties(String callingServerName, String serviceName) throws DAOException;
	public Properties getTier1Configuration(String callingServerName, String serviceName) throws DAOException;
	
	//Also we need to validate all the authorizationIds are unique. 
	//Also need a method to ensure all Discovery Properties are set for a service.
}
