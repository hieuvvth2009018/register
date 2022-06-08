package com.example.Register.t2009m1helloworld.controller.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConnectionHelper {
    private static final String DATABASE_URL = "jdbc:mysql://localhost:3306/sem-4";
    private static final String DATABASE_USERNAME = "root";
    private static final String DATABASE_PASSWORD = "";

    private static Connection connection;
    public static  Connection getConnection() {
        try {
            Class.forName("com.mysql.jdbc.Driver");
            if (connection == null || connection.isClosed()) {
                connection = DriverManager.getConnection(DATABASE_URL, DATABASE_USERNAME, DATABASE_PASSWORD);
            }
            System.out.println("Connection success!");
        } catch (SQLException e) {
            System.out.println(e);
        } catch (ClassNotFoundException e) {
            System.out.println(e);
        }
        return connection;
    }
}
