package com.candidjava.servlet.upload;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import jdbc.ConnectionProvider;

public class EditServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public EditServlet() {
        super();
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	
   	 
		
		Connection conn;
		try {
			conn = ConnectionProvider.getConn();
		String pid = request.getParameter("pid");
		String pName = request.getParameter("pName");
		String pPrice = request.getParameter("pPrice");
		String pDiscription = request.getParameter("pDiscription");
		String pCategories = request.getParameter("pCategories");
		String pSize = request.getParameter("pSize");
		
		if(pid!=null && pName!=null && pPrice!=null && pDiscription!=null && pCategories!=null && pSize!=null ){
			
		
		String query = "update products set pName=?,pPrice=?,pDiscription=?,pCategories=?,pSize=? where pid='"+pid+"'";	

		
		
		PreparedStatement ps = conn.prepareStatement(query);
		ps.setString(1, pName);
		ps.setString(2, pPrice);
		ps.setString(3, pDiscription);
		ps.setString(4, pCategories);
		ps.setString(5, pSize);
		
		ps.executeUpdate();
					
		request.setAttribute("pName", pName);
		request.setAttribute("pPrice", pPrice);
		request.setAttribute("pDiscription", pDiscription);
		request.setAttribute("pCategories", pCategories);
		request.setAttribute("pSize", pSize);
		
		request.getRequestDispatcher("ViewProducts.jsp").forward(request, response);
		
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