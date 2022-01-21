<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="com.connection.Dbutil"  %>
<%@ page import="java.sql.*"  %>
<%
String id=request.getParameter("id");
String name=request.getParameter("name");
String father=request.getParameter("father");
String mother=request.getParameter("mother");
String mobilenumber=request.getParameter("mobilenumber");
String email=request.getParameter("email");
String address=request.getParameter("address");
try{
	Connection con=Dbutil.getCon();
	PreparedStatement ps=con.prepareStatement("update donor set name=?,father=?,mother=?,mobilenumber=?,email=? ,address=? where id=?");
    ps.setString(1,name);
    ps.setString(2,father);
    ps.setString(3,mother);
    ps.setString(4,mobilenumber);
    ps.setString(5,email);
    ps.setString(6,address);
    ps.setString(7,id);
    ps.executeUpdate();
    response.sendRedirect("editDeleteList.jsp?msg=valid");
    
}
catch(Exception e){
	response.sendRedirect("editDeleteList.jsp?msg=invalid");
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