<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Payment Form</title>
	<link rel="stylesheet" href="radio.css">
	<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
	<script>
		$(document).ready(function(){
			/* by default hide all radio_content div elements except first element */
			$(".content .radio_content").hide();
			$(".content .radio_content:first-child").show();

			/* when any radio element is clicked, Get the attribute value of that clicked radio element and show the radio_content div element which matches the attribute value and hide the remaining tab content div elements */
			$(".radio_wrap").click(function(){
			  var current_raido = $(this).attr("data-radio");
			  $(".content .radio_content").hide();
			  $("."+current_raido).show();
			})
		});
	</script>
</head>
<body>
<h1>Payment Options</h1>
<div class="wrapper">
	<div class="radio_tabs">
		<label class="radio_wrap" data-radio="radio_1">
			<input type="radio" name="sports" class="input" checked>
			<span class="radio_mark">
				Debit/Credit Card
			</span>
		</label>
		<label class="radio_wrap" data-radio="radio_2">
			<input type="radio" name="sports" class="input">
			<span class="radio_mark">
				UPI
			</span>
		</label>
	</div>

	<div class="content">
		<div class="radio_content radio_1">
			<form action="ticketgeneration">


            <p> Accepted Cards</p>
             <img src="visa.png">
             <img src="mastercard.png">


             <p>Card number</p>
             <input type="number" id="ccnum" name="cardnumber">
	         <p>CardHolder Name</p>
             <input type="text" id="cname" name="cardname">
             <div class="row">
             <div class="no1">
              <p> Expiry Date </p>
              <input type="date" name="Expire Date" id="Expire Date">
	           </div>
	          <div class="no1">
              <p>CVV</p>
              <input type="password" name="CVV" id="CVV" maxlength="3">
	          </div>
	        </div>

	         <div class="button">
            <div class="inner"></div>
            <submit><button>Proceed</button></submit>
	      </div>

	        </form>
		</div>


		<div class="radio_content radio_2">
		<form action="ticketgeneration">
        <p> Available options</p>
		<div class="dropdown">
        <button class="dropbtn">UPI</button>
        <div class="dropdown-content">
        <a href="https://pay.google.com">Google pay</a>
        <a href="https://www.paytm.com">Paytm</a>
        <a href="https://www.phonepe.com">Phonepe</a>
        </div>

        </div>

	         <div class="button1">
            <div class="inner"></div>
            <submit><button>Proceed</button></submit>
	      </div>


		</form>
	  </div>
    </div>
</div>

</body>
</html>