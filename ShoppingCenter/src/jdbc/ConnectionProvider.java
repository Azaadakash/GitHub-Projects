package jdbc;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConnectionProvider {
	
	
	
	public static Connection conn = null;
	
	public static Connection getConn() throws ClassNotFoundException, SQLException{
	try {	
		Class.forName("oracle.jdbc.driver.OracleDriver");
		conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE", "AZAADAAKASH", "azaadaakash");
	}catch(SQLException e) {
		e.printStackTrace();
	}
		return conn;
		
	}
}
