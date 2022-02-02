<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Passenger details</title>

</head>
<center>
<body style="background-color:lavender;">
<h1 class="text-center">ADD PASSENGERS</h1>
<style>
       .container{
                 background:white;
                 padding:70px;
                 border-radius:4px;
                 display:inline-block;
                 }
</style>
<div class="container">
    <form action="addPassenger">
    <div>
    <br>
    <br>
    <b>Booked Train Number : </b><input type="number" name="trainno" readonly value="<%=request.getAttribute("train")%>">
    </div>
    <br>
    <br>
    <b><tr>Enter No of Passengers : <input id="NumberOfPassengers" type = "number" name="noOfPassengers"  required/></tr><b>
    <div class="form-group">
    </div>
    <div id="details">
    </div>
    <div class="col-sm-4">
        <div class="form-group">
         <br><br><br>
          <button  type="submit">Confirm</button>
        </div>
    </div>
    </form>
</div>
</body>
<script  src="https://code.jquery.com/jquery-3.6.0.js"   integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk="   crossorigin="anonymous"></script>
<script>
$('#NumberOfPassengers').on('input',function(e){
   $('#details').html('');
   var val=$(this).val();
   for(let i = 1; i <= val; i++){
     $('#details').append('<br><label for="name">Name:</label>'+
                         '<input type="text" name="name'+i+'" id="name" class="trainInput" placeholder="Name">'+
                          '<label for="age">Age:</label>'+
                          '<input type="text" name="age'+i+'"    id="age" class="trainInput" placeholder="Age">'+
                          '<label for="gender" >Gender:&emsp;</label>'+
                          '<select name="gender'+i+'" id="gender" >'+
                               '<option value="">select</option>'+
                               '<option value="M">Male</option>'+
                               '<option value="F">Female</option>'+
                               '</select>');
   }
});
</script>
</center>
</html>
</body>