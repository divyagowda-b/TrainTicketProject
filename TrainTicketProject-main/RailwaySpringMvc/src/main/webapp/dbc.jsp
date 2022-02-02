<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>

<%
String train_no=request.getParameter("trainno");
String train_name=request.getParameter("trainname");
String source=request.getParameter("source");
String destination=request.getParameter("destination");
String ticketprice=request.getParameter("ticketprice");

try
{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/trains", "root", "Kddhamo@24");
Statement st=conn.createStatement();

int i=st.executeUpdate("insert into trains(TRAIN_NO, TRAIN_NAME, SOURCE, DESTINATION, TICKET_PRICE)values('"+train_no+"','"+train_name+"','"+source+"','"+destination+"','"+ticketprice+"')");
}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
</head>
<body>
<h1>New Train details are Successfully added !!!!</h1>
</body>
</html>