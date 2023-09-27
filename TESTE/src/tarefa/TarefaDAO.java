package tarefa;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Collection;

import SEG.conexao.JdbcConnectionPool;

public class TarefaDAO {
	private static TarefaDAO instance;
	private JdbcConnectionPool connectionPool;

	private TarefaDAO() throws SQLException {
		connectionPool = new JdbcConnectionPool();
	}

	public static synchronized TarefaDAO getInstance() throws SQLException {
		if (instance == null) {
			instance = new TarefaDAO();
		}
		return instance;
	}

	public int createTarefa(Tarefa objeto) throws SQLException, InterruptedException {
		Connection connection = null;
		PreparedStatement statement = null;
		ResultSet generatedKeys = null;
		int generatedId = -1;

		StringBuilder query = new StringBuilder();

		query.append("INSERT INTO public.tarefa(titulo, descricao, data_criacao, status) VALUES (?, ?, now(), ?)  returning id;");

		try {
			connection = connectionPool.getConnection();
			statement = connection.prepareStatement(query.toString(), PreparedStatement.RETURN_GENERATED_KEYS);
			statement.setString(1, objeto.getTitulo());
			statement.setString(2, objeto.getDescricao());
			statement.setString(3, "A");
			
			statement.executeUpdate();

			generatedKeys = statement.getGeneratedKeys();
			if (generatedKeys.next()) {
				generatedId = generatedKeys.getInt(1);
			}
		} finally {
			if (generatedKeys != null) {
				generatedKeys.close();
			}
			if (statement != null) {
				statement.close();
			}
			if (connection != null) {
				connectionPool.releaseConnection(connection);
			}
		}

		return generatedId;
	}

	public Collection<Tarefa> listAllTarefas() throws SQLException, InterruptedException {
		Connection connection = null;
		PreparedStatement statement = null;
		ResultSet resultSet = null;

		StringBuilder query = new StringBuilder();

		query.append(" SELECT   ");
		query.append(" id,   ");
		query.append(" titulo,   ");
		query.append(" descricao,  ");
		query.append(" case  ");
		query.append(" when status = 'A' then 'EM CONSTRUÇÃO'  ");
		query.append(" else 'CONCLUÍDO' end as status,  ");
		query.append(" data_criacao  ");
		query.append(" FROM public.tarefa  ");
		query.append(" order by titulo  ");
		
		Collection<Tarefa> objetoColecao = new ArrayList<Tarefa>();

		try {
			connection = connectionPool.getConnection();
			statement = connection.prepareStatement(query.toString());
			resultSet = statement.executeQuery();

			while (resultSet.next()) {
				Tarefa objeto = new Tarefa();
				objeto.setId(resultSet.getString("id"));
				objeto.setTitulo(resultSet.getString("titulo"));
				objeto.setDescricao(resultSet.getString("descricao"));
				objeto.setStatus(resultSet.getString("status"));
				objeto.setDatacriacao(resultSet.getTimestamp("data_criacao"));
				objetoColecao.add(objeto);
			}
		} finally {
			if (resultSet != null) {
				resultSet.close();
			}
			if (statement != null) {
				statement.close();
			}
			if (connection != null) {
				connectionPool.releaseConnection(connection);
			}
		}
		return objetoColecao;
	}

	public Tarefa getTarefaById(String Id) throws SQLException, InterruptedException {
		Connection connection = null;
		PreparedStatement statement = null;
		ResultSet resultSet = null;

		StringBuilder query = new StringBuilder();

		query.append(" SELECT   ");
		query.append(" id,   ");
		query.append(" titulo,   ");
		query.append(" descricao,  ");
		query.append(" status,  ");
		query.append(" data_criacao  ");
		query.append(" FROM public.tarefa  ");
		query.append(" where id = ?   ");

		try {
			connection = connectionPool.getConnection();
			statement = connection.prepareStatement(query.toString());
			statement.setInt(1, Integer.parseInt(Id));
			resultSet = statement.executeQuery();

			if (resultSet.next()) {
				Tarefa objeto = new Tarefa();
				objeto.setId(resultSet.getString("id"));
				objeto.setTitulo(resultSet.getString("titulo"));
				objeto.setDescricao(resultSet.getString("descricao"));
				objeto.setStatus(resultSet.getString("status"));
				objeto.setDatacriacao(resultSet.getTimestamp("data_criacao"));
				return objeto;
			} else {
				return null;
			}
		} finally {
			if (resultSet != null) {
				resultSet.close();
			}
			if (statement != null) {
				statement.close();
			}
			if (connection != null) {
				connectionPool.releaseConnection(connection);
			}
		}
	}
	

	public boolean updateTarefa(Tarefa objeto) throws SQLException, InterruptedException {
		Connection connection = null;
		PreparedStatement statement = null;

		StringBuilder query = new StringBuilder();
		query.append(" UPDATE public.tarefa ");
		query.append(" SET  ");
		query.append(" titulo=?,  ");
		query.append(" descricao=?,  ");
		query.append(" status=? ");
		query.append(" WHERE id=? ");

		boolean success = false; // Assume que a atualização não foi bem-sucedida

		try {
			connection = connectionPool.getConnection();
			statement = connection.prepareStatement(query.toString());
			statement.setString(1, objeto.getTitulo());
			statement.setString(2, objeto.getDescricao());
			statement.setString(3, objeto.getStatus());
			statement.setInt(4, Integer.parseInt(objeto.getId()));
			int rowsAffected = statement.executeUpdate();

			// Se uma ou mais linhas foram afetadas, a atualização foi bem-sucedida
			if (rowsAffected > 0) {
				success = true;
			}
		} finally {
			if (statement != null) {
				statement.close();
			}
			if (connection != null) {
				connectionPool.releaseConnection(connection);
			}
		}

		return success; // Retorna true se a atualização foi bem-sucedida, caso contrário, retorna false
	}

	public boolean deleteTarefa(Tarefa objeto) throws SQLException, InterruptedException {
		Connection connection = null;
		PreparedStatement statement = null;

		try {
			connection = connectionPool.getConnection();
			statement = connection.prepareStatement("delete from public.tarefa WHERE id=?");
			statement.setInt(1, Integer.parseInt(objeto.getId()));
			statement.executeUpdate();

			// Verifica se alguma linha foi afetada pela atualização
			int rowsAffected = statement.getUpdateCount();
			return rowsAffected > 0; // Retorna true se alguma linha foi afetada
		} finally {
			// Certifique-se de liberar a conexão e fechar o statement
			if (statement != null) {
				statement.close();
			}
			if (connection != null) {
				connectionPool.releaseConnection(connection);
			}
		}
	}
}