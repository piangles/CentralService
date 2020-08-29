package com.TBD.central.services;

import java.util.ArrayList;
import java.util.List;

public final class AuthorizationIdValidator 
{
	private List<String> entitlementList = null;
	
	public AuthorizationIdValidator()
	{
		//TODO Move this to DB
		
		//Also we need to validate all the authorizationIds are unique. 
		
		entitlementList = new ArrayList<String>();
		entitlementList.add("477e0c1b-d057-40df-9c56-e7c52ddb875d");//SessionManagementControllerDecrypter
		entitlementList.add("cbcb6dad-66b0-4391-9ec2-18783548b4b5");//SessionManagementDataStoreDecrypter
		entitlementList.add("3ba7c57e-0747-4da7-a85d-14daa39d3932");//SessionManagementHandlerDecrypter

		
		entitlementList.add("1c044b37-9388-4e6b-baf2-9fe09dea4281");//CryptoControllerDecrypter
		entitlementList.add("a9e422d3-a2b8-4ae8-9f7d-e266bd3b9637");//CryptoDataStoreDecrypter
		entitlementList.add("3466d438-4830-4d1a-847c-1a1e87612e9e");//CryptoHandlerDecrypter

		entitlementList.add("496b2226-a927-4cbc-812d-c116d0eb5902");//ConfigControllerDecrypter
		entitlementList.add("cd2671a9-209e-4f2f-830a-f365421c8368");//ConfigDataStoreDecrypter
		entitlementList.add("6e3c9a60-4404-43a1-9702-1f3344bd06f1");//ConfigHandlerDecrypter
	}
	
	public boolean isValidCipherAuthorizationId(String cipherAuthorizationId)
	{
		return entitlementList.contains(cipherAuthorizationId);
	}
}
