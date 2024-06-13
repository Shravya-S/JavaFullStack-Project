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
@WebServlet("/deposit")
public class Deposit extends HttpServlet{
	
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String Account=req.getParameter("acc");
		long acc=Long.parseLong(Account);
		String amt=req.getParameter("amt");
		double amount=Double.parseDouble(amt);
		String pin=req.getParameter("pn");
		int Pin=Integer.parseInt(pin);
		Connection con=null;
		PreparedStatement ps=null;
		ResultSet rs=null;
		String s="UPDATE BANKSS.CUSTOMER SET BALANCE=BALANCE+? WHERE ACCNO=? AND PIN=?";
		 try {
				con=Connector.requestConnection() ;
				ps=con.prepareStatement(s);
				ps.setDouble(1, amount);
				ps.setLong(2, acc);
				ps.setInt(3, Pin);
					int res=ps.executeUpdate();
					if(res>0) {
						req.setAttribute("str", "Amount Deposited Successfully");
						RequestDispatcher rd=req.getRequestDispatcher("Deposit.jsp");
						rd.forward(req, resp);
					}
					else {
						RequestDispatcher rd=req.getRequestDispatcher("home.jsp");
						rd.forward(req, resp);
						
					}
					
				
				
				
			} catch (ClassNotFoundException | SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
				
			
		}

	}
