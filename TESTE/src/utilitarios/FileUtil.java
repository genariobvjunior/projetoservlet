/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package utilitarios;

import java.io.BufferedReader;
import sun.misc.BASE64Encoder;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FilenameFilter;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.URI;
import java.net.URL;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;
import java.util.List;
import sun.misc.BASE64Decoder;

public class FileUtil {


	public enum FileType {
		DIRECTORY, FILE, BOTH;
	};

	/*
	 * To convert the InputStream to String we use the BufferedReader.readLine()
	 * method. We iterate until the BufferedReader return null which means
	 * there's no more data to read. Each line will appended to a StringBuilder
	 * and returned as String.
	 */
	public static String convertStreamToString(InputStream is)
			throws IOException {

		if (is == null) {
			throw new NullPointerException();
		}

		BufferedReader reader = new BufferedReader(new InputStreamReader(is));
		StringBuilder sb = new StringBuilder();

		String line = null;
		try {
			while ((line = reader.readLine()) != null) {
				sb.append(line + "\n");
			}
		} catch (IOException e) {
			throw new IOException("error.io.inputstream.cannot-read");
		} finally {
			try {
				is.close();
			} catch (IOException e) {
				throw new IOException("error.io.inputstream.cannot-read");
			}
		}

		return sb.toString();
	}

	public static byte[] convertFileToByteArray(InputStream input) throws IOException{
		return convertInputToByteArray(input);
	}


	public static byte[] convertInputToByteArray(InputStream input)
			throws IOException {

		ByteArrayOutputStream out = new ByteArrayOutputStream();

		byte buff[] = new byte[1024];

		int len;
		try {
			while ((len = input.read(buff)) > 0) {
				out.write(buff, 0, len);
			}
		} catch (IOException e) {
			throw new IOException("error.io.inputstream.cannot-read", e);
		} finally {
			if (out != null) {
				try {
					out.close();
				} catch (Exception e) {
				}
			}
			if (input != null) {
				try {
					input.close();
				} catch (Exception e) {
				}
			}
		}

		byte[] byteArray = out.toByteArray();

		return byteArray;
	}

	public static byte[] convertFileToByteArray(File operacaoFile)
			throws FileNotFoundException, IOException {
		return convertFileToByteArray(new FileInputStream(operacaoFile));
	}

	public static String getNameWithoutExtension(File file) {
		String path = file.getPath();
		return  getNameWithoutExtension(path);
	}

	public static String getNameWithoutExtension(String path) {
		String extension = getExtension(path);

		if (extension != null && !extension.equals("")) {
			extension = extension.replaceAll("\\.", "\\.");
			path = path.replaceAll(extension, "");
		}

		return path;
	}

	public static String getExtension(File file) {
		if (file == null) {
			return null;
		}
		return getExtension(file.getPath());
	}

	public static String getExtension(String path) {

		if (path == null) {
			return null;
		}

		int indexDot = path.lastIndexOf('.');

		if (indexDot == -1) {
			return "";
		} else {
			return path.substring(indexDot, path.length());
		}
	}

	public static File newlyFile(File dir, String filename) {

		if(!FileUtil.isAvaliable(dir, FileType.DIRECTORY, true)){
			return null;
		}

		return newlyFile(dir.getAbsolutePath() + "/" + filename);
	}

	public static File newlyFile(String path) {
		File file = new File(path);

		int index = 1;

		while (file.exists()) {
			String nameWithoutExtension = FileUtil
					.getNameWithoutExtension(file);

			int indexUnderline = nameWithoutExtension.lastIndexOf('_');

			if (indexUnderline != -1) {
				String numberMaybe = nameWithoutExtension.substring(
						indexUnderline + 1, nameWithoutExtension.length());

				boolean isNumber = isLong(numberMaybe);

				if (isNumber) {
					nameWithoutExtension = nameWithoutExtension.substring(0,
							indexUnderline);
				}
			}

			String extension = FileUtil.getExtension(file);

			file = new File(nameWithoutExtension + "_" + index + extension);
			index++;
		}

		return file;

	}

	private static boolean isLong(String numberMaybe) {
		if (numberMaybe == null) {
			return false;
		}
		try {
			new Long(numberMaybe);
			return true;
		} catch (Exception e) {
			return false;
		}

	}

	public static List<File> getRecentChangedFiles(String outputDirectory,
			Long oldCheckTime, List<String> extensions) {

		if (outputDirectory == null) {
			return null;
		}

		return getRecentChangedFiles(new File(outputDirectory), oldCheckTime,
				extensions);
	}

	public static List<File> getFilesByExtension(String directory,
			List<String> extensions) {
		return getRecentChangedFiles(directory, null, extensions);
	}

	public static List<File> getFilesByExtension(File directory,
			List<String> extensions) {
		return getRecentChangedFiles(directory, null, extensions);
	}

	public static List<File> getRecentChangedFiles(File outputDirectory,
			final Long oldCheckTime, final List<String> extensions) {

		if (outputDirectory == null || !outputDirectory.exists()
				|| !outputDirectory.canRead()) {
			return null;
		}

		Date agora = new Date();
		final long agoraMillis = agora.getTime();

		File[] files = outputDirectory.listFiles(new FilenameFilter() {

			public boolean accept(File file, String filename) {

				if (oldCheckTime != null) {
					long lastModified = file.lastModified();

					long diffTime = agoraMillis - lastModified;

					if (diffTime > oldCheckTime) {
						// nao considera arquivos mais velhos que a variÃ¡vel
						// passada.
						return false;
					}
				}

				return hasExtension(filename, extensions);
			}

		});

		if (files == null) {
			return new ArrayList<File>();
		}

		return Arrays.asList(files);
	}

	public static boolean hasExtension(String filename, List<String> extensions) {

		if (extensions == null) {
			return true;
		}

		for (String extension : extensions) {

			if (filename.endsWith(extension)) {
				return true;
			}
		}

		return false;
	}

	// public static void main(String[] args){
	// File newlyFile = FileUtil.newlyFile("/home/bruno/bbfile_output/E9.TS");
	// System.out.println(newlyFile.getAbsolutePath());
	// }

	public static String readStream(InputStream stream, String newline)
			throws IOException {
		return readReader(new BufferedReader(new InputStreamReader(stream)),
				newline);
	}

	public static String readReader(BufferedReader reader, String newline)
			throws IOException {

		StringBuilder sb = new StringBuilder();

		String linha = reader.readLine();

		while (linha != null) {
			sb.append(linha + newline);
			linha = reader.readLine();
		}

		String text = sb.toString();

		while (text.length() >= 1
				&& (text.charAt(text.length() - 1) == '\n' || text.charAt(text
						.length() - 1) == '\r')) {
			text = text.substring(0, text.length() - 2);
		}

		// if(text.length() >= BBFileConstants.NEWLINE.length()){
		// text = text.substring(0, text.length() -
		// BBFileConstants.NEWLINE.length());
		// }

		reader.close();

		return text;

	}

	public static String readUrl(URL url, String newline) throws IOException {
		InputStream stream = url.openStream();
		String retorno = readStream(stream, newline);
		stream.close();
		return retorno;
	}

	public static String readFile(File file, String newline) throws IOException {
		URI uri = file.toURI();

		URL url = new URL(uri.toString());
		return readUrl(url, newline);
	}

	public static List<File> getFilesByExtension(File dir, String[] extensions) {
		return getFilesByExtension(dir,
				extensions == null ? null : Arrays.asList(extensions));
	}

	public static boolean isAvaliable(File file, FileType fileType) {
		return isAvaliable(file, fileType, false);
	}

	public static boolean isAvaliable(File file, FileType fileType, boolean forWrite) {

		if(file == null){
			return false;
		}

		boolean isAvaliable = file.exists() && file.canRead();

		if(forWrite){
			isAvaliable = isAvaliable & file.canWrite();
		}

		if(fileType == null){

		} else if (fileType == FileType.FILE){
			isAvaliable = isAvaliable & file.isFile();
		} else {
			assert fileType == FileType.DIRECTORY;
			isAvaliable = isAvaliable & file.isDirectory();
		}

		return isAvaliable;
	}

//	public static void writeByteArrayToFile(File outFile, byte[] byteArray ) {
//		try {
//			org.apache.commons.io.FileUtils.writeByteArrayToFile(outFile, byteArray);
//		} catch (IOException e) {
//			throw new FileException(e);
//		}
//	}

	public static File getFile(File directory, String nomeArquivo) {

		if(!FileUtil.isAvaliable(directory, FileType.DIRECTORY, true)){
			return null;
		}

		return new File(directory.getAbsolutePath() + "/" + nomeArquivo);
	}

	public static boolean isAvaliableForWrite(File file, FileType file2) {
		return isAvaliable(file, file2, true);
	}

	public static boolean contains(File directory, File file){

		if(directory == null || file == null){
			return false;
		}

		boolean contem = true;

		while(!file.equals(directory)){

			file = file.getParentFile();

			if(file == null){
				contem = false;
				break;
			}
		}

		return contem;
	}

	public static boolean createDirectory(File directory) {
		if(directory == null){
			return false;
		}

		if(!directory.exists()){
			boolean mkdir = directory.mkdirs();
			return mkdir;
		} else {
			return true;
		}
	}

	public static byte[] convertBase64ToByteArray(String str) throws IOException {
		BASE64Decoder decoder = new BASE64Decoder();
		return decoder.decodeBuffer(str);
	}

	public static String convertByteArrayToBase64(byte[] bytes) throws IOException {
		if(bytes == null){
			return null;
		}
		BASE64Encoder encoder = new BASE64Encoder();
		return encoder.encodeBuffer(bytes);
	}


}
