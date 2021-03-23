import java.sql.*;
import java.time.LocalDateTime;
import java.util.List;

public class DBConnection {
    private final static String dbhost = "jdbc:mysql://localhost:3306/wig_stocks";
    private final static String username = "root";
    private final static String password = "";
    private static Connection conn;

    public static Connection createNewConnection() {
        try {
            conn = DriverManager.getConnection(dbhost, username, password);
            System.out.println("Connected successfully.");
            return conn;
        } catch (SQLException e) {
            System.out.println("Could not obtain connection! Something gone wrong.");
            e.printStackTrace();
            return conn;
        }
    }

    public static void addShares(Connection conn, List<Share> shares) throws SQLException {
        conn.setAutoCommit(false);
        String sqlInsert = "INSERT INTO stocks (symbol, name, price, changePercent, volume, added_at) VALUES(?, ?, ?, ?, ?, ?)";
        PreparedStatement stmtInsert = conn.prepareStatement(sqlInsert);
        for (Share share : shares) {
            LocalDateTime added_at = LocalDateTime.now();
            stmtInsert.setString(1, share.getSymbol());
            stmtInsert.setString(2, share.getName());
            stmtInsert.setDouble(3, share.getPrice());
            stmtInsert.setDouble(4, share.getChangePercent());
            stmtInsert.setDouble(5, share.getVolume());
            stmtInsert.setTimestamp(6, Timestamp.valueOf(added_at));
            stmtInsert.addBatch();
        }
        stmtInsert.executeBatch();
        conn.commit();
    }

    public static Boolean authUser(Connection conn, String username, String password) throws SQLException {
        String sqlSelect = "SELECT COUNT(*) as result FROM users WHERE username=? and password=?";
        PreparedStatement stmtSelect = conn.prepareStatement(sqlSelect);
        stmtSelect.setString(1, username);
        stmtSelect.setString(2, password);
        ResultSet results = stmtSelect.executeQuery();
        return results.next() && results.getInt("result") == 1;
    }

}