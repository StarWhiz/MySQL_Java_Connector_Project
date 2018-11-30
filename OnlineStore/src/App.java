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
     * This function prints the Main Menu...
     */
    private static void printMainMenu(Statement stmt) throws SQLException {
        boolean exitRequest = false; // for the Main Menu
        Scanner in = new Scanner(System.in);

        while (!exitRequest) {
            System.out.println("Welcome to Store\n"
                    + "Are you a customer or a business owner?\n"
                    + "    1. Customer\n"
                    + "    2. Business owner\n"
                    + "    3. Exit Store ...");

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

    /**
     * This function prints the Customer Menu...
     */
    private static void printCustomerMenu(Statement stmt) throws SQLException {
        boolean exitRequested = false; // for the Customer Menu
        Scanner in = new Scanner(System.in);

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
                    functionRequirement10(stmt);
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

    /**
     * This function prints the Business Owner Menu...
     */
    private static void printBusinessOwnerMenu(Statement stmt) throws SQLException{
        boolean exitRequested = false; // for the Customer Menu
        Scanner in = new Scanner(System.in);

        while (!exitRequested) {
            System.out.println("You are a business owner.\n");
            System.out.println("What would you like to do today?\n"
                    + "   1. Show top 5 customers\n" // #1
                    + "   2. Show the total revenue of high-value items sold (items that are priced " +
                    "over $50)\n" // #2
                    + "   3. Show how much $ was lost due per items\n" // #4
                    //TODO Add more menu items
                    + "   4. Exit\n");
            int besinessOwnerOption = in.nextInt();

            switch (besinessOwnerOption) {
                case 1 :
                    functionRequirement1(stmt);
                    break;
                case 2:
                    functionRequirement2(stmt);
                    break;
                case 3:
                    functionRequirement4(stmt);
                    break;
                case 4:
                    exitRequested = true;
                    break;
            }
        }
    }

    /**
     * Functional Requirement 1: As a business manager, I want to be able to see who my top 5 customer are. (People that spends the most).
     */
    private static void functionRequirement1(Statement stmt) throws SQLException {
        ResultSet rs;
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
        System.out.println();
    }

    /**
     * Functional Requirement 2: As a business manager, I should be able to see the total revenue of all my high-value items sold (items that are priced over $50)
     */
    private static void functionRequirement2(Statement stmt) throws SQLException {
        ResultSet rs;
        rs = stmt.executeQuery("SELECT Sum(I.itemprice) AS totalRevenue\n" +
                "FROM   items AS I\n" +
                "WHERE  I.itemprice > 50;");
        while(rs.next()) {
            System.out.println("Total revenue = " + rs.getInt("totalRevenue"));
        }
        System.out.println();
    }

    /**
     * TODO
     * Functional Requirement 3: As a business manager, I should be able to see which 5 items were the worst sellers (lowest qty sold)
     */
    public static void functionRequirement3(Statement stmt) throws SQLException {
        ResultSet rs;
    }

    /**
     * Functional Requirement 4: As a business manager, I should be able to see how much $ was lost per items.
     */
    private static void functionRequirement4(Statement stmt) throws SQLException {
        ResultSet rs;
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
        System.out.println();
    }

    /**
     * TODO
     * Functional Requirement 5: As a business manager, I should be able to see the total number of items that are missing?
     */
    private static void functionRequirement5(Statement stmt) throws SQLException {
        ResultSet rs;
    }

    /**
     * TODO
     * Functional Requirement 6: As a business manager, I want to see who my top 5 suppliers are (supplied the most items)
     */
    private static void functionRequirement6(Statement stmt) throws SQLException {
        ResultSet rs;
    }

    /**
     * TODO
     * Functional Requirement 7: As a business manager, I should be able to see which customer has the highest return rates
     */
    private static void functionRequirement7(Statement stmt) throws SQLException {
        ResultSet rs;
    }

    /**
     * TODO
     * Functional Requirement 8: As a business manager, I should be able to see which customers have the lowest return rates.
     */
    private static void functionRequirement8(Statement stmt) throws SQLException {
        ResultSet rs;
    }

    /**
     * TODO
     * Functional Requirement 9: As a business manager and a customer, I should be able to see which item is the most expensive
     */
    private static void functionRequirement9(Statement stmt) throws SQLException {
        ResultSet rs;
    }

    /**
     * Functional Requirement 10: As a customer, I want to see the top 5 rated items.
     */
    private static void functionRequirement10(Statement stmt) throws SQLException {
        ResultSet rs;
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
        System.out.println();
    }

    /**
     * TODO
     * Functional Requirement 11: As a customer, I should be able to view all available items (1 or more qtyinStock) and all unavailable items (0 qtyinStock) separately
     */
    private static void functionRequirement11(Statement stmt) throws SQLException {
        ResultSet rs;
    }

    /**
     * TODO
     * Functional Requirement 12: As a business manager I want to know who is my first customer?
     */
    private static void functionRequirement12(Statement stmt) throws SQLException {
        ResultSet rs;
    }

    /**
     * TODO
     * Functional Requirement 13: As a business manager, I see the top 5 items that I have the most in stock.
     */
    private static void functionRequirement13(Statement stmt) throws SQLException {
        ResultSet rs;
    }

    /**
     * TODO
     * Functional Requirement 14: As a customer, I want to know which items are top 5 best-selling (sold the most).
     */
    private static void functionRequirement14(Statement stmt) throws SQLException {
        ResultSet rs;
    }

    /**
     * TODO
     * Functional Requirement 15: As a business manager, I should be able to see which supplier provides me with the highest quantity ordered.
     */
    private static void functionRequirement15(Statement stmt) throws SQLException {
        ResultSet rs;
    }

    /**
     * TODO
     * Functional Requirement 16: As a business manager, I should be able to see the lowest quantity that a supplier offers.
     */
    private static void functionRequirement16(Statement stmt) throws SQLException {
        ResultSet rs;
    }

    /**
     * TODO
     * Functional Requirement 17: As a customer, I should be able to view my purchase history.
     */
    private static void functionRequirement17(Statement stmt) throws SQLException {
        ResultSet rs;
    }
}

