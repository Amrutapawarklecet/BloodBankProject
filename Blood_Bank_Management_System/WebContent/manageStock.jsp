<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="com.connection.Dbutil"  %>
<%@ page import="java.sql.*"  %>   
<%@ include file="header.html" %> 
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="style.css" type="text/css" media="screen">
<style>
input[type="text"],input[type="password"],input[type="submit"],select
{
  border:none;
  background:silver;
  height:50px;
  font-size:16px;
  padding:15px;
  width:33%;
  border-raduis:25px;
  margin-left:35%;
}

#customers{
	font-family:"Trebuchet Ms",Arial, Helvetica,sans-serif;
	border-collapse:collapse;
	width:55%;
}
#customers td,#customers th{
	border:1px solid #ddd;
	paddibg:8px;
}
#customersn tr:nth-child(even){background-color:#f2f2f2;}
#customersn tr:hover{background-color:#ddd;}

#customers th{
	padding-top:12px;
	padding-bottom:12px;
	text-align:left;
	background-color:#4CAF50;
	color:white;
}
</style>
</head>
<body>
<div class="container">
<%
String msg=request.getParameter("msg");
 
if("invalid".equals(msg)){
 %>
 <center><font color="red" size="5">Something Went Wrong! Try Again!</font></center>
 <% 
  }
%>
<% 
 
if("valid".equals(msg)){
 %>
 <center><font color="red" size="5">Successfully Updated</font></center>
 <% 
  }
%>
<form action="manageStockAction.jsp" method="post">
<div class="form-group">
<center><h2>Select Blood Group</h2></center>
<select name="bloodgroup">
 	<option value="A+">A+</option>
 	<option value="A-">A-</option>
 	<option value="B+">B+</option>
 	<option value="B-">B-</option>
 	<option value="O+">O+</option>
 	<option value="O-">O-</option>
 	<option value="AB+">AB+</option>
 	<option value="AB-">AB-</option>
 	</select>

<center><h2>Select Increase/Decrease</h2></center>
<select name="incdec">
 	<option value="inc">Increase</option>
 	<option value="dec">Decrease</option>
 	</select>
<center><h2>Units</h2></center> 	
<input type="text" placeholder="Enter Units" name="units">
<center><button type="submit" class="button">Save</button></center>
</div>
</form>
<br>
<!-- display stock details -->
<center>
	<table id="customers">
	<tr>
		<th>Blood Group</th>
		<th>Units</th>
	</tr>
	<tr>
	<%
	 try{
		 Connection con=Dbutil.getCon();
		 Statement st=con.createStatement();
		 ResultSet rs=st.executeQuery("select * from stock");
		 while(rs.next()){
			 %>
		<td><%=rs.getString(1) %></td>	 
		<td><%=rs.getString(2) %></td>	 
		</tr>
		<%	 
		 }
	 }
	catch(Exception e){
		System.out.println(e);
	}
	%>
	</table>
</center>

</body>

</html>