package org.piangles.central.services.dao;

import java.util.Properties;

public class DBProperties
{
	private static final String CENTRAL_DB_DRIVER = "central.db.driver";
	private static final String CENTRAL_DB_LOGIN = "central.db.login";
	private static final String CENTRAL_DB_PASSWORD = "central.db.password";
	private static final String CENTRAL_DB_URL = "central.db.url";

	public static Properties getDBProperties()
	{
		Properties dataStoreProps = new Properties();
		dataStoreProps.put(DataStore.DRIVER_CLASSNAME, System.getenv(CENTRAL_DB_DRIVER));
		dataStoreProps.put(DataStore.LOGIN_ID, System.getenv(CENTRAL_DB_LOGIN));
		dataStoreProps.put(DataStore.PASSWORD, System.getenv(CENTRAL_DB_PASSWORD));
		dataStoreProps.put(DataStore.URL, System.getenv(CENTRAL_DB_URL));

		return dataStoreProps;
	}
}
