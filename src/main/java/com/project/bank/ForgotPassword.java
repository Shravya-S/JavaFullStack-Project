package com.project.bank;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
@WebServlet("/fpwd")

public class ForgotPassword extends HttpServlet {
	
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String accno=req.getParameter("accn");
		String p1=req.getParameter("p1");
		String p2=req.getParameter("p2");
		Connection con=null;
		PreparedStatement ps=null;
		ResultSet rs=null;
		PrintWriter out=resp.getWriter();
		int res=0;
		String s="UPDATE BANKSS.CUSTOMER SET pin=? WHERE ACCNO=?";	
		try {
			con=Connector.requestConnection() ;
			ps=con.prepareCall(s);
			long accNo =Long.parseLong(accno);
			int pwd1=Integer.parseInt(p1);
			int pwd2=Integer.parseInt(p1);
			
			if(pwd1==pwd2) {
				ps.setInt(1, pwd2);
				ps.setLong(2, accNo);
			
			res=ps.executeUpdate();
			resp.sendRedirect("Success.html");
			}
			if(res>0) {
				resp.setContentType("text/html");
				
			}
		
	}catch (ClassNotFoundException | SQLException e) {
		e.printStackTrace();
	}
	finally {
		 
		try {
			
			if(ps!=null) ps.close();
			
			if(con!=null)con.close();	
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	}
}

