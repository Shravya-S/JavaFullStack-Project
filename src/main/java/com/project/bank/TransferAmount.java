package com.project.bank;

import java.io.IOException;
import java.io.PrintWriter;
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
@WebServlet("/trans")
public class TransferAmount extends HttpServlet{
	
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String Sender=(String)req.getAttribute("sname");
		String baccount=req.getParameter("ba");
		long Baccno=Long.parseLong(baccount);
		String amt=req.getParameter("amt");
		double amount=Double.parseDouble(amt);
		String pin=req.getParameter("sn");
		int Pin=Integer.parseInt(pin);
		Connection con=null;
		PreparedStatement ps=null;
		ResultSet rs=null;
		String sBal="SELECT * FROM BANKSS.CUSTOMER WHERE CNAME=?";
		 String sender="UPDATE BANKSS.CUSTOMER SET BALANCE=BALANCE-? WHERE  PIN=?";
		 String Receiver="UPDATE BANKSS.CUSTOMER SET BALANCE=BALANCE+? WHERE ACCNO=?";
		 try {
			con=Connector.requestConnection() ;
			ps=con.prepareStatement(sender);
			ps.setDouble(1, amount);
		
			ps.setInt(2, Pin);
			int update=ps.executeUpdate();
			if(update>0) {
				ps=con.prepareStatement(Receiver);
				ps.setDouble(1, amount);
				ps.setLong(2, Baccno);
				int res=ps.executeUpdate();
				if(res>0) {
					req.setAttribute("str", "Amount Transfered Successfully");
					RequestDispatcher rd=req.getRequestDispatcher("transfer.jsp");
					rd.forward(req, resp);
				}
				else {
					RequestDispatcher rd=req.getRequestDispatcher("home.jsp");
					rd.forward(req, resp);
					
				}
				
			}
			
			
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
			
		
	}

}
