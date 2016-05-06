package com.allianz.qportalapp.controller;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

public class FormDBService {

public Connection setConnection() {

		
		final String dburl = "jdbc:mysql://localhost:3306/qportal";
		String dbname="qportal";
		final String user = "root";
		final String password = "root";
		Connection conn = null;
		Statement stmt = null;
		
		try{
				Class.forName("com.mysql.jdbc.Driver");
				conn=DriverManager.getConnection(dburl, user, password);
				
				
			
		}catch(Exception e){
			e.printStackTrace();
		}
		
		return conn;
	
	}
	
}
