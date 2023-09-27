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

public class TarefaGravar extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		this.doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		int CODIGO = 0;
		String destino = "TarefaAlterar";

		try {

			Tarefa objeto = new Tarefa();
			objeto = TarefaDAO.getInstance().getTarefaById(request.getParameter("id"));
			objeto.setTitulo(request.getParameter("titulo"));
			objeto.setDescricao(request.getParameter("descricao"));
			objeto.setStatus(request.getParameter("idStatus"));
			// Validações
			TarefaValidador Validador = new TarefaValidador(objeto, "A");
			if (!Validador.isValid()) {
				request.setAttribute("listaErro", Validador.toString());
				RequestDispatcher rd = request.getRequestDispatcher("./validacao.jsp");
				rd.forward(request, response);
				return;
			} else {
				if (!TarefaDAO.getInstance().updateTarefa(objeto)) {
					request.setAttribute("erroCodigo", "Não foi possível executar a alteração do registro.");
					destino = "./erro.jsp";
				} else {
					request.setAttribute("ATUALIZADO", "ok");
				}
			}
		} catch (SQLException ex) {
			request.setAttribute("erroCodigo", "Código do erro: " + ex.getMessage());
			destino = "./erro.jsp";
		} catch (InterruptedException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		RequestDispatcher rd = request.getRequestDispatcher(destino);
		rd.forward(request, response);
	}
}