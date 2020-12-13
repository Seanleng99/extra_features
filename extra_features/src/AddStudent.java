import java.io.*;
import java.sql.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class AddStudent extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
    public AddStudent() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// Set response content type
		response.setContentType("text/html");
		
		// Add Student Page
		String id = request.getParameter("id");
		String name = request.getParameter("name");
		String department = request.getParameter("department");
		String science = request.getParameter("science");
		String math = request.getParameter("math");
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection conn = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/db1?serverTimezone=UTC", "root", "Sean990507");
			PreparedStatement stmt = conn.prepareStatement("insert into db1.student(id, name, department, science, mathematics) values (?,?,?,?,?,?)");
			stmt.setString(1, id);
			stmt.setString(2, name);
			stmt.setString(3, department);
			stmt.setString(4, science);
			stmt.setString(5, math);
			stmt.executeUpdate();
			response.sendRedirect("student_info.jsp");
		}
		catch(Exception e) {
			e.printStackTrace();
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
