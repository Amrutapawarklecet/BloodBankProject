<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="style.css" type="text/css" media="screen">
<style>
.mySlides{display:none;}
input[type="text"],input[type="mail"],input[type="number"]{
  border:none;
  background:silver;
  height:50px;
  font-size:16px;
  margin-left:2%;
  padding:15px;
 
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



<br>

<%
String msg=request.getParameter("msg");
if("valid".equals(msg)){
	%>
	<center><font color="red" size="5">From Submitted Successfully. You will get notified within 24 hours. </font></center>
 <% 
	}
 %>
 
 <%

 if("invalid".equals(msg)){
	%>
	<center><font color="red" size="5">Invalid Data! Try Again !</font></center>
 <% 
	}
 %>
 <!-- create a from -->
<center><h1>Enter Your Details to Request for Blood</h1></center>
<form action="indexFormAction.jsp" method="post">
<center>
<input type="text" name="name" placeholder="Enter Name" required>
<input type="number" name="mobilenumber" placeHolder="Enter  Mobile Number" required>
<input type="mail" name="email" placeholder="Enter Email Address" required>
<input type="text" name="bloodgroup" placeholder="Enter Blood Group" required>
<button class="button1"><span>Submit</span></button>
</center>
</form>

</body>
</html>