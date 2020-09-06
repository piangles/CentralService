package com.TBD.central.services;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.StringReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.Properties;

public class Tier1ConfigClientTest
{
	public static void main(String[] args)
	{
		try
		{
			URL discoveryURL = new URL("http://52.23.185.3:80/app-central/tier1config?ServiceName=ConfigService");
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
		catch (IOException e)
		{
			throw new RuntimeException(e.getMessage(), e);
		}
	}
}
