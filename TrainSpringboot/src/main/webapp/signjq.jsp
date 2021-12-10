<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
 pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Train Ticket Generator</title>
<link rel="stylesheet" type="text/css" href=main.css>
</head>
<%
String fname = request.getParameter("firstname");
String lname = request.getParameter("lastname");
String email = request.getParameter("email");
String pass = request.getParameter("pwd");
try {
 Class.forName("com.mysql.cj.jdbc.Driver");
 Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/trains", "root", "Kddhamo@24");
 Statement st = conn.createStatement();
 int i = st.executeUpdate("insert into users(FirstName,LastName,Email,Password)values('" + fname + "','" + lname
 + "','" + email + "','" + pass + "')");
 response.sendRedirect("login.jsp");
} catch (Exception e) {
 System.out.print(e);
 e.printStackTrace();
}
%>