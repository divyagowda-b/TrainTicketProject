<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<center>
<style type="text/css">
body {
	background-image: url('https://cdn.crunchify.com/bg.png');
}
</style>

<title>total ticket price</title>
<meta rel="author" href="https://crunchify.com">
</head>
<style>
            .pay{
                 background:white;
                 padding:70px;
                 border-radius:4px;
                 display:inline-block;

                 }
</style>
<body>
	<div class="pay">
		<br>

		<h1>TOTAL TICKET PRICE :<%=request.getAttribute("ttp")%></h1>
		<img src="money.png"  style="width:50%">
		<br><br><br>
		<a href="success.jsp"><button  style='margin-right:16px'>PAY NOW</button></a>
		<a href="login.jsp"><button 'margin-right:16px'>CANCEL</button></a>

	</div>
</body>
</center>

</html>