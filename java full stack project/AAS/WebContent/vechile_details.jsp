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
<%
try {
	// Initialize the database
   Connection con =database.Database();

    // Create a SQL query to insert data into demo table
    // demo table consists of two columns, so two '?' is used
    PreparedStatement st = con
           .prepareStatement("select * from vehicle_information where vehiclenumber=?");

    
    st.setString(1, request.getParameter("vehicalnumber"));
  
 
    // Execute the insert command using executeUpdate()
    // to make changes in database
   ResultSet rst=st.executeQuery();
   if(rst.next()){
     %>
	   <table border='2'>
	   <tr>
	   <th>Name</th>
	      <th>father Name</th>
	      <th>User Name</th>
	      <th>address</th>
	      <th>phone number</th>
	      <th>relatives number</th>
	      <th>home number</th>
	   
	   </tr>
	   <tr>
	   <td><%out.println(rst.getString("name")); %></td>
	   <td><%out.println(rst.getString("fathername")); %></td>
	   <td style='color:red'><%out.println(rst.getString("username")); %></td>
	   <td><%out.println(rst.getString("address")); %></td>
	   <td><%out.println(rst.getString("phone_number")); %></td>
	   <td><%out.println(rst.getString("relatives_number")); %></td>
	   <td><%out.println(rst.getString("house_number")); %></td>

	   </tr>
	   </table>
	   
	
	   
	<%
   
   }
    st.close();
    con.close();

    // Get a writer pointer 
    // to display the successful result
    
    //response.sendRedirect("login.html");

	  
    		
}
catch (Exception e) {
    e.printStackTrace();
}
%>

</body>
</html>