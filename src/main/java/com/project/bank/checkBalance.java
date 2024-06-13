package com.project.bank;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
@WebServlet("/balance")
public class checkBalance extends HttpServlet{
	
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String AcNo=req.getParameter("acc");
		String Pin=req.getParameter("pn");
		Connection con=null;
		PreparedStatement ps=null;
		ResultSet rs=null;
		 String sQry = "SELECT * FROM BANKSS.CUSTOMER WHERE  AccNo=? AND PIN=?";
		 
		 try { 
		 con=Connector.requestConnection() ;
		 ps=con.prepareStatement(sQry);
		 long AccNo=Long.parseLong(AcNo);
		 ps.setLong(1, AccNo);
		 int pin=Integer.parseInt(Pin);
		 ps.setInt(2, pin);
		 rs = ps.executeQuery();
		 if(rs.next()) 
		 { 
		 long account=rs.getLong(1);
		 String name=rs.getString(2);
		 double bal=rs.getDouble(5);
		 req.setAttribute("AccNum", account);
		 req.setAttribute("Sname", name);
		 req.setAttribute("Balance", bal);
		 RequestDispatcher rd=req.getRequestDispatcher("display.jsp");
		 rd.forward(req, resp);
		 }
		 else 
		 { 
		  req.setAttribute("msg", "Please Enter Valid Details!");
		  RequestDispatcher rd=req.getRequestDispatcher("Balance.jsp");
			 rd.forward(req, resp);
		 } 
		 
		 } 
		 catch (ClassNotFoundException | SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		
	}
}
