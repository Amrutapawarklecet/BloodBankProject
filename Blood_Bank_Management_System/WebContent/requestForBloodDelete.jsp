<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="com.connection.Dbutil"  %>
<%@ page import="java.sql.*"  %> 
<%
String mobilenumber=request.getParameter("mobilenumber");
try{
	Connection con=Dbutil.getCon();
	Statement st=con.createStatement();
	st.executeUpdate("delete from bloodrequest where mobilenumber='"+mobilenumber+"'");
	response.sendRedirect("requestForBlood.jsp");
	}
catch(Exception e){
	response.sendRedirect("requestForBlood.jsp");
}
%>