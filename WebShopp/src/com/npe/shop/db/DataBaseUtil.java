package com.npe.shop.db;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DataBaseUtil {
	
	public static Connection getConnection() {
        Connection connection = null;
        try{
            Class.forName("com.mysql.jdbc.Driver");
            String url = "jdbc:mysql://localhost/webshopping";
            connection = DriverManager.getConnection(url, "root", "admin");
            return connection;

        }catch(ClassNotFoundException nfe) {
            nfe.printStackTrace();
        }catch(SQLException sqle) {
            sqle.printStackTrace();
        }
        return connection;
    }

    public static void closeConnection(Connection connection) {
        if(connection != null) {
            try{
                connection.close();
            }catch(SQLException sqle) {
                sqle.printStackTrace();
            }
        }
    }
}
