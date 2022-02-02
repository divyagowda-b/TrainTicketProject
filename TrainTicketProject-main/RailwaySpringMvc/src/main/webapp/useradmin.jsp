<!DOCTYPE html>
<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- Add icon library -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <style>

.button {
  border-radius: 4px;
  background-color: #f4511e;
  border: none;
  color: #FFFFFF;
  text-align: center;
  font-size: 28px;
  padding: 20px;
  width: 200px;
  transition: all 0.5s;
  cursor: pointer;
  margin: 5px;
}

.button span {
  cursor: pointer;
  display: inline-block;
  position: relative;
  transition: 0.5s;
}


.button span:after {
  content: '\00bb';
  position: absolute;
  opacity: 0;
  top: 0;
  right: -20px;
  transition: 0.5s;
}

.button:hover span {
  padding-right: 25px;
}

.button:hover span:after {
  opacity: 1;
  right: 0;



</style>
</head>
<body>
<center>

    <h1>IRCTC LOGIN</h1>
    <div class="input-container">
        <img src="irctc2.png"  style="width:20%"><br>
        <i class="fa fa-user icon"  style='font-size:48px'></i>
        <a href="login.jsp"><button class="button"><span>User</span></button></a>
    </div>
    <div class="input-container">
        <i class="fa fa-key icon" style='font-size:36px'></i>
        <a href="Adminlogin.jsp"><button class="button"><span>Admin </span></button></a>
    </div>


</center>
</body>
</html>