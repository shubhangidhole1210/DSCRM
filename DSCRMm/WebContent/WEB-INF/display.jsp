<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>List</title>
<style>
table#nat{
	width: 50%;
	background-color: #c48ec5;
}
</style>
</head>
<body>
 <% 
 String Id= request.getParameter("id");
		String Name=request.getParameter("Name");
		String Mobile_Number=request.getParameter("Mobile_Number");
		String Address=request.getParameter("Address");
		String Requirement=request.getParameter("Requirement");
		String Date=request.getParameter("Date"); %>
<table id="nat">
<tr>
      <td>Id</td>
	<td><%= Id %></td>
</tr>
<tr>
      <td>Name</td>
	<td><%= Name %></td>
</tr>
<tr>
    <td>Mobile_Number</td>
	<td><%= Mobile_Number %></td>
</tr>
<tr>
     <td>Address</td>
	<td><%= Address %></td>
</tr>
<tr>
      <td>Requirement</td>
	<td><%= Requirement %></td>
</tr>
<tr>
         <td>Date</td>
	<td><%= Date %></td>
</tr>

</table>		
</body>
</html>