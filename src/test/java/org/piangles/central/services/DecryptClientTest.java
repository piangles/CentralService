package org.piangles.central.services;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;

public class DecryptClientTest
{
	public static void main(String[] args)
	{
		try
		{
			URL discoveryURL = new URL("http://52.23.185.3:80/app-central/decrypt?cipherAuthorizationId=1c044b37-9388-4e6b-baf2-9fe09dea4281&toBeDecrypted=" + URLEncoder.encode("TdmVTwllpL3hE+HyDz1ScA==", "UTF-8"));
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
		catch (IOException e)
		{
			throw new RuntimeException(e.getMessage(), e);
		}
	}
}
