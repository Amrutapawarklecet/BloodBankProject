<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="com.connection.Dbutil"  %>
<%@ page import="java.sql.*"  %> 
<%
String bloodgroup=request.getParameter("bloodgroup");
String incdec=request.getParameter("incdec");
String units=request.getParameter("units");
int units1=Integer.parseInt(units); //convert string to int
try{
	Connection con=Dbutil.getCon();
	Statement st=con.createStatement();
	if(incdec.equals("inc")){
		st.executeUpdate("update stock set units=units+'"+units1+"' where bloodgroup='"+bloodgroup+"'");
	}
	else
		st.executeUpdate("update stock set units=units-'"+units1+"' where bloodgroup='"+bloodgroup+"'");
		response.sendRedirect("manageStock.jsp?msg.valid");
}
catch(Exception e){
	response.sendRedirect("manageStock.jsp?msg.invalid");
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