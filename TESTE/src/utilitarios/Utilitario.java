/*
 * Utilitario.java
 *
 * Created on 7 de Marco de 2009, 15:42
 *
 * To change this template, choose Tools | Template Manager
 * and open the template in the editor.
 */
package utilitarios;

import java.io.BufferedReader;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.PrintStream;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.text.DateFormat;
import java.text.DecimalFormat;
import java.text.Normalizer;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.Locale;
import java.util.StringTokenizer;

import javax.servlet.http.HttpServletRequest;

import com.lowagie.text.pdf.codec.Base64.InputStream;

import sun.misc.BASE64Encoder;

public class Utilitario {

	public static Date getPegaDataAtual() {
		Calendar calendar = new GregorianCalendar();
		Date date = new Date();
		calendar.setTime(date);
		return calendar.getTime();
	}

	public static String getPegaMesData(Date data) {
		Calendar calendar = new GregorianCalendar();
		calendar.setTime(data);
		String mes = addZero(String.valueOf(calendar.get(Calendar.MONTH) + 01));

		return mes;
	}

	public static String getPegaAnoData(Date data) {
		Calendar calendar = new GregorianCalendar();
		calendar.setTime(data);
		String ano = String.valueOf(calendar.get(Calendar.YEAR));

		return ano;
	}

	public static boolean isInt(String numero) {

		int numInt;

		try {
			numInt = Integer.parseInt(numero);
		} catch (Exception e) {
			return (false);
		}
		return (true);
	}

	public static String retornaPrimeiroNome(String nome) {

		StringTokenizer st;
		st = new StringTokenizer(nome, " ");
		return st.nextToken();
	}

	public static String retornaInicioNome(String nome) {
		return nome.substring(0, 10);
	}

	public static String retornaPrimeiroProcessoArquimedes(String nome) {

		StringTokenizer st;
		st = new StringTokenizer(nome, "/");
		return st.nextToken();
	}

	public static String retornaTipoOrigem(String texto) {
		StringTokenizer st;
		st = new StringTokenizer(texto, "X");
		return st.nextToken();
	}


	public static Date strToDate(String data, String formato) {

		try {
			DateFormat formatter = new SimpleDateFormat(formato);
			formatter.setLenient(false);
			return formatter.parse(data);
		} catch (ParseException e) {
			// e.printStackTrace();
			return null;
		}
	}





	// /////////////////////////////////////////////////////////////////////////////////////////////////
	public static String addZero(String c) {
		if (c.length() == 1) {
			c = '0' + c.trim();
		}
		return (c);
	}

	public static String addZero3(String c) {
		if (c.length() == 1) {
			c = "00" + c.trim();
		}
		if (c.length() == 2) {
			c = '0' + c.trim();
		}
		return (c);
	}

	public static String getDataHoraMinuto() {

		String registro;
		String ano = null, dia, mes, hora, min, seg, t = null;
		GregorianCalendar calendario = new GregorianCalendar();
		Date dataAtual = new Date();

		calendario.setTime(dataAtual);
		ano = String.valueOf(calendario.get(Calendar.YEAR));
		mes = addZero(String.valueOf(calendario.get(Calendar.MONTH) + 01));
		dia = addZero(String.valueOf(calendario.get(Calendar.DATE)));
		hora = addZero(String.valueOf(calendario.get(Calendar.HOUR_OF_DAY)));
		min = addZero(String.valueOf(calendario.get(Calendar.MINUTE)));
		seg = addZero(String.valueOf(calendario.get(Calendar.SECOND)));

		registro = ano + "-" + mes + "-" + dia + " " + hora + ":" + min + ":" + seg;

		return (registro);
	}

	public static String getDataHoraMinuto_sms() {
		String registro;
		String ano = null, dia, mes, hora, min, seg, t = null;
		GregorianCalendar calendario = new GregorianCalendar();

		// calendario.add(Calendar.MINUTE, 15);
		Date dataAtual = new Date();

		calendario.setTime(dataAtual);
		ano = String.valueOf(calendario.get(Calendar.YEAR));
		mes = addZero(String.valueOf(calendario.get(Calendar.MONTH) + 01));
		dia = addZero(String.valueOf(calendario.get(Calendar.DATE)));
		hora = addZero(String.valueOf(calendario.get(Calendar.HOUR_OF_DAY)));
		min = addZero(String.valueOf(calendario.get(Calendar.MINUTE)));
		seg = addZero(String.valueOf(calendario.get(Calendar.SECOND)));
		registro = "&d=" + ano + "-" + mes + "-" + dia + "&h=" + hora + ":" + min;
		return (registro);
	}

	public static String getDataTimerZerado() {

		String registro;
		String ano = null, dia, mes, hora, min, seg, t = null;
		GregorianCalendar calendario = new GregorianCalendar();
		Date dataAtual = new Date();

		calendario.setTime(dataAtual);
		ano = String.valueOf(calendario.get(Calendar.YEAR));
		mes = addZero(String.valueOf(calendario.get(Calendar.MONTH) + 01));
		dia = addZero(String.valueOf(calendario.get(Calendar.DATE)));
		hora = addZero(String.valueOf(calendario.get(Calendar.HOUR_OF_DAY)));
		min = addZero(String.valueOf(calendario.get(Calendar.MINUTE)));
		seg = addZero(String.valueOf(calendario.get(Calendar.SECOND)));

		registro = ano + "-" + mes + "-" + dia + " 00:00:00";

		return (registro);
	}

	public static String getDataHoraMinutoyyyy_mm_dd() {

		String registro;
		String ano = null, dia, mes, hora, min, seg, t = null;
		GregorianCalendar calendario = new GregorianCalendar();
		Date dataAtual = new Date();

		calendario.setTime(dataAtual);
		ano = String.valueOf(calendario.get(Calendar.YEAR));
		mes = addZero(String.valueOf(calendario.get(Calendar.MONTH) + 01));
		dia = addZero(String.valueOf(calendario.get(Calendar.DATE)));
		hora = addZero(String.valueOf(calendario.get(Calendar.HOUR_OF_DAY)));
		min = addZero(String.valueOf(calendario.get(Calendar.MINUTE)));
		seg = addZero(String.valueOf(calendario.get(Calendar.SECOND)));

		registro = ano + mes + dia;

		return (registro);
	}

	public static int getHoraMinSeg() {

		String registro;
		int retorno = 0;
		String ano = null, dia, mes, hora, min, seg, t = null;
		GregorianCalendar calendario = new GregorianCalendar();
		Date dataAtual = new Date();

		calendario.setTime(dataAtual);
		ano = String.valueOf(calendario.get(Calendar.YEAR));
		mes = addZero(String.valueOf(calendario.get(Calendar.MONTH) + 01));
		dia = addZero(String.valueOf(calendario.get(Calendar.DATE)));
		hora = addZero(String.valueOf(calendario.get(Calendar.HOUR_OF_DAY) - 1));
		min = addZero(String.valueOf(calendario.get(Calendar.MINUTE)));
		seg = addZero(String.valueOf(calendario.get(Calendar.SECOND)));
		// subtrai 1 hora enquanto estiver o horxrio de verxo - HOUR_OF_DAY - 1

		registro = hora + min + seg;
		retorno = Integer.parseInt(registro);
		return (retorno);
	}

	public static String formatadecimal(double valor) {
		Locale locale = Locale.getDefault();
		DecimalFormat formatador = new DecimalFormat();
		formatador.applyPattern("###,###,##0.00");
		return (formatador.format(valor));
	}


	public static int dataDiff(java.util.Date dataLow, java.util.Date dataHigh) {

		GregorianCalendar startTime = new GregorianCalendar();
		GregorianCalendar endTime = new GregorianCalendar();

		GregorianCalendar curTime = new GregorianCalendar();
		GregorianCalendar baseTime = new GregorianCalendar();

		startTime.setTime(dataLow);
		endTime.setTime(dataHigh);

		int dif_multiplier = 1;

		// Verifica a ordem de inicio das datas
		if (dataLow.compareTo(dataHigh) < 0) {
			baseTime.setTime(dataHigh);
			curTime.setTime(dataLow);
			dif_multiplier = 1;
		} else {
			baseTime.setTime(dataLow);
			curTime.setTime(dataHigh);
			dif_multiplier = -1;
		}

		int result_years = 0;
		int result_months = 0;
		int result_days = 0;

		// Para cada mes e ano, vai de mes em mes pegar o ultimo dia para import
		// acumulando
		// no total de dias. Ja leva em consideracao ano bissesto
		while (curTime.get(GregorianCalendar.YEAR) < baseTime.get(GregorianCalendar.YEAR)
				|| curTime.get(GregorianCalendar.MONTH) < baseTime.get(GregorianCalendar.MONTH)) {

			int max_day = curTime.getActualMaximum(GregorianCalendar.DAY_OF_MONTH);
			result_months += max_day;
			curTime.add(GregorianCalendar.MONTH, 1);

		}

		// Marca que x um saldo negativo ou positivo
		result_months = result_months * dif_multiplier;
		// Retirna a diferenca de dias do total dos meses
		result_days += (endTime.get(GregorianCalendar.DAY_OF_MONTH) - startTime.get(GregorianCalendar.DAY_OF_MONTH));

		return result_years + result_months + result_days;
	}

	public static int dataDiffaux(java.sql.Date dataLow, java.sql.Date dataHigh) {

		GregorianCalendar startTime = new GregorianCalendar();
		GregorianCalendar endTime = new GregorianCalendar();

		GregorianCalendar curTime = new GregorianCalendar();
		GregorianCalendar baseTime = new GregorianCalendar();

		startTime.setTime(dataLow);
		endTime.setTime(dataHigh);

		int dif_multiplier = 1;

		// Verifica a ordem de inicio das datas
		if (dataLow.compareTo(dataHigh) < 0) {
			baseTime.setTime(dataHigh);
			curTime.setTime(dataLow);
			dif_multiplier = 1;
		} else {
			baseTime.setTime(dataLow);
			curTime.setTime(dataHigh);
			dif_multiplier = -1;
		}

		int result_years = 0;
		int result_months = 0;
		int result_days = 0;

		// Para cada mes e ano, vai de mes em mes pegar o ultimo dia para import
		// acumulando
		// no total de dias. Ja leva em consideracao ano bissesto
		while (curTime.get(GregorianCalendar.YEAR) < baseTime.get(GregorianCalendar.YEAR)
				|| curTime.get(GregorianCalendar.MONTH) < baseTime.get(GregorianCalendar.MONTH)) {

			int max_day = curTime.getActualMaximum(GregorianCalendar.DAY_OF_MONTH);
			result_months += max_day;
			curTime.add(GregorianCalendar.MONTH, 1);

		}

		// Marca que x um saldo negativo ou positivo
		result_months = result_months * dif_multiplier;
		// Retirna a diferenca de dias do total dos meses
		result_days += (endTime.get(GregorianCalendar.DAY_OF_MONTH) - startTime.get(GregorianCalendar.DAY_OF_MONTH));

		return result_years + result_months + result_days;
	}

	public static String FormataData_dd_mm_yyyy(String data) {
		String datareturn = "";
		datareturn = data.substring(6, 8) + "/" + data.substring(4, 6) + "/" + data.substring(0, 4);
		return (datareturn);
	}


	public static String RetiraMask(String cnpjcpf) {
		int tamanho = 0;
		tamanho = cnpjcpf.length();
		if (tamanho < 18) { // CPF
			if (cnpjcpf.equals("null")) {
				cnpjcpf = "000.000.000-00";
			}
		} else {
			if (cnpjcpf.equals("null")) {
				cnpjcpf = "00.000.000/0000-00";
			}
		}
		String cnpjcpfformatado = " ";
		if (tamanho < 18) // CPF
		{
			cnpjcpfformatado = cnpjcpf.substring(0, 3) + cnpjcpf.substring(4, 7) + cnpjcpf.substring(8, 11)
					+ cnpjcpf.substring(12, 14);
		} else { // CNPJ
			cnpjcpfformatado = cnpjcpf.substring(0, 2) + cnpjcpf.substring(3, 6) + cnpjcpf.substring(7, 10)
					+ cnpjcpf.substring(11, 15) + cnpjcpf.substring(16, 18);
		}
		return (cnpjcpfformatado);
	}




	public static String getAno() {

		String registro;
		String ano = null, dia, mes, hora, min, seg, t = null;
		GregorianCalendar calendario = new GregorianCalendar();
		Date dataAtual = new Date();

		calendario.setTime(dataAtual);
		ano = String.valueOf(calendario.get(Calendar.YEAR));
		mes = addZero(String.valueOf(calendario.get(Calendar.MONTH) + 01));
		dia = addZero(String.valueOf(calendario.get(Calendar.DATE)));
		hora = addZero(String.valueOf(calendario.get(Calendar.HOUR_OF_DAY)));
		min = addZero(String.valueOf(calendario.get(Calendar.MINUTE)));
		seg = addZero(String.valueOf(calendario.get(Calendar.SECOND)));

		registro = ano;

		return (registro);
	}

	public static String getMes() {

		String registro;
		String ano = null, dia, mes, hora, min, seg, t = null;
		GregorianCalendar calendario = new GregorianCalendar();
		Date dataAtual = new Date();

		calendario.setTime(dataAtual);
		ano = String.valueOf(calendario.get(Calendar.YEAR));
		mes = addZero(String.valueOf(calendario.get(Calendar.MONTH) + 01));
		dia = addZero(String.valueOf(calendario.get(Calendar.DATE)));
		hora = addZero(String.valueOf(calendario.get(Calendar.HOUR_OF_DAY)));
		min = addZero(String.valueOf(calendario.get(Calendar.MINUTE)));
		seg = addZero(String.valueOf(calendario.get(Calendar.SECOND)));

		registro = mes;
		return (registro);
	}

	public static String getDia() {
		String registro;
		String ano = null, dia, mes, hora, min, seg, t = null;
		GregorianCalendar calendario = new GregorianCalendar();
		Date dataAtual = new Date();

		calendario.setTime(dataAtual);
		ano = String.valueOf(calendario.get(Calendar.YEAR));
		mes = addZero(String.valueOf(calendario.get(Calendar.MONTH) + 01));
		dia = addZero(String.valueOf(calendario.get(Calendar.DATE)));
		hora = addZero(String.valueOf(calendario.get(Calendar.HOUR_OF_DAY)));
		min = addZero(String.valueOf(calendario.get(Calendar.MINUTE)));
		seg = addZero(String.valueOf(calendario.get(Calendar.SECOND)));

		registro = dia;
		return (registro);
	}

	public static java.util.Date convertSqlDataToUtilDate(java.sql.Date dataUtil) throws Exception {

		long time = 0;
		try {
			time = dataUtil.getTime();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return new Date(time);
		/*
		 * DateFormat formatter = new SimpleDateFormat("dd/MM/yyyy"); String formato =
		 * formatter.format(dataUtil);
		 * 
		 * if (data == null || data.equals("")) { return null; } java.sql.Date date =
		 * null; try { DateFormat formatter = new SimpleDateFormat("dd/MM/yyyy"); date =
		 * new java.sql.Date(((java.util.Date) formatter.parse(data)).getTime()); }
		 * catch (ParseException e) { throw e; }
		 */
		// return date;

	}


	public static String saudacao() {
		String saudacao = "";
		if (Utilitario.getHoraMinSeg() <= 120000) {
			saudacao = "Bom dia,";
		} else {
			if (Utilitario.getHoraMinSeg() >= 180000) {
				saudacao = "Boa noite,";
			} else {
				saudacao = "Boa tarde,";
			}
		}
		return (saudacao);
	}

	public static String RetiraMaskaraAll(String texto) {
		String result = "";
		result = texto.replaceAll("[\\D]", "");
		texto = result;
		return texto;
	}

	public static double ValorSemRouded(double num) {
		int decimalPlace = 2;
		BigDecimal bd = new BigDecimal(num);
		bd = bd.setScale(decimalPlace, BigDecimal.ROUND_HALF_UP);
		num = bd.doubleValue();
		return num;
	}

	public static double truncate(double x) {
		if (x > 0) {
			return Math.floor(x * 100) / 100;
		} else {
			return Math.ceil(x * 100) / 100;
		}
	}

	public static Date addDayToDate(Date date, int day) {
		Calendar calendar = new GregorianCalendar();
		calendar.setTime(date);
		calendar.add(GregorianCalendar.DATE, day);
		return calendar.getTime();
	}

	

	public static String valorRandomicocomplemento() {
		int valor = (int) ((Math.random() * 10) * 1000);
		String retorno = "&r=" + valor;
		return (retorno);
	}

	public static boolean valida_CpfCnpj(String s_aux) {
		// ------- Rotina para CPF
		if (s_aux.length() == 11) {
			int d1, d2;
			int digito1, digito2, resto;
			int digitoCPF;
			String nDigResult;
			d1 = d2 = 0;
			digito1 = digito2 = resto = 0;
			for (int n_Count = 1; n_Count < s_aux.length() - 1; n_Count++) {
				digitoCPF = Integer.valueOf(s_aux.substring(n_Count - 1, n_Count)).intValue();
				// --------- Multiplique a ultima casa por 2 a seguinte por 3 a seguinte por 4 e
				// assim por diante.
				d1 = d1 + (11 - n_Count) * digitoCPF;
				// --------- Para o segundo digito repita o procedimento incluindo o primeiro
				// digito calculado no passo anterior.
				d2 = d2 + (12 - n_Count) * digitoCPF;
			}
			;
			// --------- Primeiro resto da divisão por 11.
			resto = (d1 % 11);
			// --------- Se o resultado for 0 ou 1 o digito é 0 caso contrário o digito é 11
			// menos o resultado anterior.
			if (resto < 2) {
				digito1 = 0;
			} else {
				digito1 = 11 - resto;
			}
			d2 += 2 * digito1;
			// --------- Segundo resto da divisão por 11.
			resto = (d2 % 11);
			// --------- Se o resultado for 0 ou 1 o digito é 0 caso contrário o digito é 11
			// menos o resultado anterior.
			if (resto < 2) {
				digito2 = 0;
			} else {
				digito2 = 11 - resto;
			}
			// --------- Digito verificador do CPF que está sendo validado.
			String nDigVerific = s_aux.substring(s_aux.length() - 2, s_aux.length());
			// --------- Concatenando o primeiro resto com o segundo.
			nDigResult = String.valueOf(digito1) + String.valueOf(digito2);
			// --------- Comparar o digito verificador do cpf com o primeiro resto + o
			// segundo resto.
			if (nDigVerific.equals(nDigResult)) {
				return false;
			} else {
				return true;
			}

			// return nDigVerific.equals(nDigResult);
		} // -------- Rotina para CNPJ
		else if (s_aux.length() == 14) {
			int soma = 0, aux, dig;
			String cnpj_calc = s_aux.substring(0, 12);
			char[] chr_cnpj = s_aux.toCharArray();
			// --------- Primeira parte
			for (int i = 0; i < 4; i++) {
				if (chr_cnpj[i] - 48 >= 0 && chr_cnpj[i] - 48 <= 9) {
					soma += (chr_cnpj[i] - 48) * (6 - (i + 1));
				}
			}
			for (int i = 0; i < 8; i++) {
				if (chr_cnpj[i + 4] - 48 >= 0 && chr_cnpj[i + 4] - 48 <= 9) {
					soma += (chr_cnpj[i + 4] - 48) * (10 - (i + 1));
				}
			}
			dig = 11 - (soma % 11);
			cnpj_calc += (dig == 10 || dig == 11) ? "0" : Integer.toString(dig);
			// --------- Segunda parte
			soma = 0;
			for (int i = 0; i < 5; i++) {
				if (chr_cnpj[i] - 48 >= 0 && chr_cnpj[i] - 48 <= 9) {
					soma += (chr_cnpj[i] - 48) * (7 - (i + 1));
				}
			}
			for (int i = 0; i < 8; i++) {
				if (chr_cnpj[i + 5] - 48 >= 0 && chr_cnpj[i + 5] - 48 <= 9) {
					soma += (chr_cnpj[i + 5] - 48) * (10 - (i + 1));
				}
			}
			dig = 11 - (soma % 11);
			cnpj_calc += (dig == 10 || dig == 11) ? "0" : Integer.toString(dig);
			// return s_aux.equals(cnpj_calc);
			if (s_aux.equals(cnpj_calc)) {
				return false;
			} else {
				return true;
			}
		} else {
			return true;
		}
	}

	public static Date SubtrairDiasData(Date data, int dias) {
		Calendar calendar = new GregorianCalendar();
		Date date = new Date();
		calendar.setTime(date);
		calendar.add(Calendar.DAY_OF_MONTH, -dias);
		return calendar.getTime();
	}

	private static int lerIdade(String data) throws ParseException {

		DateFormat df = new SimpleDateFormat("dd/MM/yyyy");
		df.setLenient(false); // somente cria a data se a formação da mesma for correta

		Date d = null;
		d = df.parse(data);

		Calendar dataAtual = Calendar.getInstance();
		dataAtual.setTime(new Date());

		Calendar dataNascimento = Calendar.getInstance();
		dataNascimento.setTime(d);

		Integer idade = dataAtual.get(Calendar.YEAR) - dataNascimento.get(Calendar.YEAR);

		// Não fez aniversário?
		if (dataAtual.get(Calendar.MONTH) < dataNascimento.get(Calendar.MONTH)) {
			idade = idade - 1;
		} else if ((dataAtual.get(Calendar.MONTH) == dataNascimento.get(Calendar.MONTH))
				&& (dataAtual.get(Calendar.DAY_OF_MONTH) <= dataNascimento.get(Calendar.DAY_OF_MONTH))) {
			idade = idade - 1;
		}
		return idade;
	}

	public static String convertByteArrayToBase64(byte[] bytes) throws IOException {

		if (bytes == null) {
			return null;
		}
		BASE64Encoder encoder = new BASE64Encoder();
		return encoder.encodeBuffer(bytes);
	}

	public static String caracteresEspeciais(String str) {
		/**
		 * Troca os caracteres especiais da string por "" *
		 */
		String[] caracteresEspeciais = { "\\.", ",", "-", ":", "\\(", "\\)", "ª", "\\|", "\\\\", "°" };

		for (int i = 0; i < caracteresEspeciais.length; i++) {
			str = str.replaceAll(caracteresEspeciais[i], "");
		}

		/**
		 * Troca os espaços no início por "" *
		 */
		str = str.replaceAll("^\\s+", "");
		/**
		 * Troca os espaços no início por "" *
		 */
		str = str.replaceAll("\\s+$", "");
		/**
		 * Troca os espaços duplicados, tabulações e etc por " " *
		 */
		str = str.replaceAll("\\s+", " ");
		return str;
	}

	public static String Maiuscula(String texto) {

		String posicao = "";
		String mais = "";
		String tudo = "";
		String maiuscula2 = "";
		posicao = "" + texto.charAt(0);// pega a primeira letra que sera maiuscula
		String pos = posicao.toUpperCase(); // transforma em maiuscula

		int tamanho = texto.length();// ve o tamanho da frase
		for (int i = 1; i < texto.length(); i++) { // coloca o for de acordo com o tamanho
			mais = mais + texto.charAt(i); // acrescenta as letras

			if (texto.charAt(i) == ' ') { // se houver um espaço a próxima vai ser transformada em maisucula.
				String maiuscula = "" + texto.charAt(i + 1);// pega a próxima apos o espaço
				maiuscula2 = maiuscula.toUpperCase(); // transforma em maiuscula.
				mais = mais + maiuscula2;// acrescenta a maiuscula a palavra completa, que se chama mais
				i = i + 1; // soma um, pois uma letra minuscula foi substituida e ja foi acrescentada
			}
		}
		tudo = pos + mais;
		// System.out.println("tudo:"+tudo);
		return tudo;
	}

	public static String removeAccents(String str) {
		str = Normalizer.normalize(str, Normalizer.Form.NFD);
		str = str.replaceAll("[^\\p{ASCII}]", "");
		return str;
	}

	public static String elimina_aspas(String texto) {
		texto = texto.replaceAll("\"", "");
		return texto;
	}

	public static String elimina_ponto(String texto) {
		texto = texto.replaceAll(".", "");
		return texto;
	}

	public static double Round(double Rval, int Rpl) {
		double p = (double) Math.pow(10, Rpl);
		Rval = Rval * p;
		double tmp = Math.round(Rval);
		return (double) tmp / p;
	}

	public static String convertStreamToString(InputStream is) throws IOException {

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

	public static String geraHash(File f) throws NoSuchAlgorithmException, FileNotFoundException {
		MessageDigest digest = MessageDigest.getInstance("MD5");
		FileInputStream is = new FileInputStream(f);
		byte[] buffer = new byte[8192];
		int read = 0;
		String output = null;
		try {
			while ((read = is.read(buffer)) > 0) {
				digest.update(buffer, 0, read);
			}
			byte[] md5sum = digest.digest();
			BigInteger bigInt = new BigInteger(1, md5sum);
			output = bigInt.toString(32);
			// System.out.println("MD5: " + output);
		} catch (IOException e) {
			throw new RuntimeException("Não foi possivel processar o arquivo.", e);
		} finally {
			try {
				is.close();
			} catch (IOException e) {
				throw new RuntimeException("Não foi possivel fechar o arquivo", e);
			}
		}
		return output;

	}

	
	public static String exceptionStacktraceToString(Exception e) {
		ByteArrayOutputStream baos = new ByteArrayOutputStream();
		PrintStream ps = new PrintStream(baos);
		e.printStackTrace(ps);
		ps.close();
		return baos.toString();
	}

	public static String getIP(HttpServletRequest request) {
		// recupera ip. Este ip pode talvez apontar para um proxy
		String ipHost = request.getRemoteHost();

		// recupera ip verdade. se for null é porque não usa proxy.
		String remoteIP = request.getHeader("X-FORWARDED-FOR");

		String ip = null;

		if (remoteIP == null || remoteIP.equals("")) {
			// se o remoteIP for null, é pq não está usando proxy, daí pode atribuir o valor
			// do ipHost
			ip = ipHost;
		} else {
			// aqui ele está usando o proxy. o remoteIP então aponta para o IP local.
			ip = remoteIP;
		}

		// faz 'localhost' virar a string correspondente.
		if (ip != null && ip.trim().equals("localhost")) {
			ip = "127.0.0.1";
		}
		return ip;
	}

	public static String FormataData_YYYYhifenMMhifenDD2(String data) {
		// 25/01/2011
		// 0123456789A
		String datareturn = "";
		datareturn = data.substring(6, 10) + "-" + data.substring(3, 5) + "-" + data.substring(0, 2);
		return (datareturn);
	}

	public static Date strToDate2(String data, String formato) {

		try {
			DateFormat formatter = new SimpleDateFormat(formato);
			formatter.setLenient(false);
			return formatter.parse(data);
		} catch (ParseException e) {
			// e.printStackTrace();
			return null;
		}
	}

	public static String retornarDiaSemana(int ano, int mes, int dia) {

		Calendar calendario = new GregorianCalendar(ano, mes - 1, dia);
		int diaSemana = calendario.get(Calendar.DAY_OF_WEEK);

		return pesquisarDiaSemana(diaSemana);
	}

	// faz a pesquisa, dado um inteiro de 1 a 7
	public static String pesquisarDiaSemana(int _diaSemana) {
		String diaSemana = null;

		switch (_diaSemana) {

		case 1: {
			diaSemana = "DOMINGO";
			break;
		}
		case 2: {
			diaSemana = "SEGUNDA";
			break;
		}
		case 3: {
			diaSemana = "TERCA";
			break;
		}
		case 4: {
			diaSemana = "QUARTA";
			break;
		}
		case 5: {
			diaSemana = "QUINTA";
			break;
		}
		case 6: {
			diaSemana = "SEXTA";
			break;
		}
		case 7: {
			diaSemana = "SABADO";
			break;
		}

		}
		return diaSemana;

	}

	private static boolean isInteger(String str) {
		return str != null && str.matches("[0-9]*");
	}

	public static String valorRandomicoimg() {
		int valor = (int) ((Math.random() * 10) * 500);
		String retorno = "" + valor;
		return (retorno);
	}

    public static String valorRandomico() {
		int valor = (int) ((Math.random() * 10) * 500);
		String retorno = "?codigo=" + valor;
		return (retorno);
	}
	
	
	public static String removerDeDa(String input) {
        // Substituir "DE" e "DA" por uma string vazia (removê-los)
        String resultado = input.replaceAll("\\bDE\\b|\\bDA\\b", "");
        return resultado;
    }
	
	public static String pegarIniciais3(String input) {
        String[] palavras = input.split(" ");
        StringBuilder iniciais = new StringBuilder();
        
        for (int i = 0; i < Math.min(4, palavras.length); i++) {
            if (!palavras[i].isEmpty()) {  // Ignorar palavras vazias
                iniciais.append(palavras[i].charAt(0));
            }
        }
        
        return iniciais.toString();
    }
	
	public static String pegarPrimeiros8Caracteres(String input) {
        if (input.length() <= 8) {
            return input;
        } else {
            return input.substring(0, 8);
        }
    }
	
	public static String geraLoginUsuario(String nomeusuario, String cnpjempresa) {
		String texto = nomeusuario;
        String resultado = removerDeDa(texto);
        resultado = pegarIniciais3(resultado);
        if (resultado.length() == 1) {
        	resultado = resultado +"XX";
        }
        if (resultado.length() == 2) {
        	resultado = resultado +"X";
        }
        String cnpj8caracteres = Utilitario.pegarPrimeiros8Caracteres(Utilitario.RetiraMask(cnpjempresa));
        resultado = resultado + cnpj8caracteres;
        return resultado;
    }

}
