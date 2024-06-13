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

@WebServlet("/elgn")
public class EmpLogin extends HttpServlet{
	
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String EmpId=req.getParameter("id");
		String pass=req.getParameter("pwd");
		int Eid=Integer.parseInt(EmpId);
		int password=Integer.parseInt(pass);
		Connection con=null;
		PreparedStatement ps=null;
		ResultSet rs=null;
		PrintWriter out=resp.getWriter();
		String s="Select * from bankss.emp where Eid=? and Pswd=?";	
		try {
			con=Connector.requestConnection() ;
			ps=con.prepareStatement(s);
			
			ps.setInt(1, Eid);
			ps.setInt(2, password);
			rs=ps.executeQuery();
			if(rs.next()) {
				String name=rs.getString(2);
				req.setAttribute("nm",name);
				RequestDispatcher rd=req.getRequestDispatcher("EmpHome.jsp");
				rd.forward(req, resp);
				
			}
			else {
				req.setAttribute("error","Invalid Employee Id or Password");
				RequestDispatcher rd=req.getRequestDispatcher("EmpLogin.jsp");
				rd.forward(req, resp);			
				}
	
		}catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	}
