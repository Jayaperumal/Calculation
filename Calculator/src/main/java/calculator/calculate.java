package calculator;

import java.io.IOException;
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


@WebServlet("/calculate")
public class calculate extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int n1=Integer.parseInt(request.getParameter("n1"));
		int n2=Integer.parseInt(request.getParameter("n2"));
		   String op=request.getParameter("op");
		   int total=0;
		   switch(op) {
		   case "+":
			   total=n1+n2;
			   break;
		   case "-":
			   total=n1-n2;
			   break;
		   case "*":
			   total=n1*n2;
			   break;
		   case "/":
			   total=n1/n2;
			   break;
		   }
		    try {
		    	 Class.forName("com.mysql.jdbc.Driver");
				    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/calculator","root","1234");
				    String sql="insert into  recent(n1,op,n2,total) values(?,?,?,?)";
				    PreparedStatement st=con.prepareStatement(sql);
				    st.setInt(1,n1);
				    st.setString(2,op);
				    st.setInt(3,n2);
				    st.setInt(4,total);
				    st.executeUpdate();
				    HttpSession session=request.getSession(false);
			        session.setAttribute("total",total);
				    RequestDispatcher rd=request.getRequestDispatcher("calculator.jsp");  
			        rd.forward(request, response);  
			    }
			    catch (Exception e) {
					System.out.println(e.toString());
			     return;
			   }
	}

}
