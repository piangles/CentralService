package com.TBD.central.services.dao;

import java.util.Properties;

public class DBProperties
{
	public static Properties getDBProperties()
	{
		Properties dataStoreProps = new Properties();
		dataStoreProps.put(DataStore.DRIVER_CLASSNAME, "com.mysql.jdbc.Driver");
		dataStoreProps.put(DataStore.LOGIN_ID, "kj5IPCk6oWkmxezE9yWh3Q==");
		dataStoreProps.put(DataStore.PASSWORD, "bSU2ekVvuinOQTa/ywH7kg==");
		dataStoreProps.put(DataStore.URL, "jdbc:mysql://elektos.cty8sfgs1evu.us-east-1.rds.amazonaws.com:3306/");
		
		return dataStoreProps;
	}
}
