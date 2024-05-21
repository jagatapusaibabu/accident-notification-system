<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.sql.ResultSet" %> 
<%@ page import="java.sql.SQLException" %>
<%@ page import="AAS.database" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form id='form1' method="post" action="vechile_details.jsp">
<table border="2" align='center'>
<tr>
<td colspan='2' align='center'>
<h3>IDENTIFICATION</h3>
</td>
</tr>
<tr>
<td class='mystyle'>
vehicle number
</td>
<td><input type="text" id="ve" name="vehicalnumber" placeholder="Search..." >
  <button>Search</button></td>
</tr>
</table>
</form>
</body>
</html>