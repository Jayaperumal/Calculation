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
<style type="text/css">
   #out{
      float:right;
      text-align:right;
      padding:10px;
      background-color:silver;
      font-size:25px;
      font-weight:bold;
   }
   h1{
   display:inline-block;
  background-color:#00BFFF;    
  margin-left:550px ;
  width: 200px;
  padding: 5px;
   }
    #re{
      display:inline-block;
      background-color:silver;    
  margin-left:600px;
  width: 100px;
  border: 3px solid green;
  padding: 5px;
  font-weight:bold;
   }
  div{
    padding: 0;
    margin: 10px;
    display: inline;
   }
   table{
     text-align:justify;
     font-size:20px;
     font-weight: bold;
     background-color:#00CED1;
     padding: 50px;
     margin:0px;
   }
</style>
<title>Calculator</title>
</head>
<body>
    <a href="login.jsp" id="out">logout</a>
    <div align ="center">
      <h1>Calculator</h1>
      <form action="calculate" method="post">
       <table>
       <tr><td> Number1:</td><td><input type="text" name="n1" id = "n1">  <% String n1=request.getParameter("n1");if(n1!=null){ out.println(n1);}%></td></tr>
       <tr><td> operation: </td><td><input type="text" name="op" id= "op">  <% String op=request.getParameter("op"); if(op!=null){ out.println(op);} %></td></tr>
       <tr><td> For operation use +,-,*,/ symbols</td></tr>
       <tr><td> Number2:</td><td><input type="text" name="n2" id = "n2">  <% String n2=request.getParameter("n2"); if(n2!=null){ out.println(n2);} %></td></tr>
       <tr><td></td><td><button onclick="equals()">=</button></td></tr>
      </table>
      </form>
      <p id="demo"></p>
      <a href="recent.jsp" id="re">Recent activity</a>
    </div>
</body>
<script type="text/javascript">
function equals(){
	let x= parseInt(document.getElementById("n1").value);
	let y= parseInt(document.getElementById("n2").value);
	let op= document.getElementById("op").value;
	let z="";
	 switch(op){
	 case "+":
		 z=x + y;
		 break;
	 case "-":
		 z=x - y;
		 break;
	 case "*":
		 z=x * y;
		 break;
	 case "/":
		 z=x / y;
		 break;
	 }
	document.getElementById("demo").innerHTML =z;  
}
</script>
</html>
