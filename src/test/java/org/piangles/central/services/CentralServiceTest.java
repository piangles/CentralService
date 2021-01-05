package org.piangles.central.services;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.io.StringReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;
import java.util.Properties;

public class CentralServiceTest
{
	public static final String CENTRAL_HOST = "central.host";
	public static final String CENTRAL_PORT = "central.port";

	public static void main(String[] args)
	{
		String centralHost = System.getenv(CENTRAL_HOST);
		String centralPort = System.getenv(CENTRAL_PORT);
		String centralSocketAddress = centralHost + ":" + centralPort;
		
		try
		{
			discover(centralSocketAddress);
			tier1ConfigTest(centralSocketAddress);
			decrypt(centralSocketAddress);
		}
		catch (Exception e)
		{
			e.printStackTrace();
		}
	}
	
	private static void discover(String centralSocketAddress) throws Exception
	{
		URL discoveryURL = new URL("http://" + centralSocketAddress + "/app-central/discover?ServiceName=LoggingServiceEndpoint");
		HttpURLConnection discoveryConn = (HttpURLConnection) discoveryURL.openConnection();

		discoveryConn.setRequestMethod("GET");
		discoveryConn.setRequestProperty("User-Agent", "Mozilla/5.0");
		discoveryConn.setRequestProperty("Accept","*/*");			
		
		BufferedReader in = new BufferedReader(new InputStreamReader(discoveryConn.getInputStream()));
		String inputLine;
		StringBuffer response = new StringBuffer();

		while ((inputLine = in.readLine()) != null)
		{
			response.append(inputLine);
			response.append("\n");
		}
		in.close();
		
		System.out.println("---------------RESPONSE---------------");
		System.out.println(response);
		Properties discoveryProps = new Properties();
		discoveryProps.load(new StringReader(response.toString()));
		System.out.println("discoveryProps : " + discoveryProps);
	}
	
	private static void tier1ConfigTest(String centralSocketAddress) throws Exception
	{
		URL discoveryURL = new URL("http://" + centralSocketAddress + "/app-central/tier1config?ServiceName=ConfigService");
		HttpURLConnection discoveryConn = (HttpURLConnection) discoveryURL.openConnection();

		discoveryConn.setRequestMethod("GET");
		discoveryConn.setRequestProperty("User-Agent", "Mozilla/5.0");
		discoveryConn.setRequestProperty("Accept","*/*");			
		
		BufferedReader in = new BufferedReader(new InputStreamReader(discoveryConn.getInputStream()));
		String inputLine;
		StringBuffer response = new StringBuffer();

		while ((inputLine = in.readLine()) != null)
		{
			response.append(inputLine);
			response.append("\n");
		}
		in.close();
		
		System.out.println("---------------RESPONSE---------------");
		System.out.println(response);
		Properties discoveryProps = new Properties();
		discoveryProps.load(new StringReader(response.toString()));
		System.out.println("discoveryProps : " + discoveryProps);
	}
	
	private static void decrypt(String centralSocketAddress) throws Exception
	{
		URL discoveryURL = new URL("http://" + centralSocketAddress + "/app-central/decrypt?cipherAuthorizationId=1c044b37-9388-4e6b-baf2-9fe09dea4281&toBeDecrypted=" + URLEncoder.encode("TdmVTwllpL3hE+HyDz1ScA==", "UTF-8"));
		HttpURLConnection discoveryConn = (HttpURLConnection) discoveryURL.openConnection();

		discoveryConn.setRequestMethod("GET");
		discoveryConn.setRequestProperty("User-Agent", "Mozilla/5.0");
		discoveryConn.setRequestProperty("Accept","*/*");			
		
		BufferedReader in = new BufferedReader(new InputStreamReader(discoveryConn.getInputStream()));
		String inputLine;
		StringBuffer response = new StringBuffer();

		while ((inputLine = in.readLine()) != null)
		{
			response.append(inputLine);
			response.append("\n");
		}
		in.close();
		
		System.out.println("---------------RESPONSE---------------");
		System.out.println(response);
		System.out.println("DecipheredValue : " + response.toString());
	
	}
}
