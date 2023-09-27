package tarefa;

import java.sql.Timestamp;

public class Tarefa {
	private String id;
	private String titulo;
	private String descricao;
	private Timestamp datacriacao;
	private String status;

	public Tarefa() {
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getTitulo() {
		return titulo;
	}

	public void setTitulo(String titulo) {
		this.titulo = titulo;
	}

	public String getDescricao() {
		return descricao;
	}

	public void setDescricao(String descricao) {
		this.descricao = descricao;
	}

	public Timestamp getDatacriacao() {
		return datacriacao;
	}

	public void setDatacriacao(Timestamp datacriacao) {
		this.datacriacao = datacriacao;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

}
