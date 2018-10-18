package jdbc;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import jdbc.ConnectionProvider;

/**
 * Servlet implementation class payment_info
 */
public class payment_info extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public payment_info() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		try {
			
			 Connection con = ConnectionProvider.getConn(); 
			
    		String card_no = request.getParameter("card_no");
    		String mm = request.getParameter("mm");
    		String yy = request.getParameter("yy");
    		String dd = request.getParameter("dd");
    		String cvv = request.getParameter("cvv");
    		String name_user= request.getParameter("name_user");
    		
    		String sql = "insert into payment_details(card_no,mm,yy,dd,cvv,name_user) values (?,?,?,?,?,?)";
    		
			
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1,card_no);
			ps.setString(2,mm);
			ps.setString(3,yy);
			ps.setString(4,dd);
			ps.setString(5,cvv);
			ps.setString(6,name_user);
			ps.executeUpdate();
			
			response.sendRedirect("success.jsp");
			
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			
		}
	}

}
