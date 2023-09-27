package tarefa.controlador;

import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import tarefa.Tarefa;
import tarefa.TarefaDAO;

public class TarefaAlterar extends HttpServlet {

	Connection con;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		this.doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String destino = "./tarefa/TarefaAlterar.jsp";
		Tarefa objeto = null;
		try {
			objeto = TarefaDAO.getInstance().getTarefaById(request.getParameter("id"));
			request.setAttribute("retorno", objeto);
		} catch (Exception ex) {
			request.setAttribute("erroCodigo", "Código do erro: " + ex.getMessage());
			destino = "./erro.jsp";
		} finally {
			try {
				if (con != null) {
					con.close();
				}
			} catch (SQLException ex) {
				ex.printStackTrace();
			}
		}
		RequestDispatcher rd = request.getRequestDispatcher(destino);
		rd.forward(request, response);
	}
}