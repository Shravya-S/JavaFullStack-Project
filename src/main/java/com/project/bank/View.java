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
@WebServlet("/vw")
public class View  extends HttpServlet{
	
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String AcNo=req.getParameter("acc");
		
		Connection con=null;
		PreparedStatement ps=null;
		ResultSet rs=null;
		 String sQry = "SELECT * FROM BANKSS.CUSTOMER WHERE  AccNo=?";
		 
		 try { 
		 con=Connector.requestConnection() ;
		 ps=con.prepareStatement(sQry);
		 long AccNo=Long.parseLong(AcNo);
		 ps.setLong(1, AccNo);
		
		 rs = ps.executeQuery();
		 if(rs.next()) 
		 { 
		 long account=rs.getLong(1);
		 String name=rs.getString(2);
		 long phn=rs.getLong(3);
		 String Email=rs.getString(4);
		 double bal=rs.getDouble(5);
		 int pin=rs.getInt(6);
		 req.setAttribute("AccNum", account);
		 req.setAttribute("Sname", name);
		 req.setAttribute("phn", phn);
		 req.setAttribute("mail", Email);
		 req.setAttribute("pin", pin);
		 req.setAttribute("Balance", bal);
		 RequestDispatcher rd=req.getRequestDispatcher("displayCustomer.jsp");
		 rd.forward(req, resp);
		 }
		 else 
		 { 
		  req.setAttribute("msg", "Required Result Doesn't Exist");
		  RequestDispatcher rd=req.getRequestDispatcher("View.jsp");
			 rd.forward(req, resp);
		 } 
		 
		 } 
		 catch (ClassNotFoundException | SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		
	}

}
