/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package utilitarios;

import java.util.Locale;
import java.util.TimeZone;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;

public class LocaleServlet extends HttpServlet {

    private static final long serialVersionUID = 8140032041480934642L;

    public void init(ServletConfig config) throws ServletException   {
        super.init(config);

        TimeZone.setDefault(TimeZone.getTimeZone("America/Recife"));
        Locale.setDefault(new Locale("pt", "BR"));

    }

}
