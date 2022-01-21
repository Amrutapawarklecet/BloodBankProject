<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<% 
String username=request.getParameter("username");
String password=request.getParameter("password");
if("admin".equals(username) && "admin".equals(password)){
	response.sendRedirect("home.jsp");
}
else{
	response.sendRedirect("adminLogin.jsp?msg=invalid");
}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

</body>
</html>