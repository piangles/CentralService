package org.piangles.central.services;

import java.io.IOException;
import java.util.Properties;
import java.util.Set;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.piangles.central.services.dao.DAOException;

/**
 * Servlet implementation class DiscoveryServlet
 */
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
