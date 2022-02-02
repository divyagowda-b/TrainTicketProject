package com.torry;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;

public class DBConnection {

    private  static  Connection connection;
    public static Connection getConnection() {
        try {
            String db_URL = "jdbc:mysql://localhost:3306/trains";
            String username = "root";
            String password = "Divya@582";
            String driverName = "com.mysql.cj.jdbc.Driver";
            Class.forName(driverName);
            connection = DriverManager.getConnection(db_URL, username, password);
            Statement statement = connection.createStatement();

        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
        }

        return connection;
    }

}
