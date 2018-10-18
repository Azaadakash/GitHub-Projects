package jdbc;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
//import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import jdbc.ConnectionProvider;




@WebServlet("/Login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	
	
	public Login() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		
		
	}
	
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		try {
			
			Connection con = ConnectionProvider.getConn();
    		String email = request.getParameter("email");
    		String password = request.getParameter("password");
    		
    		String sql = "select * from users where email=? and password=?";
    		String userid = null;
    		String name = null;
    		String dbemail = null;
    		String dbpassword = null;
		
			PreparedStatement ps = con.prepareStatement(sql);
			
			ps.setString(1, email);
			ps.setString(2, password);
			ResultSet rs = ps.executeQuery();
			PrintWriter out = response.getWriter();
			
			
			while(rs.next()) {
				userid = rs.getString(1);
				name = rs.getString(2);
				dbemail = rs.getString(3);
				dbpassword = rs.getString(4);
				}
			
			
			if(email.equals(dbemail) && password.equals(dbpassword) ) {
				
			
				
				
				HttpSession session=request.getSession();  
		        session.setAttribute("uname",name);
		        session.setAttribute("uid",userid);
		        
		      
		        
			response.sendRedirect("Message.jsp");
				
		
				
				
			}
			
			else {
				
				
				out.println("You Have Failed Loged In");
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
