package com.payment;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;


public class DBConnect {
	
	public static Connection getConnection() throws SQLException {
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
				} catch (ClassNotFoundException e) {
					e.printStackTrace();
				}
				Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/bidding","root","abcd1234");
				
				return conn;
	}
}

