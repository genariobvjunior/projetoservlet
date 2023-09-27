package tarefa;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Iterator;

public class TarefaValidador {

	Tarefa objeto;
	private String operacao;
	private ArrayList<String> listaErro;

	public TarefaValidador() {
	}

	public TarefaValidador(Tarefa objeto, String operacao) throws SQLException, InterruptedException {
		this.listaErro = new ArrayList<String>();
		this.setObjeto(objeto);
		this.setOperacao(operacao);

		validaCamposObrigatorios();
	}

	public String toString() {
		StringBuilder sb = new StringBuilder();
		sb.append("");
		try {
			Iterator it = this.listaErro.iterator();
			while (it.hasNext()) {
				sb.append(it.next().toString());
				sb.append("<br>");
			}
		} catch (Exception e) {
		}
		return sb.toString();
	}

	public ArrayList getListaErro() {
		return listaErro;
	}

	public void setObjeto(Tarefa objeto) {
		this.objeto = objeto;
	}

	public void setOperacao(String operacao) {
		this.operacao = operacao;
	}

	/**
	 * isValid verifica se ocorreu algum erro.
	 */
	public boolean isValid() {
		if (this.toString().length() <= 0) {
			return true;
		} else {
			return false;
		}
	}

	public void validaCamposObrigatorios() throws SQLException, InterruptedException {
		if (this.operacao.equals("I")) {
			if (this.objeto.getTitulo().equals("")) {
				listaErro.add("Título deve ser preenchido - Obrigatório");
			}
			if (this.objeto.getDescricao().equals("")) {
				listaErro.add("Descrição deve ser preenchido - Obrigatório");
			}
		}

		if (this.operacao.equals("A")) {
			if (this.objeto.getTitulo().equals("")) {
				listaErro.add("Título deve ser preenchido - Obrigatório");
			}
			if (this.objeto.getDescricao().equals("")) {
				listaErro.add("Descrição deve ser preenchido - Obrigatório");
			}
			if (this.objeto.getStatus().equals("")) {
				listaErro.add("Status deve ser preenchido - Obrigatório");
			}
			if (!this.objeto.getStatus().equals("")) {
				if (!this.objeto.getStatus().equals("A") && !this.objeto.getStatus().equals("C") ) {
					listaErro.add("Status informado é inválido!");
				}	
			}
		}
		if (this.operacao.equals("E")) {
		}

	}
}