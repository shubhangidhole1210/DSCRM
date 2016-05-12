<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import="java.sql.*" %>
<% Class.forName("sun.jdbc.odbc.JdbcOdbcDriver"); %>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>user requirement</title>
</head>
<body>
<h1> database</h1>
<form action="requirement.jsp" method="post">
 <INPUT TYPE="TEXT" NAME="id">
            <BR>
            <INPUT TYPE="SUBMIT" value="Submit">
     
</form>
<h1>Fetching data from database</h1>
 <% 
            Connection connection = DriverManager.getConnection(
                "jdbc:odbc:data", "root", "system");

            Statement statement = connection.createStatement();

            String id = request.getParameter("id");  

            ResultSet resultset = 
                statement.executeQuery("select * from user_request where id = '" + id + "'") ; 

            if(!resultset.next()) {
                out.println("Sorry, could not find that publisher. ");
            } else {
        %>
        <TABLE BORDER="1">
            <TR>
               <TH>ID</TH>
               <TH>Name</TH>
               <TH>Mobile_number</TH>
               <TH>Address</TH>
               <TH>Requirement</TH>
               <th>Email_address</th>
               <th>stamp_created</th>
           </TR>
           <TR>
               <TD> <%= resultset.getString("ID") %> </TD>
               <TD> <%= resultset.getString("Name") %> </TD>
               <TD> <%= resultset.getString("mobile_number") %> </TD>
               <TD> <%= resultset.getString("Address") %> </TD>
               <TD> <%= resultset.getString("Requirement") %> </TD>
               <TD> <%= resultset.getString("Email_address") %> </TD>
               <TD> <%= resultset.getString("stamp_created") %> </TD>
           </TR>
       </TABLE>
         <% 
           } 
       %>


</body>
</html>