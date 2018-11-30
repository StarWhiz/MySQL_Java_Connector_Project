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

        try {
            connection = DriverManager
                    .getConnection("jdbc:mysql://rds-mysql-onlinestore.c3pd0vboyy5j.us-west-1.rds.amazonaws.com:3306"
                                    + "/STORE"
                            , "root", "cs157arit");
            stmt = connection.createStatement();

            printMainMenu(stmt); /***** Print's the menu options. Functional Requirements are done here.*****/

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
    }

    /**
     * This function prints the Menu...
     */
    public static void printMainMenu(Statement stmt) throws SQLException {
        boolean exitRequest = false; // for the Main Menu
        Scanner in = new Scanner(System.in);

        while (!exitRequest) {
            System.out.println("Welcome to Store\n"
                    + "Are you a customer or a business owner?\n"
                    + "    1. Customer\n"
                    + "    2. Business owner\n"
                    + "    3. Exit Store...");

            int userLevel = in.nextInt();

            if (userLevel == 1) {
                printCustomerMenu(stmt);
            } else if (userLevel == 2) {
                printBusinessOwnerMenu(stmt);
            } else {
                System.out.println("Program will now exit. Goodbye!!!");
                exitRequest = true;
            }
        }
    }

    public static void printCustomerMenu(Statement stmt) throws SQLException {
        boolean exitRequested = false; // for the Customer Menu
        Scanner in = new Scanner(System.in);
        ResultSet rs;

        while (!exitRequested) {
            System.out.println("You are a customer.\n");
            System.out.println("What would you like to do today?\n"
                    + "   1. Show top rated items. \n" // #10
                    + "   2. \n"  // TODO
                    + "   3. \n"  // TODO
                    + "   4. Logout (customer logout)\n");
            int customerOption = in.nextInt();
            switch (customerOption) {
                case 1:
                    rs = stmt.executeQuery("SELECT itemname, \n" +
                            "       Avg(rating) AS avgRating \n" +
                            "FROM   items, \n" +
                            "       reviews \n" +
                            "WHERE  items.itemid = reviews.itemid \n" +
                            "GROUP  BY items.itemid \n" +
                            "ORDER  BY avgrating DESC \n" +
                            "LIMIT  5;");
                    System.out.format("%-15s\n", "Items");
                    while (rs.next()) {
                        System.out.format("%-15s\n", rs.getString("itemname"));
                    }
                    System.out.println("\n\n");
                    break;
                case 2:
                    //TODO
                    break;
                case 3:
                    //TODO
                    break;
                case 4:
                    exitRequested = true;
                    break;
            }
        }
    }

    public static void printBusinessOwnerMenu(Statement stmt) throws SQLException{
        boolean exitRequested = false; // for the Customer Menu
        Scanner in = new Scanner(System.in);
        ResultSet rs;

        while (!exitRequested) {
            System.out.println("You are a business owner.\n");
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
                    exitRequested = true;
                    break;
            }
        }
    }
}

