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
