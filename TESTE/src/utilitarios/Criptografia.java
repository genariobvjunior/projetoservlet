/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package utilitarios;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;



public class Criptografia {

	public static int MD5_TOKEN_SIZE = 32;

	private static MessageDigest md = null;


//	public static void main(String[] args) {
//		//Exemplo de uso
//		String hashAleatorio = randomMD5();
//		System.out.println(hashAleatorio);
//	}

	static {
		try {
			md = MessageDigest.getInstance("MD5");
		} catch (NoSuchAlgorithmException ex) {
			ex.printStackTrace();
		}
	}

	private static char[] hexCodes(byte[] text) {
		char[] hexOutput = new char[text.length * 2];
		String hexString;

		for (int i = 0; i < text.length; i++) {
			hexString = "00" + Integer.toHexString(text[i]);
			hexString.getChars(hexString.length() - 2,
			hexString.length(), hexOutput, i * 2);
		}
		return hexOutput;
	}

	public static String criptografar(String pwd) {
		if (md != null && pwd != null) {
			return new String(hexCodes(md.digest(pwd.getBytes())));
		}
		return null;
	}

	public static String randomMD5(){
		double random1 = Math.random() * 1000.0;
		double random2 = Math.random() * 1000.0;
		double random3 = random1 * random2;

		return criptografar(random3 + "_random");
	}

}