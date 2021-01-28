/*
 * Licensed to the Apache Software Foundation (ASF) under one or more
 * contributor license agreements. See the NOTICE file distributed with
 * this work for additional information regarding copyright ownership.
 * The ASF licenses this file to You under the Apache License, Version 2.0
 * (the "License"); you may not use this file except in compliance with
 * the License. You may obtain a copy of the License at
 *
 *    http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
 
 
package org.piangles.central.services.dao;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.Properties;

import org.apache.commons.dbcp2.BasicDataSource;
import org.piangles.central.services.CentralDecrypter;

public class DataStore
{
	public static final String DRIVER_CLASSNAME = "DriverClassName";
	public static final String LOGIN_ID = "LoginId";
	public static final String PASSWORD = "Password";
	public static final String URL = "URL";
	
	private static final String SP_BEGIN = "call ";
	private static final String SP_PARAM = "?";
	private static final String SP_END = ")";

	private static final String FUNC_BEGIN = "{call ";
	private static final String FUNC_PARAM = "?";
	private static final String FUNC_END = ")}";
	
	private BasicDataSource ds = null;

	public DataStore(Properties dataStoreProps, CentralDecrypter decrypter) throws Exception
	{
		ds = new BasicDataSource();
		ds.setDriverClassName(dataStoreProps.getProperty(DRIVER_CLASSNAME));
		ds.setUsername(decrypter.decrypt(dataStoreProps.getProperty(LOGIN_ID)));
		ds.setPassword(decrypter.decrypt(dataStoreProps.getProperty(PASSWORD)));
		ds.setUrl(dataStoreProps.getProperty(URL));

		// the settings below are optional -- dbcp can work with
		// defaults
		ds.setMinIdle(5);
		ds.setMaxIdle(20);
		ds.setMaxOpenPreparedStatements(180);
	}

	public Connection getConnection() throws SQLException
	{
		return this.ds.getConnection();
	}

	public static String createCallString(String storedProcName, int paramCount)
	{
		StringBuffer sb = new StringBuffer(SP_BEGIN);
		sb.append(storedProcName).append("(");

		for (int i = 0; i < paramCount; ++i)
		{
			if (i != 0)
			{
				sb.append(",");
			}
			sb.append(SP_PARAM);
		}

		sb.append(SP_END);
		return sb.toString();
	}
	
	public static String createFunctionString(String storedProcName, int paramCount)
	{
		StringBuffer sb = new StringBuffer(FUNC_BEGIN);
		sb.append(storedProcName).append("(");

		for (int i = 0; i < paramCount; ++i)
		{
			if (i != 0)
			{
				sb.append(",");
			}
			sb.append(FUNC_PARAM);
		}

		sb.append(FUNC_END);
		return sb.toString();
	}
}