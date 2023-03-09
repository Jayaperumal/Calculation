<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<style>
    div{
    padding: 0;
    margin: 10px;
    display: inline;
   }
   .table{
     text-align:justify;
     font-size:20px;
     font-weight: bold;
     background-color:#E0E0E0;
     padding: 50px;
     margin:50px;
   }
</style>
<title>Signup</title>
</head>
<body>
     <div align ="center">
      <h1>User Login Form</h1>
      <form action ="register" method="post">
       <table class="table">

       <tr><td>User Name: </td><td><input type="text" name="username" placeholder="Enter your Name"required></td></tr>
       <tr><td>Password: </td><td><input type="password" name="password"   placeholder="Enter Password"required></td></tr>
      <tr><td>Confirm Password: </td><td><input type="password" name="password"  placeholder="Enter Password" required></td></tr>
      
       <tr><td></td><td><input type="submit" value="Sign up"></td></tr>
      </table>
      
    </form>
     </div>
</body>
</html>
