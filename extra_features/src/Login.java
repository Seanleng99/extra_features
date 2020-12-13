import java.io.*;
import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
@WebServlet("/loginForm")

public class Login extends HttpServlet {
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");  
	    PrintWriter out = response.getWriter();  
	          
	    String idadmin = request.getParameter("id");  
	    String password = request.getParameter("password");  
	          
	    if (ValidateLogin.validate(idadmin,password)) {  
	        RequestDispatcher rd = request.getRequestDispatcher("student_info.jsp");  
	        rd.forward(request,response);  
	    }  
	    else {
	    	out.println("<script>");
	        out.println("alert('Invalid username or password!');");
	        out.println("</script>");
	        RequestDispatcher rd = request.getRequestDispatcher("index.html");  
	        rd.include(request,response);  
	    }
	    out.close();
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}