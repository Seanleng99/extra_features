import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;  
  
public class ValidateLogin {  
	
	public static boolean validate(String idadmin,String password){
	
		boolean status = false;
		
		try {  
			Class.forName("com.mysql.jdbc.Driver");  
			Connection conn = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/db1?serverTimezone=UTC", "root", "Sean990507");    
			PreparedStatement stmt = conn.prepareStatement("select * from db1.admin where idadmin = ? and password = ?");  
			stmt.setString(1, idadmin);  
			stmt.setString(2, password);
			ResultSet rs = stmt.executeQuery();  
			status = rs.next();        
		} catch (Exception e) {
			e.printStackTrace();
		}  
		return status;
	}  
}  