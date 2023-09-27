/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package utilitarios;

import java.net.URL;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.io.IOException;

public class AcessarURL {

    public static void main(String[] args) {

 //       AcessarURL.acessaUrl("http://marktel.com.br/api.php?u=mbpb&p=21076068&o=enviar&f=8387576788&m=MPPB: Sua solicitacao de diarias acaba de ser protocolada sob doc 137082 , maiores detalhes acessar o ZIMBRA genario.junior@mp.pb.gov.br&d=2013-04-08&h=08:56");
          AcessarURL.acessaUrl("http://sms.painelmarktel.com.br/index.php?app=api&u=MBPB&p=e29fa5f3cf9e792e16dc62a6802e8c4c&o=enviar&app=api&f=8387576788&m=MPPB: Sua solicitacao de diarias acaba de ser protocolada sob doc 137082 , maiores detalhes acessar o ZIMBRA genario.junior@mp.pb.gov.br&d=2013-04-08&h=08:56");
    }

    public static void acessaUrl(String Url) {

        if (Url.equals("")) {
            System.out.println("Não foi especificado nenhuma URL.");
            // Fechando aplicação.
            System.exit(1);
        }

        // Pegando a url passada como parametro.
        String urlName = Url;

        try {

            java.net.URL wsURL = new URL(null, urlName,new sun.net.www.protocol.http.Handler());

      //      URL url = new URL(urlName);
            HttpURLConnection urlConnection = (HttpURLConnection) wsURL.openConnection();
            BufferedReader in = new BufferedReader(new InputStreamReader(urlConnection.getInputStream()));

            String line = null;

            while ((line = in.readLine()) != null) {
                System.out.println(line);
            }

            in.close();
            urlConnection.disconnect();

        } catch (MalformedURLException e) {
            System.out.println("Erro ao criar URL. Formato inválido.");
            System.exit(1);
        } catch (IOException e2) {
            System.out.println(e2);
            System.exit(1);
        }

    }
}
