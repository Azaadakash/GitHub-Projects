package jdbc;

import java.io.IOException;
//import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import jdbc.ConnectionProvider;

public class AddressDetails extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddressDetails() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		try {
			
			 Connection con = ConnectionProvider.getConn(); 
			
    		String full_name = request.getParameter("full_name");
    		String street1 = request.getParameter("street1");
    		String city = request.getParameter("city");
    		String zip = request.getParameter("zip");
    		String sql = "insert into order_details(full_name,street1,city,zip) values (?,?,?,?)";
    		
			
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, full_name);
			ps.setString(2, street1);
			ps.setString(3, city);
			ps.setString(4, zip);
			ps.executeUpdate();
			
			response.sendRedirect("payment_info.jsp");
			
		} catch (ClassNotFoundException e) {
			
			e.printStackTrace();
		} catch (SQLException e) {
			
			e.printStackTrace();
			
		}
	}

}
