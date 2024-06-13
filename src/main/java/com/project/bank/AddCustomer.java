package com.project.bank;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
@WebServlet("/add")
public class AddCustomer extends HttpServlet {

	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String cname=req.getParameter("cn");
		String phone=req.getParameter("ph");
		String email=req.getParameter("e");
		String pin=req.getParameter("pn");
		Connection con=null;
		PreparedStatement ps=null;
		ResultSet rs=null;
		PrintWriter out=resp.getWriter();
		String s="INSERT INTO BANKSS.CUSTOMER(CNAME,PHONE,EMAIL,PIN) VALUES(?,?,?,?) ";
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			con=DriverManager.getConnection("jdbc:mysql://localhost:3306/bank?"+"user=root&&password=Tiger");
			ps=con.prepareStatement(s);
			ps.setString(1, cname);
			long Phone=Long.parseLong(phone);
			ps.setLong(2,Phone);
			ps.setString(3, email);
			int Pin=Integer.parseInt(pin);
			ps.setInt(4, Pin);
			int i=ps.executeUpdate();
			if(i>0) {
				req.setAttribute("msg","Data added successfully" );
				RequestDispatcher rd=req.getRequestDispatcher("AddCustomer.jsp");
				rd.forward(req, resp);
				
			}
			
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	
	}

}
