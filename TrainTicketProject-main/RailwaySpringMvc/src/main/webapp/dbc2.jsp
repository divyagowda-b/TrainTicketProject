 <%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<%
Class.forName("com.mysql.cj.jdbc.Driver");

Connection c=DriverManager.getConnection("jdbc:mysql://localhost:3306/trains", "root", "Kddhamo@24");

Statement stat=c.createStatement();
String id=request.getParameter("TRAIN_NO");
int del=stat.executeUpdate("Delete from trains where TRAIN_NO="+id);
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
</head>
<body>
<h1>Train <%=request.getParameter("TRAIN_NO")%> details are deleted !!!!</h1>
</body>
</html>