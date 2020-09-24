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

	protected final void recordAudit(HttpServletRequest request, String requestedService, String requestedValue) throws DAOException
	{
		String remoteAddress = request.getRemoteAddr();
		String remoteHost = request.getRemoteHost();
		int remotePort = request.getRemotePort();
		String remoteUser = request.getRemoteUser();

		centralDAO.recordAudit(remoteAddress, remoteHost, remotePort, remoteUser, requestedService, requestedValue);
	}
}
