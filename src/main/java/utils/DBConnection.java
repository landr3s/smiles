package utils;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBConnection {
    private static final String URL = "jdbc:postgresql://localhost:5432/smiles";
    private static final String USER = "postgres";
    private static final String PASSWORD = "123";

    static {
        try {
            // Cargar el driver JDBC para PostgreSQL
            Class.forName("org.postgresql.Driver");
        } catch (ClassNotFoundException e) {
            // Lanza una excepción en tiempo de ejecución si no se puede cargar el driver
            throw new RuntimeException("Error loading PostgreSQL driver", e);
        }
    }

    // Método estático para obtener una conexión a la base de datos
    public static Connection getConnection() throws SQLException {
        return DriverManager.getConnection(URL, USER, PASSWORD);
    }
}
