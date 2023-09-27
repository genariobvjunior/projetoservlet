package menuprincipal;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import utilitarios.Utilitario;

public class MenuPrincipal extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		this.doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String destino = "";
		destino = "./menuprincipal/MenuPrincipal.jsp" + Utilitario.valorRandomico();

		RequestDispatcher rd = request.getRequestDispatcher(destino);
		rd.forward(request, response);
	}
}
