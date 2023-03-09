<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>calculator</title>
<style type="text/css">
   div{
    padding: 0;
    margin: 10px;
    display: inline;
   }
   .sg{
   text-align:justify;
   font-size:15px;
   background-color:white;
    padding: 3px;
        border-radius: 3px;
        display: inline-block;
   }
   .table{
     text-align:justify;
     font-size:20px;
     font-weight: bold;
     background-color:#E0E0E0;
     padding: 50px;
     margin:50px;
   }
   .sg:hover {
  opacity: 0.8;
   }
</style>
</head>
<body>
    <div align ="center">
    <h1>User Login Form</h1>
      <form action ="loginpro" method="post">
       <table class="table">
       <tr><td>User Name: </td><td><input type="text" name="username" placeholder="Enter your name" required></td></tr>
       <tr><td>Password: </td><td><input type="password" name="password" placeholder="Enter Password"required></td></tr>
       <tr><td></td><td ><input type="submit" value="Submit"></td></tr>
       <tr><td></td><td class="sg"><a href = "signup.jsp">Signup</a></td></tr>
      </table>
    </form>
     </div>
     
</body>
</html>
