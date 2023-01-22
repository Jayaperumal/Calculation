package calculator;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/register")
public class register extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String n1=request.getParameter("username");
		String p1=request.getParameter("password");
		try {
		    Class.forName("com.mysql.jdbc.Driver");
		    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/calculator","root","1234");
		   
		    String sql="insert into  login(username,password) values(?,?)";
		    PreparedStatement st=con.prepareStatement(sql);
		    st.setString(1,n1);
		    st.setString(2,p1);
		    st.executeUpdate();
		    response.sendRedirect("login.jsp"); 

		}
		catch(Exception e) {
			System.out.println(e.toString());
		}
	}

}
