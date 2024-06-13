package com.project.bank;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
@WebServlet("/lgn")
public class LoginV extends HttpServlet{
	
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String AccNo=req.getParameter("nm");
		String pass=req.getParameter("pwd");
		long AccNmr=Long.parseLong(AccNo);
		int password=Integer.parseInt(pass);
		String url="jdbc:mysql://localhost:3306/bankss";
		String user="root";
		String pss="Tiger";
		Connection con=null;
		PreparedStatement ps=null;
		ResultSet rs=null;
		PrintWriter out=resp.getWriter();
		String s="Select * from bankss.customer where accno=? and pin=?";
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			con=DriverManager.getConnection(url,user,pss);
			ps=con.prepareStatement(s);
			ps.setLong(1, AccNmr);
			ps.setInt(2,password);
			rs=ps.executeQuery();
			if(rs.next()) {
				String name=rs.getString(2);
				req.setAttribute("nam",name);
				RequestDispatcher rd=req.getRequestDispatcher("home.jsp");
				rd.forward(req, resp);
				
			}else {
				req.setAttribute("error","Invalid Account number or Password");
				RequestDispatcher rd=req.getRequestDispatcher("login.jsp");
				rd.forward(req, resp);
			}
			
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
