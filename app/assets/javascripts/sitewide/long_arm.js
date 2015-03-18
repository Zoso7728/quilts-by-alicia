/*-------------- Long Arm Quilt -----------------*/
/* The following two functions are for displaying and hidding the pantograph_patterns. */
function templetsclick_longarm(check) {
	if (check == 1) {
		document.getElementById('img1').style.border = "1px solid #000000";
		document.getElementById('img3').style.border = "none";
		document.getElementById('img2').style.display = "block";
		document.getElementById('img4').style.display = "none";
		document.getElementById('long_arm_pantograph_patterns').value = "Templet 1";
	} else if (check == 2) {
		document.getElementById('img3').style.border = "1px solid #000000";
		document.getElementById('img1').style.border = "none";
		document.getElementById('img4').style.display = "block";
		document.getElementById('img2').style.display = "none";
		document.getElementById('long_arm_pantograph_patterns').value = "Templet 2";
	}	
}
/* Size Calculation */
function sizeCalc_longarm() {
	debugger;
	var size_cost = 0;
	var batting_cost = 0;
	var binding_cost = 0;
	var quilting_cost = 0;
	var width = document.getElementById('width').value;
	var length = document.getElementById('length').value;
	var size = width * length;
	document.getElementById('size').innerHTML = size + " sq in";
	var size_cost = size * .015;
	document.getElementById('size_total').innerHTML = "$" + size_cost.toFixed(2);
	subtotalCalc_longarm();
}



/* Quilting Calculation */
function quiltingCalc_longarm(check) {
	debugger;
	if (check == 1) {
		document.getElementById('meandering_section').style.display = "none";
		document.getElementById('pantograph_image1').style.display = "block";
		document.getElementById('pantograph_image2').style.display = "block";
		document.getElementById('long_arm_quilting').value = "Pantograph";
		if (document.getElementById('pantograph').checked == false) {
			document.getElementById('pantograph_section').style.display = "block";
			document.getElementById('meandering_section').style.display = "block";
			document.getElementById('img1').style.border = "none";
			document.getElementById('pantograph_image1').style.display = "none";
			document.getElementById('img2').style.display = "none";
			document.getElementById('img3').style.border = "none";
			document.getElementById('pantograph_image2').style.display = "none";
			document.getElementById('img4').style.display = "none";
		}
	} else if (check == 2) {
		document.getElementById('pantograph_section').style.display = "none";
		document.getElementById('long_arm_quilting').value = "Meandering";
		if (document.getElementById('meandering').checked == false) {
			document.getElementById('pantograph_section').style.display = "block";
			document.getElementById('meandering_section').style.display = "block";
		}
	}
}
/* Subtotal Calculation */
function subtotalCalc_longarm(element) {
	debugger;
	var size_cost = 0;
	var batting_cost = 0;
	var binding_cost = 0;
	var quilting_cost = 0;
	var width = document.getElementById('width').value;
	var length = document.getElementById('length').value;
	var size = width * length;
	document.getElementById('size').innerHTML = size + " sq in";
	document.getElementById('long_arm_size').value = size + " sq in";
	var size_cost = size * .015;
	document.getElementById('size_total').innerHTML = "$" + size_cost.toFixed(2);
	if (width > 90 && length > 90) {
		alert('Your width and length can not both be above 90 inches.');
		document.getElementById('width').value = 0;
		document.getElementById('length').value = 0;
	}

	
	/* Batting Calculation */
	var batting_button = document.getElementById('batting').checked;
	document.getElementById('long_arm_batting').value = "N/A";
	if (batting_button == true) {
		if (width > 90 && length > 90) {
			if (width > length) {
				var batting_cost = width * .2;
				document.getElementById('batting_total').innerHTML = "$" + batting_cost.toFixed(2);
				document.getElementById('long_arm_batting').value = "True";
			} else if (length > width) {
				var batting_cost = length * .2;
				document.getElementById('batting_total').innerHTML = "$" + batting_cost.toFixed(2);
				document.getElementById('long_arm_batting').value = "True";
			}
		}
		if (width || length > 90) {
			if (width > 90) {
				var batting_cost = width * .2;
				document.getElementById('batting_total').innerHTML = "$" + batting_cost.toFixed(2);
				document.getElementById('long_arm_batting').value = "True";
			} else if (length > 90) {
				var batting_cost = length * .2;
				document.getElementById('batting_total').innerHTML = "$" + batting_cost.toFixed(2);
				document.getElementById('long_arm_batting').value = "True";
			}
		} 
		if (width && length < 90) {
			if (width < length) {
				var batting_cost = width * .2;
				document.getElementById('batting_total').innerHTML = "$" + batting_cost.toFixed(2);
				document.getElementById('long_arm_batting').value = "True";
			} else if (length < width) {
				var batting_cost = length * .2;
				document.getElementById('batting_total').innerHTML = "$" + batting_cost.toFixed(2);
				document.getElementById('long_arm_batting').value = "True";
			}
		}
	}
	if (width == length) {
		var batting_cost = width * .2;
		document.getElementById('batting_total').innerHTML = "$" + batting_cost.toFixed(2);
		document.getElementById('long_arm_batting').value = "True";
	}
	if (batting_button == false) {
		document.getElementById('batting_total').innerHTML = "";
		document.getElementById('long_arm_batting').value = "N/A";
	}
	/* Binding Calculation */
	var binding_button = document.getElementById('binding').checked;
	document.getElementById('long_arm_binding').value = "N/A";
	if (binding_button == true) {
		var binding_cost = ((width * 2) + (length * 2)) * .25;
		document.getElementById('binding_total').innerHTML = "$" + binding_cost.toFixed(2);
		document.getElementById('long_arm_binding').value = "True";
	}
	if (binding_button == false) {
		document.getElementById('binding_total').innerHTML = "";
		document.getElementById('long_arm_binding').value = "N/A";
	}

	

	var subtotal = size_cost + batting_cost + binding_cost + quilting_cost;
	document.getElementById('total').innerHTML = "$" + subtotal.toFixed(2);
	document.getElementById('long_arm_total').value = "$" + subtotal + ".00";
}
/*-------------- Long Arm Quilt -----------------*/



