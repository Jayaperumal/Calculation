<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.io.PrintWriter"%>
<%@ page import="java.sql.Connection"%>
<%@ page import="  java.sql.PreparedStatement"%>
<%@ page import="java.sql.ResultSet"%>
<%@ page import=" java.sql.DriverManager"%>
<%@ page import="javax.servlet.ServletException"%>
<%@ page import="javax.servlet.ServletResponse"%>
<%@ page import="javax.servlet.http.HttpSession"%>
<%@ page import="javax.servlet.http.HttpServlet"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>activities</title>
<style type="text/css">
  div{
   align:center;
   font-size:25px;
  }

</style>
</head>
<body>
  <div id="tb">
    <%
    out.println("<table border=1 width=10% height=10% >");  
    out.println("<tr><th>number 1 </th><th>operation </th><th>number 2</th><th>total</th></tr>");
     try{
   	Class.forName("com.mysql.jdbc.Driver");
	    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/calculator","root","1234");
	    String q="Select * from recent";
		PreparedStatement r=con.prepareStatement(q);
		ResultSet y=r.executeQuery(q);
	    while(y.next()) {
	    	out.println("<tr><td>"+y.getInt("n1")+"</td>");
	    	out.println("<td>"+y.getString("op")+"</td>");
	    	out.println("<td>"+y.getInt("n2")+"</td>");
	    	out.println("<td>"+y.getInt("total")+"</td></tr>");
	    }
	    out.println("</table>");
   }
   catch (Exception e) 
   {  
   	System.out.println(e.toString());
   } 
    
    %>
    </div>
</body>
</html>