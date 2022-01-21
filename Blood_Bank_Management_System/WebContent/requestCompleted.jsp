<%@ page import="com.connection.Dbutil"  %>
<%@ page import="java.sql.*"  %> 
<%@ include file="header.html" %>
<!DOCTYPE html>
<html>
<head>
<style>
#customers{
	font-family:"Trebuchet Ms",Arial, Helvetica,sans-serif;
	border-collapse:collapse;
	width:95%;
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
<br>
<center>
<table id="customers">
	<tr>
		<th>Name</th>
		<th>Mobile Number</th>
		<th>Email</th>
		<th>Blood Group</th>
	</tr>
    <tr>
	<%
	 try{
		 Connection con=Dbutil.getCon();
		 Statement st=con.createStatement();
		 ResultSet rs=st.executeQuery("select * from bloodrequest where status='completed'");
		 while(rs.next()){
			 %>
		<td><%=rs.getString(1) %></td>	 
		<td><%=rs.getString(2) %></td>
		<td><%=rs.getString(3) %></td>	 
		<td><%=rs.getString(4) %></td>
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