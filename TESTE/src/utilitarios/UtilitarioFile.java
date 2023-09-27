/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package utilitarios;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.IOException;
import java.net.NetworkInterface;
import java.sql.SQLException;
import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Enumeration;
import java.util.StringTokenizer;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.http.HttpServletRequest;

/**
 *
 * @author genario.junior
 */
public class UtilitarioFile {

    public static Collection<String> lerArquivoOBN600Converter(String arquivo) throws SQLException {

        String linha = new String();

        String NameFile = arquivo;
        File arq = new File(NameFile);

        Collection<String> objetoOcorrenciasColecao = new ArrayList<String>();

        if (arq.exists()) {
            try {
                FileReader leitorDeArquivo = new FileReader(NameFile);

                BufferedReader bufferDeArquivo = new BufferedReader(leitorDeArquivo);

                while (true) {
                    linha = bufferDeArquivo.readLine();
                    if (linha == null) {
                        break;
                    }
                    //      System.out.println(linha);
                    objetoOcorrenciasColecao.add(linha);
                }
            } catch (Exception e) {
            }
        }
        return objetoOcorrenciasColecao;
    }

    public static String retornaPrimeiroNome(String nome) {
        StringTokenizer st;
        st = new StringTokenizer(nome, " ");
        return st.nextToken();
    }

    public static String valorRandomico() {
        int valor = (int) ((Math.random() * 10) * 500);
        String retorno = "?cod=" + valor;
        return (retorno);
    }

    public static String getIP(HttpServletRequest request) {
        //recupera ip. Este ip pode talvez apontar para um proxy
        String ipHost = request.getRemoteHost();

        //recupera ip verdade. se for null é porque não usa proxy.
        String remoteIP = request.getHeader("X-FORWARDED-FOR");

        String ip = null;

        if (remoteIP == null || remoteIP.equals("")) {
            //se o remoteIP for null, é pq não está usando proxy, daí pode atribuir o valor do ipHost
            ip = ipHost;
        } else {
            //aqui ele está usando o proxy. o remoteIP então aponta para o IP local.
            ip = remoteIP;
        }

        // faz 'localhost' virar a string correspondente.
        if (ip != null && ip.trim().equals("localhost")) {
            ip = "127.0.0.1";
        }
        return ip;
    }

    public static String getMac() {
        String macAddr = null;
        try {
            Enumeration<NetworkInterface> eth = NetworkInterface
                    .getNetworkInterfaces();
            while (eth.hasMoreElements()) {
                NetworkInterface eth0 = eth.nextElement();
                byte[] mac = eth0.getHardwareAddress();
                StringBuilder sb = new StringBuilder();
                if (mac != null) {
                    for (int i = 0; i < mac.length; i++) {
                        String aux = String.format("%02X%s", mac[i],
                                (i < mac.length - 1) ? "-" : "");
                        sb.append(aux);
                    }
                    if (sb.toString().length() <= 18) {
                        macAddr = sb.toString();
                    }
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return macAddr;
    }

    public static boolean isValido(String cpfSemFormatacao) {

        if (cpfSemFormatacao.length() != 11 || cpfSemFormatacao.equals("00000000000")
                || cpfSemFormatacao.equals("99999999999")) {
            return false;
        }

        String digitos = cpfSemFormatacao.substring(0, 9);;
        String dvs = cpfSemFormatacao.substring(9, 11);

        String dv1 = gerarDV(digitos);
        String dv2 = gerarDV(digitos + dv1);

        return dvs.equals(dv1 + dv2);
    }

    private static String gerarDV(String digitos) {
        int peso = digitos.length() + 1;
        int dv = 0;
        for (int i = 0; i < digitos.length(); i++) {
            dv += Integer.parseInt(digitos.substring(i, i + 1)) * peso;
            peso--;
        }

        dv = 11 - (dv % 11);

        if (dv > 9) {
            return "0";
        }

        return String.valueOf(dv);
    }

    public static String RetiraMaskaraAll(String texto) {
        String result = "";
        result = texto.replaceAll("[\\D]", "");
        texto = result;
        return texto;
    }

    public static String intToString7Posicoes(int valor) {
        String result = "";
        if (valor == 0) {
            result = "0000000";
        } else {
            result = "" + valor;
        }
        switch (result.length()) {
            case 1:
                result = "000000" + result;
                break;
            case 2:
                result = "00000" + result;
                break;
            case 3:
                result = "0000" + result;
                break;
            case 4:
                result = "000" + result;
                break;
            case 5:
                result = "00" + result;
                break;
            case 6:
                result = "0" + result;
                break;
            default:
                break;
        }
        return result;
    }

    public static String intToString13Posicoes(int valor) {
        String result = "";
        if (valor == 0) {
            result = "0000000000000";
        } else {
            result = "" + valor;
        }
        switch (result.length()) {
            case 1:
                result = "000000000000" + result;
                break;
            case 2:
                result = "00000000000" + result;
                break;
            case 3:
                result = "0000000000" + result;
                break;
            case 4:
                result = "000000000" + result;
                break;
            case 5:
                result = "00000000" + result;
                break;
            case 6:
                result = "0000000" + result;
                break;
            case 7:
                result = "000000" + result;
                break;
            case 8:
                result = "00000" + result;
                break;
            case 9:
                result = "0000" + result;
                break;
            case 10:
                result = "000" + result;
                break;
            case 11:
                result = "00" + result;
                break;
            case 12:
                result = "0" + result;
                break;
            default:
                break;
        }
        return result;
    }

    public static String intToString6Posicoes(int valor) {
        String result = "";
        if (valor == 0) {
            result = "000000";
        } else {
            result = "" + valor;
        }
        switch (result.length()) {
            case 1:
                result = "00000" + result;
                break;
            case 2:
                result = "0000" + result;
                break;
            case 3:
                result = "000" + result;
                break;
            case 4:
                result = "00" + result;
                break;
            case 5:
                result = "0" + result;
                break;
            default:
                break;
        }
        return result;
    }

    public static String intToString4Posicoes(int valor) {
        String result = "";
        if (valor == 0) {
            result = "0000";
        } else {
            result = "" + valor;
        }
        switch (result.length()) {
            case 1:
                result = "000" + result;
                break;
            case 2:
                result = "00" + result;
                break;
            case 3:
                result = "0" + result;
                break;
            default:
                break;
        }
        return result;
    }

    public static String intToString5Posicoes(int valor) {
        String result = "";
        if (valor == 0) {
            result = "00000";
        } else {
            result = "" + valor;
        }
        switch (result.length()) {
            case 1:
                result = "0000" + result;
                break;
            case 2:
                result = "000" + result;
                break;
            case 3:
                result = "00" + result;
                break;
            default:
                break;
        }
        return result;
    }

    public static void LerArquivoFile(File arquivo) {
        try {
            FileReader leitura = new FileReader(arquivo);
            BufferedReader br = new BufferedReader(leitura);
            String linha = "";
            while ((linha = br.readLine()) != null) {
                System.out.println(linha);
            }
            leitura.close();
            br.close();
        } catch (Exception e) {
            System.out.println("Erro na leitura");
        }
    }

    public static String LerHeaderArquivoFile(File arquivo) throws IOException {
        FileReader leitura = null;
        BufferedReader br = null;
        String linha = "";
        try {
            leitura = new FileReader(arquivo);
            br = new BufferedReader(leitura);
            linha = br.readLine();
        } catch (Exception ex) {
            Logger.getLogger(UtilitarioFile.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            leitura.close();
            br.close();
        }
        return linha;
    }

    public static String Stringcom30Posicoes(String texto) {
        String result = texto;
        switch (result.length()) {
            case 0:
                result = "                              ";
                break;
            case 1:
                result = result + "                             ";
                break;
            case 2:
                result = result + "                            ";
                break;
            case 3:
                result = result + "                           ";
                break;
            case 4:
                result = result + "                          ";
                break;
            case 5:
                result = result + "                         ";
                break;
            case 6:
                result = result + "                        ";
                break;
            case 7:
                result = result + "                       ";
                break;
            case 8:
                result = result + "                      ";
                break;
            case 9:
                result = result + "                     ";
                break;
            case 10:
                result = result + "                    ";
                break;
            case 11:
                result = result + "                   ";
                break;
            case 12:
                result = result + "                  ";
                break;
            case 13:
                result = result + "                 ";
                break;
            case 14:
                result = result + "                ";
                break;
            case 15:
                result = result + "               ";
                break;
            case 16:
                result = result + "              ";
                break;
            case 17:
                result = result + "             ";
                break;
            case 18:
                result = result + "            ";
                break;
            case 19:
                result = result + "           ";
                break;
            case 20:
                result = result + "          ";
                break;
            case 21:
                result = result + "         ";
                break;
            case 22:
                result = result + "        ";
                break;
            case 23:
                result = result + "       ";
                break;
            case 24:
                result = result + "      ";
                break;
            case 25:
                result = result + "     ";
                break;
            case 26:
                result = result + "    ";
                break;
            case 27:
                result = result + "   ";
                break;
            case 28:
                result = result + "  ";
                break;
            case 29:
                result = result + " ";
                break;
            default:
                break;
        }
        if (result.length() > 30) {
            result = result.substring(0, 30);
        }
        return result;
    }

    public static String Stringcom15Posicoes(String texto) {
        String result = texto;
        switch (result.length()) {
            case 0:
                result = "               ";
                break;
            case 1:
                result = result + "              ";
                break;
            case 2:
                result = result + "             ";
                break;
            case 3:
                result = result + "            ";
                break;
            case 4:
                result = result + "           ";
                break;
            case 5:
                result = result + "          ";
                break;
            case 6:
                result = result + "         ";
                break;
            case 7:
                result = result + "        ";
                break;
            case 8:
                result = result + "       ";
                break;
            case 9:
                result = result + "      ";
                break;
            case 10:
                result = result + "     ";
                break;
            case 11:
                result = result + "    ";
                break;
            case 12:
                result = result + "   ";
                break;
            case 13:
                result = result + "  ";
                break;
            case 14:
                result = result + " ";
                break;
            default:
                break;
        }
        if (result.length() > 15) {
            result = result.substring(0, 15);
        }
        return result;
    }

    public static String Stringcom20Posicoes(String texto) {
        String result = texto;
        switch (result.length()) {
            case 0:
                result = "                    ";
                break;
            case 1:
                result = result + "                   ";
                break;
            case 2:
                result = result + "                  ";
                break;
            case 3:
                result = result + "                 ";
                break;
            case 4:
                result = result + "                ";
                break;
            case 5:
                result = result + "               ";
                break;
            case 6:
                result = result + "              ";
                break;
            case 7:
                result = result + "             ";
                break;
            case 8:
                result = result + "            ";
                break;
            case 9:
                result = result + "           ";
                break;
            case 10:
                result = result + "          ";
                break;
            case 11:
                result = result + "         ";
                break;
            case 12:
                result = result + "        ";
                break;
            case 13:
                result = result + "       ";
                break;
            case 14:
                result = result + "      ";
                break;
            case 15:
                result = result + "     ";
                break;
            case 16:
                result = result + "    ";
                break;
            case 17:
                result = result + "   ";
                break;
            case 18:
                result = result + "  ";
                break;
            case 19:
                result = result + " ";
                break;
            default:
                break;
        }
        if (result.length() > 20) {
            result = result.substring(0, 20);
        }
        return result;
    }

    public static double convertTxtToDouble(String valortexto) {
        if (valortexto.equals("") || valortexto == null) {
            valortexto = "0";
        }
        double retorno = 0.00;
        if (valortexto.equals("")) {
            retorno = 0.0;
        } else {
            String valor = "";
            if (valortexto.length() == 1) {
                valor = "0" + valortexto;
            } else {
                valor = valortexto;
            }
            String result = "";
            result = valor.replaceAll("[\\D]", "");
            String cents = result.substring(result.length() - 2, result.length());
            result = result.substring(0, result.length() - 2);
            result += "." + cents;
            retorno = Double.parseDouble(result);
        }
        return retorno;
    }

    public static String converteDoubleToTxt18posicoes(double number) {
        DecimalFormat decimalFormat = new DecimalFormat("#,##0.00");
        String b = decimalFormat.format(number);
        b = b.replace(".", "");
        b = b.replace(".", "");
        b = b.replace(".", "");
        b = b.replace(".", "");
        b = b.replace(",", "");
        b = b.replace(",", "");
        b = b.replace(",", "");
        b = b.replace(",", "");
        b = b.replace(",", "");
        b = b.replace(",", "");
        b = b.replace(",", "");

        if (b.trim().length() == 0) {
            b = "000000000000000000" + b;
        }
        if (b.trim().length() == 1) {
            b = "00000000000000000" + b;
        }
        if (b.trim().length() == 2) {
            b = "0000000000000000" + b;
        }
        if (b.trim().length() == 3) {
            b = "000000000000000" + b;
        }
        if (b.trim().length() == 4) {
            b = "00000000000000" + b;
        }
        if (b.trim().length() == 5) {
            b = "0000000000000" + b;
        }
        if (b.trim().length() == 6) {
            b = "000000000000" + b;
        }
        if (b.trim().length() == 7) {
            b = "00000000000" + b;
        }
        if (b.trim().length() == 8) {
            b = "0000000000" + b;
        }
        if (b.trim().length() == 9) {
            b = "000000000" + b;
        }
        if (b.trim().length() == 10) {
            b = "00000000" + b;
        }
        if (b.trim().length() == 11) {
            b = "0000000" + b;
        }
        if (b.trim().length() == 12) {
            b = "000000" + b;
        }
        if (b.trim().length() == 13) {
            b = "00000" + b;
        }
        if (b.trim().length() == 14) {
            b = "0000" + b;
        }
        if (b.trim().length() == 15) {
            b = "000" + b;
        }
        if (b.trim().length() == 16) {
            b = "00" + b;
        }
        if (b.trim().length() == 17) {
            b = "0" + b;
        }
        if (b.length() > 18) {
            b = b.substring(0, 18);
        }
        return b;
    }

    public static String converteDoubleToTxt17posicoes(double number) {
        DecimalFormat decimalFormat = new DecimalFormat("#,##0.00");
        String b = decimalFormat.format(number);
        b = b.replace(".", "");
        b = b.replace(".", "");
        b = b.replace(".", "");
        b = b.replace(".", "");
        b = b.replace(",", "");
        b = b.replace(",", "");
        b = b.replace(",", "");
        b = b.replace(",", "");
        b = b.replace(",", "");
        b = b.replace(",", "");
        b = b.replace(",", "");

        if (b.trim().length() == 0) {
            b = "00000000000000000" + b;
        }
        if (b.trim().length() == 1) {
            b = "0000000000000000" + b;
        }
        if (b.trim().length() == 2) {
            b = "000000000000000" + b;
        }
        if (b.trim().length() == 3) {
            b = "00000000000000" + b;
        }
        if (b.trim().length() == 4) {
            b = "0000000000000" + b;
        }
        if (b.trim().length() == 5) {
            b = "000000000000" + b;
        }
        if (b.trim().length() == 6) {
            b = "00000000000" + b;
        }
        if (b.trim().length() == 7) {
            b = "0000000000" + b;
        }
        if (b.trim().length() == 8) {
            b = "000000000" + b;
        }
        if (b.trim().length() == 9) {
            b = "00000000" + b;
        }
        if (b.trim().length() == 10) {
            b = "0000000" + b;
        }
        if (b.trim().length() == 11) {
            b = "000000" + b;
        }
        if (b.trim().length() == 12) {
            b = "00000" + b;
        }
        if (b.trim().length() == 13) {
            b = "0000" + b;
        }
        if (b.trim().length() == 14) {
            b = "000" + b;
        }
        if (b.trim().length() == 15) {
            b = "00" + b;
        }
        if (b.trim().length() == 16) {
            b = "0" + b;
        }
        if (b.length() > 17) {
            b = b.substring(0, 17);
        }
        return b;
    }

    
}
