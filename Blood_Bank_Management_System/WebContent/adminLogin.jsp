<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="style.css" type="text/css" media="screen">
<style>

input[type="text"],input[type="password"],input[type="submit"]{
  border:none;
  background:silver;
  height:50px;
  font-size:16px;
  margin-left:35%;
  padding:15px;
  width:33%;
  border-raduis:25px;
  }
</style>
</head>
<body>

<div class="header">
	<a href="#default" class="logo"><img class="logo" src="Logo1.png"></a>
	<div class="header-right">
		<a class="active" href="index.jsp">Home</a>
		<a href="adminLogin.jsp">Admin Login</a>
		</div>
</div>
<body>
<div class="container">
<br>
    <br>
    <%
     String msg=request.getParameter("msg");
     if("invalid".equals(msg))
     {
    %>
    <center><font color="red" size="5">Invalide Username/Password</font></center>
    <% 
    }%>
<form action="adminLoginAction.jsp" method="post">
<div class="form-group">
<center><h2>Username</h2></center>
<input type="text" placeholder="Enter Username" name="username" required>
<center><h2>Password</h2></center>
<input type="password" placeholder="Enter Password" name="password" required>
<center><button type="submit" class="button">Submit</button></center>
</div>
</form>
</div>

</body>
</html>