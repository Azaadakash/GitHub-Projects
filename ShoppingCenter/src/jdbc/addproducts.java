package jdbc;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

//import jdbc.*;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import jdbc.ConnectionProvider;

@WebServlet("/addproducts")
public class addproducts extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public addproducts() {
        super();
        // TODO Auto-generated constructor stub
    }
	
    
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
	 
		
			Connection conn;
			try {
				conn = ConnectionProvider.getConn();
			
			String pName = request.getParameter("pName");
    		String pPrice = request.getParameter("pPrice");
    		String pDiscription = request.getParameter("pDiscription");
			String pCategories = request.getParameter("pCategories");
    		String pSize = request.getParameter("pSize");
    		String pImage = request.getParameter("pImage");
    		String sql = "insert into users(,email,password) values (?,?,?)";
    		
			PreparedStatement ps = conn.prepareStatement(sql);
						
			PrintWriter out = response.getWriter();
			out.println("You have Successfully Registered");
			

			
			} catch (ClassNotFoundException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
	
		
		
		
	}

	
	
}
