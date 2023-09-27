package tarefa.controlador;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import tarefa.Tarefa;
import tarefa.TarefaDAO;

public class TarefaListar extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		this.doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String destino = "./tarefa/TarefaListar.jsp";

		try {
			ArrayList<Tarefa> objetoArray = new ArrayList<Tarefa>();
			objetoArray = (ArrayList<Tarefa>) TarefaDAO.getInstance().listAllTarefas();
			if (!objetoArray.isEmpty()) {
				request.setAttribute("retornoArray", objetoArray);
			}
		} catch (SQLException | InterruptedException ex) {
			request.setAttribute("erroCodigo", "Mensagem do erro: " + ex.getMessage());
			throw new ServletException(ex);
		}
		RequestDispatcher rd = request.getRequestDispatcher(destino);
		rd.forward(request, response);
	}
}
