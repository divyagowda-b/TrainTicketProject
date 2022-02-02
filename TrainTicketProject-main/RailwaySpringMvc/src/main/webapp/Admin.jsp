<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
</head>
<body>
<link rel="stylesheet"
          href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css"
          integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l"
          crossorigin="anonymous" />
<form method="post" action="dbc.jsp">
<center>
<h1 >Enter New Train Details </h1>
<hr>
<style>
            body{
                	background: url(download.jpg);
                	background-size: cover;
                    background-position: center;
            }
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
                border:0px solid black;
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
            .addtrain{
                 background:white;
                 padding:70px;
                 border-radius:4px;
                 display:inline-block;
                 height:500px;
                 }
        </style>
<div class="addtrain">
<img src="irctc2.png"  style="width:50%">
<br>
<table>
<tr>

<td>Train No:</td><td><input type="text" name="trainno"></td></tr>
<tr>
<td>Train Name:</td><td><input type="text" name="trainname" ></td></tr>
<tr>
<td>Train Source:</td><td><input type="text" name="source" ></td></tr>
<tr>
<td>Train Destination:</td><td><input type="text" name="destination" ></td></tr>
<tr>
<td>Total Ticket Price:</td><td><input type="text" name="ticketprice" ></td></tr>
</table>
<br>
<br>
<input type="Submit" class="btn btn-secondary col-50" value="submit">
</div>

</center>
</form>

</body>
</html>