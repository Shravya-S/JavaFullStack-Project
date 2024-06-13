package com.project.bank;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;


public class Connector {
	 static Connection requestConnection()  throws ClassNotFoundException ,SQLException{
		  Connection con =null;
		  String url="jdbc:mysql://localhost:3306/college";
		  String user="root";
		  String password="Tiger";
		  Class.forName("com.mysql.cj.jdbc.Driver");
		  con=DriverManager.getConnection(url,user,password);
		  return con; 
		  
		  
	 }
	}

