package org.piangles.central.services;

import javax.crypto.Cipher;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;

import org.apache.commons.codec.binary.Base64;

public class CentralDecrypter
{
	private static final String UTF8 = "UTF-8";
	private static final String AES_ENCRYPTION_ALGORITHM = "AES";
	private static final String ALGORITHM_MODE_PADDING = "AES/CBC/PKCS5PADDING";
	
	private String key1 = null;
	private String key2 = null;

	public CentralDecrypter()
	{
		key1 = "Bar12345Bar12345"; // 128 bit key (16*8 = 128)
		key2 = "ThisIsASecretKet";
	}
	
	public String decrypt(String toBeDecrypted) throws Exception
	{
		SecretKeySpec skeySpec = new SecretKeySpec(key1.getBytes(UTF8), AES_ENCRYPTION_ALGORITHM);
		IvParameterSpec iv = new IvParameterSpec(key2.getBytes(UTF8));
		
		Cipher cipher = Cipher.getInstance(ALGORITHM_MODE_PADDING);
		cipher.init(Cipher.DECRYPT_MODE, skeySpec, iv);
		byte[] original = cipher.doFinal(Base64.decodeBase64(toBeDecrypted));

		return new String(original);
	}
}
