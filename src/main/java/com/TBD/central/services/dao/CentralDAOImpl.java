package com.TBD.central.services.dao;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Types;
import java.util.Properties;

import com.TBD.central.services.CentralDecrypter;

public final class CentralDAOImpl implements CentralDAO 
{
	private static final String NAME = "Name";
	private static final String VALUE = "Value";
	private static final String INSERT_AUDIT_DISCOVERY_SP = "Central.InsertAuditCentral";
	private static final String GET_DISCOVERY_PROPS_SP = "Central.GetDiscoveryProperties";
	private static final String GET_TIER1_CONFIG_SP = "Central.GetTier1Configuration";
	private static final String VALIDATE_DECRYPT_REQUEST_SP = "Central.ValidateDecryptRequest";

	private DataStore dataStore = null;

	public CentralDAOImpl() throws Exception
	{
		dataStore = new DataStore(DBProperties.getDBProperties(), new CentralDecrypter());
	}
	
	@Override
	public void recordAudit(String remoteAddress, String remoteHost, int remotePort, String remoteUser, String requestName, String requestValue) throws DAOException
	{
		Connection dbConnection = null;
		CallableStatement call = null;
		try
		{
			dbConnection = dataStore.getConnection();
			call = dbConnection.prepareCall(DataStore.createCALLString(INSERT_AUDIT_DISCOVERY_SP, 6));
			call.setString(1, remoteAddress);
			call.setString(2, remoteHost);
			call.setInt(3, remotePort);
			call.setString(4, remoteUser);
			call.setString(5, requestName);
			call.setString(6, requestValue);

			call.execute();
		}
		catch (SQLException e)
		{
			throw new DAOException(e);
		}
		finally
		{
			if (dbConnection != null)
			{
				try
				{
					dbConnection.close();
				}
				catch (SQLException e)
				{
					e.printStackTrace();
				}
			}
		}
	}

	@Override
	public Properties getDiscoveryProperties(String callingServerName, String serviceName) throws DAOException
	{
		return getProperties(GET_DISCOVERY_PROPS_SP, callingServerName, serviceName);
	}

	@Override
	public Properties getTier1Configuration(String callingServerName, String serviceName) throws DAOException
	{
		return getProperties(GET_TIER1_CONFIG_SP, callingServerName, serviceName);
	}
	
	private Properties getProperties(String storedProcedureName, String callingServerName, String serviceName) throws DAOException
	{
		Properties nvPair = new Properties();

		Connection dbConnection = null;
		CallableStatement call = null;
		try
		{
			dbConnection = dataStore.getConnection();
			call = dbConnection.prepareCall(DataStore.createCALLString(storedProcedureName, 2));
			call.setString(1, callingServerName);
			call.setString(2, serviceName);

			ResultSet resultSet = call.executeQuery();
			while (resultSet.next())
			{
				nvPair.put(resultSet.getString(NAME), resultSet.getString(VALUE));
			}
		}
		catch (SQLException e)
		{
			throw new DAOException(e);
		}
		finally
		{
			if (dbConnection != null)
			{
				try
				{
					dbConnection.close();
				}
				catch (SQLException e)
				{
					e.printStackTrace();
				}
			}
		}
		
		return nvPair;
	}
	
	@Override
	public boolean isDecryptRequestValid(String hostName, String serviceName, String encryptedCategory,
			String encryptedValueName, String encryptedValue, String cipherAuthorizationIdName, String cipherAuthorizationId) throws DAOException
	{
		boolean valid = false;
		Connection dbConnection = null;
		CallableStatement call = null;
		try
		{
			dbConnection = dataStore.getConnection();
			call = dbConnection.prepareCall(DataStore.createCALLString(VALIDATE_DECRYPT_REQUEST_SP, 8));
			call.setString(1, hostName);
			call.setString(2, serviceName);
			call.setString(3, encryptedCategory);
			call.setString(4, encryptedValueName);
			call.setString(5, encryptedValue);
			call.setString(6, cipherAuthorizationIdName);
			call.setString(7, cipherAuthorizationId);
			call.registerOutParameter(8, Types.INTEGER);

			call.execute();
			Integer rowCount = (Integer)call.getObject(8, Integer.class);
			if (rowCount != null && rowCount.intValue() == 2)
			{
				valid = true;
			}
		}
		catch (SQLException e)
		{
			throw new DAOException(e);
		}
		finally
		{
			if (dbConnection != null)
			{
				try
				{
					dbConnection.close();
				}
				catch (SQLException e)
				{
					e.printStackTrace();
				}
			}
		}
		
		return valid;
	}
}
