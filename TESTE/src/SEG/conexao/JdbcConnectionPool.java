package SEG.conexao;

import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.Properties;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.LinkedBlockingQueue;

public class JdbcConnectionPool {

    private static final String DEFAULT_PROPERTIES_FILE = "/database.properties";
    private String propertiesFile;
    private String dbUrl;
    private String dbUsername;
    private String dbPassword;
    private int maxConnections;
    private BlockingQueue<Connection> connectionPool;

    public JdbcConnectionPool() throws SQLException {
        this(DEFAULT_PROPERTIES_FILE);
    }

    public JdbcConnectionPool(String propertiesFile) throws SQLException {
        this.propertiesFile = propertiesFile;

        // Carrega o driver JDBC do PostgreSQL
        try {
            Class.forName("org.postgresql.Driver");
        } catch (ClassNotFoundException e) {
            throw new SQLException("PostgreSQL JDBC driver not found!", e);
        }

        // Carrega as propriedades do arquivo de configuração
        loadProperties();

        // Inicializa o pool de conexões
        initializeConnectionPool();
    }

    // Carrega as propriedades do arquivo de configuração
    private void loadProperties() {
        Properties props = new Properties();
        try (InputStream inputStream = getClass().getResourceAsStream(propertiesFile)) {
            props.load(inputStream);
        } catch (IOException e) {
            throw new RuntimeException("Unable to load properties file: " + propertiesFile, e);
        }

        // Extrai as informações de configuração do banco de dados
        dbUrl = props.getProperty("database.url");
        dbUsername = props.getProperty("database.user");
        dbPassword = props.getProperty("database.password");
        maxConnections = Integer.parseInt(props.getProperty("database.maxconection", "10"));
    }

    // Inicializa o pool de conexões
    private void initializeConnectionPool() throws SQLException {
        connectionPool = new LinkedBlockingQueue<>(maxConnections);

        // Cria e adiciona as conexões iniciais ao pool
        for (int i = 0; i < maxConnections; i++) {
            connectionPool.add(createConnection());
        }
    }

    // Cria uma nova conexão JDBC
    private Connection createConnection() throws SQLException {
        return DriverManager.getConnection(dbUrl, dbUsername, dbPassword);
    }

    // Obtém uma conexão do pool
    public Connection getConnection() throws InterruptedException {
        return connectionPool.take();
    }

    // Libera uma conexão e a retorna ao pool
    public void releaseConnection(Connection connection) throws SQLException {
        if (connection != null && !connection.isClosed() && connectionPool.size() < maxConnections) {
            connectionPool.add(connection);
        } else {
            connection.close();
        }
    }

    // Fecha todas as conexões do pool
    public void closeAllConnections() throws SQLException {
        for (Connection connection : connectionPool) {
            connection.close();
        }
        connectionPool.clear();
    }
}
