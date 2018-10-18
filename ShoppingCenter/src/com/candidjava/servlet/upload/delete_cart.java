package com.candidjava.servlet.upload;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import jdbc.*;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class delete_cart extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public delete_cart() {
        super();
        // TODO Auto-generated constructor stub
    }
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		    			   	 
		
				
				
				Connection conn;
				try {
					conn = ConnectionProvider.getConn();
				String pid = request.getParameter("pid");	
				
				String query = "DELETE FROM products WHERE pid = '"+pid+"'";	

				
				
				PreparedStatement ps = conn.prepareStatement(query);
				
				ps.executeUpdate();
							
				
				request.getRequestDispatcher("ViewProducts.jsp").forward(request, response);
				

				
				} catch (ClassNotFoundException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
					
		}
		
	
	}

