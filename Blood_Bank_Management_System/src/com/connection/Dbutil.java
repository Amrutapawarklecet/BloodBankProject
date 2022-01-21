package com.connection;
import java.sql.*;
public class Dbutil {
   public static Connection getCon() {
	   try {
		   Class.forName("com.mysql.cj.jdbc.Driver");
		   Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/bloodbank","root","Redmi@123");
	       return con;
	   }
	   catch(Exception e) {
		   System.out.println(e);
		  return null;
	   }
	
   }
}

