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

/**
 *
 * @author Genario
 * @version
 */
public class TarefaIncluir extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		this.doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		int CODIGO = 0;
		String destino = "TarefaListar";

		try {
			
			Tarefa objeto = new Tarefa();
			objeto.setTitulo(request.getParameter("titulo"));
			objeto.setDescricao(request.getParameter("descricao"));
			objeto.setStatus(request.getParameter("IdStatus"));
			TarefaValidador Validador = new TarefaValidador(objeto, "I");
			if (!Validador.isValid()) {
				request.setAttribute("listaErro", Validador.toString());
				RequestDispatcher rd = request.getRequestDispatcher("./validacao.jsp");
				rd.forward(request, response);
				return;
			} else {
				synchronized (this) {
					CODIGO = TarefaDAO.getInstance().createTarefa(objeto);
					if (CODIGO <= 0) {
						request.setAttribute("erroCodigo", "Não foi possível executar a inclusão do registro.");
						destino = "./erro.jsp";
					}
				}  
			}
		} catch (SQLException ex) {
			ex.printStackTrace();
			throw new ServletException(ex);
		} catch (Exception ex) {
			ex.printStackTrace();
			throw new ServletException(ex);
		}
		response.sendRedirect(destino);
	}
}
