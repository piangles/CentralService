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
import java.util.Properties;
import java.util.Set;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.piangles.central.services.dao.DAOException;

public class DiscoveryServlet extends AbstractCentralServlet
{
	private static final long serialVersionUID = 1L;
	
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		String remoteHost = request.getRemoteHost();
		String serviceName = request.getParameter(SERVICE_NAME);
		
		response.setContentType("text/html");
		try
		{
			System.out.println("Request for Discover : " + serviceName + " from host : " + remoteHost);
			recordAudit(request, "Discover", serviceName);
			if (isHostAuthorized(remoteHost))
			{
				Properties nvPair = centralDAO.getDiscoveryProperties(remoteHost, serviceName);
				if (nvPair != null && !nvPair.isEmpty())
				{
					response.setStatus(HttpServletResponse.SC_OK);
					Set<Object> keys = nvPair.keySet();
					for (Object key : keys)
					{
						response.getWriter().write(key + "=" + nvPair.get(key) + "\n");
					}
				}
				else
				{
					sendErrorResponse(response, HttpServletResponse.SC_NOT_FOUND, "Service [" + serviceName + "] Discovery details not found.");
				}
			}
			else
			{
				sendErrorResponse(response, HttpServletResponse.SC_FORBIDDEN, "Server [" + remoteHost + "] is not a registered server.");
			}
		}
		catch (DAOException expt)
		{
			Call911.notify(expt, expt.getMessage());
			sendErrorResponse(response, HttpServletResponse.SC_INTERNAL_SERVER_ERROR, "Server Internal Error");
		}
	}
}
