<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
String driver = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String database = "trains";
String userid = "root";
String password = "Kddhamo@24";
try {
Class.forName(driver);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}
Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>
<!DOCTYPE html>
<html>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<link rel="stylesheet"
          href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css"
          integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l"
          crossorigin="anonymous" />
<body>
<center>
<h1>Delete Train Details</h1>
<hr>
<style>
            table {
                border-collapse: collapse;
            }
            th {
                background-color:green;
                Color:white;
            }
            th, td {
                width:150px;
                text-align:center;
                border:1px solid black;
                padding:5px

            }
            .geeks {
                border-right:hidden;
            }
            .gfg {
                border-collapse:separate;
                border-spacing:0 15px;
            }
            h1 {
                color:Black;
            }
        </style>
<table border="1">
<tr>
<th>Train No</th>
<th>Train Name</th>
<th>Source</th>
<th>Destination</th>
<th>Ticket Price</th>
<th>Remove</th>
</tr>
</center>
<%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select * from trains";
resultSet = statement.executeQuery(sql);
int i=0;
while(resultSet.next()){
%>
<tr>
<td><%=resultSet.getString("TRAIN_NO") %></td>
<td><%=resultSet.getString("TRAIN_NAME") %></td>
<td><%=resultSet.getString("SOURCE") %></td>
<td><%=resultSet.getString("DESTINATION") %></td>
<td><%=resultSet.getString("TICKET_PRICE") %></td>

<td><a href="dbc2.jsp?TRAIN_NO=<%=resultSet.getString("TRAIN_NO") %>"><button border="0" onclick="myFunction()" type="button" class="btn btn-primary col-50" >Delete</button></a></td>
</tr>

<%
i++;
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
</table>
<script>
function myFunction() {
  alert("Successfully Deleted");
}
</script>
</body>
</html>