import java.sql.*;
import java.util.Scanner;

/**
 * https://www.youtube.com/watch?v=NoPzqahrzp8
 */
public class App {
    public static void main(String[] args) {
        //System.out.println("MySQL JDBC Driver Registered!");
        Connection connection = null;
        Statement stmt = null;
        ResultSet rs = null;

        Scanner in = new Scanner(System.in);
        System.out.println("Welcome to Store\n"
                + "Are you a customer or a business owner?\n"
                + "    1. Customer\n"
                + "    2. Business owner");
        int userLevel = in.nextInt();
        if (userLevel == 1) {
            System.out.println("You are a customer.\n");
        } else if (userLevel == 2){
            System.out.println("You are a business owner.\n");
        }


        try {
            // time zone issue solution https://stackoverflow.com/questions/7605953/how-to-change-mysql-timezone-in-java-connection
            // Open a connection
            //System.out.println("Connecting to database...");
            connection = DriverManager
                    .getConnection("jdbc:mysql://localhost:3306/STORE?useLegacyDatetimeCode=false" +
                                    "&serverTimezone" +
                                    "=America/Los_Angeles"
                            ,"root", "YOUR_PASSWORD");

            // Execute a query
            // System.out.println("Creating a statement...");
            stmt = connection.createStatement();
            boolean exitRequest = false;
            // based on the option, execute specific query
            if (userLevel == 1) {
                while (!exitRequest) {
                    System.out.println("What would you like to do today?\n"
                            + "   1. Show top rated items. \n" // #10
                            + "   2. \n"  // TODO
                            + "   3. \n"  // TODO
                            + "   4. Exit\n");
                    int customerOption = in.nextInt();
                    switch (customerOption) {
                        case 1 :
                            rs = stmt.executeQuery("SELECT itemname, \n" +
                                    "       Avg(rating) AS avgRating \n" +
                                    "FROM   items, \n" +
                                    "       reviews \n" +
                                    "WHERE  items.itemid = reviews.itemid \n" +
                                    "GROUP  BY items.itemid \n" +
                                    "ORDER  BY avgrating DESC \n" +
                                    "LIMIT  20;");
                            System.out.format("%-15s%-30s%-15s\n", "Customer ID", "Customer name", "Total spent");
                            while(rs.next()) {
                                System.out.format("%-15s%-30s%-15s\n", rs.getInt("customerid"),
                                        rs.getString("customername"),
                                        rs.getString("totalPrice"));
                            }
                            System.out.println("\n\n");
                            break;
                        case 2:

                            break;
                        case 3:
                            // TODO
                            break;
                        case 4:
                            exitRequest = true;
                            break;
                    }
                }
            } else if (userLevel == 2) {
                while (!exitRequest) {
                    System.out.println("What would you like to do today?\n"
                            + "   1. Show top 5 customers\n" // #1
                            + "   2. Show the total revenue of high-value items sold (items that are priced " +
                            "over $50)\n" // #2
                            + "   3. Show how much $ was lost due per items\n" // #4
                            + "   4. Exit\n");
                    int besinessOwnerOption = in.nextInt();
                    switch (besinessOwnerOption) {
                        case 1 :
                            rs = stmt.executeQuery("SELECT C.customerid,\n" +
                                    "       C.customername,\n" +
                                    "       Sum(itemprice) AS totalPrice\n" +
                                    "FROM   customers AS C,\n" +
                                    "       billofsale AS B\n" +
                                    "WHERE  C.customerid = B.customerid\n" +
                                    "GROUP  BY C.customerid\n" +
                                    "ORDER  BY totalprice DESC\n" +
                                    "LIMIT  5;");
                            System.out.format("%-15s%-30s%-15s\n", "Customer ID", "Customer name", "Total spent");
                            while(rs.next()) {
                                System.out.format("%-15s%-30s%-15s\n", rs.getInt("customerid"),
                                        rs.getString("customername"),
                                        rs.getString("totalPrice"));
                            }
                            System.out.println("\n\n");
                            break;
                        case 2:
                            rs = stmt.executeQuery("SELECT Sum(I.itemprice) AS totalRevenue\n" +
                                    "FROM   items AS I\n" +
                                    "WHERE  I.itemprice > 50;");
                            while(rs.next()) {
                                System.out.println("Total revenue = " + rs.getInt("totalRevenue"));
                            }
                            System.out.println("\n\n");
                            break;
                        case 3:
                            rs = stmt.executeQuery("SELECT B.itemname,\n" +
                                    "       Sum(B.itemprice * IT.qtymissing) AS TotalLoss\n" +
                                    "FROM   itemgraveyard AS IT,\n" +
                                    "       items AS B\n" +
                                    "WHERE  IT.itemid = B.itemid\n" +
                                    "       AND IT.qtymissing > 0\n" +
                                    "GROUP  BY( B.itemid );");
                            System.out.format("%-30s%-15s\n", "Item name", "Total loss");
                            while(rs.next()) {
                                System.out.format("%-30s%-15s\n", rs.getString("itemname"),
                                        rs.getString("TotalLoss"));
                            }
                            System.out.println("\n\n");
                            break;
                        case 4:
                            exitRequest = true;
                            break;
                    }
                }
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

