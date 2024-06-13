package com.project.bank;

import java.io.*;
import java.sql.*;
import java.util.*;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/va")
public class Viewall extends HttpServlet {
    
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        

        Connection con = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        String sQry = "SELECT * FROM BANKSS.CUSTOMER ";

        try {
            con = Connector.requestConnection();
            ps = con.prepareStatement(sQry);
           
            rs = ps.executeQuery();

            List<Customer> customerList = new ArrayList<>();

            while (rs.next()) {
                long account = rs.getLong(1);
                String name = rs.getString(2);
                long phn = rs.getLong(3);
                String Email = rs.getString(4);
                double bal = rs.getDouble(5);
                int pin = rs.getInt(6);

                Customer customer = new Customer(account, name, phn, Email, bal, pin);
                customerList.add(customer);
            }

            if (!customerList.isEmpty()) {
                req.setAttribute("customerList", customerList);
                RequestDispatcher rd = req.getRequestDispatcher("displayAllCustomers.jsp");
                rd.forward(req, resp);
            } else {
                req.setAttribute("msg", "No records found");
                RequestDispatcher rd = req.getRequestDispatcher("View.jsp");
                rd.forward(req, resp);
            }

        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        }
    }
}

