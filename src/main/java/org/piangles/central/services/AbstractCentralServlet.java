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
 
package org.piangles.central.services;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.piangles.central.services.dao.CentralDAO;
import org.piangles.central.services.dao.CentralDAOImpl;
import org.piangles.central.services.dao.DAOException;

/**
 * Servlet implementation class CentralDaoServlet
 */
public abstract class AbstractCentralServlet extends HttpServlet
{
	private static final long serialVersionUID = 1L;
	protected static final String SERVICE_NAME = "ServiceName";
	
	protected CentralDAO centralDAO = null;
	/**
	 * Default constructor.
	 * 
	 * @throws SQLException
	 * @throws ClassNotFoundException 
	 * @throws IllegalAccessException 
	 * @throws InstantiationException 
	 */
	public AbstractCentralServlet()
	{
		try
		{
			centralDAO = new CentralDAOImpl();
		}
		catch (Exception e)
		{
			Call911.notify(e, e.getMessage());
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected final void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		response.setStatus(HttpServletResponse.SC_BAD_REQUEST);
		response.getWriter().write("Bad Request");
	}
	
	protected final boolean isHostAuthorized(String remoteAddress) throws DAOException
	{
		return centralDAO.isHostAuthorized(remoteAddress);
	}
	

	protected final void recordAudit(HttpServletRequest request, String requestedService, String requestedValue) throws DAOException
	{
		String remoteAddress = request.getRemoteAddr();
		String remoteHost = request.getRemoteHost();
		int remotePort = request.getRemotePort();
		String remoteUser = request.getRemoteUser();

		centralDAO.recordAudit(remoteAddress, remoteHost, remotePort, remoteUser, requestedService, requestedValue);
	}
	
	protected final void sendErrorResponse(HttpServletResponse response, int httpStatusCode, String message) throws IOException
	{
		response.setStatus(httpStatusCode);
		response.getWriter().write(message);
	}
}
