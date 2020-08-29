package com.TBD.central.services;

import java.io.IOException;
import java.util.Properties;
import java.util.Set;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.TBD.central.services.dao.DAOException;

/**
 * Servlet implementation class DiscoveryServlet
 */
public class DiscoveryServlet extends AbstractCentralServlet
{
	private static final long serialVersionUID = 1L;
	private static final String SERVICE_NAME = "ServiceName";
	
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
			recordAudit(request, "Discover", serviceName);
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
				response.setStatus(HttpServletResponse.SC_UNAUTHORIZED);
				response.sendError(HttpServletResponse.SC_UNAUTHORIZED, "Server [" + remoteHost + "] is not registered server.");
			}
		}
		catch (DAOException expt)
		{
			Call911.notify(expt, expt.getMessage());
			response.setStatus(HttpServletResponse.SC_INTERNAL_SERVER_ERROR);
			response.sendError(HttpServletResponse.SC_INTERNAL_SERVER_ERROR, "Server Internal Error");
		}
	}
}
