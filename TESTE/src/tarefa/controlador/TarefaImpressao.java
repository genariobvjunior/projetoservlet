package tarefa.controlador;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class TarefaImpressao extends HttpServlet {

	protected void processRequest(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		Map parametros = new HashMap();

		try {
			StringBuilder modelo = new StringBuilder();
			modelo.append(getServletContext().getRealPath(""));
			modelo.append("/relatorios/TAREFAS.jasper");

			String path = request.getSession().getServletContext().getRealPath("");
			String brasao = path + "/img/logo1.png";

			String tipo = request.getParameter("tipo");
			parametros.put("CABECALHO1", "SISTEMA TESTE");
			parametros.put("SISTEMA", "SISTEMA USANDO SERVLETS");
			parametros.put("CABECALHO2", "DEMONSTRAÇÃO");
			parametros.put("TITULO", "LISTA DE TAREFAS");
			parametros.put("imagem", brasao);

			request.setAttribute("tipo", tipo);
			request.setAttribute("modelo", modelo.toString());
			request.setAttribute("parametros", parametros);
			RequestDispatcher rd;

			rd = request.getRequestDispatcher("/GeraRelatorio");
			rd.forward(request, response);
		} catch (Exception ex) {
			ex.printStackTrace();
			throw new ServletException(ex);
		}
	}

	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		this.doPost(request, response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		processRequest(request, response);
	}
}