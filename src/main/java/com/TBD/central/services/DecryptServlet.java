package com.TBD.central.services;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.TBD.central.services.dao.DAOException;

/**
 * Servlet implementation class DiscoveryServlet
 */
public class DecryptServlet extends AbstractCentralServlet
{
	
	private static final long serialVersionUID = 1L;
	private static final String CIPHER_AUTHORIZATION_ID = "cipherAuthorizationId";
	private static final String DECRYPT_VALUE = "toBeDecrypted";
	
	private AuthorizationIdValidator authorizationIdValidator = null;
	private CentralDecrypter centralDecrypter = null;

	/**
	 * Default constructor.
	 * 
	 * @throws SQLException
	 * @throws ClassNotFoundException 
	 * @throws IllegalAccessException 
	 * @throws InstantiationException 
	 */
	public DecryptServlet()
	{
		authorizationIdValidator = new AuthorizationIdValidator(); 
		centralDecrypter = new CentralDecrypter();
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		response.setContentType("text/html");
		
		String cipherAuthorizationId = request.getParameter(CIPHER_AUTHORIZATION_ID);
		String toBeDecrypted = request.getParameter(DECRYPT_VALUE);

		String requestedValue = "[" + cipherAuthorizationId +"] [" + toBeDecrypted + "]";

		try
		{
			recordAudit(request, "Decrypt", requestedValue);
			
			String remoteHost = request.getRemoteHost();
			
			if (authorizationIdValidator.isValidCipherAuthorizationId(cipherAuthorizationId))
			{
				try
				{
					response.getWriter().write(centralDecrypter.decrypt(toBeDecrypted));
				}
				catch (Exception expt)
				{
					Call911.notify(expt, expt.getMessage());
					response.setStatus(HttpServletResponse.SC_INTERNAL_SERVER_ERROR);
					response.getWriter().write("Server Internal Error");
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
