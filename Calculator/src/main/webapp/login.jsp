<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>calculator</title>
<style type="text/css">
   .sg{
   text-align:justify;
     padding:5px;
     background-color:silver;
   }

</style>
</head>
<body>
    <div align ="center">
      <h1>User Login Form</h1>
      <form action ="loginpro" method="post">
       <table>

       <tr><td>User Name: </td><td><input type="text" name="username" required></td></tr>
       <tr><td>Password(8 characters minimum): </td><td><input type="password" name="password"   pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}"required></td></tr>
        <tr><td>like:Fcvhj@34df</td></tr>
       <tr><td></td><td><input type="submit" value="Submit"></td></tr>
       <tr><td></td><td><a href = "signup.jsp" class="sg">Signup</a></td></tr>
      </table>
      
    </form>
     </div>
     
</body>
</html>