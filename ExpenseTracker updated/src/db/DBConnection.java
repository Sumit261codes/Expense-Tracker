package db;

import java.sql.Connection;
import java.sql.DriverManager;

/*
 * This class is responsible for creating
 * and returning a database connection.
 */
public class DBConnection {

    private static final String URL = "jdbc:mysql://localhost:3306/expense_tracker";
    private static final String USER = "root";
    private static final String PASSWORD = "your_password";

    /*
     * This method returns a live connection
     * to the MySQL database.
     */
    public static Connection getConnection() {
        Connection con = null;

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            con = DriverManager.getConnection(URL, USER, PASSWORD);
        } catch (Exception e) {
            e.printStackTrace();
        }

        return con;
    }
}
