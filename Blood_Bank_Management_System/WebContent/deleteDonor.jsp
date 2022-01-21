<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="com.connection.Dbutil"  %>
<%@ page import="java.sql.*"  %>
<%
String id=request.getParameter("id");
try{
	 Connection con=Dbutil.getCon();
	 Statement st=con.createStatement();
	 st.executeUpdate("delete from donor where id='"+id+"'");
     response.sendRedirect("editDeleteList.jsp?msg=deleted");
}
catch(Exception e){
	response.sendRedirect("editDeleteList.jsp?msg=invalid");
}
%>