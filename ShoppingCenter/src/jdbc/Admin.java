package jdbc;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import jdbc.ConnectionProvider;



@WebServlet("/Admin")
public class Admin extends HttpServlet {
	private final String UPLOAD_DIRECTORY = "../WebContent/images/uploads";
   

    
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
    	
    	try {
			Connection conn = ConnectionProvider.getConn();
			
			
			 String email = request.getParameter("email");
			 String password = request.getParameter("password");
			 String sql = ("select * from admin where email=? and password=?");
			 
			 String name = null;
			 String adminemail = null;
			 String adminpassword = null;
			 
			 PreparedStatement ps =conn.prepareStatement(sql);
			 ps.setString(1, email);
				ps.setString(2, password);
				ResultSet rs = ps.executeQuery();
				PrintWriter out = response.getWriter();
				while(rs.next()) {
					
					name = rs.getString(2);
					
					adminemail = rs.getString(3);
					adminpassword = rs.getString(4);
					
					}
				
				if(email.equals(adminemail) && password.equals(adminpassword) ) {
					
					HttpSession session=request.getSession();  
			        session.setAttribute("uname",name);
					
					request.getRequestDispatcher("ViewProducts.jsp").forward(request, response);
					
				}
				
				else {
					
					out.println("<div class=alert alert-danger role=alert> This is a danger alert—check it out! </div>");
					request.getRequestDispatcher("LoginError.jsp").forward(request, response);
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

			 
