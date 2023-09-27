package tarefa.controlador;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import tarefa.Tarefa;
import tarefa.TarefaDAO;
import tarefa.TarefaValidador;

public class TarefaExcluir extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		this.doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		Tarefa objeto = null;
		String destino = "TarefaListar";
		try {

			objeto = TarefaDAO.getInstance().getTarefaById(request.getParameter("id").toString());
			// Validações
			TarefaValidador Validador = new TarefaValidador(objeto, "E");
			if (!Validador.isValid()) {
				request.setAttribute("listaErro", Validador.toString());
				RequestDispatcher rd = request.getRequestDispatcher("./validacao.jsp");
				rd.forward(request, response);
				return;
			} else {
				if (!TarefaDAO.getInstance().deleteTarefa(objeto)) {
					request.setAttribute("erroCodigo", "Não foi possível excluir o registro.");
				}
			}
		} catch (SQLException ex) {
			request.setAttribute("erroCodigo", "Código do erro: " + ex.getMessage());
			throw new ServletException(ex);
		} catch (NumberFormatException ex) {
			request.setAttribute("erroCodigo", "Mensagem do erro: " + ex.getMessage());
			throw new ServletException(ex);
		} catch (InterruptedException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		RequestDispatcher rd = request.getRequestDispatcher(destino);
		rd.forward(request, response);
	}
}
