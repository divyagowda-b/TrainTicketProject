<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Registeration form</title>
    <link rel="stylesheet" href="Style2.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css"/>
</head>
<body>
<div class="container">
    <header>Register Now!</header>
    <form action="signupjq.jsp">
        <div class="input-field">
            <input type="text" required name="firstname">
            <label>First Name</label>
        </div>
        <div class="input-field">
            <input type="text" required name="lastname">
            <label>Last Name</label>
        </div>
        <div class="input-field">
            <input type="text" required name="email">
            <label>Email or Username</label>
        </div>
        <div class="input-field">
            <input class="pswrd" type="Password" required name="pwd">

            <label>Password</label>
        </div>


        <div class="button">
            <div class="inner"></div>
            <submit><button>Create Account</a></button></submit>
        </div>
    </form>
    <div class="login">
        Already have an account? <a href="login.jsp">login now</a>
    </div>
</div>
</body>
</html>



