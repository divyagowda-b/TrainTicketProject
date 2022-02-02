<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Ticket</title>
</head>
<body>
<form action="ticketgeneration">
<b>Booked Train Number : </b><input type="number" name="trainno" readonly value="<%=request.getAttribute("train")%>">
<%=request.getParameter("ticket1")%>
<%=request.getAttribute("ticket1")%>
<%=request.getAttribute("name")%>
<%=request.getAttribute("age")%>
<%=request.getAttribute("gender")%>
<submit><button>Submit</button></submit>
</form>
</body>
</html>