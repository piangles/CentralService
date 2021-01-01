package org.piangles.central.services.dao;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Types;
import java.util.Properties;

import org.piangles.central.services.CentralDecrypter;

public final class CentralDAOImpl implements CentralDAO 
{
	private static final String INSERT_AUDIT_DISCOVERY_SP = "Central.InsertAuditCentral";
	private static final String IS_HOST_AUTHORIZED_SP = "Central.IsHostAuthorized";
	private static final String GET_DISCOVERY_PROPS_SP = "Central.GetDiscoveryProperties";
	private static final String GET_TIER1_CONFIG_SP = "Central.GetTier1Configuration";
	private static final String VALIDATE_DECRYPT_REQUEST_SP = "Central.ValidateDecryptRequest";

	private static final String NAME = "Name";
	private static final String VALUE = "Value";
	private static final int AUHTORIZED_INDEX = 1;
	
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
			call = dbConnection.prepareCall(DataStore.createCallString(INSERT_AUDIT_DISCOVERY_SP, 6));
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
	public boolean isHostAuthorized(String remoteHost) throws DAOException
	{
		boolean authorized = false;
		Connection dbConnection = null;
		CallableStatement call = null;
		try
		{
			dbConnection = dataStore.getConnection();
			call = dbConnection.prepareCall(DataStore.createFunctionString(IS_HOST_AUTHORIZED_SP, 1));
			call.setString(1, remoteHost);
			ResultSet rs = call.executeQuery();
			if (rs.next())
			{
				authorized = rs.getBoolean(AUHTORIZED_INDEX);
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
		
		return authorized;
	}

	@Override
	public Properties getDiscoveryProperties(String remoteHost, String serviceName) throws DAOException
	{
		return getProperties(GET_DISCOVERY_PROPS_SP, remoteHost, serviceName);
	}

	@Override
	public Properties getTier1Configuration(String remoteHost, String serviceName) throws DAOException
	{
		return getProperties(GET_TIER1_CONFIG_SP, remoteHost, serviceName);
	}
	
	@Override
	public boolean isDecryptRequestValid(String remoteHost, String serviceName, String encryptedCategory,
			String encryptedValueName, String encryptedValue, String cipherAuthorizationIdName, String cipherAuthorizationId) throws DAOException
	{
		boolean valid = false;
		Connection dbConnection = null;
		CallableStatement call = null;
		try
		{
			dbConnection = dataStore.getConnection();
			call = dbConnection.prepareCall(DataStore.createFunctionString(VALIDATE_DECRYPT_REQUEST_SP, 8));
			call.setString(1, remoteHost);
			call.setString(2, serviceName);
			call.setString(3, encryptedCategory);
			call.setString(4, encryptedValueName);
			call.setString(5, encryptedValue);
			call.setString(6, cipherAuthorizationIdName);
			call.setString(7, cipherAuthorizationId);
			call.registerOutParameter(8, Types.INTEGER);

			call.execute();
			Object oRowCount = call.getObject(8);
			if (oRowCount != null)
			{
				Integer rowCount = (Integer)oRowCount;
				if (rowCount.intValue() == 2)
				{
					valid = true;
				}
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
	
	private Properties getProperties(String storedProcedureName, String remoteHost, String serviceName) throws DAOException
	{
		Properties nvPair = new Properties();

		Connection dbConnection = null;
		CallableStatement call = null;
		try
		{
			dbConnection = dataStore.getConnection();
			call = dbConnection.prepareCall(DataStore.createFunctionString(storedProcedureName, 2));
			call.setString(1, remoteHost);
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
}
