<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Signup</title>
</head>
<body>
     <div align ="center">
      <h1>User Login Form</h1>
      <form action ="register" method="post">
       <table>

       <tr><td>User Name: </td><td><input type="text" name="username" required></td></tr>
       <tr><td>Password: </td><td><input type="password" name="password"   pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}"required></td></tr>
      <tr><td>Confirm Password: </td><td><input type="password" name="password"   pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" required></td></tr>
      
       <tr><td></td><td><input type="submit" value="Sign up"></td></tr>
      </table>
      
    </form>
     </div>
</body>
</html>