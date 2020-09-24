package org.piangles.central.services;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.piangles.central.services.dao.DAOException;

/**
 * Servlet implementation class DiscoveryServlet
 */
public class DecryptServlet extends AbstractCentralServlet
{
	private static final long serialVersionUID = 1L;
	private static final String ENCRYPTED_CATEGORY = "encryptedCategory";
	private static final String ENCRYPTED_VALUE_NAME = "encryptedValueName";
	private static final String ENCRYPTED_VALUE = "encryptedValue";
	private static final String CIPHER_AUTHORIZATION_ID_NAME = "cipherAuthorizationIdName";
	private static final String CIPHER_AUTHORIZATION_ID = "cipherAuthorizationId";
	
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
		centralDecrypter = new CentralDecrypter();
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		String remoteHost = request.getRemoteHost();
		String serviceName = request.getParameter(SERVICE_NAME);
		
		response.setContentType("text/html");
		
		String encryptedCategory = request.getParameter(ENCRYPTED_CATEGORY); //Is it some Discovery Property or Config Property
		String encryptedValueName = request.getParameter(ENCRYPTED_VALUE_NAME);
		String encryptedValue = request.getParameter(ENCRYPTED_VALUE);
		String cipherAuthorizationIdName = request.getParameter(CIPHER_AUTHORIZATION_ID_NAME);
		String cipherAuthorizationId = request.getParameter(CIPHER_AUTHORIZATION_ID);

		//[Discovery][ControllerDecrypterAuthorizationId][TdmVTwllpL3hE+HyDz1ScA==][ControllerDecrypterAuthorizationId][477e0c1b-d057-40df-9c56-e7c52ddb875d]
		String requestedValue = "[" + encryptedCategory + "]" + "[" + encryptedValueName +"]" +  "[" + encryptedValue + "]" + "[" + cipherAuthorizationIdName + "]" + "[" + cipherAuthorizationId + "]";

		try
		{
			recordAudit(request, "Decrypt", requestedValue);
			
			if (centralDAO.isDecryptRequestValid(remoteHost, serviceName, encryptedCategory, encryptedValueName, encryptedValue, cipherAuthorizationIdName, cipherAuthorizationId))
			{
				try
				{
					response.getWriter().write(centralDecrypter.decrypt(encryptedValue));
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
				response.sendError(HttpServletResponse.SC_UNAUTHORIZED, "Server [" + remoteHost + "] is not a registered server.");
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
