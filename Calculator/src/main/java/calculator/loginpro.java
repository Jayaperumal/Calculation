package calculator;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/loginpro")
public class loginpro extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name=request.getParameter("username");
		String pass=request.getParameter("password");
		try {
		    Class.forName("com.mysql.jdbc.Driver");
		    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/calculator","root","1234");
		    String n1="";
		    String p1="";
		    String q="select * from login";
			PreparedStatement r=con.prepareStatement(q);
			ResultSet y=r.executeQuery(q);
		    while(y.next()) {
		    	n1=y.getString("username");
		    	p1=y.getString("password");
		    	if(n1.equals(name) && p1.equals(pass)) {
		    		 response.sendRedirect("calculator.jsp"); 
		    		break;
		    	}
		    }
		    response.sendRedirect("login.jsp"); 
		}
		catch(Exception e) {
			System.out.println(e.toString());
		}
		
	}

}
