package com.project.bank;

import java.io.IOException;
import java.sql.*;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
@WebServlet("/del")
public class delete  extends HttpServlet{
	
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String Account=req.getParameter("acc");
		Connection con=null;
		PreparedStatement ps=null;
		ResultSet rs=null;
		 String sQry = "Delete  FROM BANKSS.CUSTOMER WHERE  AccNo=? ";
		 try {
			con=Connector.requestConnection() ;
			ps=con.prepareStatement(sQry);
			long accno=Long.parseLong(Account);
			ps.setLong(1,accno);
			int res=ps.executeUpdate();
			if(res>0){
				req.setAttribute("acc", accno);
				req.setAttribute("msg", "Account Deleted Successfully" );
				 RequestDispatcher rd=req.getRequestDispatcher("Delete.jsp");
				 rd.forward(req, resp);
			}
			else {
				req.setAttribute("msg", "Entered Account Not Found");
				 RequestDispatcher rd=req.getRequestDispatcher("Delete.jsp");
				 rd.forward(req, resp);
			}
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
}
