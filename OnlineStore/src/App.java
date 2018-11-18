import java.sql.*;

/**
 * https://www.youtube.com/watch?v=NoPzqahrzp8
 */
public class App {
    public static void main(String[] args) {
        System.out.println("MySQL JDBC Driver Registered!");
        Connection connection = null;
        Statement stmt = null;
        ResultSet rs = null;

        try {
            // time zone issue solution https://stackoverflow.com/questions/7605953/how-to-change-mysql-timezone-in-java-connection
            // Open a connection
            System.out.println("Connecting to database...");
            connection = DriverManager
                    .getConnection("jdbc:mysql://localhost:3306/OnlineStore?useLegacyDatetimeCode=false" +
                                    "&serverTimezone" +
                                    "=America/Los_Angeles"
                            ,"root", "redman1997");

            // Execute a query
            System.out.println("Creating a statement...");
            stmt = connection.createStatement();
            rs = stmt.executeQuery("select * from items");

            // Process the results
            while(rs.next()){
                System.out.println("Item ID = " + rs.getInt("itemid")
                        + ", Item name = " + rs.getString("itemname")
                        + ", Item price = " + rs.getString("itemprice")
                        + ", Qtyinstock = " + rs.getString("qtyinstock")
                        + ", Qtysold = " + rs.getString("qtysold")
                        + ", Num of returns = " + rs.getString("numofreturns")
                );
            }

        } catch (SQLException e) {
            System.out.println("Connection Failed! Check output console");
            e.printStackTrace();
            return;
        } finally {
            //finally block used to close resources
            try {
                if (stmt != null)
                    stmt.close();
            } catch (SQLException se2) {
            } // nothing we can do
            try {
                if (connection != null)
                    connection.close();
            } catch (SQLException se) {
                se.printStackTrace();
            } //end finally try
        }//end try
        System.out.println("Goodbye!");
    }
}

