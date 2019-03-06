/**	CONTACT FORM
*************************************************** **/
var _hash = window.location.hash;

// Call main function and trigger event ---------------------------------------------------

$(".row-1, .row-2, .row-3, .row-4").hide()

$("input").keyup(function() {	

		calculMain();
		$("input[name='price']").change(function() {
			calculMain();
		})
	});	

var choice = document.getElementById('forme-1');

//choice.addEventListener("change", department);
//choice.addEventListener("change", clear);

// Function Choice of sector ---------------------------------------------------
var department = function(){
	var choice = document.getElementById('forme-1').value;	

	if (choice === "Residential") {
		$(".row-1").show();
		$(".row-2, .row-3, .row-4").hide();
	}
	else if (choice === "Commercial"){
		$(".row-2").show();
		$(".row-1, .row-3, .row-4").hide();
	}
	else if (choice === "Corporatif"){
		$(".row-3").show();
		$(".row-1, .row-2, .row-4").hide();	
	}
	else if (choice === "Hybride"){
		$(".row-4").show();
		$(".row-1, .row-2, .row-3").hide();
	}
	else if (choice === "select"){
		$(".row-1, .row-2, .row-3, .row-4").hide()
	}	
}
//  Main fonction =========================================================================
// check if all inputs are not empty and are numbers, if true ; send data to server 

var calculMain = function() {
	 
	$(".form-control-1, .form-control-2, .form-control-3, .form-control-4").each(function(){
		if ($(this).val() === ""){
			clearPrice();
		}})

// residential sector ------------

	if (document.getElementById('forme-1').value === "Residential"){

		if(document.getElementById('resi-app').value !== "" && document.getElementById('resi-floor').value !== ""){
			if (isNaN(document.getElementById('resi-app').value) || isNaN(document.getElementById('resi-floor').value)) {
				alert("One of your field is not a number. Try again");	

				var list = document.getElementsByClassName('form-control-1');
				var i;
				for(i = 0; i < list.length; i++){
				  list[i].value = "";
			  }}

			else {
				var residential_object = {app: $('#resi-app').val(), floor: $("#resi-floor").val(), choice: $("input[name='price']:checked").val()};
				}

			$.post('//Rocket-env.nrbm9qmsij.us-east-2.elasticbeanstalk.com/resi/', residential_object, function (data, status) {
				$("#float-right-1").html(data.ascensor);
				$("#float-right-3").html(data.prix + " $");
				$("#fees").html(data.price.fee);
				$("#float-right-2").html(data.price.unit);
			 }); 
		}
		else {
			clearPrice();
		}
	}	
// Corporate sector --------

	else if (document.getElementById('forme-1').value === "Corporatif"){

		if(document.getElementById('cor-floor').value !== "" && document.getElementById('cor-quar').value !== "" &&
			document.getElementById('cor-occu').value !== ""){
			if (isNaN(document.getElementById('cor-floor').value) || isNaN(document.getElementById('cor-quar').value || 
				isNaN(document.getElementById('cor-occu').value))) {

				alert("One of your field is not a number. Try again");	

				var list = document.getElementsByClassName('form-control-2');
				var i;
				for(i = 0; i < list.length; i++){
				  list[i].value = "";
			  }}

			else {
				var residential_object = {floor: $('#cor-floor').val(), base: $("#cor-quar").val(), occu: $('#cor-occu').val(), choice: $("input[name='price']:checked").val()};
				}

			$.post('//Rocket-env.nrbm9qmsij.us-east-2.elasticbeanstalk.com/corpo/', residential_object, function (data, status) {
				$("#float-right-1").html(data.ascensor);
				$("#float-right-3").html(data.prix + " $");
				$("#fees").html(data.price.fee);
				$("#float-right-2").html(data.price.unit);
			 }); 

		}
		else {
			clearPrice();
		}
	}	
	// hybride sector -------------

	else if (document.getElementById('forme-1').value === "Hybride"){

		if(document.getElementById('hyb-floor').value !== "" && document.getElementById('hyb-quar').value !== "" &&
			document.getElementById('hyb-occu').value !== ""){
			if (isNaN(document.getElementById('hyb-floor').value) || isNaN(document.getElementById('hyb-quar').value || 
				isNaN(document.getElementById('hyb-occu').value))) {

				alert("One of your field is not a number. Try again");	

				var list = document.getElementsByClassName('form-control-3');
				var i;
				for(i = 0; i < list.length; i++){
				  list[i].value = "";
			  }}

			else {
				var residential_object = {floor: $('#hyb-floor').val(), base: $("#hyb-quar").val(), occu: $('#hyb-occu').val(), choice: $("input[name='price']:checked").val()};
				}

			$.post('//Rocket-env.nrbm9qmsij.us-east-2.elasticbeanstalk.com/hyb/', residential_object, function (data, status) {
				$("#float-right-1").html(data.ascensor);
				$("#float-right-3").html(data.prix + " $");
				$("#fees").html(data.price.fee);
				$("#float-right-2").html(data.price.unit);
			 }); 

		}
		else {
			clearPrice();
		}
	}	
// Commercial sector -----------
	else if (document.getElementById('forme-1').value === "Commercial"){

		if (document.getElementById('com-asce').value !== ""){
			if (isNaN(document.getElementById('com-asce').value)){

				alert("One of your field is not a number. Try again");
				var list = document.getElementsByClassName('form-control-4');
				var i;
				for(i = 0; i < list.length; i++){
					list[i].value = "";
				}
			}
			else { 
				var residential_object = {base: $('#com-asce').val(), choice: $("input[name='price']:checked").val()};
			}
			$.post('//Rocket-env.nrbm9qmsij.us-east-2.elasticbeanstalk.com/com/', residential_object, function (data, status) {
				$("#float-right-1").html(data.ascensor);
				$("#float-right-3").html(data.prix + " $");
				$("#fees").html(data.price.fee);
				$("#float-right-2").html(data.price.unit);
			 }); 
		}

		else {
			clearPrice();
		}
	}
}

// Function that reset all inputs and prices to empty -----------------------------------------------------
// calling fucntion clearprice() 
var clear = function(){
	clearPrice();
	$(".form-control-1, .form-control-2, .form-control-3, .form-control-4").each(function(){
		$(this).val("");
	})
}
// Function that reset all prices to empty----------------------------------------------------------------
var clearPrice = function(){
	document.getElementById('fees').innerHTML = "";
	document.getElementById('float-right-2').innerHTML ="";
	document.getElementById('float-right-1').innerHTML = "";
	document.getElementById('float-right-3').innerHTML = "";
}

/**
	BROWSER HASH - from php/contact.php redirect!

	#alert_success 		= email sent
	#alert_failed		= email not sent - internal server error (404 error or SMTP problem)
	#alert_mandatory	= email not sent - required fields empty
**/	jQuery(_hash).show();

