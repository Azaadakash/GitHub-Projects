package jdbc;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class Cart
 */
public class Cart extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Cart() {
        super();
        // TODO Auto-generated constructor stub
    }

		protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			
		String driverName = "com.mysql.jdbc.Driver";
	    String connectionUrl = "jdbc:mysql://localhost:3306/";
	    String dbName = "users";
	    String userId = "root";
	    String password = "";
	    
	    HttpSession session=request.getSession(false);  
	    String n=(String)session.getAttribute("uname");  

	    Connection connection = null;
	    Statement statement = null;
	    ResultSet resultSet = null;
	   
	    try{ 
	    	
	    	 int number=0;   
	    	connection = DriverManager.getConnection(connectionUrl+dbName, userId, password);
	    	statement=connection.createStatement();

	    	String sql ="SELECT * FROM products;";

	    	resultSet = statement.executeQuery(sql);
	    	while(resultSet.next()){
	    		number++;
	    
	    
	    
	    } 
	    
	    

	    } catch (Exception e) {
	    e.printStackTrace();
	    }

	                     try {
	                    	 Class.forName(driverName);
	                    	 } catch (ClassNotFoundException e) {
	                    	 e.printStackTrace();
	                    	 }
	                     try{ 
	                    	 Connection conn = DriverManager.getConnection(connectionUrl+dbName, userId, password);
	                    	 Statement stmt = connection.createStatement();
	                    	 String Data = "SELECT SUM(pPrice) FROM products";
	                    	 ResultSet rs = statement.executeQuery(Data);
	                    	 
	                    	 while (rs.next()) {

	                    		 
	                    	 }

	                     } catch (Exception e) {
	                     e.printStackTrace();
	                     }
	                    
	                     
		
}

	}


